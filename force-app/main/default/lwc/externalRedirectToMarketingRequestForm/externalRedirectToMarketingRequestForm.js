import { LightningElement, api, wire } from 'lwc';
import { createLogger } from 'c/logger';

export default class ExternalRedirect extends LightningElement {
    @api logger;
    async connectedCallback() {
        this.logger = await createLogger();
 
        try {
             // Marketing Request Form via JotForm
            window.open('https://forms.myubiquity.com/jbaniqued/marketing-request-form', '_blank');
            // this.logger.info('Marketing Request Form external redirect to JotForm successful');
        } catch (error) {
            this.logger.error('Marketing Request Form external redirect to JotForm unsuccessful' + error.message);
        } finally {
            this.logger.saveLog(); 
        }
       }
}