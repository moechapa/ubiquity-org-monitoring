import { LightningElement, api, wire } from 'lwc';
import { getRecords } from 'lightning/uiRecordApi';
import { getPicklistValuesByRecordType } from "lightning/uiObjectInfoApi";

export default class TeamMemberMassComp extends LightningElement {

    @api caseRecords;
    caseRecordTypeId = '';
    caseOwnerBad = false;
    statusValues = [this.defaultValue];
    teamMemberValues = [this.defaultValue];
    isLoading = true;

    get caseFields() {
        return ['Case.Id', 'Case.OwnerId'];
    }

    get defaultValue() {
        return {
            label: '--None--',
            value: ''
        }
    }

    get disableComponent() {
        return this.caseRecordTypeBad || this.caseOwnerBad;
    }

    get caseRecordTypeBad() {
        return this.caseRecordTypeId === '';
    }

    get bothBad() {
        return this.caseRecordTypeBad && this.caseOwnerBad;
    }

    //Record Ids come from visualforce as a string of comma seperated Ids formatted as "[Id1, Id2, Id3]"
    //This converts it into an array of Ids
    get caseRecordIds() {
        const regex = /\[|\]|\ /gi;
        let idString = this.caseRecords;
        let caseRecordIds = [];
        if (idString) {
            const idStringReplaced = idString.replaceAll(regex, '');
            caseRecordIds = idStringReplaced.split(',');
        }
        return caseRecordIds;
    }

    get casesForWire() {
        return [
            {
                recordIds: this.caseRecordIds,
                fields: this.caseFields
            }
        ];
    }

    //This keeps the picklists from spilling out all the way to the bottom of the page
    //Inserts a style element into the page to set the height of the picklists
    constructor() {
        super();
        const style = document.createElement('style');
        style.innerText = `.slds-listbox.slds-listbox_vertical.slds-dropdown.slds-dropdown_fluid.slds-dropdown_left {
            height: 220px !important;
        }`;
        document.querySelector('head').appendChild(style);
    }

    //Get records to check recordTypeIds
    //If they aren't all the same record type, disable mass picklists.
    @wire(getRecords, {
        records: '$casesForWire'
    })
    handleCaseRecords(value) {
        const { data, error } = value;
        if (data) {
            const cases = data.results;
            const caseRecordTypeId = cases[0].result.recordTypeId;
            const caseOwnerId = cases[0].result.fields.OwnerId.value;
            console.log(caseOwnerId);
            let recordTypeOk = true;
            let caseOwnerOk = true;
            for (let i = 0; i < cases.length; i++) {
                const c = cases[i].result;
                if (c.recordTypeId != caseRecordTypeId) {
                    recordTypeOk = false;
                }
                if (c.fields.OwnerId.value != caseOwnerId) {
                    caseOwnerOk = false;
                }
            }
            if (recordTypeOk) {
                this.caseRecordTypeId = caseRecordTypeId;
            } else {
                this.isLoading = false;
                console.log('Failed to set record type');
            }
            if (!caseOwnerOk) {
                this.caseOwnerBad = true;
            }
            console.log('Case owner bad?: ' + this.caseOwnerBad);
            console.log('Record Type ok?: ' + this.caseRecordTypeId);
        } else if (error) {
            console.log(error);
        }
    }

    @wire(getPicklistValuesByRecordType, {
        objectApiName: 'Case',
        recordTypeId: '$caseRecordTypeId'
    })
    handleCasePicklists(value) {
        const { data, error } = value;
        if (data) {
            const teamMemberPicklistValues = data.picklistFieldValues.Team_Member__c.values;
            const statusPicklistValues = data.picklistFieldValues.Status.values;
            let teamMemberValues = [this.defaultValue];
            let statusValues = [this.defaultValue];
            for (let i = 0; i < teamMemberPicklistValues.length; i++) {
                const tm = teamMemberPicklistValues[i];
                teamMemberValues.push({
                    label: tm.label,
                    value: tm.value
                })
            }
            for (let i = 0; i < statusPicklistValues.length; i++) {
                const stat = statusPicklistValues[i];
                statusValues.push({
                    label: stat.label,
                    value: stat.value
                })
            }
            this.teamMemberValues = teamMemberValues;
            this.statusValues = statusValues;
            this.isLoading = false;
        } else if (error) {
            console.log('Failed to get picklists');
        }
    }

    handleTeamMemberChange(event) {
        const selectedTeamMember = event.detail.value;
        this.dispatchEvent(
            new CustomEvent('updateSelections', {
                detail: {
                    field: 'Team_Member__c',
                    value: selectedTeamMember
                }
            })
        );
        // console.log('Team member changed to: ' + selectedTeamMember);
    }

    handleStatusChange(event) {
        const selectedStatus = event.detail.value;
        this.dispatchEvent(
            new CustomEvent('updateSelections', {
                detail: {
                    field: 'Status',
                    value: selectedStatus
                }
            })
        );
    }

}