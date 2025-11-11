import { LightningElement, wire, track } from "lwc";
// eslint-disable-next-line import/no-unresolved
import { NavigationMixin } from "lightning/navigation";
// eslint-disable-next-line import/no-unresolved
import { ShowToastEvent } from "lightning/platformShowToastEvent";

// eslint-disable-next-line import/no-unresolved
import getLearningConfiguration from "@salesforce/apex/LearningConfigurationRepository.getLearningConfiguration";
// eslint-disable-next-line import/no-unresolved
import upsertLearningConfiguration from "@salesforce/apex/LearningConfigurationRepository.upsertLearningConfiguration";

export default class AdminPage extends NavigationMixin(LightningElement) {
    @wire(getLearningConfiguration)
    wiredLearningConfiguration({ data }) {
        if (! data) { return; }

        this.updateCompetitorField(data.Competitor_Field_Name__c);
        this.updateTenantUrl(data.Tenant_Url__c);
    }

    onTenantUrlChange(event) {
        this.updateTenantUrl(event.target.value);
    }

    onCompetitorFieldChange(event) {
        this.updateCompetitorField(event.target.value);
    }

    @track competitorField;
    updateCompetitorField(competitorField) {
        this.competitorField = competitorField;
    }

    @track tenantUrl;
    updateTenantUrl(tenantUrl) {
        this.tenantUrl = tenantUrl;
    }

    get isSaveDisabled() {
        return ! this.competitorField || ! this.tenantUrl;
    }

    onSave() {
        upsertLearningConfiguration({
            competitorFieldName: this.competitorField,
            tenantUrl: this.tenantUrl
        }).then(() => {
            this.showToast("Settings Saved", "", "success");
        }).catch((error) => {
            this.showToast("Error while saving the settings", error, "error");
        });
    }

    showToast(title, message, variant) {
        const event = new ShowToastEvent({
            title: title,
            message: message,
            variant: variant
        });
        this.dispatchEvent(event);
    }
}