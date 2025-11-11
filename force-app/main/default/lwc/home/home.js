// eslint-disable-next-line import/no-unresolved
import { getFieldValue, getRecord } from "lightning/uiRecordApi";
// eslint-disable-next-line import/no-unresolved
import { api, LightningElement, wire } from "lwc";

export default class Home extends LightningElement {
    @api token;
    @api opportunityId;
    @api mainCompetitorsField;
    @api tenantUrl;

    @wire(getRecord, { recordId: "$opportunityId", fields: "$mainCompetitorsField" })
    opportunity;

    get mainCompetitor() {
        if (! this.mainCompetitorsField) { return ""; }

        return getFieldValue(this.opportunity.data, this.mainCompetitorsField);
    }
}