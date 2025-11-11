import { LightningElement, api } from "lwc";

export default class LearningContents extends LightningElement {
    @api learningContents = [];
    @api searchText;
    @api isSearchComplete;
    @api isLoading;

    get hasLearningContents() {
        return this.learningContents && this.learningContents.length > 0;
    }
}