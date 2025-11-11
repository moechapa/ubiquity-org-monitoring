---
hide:
  - path
---

<!-- This file is auto-generated. if you do not want it to be overwritten, set TRUE in the line below -->
<!-- DO_NOT_OVERWRITE_DOC=FALSE -->


## Schema

```mermaid
graph TD
simplesurvey__Survey__c["simplesurvey__Survey__c"]:::customObjectManaged
Quality_Assurance_QA__c["Quality Assurance (QA)"]:::customObject
Plan__c["Plan"]:::customObject
MessagingSession["MessagingSession"]:::mainObject
click MessagingSession "/objects/MessagingSession/"

simplesurvey__Survey__c -->|Plan__c| Plan__c
simplesurvey__Survey__c -->|Messaging_Session__c| MessagingSession
Quality_Assurance_QA__c -->|Messaging_Session__c| MessagingSession
MessagingSession -->|Plan__c| Plan__c

classDef object fill:#D6E9FF,stroke:#0070D2,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef customObject fill:#FFF4C2,stroke:#CCAA00,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef customObjectManaged fill:#FFD8B2,stroke:#CC5500,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef mainObject fill:#FFB3B3,stroke:#A94442,stroke-width:4px,rx:14px,ry:14px,shadow:drop,color:#333,font-weight:bold;
linkStyle 0,1,2,3 stroke:#A6A6A6,stroke-width:2px;

```


<!-- Object description -->

## Fields

| Name      | Label | Type | Description |
| :-------- | :---- | :--: | :---------- | 
| AcceptTime |  |  | undefined |
| AgentMessageCount |  |  | undefined |
| CaseId |  | Lookup | undefined |
| ChannelKey |  |  | undefined |
| ChannelName |  |  | undefined |
| ChannelType |  |  | undefined |
| Company__c | Company | Text | Company input value from Pre-Chat form |
| ConversationId |  | Lookup | undefined |
| Department__c | Department | Text | Messaging Session Department owner |
| Duration__c | Duration (Minutes) | Number | undefined |
| Email__c | Email | Text | undefined |
| EndedByType |  |  | undefined |
| EndTime |  |  | undefined |
| EndUserAccountId |  | Lookup | undefined |
| EndUserContactId |  | Lookup | undefined |
| EndUserLanguage |  |  | undefined |
| EndUserMessageCount |  |  | undefined |
| ErrorReason |  |  | undefined |
| First_Name__c | First Name | Text | undefined |
| Last_Name__c | Last Name | Text | undefined |
| LeadId |  | Lookup | undefined |
| MessagingChannelId |  | Lookup | undefined |
| MessagingEndUserId |  | Lookup | undefined |
| Omni_Role__c | Omni Role | Text | undefined |
| OpportunityId |  | Lookup | undefined |
| Origin |  |  | undefined |
| OwnerId |  | Lookup | undefined |
| Plan__c | Plan | Lookup | undefined |
| PreviewDetails |  |  | undefined |
| Session_Owner__c | Session Owner | Text | undefined |
| StartTime |  |  | undefined |
| Status |  |  | undefined |
| Subject__c | Subject | Text | undefined |
| Survey_Email__c | Survey Email | Email | Email used in alert for chat csat survey |
| Wait_Time__c | Wait Time (Minutes) | Number | undefined |


## Related Flows

