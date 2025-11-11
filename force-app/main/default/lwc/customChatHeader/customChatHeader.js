import { LightningElement, api } from "lwc";
import {
    dispatchMessagingEvent,
    assignMessagingEventHandler,
    MESSAGING_EVENT
} from "lightningsnapin/eventStore";
import LOGO from "@salesforce/resourceUrl/chatLogo";

const SLDS_MENU_SELECTOR = "slds-dropdown-trigger slds-dropdown-trigger_click";

export default class CustomChatHeader extends LightningElement {

    @api configuration = {};
    @api conversationStatus;
    menuClass = SLDS_MENU_SELECTOR;
    chatbotOptionsMenu = [];
    currentHeaderText = "";
    _agentName = "";

    get logo() {
        return LOGO;
    }

    get showMenuButton() {
        return this.conversationStatus === "OPEN";
    }

    _showMenu = false;
    get showMenu() {
        return this._showMenu;
    }

    set showMenu(shouldShow) {
        this.menuClass = SLDS_MENU_SELECTOR + (shouldShow ? " slds-is-open" : "");
        this._showMenu = shouldShow;
    }

    get showCloseButton() {
        return this.conversationStatus !== "OPEN";
    }

    get headerText() {
        return this._agentName ? this._agentName : this.getDefaultHeaderText();
    }

    getDefaultHeaderText() {
        if (this.configuration?.customLabels && Array.isArray(this.configuration.customLabels)) {
            const defaultHeaderLabel = this.configuration.customLabels.find(
                label => label.labelName === "DefaultHeaderText"
            );
            return defaultHeaderLabel ? defaultHeaderLabel.labelValue : "Chat"; 
        } else {
            return "Chat";
        }
    }

    onMenuButtonClick() {
        this.showMenu = !this.showMenu;
    }

    onMinimizeButtonClick() {
        dispatchMessagingEvent(MESSAGING_EVENT.MINIMIZE_BUTTON_CLICK, {});
    }

    onCloseButtonClick() {
        dispatchMessagingEvent(MESSAGING_EVENT.CLOSE_CONTAINER, {});
    }

    onMenuOptionClick(event) {
        event.preventDefault();
        dispatchMessagingEvent( MESSAGING_EVENT.MENU_ITEM_SELECTED, {
            selectedOption: this.chatbotOptionsMenu.find(
                option => option.optionIdentifier === event.target.getAttribute( "value" )
            )
        });
        this.showMenu = false;
    }

    onEndConversationClick() {
        dispatchMessagingEvent( MESSAGING_EVENT.CLOSE_CONVERSATION, {} );
        this.showMenu = false;
    }

    connectedCallback() {
        this.currentHeaderText = this.getDefaultHeaderText();

        assignMessagingEventHandler(MESSAGING_EVENT.PARTICIPANT_JOINED, ( data ) => {
            if ( data.options && Array.isArray( data.options ) ) {
                data.options.forEach( ( participantOption ) => {
                    this.chatbotOptionsMenu.push( participantOption );
                } );
            }
            this._agentName = data.label;
        } );

        assignMessagingEventHandler( MESSAGING_EVENT.PARTICIPANT_LEFT, ( data ) => {
            this.chatbotOptionsMenu = [];
            this.this._agentName = "";
            this.currentHeaderText = this.getDefaultHeaderText();
        });

        assignMessagingEventHandler( MESSAGING_EVENT.UPDATE_HEADER_TEXT, ( data ) => {
            this._agentName = data.text;
        } );

        assignMessagingEventHandler(MESSAGING_EVENT.TOGGLE_BACK_BUTTON, ( data ) => {
            this.showBackButton = data.showBackButton;
        } );
    }
}