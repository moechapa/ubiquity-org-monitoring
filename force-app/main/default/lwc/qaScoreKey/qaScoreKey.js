import { LightningElement, api, wire, track } from 'lwc';
import { subscribe, unsubscribe } from 'lightning/empApi';
import { refreshApex } from '@salesforce/apex';
import getQuestionInfo from '@salesforce/apex/QaFormController.getQuestionInfo';

export default class QaScoreKey extends LightningElement {
	@api recordId;
	@api channelName = '/event/QA_Component_Refresh__e';
	@track scoreKeys = [];
	isLoading = true;

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
			// console.log('Received msg to update: ' + qaId);
			// console.log('message Id: ' + qaId);
			// console.log('form Id: ' + this.recordId);
			if (qaId === this.recordId) {
				refreshApex(this.wiredScoreKey);
				console.log('refresh score key');
			} else {
				console.log('no score refresh');
			}
		};
		subscribe(this.channelName, -1, callbackMessage)
			.then((response) => {
				// console.log('Successfully subscribed to : ' + JSON.stringify(response));
			})
			.catch((error) => {
				console.log('Error subscribing to channel: ' + this.channelName + ' with error: ' + JSON.stringify(error));
			});
	}

	handleUnsubscribe() {
		unsubscribe(this.channelName, (response) => {
			// console.log('unsubscribe successful: ' + JSON.stringify(response));
		}).catch((error) => {
			console.log('unsubscribe failed: ' + JSON.stringify(error));
		});
	}

	@wire(getQuestionInfo, {
		qaRecordId: '$recordId'
	})
	generateScoreKey(value) {
		this.wiredScoreKey = value;
		const { data, error } = value;
		let scoreKeys = [];
		if (error) {
			console.log('Error getting score key');
			console.log(error.body.message);
		} else if (data) {
			let infoRecords = data;
			// console.log('Retrieved info records: ' + JSON.stringify(infoRecords));
			for (let i = 0; i < infoRecords.length; i++) {
				const info = infoRecords[i];
				scoreKeys.push({
					Id: info.Id,
					Value: info.Question_Prompt__c + ' - ' + this.valueDisplay(info)
				});
			}
			this.isLoading = false;
		}
		this.scoreKeys = scoreKeys;
	}

	valueDisplay(qInfo) {
		let value = '';
		if (qInfo.Pass_Fail__c) {
			value = 'Pass/Fail';
		} else {
			value = qInfo.Score_Value__c;
		}
		return value;
	}
}