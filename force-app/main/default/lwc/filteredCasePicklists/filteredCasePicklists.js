import { LightningElement, wire, api } from 'lwc';
import { RefreshEvent } from 'lightning/refresh';
import { getPicklistValuesByRecordType, getObjectInfo } from 'lightning/uiObjectInfoApi';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import { getRecord, getFieldValue, updateRecord } from 'lightning/uiRecordApi';
import fetchObjectPicklistFilters from '@salesforce/apex/PicklistFilterVizier.fetchObjectPicklistFilters';
import CATEGORY_FIELD from '@salesforce/schema/Case.Category__c';
import SUB_CATEGORY_FIELD from '@salesforce/schema/Case.Sub_Category__c';
import DEPARTMENT_FIELD from '@salesforce/schema/Case.Department__c';
import SENDER_ROLE_FIELD from '@salesforce/schema/Case.Sender_Role__c';
import CASE_ID_FIELD from '@salesforce/schema/Case.Id';

const caseFields = [CATEGORY_FIELD, SUB_CATEGORY_FIELD, DEPARTMENT_FIELD, SENDER_ROLE_FIELD];
//*DEBUG : Columns are for table that displays on component for debug purposes
//const COLUMNS = [
    //{ label: 'Roles', fieldName: 'senderRole', type: 'string' },
    //{ label: 'Category', fieldName: 'category', type: 'string' },
    //{ label: 'Sub-Category', fieldName: 'subCategory', type: 'string' },
//];

export default class FilteredCasePicklists extends LightningElement {

    @api recordId;
    @api flowRecordId;
    @api objectApiName;
    @api flowObjectApiName;
    @api flowInputValidation;
    //isLoading = true;
    depValues;
    roleValues;
    picklistValuesObj;
    //editedField;
    //editedValue;
   // editedLabel;
    currentDepValue = '';
    currentCatValue = '';
    currentSubCatValue = '';
    currentRoleValue = '';
    @api selectedDepValue = '';
    @api selectedRoleValue = '';
    @api selectedSubCatValue = '';
    @api selectedCatValue = '';
    picklistFilterRecords;
    filteredCatValues = [];
    filteredSubCatValues = [];
    //COLUMNS = COLUMNS;
    isCatDisabled = false;
    isSubCatDisabled = false;
    editMode = false;
    flowMode = false;
    loadingView = true;
    loadingEdit = true;

    get contextRecordId() {
        if (!this.recordId) {
            return this.flowRecordId;
        } else {
            return this.recordId;
        }
    }

    get contextObjectApiName() {
        if (!this.objectApiName) {
            return 'Case';
        } else {
            return this.objectApiName;
        }
    }

    //Get picklist filters
    @wire(fetchObjectPicklistFilters, {
        inputRecord: '$contextObjectApiName'
    })
    pickFilters({ error, data }) {
        if (data) {
            this.error = undefined;
            let pickFilters = data;
            let picklistFilterRecords = [];
            //Retrieve library of all picklistFilterRecords
            for (let i = 0; i < pickFilters.length; i++) {
                picklistFilterRecords.push({
                    id: pickFilters[i].id,
                    senderRole: pickFilters[i].Controlling_Field_Values__c,
                    category: pickFilters[i].Filtered_Picklist_1_Value__c,
                    subCategory: pickFilters[i].Filtered_Picklist_2_Value__c
                })
            }
            this.picklistFilterRecords = picklistFilterRecords;
            this.loadingEdit = false;
        } else if (error) {
            this.error = error;
            this.picklistFilterRecords = undefined;
        }
    }

    @wire(getObjectInfo, {
        objectApiName: '$contextObjectApiName'
    })
    caseInfo;

    //Get current record
    @wire(getRecord, {
        recordId: '$contextRecordId',
        fields: caseFields
    })
    case;

