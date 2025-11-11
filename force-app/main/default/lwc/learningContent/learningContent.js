import { LightningElement, api } from "lwc";

export default class LearningContent extends LightningElement {
    @api learningContent = {};

    get learningContentIcon() {
        if (! this.learningContent) { throw new Error("no learning content"); }

        if (this.learningContent.learningItemType === "course") {
            return "/resource/X360puzzle";
        }
        if (this.learningContent.learningItemType === "session") {
            return "/resource/X360doublePuzzle";
        }
        throw new Error(`not supported learning type ${this.learningContent.learningItemType}`);
    }
    get learningContentIconAlt() {
        if (! this.learningContent) { throw new Error("no learning content"); }

        if (this.learningContent.learningItemType === "course") {
            return "puzzle";
        }
        if (this.learningContent.learningItemType === "session") {
            return "double puzzle";
        }
        throw new Error(`not supported learning type ${this.learningContent.learningItemType}`);
    }
}