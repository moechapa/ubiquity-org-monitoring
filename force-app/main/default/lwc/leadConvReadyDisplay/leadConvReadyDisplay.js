import { LightningElement, track, api, wire } from 'lwc';
import CheckConversionReadiness from '@salesforce/apex/CheckConversionReadiness.runCheck';
import { getRecord } from 'lightning/uiRecordApi';
import STATUS from '@salesforce/schema/Lead.Status';

const errorFields = [STATUS];

export default class LeadConvReadyDisplay extends LightningElement {
  @api recordId;
  isLoading = false;
  @track errorList = [];
  sfdcBaseUrl;

  get hasNoErrors() {
    if (this.errorList.length === 0) {
      return true;
    } else {
      return false;
    }
  }

  get errors() {
    return this.errorList;
  }

  @wire(getRecord, { recordId: '$recordId', fields: errorFields })
  checkRecord(value) {
    const { data, error } = value;
    if (data) {
      if (data.fields.Status.value === 'Qualified') {
        this.errorList = [];
      } else if (this.isLoading === false) {
        this.checkIt();
      }
    } else if (error) {
    }
  }

  checkIt() {
    this.isLoading = true;
    CheckConversionReadiness({ leadId: this.recordId })
      .then((data) => {
        this.errorList = data.map((data, index) => ({
          message: data,
          delayStyle: 'animation-delay: ' + index * 200 + 'ms;'
        }));
      })
      .catch((error) => {
        console.log('Error: ' + JSON.stringify(error));
      })
      .finally(() => {
        this.isLoading = false;
      });
  }
}