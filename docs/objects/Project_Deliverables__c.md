---
hide:
  - path
---

<!-- This file is auto-generated. if you do not want it to be overwritten, set TRUE in the line below -->
<!-- DO_NOT_OVERWRITE_DOC=FALSE -->


## Schema

```mermaid
graph TD
Work_Breakdown_Structure__c["Work Breakdown Structure"]:::customObject
click Work_Breakdown_Structure__c "/objects/Work_Breakdown_Structure__c/"
User["User"]:::object
click User "/objects/User/"
Required_Action__c["Required Action"]:::customObject
click Required_Action__c "/objects/Required_Action__c/"
Project_Task__c["Project Task"]:::customObject
click Project_Task__c "/objects/Project_Task__c/"
Project_Deliverables__c["Project Deliverable"]:::mainObject
click Project_Deliverables__c "/objects/Project_Deliverables__c/"
Case["Case"]:::object
click Case "/objects/Case/"

Required_Action__c -->|Work_Breakdown_Structure__c| Work_Breakdown_Structure__c
Required_Action__c -->|Non_Linear_Progression_Trigger__c| Required_Action__c
Required_Action__c -->|Finish_before_Activation__c| Project_Deliverables__c
Required_Action__c -->|Finish_Before_Completion__c| Project_Deliverables__c
Required_Action__c -->|Affected_Deliverable__c| Project_Deliverables__c
Project_Task__c -->|Project_Deliverable__c| Project_Deliverables__c
Project_Task__c -->|Connected_Case__c| Case
Project_Task__c -->|Assigned_To__c| User
Project_Deliverables__c ==>|Work_Breakdown_Structure__c| Work_Breakdown_Structure__c
Project_Deliverables__c -->|Non_Linear_Progression_Group__c| Required_Action__c
Project_Deliverables__c -->|Case_User__c| User
Project_Deliverables__c -->|Assigned_To__c| User
Case -->|lntcss__Splited_From__c| Case
Case -->|Splited_From__c| Case
Case -->|Project_Deliverable__c| Project_Deliverables__c

classDef object fill:#D6E9FF,stroke:#0070D2,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef customObject fill:#FFF4C2,stroke:#CCAA00,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef customObjectManaged fill:#FFD8B2,stroke:#CC5500,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef mainObject fill:#FFB3B3,stroke:#A94442,stroke-width:4px,rx:14px,ry:14px,shadow:drop,color:#333,font-weight:bold;
linkStyle 8 stroke:#4C9F70,stroke-width:4px;
linkStyle 0,1,2,3,4,5,6,7,9,10,11,12,13,14 stroke:#A6A6A6,stroke-width:2px;

```


<!-- Object description -->

## Fields

| Name      | Label | Type | Description |
| :-------- | :---- | :--: | :---------- | 
| Active__c | Active | Checkbox | undefined |
| Assign_to_Current_Owner__c | Assign to Current Owner | Checkbox | undefined |
| Assigned_To__c | Assigned To | Lookup | undefined |
| Case_Close_Time_Hours__c | Case Close Time Hours | Number | undefined |
| Case_Description__c | Case Description | LongTextArea | undefined |
| Case_Queue__c | Case Queue | Text | undefined |
| Case_Subject__c | Case Subject | Text | undefined |
| Case_Upon_Creation__c | Case Upon Creation | Checkbox | undefined |
| Case_User__c | Case User | Lookup | undefined |
| Category__c | Category | MultiselectPicklist | undefined |
| Controlling_Date_Field__c | Controlling Date Field | Picklist | undefined |
| Creation_Point__c | Creation Point | Picklist | undefined |
| Days_to_Complete__c | Days to Complete | Number | undefined |
| Default__c | Default | Checkbox | undefined |
| Expected_Start_Days_from_Creation__c | Expected Start (Days from Creation) | Number | undefined |
| Fields_Stamped_Upon_Completion__c | Fields Stamped Upon Completion | MultiselectPicklist | undefined |
| First_Response_Time_Hours__c | First Response Time Hours | Number | undefined |
| KPI_Milestone__c | KPI Milestone | Picklist | undefined |
| Non_Linear_Progression_Group__c | Non-Linear Progression Group | Lookup | undefined |
| Order_Number__c | Order Number | Number | undefined |
| Picklist_Completion_Value__c | Picklist Completion Value | Text | undefined |
| Picklist_Declined_Value__c | Picklist Declined Value | Text | undefined |
| Responsible_Party__c | Responsible Party | Picklist | undefined |
| Service_Option_s_Ineligible__c | Service Option(s) Ineligible | TextArea | undefined |
| Skill__c | Skill | Picklist | undefined |
| SLA__c | SLA | Number | How many business days is this task expected to be completed in? |
| Status_Upon_Activation__c | Status Upon Activation | Picklist | undefined |
| Status_Upon_Creation__c | Status Upon Creation | Picklist | undefined |
| Team_Member__c | Team Member | Picklist | undefined |
| Work_Breakdown_Structure__c | Work Breakdown Structure | MasterDetail | undefined |


