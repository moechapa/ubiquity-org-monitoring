// eslint-disable-next-line import/no-unresolved
import { keyboard } from "c/keyboard";
// eslint-disable-next-line import/no-unresolved
import { buildLearningApi } from "c/platform";
import { LightningElement, track, api } from "lwc";

export default class LearningContentsSearch extends LightningElement {
    @api token;
    @track searchText = "";
    @track learningContents = [];
    @api tenantUrl;
    @track isSearchComplete = false;
    @track frozenSearchText;
    @track isLoading;

    searchTextChange(event) {
        this.searchText = event.target.value;
    }

    async fetchCourses() {
        const learningApi = buildLearningApi(this.tenantUrl);
        this.isLoading = true;
        this.learningContents = await learningApi.fetchLearningContents(this.searchText, this.token);
        this.isLoading = false;
    }

    async submitWithKeyboard(event) {
        if (keyboard.isEnterPressed(event)) {
            await this.fetchCourses();
            this.frozenSearchText = Object.freeze(this.searchText);
            this.isSearchComplete = true;
        }
    }
}