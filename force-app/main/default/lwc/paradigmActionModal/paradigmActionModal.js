import { LightningElement, api } from 'lwc';
import getAuthToken from "@salesforce/apex/ParadigmAuthController.getAuthToken";
import getProposal from "@salesforce/apex/PurchaseAPIController.getProposal";
import sendToParadigm from "@salesforce/apex/ParadigmCalloutController.sendToParadigm";

export default class ParadigmActionModal extends LightningElement {

    @api recordId;
    message = 'Ready for send.';
    proposalData= '';
    proposalValue = '';
    token;
    paradigmResponse = {};
    parsedData = [];
    isDataLoading = true;
    isSend = false;
    requiredFiledKeys = [
        'Product Code',
        'Sponsor First Name',
        'Sponsor Last Name',
        'Sponsor Email',
        'State Code',
        'Company Name',
        'Number Of Employees',
        'Company Phone'
    ];

    get groupedData() {
        const groupedKeys = ['addSources', 'tpa', 'advisors', 'age', 'trustee'];
        const order = ['Proposal Info', 'age', 'addSources', 'trustee', 'advisors', 'tpa', ];

        const groupedData = groupedKeys.map(key => ({
            name: key,
            items: this.parsedData.filter(item => item.key.startsWith(key))
        }));

        const remainingItems = this.parsedData.filter(item => !groupedKeys.some(group => item.key.startsWith(group)));
        if (remainingItems.length > 0) {
            groupedData.push({ name: 'Proposal Info', items: remainingItems });
        }

        // Sort groups based on specific order
        groupedData.sort((a, b) => order.indexOf(a.name) - order.indexOf(b.name));

        const sortedData = this.changeOrder(groupedData);

        return sortedData.map(group => ({
            name: this.convertCamelCaseToSimpleString(group.name),
            items: group.items.map(item => {
                const keyParts = item.key.split('.');
                return {
                    key: this.convertCamelCaseToSimpleString(keyParts[keyParts.length - 1]), // Get the last part of the key
                    value: item.value
                };
            })
        }));
    }

    get allRequiredFieldsExist() {
        return this.checkRequiredFields().length !== 0;
    }

    get missingRequiredFields() {
        return this.checkRequiredFields();
    }

    //=========================================LIFECYCLE HOOKS==============================================================
    connectedCallback() {
        this.fetchProposalData();
        setTimeout(() => {
            this.isDataLoading = false;
        }, 1500);
    }

    // =========================================HELPERS=====================================================================

    checkRequiredFields() {
        const missingFields = [];

        this.requiredFiledKeys.forEach(requiredKey => {
            const hasValue = this.groupedData.some(group => {
                const item = group.items.find(item => item.key === requiredKey);
                return item && item.value !== null;
            });

            if (!hasValue) {
                missingFields.push(requiredKey);
            }
        });

        return missingFields;
    }

    changeOrder(groupedData) {
        const infoGroupIndex = groupedData.findIndex(group => group.name === 'Proposal Info');

        if (infoGroupIndex > -1) {
            const infoGroup = groupedData.splice(infoGroupIndex, 1)[0];
            const propertyOrder = [
                'productCode',
                'serviceEligibility',
                'sponsorFirstName',
                'autoDeferralType',
                'sponsorLastName',
                'minimumAutoDeferralPercentage',
                'sponsorEmail',
                'maximumAutoDeferralPercentage',
                'stateCode',
                'yearlyAutoDeferralPercentageIncrease',
                'companyName',
                'autoEnrollmentType',
                'numberOfEmployees',
                'employerPaidParticipantFees',
                'companyPhone',
                'eligibilityCalculationMethod',
                'portfolioCode',
                'planName',
                'planEffectiveDate',
                'entry',
                'lastRestatementDate',
                'allowsLoans',
                'allowsHardshipWithdrawals',
                'isConversion',
                'irsPlanNumber',
                'pepCode',
                'planId',
                'attributes'
            ];

            // Sort 'Proposal Info' items based on the specified order
            infoGroup.items.sort((a, b) => {
                const indexA = propertyOrder.indexOf(a.key);
                const indexB = propertyOrder.indexOf(b.key);
                return (indexA !== -1 && indexB !== -1) ? indexA - indexB :
                       (indexA !== -1) ? -1 :
                       (indexB !== -1) ? 1 : 0;
            });
            groupedData.unshift(infoGroup);
        }
        return groupedData;
    }