## Related Flows

| Object | Name      | Type | Description |
| :----  | :-------- | :--: | :---------- | 
| 💻 | [Project_Task_Button_Process_Complete_Tasks](../flows/Project_Task_Button_Process_Complete_Tasks.md) [🕒](../flows/Project_Task_Button_Process_Complete_Tasks-history.md) |  Auto Launched Flow | <!-- --> |
| 💻 | [Project_Task_Creation_Implementations](../flows/Project_Task_Creation_Implementations.md) [🕒](../flows/Project_Task_Creation_Implementations-history.md) |  Auto Launched Flow | Modified task loop to wipe "actual completion date" for the task variable each pass - was auto completing tasks when there was a "not needed" in the loop (variable wasn't getting reset). |
| 💻 | [Project_Task_Edit_Implementations](../flows/Project_Task_Edit_Implementations.md) [🕒](../flows/Project_Task_Edit_Implementations-history.md) |  Auto Launched Flow | Adds update to Implementation Completion Date task #16.   "Owned By Queue" Decision = YES results in task owner/assigned changed to Running User instead of changing to Imp Owner.   Imp Owner remains Client Support and any CST can update tasks.   SF can't change project task owner/assigned (user fields 005) to Queue owner (00G) |
| 💻 | [Project_Task_Process_Complete_Tasks](../flows/Project_Task_Process_Complete_Tasks.md) [🕒](../flows/Project_Task_Process_Complete_Tasks-history.md) |  Auto Launched Flow | <!-- --> |
| Add_On_Products__c | [Add_On_Product_After_Update_Create_Project_Tasks](../flows/Add_On_Product_After_Update_Create_Project_Tasks.md) [🕒](../flows/Add_On_Product_After_Update_Create_Project_Tasks-history.md) |  Record After Save | 10/7/22- Removed lookup to Opportunity |
| Add_On_Products__c | [Add_On_Product_After_Update_Creation_Point_Project_Tasks](../flows/Add_On_Product_After_Update_Creation_Point_Project_Tasks.md) [🕒](../flows/Add_On_Product_After_Update_Creation_Point_Project_Tasks-history.md) |  Record After Save | Used to build Source Mapping Task when Survey is Received. Removed check for duplicate emails because it wasn't preventing other duplications. 10/7/22- Removed lookup to Opportunity. |
| Case | [Case_After_Update_Assign_Deliverable_SLA](../flows/Case_After_Update_Assign_Deliverable_SLA.md) [🕒](../flows/Case_After_Update_Assign_Deliverable_SLA-history.md) |  Record After Save | Modified entry conditions to better fit CST cases (basically just adding isnew()) |
| Implementation__c | [Implementation_After_Update_Creation_Point_Project_Tasks](../flows/Implementation_After_Update_Creation_Point_Project_Tasks.md) [🕒](../flows/Implementation_After_Update_Creation_Point_Project_Tasks-history.md) |  Record After Save | Swapped NOW() with flow interview's current time in start date assignment |
| Implementation__c | [Implementation_ONETIME_Create_Project_Tasks](../flows/Implementation_ONETIME_Create_Project_Tasks.md) [🕒](../flows/Implementation_ONETIME_Create_Project_Tasks-history.md) |  Scheduled | <!-- --> |
| Opportunity | [Opportunity_After_Update_Create_Project_Tasks](../flows/Opportunity_After_Update_Create_Project_Tasks.md) [🕒](../flows/Opportunity_After_Update_Create_Project_Tasks-history.md) |  Record After Save | <!-- --> |
| Project_Task__c | [Project_Task_Process_Move_Project_Forward](../flows/Project_Task_Process_Move_Project_Forward.md) [🕒](../flows/Project_Task_Process_Move_Project_Forward-history.md) |  Record After Save | Added path for imps tasks to not be reassigned to Nasrin on activation |
| Transition__c | [Transition_After_Update_Create_Project_Tasks](../flows/Transition_After_Update_Create_Project_Tasks.md) [🕒](../flows/Transition_After_Update_Create_Project_Tasks-history.md) |  Record After Save | <!-- --> |
| dsfs__DocuSign_Status__c | [DocuSign_Close_Simply_Opp](../flows/DocuSign_Close_Simply_Opp.md) [🕒](../flows/DocuSign_Close_Simply_Opp-history.md) |  Workflow | Close Opp/Update Imp when A4S/AA is Signed if Service Option equals Simply |


## Related Apex Classes

| Apex Class | Type |
| :----      | :--: | 
| [CaseSLA](../apex/CaseSLA.md) | Class |
| [CaseSLA_TEST](../apex/CaseSLA_TEST.md) | Test |
| [StampDateTest](../apex/StampDateTest.md) | Test |
| [StampImpTest](../apex/StampImpTest.md) | Test |
| [StampDate](../apex/StampDate.md) | Class |
| [StampImp](../apex/StampImp.md) | Class |


## Related Lightning Pages

| Lightning Page | Type |
| :----      | :--: | 
| [Project_Deliverable_Default](../pages/Project_Deliverable_Default.md) |  Record Page |


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
| [Attachments_and_Notes_Migrator](../permissionsets/Attachments_and_Notes_Migrator.md) | None |
| [Data_Loader](../permissionsets/Data_Loader.md) | None |
| [Developer](../permissionsets/Developer.md) | None |
| [MagicMover](../permissionsets/MagicMover.md) | None |
| [Manager](../permissionsets/Manager.md) | None |
| [Master](../permissionsets/Master.md) | None |
| [Modify_All](../permissionsets/Modify_All.md) | None |
| [Power_User](../permissionsets/Power_User.md) | None |
| [sfdcInternalInt__sfdc_a360_sfcrm_data_extract](../permissionsets/sfdcInternalInt__sfdc_a360_sfcrm_data_extract.md) | None |
| [sfdcInternalInt__sfdc_articlerecommendations](../permissionsets/sfdcInternalInt__sfdc_articlerecommendations.md) | None |
| [sfdcInternalInt__sfdc_einsteinagent](../permissionsets/sfdcInternalInt__sfdc_einsteinagent.md) | None |
| [sfdcInternalInt__sfdc_replyrecommendations](../permissionsets/sfdcInternalInt__sfdc_replyrecommendations.md) | None |
| [sfdcInternalInt__sfdc_slack](../permissionsets/sfdcInternalInt__sfdc_slack.md) | None |
| [View_All](../permissionsets/View_All.md) | None |
| [Work_Breakdown_Structure_Access](../permissionsets/Work_Breakdown_Structure_Access.md) | None |


_Documentation generated with [sfdx-hardis](https://sfdx-hardis.cloudity.com), by [Cloudity](https://www.cloudity.com/) & [friends](https://github.com/hardisgroupcom/sfdx-hardis/graphs/contributors)_