| Object | Name      | Type | Description |
| :----  | :-------- | :--: | :---------- | 
| 💻 | [Message_Test_Pre_Chat_Form](../flows/Message_Test_Pre_Chat_Form.md) [🕒](../flows/Message_Test_Pre_Chat_Form-history.md) |  Routing Flow | <!-- --> |
| 💻 | [Messaging_Process_Check_Agent_Availability](../flows/Messaging_Process_Check_Agent_Availability.md) [🕒](../flows/Messaging_Process_Check_Agent_Availability-history.md) |  Auto Launched Flow | <!-- --> |
| 💻 | [Messaging_Route_Route_Messages_to_Queues](../flows/Messaging_Route_Route_Messages_to_Queues.md) [🕒](../flows/Messaging_Route_Route_Messages_to_Queues-history.md) |  Routing Flow | Change routing to Agentforce - Moe 06.16.25 |
| 💻 | [Messaging_Route_Route_SMS_to_CO](../flows/Messaging_Route_Route_SMS_to_CO.md) [🕒](../flows/Messaging_Route_Route_SMS_to_CO-history.md) |  Routing Flow | <!-- --> |
| 💻 | [Messaging_Route_Route_SMS_to_CO_Queue](../flows/Messaging_Route_Route_SMS_to_CO_Queue.md) [🕒](../flows/Messaging_Route_Route_SMS_to_CO_Queue-history.md) |  Routing Flow | <!-- --> |
| 💻 | [Messaging_Route_Route_to_CO_Queue](../flows/Messaging_Route_Route_to_CO_Queue.md) [🕒](../flows/Messaging_Route_Route_to_CO_Queue-history.md) |  Routing Flow | Adding "Company" and "What can we help you?" variables for Pre-Chat Form Capture |
| 💻 | [Messaging_Route_Route_to_Test_Bot](../flows/Messaging_Route_Route_to_Test_Bot.md) [🕒](../flows/Messaging_Route_Route_to_Test_Bot-history.md) |  Routing Flow | <!-- --> |
| 💻 | [Route_to_UBQT_PW](../flows/Route_to_UBQT_PW.md) [🕒](../flows/Route_to_UBQT_PW-history.md) |  Routing Flow | <!-- --> |
| 💻 | [Route_to_Ubot_Employee_Chat_Omni](../flows/Route_to_Ubot_Employee_Chat_Omni.md) [🕒](../flows/Route_to_Ubot_Employee_Chat_Omni-history.md) |  Routing Flow | Routes each message to an enhanced bot. You can customize the flow with business and routing rules. |
| Case | [Case_After_Save_Case_Closed_Actions](../flows/Case_After_Save_Case_Closed_Actions.md) [🕒](../flows/Case_After_Save_Case_Closed_Actions-history.md) |  Record After Save | Created for survey send |
| Case | [Case_After_Trigger_Associate_related_Messaging_Session](../flows/Case_After_Trigger_Associate_related_Messaging_Session.md) [🕒](../flows/Case_After_Trigger_Associate_related_Messaging_Session-history.md) |  Record After Save | <!-- --> |
| Case | [Case_Before_Update_Master_Flow](../flows/Case_Before_Update_Master_Flow.md) [🕒](../flows/Case_Before_Update_Master_Flow-history.md) |  Record Before Save | Updated to remove case team new check and assignment.  Split into other flow to change run order |
| MessagingSession | [Messaging_Session_After_Save_Send_Chat_Survey](../flows/Messaging_Session_After_Save_Send_Chat_Survey.md) [🕒](../flows/Messaging_Session_After_Save_Send_Chat_Survey-history.md) |  Record After Save | <!-- --> |
| MessagingSession | [Messaging_Session_Before_Trigger_Update_Survey_Email](../flows/Messaging_Session_Before_Trigger_Update_Survey_Email.md) [🕒](../flows/Messaging_Session_Before_Trigger_Update_Survey_Email-history.md) |  Record Before Save | <!-- --> |




## Related Lightning Pages

| Lightning Page | Type |
| :----      | :--: | 
| [CO_Messaging_Session1](../pages/CO_Messaging_Session1.md) |  Record Page |
| [Messaging_Session](../pages/Messaging_Session.md) |  Record Page |
| [Messaging_Session_Record_Page](../pages/Messaging_Session_Record_Page.md) |  Record Page |


## Related Profiles

