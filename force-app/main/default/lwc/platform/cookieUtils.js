import { cookieExpirationPeriodInDays } from "./config";

export { createCookie, clearCookies, getCookie };

const oneDayInMilliseconds = 24 * 60 * 60 * 1000;

function createCookie(name, value) {
    document.cookie = `${name}=${escape(value)}; expires=${getExpirationDateString()}; path=/`;
}
function clearCookies(name) {
    document.cookie = `${name}=; expires=${new Date().toGMTString()}; path=/`;
}
function getCookie(name) {
    const cookieString = `; ${document.cookie}`;
    const parts = cookieString.split(`; ${name}=`);
    if (parts.length !== 2) { return null; }

    return parts.pop().split(";").shift();
}

function getExpirationDateString() {
    const date = new Date();
    date.setTime(date.getTime() + (cookieExpirationPeriodInDays * oneDayInMilliseconds));
    return date.toGMTString();
}