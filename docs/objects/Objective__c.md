---
hide:
  - path
---

<!-- This file is auto-generated. if you do not want it to be overwritten, set TRUE in the line below -->
<!-- DO_NOT_OVERWRITE_DOC=FALSE -->


## Schema

```mermaid
graph TD
Opportunity["Opportunity"]:::object
click Opportunity "/objects/Opportunity/"
Objective__c["Objective"]:::mainObject
click Objective__c "/objects/Objective__c/"
Key_Result__c["Key Result"]:::customObject
click Key_Result__c "/objects/Key_Result__c/"
Contact["Contact"]:::object
click Contact "/objects/Contact/"
Case["Case"]:::object
click Case "/objects/Case/"
Account["Account"]:::object
click Account "/objects/Account/"

Opportunity -->|Ubiquity_Employee_Referred__c| Contact
Opportunity -->|Lost_to_Competitor__c| Account
Opportunity -->|Case__c| Case
Opportunity -->|Associated_Partner__c| Account
Opportunity -->|Associated_Contact__c| Contact
Objective__c -->|Requestor__c| Contact
Objective__c -->|Partner__c| Account
Objective__c -->|Parent_Objective__c| Objective__c
Objective__c -->|Opportunity__c| Opportunity
Objective__c -->|Objective_Owner__c| Contact
Objective__c -->|Dependency__c| Objective__c
Objective__c -->|Case__c| Case
Key_Result__c -->|Result_Owner__c| Contact
Key_Result__c ==>|Objective__c| Objective__c
Contact -->|Ubiquity_Manager__c| Contact
Case -->|lntcss__Splited_From__c| Case
Case -->|Splited_From__c| Case
Case -->|ReAmParticipant__c| Contact
Case -->|Opportunity__c| Opportunity
Account -->|Linked_Company__c| Account
Account -->|Connected_Partner_Rep__c| Contact
Account -->|BD_Parent__c| Account

classDef object fill:#D6E9FF,stroke:#0070D2,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef customObject fill:#FFF4C2,stroke:#CCAA00,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef customObjectManaged fill:#FFD8B2,stroke:#CC5500,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef mainObject fill:#FFB3B3,stroke:#A94442,stroke-width:4px,rx:14px,ry:14px,shadow:drop,color:#333,font-weight:bold;
linkStyle 13 stroke:#4C9F70,stroke-width:4px;
linkStyle 0,1,2,3,4,5,6,7,8,9,10,11,12,14,15,16,17,18,19,20,21 stroke:#A6A6A6,stroke-width:2px;

```


<!-- Object description -->

## Fields

| Name      | Label | Type | Description |
| :-------- | :---- | :--: | :---------- | 
| Abandoned_Notes__c | Abandoned Notes | LongTextArea | Detailed notes on why this objective was abandoned. |
| Actual_Completion_Date__c | Actual Completion Date | Date | Date of Objective completion |
| Actual_Start_Date__c | Actual Start Date | Date | Date of actual start of Objective |
| Case__c | Case | Lookup | undefined |
| Completion__c | Completion | Percent | Sum of all KR percentages divided by the total number of Key Results. |
| Completion_Notes__c | Completion Notes | LongTextArea | Notes on completion of this objective. Reflect on learnings. |
| Completion_per__c | Completion % | Percent | Used to manually enter completion % if no KR's used. |
| Department__c | Department | Picklist | Department the Objective falls under. |
| Dependency__c | Dependency | Lookup | Objective which this Objective is dependent on. This objective could not stat or complete without the completion of the dependent objective. |
| Dependency_Completion__c | Dependency Completion | Percent | % Completion of Dependency |
| Desired_Goals__c | Desired Goals | LongTextArea | What do you hope to achieve with this objective? Why is it important to the business? |
| Effort__c | Effort | Picklist | What is the effort required to complete this project? |
| Impact__c | Impact | Number | Score the objectives organizational impact 1-100. The higher the score the more substantial the impact to the organization. |
| KR_Percent_Sum__c | KR Percent Sum | Summary | Sum of all KR percentages. Used to Calculate Objective total. |
| Legal_Requirement__c | Legal Requirement | Checkbox | Is this objective a legal requirement for the organization? |
| Master_Objective__c | Master Objective | Text | Brings in master governing objective from up to 3 levels up. |
| Notes__c | Notes | LongTextArea | Notes on Objective |
| Objective_Owner__c | Objective Owner | Lookup | Ubiquity Employee who owns this Objective |
| Objective_Owner_s_Department__c | Objective Owner's Department | Text | undefined |
| Opportunity__c | Opportunity | Lookup | undefined |
| Parent_Objective__c | Parent Objective | Lookup | Parent Objective for this Child Objective |
| Partner__c | Partner | Lookup | Partner linked to project/objective |
| Past_Due__c | Past Due | Checkbox | If actual completion date is blank and the target completion date is in the past, objective is past due. |
| Priority__c | Priority | Picklist | What organizational priority does this objective have? |
| Requesting_Department__c | Requesting Department | Picklist | Used for Projects. Which department requested this project? |
| Requestor__c | Requestor | Lookup | Person requesting the enhancement |
| Stage__c | Stage | Picklist | undefined |
| Status__c | Status | Picklist | Status of this Objective |
| Target_Completion_Date__c | Target Completion Date | Date | Date targeted for Objective completion. |
| Target_Start_Date__c | Target Start Date | Date | Date Objective is targeted to start |
| Theme__c | Theme | Picklist | What theme does this Objective fall into? |
| Type__c | Type | Picklist | Who is this objective for? Project value only to be used outside of OKR tracking. |
| Ubiquity_Manager__c | Ubiquity Manager | Text | Manager of Objective Owner |
| Voted_For__c | Voted For | LongTextArea | undefined |
| Votes__c | Votes | Number | undefined |
| X_of_Key_Results__c | # of Key Results | Summary | Roll-up of # of Key Results |


