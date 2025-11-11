---
hide:
  - path
---

## Objects

| Name      | Label | Description |
| :-------- | :---- | :---------- | 
| [Account_Snapshot__c](Account_Snapshot__c.md) | Account Snapshot | Used to capture account fields and record them for timeline reporting |
| [Account](Account.md) |  | <!-- --> |
| [Activity](Activity.md) |  | <!-- --> |
| [Add_On_Products__c](Add_On_Products__c.md) | Add-On Product | This object is to track and set up product add-ons for existing clients. |
| [AddSources__mdt](AddSources__mdt.md) | Source | <!-- --> |
| [Advisor_Firm__mdt](Advisor_Firm__mdt.md) | Advisory Firm | <!-- --> |
| [ApprovalSubmission](ApprovalSubmission.md) |  | <!-- --> |
| [Associated_Contact__c](Associated_Contact__c.md) | Associated Contact | Junction Object that Associates Account, Opportunity, Implementation, Plan, and Transition to Contact |
| [Associated_Partner__c](Associated_Partner__c.md) | Associated Partner | Junction Object that Associates Opportunity, Implementation, Plan, and Transition to Account |
| [Auto_Enrollment_Deferral_Escalation_Rate__mdt](Auto_Enrollment_Deferral_Escalation_Rate__mdt.md) | Auto-Enrollment Deferral/Escalation Rate | This table will be used to populate AutoDeferral Type, Min Auto Deferral Percentage, Max Auto Deferral Percentage, Yearly Auto Deferral Percentage Increase |
| [Calculation__c](Calculation__c.md) | Calculation | Used for CST's to communicate to compliance the exact needs for a client calculation request. |
| [CalendlyAction__c](CalendlyAction__c.md) |  | <!-- --> |
| [Campaign](Campaign.md) |  | <!-- --> |
| [CampaignMember](CampaignMember.md) |  | <!-- --> |
| [Case](Case.md) |  | <!-- --> |
| [Client_Feedback__c](Client_Feedback__c.md) | Client Feedback | <!-- --> |
| [Client_Health_Check__c](Client_Health_Check__c.md) | Client Health Check | Used for Client Experience Teams to conduct Client Health Checks |
| [Client_Health_Score__c](Client_Health_Score__c.md) | Client Health Score | Object to track changes in client health score |
| [Complaint_Form__c](Complaint_Form__c.md) | Complaint Form | <!-- --> |
| [Complex_Project__c](Complex_Project__c.md) | Complex Project | Used to track complex projects with multiple iterations and releases |
| [Compliance__c](Compliance__c.md) | Compliance | <!-- --> |
| [Contact](Contact.md) |  | <!-- --> |
| [ContentVersion](ContentVersion.md) |  | <!-- --> |
| [Contract](Contract.md) |  | <!-- --> |
| [Daylight_Savings__c](Daylight_Savings__c.md) | Daylight Savings | <!-- --> |
| [dsfs__DocuSign_Recipient_Status__c](dsfs__DocuSign_Recipient_Status__c.md) |  | <!-- --> |
| [dsfs__DocuSign_Status__c](dsfs__DocuSign_Status__c.md) |  | <!-- --> |
| [EmailMessage](EmailMessage.md) |  | <!-- --> |
| [Employee_Technology_Access__c](Employee_Technology_Access__c.md) | Employee Technology Access | Object used to track Ubiquity Employee Technology Access internally |
| [Enrollment_Meeting__c](Enrollment_Meeting__c.md) | Enrollment Meeting | Used for enrollment meetings conducted on 401(k) plans. |
| [EntityMilestone](EntityMilestone.md) |  | <!-- --> |
| [Escalation__c](Escalation__c.md) | Escalation | <!-- --> |
| [Event](Event.md) |  | <!-- --> |
| [External_Response__c](External_Response__c.md) | External Response | <!-- --> |
| [Fee_Waiver__c](Fee_Waiver__c.md) | Fee Waiver | <!-- --> |
| [Forecast__c](Forecast__c.md) | Forecast | Used for forecasting partner and channel sales. |
| [Forecast_Channel__c](Forecast_Channel__c.md) | Forecast Channel | Object to track Ubiquity's forecast channels and their makeup. |
| [Forecast_Plan__c](Forecast_Plan__c.md) | Forecast Plan | Object to assist in build out of forecast structure. |
| [Fund_Lineup_Change__c](Fund_Lineup_Change__c.md) | Fund Lineup Change | Used for documentation and tracking Fund Lineup changes. |
| [Fund_List__c](Fund_List__c.md) | Fund List | Used for custom and or semi-custom fund lists |
| [Headcount_Request__c](Headcount_Request__c.md) | Headcount Request | <!-- --> |
| [HM_Child__mdt](HM_Child__mdt.md) | HM_Child | <!-- --> |
| [HM_Setting__mdt](HM_Setting__mdt.md) | HM_Setting | <!-- --> |
| [HM_Subtotal__mdt](HM_Subtotal__mdt.md) | HM_Subtotal | <!-- --> |
| [Implementation__c](Implementation__c.md) | Implementation | This object is used by the Implementation's Teams to set up and track new and conversion plans. |
| [Invoice__c](Invoice__c.md) | Invoice | <!-- --> |
| [Invoice_Line_Items__c](Invoice_Line_Items__c.md) | Invoice Line Item | Line items linked to products/subscriptions that will be invoiced. |
| [Key_Result__c](Key_Result__c.md) | Key Result | Key Results built out under objectives |
| [Knowledge__kav](Knowledge__kav.md) | Knowledge | <!-- --> |
| [Lead](Lead.md) |  | <!-- --> |
| [LinkedArticle](LinkedArticle.md) |  | <!-- --> |
| [LiveAgentSession](LiveAgentSession.md) |  | <!-- --> |
| [LiveChatTranscript](LiveChatTranscript.md) |  | <!-- --> |
| [Log__c](Log__c.md) | Log | Used by Nebula Logger to unify all log entries generated in a single transaction |
| [LogEntry__c](LogEntry__c.md) | Log Entry | Used by Nebula Logger to represent a single log message within a transaction - log entries can be generated via Apex, Flow, Process Builder, Lightning Web Components, and Aura Components. |
| [LogEntryDataMaskRule__mdt](LogEntryDataMaskRule__mdt.md) | Log Entry Data Mask Rule | Used to configure regex-based rules in Nebula Logger to mask sensitive data in log entry fields, such as LogEntryEvent__e.Message__c and LogEntry__c.Message__c |
| [LogEntryEvent__e](LogEntryEvent__e.md) | Log Entry Event | Platform Event object used by Nebula Logger for publishing debug and exception log entries |
| [LogEntryTag__c](LogEntryTag__c.md) | Log Entry Tag | Used by Nebula Logger as a junction object to represent a unique relationship between a LogEntry__c record and a LoggerTag__c record |
| [LogEntryTagRule__mdt](LogEntryTagRule__mdt.md) | Log Entry Tag Rule | Used to configure rules in Nebula Logger to assign additional tags to LogEntry__c records based on field values |
| [LoggerFieldMapping__mdt](LoggerFieldMapping__mdt.md) | Logger Field Mapping | Used to configure custom field mappings in Nebula Logger to map data between LogEntryEvent__e and the custom objects Log__c, LogEntry__c, and LoggerScenario__c |
| [LoggerParameter__mdt](LoggerParameter__mdt.md) | Logger Parameter | Used to configure key-value pair parameters in Nebula Logger to control systemwide features |
| [LoggerPlugin__mdt](LoggerPlugin__mdt.md) | Logger Plugin | Used to configure additional Apex classes and Flows that should be executed by Nebula Logger. Plugins can be built to be either a trigger-based plugin (automatically executed for all trigger operations on the included objects LogEntryEvent__e, LoggerScenario__c, Log__c, LogEntry__c, LogEntryTag__c, and LoggerTag__c), or either a batchable-based plugin (automatically executed the batch job LogBatchPurger), or both triggerable & batchable |
| [LoggerScenario__c](LoggerScenario__c.md) | Logger Scenario | Used by Nebula Logger to store unique scenarios (text/String) that can be used to identify Log__c and LogEntry__c records via the lookup fields Log__c.TransactionScenario__c and LogEntry__c.EntryScenario__c |
| [LoggerScenarioRule__mdt](LoggerScenarioRule__mdt.md) | Logger Scenario Rule | Used to configure rules in Nebula Logger to provide scenario-specific customizations |
| [LoggerSettings__c](LoggerSettings__c.md) | Logger Settings | Used to configure hierarchial settings in Nebula Logger to provide user-specific & profile-specific customizations |
| [LoggerSObjectHandler__mdt](LoggerSObjectHandler__mdt.md) | Logger SObject Handler | Used to configure Apex trigger handler classes in Nebula Logger that run on the included objects LogEntryEvent__e, LoggerScenario__c, Log__c, LogEntry__c, LogEntryTag__c, and LoggerTag__c |
| [LoggerTag__c](LoggerTag__c.md) | Logger Tag | Used by Nebula Logger for storing unique tags (text/String) that can be associated with LogEntry__c records via the junction object LogEntryTag__c |
| [LogStatus__mdt](LogStatus__mdt.md) | Log Status | Used to configure in Nebula Logger which picklist values in Log__c.Status__c are considered open/closed and resolved/unresolved |
| [MessagingSession](MessagingSession.md) |  | <!-- --> |
| [Monthly_Metrics__c](Monthly_Metrics__c.md) | Monthly Metrics | <!-- --> |
| [Objective__c](Objective__c.md) | Objective | Object used to house corporate team and individual objectives. |
| [Operations_Metrics__c](Operations_Metrics__c.md) | Operations Metrics | Used to track weekly Operations metrics that exist outside of Salesforce. |
| [Opportunity_Promotion__c](Opportunity_Promotion__c.md) | Opportunity Promotion | <!-- --> |
| [Opportunity](Opportunity.md) |  | <!-- --> |
| [OpportunityLineItem](OpportunityLineItem.md) |  | <!-- --> |
| [OpportunitySplit](OpportunitySplit.md) |  | <!-- --> |
| [Paradigm_Endpoint__mdt](Paradigm_Endpoint__mdt.md) | Paradigm Endpoint | <!-- --> |
| [Partner_Account_Default__mdt](Partner_Account_Default__mdt.md) | Partner Account Default | Map of account names that, when matched to a newly converted biz dev lead, will rename that new contact's account and attach the appropriate master account.  New account names are formatted as "Account - Contact Name" |
| [Partner_Add_On_Association__c](Partner_Add_On_Association__c.md) | Partner Add-On Association | Junction Object used to associate Partner Accounts with Add-On Products |
| [Partner_Advisors__mdt](Partner_Advisors__mdt.md) | Partner Advisors | This table will be used to pull relevant advisors to send with Purchase API |
| [Partner_Contact_Add_On_Association__c](Partner_Contact_Add_On_Association__c.md) | Partner Contact Add-On Association | Partner Contact Association for Add-On Objects |
| [Partner_Evaluation__c](Partner_Evaluation__c.md) | Partner Evaluation | Used to track and evaluate partnerships at various stages. |
| [Partner_Partner_Association__c](Partner_Partner_Association__c.md) | Account Partner Association | Partners associated with various partner and competitor accounts |
| [Partner_Resource_Request__c](Partner_Resource_Request__c.md) | Partner Resource Request | Used for requesting internal resources necessary to support successful partnerships. |
| [Payments__c](Payments__c.md) | Payment | Payment toward an invoice |
| [Payroll_Provider__mdt](Payroll_Provider__mdt.md) | Payroll Provider | <!-- --> |
| [Person__c](Person__c.md) | Person | <!-- --> |
| [Picklist_Filter__mdt](Picklist_Filter__mdt.md) | Picklist Filter | <!-- --> |
| [Plan__c](Plan__c.md) | Plan | Created once Implementation is completed. |
| [Plan_Amendment__c](Plan_Amendment__c.md) | Plan Amendment | <!-- --> |
| [Plan_Assets__c](Plan_Assets__c.md) | Plan Assets | Plan Assets |
| [Portfolio_Code__mdt](Portfolio_Code__mdt.md) | Portfolio Code | <!-- --> |
| [Pricebook2](Pricebook2.md) |  | <!-- --> |
| [PricebookEntry](PricebookEntry.md) |  | <!-- --> |
| [Product_Pricing__c](Product_Pricing__c.md) | Product Price | Used to compare competitor pricing with Ubiquity over years 1-5 |
| [Product_Subscription__c](Product_Subscription__c.md) | Product/Subscription | Ubiquity product and subscription information |
| [Product2](Product2.md) |  | <!-- --> |
| [ProductCode__mdt](ProductCode__mdt.md) | Product Code | <!-- --> |
| [Products_Services__c](Products_Services__c.md) | Products & Services | <!-- --> |
| [Project_Deliverables__c](Project_Deliverables__c.md) | Project Deliverable | <!-- --> |
| [Project_Item__c](Project_Item__c.md) | Project Item | <!-- --> |
| [Project_Item_Assignments__c](Project_Item_Assignments__c.md) | Project Item Assignment | <!-- --> |
| [Project_Task__c](Project_Task__c.md) | Project Task | Task used for multi-step Ubiquity projects and processes.   Pre-determined/scheduled by teams using Object "X" |
| [Project_Team__c](Project_Team__c.md) | Project Team | <!-- --> |
| [Promotions__c](Promotions__c.md) | Promotion | <!-- --> |
| [Proposal__c](Proposal__c.md) | Proposal | <!-- --> |
| [ProposalsBatch__c](ProposalsBatch__c.md) | ProposalsBatch | <!-- --> |
| [QA_Component_Refresh__e](QA_Component_Refresh__e.md) | QA Component Refresh | For qa question component(s?) - signals them to refresh |
| [QA_Design__c](QA_Design__c.md) | QA Design | <!-- --> |
| [QA_Design_Version__c](QA_Design_Version__c.md) | QA Design Version | <!-- --> |
| [QA_Question__c](QA_Question__c.md) | QA Question | <!-- --> |
| [QA_Question_Info__c](QA_Question_Info__c.md) | QA Question Info | <!-- --> |
| [Quality_Assurance_QA__c](Quality_Assurance_QA__c.md) | Quality Assurance (QA) | Used for teams to conduct quality assurance of various processes and individual performance. |
| [QuickText](QuickText.md) |  | <!-- --> |
| [Recommendation](Recommendation.md) |  | <!-- --> |
| [Required_Action__c](Required_Action__c.md) | Required Action | <!-- --> |
| [Reviews__c](Reviews__c.md) | Review | Track reviews left by Ubiquity clients from various sources. |
| [Saver_Rate__c](Saver_Rate__c.md) | Saver Rate | Tracks saver balance/contribution rates for plans with Ubiquity |
| [simplesurvey__Survey__c](simplesurvey__Survey__c.md) |  | <!-- --> |
| [Simply_URL__mdt](Simply_URL__mdt.md) | Simply URL | <!-- --> |
| [Simply_Version__c](Simply_Version__c.md) | Simply Version | To swtich between old and new SimplyAPI |
| [SimplyCalloutBatchControl__c](SimplyCalloutBatchControl__c.md) | SimplyCalloutBatchControl | Used to control if SimplyCalloutBatch is currently running. |
| [Solution](Solution.md) |  | <!-- --> |
| [Stop_Status__c](Stop_Status__c.md) | Stop Status | A case status in which the "clock should stop," i.e. time calculated in business hours should not be added to the "Time With Support" field. |
| [Task](Task.md) |  | <!-- --> |
| [Transition__c](Transition__c.md) | Transition | <!-- --> |
| [User](User.md) |  | <!-- --> |
| [Vendor_Review__c](Vendor_Review__c.md) | Vendor Review | Used to review current and potential vendors. |
| [Vesting_Id__mdt](Vesting_Id__mdt.md) | Vesting Id | Appendix D |
| [Website_Lead__c](Website_Lead__c.md) | Website Lead | <!-- --> |
| [Work_Breakdown_Structure__c](Work_Breakdown_Structure__c.md) | Work Breakdown Structure | <!-- --> |
| [X360Learning_configuration__c](X360Learning_configuration__c.md) | 360Learning configuration | Configuration for 360Learning application |
| [zoom_app__Zoom_Call_Log__c](zoom_app__Zoom_Call_Log__c.md) |  | <!-- --> |
| [Zoom_Event_Info__c](Zoom_Event_Info__c.md) | Zoom Event Info | Object for tracking information zoom user behavoirs |
| [Zoom_Phone_Calls_Info__c](Zoom_Phone_Calls_Info__c.md) | Zoom Calls | <!-- --> |
| [Zoom_Users_Info__c](Zoom_Users_Info__c.md) | Zoom Users | <!-- --> |
| [Zoom_Webhook_Secret_Token__mdt](Zoom_Webhook_Secret_Token__mdt.md) | Zoom Webhook Secret Token | Protected Zoom Webhook Secret Token |

_Documentation generated from branch monitoring_myubiquity with [sfdx-hardis](https://sfdx-hardis.cloudity.com) by [Cloudity](https://cloudity.com) command [`sf hardis:doc:project2markdown`](https://sfdx-hardis.cloudity.com/hardis/doc/project2markdown/)_
