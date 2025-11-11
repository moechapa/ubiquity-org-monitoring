# Case_Before_Update_Master_Flow history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Case_Before_Update_Master_Flow-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record Before Save</b>"]):::startClass
    click START "#general-information" "1291499984"
    
    Assign_Chat_Session_Count[\"🟰 <em></em><br/>Assign Chat Session Count"/]:::assignments
    click Assign_Chat_Session_Count "#assign_chat_session_count" "2781149297"
    
    Assign_Child_Case_Count[\"🟰 <em></em><br/>Assign Child Case Count"/]:::assignments
    click Assign_Child_Case_Count "#assign_child_case_count" "3228473147"
    
    Assign_Email_Count[\"🟰 <em></em><br/>Assign Email Count"/]:::assignments
    click Assign_Email_Count "#assign_email_count" "1863091373"
    
    Assign_work_metric_total_to_case[\"🟰 <em></em><br/>Assign work metric total to case"/]:::assignments
    click Assign_work_metric_total_to_case "#assign_work_metric_total_to_case" "2266994279"
    
    Set_ROI_to_true[\"🟰 <em></em><br/>Set ROI to true"/]:::assignments
    click Set_ROI_to_true "#set_roi_to_true" "1011806025"
    
    Check_if_need_work_calc{"🔀 <em></em><br/>Check if need work calc"}:::decisions
    click Check_if_need_work_calc "#check_if_need_work_calc" "3560172881"
    
    Check_if_needs_ROI_stamp{"🔀 <em></em><br/>Check if needs ROI stamp"}:::decisions
    click Check_if_needs_ROI_stamp "#check_if_needs_roi_stamp" "1611717048"
    
    Check_if_work_went_up{"🔀 <em></em><br/>Check if work went up"}:::decisions
    click Check_if_work_went_up "#check_if_work_went_up" "2078599006"
    
    Enhancement_Case_Resolver{"🔀 <em></em><br/>Enhancement Case Resolver"}:::decisions
    click Enhancement_Case_Resolver "#enhancement_case_resolver" "4140446053"
    
    Fill_Account_Plan{"🔀 <em></em><br/>Fill Account & Plan"}:::decisions
    click Fill_Account_Plan "#fill_account_plan" "588081732"
    
    OG_Case_Close_Field_Update{"🔀 <em></em><br/>OG Case Close Field Update"}:::decisions
    click OG_Case_Close_Field_Update "#og_case_close_field_update" "3071840070"
    
    User_found_check{"🔀 <em></em><br/>User found check"}:::decisions
    click User_found_check "#user_found_check" "269492055"
    
    Find_Email_to_Case_User[("🔍 <em></em><br/>Find Email to Case User")]:::recordLookups
    click Find_Email_to_Case_User "#find_email_to_case_user" "353645763"
    
    Get_Case_Emails[("🔍 <em></em><br/>Get Case Emails")]:::recordLookups
    click Get_Case_Emails "#get_case_emails" "2662408732"
    
    Get_Case_Messaging_Sessions[("🔍 <em></em><br/>Get Case Messaging Sessions")]:::recordLookups
    click Get_Case_Messaging_Sessions "#get_case_messaging_sessions" "2722438667"
    
    Get_Child_Cases[("🔍 <em></em><br/>Get Child Cases")]:::recordLookups
    click Get_Child_Cases "#get_child_cases" "1423402219"
    
    Auto_Fill_Plan_and_Account[("🛠️ <em></em><br/>Auto-Fill Plan and Account")]:::recordUpdates
    click Auto_Fill_Plan_and_Account "#auto_fill_plan_and_account" "560075955"
    
    Resolve_Case[("🛠️ <em></em><br/>Resolve Case")]:::recordUpdates
    click Resolve_Case "#resolve_case" "3363668863"
    
    Update_Account_and_Plan_on_Case[("🛠️ <em></em><br/>Update Account and Plan on Case")]:::recordUpdates
    click Update_Account_and_Plan_on_Case "#update_account_and_plan_on_case" "815239586"
    
    Update_Original_Close_Date[("🛠️ <em></em><br/>Update Original Close Date")]:::recordUpdates
    click Update_Original_Close_Date "#update_original_close_date" "3837835547"
    
    Assign_Chat_Session_Count --> Check_if_work_went_up
    Assign_Child_Case_Count --> Get_Case_Messaging_Sessions
    Assign_Email_Count --> Get_Child_Cases
    Assign_work_metric_total_to_case --> Enhancement_Case_Resolver
    Set_ROI_to_true --> Check_if_need_work_calc
    Check_if_need_work_calc --> |"Needs work calc"| Find_Email_to_Case_User
    Check_if_need_work_calc --> |"Created"| Enhancement_Case_Resolver
    Check_if_needs_ROI_stamp --> |"Needs ROI Stamp"| Set_ROI_to_true
    Check_if_needs_ROI_stamp --> |"Default Outcome"| Check_if_need_work_calc
    Check_if_work_went_up --> |"New Work Recorded"| Assign_work_metric_total_to_case
    Check_if_work_went_up --> |"Default Outcome"| Enhancement_Case_Resolver
    Enhancement_Case_Resolver --> |"Needs resolving"| Resolve_Case
    Enhancement_Case_Resolver --> |"Default Outcome"| OG_Case_Close_Field_Update
    Fill_Account_Plan --> |"Implementation Entered"| Update_Account_and_Plan_on_Case
    Fill_Account_Plan --> |"IT Case"| Auto_Fill_Plan_and_Account
    Fill_Account_Plan --> |"Pass"| END_Fill_Account_Plan
    OG_Case_Close_Field_Update --> |"Update OG Case Close Field"| Update_Original_Close_Date
    OG_Case_Close_Field_Update --> |"Default Outcome"| Fill_Account_Plan
    User_found_check --> |"Found Email User"| Get_Case_Emails
    User_found_check --> |"Default Outcome"| Get_Child_Cases
    Find_Email_to_Case_User --> User_found_check
    Get_Case_Emails --> Assign_Email_Count
    Get_Case_Messaging_Sessions --> Assign_Chat_Session_Count
    Get_Child_Cases --> Assign_Child_Case_Count
    Auto_Fill_Plan_and_Account --> END_Auto_Fill_Plan_and_Account
    Resolve_Case --> OG_Case_Close_Field_Update
    Update_Account_and_Plan_on_Case --> END_Update_Account_and_Plan_on_Case
    Update_Original_Close_Date --> Fill_Account_Plan
    START -->  Check_if_needs_ROI_stamp
    END_Fill_Account_Plan(( END )):::endClass
    END_Auto_Fill_Plan_and_Account(( END )):::endClass
    END_Update_Account_and_Plan_on_Case(( END )):::endClass
    
    
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
    |Object|Case|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record Before Save|
    |Record Trigger Type| Create And Update|
    |Label|Case | Before Update | Master Flow|
    |Status|Active|
    |Description|Updated to remove case team new check and assignment.  Split into other flow to change run order|
    |Environments|Default|
    |Interview Label|Case | Before Update | Master Flow {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Check_if_needs_ROI_stamp](#check_if_needs_roi_stamp)|
    |Next Node|[Check_if_needs_ROI_stamp](#check_if_needs_roi_stamp)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |subtotalVar|Number|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |totalVar|Number|⬜|⬜|⬜|<!-- -->|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Assign_Chat_Session_Count
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Chat Session Count|
    |Connector|[Check_if_work_went_up](#check_if_work_went_up)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |subtotalVar| Assign Count|[Get_Case_Messaging_Sessions](#get_case_messaging_sessions)|
    |totalVar| Add|subtotalVar|
    
    
    
    
    ### Assign_Child_Case_Count
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Child Case Count|
    |Connector|[Get_Case_Messaging_Sessions](#get_case_messaging_sessions)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |subtotalVar| Assign Count|[Get_Child_Cases](#get_child_cases)|
    |totalVar| Add|subtotalVar|
    
    
    
    
    ### Assign_Email_Count
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Email Count|
    |Connector|[Get_Child_Cases](#get_child_cases)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |subtotalVar| Assign Count|[Get_Case_Emails](#get_case_emails)|
    |totalVar| Add|subtotalVar|
    
    
    
    
    ### Assign_work_metric_total_to_case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign work metric total to case|
    |Connector|[Enhancement_Case_Resolver](#enhancement_case_resolver)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Work_Metric__c| Assign|totalVar|
    
    
    
    
    ### Set_ROI_to_true
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Set ROI to true|
    |Connector|[Check_if_need_work_calc](#check_if_need_work_calc)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.ROI_Touched_Case__c| Assign|✅|
    
    
    
    
    ### Check_if_need_work_calc
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check if need work calc|
    |Description|Determines if work units need to be calculated|
    |Default Connector|[Enhancement_Case_Resolver](#enhancement_case_resolver)|
    |Default Connector Label|Created|
    
    
    #### Rule Needs_work_calc (Needs work calc)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Find_Email_to_Case_User](#find_email_to_case_user)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Id| Is Blank|⬜|
    
    
    
    
    ### Check_if_needs_ROI_stamp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check if needs ROI stamp|
    |Description|If case is owned by Call Center user, needs roi field stamp to true|
    |Default Connector|[Check_if_need_work_calc](#check_if_need_work_calc)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Needs_ROI_Stamp (Needs ROI Stamp)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[Set_ROI_to_true](#set_roi_to_true)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Owner:User.UserRole.DeveloperName| Contains|Call_Center|
    
    
    
    
    ### Check_if_work_went_up
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check if work went up|
    |Description|Only stamp new work count if the total went up|
    |Default Connector|[Enhancement_Case_Resolver](#enhancement_case_resolver)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule New_Work_Recorded (New Work Recorded)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_work_metric_total_to_case](#assign_work_metric_total_to_case)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Work_Metric__c| Less Than|totalVar|
    
    
    
    
    ### Enhancement_Case_Resolver
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Enhancement Case Resolver|
    |Default Connector|[OG_Case_Close_Field_Update](#og_case_close_field_update)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Needs_resolving (Needs resolving)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[Resolve_Case](#resolve_case)|
    |Condition Logic|(1 OR 3) AND 2 AND 4|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Enhancement_Status__c| Equal To|Done|
    |2|$Record.Enhancement_System__c| Equal To|Paradigm|
    |3|$Record.Enhancement_Status__c| Equal To|Won't Do|
    |4|$Record.Status| Not Equal To|Resolved|
    
    
    
    
    ### Fill_Account_Plan
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Fill Account & Plan|
    |Default Connector Label|Pass|
    
    
    #### Rule Implementation_Entered (Implementation Entered)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Account_and_Plan_on_Case](#update_account_and_plan_on_case)|
    |Condition Logic|1 AND 2 AND (3 OR 4)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Department__c| Equal To|Client Onboarding|
    |2|$Record.Implementation__c| Is Null|⬜|
    |3|$Record.AccountId| Is Null|✅|
    |4|$Record.Plan__c| Is Null|✅|
    
    
    
    
    #### Rule IT_Case (IT Case)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Auto_Fill_Plan_and_Account](#auto_fill_plan_and_account)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.OwnerId| Equal To|00537000002RntcAAC|
    
    
    
    
    ### OG_Case_Close_Field_Update
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|OG Case Close Field Update|
    |Default Connector|[Fill_Account_Plan](#fill_account_plan)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Update_OG_Case_Close_Field (Update OG Case Close Field)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[Update_Original_Close_Date](#update_original_close_date)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Reopened_Count__c| Less Than|1|
    |2|$Record.Original_Close_Date_Time__c| Is Null|✅|
    |3|$Record.Status| Equal To|Resolved|
    
    
    
    
    ### User_found_check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|User found check|
    |Default Connector|[Get_Child_Cases](#get_child_cases)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Found_Email_User (Found Email User)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Case_Emails](#get_case_emails)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|[Find_Email_to_Case_User](#find_email_to_case_user)| Is Null|⬜|
    
    
    
    
    ### Find_Email_to_Case_User
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|User|
    |Label|Find Email to Case User|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|Id|
    |Store Output Automatically|✅|
    |Connector|[User_found_check](#user_found_check)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Name| Equal To|Hunter Claxton|
    
    
    
    
    ### Get_Case_Emails
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|EmailMessage|
    |Label|Get Case Emails|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Queried Fields|Id|
    |Store Output Automatically|✅|
    |Connector|[Assign_Email_Count](#assign_email_count)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|ParentId| Equal To|$Record.Id|
    |2|Status| Not Equal To|5|
    |3|Incoming| Equal To|⬜|
    |4|CreatedById| Not Equal To|Find_Email_to_Case_User.Id|
    
    
    
    
    ### Get_Case_Messaging_Sessions
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|MessagingSession|
    |Label|Get Case Messaging Sessions|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Queried Fields|Id|
    |Store Output Automatically|✅|
    |Connector|[Assign_Chat_Session_Count](#assign_chat_session_count)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|CaseId| Equal To|$Record.Id|
    
    
    
    
    ### Get_Child_Cases
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Case|
    |Label|Get Child Cases|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Queried Fields|Id|
    |Store Output Automatically|✅|
    |Connector|[Assign_Child_Case_Count](#assign_child_case_count)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|ParentId| Equal To|$Record.Id|
    
    
    
    
    ### Auto_Fill_Plan_and_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Auto-Fill Plan and Account|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|0013700000JH68lAAD|
    |Plan__c|a2o1G000000oQW5QAM|
    
    
    
    
    ### Resolve_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Resolve Case|
    |Input Reference|$Record|
    |Connector|[OG_Case_Close_Field_Update](#og_case_close_field_update)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Status|Resolved|
    
    
    
    
    ### Update_Account_and_Plan_on_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Account and Plan on Case|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|$Record.Implementation__r.Account__c|
    |Plan__c|$Record.Implementation__r.Plan__c|
    
    
    
    
    ### Update_Original_Close_Date
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Original Close Date|
    |Input Reference|$Record|
    |Connector|[Fill_Account_Plan](#fill_account_plan)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Original_Close_Date_Time__c|$Flow.CurrentDateTime|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

