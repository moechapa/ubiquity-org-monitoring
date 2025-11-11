# Escalation_Button_Escalate_Account history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Escalation_Button_Escalate_Account-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Screen Flow</b>"]):::startClass
    click START "#general-information" "3941464539"
    
    Email_Manager("📧 <em></em><br/>Email Manager"):::actionCalls
    click Email_Manager "#email_manager" "1419523983"
    
    Email_Owner("📧 <em></em><br/>Email Owner"):::actionCalls
    click Email_Owner "#email_owner" "3780840644"
    
    Suspected_Fraud_Alert("📧 <em></em><br/>Suspected Fraud Alert"):::actionCalls
    click Suspected_Fraud_Alert "#suspected_fraud_alert" "2097972949"
    
    Tag_owner_in_escalation_feed("⚡ <em></em><br/>Tag owner in escalation feed"):::actionCalls
    click Tag_owner_in_escalation_feed "#tag_owner_in_escalation_feed" "3947955538"
    
    Add_file_to_collection[\"🟰 <em></em><br/>Add file to collection"/]:::assignments
    click Add_file_to_collection "#add_file_to_collection" "1675495590"
    
    Assign_Default_Manager[\"🟰 <em></em><br/>Assign Default Manager"/]:::assignments
    click Assign_Default_Manager "#assign_default_manager" "2840689203"
    
    Assign_Default_Owner[\"🟰 <em></em><br/>Assign Default Owner"/]:::assignments
    click Assign_Default_Owner "#assign_default_owner" "3621145429"
    
    Assign_Escalation_Variables[\"🟰 <em></em><br/>Assign Escalation Variables"/]:::assignments
    click Assign_Escalation_Variables "#assign_escalation_variables" "167486506"
    
    Assign_Owner[\"🟰 <em></em><br/>Assign Owner"/]:::assignments
    click Assign_Owner "#assign_owner" "3862260021"
    
    Define_new_file_record[\"🟰 <em></em><br/>Define new file record"/]:::assignments
    click Define_new_file_record "#define_new_file_record" "347817893"
    
    initEscalation[\"🟰 <em></em><br/>initEscalation"/]:::assignments
    click initEscalation "#initescalation" "1737110647"
    
    Record_File_Count[\"🟰 <em></em><br/>Record File Count"/]:::assignments
    click Record_File_Count "#record_file_count" "1547272304"
    
    Set_selected_case_on_escalation[\"🟰 <em></em><br/>Set selected case on escalation"/]:::assignments
    click Set_selected_case_on_escalation "#set_selected_case_on_escalation" "3452819015"
    
    attachments_needing_creation_check{"🔀 <em></em><br/>attachments needing creation check"}:::decisions
    click attachments_needing_creation_check "#attachments_needing_creation_check" "318064981"
    
    Cases_Found_Check{"🔀 <em></em><br/>Cases Found Check"}:::decisions
    click Cases_Found_Check "#cases_found_check" "1520838671"
    
    Do_we_already_have_a_case{"🔀 <em></em><br/>Do we already have a case"}:::decisions
    click Do_we_already_have_a_case "#do_we_already_have_a_case" "2010435415"
    
    Esc_Type{"🔀 <em></em><br/>Esc Type"}:::decisions
    click Esc_Type "#esc_type" "2277816163"
    
    Fraud_Escalation{"🔀 <em></em><br/>Fraud Escalation?"}:::decisions
    click Fraud_Escalation "#fraud_escalation" "1844120600"
    
    Object_Type{"🔀 <em></em><br/>Object Type"}:::decisions
    click Object_Type "#object_type" "1400225667"
    
    Team_Check{"🔀 <em></em><br/>Team Check"}:::decisions
    click Team_Check "#team_check" "2592021987"
    
    Define_Files_Loop{{"🔁 <em></em><br/>Define Files Loop"}}:::loops
    click Define_Files_Loop "#define_files_loop" "1210238669"
    
    Commit_content_link_records[("➕ <em></em><br/>Commit content link records")]:::recordCreates
    click Commit_content_link_records "#commit_content_link_records" "3558197206"
    
    Create_Escalation[("➕ <em></em><br/>Create Escalation")]:::recordCreates
    click Create_Escalation "#create_escalation" "732611515"
    
    Get_Contact_Info[("🔍 <em></em><br/>Get Contact Info")]:::recordLookups
    click Get_Contact_Info "#get_contact_info" "2566569233"
    
    Get_Imp_Origin[("🔍 <em></em><br/>Get Imp Origin")]:::recordLookups
    click Get_Imp_Origin "#get_imp_origin" "4208677806"
    
    Get_Opp_Origin[("🔍 <em></em><br/>Get Opp Origin")]:::recordLookups
    click Get_Opp_Origin "#get_opp_origin" "530563363"
    
    Get_Plan[("🔍 <em></em><br/>Get Plan")]:::recordLookups
    click Get_Plan "#get_plan" "79695021"
    
    Get_Plan_Origin[("🔍 <em></em><br/>Get Plan Origin")]:::recordLookups
    click Get_Plan_Origin "#get_plan_origin" "2138348601"
    
    Get_Possible_Cases[("🔍 <em></em><br/>Get Possible Cases")]:::recordLookups
    click Get_Possible_Cases "#get_possible_cases" "3856438755"
    
    Grab_Case_Origin[("🔍 <em></em><br/>Grab Case Origin")]:::recordLookups
    click Grab_Case_Origin "#grab_case_origin" "3649820268"
    
    Escalate_Account[("🛠️ <em></em><br/>Escalate Account")]:::recordUpdates
    click Escalate_Account "#escalate_account" "1300912112"
    
    casePickerScreen(["💻 <em></em><br/>casePickerScreen"]):::screens
    click casePickerScreen "#casepickerscreen" "235388492"
    
    Escalation_Builder(["💻 <em></em><br/>Escalation Builder"]):::screens
    click Escalation_Builder "#escalation_builder" "3596099993"
    
    Email_Manager --> Email_Owner
    Email_Owner --> Fraud_Escalation
    Suspected_Fraud_Alert --> END_Suspected_Fraud_Alert
    Tag_owner_in_escalation_feed --> attachments_needing_creation_check
    Add_file_to_collection --> Define_Files_Loop
    Assign_Default_Manager --> Team_Check
    Assign_Default_Owner --> Create_Escalation
    Assign_Escalation_Variables --> Record_File_Count
    Assign_Owner --> Create_Escalation
    Define_new_file_record --> Add_file_to_collection
    initEscalation --> Object_Type
    Record_File_Count --> Esc_Type
    Set_selected_case_on_escalation --> Assign_Default_Manager
    attachments_needing_creation_check --> |"Escalation SPotted"| Define_Files_Loop
    attachments_needing_creation_check --> |"Default Outcome"| Escalate_Account
    Cases_Found_Check --> |"Cases Found"| casePickerScreen
    Cases_Found_Check --> |"Default Outcome"| Assign_Default_Manager
    Do_we_already_have_a_case --> |"No case present"| Get_Possible_Cases
    Do_we_already_have_a_case --> |"Default Outcome"| Assign_Default_Manager
    Esc_Type --> |"Saver/Sponsor"| Get_Plan
    Esc_Type --> |"Other"| Do_we_already_have_a_case
    Fraud_Escalation --> |"Fraud"| Suspected_Fraud_Alert
    Fraud_Escalation --> |"Default Outcome"| END_Fraud_Escalation
    Object_Type --> |"Opportunity"| Get_Opp_Origin
    Object_Type --> |"Implementation"| Get_Imp_Origin
    Object_Type --> |"Plan"| Get_Plan_Origin
    Object_Type --> |"Case"| Grab_Case_Origin
    Object_Type --> |"Contact"| Get_Contact_Info
    Object_Type --> |"Default Outcome"| Escalation_Builder
    Team_Check --> |"User in CE"| Assign_Owner
    Team_Check --> |"Default Outcome"| Assign_Default_Owner
    Define_Files_Loop --> |"For Each"|Define_new_file_record
    Define_Files_Loop ---> |"After Last"|Commit_content_link_records
    Commit_content_link_records --> Escalate_Account
    Create_Escalation --> Tag_owner_in_escalation_feed
    Get_Contact_Info --> Escalation_Builder
    Get_Imp_Origin --> Escalation_Builder
    Get_Opp_Origin --> Escalation_Builder
    Get_Plan --> Do_we_already_have_a_case
    Get_Plan_Origin --> Escalation_Builder
    Get_Possible_Cases --> Cases_Found_Check
    Grab_Case_Origin --> Escalation_Builder
    Escalate_Account --> Email_Manager
    casePickerScreen --> Set_selected_case_on_escalation
    Escalation_Builder --> Assign_Escalation_Variables
    START -->  initEscalation
    END_Suspected_Fraud_Alert(( END )):::endClass
    END_Fraud_Escalation(( END )):::endClass
    
    
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
    |Label|Escalation | Button | Escalate Account|
    |Status|Active|
    |Description|Updated routing.<br/><br/>- If created by someone outside of CE, owner and manager are Meli<br/>- If created by anyone in CE besides Meli, owner is their team lead and manager is Meli|
    |Environments|Default|
    |Interview Label|Escalation | Button | Escalate Account {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[initEscalation](#initescalation)|
    |Next Node|[initEscalation](#initescalation)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |fileRecord|SObject|⬜|⬜|⬜|ContentDocumentLink|<!-- -->|
    |fileRecordCollection|SObject|✅|⬜|⬜|ContentDocumentLink|<!-- -->|
    |filesUploadedCount|Number|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |fileUploadIds|String|✅|⬜|⬜|<!-- -->|<!-- -->|
    |fileUploadLabels|String|✅|⬜|⬜|<!-- -->|<!-- -->|
    |manuallyChosenCase|SObject|⬜|⬜|⬜|Case|<!-- -->|
    |newEscalation|SObject|⬜|⬜|⬜|Escalation__c|<!-- -->|
    |recordId|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |triggeringContact|SObject|⬜|⬜|⬜|Contact|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |triggeringContactFormattedRole|String|IF(CONTAINS(TEXT({!triggeringContact.Role__c}),"Advisor"),"Advisor",<br/>IF(CONTAINS(TEXT({!triggeringContact.Role__c}),"TPA"),"TPA",<br/>IF(CONTAINS(TEXT({!triggeringContact.Role__c}),"Sponsor"),"Sponsor",<br/>IF(CONTAINS(TEXT({!triggeringContact.Role__c}),"Saver"),"Saver",""))))|<!-- -->|
    
    
    ## Constants
    
    |Name|Data Type|Value|Description|
    |:-- |:--:|:--:|:--  |
    |directorId|String|00537000000jWLF|Id of director of CE.  At time of writing, it's Meli Marquez (4/24/2025)|
    
    
    ## Flow Nodes Details
    
    ### Email_Manager
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Email Manager|
    |Action Type|Email Alert|
    |Action Name|Escalation__c.Account_Escalated|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Escalation__c.Account_Escalated|
    |Offset|0|
    | SObject Row Id (input)|newEscalation.Id|
    |Connector|[Email_Owner](#email_owner)|
    
    
    ### Email_Owner
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Email Owner|
    |Action Type|Email Alert|
    |Action Name|Escalation__c.Escalation_Assigned|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Escalation__c.Escalation_Assigned|
    |Offset|0|
    | SObject Row Id (input)|newEscalation.Id|
    |Connector|[Fraud_Escalation](#fraud_escalation)|
    
    
    ### Suspected_Fraud_Alert
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Suspected Fraud Alert|
    |Action Type|Email Alert|
    |Action Name|Escalation__c.Suspected_Fraud_Alert|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Escalation__c.Suspected_Fraud_Alert|
    |Offset|0|
    | SObject Row Id (input)|newEscalation.Id|
    
    
    ### Tag_owner_in_escalation_feed
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Tag owner in escalation feed|
    |Action Type|Chatter Post|
    |Action Name|chatterPost|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|chatterPost|
    |Offset|0|
    |Store Output Automatically|✅|
    |Text (input)|escOwnerChatterMessage|
    |Subject Name Or Id (input)|newEscalation.Id|
    |Connector|[attachments_needing_creation_check](#attachments_needing_creation_check)|
    
    
    ### Add_file_to_collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add file to collection|
    |Connector|[Define_Files_Loop](#define_files_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |fileRecordCollection| Add|fileRecord|
    
    
    
    
    ### Assign_Default_Manager
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Default Manager|
    |Connector|[Team_Check](#team_check)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |newEscalation.Manager__c| Assign|directorId|
    
    
    
    
    ### Assign_Default_Owner
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Default Owner|
    |Connector|[Create_Escalation](#create_escalation)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |newEscalation.OwnerId| Assign|directorId|
    
    
    
    
    ### Assign_Escalation_Variables
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Escalation Variables|
    |Connector|[Record_File_Count](#record_file_count)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |newEscalation.Escalated_Account__c| Assign|Escalated_Account.recordId|
    |newEscalation.Escalation_Contact__c| Assign|Escalation_Contact.recordId|
    |newEscalation.Escalation_Type__c| Assign|Escalation_Type|
    |newEscalation.Escalation_Notes__c| Assign|Escalation_Notes|
    |newEscalation.Escalator__c| Assign|$User.Id|
    |newEscalation.Next_Steps__c| Assign|Next_Steps|
    |newEscalation.Status__c| Assign|Escalated|
    |newEscalation.Connected_Partner_Involvement__c| Assign|ConnectedPartnerInvolvement|
    |newEscalation.Escalation_Date__c| Assign|$Flow.CurrentDateTime|
    |newEscalation.Fraud_Suspected__c| Assign|Fraud_Suspected|
    |newEscalation.Date_of_Fraud_Incident__c| Assign|Date_of_Fraud_Incident|
    |newEscalation.Date_of_Fraud_Notification__c| Assign|Date_of_Fraud_Notification|
    |newEscalation.Monetary_Implication__c| Assign|Is_there_any_monetary_implication|
    |newEscalation.PII_Compromised__c| Assign|Do_you_have_any_reason_to_believe_PII_was_compromised|
    |newEscalation.Compromised_PII_Reason__c| Assign|Compromised_PII_Reason|
    
    
    
    
    ### Assign_Owner
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Owner|
    |Connector|[Create_Escalation](#create_escalation)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |newEscalation.OwnerId| Assign|$User.ManagerId|
    
    
    
    
    ### Define_new_file_record
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Define new file record|
    |Connector|[Add_file_to_collection](#add_file_to_collection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |fileRecord.LinkedEntityId| Assign|newEscalation.Id|
    |fileRecord.ContentDocumentId| Assign|[Define_Files_Loop](#define_files_loop)|
    
    
    
    
    ### initEscalation
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|[initEscalation](#initescalation)|
    |Connector|[Object_Type](#object_type)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |newEscalation.Case__c| Assign|<!-- -->|
    |newEscalation.Opportunity__c| Assign|<!-- -->|
    |newEscalation.Implementation__c| Assign|<!-- -->|
    |newEscalation.Escalated_Account__c| Assign|<!-- -->|
    |newEscalation.Escalation_Contact__c| Assign|<!-- -->|
    |triggeringContact.Id| Assign|<!-- -->|
    |triggeringContact.Role__c| Assign|<!-- -->|
    |triggeringContact.AccountId| Assign|<!-- -->|
    
    
    
    
    ### Record_File_Count
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Record File Count|
    |Connector|[Esc_Type](#esc_type)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |filesUploadedCount| Assign Count|fileUploadIds|
    
    
    
    
    ### Set_selected_case_on_escalation
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Set selected case on escalation|
    |Connector|[Assign_Default_Manager](#assign_default_manager)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |newEscalation.Case__c| Assign|manuallyChosenCase.Id|
    
    
    
    
    ### attachments_needing_creation_check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|attachments needing creation check|
    |Default Connector|[Escalate_Account](#escalate_account)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Escalation_SPotted (Escalation SPotted)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Define_Files_Loop](#define_files_loop)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|filesUploadedCount| Greater Than|numberValue: 0<br/>|
    
    
    
    
    ### Cases_Found_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Cases Found Check|
    |Default Connector|[Assign_Default_Manager](#assign_default_manager)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Cases_Found (Cases Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[casePickerScreen](#casepickerscreen)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|[Get_Possible_Cases](#get_possible_cases)| Is Null|⬜|
    
    
    
    
    ### Do_we_already_have_a_case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Do we already have a case|
    |Default Connector|[Assign_Default_Manager](#assign_default_manager)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule No_case_present (No case present)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Possible_Cases](#get_possible_cases)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|newEscalation.Case__c| Is Null|✅|
    
    
    
    
    ### Esc_Type
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Esc Type|
    |Default Connector|[Do_we_already_have_a_case](#do_we_already_have_a_case)|
    |Default Connector Label|Other|
    
    
    #### Rule Saver_Sponsor (Saver/Sponsor)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Plan](#get_plan)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Escalation_Type| Equal To|Saver|
    |2|Escalation_Type| Equal To|Sponsor|
    
    
    
    
    ### Fraud_Escalation
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Fraud Escalation?|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Fraud (Fraud)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Suspected_Fraud_Alert](#suspected_fraud_alert)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Fraud_Suspected| Equal To|✅|
    
    
    
    
    ### Object_Type
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Object Type|
    |Default Connector|[Escalation_Builder](#escalation_builder)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Opportunity (Opportunity)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Opp_Origin](#get_opp_origin)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|recordId| Starts With|6|
    
    
    
    
    #### Rule Implementation (Implementation)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Imp_Origin](#get_imp_origin)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|recordId| Equal To|a2R|
    
    
    
    
    #### Rule Plan (Plan)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Plan_Origin](#get_plan_origin)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|recordId| Starts With|a2o|
    
    
    
    
    #### Rule Case (Case)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Grab_Case_Origin](#grab_case_origin)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|recordId| Starts With|500|
    
    
    
    
    #### Rule Contact (Contact)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Contact_Info](#get_contact_info)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|recordId| Starts With|3|
    
    
    
    
    ### Team_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Team Check|
    |Description|If user's team is client support, escalation owner should be their user's manager.  Otherwise, default to Meli|
    |Default Connector|[Assign_Default_Owner](#assign_default_owner)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule User_in_CE (User in CE)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Owner](#assign_owner)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$User.Team__c| Equal To|Client Support|
    |2|$User.Id| Not Equal To|directorId|
    
    
    
    
    ### Define_Files_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Define Files Loop|
    |Collection Reference|fileUploadIds|
    |Iteration Order|Asc|
    |Next Value Connector|[Define_new_file_record](#define_new_file_record)|
    |No More Values Connector|[Commit_content_link_records](#commit_content_link_records)|
    
    
    ### Commit_content_link_records
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Label|Commit content link records|
    |Input Reference|fileRecordCollection|
    |Connector|[Escalate_Account](#escalate_account)|
    
    
    ### Create_Escalation
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Label|Create Escalation|
    |Input Reference|newEscalation|
    |Connector|[Tag_owner_in_escalation_feed](#tag_owner_in_escalation_feed)|
    
    
    ### Get_Contact_Info
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Get Contact Info|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|triggeringContact|
    |Queried Fields|- Id<br/>- AccountId<br/>- Account_Name__c<br/>- Role__c<br/>|
    |Connector|[Escalation_Builder](#escalation_builder)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Get_Imp_Origin
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Implementation__c|
    |Label|Get Imp Origin|
    |Assign Null Values If No Records Found|✅|
    |Output Assignments|- assignToReference: triggeringContact.AccountId<br/>&nbsp;&nbsp;field: Account__c<br/>- assignToReference: newEscalation.Implementation__c<br/>&nbsp;&nbsp;field: Id<br/>|
    |Connector|[Escalation_Builder](#escalation_builder)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Get_Opp_Origin
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Opportunity|
    |Label|Get Opp Origin|
    |Assign Null Values If No Records Found|✅|
    |Output Assignments|- assignToReference: triggeringContact.AccountId<br/>&nbsp;&nbsp;field: AccountId<br/>- assignToReference: newEscalation.Opportunity__c<br/>&nbsp;&nbsp;field: Id<br/>|
    |Connector|[Escalation_Builder](#escalation_builder)|
    
    
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
    |Assign Null Values If No Records Found|✅|
    |Output Assignments|assignToReference: newEscalation.Plan__c<br/>field: Id<br/>|
    |Sort Field|CreatedDate|
    |Sort Order|Desc|
    |Connector|[Do_we_already_have_a_case](#do_we_already_have_a_case)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Account__c| Equal To|Escalated_Account.recordId|
    
    
    
    
    ### Get_Plan_Origin
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Plan__c|
    |Label|Get Plan Origin|
    |Assign Null Values If No Records Found|✅|
    |Output Assignments|- assignToReference: triggeringContact.AccountId<br/>&nbsp;&nbsp;field: Account__c<br/>- assignToReference: newEscalation.Plan__c<br/>&nbsp;&nbsp;field: Id<br/>|
    |Connector|[Escalation_Builder](#escalation_builder)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Get_Possible_Cases
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Case|
    |Label|Get Possible Cases|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Queried Fields|- Id<br/>- Subject<br/>- CreatedDate<br/>- Status<br/>- CaseNumber<br/>- Plan__c<br/>- AccountId<br/>- ContactId<br/>- Description<br/>|
    |Sort Field|CreatedDate|
    |Sort Order|Desc|
    |Store Output Automatically|✅|
    |Connector|[Cases_Found_Check](#cases_found_check)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|ContactId| Equal To|newEscalation.Escalation_Contact__c|
    |2|IsClosed| Equal To|⬜|
    
    
    
    
    ### Grab_Case_Origin
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Case|
    |Label|Grab Case Origin|
    |Assign Null Values If No Records Found|✅|
    |Output Assignments|- assignToReference: triggeringContact.AccountId<br/>&nbsp;&nbsp;field: AccountId<br/>- assignToReference: triggeringContact.Id<br/>&nbsp;&nbsp;field: ContactId<br/>- assignToReference: newEscalation.Case__c<br/>&nbsp;&nbsp;field: Id<br/>- assignToReference: newEscalation.Implementation__c<br/>&nbsp;&nbsp;field: Implementation__c<br/>- assignToReference: newEscalation.Plan__c<br/>&nbsp;&nbsp;field: Plan__c<br/>|
    |Connector|[Escalation_Builder](#escalation_builder)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Escalate_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Account|
    |Label|Escalate Account|
    |Connector|[Email_Manager](#email_manager)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Escalated_Account.recordId|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Escalated__c|✅|
    
    
    
    
    ### casePickerScreen
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|[casePickerScreen](#casepickerscreen)|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|✅|
    |Show Footer|✅|
    |Show Header|✅|
    |Connector|[Set_selected_case_on_escalation](#set_selected_case_on_escalation)|
    
    
    #### caseTable
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type Mappings|typeName: T<br/>typeValue: Case<br/>|
    |Extension Name|flowruntime:datatable|
    |Field Type| Component Instance|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Output Parameters|assignToReference: manuallyChosenCase<br/>name: firstSelectedRow<br/>|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Label (input)|If this is related to an existing case, please select from the list below.|
    |Selection Mode (input)|SINGLE_SELECT|
    |Min Row Selection (input)|numberValue: 0<br/>|
    |Should Display Label (input)|✅|
    |Table Data (input)|[Get_Possible_Cases](#get_possible_cases)|
    |Is Show Search Bar (input)|✅|
    |Max Row Selection (input)|1|
    |Columns (input)|[{"apiName":"Subject","guid":"column-5b86","editable":false,"hasCustomHeaderLabel":false,"customHeaderLabel":"","wrapText":true,"order":0,"label":"Subject","type":"text"},{"apiName":"Description","guid":"column-176a","editable":false,"hasCustomHeaderLabel":false,"customHeaderLabel":"","wrapText":true,"order":1,"label":"Description","type":"text"},{"apiName":"Status","guid":"column-40d5","editable":false,"hasCustomHeaderLabel":false,"customHeaderLabel":"","wrapText":true,"order":2,"label":"Status","type":"text"},{"apiName":"CreatedDate","guid":"column-fdfe","editable":false,"hasCustomHeaderLabel":false,"customHeaderLabel":"","wrapText":true,"order":3,"label":"Created Date","type":"customDateTime"}]|
    
    
    
    
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
    
    
    #### Escalation_Type
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|EscalationTypePicklist|
    |Default Value|triggeringContactFormattedRole|
    |Field Text|Escalation Type|
    |Field Type| Dropdown Box|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Escalated_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Extension Name|flowruntime:lookup|
    |Field Type| Component Instance|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Store Output Automatically|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Object Api Name (input)|Escalation__c|
    |Field Api Name (input)|Escalated_Account__c|
    |Label (input)|Escalated Account|
    |Required (input)|✅|
    |Record Id (input)|triggeringContact.AccountId|
    
    
    
    
    #### Escalation_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Extension Name|flowruntime:lookup|
    |Field Type| Component Instance|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Store Output Automatically|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Object Api Name (input)|Escalation__c|
    |Field Api Name (input)|Escalation_Contact__c|
    |Label (input)|Escalation Contact|
    |Required (input)|✅|
    |Record Id (input)|triggeringContact.Id|
    
    
    
    
    #### ConnectedPartnerInvolvement
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|Boolean|
    |Field Text|Connected Partner Involvement|
    |Field Type| Input Field|
    |Help Text|<p><span style="font-size: 11.36px; font-family: Arial, Helvetica, sans-serif; color: rgb(0, 0, 0);">Is connected partner aware of, and/or involved in this escalation? (i.e. Principal)</span></p>|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Fraud_Suspected
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|Boolean|
    |Field Text|Fraud Suspected|
    |Field Type| Input Field|
    |Help Text|<p><span style="background-color: rgb(255, 255, 255); color: rgb(68, 68, 68);">If fraud is suspected, check this box.</span></p>|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Date_of_Fraud_Incident
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|Date|
    |Field Text|Date of Fraud Incident|
    |Field Type| Input Field|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Fraud_Suspected<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;booleanValue: true<br/>|
    
    
    
    
    #### Date_of_Fraud_Notification
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|Date|
    |Field Text|Date of Fraud Notification|
    |Field Type| Input Field|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Fraud_Suspected<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;booleanValue: true<br/>|
    
    
    
    
    #### Is_there_any_monetary_implication
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|yesNo|
    |Field Text|Is there any monetary implication?|
    |Field Type| Dropdown Box|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Fraud_Suspected<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;booleanValue: true<br/>|
    
    
    
    
    #### Do_you_have_any_reason_to_believe_PII_was_compromised
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|yesNo|
    |Field Text|Do you have any reason to believe PII was compromised?|
    |Field Type| Dropdown Box|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Fraud_Suspected<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;booleanValue: true<br/>|
    
    
    
    
    #### Compromised_PII_Reason
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|Compromised PII Reason|
    |Field Type| Large Text Area|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Do_you_have_any_reason_to_believe_PII_was_compromised<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;stringValue: 'Yes'<br/>|
    
    
    
    
    #### Escalation_Notes
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|Escalation Notes|
    |Field Type| Large Text Area|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Next_Steps
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|Next Steps|
    |Field Type| Large Text Area|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### relatedFiles
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Extension Name|c:Versatile_File_Upload|
    |Field Type| Component Instance|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Output Parameters|assignToReference: fileUploadIds<br/>name: cdIDs<br/>|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Label (input)|Related File(s)|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