| Profile | User License |
| :----      | :--: | 
| [Admin](../profiles/Admin.md) |  Salesforce |
| [Analytics Cloud Integration User](../profiles/Analytics%20Cloud%20Integration%20User.md) |  Analytics  Cloud  Integration  User |
| [Analytics Cloud Security User](../profiles/Analytics%20Cloud%20Security%20User.md) |  Analytics  Cloud  Integration  User |
| [Anypoint Integration](../profiles/Anypoint%20Integration.md) |  Identity |
| [B2BMA Integration User](../profiles/B2BMA%20Integration%20User.md) |  B2 B M A  Integration  User |
| [Billing User](../profiles/Billing%20User.md) |  Salesforce |
| [Bot Profile](../profiles/Bot%20Profile.md) |  Salesforce |
| [Business Development](../profiles/Business%20Development.md) |  Salesforce |
| [Call Center](../profiles/Call%20Center.md) |  Salesforce |
| [Chatter External User](../profiles/Chatter%20External%20User.md) |  Chatter  External |
| [Chatter Free User](../profiles/Chatter%20Free%20User.md) |  Chatter  Free |
| [Chatter Moderator User](../profiles/Chatter%20Moderator%20User.md) |  Chatter  Free |
| [Client Onboarding - Admin](../profiles/Client%20Onboarding%20-%20Admin.md) |  Salesforce |
| [Client Onboarding - RM](../profiles/Client%20Onboarding%20-%20RM.md) |  Salesforce |
| [Client Servicing Team](../profiles/Client%20Servicing%20Team.md) |  Salesforce |
| [Compliance Manager](../profiles/Compliance%20Manager.md) |  Salesforce |
| [ContractManager](../profiles/ContractManager.md) |  Salesforce |
| [Director of Operations](../profiles/Director%20of%20Operations.md) |  Salesforce |
| [Director of Sales](../profiles/Director%20of%20Sales.md) |  Salesforce |
| [Distributions](../profiles/Distributions.md) |  Salesforce |
| [Einstein Agent User](../profiles/Einstein%20Agent%20User.md) |  Einstein  Agent |
| [ESW_Agentforce_MIAW_1748035300267 Profile](../profiles/ESW_Agentforce_MIAW_1748035300267%20Profile.md) |  Guest  User  License |
| [ESW_Agentforce_MIAW_1748385215843 Profile](../profiles/ESW_Agentforce_MIAW_1748385215843%20Profile.md) |  Guest  User  License |
| [ESW_CE_Chat_1692890394498 Profile](../profiles/ESW_CE_Chat_1692890394498%20Profile.md) |  Guest  User  License |
| [ESW_CE_Chat_Moe_1693182845676 Profile](../profiles/ESW_CE_Chat_Moe_1693182845676%20Profile.md) |  Guest  User  License |
| [ESW_Login_Help_1697133738638 Profile](../profiles/ESW_Login_Help_1697133738638%20Profile.md) |  Guest  User  License |
| [ESW_Login_Help_Simply_1700075140889 Profile](../profiles/ESW_Login_Help_Simply_1700075140889%20Profile.md) |  Guest  User  License |
| [ESW_Omni_Messaging_1694183770479 Profile](../profiles/ESW_Omni_Messaging_1694183770479%20Profile.md) |  Guest  User  License |
| [ESW_Omni_Messaging_CO_1696448547822 Profile](../profiles/ESW_Omni_Messaging_CO_1696448547822%20Profile.md) |  Guest  User  License |
| [ESW_Omni_Messaging_Sallus_1700075448386 Profile](../profiles/ESW_Omni_Messaging_Sallus_1700075448386%20Profile.md) |  Guest  User  License |
| [ESW_Omni_Messaging_Simply_1700076370188 Profile](../profiles/ESW_Omni_Messaging_Simply_1700076370188%20Profile.md) |  Guest  User  License |
| [ESW_QA_Login_1699666348585 Profile](../profiles/ESW_QA_Login_1699666348585%20Profile.md) |  Guest  User  License |
| [ESW_QA_Messaging_1699974036493 Profile](../profiles/ESW_QA_Messaging_1699974036493%20Profile.md) |  Guest  User  License |
| [ESW_Sales_Chat_1697460991337 Profile](../profiles/ESW_Sales_Chat_1697460991337%20Profile.md) |  Guest  User  License |
| [ESW_Sallus_Login_Chat_1700072925200 Profile](../profiles/ESW_Sallus_Login_Chat_1700072925200%20Profile.md) |  Guest  User  License |
| [External Apps Login User](../profiles/External%20Apps%20Login%20User.md) |  External  Apps  Login |
| [Finance Manager Lightning](../profiles/Finance%20Manager%20Lightning.md) |  Salesforce |
| [Guest License User](../profiles/Guest%20License%20User.md) |  Guest  User  License |
| [Help Center Profile](../profiles/Help%20Center%20Profile.md) |  Guest  User  License |
| [Identity User](../profiles/Identity%20User.md) |  Identity |
| [Incoming_SMS Profile](../profiles/Incoming_SMS%20Profile.md) |  Guest  User  License |
| [IT](../profiles/IT.md) |  Salesforce |
| [Leadership Lightning](../profiles/Leadership%20Lightning.md) |  Salesforce |
| [Leadership](../profiles/Leadership.md) |  Salesforce |
| [Learning %26 Development](../profiles/Learning%20%2526%20Development.md) |  Salesforce |
| [Lightning Client Onboarding](../profiles/Lightning%20Client%20Onboarding.md) |  Salesforce |
| [Lightning Compliance](../profiles/Lightning%20Compliance.md) |  Salesforce |
| [Lightning Saver User](../profiles/Lightning%20Saver%20User.md) |  Salesforce |
| [Lightning Service Manager](../profiles/Lightning%20Service%20Manager.md) |  Salesforce |
| [Lightning Service User](../profiles/Lightning%20Service%20User.md) |  Salesforce |
| [Marketing Team](../profiles/Marketing%20Team.md) |  Salesforce |
| [MarketingProfile](../profiles/MarketingProfile.md) |  Salesforce |
| [Master Administrator](../profiles/Master%20Administrator.md) |  Salesforce |
| [Minimum Access - API Only Integrations](../profiles/Minimum%20Access%20-%20API%20Only%20Integrations.md) |  Salesforce  Integration |
| [Minimum Access - Salesforce](../profiles/Minimum%20Access%20-%20Salesforce.md) |  Salesforce |
| [myubiquity Profile](../profiles/myubiquity%20Profile.md) |  Guest  User  License |
| [Operations VP](../profiles/Operations%20VP.md) |  Salesforce |
| [Operations](../profiles/Operations.md) |  Salesforce |
| [Paradigm Help Center Profile](../profiles/Paradigm%20Help%20Center%20Profile.md) |  Guest  User  License |
| [Payroll Koncierge](../profiles/Payroll%20Koncierge.md) |  Salesforce |
| [Payroll Team](../profiles/Payroll%20Team.md) |  Salesforce |
| [People %26 Culture](../profiles/People%20%2526%20Culture.md) |  Salesforce |
| [Pre-chat Site Profile](../profiles/Pre-chat%20Site%20Profile.md) |  Guest  User  License |
| [Product Innovation Leadership](../profiles/Product%20Innovation%20Leadership.md) |  Salesforce |
| [Product Innovation User](../profiles/Product%20Innovation%20User.md) |  Salesforce |
| [PSM Team](../profiles/PSM%20Team.md) |  Salesforce |
| [R%26W](../profiles/R%2526W.md) |  Salesforce |
| [Read Only](../profiles/Read%20Only.md) |  Salesforce |
| [Sales Administrator](../profiles/Sales%20Administrator.md) |  Salesforce |
| [Sales Coordinator](../profiles/Sales%20Coordinator.md) |  Salesforce |
| [Sales Insights Integration User](../profiles/Sales%20Insights%20Integration%20User.md) |  Sales  Insights  Integration  User |
| [Sales Team - Limited](../profiles/Sales%20Team%20-%20Limited.md) |  Salesforce |
| [Sales Team](../profiles/Sales%20Team.md) |  Salesforce |
| [Salesforce API Only System Integrations](../profiles/Salesforce%20API%20Only%20System%20Integrations.md) |  Salesforce  Integration |
| [SalesforceIQ Integration User](../profiles/SalesforceIQ%20Integration%20User.md) |  Salesforce I Q  Integration  User |
| [Saver Manager](../profiles/Saver%20Manager.md) |  Salesforce |
| [Simple Survey Profile](../profiles/Simple%20Survey%20Profile.md) |  Guest  User  License |
| [Simply Help Center Profile](../profiles/Simply%20Help%20Center%20Profile.md) |  Guest  User  License |
| [SolutionManager](../profiles/SolutionManager.md) |  Salesforce |
| [Standard](../profiles/Standard.md) |  Salesforce |
| [StandardAul](../profiles/StandardAul.md) |  Salesforce  Platform |
| [Super System Administrator](../profiles/Super%20System%20Administrator.md) |  Salesforce |
| [Sys Dev Admin](../profiles/Sys%20Dev%20Admin.md) |  Salesforce |
| [Transitions Team](../profiles/Transitions%20Team.md) |  Salesforce |
| [Ubiquity Help Center Profile](../profiles/Ubiquity%20Help%20Center%20Profile.md) |  Guest  User  License |
| [Zoom Webhooks Profile](../profiles/Zoom%20Webhooks%20Profile.md) |  Guest  User  License |


