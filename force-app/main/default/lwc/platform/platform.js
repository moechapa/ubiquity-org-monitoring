import { externalPlatform, externalTokenCookieName, maxCompetitorLearningContentsCount } from "./config";
import { buildLearningApi } from "./learningApi";
import { createCookie, clearCookies, getCookie } from "./cookieUtils";
import { addHttpsIfNeeded } from "./utils";

export {
    buildUrlGenerator,
    externalPlatform,
    externalTokenCookieName,
    buildLearningApi,
    createCookie,
    clearCookies,
    getCookie,
    maxCompetitorLearningContentsCount
};

function buildUrlGenerator(tenantUrl) {
    const baseUrl = addHttpsIfNeeded(tenantUrl);

    return {
        generateAuthenticationUrl(returnUrl) {
            return `${baseUrl}?externalPlatform=${externalPlatform}&externalRedirectUrl=${returnUrl}`;
        },
        generateHomePageUrl() {
            return baseUrl;
        }
    };
}