## Related Flows

| Object | Name      | Type | Description |
| :----  | :-------- | :--: | :---------- | 
| 💻 | [Objective_Button_Vote_for_Idea](../flows/Objective_Button_Vote_for_Idea.md) [🕒](../flows/Objective_Button_Vote_for_Idea-history.md) |  Auto Launched Flow | <!-- --> |
| 💻 | [Opportunity_Rec_Strategy_Get_Recommendations](../flows/Opportunity_Rec_Strategy_Get_Recommendations.md) [🕒](../flows/Opportunity_Rec_Strategy_Get_Recommendations-history.md) |  Recommendation Strategy | Fetches recommendations for opportunity page.  Begins by grabbing all recommendations, then filters + adds to output if criteria is met. |
| 💻 | [Opportunity_Screen_Create_Partner_Objective](../flows/Opportunity_Screen_Create_Partner_Objective.md) [🕒](../flows/Opportunity_Screen_Create_Partner_Objective-history.md) |  Screen Flow | Updated to support related list button |
| Objective__c | [Objective_Before_Save_Sync_Status](../flows/Objective_Before_Save_Sync_Status.md) [🕒](../flows/Objective_Before_Save_Sync_Status-history.md) |  Record Before Save | Syncs the objective's status with the manually entered completion % both ways |
| Objective__c | [Objectives_After_Save_Auto_Follow_Owned_Objectives](../flows/Objectives_After_Save_Auto_Follow_Owned_Objectives.md) [🕒](../flows/Objectives_After_Save_Auto_Follow_Owned_Objectives-history.md) |  Record After Save | <!-- --> |
| Opportunity | [Sales_Opportunity_Won_Next_Steps](../flows/Sales_Opportunity_Won_Next_Steps.md) [🕒](../flows/Sales_Opportunity_Won_Next_Steps-history.md) |  Record After Save | Added validation for partnership opportunities with an associated objective.  Prevents closure with an incomplete objective |




## Related Lightning Pages

| Lightning Page | Type |
| :----      | :--: | 
| [COO_Homepage](../pages/COO_Homepage.md) |  Home Page |
| [Hub_BI](../pages/Hub_BI.md) |  App Page |
| [Hub_L_D](../pages/Hub_L_D.md) |  App Page |
| [New_L_D_Home_Page](../pages/New_L_D_Home_Page.md) |  Home Page |
| [OKR_Home_Page](../pages/OKR_Home_Page.md) |  Home Page |
| [Objective](../pages/Objective.md) |  Record Page |
| [Testing_Home_Page](../pages/Testing_Home_Page.md) |  Home Page |


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
| [Attachments_and_Notes_Migrator](../permissionsets/Attachments_and_Notes_Migrator.md) | None |
| [Data_Loader](../permissionsets/Data_Loader.md) | None |
| [Developer](../permissionsets/Developer.md) | None |
| [MagicMover](../permissionsets/MagicMover.md) | None |
| [Manager](../permissionsets/Manager.md) | None |
| [Master](../permissionsets/Master.md) | None |
| [Modify_All](../permissionsets/Modify_All.md) | None |
| [OKR](../permissionsets/OKR.md) | None |
| [sfdcInternalInt__sfdc_a360_sfcrm_data_extract](../permissionsets/sfdcInternalInt__sfdc_a360_sfcrm_data_extract.md) | None |
| [sfdcInternalInt__sfdc_articlerecommendations](../permissionsets/sfdcInternalInt__sfdc_articlerecommendations.md) | None |
| [sfdcInternalInt__sfdc_einsteinagent](../permissionsets/sfdcInternalInt__sfdc_einsteinagent.md) | None |
| [sfdcInternalInt__sfdc_replyrecommendations](../permissionsets/sfdcInternalInt__sfdc_replyrecommendations.md) | None |
| [sfdcInternalInt__sfdc_slack](../permissionsets/sfdcInternalInt__sfdc_slack.md) | None |
| [View_All](../permissionsets/View_All.md) | None |


_Documentation generated with [sfdx-hardis](https://sfdx-hardis.cloudity.com), by [Cloudity](https://www.cloudity.com/) & [friends](https://github.com/hardisgroupcom/sfdx-hardis/graphs/contributors)_
