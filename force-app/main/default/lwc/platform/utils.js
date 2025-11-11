export function addHttpsIfNeeded(url) {
    if (! url) { return ""; }
    if (url.match(/^https?:\/\//)) { return url; }

    return `https://${url}`;
}
export function removeTrailingSlash(url) {
    if (! url) { return ""; }

    if (url.endsWith("/")) {
        return url.substring(0, url.length - 1);
    } else {
        return url;
    }
}