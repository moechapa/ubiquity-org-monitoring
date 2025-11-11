# Escalation_Button_De_Escalate_Account history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Escalation_Button_De_Escalate_Account-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Screen Flow</b>"]):::startClass
    click START "#general-information" "3853185312"
    
    Notify_Escalator("📧 <em></em><br/>Notify Escalator"):::actionCalls
    click Notify_Escalator "#notify_escalator" "1825861904"
    
    Account_Id_Matches_Record_Id[\"🟰 <em></em><br/>Account Id Matches Record Id"/]:::assignments
    click Account_Id_Matches_Record_Id "#account_id_matches_record_id" "3487233706"
    
    Assign_Escalation_Variables[\"🟰 <em></em><br/>Assign Escalation Variables"/]:::assignments
    click Assign_Escalation_Variables "#assign_escalation_variables" "3785228899"
    
    Get_Account[\"🟰 <em></em><br/>Get Account"/]:::assignments
    click Get_Account "#get_account" "897357128"
    
    Get_Imp_Account[\"🟰 <em></em><br/>Get Imp Account"/]:::assignments
    click Get_Imp_Account "#get_imp_account" "399838005"
    
    Get_Opportunity_Account[\"🟰 <em></em><br/>Get Opportunity Account"/]:::assignments
    click Get_Opportunity_Account "#get_opportunity_account" "1120183351"
    
    Get_Plan_Account[\"🟰 <em></em><br/>Get Plan Account"/]:::assignments
    click Get_Plan_Account "#get_plan_account" "3063256117"
    
    Grab_Case_Account[\"🟰 <em></em><br/>Grab Case Account"/]:::assignments
    click Grab_Case_Account "#grab_case_account" "142102834"
    
    Grab_Contact_Account[\"🟰 <em></em><br/>Grab Contact Account"/]:::assignments
    click Grab_Contact_Account "#grab_contact_account" "3813343350"
    
    Record_Type{"🔀 <em></em><br/>Record Type"}:::decisions
    click Record_Type "#record_type" "2581176013"
    
    Create_Follow_Up_Case[("➕ <em></em><br/>Create Follow Up Case")]:::recordCreates
    click Create_Follow_Up_Case "#create_follow_up_case" "2492508868"
    
    Get_Case[("🔍 <em></em><br/>Get Case")]:::recordLookups
    click Get_Case "#get_case" "508851015"
    
    Get_Contact[("🔍 <em></em><br/>Get Contact")]:::recordLookups
    click Get_Contact "#get_contact" "3355496174"
    
    Get_Escalation[("🔍 <em></em><br/>Get Escalation")]:::recordLookups
    click Get_Escalation "#get_escalation" "1937169984"
    
    Get_Escalation_0[("🔍 <em></em><br/>Get Escalation")]:::recordLookups
    click Get_Escalation_0 "#get_escalation_0" "933508405"
    
    Get_Implementation[("🔍 <em></em><br/>Get Implementation")]:::recordLookups
    click Get_Implementation "#get_implementation" "525576222"
    
    Get_Opportunity[("🔍 <em></em><br/>Get Opportunity")]:::recordLookups
    click Get_Opportunity "#get_opportunity" "2826470470"
    
    Get_Plan[("🔍 <em></em><br/>Get Plan")]:::recordLookups
    click Get_Plan "#get_plan" "1895188741"
    
    DeEscalate_Account[("🛠️ <em></em><br/>De-Escalate Account")]:::recordUpdates
    click DeEscalate_Account "#deescalate_account" "4049454092"
    
    Update_Escalation[("🛠️ <em></em><br/>Update Escalation")]:::recordUpdates
    click Update_Escalation "#update_escalation" "4151881688"
    
    Escalation_Builder(["💻 <em></em><br/>Escalation Builder"]):::screens
    click Escalation_Builder "#escalation_builder" "1964712541"
    
    Notify_Escalator --> Create_Follow_Up_Case
    Account_Id_Matches_Record_Id --> Get_Escalation
    Assign_Escalation_Variables --> Update_Escalation
    Get_Account --> Get_Escalation
    Get_Imp_Account --> Get_Escalation
    Get_Opportunity_Account --> Get_Escalation
    Get_Plan_Account --> Get_Escalation
    Grab_Case_Account --> Get_Escalation
    Grab_Contact_Account --> Get_Escalation
    Record_Type --> |"Account"| Account_Id_Matches_Record_Id
    Record_Type --> |"Contact"| Get_Contact
    Record_Type --> |"Case"| Get_Case
    Record_Type --> |"Opportunity"| Get_Opportunity
    Record_Type --> |"Implementation"| Get_Implementation
    Record_Type --> |"Plan"| Get_Plan
    Record_Type --> |"Escalation"| Get_Escalation_0
    Record_Type --> |"Default Outcome"| END_Record_Type
    Create_Follow_Up_Case --> END_Create_Follow_Up_Case
    Get_Case --> Grab_Case_Account
    Get_Contact --> Grab_Contact_Account
    Get_Escalation --> Escalation_Builder
    Get_Escalation_0 --> Get_Account
    Get_Implementation --> Get_Imp_Account
    Get_Opportunity --> Get_Opportunity_Account
    Get_Plan --> Get_Plan_Account
    DeEscalate_Account --> Notify_Escalator
    Update_Escalation --> DeEscalate_Account
    Escalation_Builder --> Assign_Escalation_Variables
    START -->  Record_Type
    END_Record_Type(( END )):::endClass
    END_Create_Follow_Up_Case(( END )):::endClass
    
    
    classDef actionCalls fill:#D4E4FC,color:black,text-decoration:none,max-height:100px
    classDef assignments fill:#FBEED7,color:black,text-decoration:none,max-height:100px
    classDef collectionProcessors fill:#F0E3FA,color:black,text-decoration:none,max-height:100px
    classDef customErrors fill:#FFE9E9,color:black,text-decoration:none,max-height:100px
    classDef decisions fill:#FDEAF6,color:black,text-decoration:none,max-height:100px
    classDef loops fill:#FDEAF6,color:black,text-decoration:none,max-height:100px
    classDef recordCreates fill:#FFF8C9,color:black,text-decoration:none,max-height:100px
    classDef recordDeletes fill:#FFF8C9,color:black,text-decoration:none,max-height:100px
    classDef recordLookups fill:#EDEAFF,color:black,text-decoration:none,max-height:100px
    classDef recordUpdates fill:#FFF8C9,color:black,text-decoration:none,max-height:100px
    classDef screens fill:#DFF6FF,color:black,text-decoration:none,max-height:100px
    classDef subflows fill:#D4E4FC,color:black,text-decoration:none,max-height:100px
    classDef startClass fill:#D9F2E6,color:black,text-decoration:none,max-height:100px
    classDef endClass fill:#F9BABA,color:black,text-decoration:none,max-height:100px
    classDef transforms fill:#FDEAF6,color:black,text-decoration:none,max-height:100px
    
    
    ```
    
    <!-- Flow description -->
    
    ## General Information
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Process Type| Flow|
    |Label|Escalation | Button | De-Escalate Account|
    |Status|Obsolete|
    |Environments|Default|
    |Interview Label|Escalation | Button | De-Escalate Account {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Record_Type](#record_type)|
    |Next Node|[Record_Type](#record_type)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |accountId|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |newEscalation|SObject|⬜|✅|⬜|Escalation__c|<!-- -->|
    |recordId|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |now|DateTime|NOW()|<!-- -->|
    
    
    ## Text Templates
    
    |Name|Text|Description|
    |:-- |:-- |:--  |
    |caseDesc|Please follow up with the contact in Escalation {!Get_Escalation.Name}. Click on the link below to review the record and de-escalation notes. https://myubiquity.my.salesforce.com/{!Get_Escalation.Id}<br/><br/>Review all open cases associated with the contact and/or plan to determine if any new issues have arisen and expedite resolution.<br/><br/>Reach out to the referenced contact within 48 hours to ensure that service levels and expectations set at the time of de-escalation are being met.|<!-- -->|
    |caseSubject|Escalation Follow Up: {!Get_Escalation.Escalated_Account__r.Name}|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Notify_Escalator
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Notify Escalator|
    |Action Type|Email Alert|
    |Action Name|Escalation__c.Account_De_Escalated|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Escalation__c.Account_De_Escalated|
    | SObject Row Id (input)|newEscalation.Id|
    |Connector|[Create_Follow_Up_Case](#create_follow_up_case)|
    
    
    ### Account_Id_Matches_Record_Id
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Account Id Matches Record Id|
    |Connector|[Get_Escalation](#get_escalation)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |accountId| Assign|recordId|
    
    
    
    
    ### Assign_Escalation_Variables
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Escalation Variables|
    |Connector|[Update_Escalation](#update_escalation)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |newEscalation.De_Escalation_Notes__c| Assign|Deescalation_Notes|
    |newEscalation.De_Escalation_Date__c| Assign|now|
    |newEscalation.Status__c| Assign|De-Escalated|
    |newEscalation.Escalated_Account__c| Assign|accountId|
    |newEscalation.Id| Assign|Get_Escalation.Id|
    
    
    
    
    ### Get_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Get Account|
    |Connector|[Get_Escalation](#get_escalation)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |accountId| Assign|Get_Escalation_0.Escalated_Account__c|
    
    
    
    
    ### Get_Imp_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Get Imp Account|
    |Connector|[Get_Escalation](#get_escalation)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |accountId| Assign|Get_Implementation.Account__c|
    
    
    
    
    ### Get_Opportunity_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Get Opportunity Account|
    |Connector|[Get_Escalation](#get_escalation)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |accountId| Assign|Get_Opportunity.AccountId|
    
    
    
    
    ### Get_Plan_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Get Plan Account|
    |Connector|[Get_Escalation](#get_escalation)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |accountId| Assign|Get_Plan.Account__c|
    
    
    
    
    ### Grab_Case_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Grab Case Account|
    |Connector|[Get_Escalation](#get_escalation)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |accountId| Assign|Get_Case.AccountId|
    
    
    
    
    ### Grab_Contact_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Grab Contact Account|
    |Connector|[Get_Escalation](#get_escalation)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |accountId| Assign|Get_Contact.AccountId|
    
    
    
    
    ### Record_Type
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Record Type|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Account (Account)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Account_Id_Matches_Record_Id](#account_id_matches_record_id)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|recordId| Starts With|1|
    
    
    
    
    #### Rule Contact (Contact)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Contact](#get_contact)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|recordId| Starts With|3|
    
    
    
    
    #### Rule Case (Case)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Case](#get_case)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|recordId| Starts With|500|
    
    
    
    
    #### Rule Opportunity (Opportunity)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Opportunity](#get_opportunity)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|recordId| Starts With|6|
    
    
    
    
    #### Rule Implementation (Implementation)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Implementation](#get_implementation)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|recordId| Starts With|a2R|
    
    
    
    
    #### Rule Plan (Plan)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Plan](#get_plan)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|recordId| Starts With|a2o|
    
    
    
    
    #### Rule Escalation (Escalation)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Escalation_0](#get_escalation_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|recordId| Starts With|a4Q|
    
    
    
    
    ### Create_Follow_Up_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Create Follow Up Case|
    |Store Output Automatically|✅|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|Get_Escalation.Escalated_Account__c|
    |Description|caseDesc|
    |OwnerId|Get_Escalation.Manager__c|
    |Subject|caseSubject|
    
    
    
    
    ### Get_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Case|
    |Label|Get Case|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Grab_Case_Account](#grab_case_account)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Get_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Get Contact|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Grab_Contact_Account](#grab_contact_account)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Get_Escalation
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Escalation__c|
    |Label|Get Escalation|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Escalation_Builder](#escalation_builder)|
    
    
    #### Filters (logic: **(1 OR 2) AND 3**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Escalated_Account__c| Equal To|accountId|
    |2|Id| Equal To|recordId|
    |3|Status__c| Equal To|Escalated|
    
    
    
    
    ### Get_Escalation_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Escalation__c|
    |Label|Get Escalation|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Get_Account](#get_account)|
    
    
    #### Filters (logic: **(1 OR 2) AND 3**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Escalated_Account__c| Equal To|accountId|
    |2|Id| Equal To|recordId|
    |3|Status__c| Equal To|Escalated|
    
    
    
    
    ### Get_Implementation
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Implementation__c|
    |Label|Get Implementation|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Get_Imp_Account](#get_imp_account)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Get_Opportunity
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Opportunity|
    |Label|Get Opportunity|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Get_Opportunity_Account](#get_opportunity_account)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Get_Plan
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Plan__c|
    |Label|Get Plan|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Get_Plan_Account](#get_plan_account)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### DeEscalate_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Account|
    |Label|De-Escalate Account|
    |Connector|[Notify_Escalator](#notify_escalator)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|newEscalation.Escalated_Account__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Escalated__c|⬜|
    
    
    
    
    ### Update_Escalation
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Escalation|
    |Input Reference|newEscalation|
    |Connector|[DeEscalate_Account](#deescalate_account)|
    
    
    ### Escalation_Builder
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|Escalation Builder|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|✅|
    |Show Footer|✅|
    |Show Header|✅|
    |Connector|[Assign_Escalation_Variables](#assign_escalation_variables)|
    
    
    #### Deescalation_Notes
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Default Value|{!Get_Escalation.De_Escalation_Notes__c}|
    |Field Text|De-Escalation Notes|
    |Field Type| Large Text Area|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

