import { LightningElement, wire, api, track } from 'lwc';
import getQuestionIds from '@salesforce/apex/QaFormController.getQuestionIds';
import { refreshApex } from '@salesforce/apex';
import { RefreshEvent } from 'lightning/refresh';
import updateQaQuestions from '@salesforce/apex/QaFormController.updateQaQuestions';
import { getRecords, getRecord, getFieldValue } from 'lightning/uiRecordApi';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import { subscribe, unsubscribe } from 'lightning/empApi';

import COMPLETION_FIELD from '@salesforce/schema/Quality_Assurance_QA__c.QA_Completion__c';

const qaFields = [COMPLETION_FIELD];

export default class QaQuestionForm extends LightningElement {
	//starting variables/values
	@api recordId;
	@api channelName = '/event/QA_Component_Refresh__e';
	@track qaQuestions = [];
	questionsExt = [];
	isLoading = true;
	editMode = false;
	questionIds = [];
	fieldsFormatted = [
		'QA_Question__c.Id',
		'QA_Question__c.Help_Text__c',
		'QA_Question__c.Name',
		'QA_Question__c.Type__c',
		'QA_Question__c.QA_Question_Info__r.Response_1__c',
		'QA_Question__c.QA_Question_Info__r.Response_2__c',
		'QA_Question__c.QA_Question_Info__r.Response_3__c',
		'QA_Question__c.QA_Question_Info__r.Response_4__c',
		'QA_Question__c.QA_Question_Info__r.Response_1_Score__c',
		'QA_Question__c.QA_Question_Info__r.Response_2_Score__c',
		'QA_Question__c.QA_Question_Info__r.Response_3_Score__c',
		'QA_Question__c.QA_Question_Info__r.Response_4_Score__c',
		'QA_Question__c.Score__c',
		'QA_Question__c.Result__c'
	];

	//Callbacks and event subscriptions to refresh component when question(s) are created or deleted
	connectedCallback() {
		this.handleSubscribe();
	}

	disconnectedCallback() {
		this.handleUnsubscribe();
	}

	handleSubscribe() {
		const callbackMessage = (msg) => {
			let msgObject = JSON.parse(JSON.stringify(msg));
			let qaId = msgObject.data.payload.QA_Form_Id__c;
			if (qaId === this.recordId) {
				refreshApex(this.wiredIds);
			} else {
			}
		};
		subscribe(this.channelName, -1, callbackMessage)
			.then((response) => {})
			.catch((error) => {
				console.log('Error subscribing to channel: ' + this.channelName + ' with error: ' + JSON.stringify(error));
			});
	}

	handleUnsubscribe() {
		unsubscribe(this.channelName, (response) => {}).catch((error) => {
			console.log('unsubscribe failed: ' + JSON.stringify(error));
		});
	}

	//Checks "QA Completion" field and returns true if it's "Complete"
	get isComplete() {
		const qaStatus = getFieldValue(this.qaForm.data, COMPLETION_FIELD);
		if (qaStatus === 'Complete') {
			return true;
		} else {
			return false;
		}
	}

	//Question record Ids + Fields for getting records
	get wireObj() {
		return [
			{
				recordIds: this.questionIds,
				fields: this.fieldsFormatted
			}
		];
	}

	//Var for if the pencil "edit" icon should be rendered
	get isEditable() {
		let isEditable = false;
		if (this.editMode === false && this.isComplete === false) {
			isEditable = true;
		}
		return isEditable;
	}

	//For disabling and enabling checkboxes
	get inverseEditMode() {
		return !this.editMode;
	}

	get hasQuestions() {
		return this.questionIds.length > 0;
	}

	//Gets Ids for related questions
	@wire(getQuestionIds, {
		qaRecordId: '$recordId'
	})
	passIds(value) {
		this.wiredIds = value;
		const { data, error } = value;
		if (error) {
			console.log('Error getting question Ids');
			console.log(error.body.message);
		} else if (data) {
			this.questionIds = data;
			// console.log('questionIds: ' + JSON.stringify(this.questionIds));
			if (this.questionIds.length === 0) {
				this.isLoading = false;
			}
		}
	}

