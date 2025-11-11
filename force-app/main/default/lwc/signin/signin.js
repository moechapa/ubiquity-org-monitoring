// eslint-disable-next-line import/no-unresolved
import { buildUrlGenerator } from "c/platform";
import { LightningElement, api } from "lwc";

export default class Signin extends LightningElement {
    @api tenantUrl;

    openLoginPage() {
        this.clearHashFromUrl();
        const urlGenerator = buildUrlGenerator(this.tenantUrl);
        const authenticationUrl = urlGenerator.generateAuthenticationUrl(window.location);
        window.open(authenticationUrl, "_parent");
    }
    clearHashFromUrl() {
        history.replaceState("", document.title, window.location.pathname);
    }
}