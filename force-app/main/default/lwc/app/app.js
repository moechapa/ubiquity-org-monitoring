import {
    buildLearningApi,
    buildUrlGenerator,
    clearCookies,
    createCookie,
    externalPlatform,
    externalTokenCookieName,
    getCookie
} from "c/platform"; // eslint-disable-line import/no-unresolved
import { api, LightningElement, track, wire } from "lwc";

// eslint-disable-next-line import/no-unresolved
import getLearningConfiguration from "@salesforce/apex/LearningConfigurationRepository.getLearningConfiguration";

export default class App extends LightningElement {
    @track isLogged = false;
    @track token = "";
    @api recordId;

    onMenuItemClick(event) {
        const selectedItem = event.detail.value;
        if (selectedItem === "goTo360") {
            this.navigateTo360Learning();
        }
        if (selectedItem === "logout") {
            this.logout();
        }
    }

    navigateTo360Learning() {
        const urlGenerator = buildUrlGenerator(this.tenantUrl);
        const homePageUrl = urlGenerator.generateHomePageUrl();
        window.open(homePageUrl, "_blank");
    }
    logout() {
        this.clearExternalTokenCookie();
        this.isLogged = false;
        this.token = "";
    }

    mainCompetitorsField;
    tenantUrl;
    @wire(getLearningConfiguration)
    wiredLearningConfiguration({ data }) {
        if (! data) { return; }

        this.mainCompetitorsField = `Opportunity.${data.Competitor_Field_Name__c}`;
        this.tenantUrl = data.Tenant_Url__c;
        this.updateLoginState().then(this.clearHashFromUrl);
    }

    async updateLoginState() {
        const { isLogged, token } = await this.checkLoginState();
        this.updateLoginCookie(isLogged, token);
        this.isLogged = isLogged;
        this.token = token;
    }
    async checkLoginState() {
        const externalToken = this.getExternalToken();
        const isLogged = await this.isUserLogged(externalToken);
        return { isLogged, token: isLogged ? externalToken : "" };
    }
    updateLoginCookie(isLogged, token) {
        if (isLogged) {
            this.saveExternalTokenInCookie(token);
        } else {
            this.clearExternalTokenCookie();
        }
    }
    clearHashFromUrl() {
        history.replaceState("", document.title, window.location.pathname);
    }

    getExternalToken() {
        const tokenFromUrl = getExternalTokenFromUrl();
        if (tokenFromUrl) { return tokenFromUrl; }

        return getExternalTokenFromCookie();

        function getExternalTokenFromUrl() {
            if (! window.location.hash) { return null; }
            if (getHashKey() !== `${externalPlatform}Token`) { return null; }

            return getHashValue();

            function getHashKey() {
                const hash = window.location.hash;
                return hash.substring(1, hash.indexOf("="));
            }
            function getHashValue() {
                const hash = window.location.hash;
                return hash.substring(hash.indexOf("=") + 1);
            }
        }
        function getExternalTokenFromCookie() {
            return getCookie(externalTokenCookieName);
        }
    }
    async isUserLogged(externalToken) {
        if (! externalToken) { return false; }

        const learningApi = buildLearningApi(this.tenantUrl);
        return learningApi.isExternalTokenValid(externalToken);
    }
    saveExternalTokenInCookie(externalToken) {
        createCookie(externalTokenCookieName, externalToken);
    }
    clearExternalTokenCookie() {
        clearCookies(externalTokenCookieName);
    }
}