	//Gets field values for questions and sets up displayed questionsExt
	@wire(getRecords, {
		records: '$wireObj'
	})
	generateLayout(value) {
		this.questionsExt = [];
		this.wiredQuestions = value;
		const { data, error } = value;
		if (error) {
			console.log('Error getting question details');
			console.log(error.body.message);
		} else if (data) {
			let qaQuestionSoup = data.results;
			this.qaQuestions = qaQuestionSoup;
			//Loops through retrieved questions
			for (let i = 0; i < qaQuestionSoup.length; i++) {
				const question = qaQuestionSoup[i].result.fields;
				let questionValue;
				let isPicklist = false;
				let isCheckbox = false;

				switch (question.Type__c.value) {
					case 'Checkbox':
						if (question.Result__c) {
							questionValue = question.Result__c.value === 'true';
						} else {
							questionValue = false;
						}
						isCheckbox = true;
						break;
					default:
						if (question.Result__c) {
							questionValue = question.Result__c.value;
						} else {
							questionValue = '';
						}
						isPicklist = true;
						//Sets up name/value for picklist options
						let protoPicklistOptions = Array.of(
							{
								name: question.QA_Question_Info__r.value.fields.Response_1__c.value,
								score: question.QA_Question_Info__r.value.fields.Response_1_Score__c.value
							},
							{
								name: question.QA_Question_Info__r.value.fields.Response_2__c.value,
								score: question.QA_Question_Info__r.value.fields.Response_2_Score__c.value
							},
							{
								name: question.QA_Question_Info__r.value.fields.Response_3__c.value,
								score: question.QA_Question_Info__r.value.fields.Response_3_Score__c.value
							},
							{
								name: question.QA_Question_Info__r.value.fields.Response_4__c.value,
								score: question.QA_Question_Info__r.value.fields.Response_4_Score__c.value
							}
						);
						var picklistOptions = [];
						for (let i = 0; i < protoPicklistOptions.length; i++) {
							const option = protoPicklistOptions[i];
							if (option.name && option.score != null) {
								picklistOptions.push({
									label: option.name,
									value: option.name,
									description: 'Value: ' + option.score.toString()
								});
							}
						}
				}
				//Pushes question to displayed array questionsExt
				this.questionsExt.push({
					Id: question.Id.value,
					Name: question.Name.value,
					Help_Text: question.Help_Text__c.value,
					Edit_Text: 'Edit ' + question.Name.value,
					Value: questionValue,
					isCheckbox: isCheckbox,
					isPicklist: isPicklist,
					picklistOptions: picklistOptions
				});
			}
			this.isLoading = false;
		}
	}

	@wire(getRecord, {
		recordId: '$recordId',
		fields: qaFields
	})
	qaForm;

	edit() {
		this.editMode = true;
	}

	cancel() {
		this.editMode = false;
		this.template.querySelectorAll('[data-type=checkbox]').forEach((input) => {
			this.questionsExt.find((question) => {
				if (question.Id === input.label) {
					input.checked = question.Value;
				}
			});
		});
	}

	save() {
		this.isLoading = true;
		var questionResults = [];
		this.template.querySelectorAll('[data-name=input]').forEach((input) => {
			let question = this.questionsExt.find((q) => q.Id === input.label);
			if (question) {
				questionResults.push({
					Id: input.label,
					Result__c: this.translate(input)
				});
			}
		});
		this.editMode = false;
		if (questionResults.length > 0) {
			updateQaQuestions({ questionRecords: questionResults })
				.then(() => {
					this.dispatchEvent(
						new ShowToastEvent({
							title: 'Success',
							message: 'QA Form updated',
							variant: 'success'
						})
					);
				})
				.catch((error) => {
					console.log(error.body.message);
					this.dispatchEvent(
						new ShowToastEvent({
							title: 'Error',
							message: error.body.message,
							variant: 'error'
						})
					);
				})
				.finally(() => {
					this.isLoading = false;
					refreshApex(this.wiredQuestions);
					this.dispatchEvent(new RefreshEvent());
				});
		}
	}

	translate(input) {
		if (input.type === 'checkbox') {
			return input.checked.toString();
		} else {
			return input.value;
		}
	}
}