    parseJsonData() {
        try {
            const parsedObject = JSON.parse(this.proposalData);
            console.log('parsedObject:', parsedObject);
            this.parsedData = this.flattenObject(parsedObject);
        } catch (error) {
            console.error('Error parsing JSON data', error);
        }
    }

    flattenObject(obj, parentKey = '') {
        const excludedKeys = ['sources', 'attributes'];
        const excludedKeyGroups = {
            addSources: ['requiredAge', 'planSourceFrequency', 'included', 'formula', 'effectiveDate', 'grandfatherDate'],
            advisors: ['feeCollectionSource', 'fixedAmount', 'bpsAmount', 'disbursedByUbiquity', 'advisorType', 'advisorService', 'requireReview', 'roles'],
            tpa: ['amount', 'feeType', 'fixedAmount', 'feeCollectionSource', 'disbursedByUbiquity', 'bpsAmount']
        };

        return Object.keys(obj).reduce((acc, key) => {
            const currentKey = parentKey ? `${parentKey}.${key}` : key;

            if (excludedKeys.includes(key)) {
                return acc;
            }
            for (const groupKey of Object.keys(excludedKeyGroups)) {
                if (parentKey.startsWith(groupKey) && excludedKeyGroups[groupKey].includes(key)) {
                    return acc;
                }
            }
            if (typeof obj[key] === 'object' && obj[key] !== null) {
                return acc.concat(this.flattenObject(obj[key], currentKey));
            }
            return acc.concat({ key: currentKey, value: obj[key] });
        }, []);
    }

     convertCamelCaseToSimpleString(input) {
        let spacedString = input.replace(/([A-Z])/g, ' $1');
        spacedString = spacedString.charAt(0).toUpperCase() + spacedString.slice(1).trim();
        return spacedString;
    }

    //=========================================HANDLERS=====================================================================
    async handleAuthenticate() {
        try {
            const authResponse = await getAuthToken({ propId: this.recordId });
            this.isSend = true;

            const response = JSON.parse(authResponse);
            if (response?.accessToken) {
                const accessToken = response.accessToken;
                this.message = 'Authorized';
                await this.sendPayloadToParadigm(accessToken);
            } else {
                this.handleAuthorizationFailure();
            }
        } catch (error) {
            if (error.fromSendPayloadToParadigm) {
                this.handleSendToParadigmError(error.error);
            } else {
                this.handleAuthenticationError(error);
            }
        }
    }

    handleAuthorizationFailure() {
        this.message = 'Authorization failed';
        this.isSend = false;
    }

    handleAuthenticationError(error) {
        console.error('Error during authentication:', error);
        this.message = 'An error occurred during authentication';
        this.isSend = false;
    }

    handleSuccessfulSend(response) {
        this.message = `Purchase Link: ${response.purchaseLink} Plan ID: ${response.planId}`;
    }

    handleSendToParadigmError(error) {
        this.isSend = false;
        this.ifFalidMessage = true;
        this.message = `Error during sending to Paradigm: \n${error}`;
        console.error('Error during sending to Paradigm:', error);
    }

    // //=============================================FUNCTIONS==============================================================

    async sendPayloadToParadigm(accessToken) {
        try {
            this.message = 'Sending to Paradigm...';
            const sendToParadigmResponse = await sendToParadigm({ accessToken, propId: this.recordId });
            console.log('sendToParadigmResponse:', sendToParadigmResponse);

            if (sendToParadigmResponse.purchaseLink && sendToParadigmResponse.purchaseLink !== null) {
                this.handleSuccessfulSend(sendToParadigmResponse);
            } else  {
                this.handleSendToParadigmError(sendToParadigmResponse.errorFields);
            }
        } catch (error) {
            throw { fromSendPayloadToParadigm: true, error };
        }
    }

    async fetchProposalData() {
        try {
            if (!this.recordId) {
                setTimeout(() => {
                    this.fetchProposalData();
                }, 100);
                return;
            }
            try {
                this.proposalData = await getProposal({ proposalId: this.recordId });
                console.log('proposalData:', this.proposalData);
            } catch (error) {
                console.error('Error fetching proposal data:', error);
                return;
            }
            if (this.proposalData) {
                this.parseJsonData();
            }
        } catch (error) {
            console.error('An unexpected error occurred:', error);
        }
    }
}