## Related Permission Sets

| Permission Set | User License |
| :----      | :--: | 
| [Administrator](../permissionsets/Administrator.md) | None |
| [Agentforce_Custom_PS](../permissionsets/Agentforce_Custom_PS.md) | None |
| [Attachments_and_Notes_Migrator](../permissionsets/Attachments_and_Notes_Migrator.md) | None |
| [Configure_Messaging](../permissionsets/Configure_Messaging.md) | None |
| [Data_Loader](../permissionsets/Data_Loader.md) | None |
| [Developer](../permissionsets/Developer.md) | None |
| [MagicMover](../permissionsets/MagicMover.md) | None |
| [Master](../permissionsets/Master.md) | None |
| [Modify_All](../permissionsets/Modify_All.md) | None |
| [Omni_Messaging](../permissionsets/Omni_Messaging.md) | None |
| [Outbound_Messaging](../permissionsets/Outbound_Messaging.md) | None |
| [sfdcInternalInt__sfdc_a360_sfcrm_data_extract](../permissionsets/sfdcInternalInt__sfdc_a360_sfcrm_data_extract.md) | None |
| [sfdcInternalInt__sfdc_articlerecommendations](../permissionsets/sfdcInternalInt__sfdc_articlerecommendations.md) | None |
| [sfdcInternalInt__sfdc_einsteinagent](../permissionsets/sfdcInternalInt__sfdc_einsteinagent.md) | None |
| [sfdcInternalInt__sfdc_replyrecommendations](../permissionsets/sfdcInternalInt__sfdc_replyrecommendations.md) | None |
| [sfdcInternalInt__sfdc_slack](../permissionsets/sfdcInternalInt__sfdc_slack.md) | None |


_Documentation generated with [sfdx-hardis](https://sfdx-hardis.cloudity.com), by [Cloudity](https://www.cloudity.com/) & [friends](https://github.com/hardisgroupcom/sfdx-hardis/graphs/contributors)_
