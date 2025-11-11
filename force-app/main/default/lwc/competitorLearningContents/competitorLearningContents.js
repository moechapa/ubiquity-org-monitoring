// eslint-disable-next-line import/no-unresolved
import { buildLearningApi, maxCompetitorLearningContentsCount } from "c/platform";
import { LightningElement, api, track } from "lwc";

export default class CompetitorLearningContents extends LightningElement {
    @api token;
    @track competitorLearningContents;
    @api tenantUrl;

    @track isLoading;
    @track isCollapsed = false;

    @track _mainCompetitor;
    @api
    get mainCompetitor() {
        return this._mainCompetitor;
    }
    set mainCompetitor(newMainCompetitor) {
        this._mainCompetitor = newMainCompetitor;
        if (! newMainCompetitor) { return; }

        const learningApi = buildLearningApi(this.tenantUrl);
        this.isLoading = true;
        learningApi.fetchLearningContents(newMainCompetitor, this.token)
            .then((competitorLearningContents) => {
                this.competitorLearningContents = competitorLearningContents.slice(0, maxCompetitorLearningContentsCount);
                this.isLoading = false;
            });
    }

    get isDisplayed() {
        return !! this.mainCompetitor;
    }

    get collapsingIcon() {
        return this.isCollapsed ? "/resource/X360chevronRight" : "/resource/X360chevronDown";
    }
    get collapsingIconAlt() {
        return this.isCollapsed ? "chevron right" : "chevron down";
    }
    toggleCollapsed() {
        this.isCollapsed = ! this.isCollapsed;
    }
}