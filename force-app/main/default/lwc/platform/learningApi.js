import { externalPlatform } from "./config";
import { addHttpsIfNeeded, removeTrailingSlash } from "./utils";

export { buildLearningApi };

function buildLearningApi(tenantUrl) {
    const baseUrl = removeTrailingSlash(addHttpsIfNeeded(tenantUrl));

    return {
        async isExternalTokenValid(token) {
            const { isValid } = await get(`${baseUrl}/api/auth/isExternalTokenValid`, token);
            return isValid;
        },
        async fetchLearningContents(searchText, token) {
            const response = await get(`${baseUrl}/api/search?q=${searchText}&notOnUniversities=true&types[]=programSessions&types[]=courses`, token);
            const courseContents = buildCourseContents(response.courses, token);
            const sessionContents = buildSessionContents(response.programSessions, token);
            return courseContents.concat(sessionContents);
        }
    };
    function buildCourseContents(courses, token) {
        return courses.map(course => ({
            ...course,
            url: `${baseUrl}/course/play/${course._id}?token=${token}`,
            imageUrl: `${baseUrl}/api/medias/course/${course._id}?company=${course.company}&w=213&h=160&crop=true`,
            learningItemType: "course"
        }));
    }
    function buildSessionContents(sessions, token) {
        return sessions.map(session => ({
            ...session,
            url: `${baseUrl}/session/${session._id}/home?token=${token}`,
            imageUrl: `${baseUrl}/api/medias/program/${session._id}?company=${session.company}&w=213&h=160&crop=true`,
            learningItemType: "session"
        }));
    }

    async function get(url, token) {
        const response = await fetch(url, {
            method: "GET",
            headers: {
                "Content-Type": "application/json",
                "Authorization": `${externalPlatform} ${token}`,
                "Access-Control-Request-Method": "GET"
            }
        });
        return response.json();
    }
}