    //Grab all picklist values of recordtype
    @wire(getPicklistValuesByRecordType, {
        objectApiName: '$contextObjectApiName',
        recordTypeId: '$case.data.recordTypeId'
    })
    // method to get picklist values from record type with dependencies
    newPicklistValues({ data }) {
        if (data) {
            this.error = null;
            this.picklistValuesObj = data.picklistFieldValues;
       //     console.log('data returned' + JSON.stringify(data.picklistFieldValues));
            let depValuesList = data.picklistFieldValues.Department__c.values;
            let depValues = [];
            //Iterate the picklist values for department values
            for (let i = 0; i < depValuesList.length; i++) {
                depValues.push({
                    label: depValuesList[i].label,
                    value: depValuesList[i].value
                });
            }
            //Finally, set picklist value options and initial selection as the record value
            this.depValues = depValues;
            let initDepartment = getFieldValue(this.case.data, DEPARTMENT_FIELD);
            if (initDepartment) {
                this.currentDepValue = initDepartment;
                let selectedDepValueFound = depValues.find((depValue) => depValue.label == initDepartment);
                if (selectedDepValueFound) {
                    this.selectedDepValue = initDepartment;
                }
            }

      //      console.log('data department values' + JSON.stringify(this.depValues));
            let roleValuesList = data.picklistFieldValues.Sender_Role__c.values;
            let roleValues = [];
            //Iterate the picklist values for sender role values
            for (let i = 0; i < roleValuesList.length; i++) {
                roleValues.push({
                    label: roleValuesList[i].label,
                    value: roleValuesList[i].value
                });
            }
            //Finally, set picklist value options and initial selection as the record value
            this.roleValues = roleValues;
            let initSenderRole = getFieldValue(this.case.data, SENDER_ROLE_FIELD)
            if (initSenderRole) {
                this.currentRoleValue = initSenderRole;
                let selectedRoleValueFound = roleValues.find((roleValue) => roleValue.label == initSenderRole);
                if (selectedRoleValueFound) {
                    this.selectedRoleValue = initSenderRole;
                }
            }

     //       console.log('data sender role values' + JSON.stringify(this.roleValues));

            let initCategory = getFieldValue(this.case.data, CATEGORY_FIELD);
            this.currentCatValue = initCategory;
            this.selectedCatValue = initCategory;
            let initSubCategory = getFieldValue(this.case.data, SUB_CATEGORY_FIELD);
            this.currentSubCatValue = initSubCategory;
            this.selectedSubCatValue = initSubCategory;

            if ((this.flowRecordId || this.flowObjectApiName) && this.flowMode == false) {
                this.flowMode = true;
                this.edit();
            } else {
                this.loadingView = false;
            }
        }
    }

    refreshPicklists(event) {
        if (event) {
            let editedField = event.target.label;
            let editedValue = event.detail.value;
            //Determine which field has been edited and assign accordingly
            if (editedValue && editedField) {
                switch (editedField) {
                    case 'Department':
                        this.selectedDepValue = editedValue;
                        break;
                    case 'Sender Role':
                        this.selectedRoleValue = editedValue;
                        break;
                    case 'Category':
                        this.selectedCatValue = editedValue;
                        break;
                    default:
                }
            }
        }
        //If we have both a department value and role value, start establishing lists
        if (this.selectedDepValue && this.selectedRoleValue) {
            let totalCatValues = this.picklistValuesObj.Category__c;
            let controllerValueIndex =
                totalCatValues.controllerValues[this.selectedDepValue];
            let catValues = this.picklistValuesObj.Category__c.values;
            let catPicklists = [];
            //only allow categories that are under the selected department value through dependencies
            catValues.forEach(key => {
                for (let i = 0; i < key.validFor.length; i++) {
                    if (controllerValueIndex == key.validFor[i]) {
                        catPicklists.push({
                            label: key.label,
                            value: key.value
                        });
                    }
                }
            });
      //      console.log(' data catPicklists' + JSON.stringify(catPicklists));
            if (catPicklists && catPicklists.length > 0) {
                //Establish filtered category values, only allowing ones with a category and role match in filterRecords
                this.filteredCatValues = catPicklists.filter((s) => {
                    return this.picklistFilterRecords.some((f) => {
                        return f.category == s.label && f.senderRole.includes(this.selectedRoleValue);
                    });
                });
                //if the selected category value isn't in filtered list, wipe it
                let selectedCatValueFound = this.filteredCatValues.find((catValue) => catValue.label == this.selectedCatValue);
                if (!selectedCatValueFound) {
                    this.selectedCatValue = ''
                }
            } else {
                //If there's no category values to filter through, wipe filtered list
                this.filteredCatValues = [];
                this.selectedCatValue = '';
            }
            if (this.filteredCatValues.length > 0 && this.selectedCatValue) {
                let totalSubCatValues = this.picklistValuesObj.Sub_Category__c;
                let controllerValueIndex2 =
                    totalSubCatValues.controllerValues[this.selectedCatValue];
                let subCatValues = this.picklistValuesObj.Sub_Category__c.values;
                let subCatPicklists = [];
                //Only allow subcat values that are under selected category through standard dependencies
                subCatValues.forEach(key => {
                    for (let i = 0; i < key.validFor.length; i++) {
                        if (controllerValueIndex2 == key.validFor[i]) {
                            subCatPicklists.push({
                                label: key.label,
                                value: key.value
                            });
                        }
                    }
                });
                if (subCatPicklists && subCatPicklists.length > 0) {
                    //Establish filtered subCategory values, only allowing ones with a subcategory match, role match, and where the category matches selected category
                    this.filteredSubCatValues = subCatPicklists.filter((s) => {
                        return this.picklistFilterRecords.some((f) => {
                            return f.subCategory == s.label && f.senderRole.includes(this.selectedRoleValue) && f.category == this.selectedCatValue;
                        });
                    });
                    //If selected subcat value isn't in filtered list, wipe it
                    let selectedSubCatValueFound = this.filteredSubCatValues.find((subCatValue) => subCatValue.label == this.selectedSubCatValue);
                    if (!selectedSubCatValueFound) {
                        this.selectedSubCatValue = '';
                    }
                } else {
                    //If there's no sub values to filter through, wipe filtered list
                    this.filteredSubCatValues = [];
                    this.selectedSubCatValue = '';
                }
            } else {
                //If the filtered category list is empty, or if there's no selectedCatValue, wipe dependencies
                this.selectedSubCatValue = '';
                this.filteredSubCatValues = [];
                this.selectedCatValue = '';
            }
        } else {
            //If Department and Role aren't entered, wipe everything for dependent lists
            this.selectedCatValue = '';
            this.filteredCatValues = [];
            this.selectedSubCatValue = '';
            this.filteredSubCatValues = [];
        }

        //After everything is refreshed, disable/enable any fields that have options in filtered list
        if (this.filteredCatValues.length > 0) {
            this.isCatDisabled = false;
        } else {
            this.isCatDisabled = true;
        }
        if (this.filteredSubCatValues.length > 0) {
            this.isSubCatDisabled = false;
        } else {
            this.isSubCatDisabled = true;
        }
    }
    handleSubCatChange(event) {
        //:^)
        this.selectedSubCatValue = event.detail.value;
    }

    updateCase() {

        this.loadingEdit = true;
        if (this.validate()) {
            const updateFields = {};
            updateFields[CASE_ID_FIELD.fieldApiName] = this.recordId;
            updateFields[DEPARTMENT_FIELD.fieldApiName] = this.selectedDepValue;
            updateFields[SENDER_ROLE_FIELD.fieldApiName] = this.selectedRoleValue;
            updateFields[CATEGORY_FIELD.fieldApiName] = this.selectedCatValue;
            updateFields[SUB_CATEGORY_FIELD.fieldApiName] = this.selectedSubCatValue;
            const recordInput = {
                fields: updateFields
            };

            updateRecord(recordInput)
                .then(() => {
                    this.dispatchEvent(
                        new ShowToastEvent({
                            title: "Success",
                            message: "Case updated",
                            variant: "success"
                        }),
                    );
                    this.dispatchEvent(new RefreshEvent());
                    this.editMode = false;
                    this.loadingEdit = false;

                })
                .catch((error) => {
                    this.dispatchEvent(
                        new ShowToastEvent({
                            title: "Error updating case",
                            message: error.body.message,
                            variant: "error"
                        }),
                    );
                    this.editMode = false;
                    this.loadingEdit = false;
                });
        } else {
            this.loadingEdit = false;
        }
    }

    edit() {
        this.editMode = true;
        this.refreshPicklists()
    }

    cancel() {
        this.editMode = false;
        this.selectedDepValue = this.currentDepValue;
        this.selectedRoleValue = this.currentRoleValue;
        this.selectedCatValue = this.currentCatValue;
        this.selectedSubCatValue = this.currentSubCatValue;
    }

    @api
    validate() {
        let allInputsValid = true;
        let picklistInputs = this.template.querySelectorAll('lightning-combobox');
    //    console.log(' Flow picklist inputs: ' + JSON.stringify(picklistInputs));
        if (this.flowMode) {
            for (let i = 0; i < picklistInputs.length; i++) {
                if (!picklistInputs[i].checkValidity()) {
                    allInputsValid = false;
                }
          //      console.log(' Flow input validity: ' + JSON.stringify(picklistInputs[i]) + picklistInputs[i].checkValidity());
            }
            if (allInputsValid) {
                return { isValid: true };
            } else {
                return {
                    isValid: false,
                    errorMessage: 'Please complete all required fields'
                }
            }
        } else {
            picklistInputs.forEach(input => {
                if (!input.checkValidity()) {
                    input.reportValidity();
                    allInputsValid = false;
                    input.value
                }
            });
            return allInputsValid;
        }
    }
}