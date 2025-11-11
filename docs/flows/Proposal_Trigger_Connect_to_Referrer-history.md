# Proposal_Trigger_Connect_to_Referrer history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Proposal_Trigger_Connect_to_Referrer-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "2561923514"
    
    Alert_Partnership_invalid_RPC("📧 <em></em><br/>Alert Partnership invalid RPC"):::actionCalls
    click Alert_Partnership_invalid_RPC "#alert_partnership_invalid_rpc" "2079700819"
    
    Send_New_Sallus_Prop_Alert("📧 <em></em><br/>Send New Sallus Prop Alert"):::actionCalls
    click Send_New_Sallus_Prop_Alert "#send_new_sallus_prop_alert" "3099159767"
    
    Send_New_Simply_Prop_Alert("📧 <em></em><br/>Send New Simply Prop Alert"):::actionCalls
    click Send_New_Simply_Prop_Alert "#send_new_simply_prop_alert" "2415215820"
    
    Advisor_Contact_Required{"🔀 <em></em><br/>Advisor Contact Required"}:::decisions
    click Advisor_Contact_Required "#advisor_contact_required" "3279705802"
    
    Advisor_Needed{"🔀 <em></em><br/>Advisor Needed"}:::decisions
    click Advisor_Needed "#advisor_needed" "2533888230"
    
    Are_they_active{"🔀 <em></em><br/>Are they active"}:::decisions
    click Are_they_active "#are_they_active" "3314855851"
    
    NPN_Present{"🔀 <em></em><br/>NPN Present?"}:::decisions
    click NPN_Present "#npn_present" "273059702"
    
    Owner_Notification_Needed{"🔀 <em></em><br/>Owner Notification Needed"}:::decisions
    click Owner_Notification_Needed "#owner_notification_needed" "535236472"
    
    Owner_Notification_Needed_0{"🔀 <em></em><br/>Owner Notification Needed"}:::decisions
    click Owner_Notification_Needed_0 "#owner_notification_needed_0" "2466778322"
    
    Owner_Valid_RPC{"🔀 <em></em><br/>Owner Valid RPC"}:::decisions
    click Owner_Valid_RPC "#owner_valid_rpc" "2510346646"
    
    Proposal_Type{"🔀 <em></em><br/>Proposal Type"}:::decisions
    click Proposal_Type "#proposal_type" "1429115153"
    
    Query_Successful{"🔀 <em></em><br/>Query Successful?"}:::decisions
    click Query_Successful "#query_successful" "2806480703"
    
    Query_Successful_0{"🔀 <em></em><br/>Query Successful?"}:::decisions
    click Query_Successful_0 "#query_successful_0" "23609301"
    
    Query_Successful_0_0{"🔀 <em></em><br/>Query Successful?"}:::decisions
    click Query_Successful_0_0 "#query_successful_0_0" "3152769733"
    
    Query_Successful_0_0_0{"🔀 <em></em><br/>Query Successful?"}:::decisions
    click Query_Successful_0_0_0 "#query_successful_0_0_0" "311185135"
    
    Query_Successful_0_0_0_0{"🔀 <em></em><br/>Query Successful?"}:::decisions
    click Query_Successful_0_0_0_0 "#query_successful_0_0_0_0" "1923897481"
    
    Query_Successful_0_0_0_0_0{"🔀 <em></em><br/>Query Successful?"}:::decisions
    click Query_Successful_0_0_0_0_0 "#query_successful_0_0_0_0_0" "3911901640"
    
    Query_Successful_0_0_0_0_0_0{"🔀 <em></em><br/>Query Successful?"}:::decisions
    click Query_Successful_0_0_0_0_0_0 "#query_successful_0_0_0_0_0_0" "770507362"
    
    Referrer_Type{"🔀 <em></em><br/>Referrer Type"}:::decisions
    click Referrer_Type "#referrer_type" "2219354074"
    
    Sallus_Proposal_Check{"🔀 <em></em><br/>Sallus Proposal Check"}:::decisions
    click Sallus_Proposal_Check "#sallus_proposal_check" "4263026527"
    
    Sallus_Record_Type{"🔀 <em></em><br/>Sallus Record Type"}:::decisions
    click Sallus_Record_Type "#sallus_record_type" "705134014"
    
    Simply_Record_Type{"🔀 <em></em><br/>Simply Record Type"}:::decisions
    click Simply_Record_Type "#simply_record_type" "1634342109"
    
    TPA_Contact_Required{"🔀 <em></em><br/>TPA Contact Required"}:::decisions
    click TPA_Contact_Required "#tpa_contact_required" "359894997"
    
    X2nd_Run_Check{"🔀 <em></em><br/>2nd Run Check"}:::decisions
    click X2nd_Run_Check "#x2nd_run_check" "2399975330"
    
    Create_Task[("➕ <em></em><br/>Create Task")]:::recordCreates
    click Create_Task "#create_task" "3767063635"
    
    Create_Task_No_Advisor[("➕ <em></em><br/>Create Task No Advisor")]:::recordCreates
    click Create_Task_No_Advisor "#create_task_no_advisor" "2888052542"
    
    Find_Mike_C[("🔍 <em></em><br/>Find Mike C")]:::recordLookups
    click Find_Mike_C "#find_mike_c" "3323857342"
    
    Get_Advisor[("🔍 <em></em><br/>Get Advisor")]:::recordLookups
    click Get_Advisor "#get_advisor" "2036498360"
    
    Get_Advisor_0[("🔍 <em></em><br/>Get Advisor")]:::recordLookups
    click Get_Advisor_0 "#get_advisor_0" "3398266155"
    
    Get_Advisor_Email[("🔍 <em></em><br/>Get Advisor (Email)")]:::recordLookups
    click Get_Advisor_Email "#get_advisor_email" "4284355136"
    
    Get_Advisor_NPN[("🔍 <em></em><br/>Get Advisor (NPN)")]:::recordLookups
    click Get_Advisor_NPN "#get_advisor_npn" "1205288778"
    
    Get_TPA[("🔍 <em></em><br/>Get TPA")]:::recordLookups
    click Get_TPA "#get_tpa" "2653170363"
    
    Get_TPA_Account[("🔍 <em></em><br/>Get TPA Account")]:::recordLookups
    click Get_TPA_Account "#get_tpa_account" "367194369"
    
    Get_TPA_Contact[("🔍 <em></em><br/>Get TPA Contact")]:::recordLookups
    click Get_TPA_Contact "#get_tpa_contact" "3931218706"
    
    Add_Advisor[("🛠️ <em></em><br/>Add Advisor")]:::recordUpdates
    click Add_Advisor "#add_advisor" "1088617264"
    
    Add_TPA[("🛠️ <em></em><br/>Add TPA")]:::recordUpdates
    click Add_TPA "#add_tpa" "1518068138"
    
    Assign_to_Partnership_User[("🛠️ <em></em><br/>Assign to Partnership User")]:::recordUpdates
    click Assign_to_Partnership_User "#assign_to_partnership_user" "1407210426"
    
    Set_Record_Type[("🛠️ <em></em><br/>Set Record Type")]:::recordUpdates
    click Set_Record_Type "#set_record_type" "3487332190"
    
    Set_Record_Type_0[("🛠️ <em></em><br/>Set Record Type")]:::recordUpdates
    click Set_Record_Type_0 "#set_record_type_0" "3004836476"
    
    Update_Advisor_Proposal[("🛠️ <em></em><br/>Update Advisor Proposal")]:::recordUpdates
    click Update_Advisor_Proposal "#update_advisor_proposal" "299691762"
    
    Update_Advisor_Proposal_0[("🛠️ <em></em><br/>Update Advisor Proposal")]:::recordUpdates
    click Update_Advisor_Proposal_0 "#update_advisor_proposal_0" "3469816671"
    
    Update_Owner_to_Karen[("🛠️ <em></em><br/>Update Owner to Karen")]:::recordUpdates
    click Update_Owner_to_Karen "#update_owner_to_karen" "1183462632"
    
    Update_TPA_Proposal[("🛠️ <em></em><br/>Update TPA Proposal")]:::recordUpdates
    click Update_TPA_Proposal "#update_tpa_proposal" "1945124061"
    
    Alert_Partnership_invalid_RPC --> Update_Owner_to_Karen
    Send_New_Sallus_Prop_Alert --> END_Send_New_Sallus_Prop_Alert
    Send_New_Simply_Prop_Alert --> Owner_Notification_Needed_0
    Advisor_Contact_Required --> |"Advisor Involved"| NPN_Present
    Advisor_Contact_Required --> |"Default Outcome"| END_Advisor_Contact_Required
    Advisor_Needed --> |"Advisor Contact Needed"| Get_Advisor_0
    Advisor_Needed --> |"Default Outcome"| Owner_Notification_Needed
    Are_they_active --> |"Is Active"| Assign_to_Partnership_User
    Are_they_active --> |"Default Outcome"| END_Are_they_active
    NPN_Present --> |"NPN Found"| Get_Advisor_NPN
    NPN_Present --> |"NPN Not Found"| Get_Advisor_Email
    Owner_Notification_Needed --> |"Notify"| Create_Task
    Owner_Notification_Needed --> |"Notify Default Owner"| Create_Task_No_Advisor
    Owner_Notification_Needed --> |"Default Outcome"| END_Owner_Notification_Needed
    Owner_Notification_Needed_0 --> |"Notify Simply Generated"| Owner_Valid_RPC
    Owner_Notification_Needed_0 --> |"No notif Advisor path"| TPA_Contact_Required
    Owner_Notification_Needed_0 --> |"no notif tpa path"| Advisor_Contact_Required
    Owner_Notification_Needed_0 --> |"Default Outcome"| END_Owner_Notification_Needed_0
    Owner_Valid_RPC --> |"Owner Valid"| Send_New_Simply_Prop_Alert
    Owner_Valid_RPC --> |"Default Outcome"| Alert_Partnership_invalid_RPC
    Proposal_Type --> |"Principal Proposal"| Simply_Record_Type
    Proposal_Type --> |"Sallus Proposal"| Sallus_Record_Type
    Proposal_Type --> |"Default Outcome"| END_Proposal_Type
    Query_Successful --> |"Referrer Found"| Update_Advisor_Proposal
    Query_Successful --> |"Default Outcome"| END_Query_Successful
    Query_Successful_0 --> |"Referrer Found"| Update_TPA_Proposal
    Query_Successful_0 --> |"Default Outcome"| END_Query_Successful_0
    Query_Successful_0_0 --> |"Advisor Found"| Add_Advisor
    Query_Successful_0_0 --> |"Advisor Not Found"| Get_Advisor_Email
    Query_Successful_0_0_0 --> |"Advisor Email Found"| Add_Advisor
    Query_Successful_0_0_0 --> |"Advisor Email Not Found"| END_Query_Successful_0_0_0
    Query_Successful_0_0_0_0 --> |"TPA Account Found"| Get_TPA_Contact
    Query_Successful_0_0_0_0 --> |"TPA Account Not Found"| END_Query_Successful_0_0_0_0
    Query_Successful_0_0_0_0_0 --> |"TPA Contact Found"| Add_TPA
    Query_Successful_0_0_0_0_0 --> |"TPA Contact Not Found"| END_Query_Successful_0_0_0_0_0
    Query_Successful_0_0_0_0_0_0 --> |"Referrer Found update needed"| Update_Advisor_Proposal_0
    Query_Successful_0_0_0_0_0_0 --> |"Partnership Already Owns"| X2nd_Run_Check
    Query_Successful_0_0_0_0_0_0 --> |"No Referrer Found and Owner not active RPC"| Find_Mike_C
    Query_Successful_0_0_0_0_0_0 --> |"Default"| END_Query_Successful_0_0_0_0_0_0
    Referrer_Type --> |"Advisor Referred"| Get_Advisor
    Referrer_Type --> |"TPA Referred"| Get_TPA
    Referrer_Type --> |"Advisor Linked"| TPA_Contact_Required
    Referrer_Type --> |"TPA Linked"| Advisor_Contact_Required
    Referrer_Type --> |"Default Outcome"| END_Referrer_Type
    Sallus_Proposal_Check --> |"Sallus Proposal Partnerhsip Owns"| Advisor_Needed
    Sallus_Proposal_Check --> |"Default Outcome"| END_Sallus_Proposal_Check
    Sallus_Record_Type --> |"Record Type Set"| Advisor_Needed
    Sallus_Record_Type --> |"Default Outcome"| Set_Record_Type
    Simply_Record_Type --> |"Record Type Set"| Referrer_Type
    Simply_Record_Type --> |"Default Outcome"| Set_Record_Type_0
    TPA_Contact_Required --> |"TPA Involved"| Get_TPA_Account
    TPA_Contact_Required --> |"Default Outcome"| END_TPA_Contact_Required
    X2nd_Run_Check --> |"2nd Go Around"| Owner_Notification_Needed
    X2nd_Run_Check --> |"Default Outcome"| END_X2nd_Run_Check
    Create_Task --> Send_New_Sallus_Prop_Alert
    Create_Task_No_Advisor --> Send_New_Sallus_Prop_Alert
    Find_Mike_C --> Are_they_active
    Get_Advisor --> Query_Successful
    Get_Advisor_0 --> Query_Successful_0_0_0_0_0_0
    Get_Advisor_Email --> Query_Successful_0_0_0
    Get_Advisor_NPN --> Query_Successful_0_0
    Get_TPA --> Query_Successful_0
    Get_TPA_Account --> Query_Successful_0_0_0_0
    Get_TPA_Contact --> Query_Successful_0_0_0_0_0
    Add_Advisor --> END_Add_Advisor
    Add_TPA --> END_Add_TPA
    Assign_to_Partnership_User --> END_Assign_to_Partnership_User
    Set_Record_Type --> Advisor_Needed
    Set_Record_Type_0 --> Referrer_Type
    Update_Advisor_Proposal --> Owner_Notification_Needed_0
    Update_Advisor_Proposal_0 --> Owner_Notification_Needed
    Update_Owner_to_Karen --> Owner_Notification_Needed_0
    Update_TPA_Proposal --> Owner_Notification_Needed_0
    START --> |"Run Immediately"| Proposal_Type
    START --> |"Delayed Assignment Sallus"| Sallus_Proposal_Check
    END_Send_New_Sallus_Prop_Alert(( END )):::endClass
    END_Advisor_Contact_Required(( END )):::endClass
    END_Are_they_active(( END )):::endClass
    END_Owner_Notification_Needed(( END )):::endClass
    END_Owner_Notification_Needed_0(( END )):::endClass
    END_Proposal_Type(( END )):::endClass
    END_Query_Successful(( END )):::endClass
    END_Query_Successful_0(( END )):::endClass
    END_Query_Successful_0_0_0(( END )):::endClass
    END_Query_Successful_0_0_0_0(( END )):::endClass
    END_Query_Successful_0_0_0_0_0(( END )):::endClass
    END_Query_Successful_0_0_0_0_0_0(( END )):::endClass
    END_Referrer_Type(( END )):::endClass
    END_Sallus_Proposal_Check(( END )):::endClass
    END_TPA_Contact_Required(( END )):::endClass
    END_X2nd_Run_Check(( END )):::endClass
    END_Add_Advisor(( END )):::endClass
    END_Add_TPA(( END )):::endClass
    END_Assign_to_Partnership_User(( END )):::endClass
    
    
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
    |Object|Proposal__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create And Update|
    |Label|Proposal | Trigger | Connect to Referrer|
    |Status|Obsolete|
    |Description|Excluded expired proposals|
    |Environments|Default|
    |Interview Label|Proposal | Trigger | Assign Proposal to Referrer {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Proposal_Type](#proposal_type)|
    |Next Node|[Proposal_Type](#proposal_type)|
    
    
    #### Scheduled Paths
    
    |Label|Name|Offset Number|Offset Unit|Record Field|Time Source|Connector|
    |:-- |:-- |:-- |:-- |:-- |:-- |:--  |
    |Delayed Assignment Sallus|Delayed_Assignment_Sallus|5|Minutes|CreatedDate|RecordField|[Sallus_Proposal_Check](#sallus_proposal_check)|
    
    
    #### Filters (logic: **((1 AND 2) OR (1 AND 3) OR (1 AND 4)) AND 5 AND 6 AND 7 AND 8**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Referrer_Email__c| Is Null|<!-- -->|
    |2|TPA_EIN__c| Is Null|<!-- -->|
    |3|Advisor_NPN__c| Is Null|<!-- -->|
    |4|Advisor_CRD__c| Is Null|<!-- -->|
    |5|Ownership_Override__c| Equal To|⬜|
    |6|Stage_Flag__c| Not Equal To|Quick Quote|
    |7|Plan_ID_First_Synced__c| Not Equal To|dateValue: '1982-08-25'<br/>|
    |8|Stage_Flag__c| Not Equal To|Expired Save/Share|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |advisorContact|SObject|⬜|✅|⬜|Contact|<!-- -->|
    |proposal|SObject|⬜|✅|⬜|Proposal__c|<!-- -->|
    |referrer|SObject|⬜|✅|⬜|Contact|<!-- -->|
    |tpaAccount|SObject|⬜|✅|⬜|Account|<!-- -->|
    |tpaContact|SObject|⬜|✅|⬜|Contact|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |newproposal|Boolean|ISNEW()|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Alert_Partnership_invalid_RPC
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Alert Partnership invalid RPC|
    |Action Type|Email Alert|
    |Action Name|Proposal__c.Proposal_Generated_bad_owner|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Proposal__c.Proposal_Generated_bad_owner|
    | SObject Row Id (input)|$Record.Id|
    |Connector|[Update_Owner_to_Karen](#update_owner_to_karen)|
    
    
    ### Send_New_Sallus_Prop_Alert
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send New Sallus Prop Alert|
    |Action Type|Email Alert|
    |Action Name|Proposal__c.Sallus_Proposal_Generated|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Proposal__c.Sallus_Proposal_Generated|
    | SObject Row Id (input)|$Record.Id|
    
    
    ### Send_New_Simply_Prop_Alert
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send New Simply Prop Alert|
    |Action Type|Email Alert|
    |Action Name|Proposal__c.Proposal_Generated|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Proposal__c.Proposal_Generated|
    | SObject Row Id (input)|$Record.Id|
    |Connector|[Owner_Notification_Needed_0](#owner_notification_needed_0)|
    
    
    ### Advisor_Contact_Required
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Advisor Contact Required|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Advisor_Involved (Advisor Involved)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[NPN_Present](#npn_present)|
    |Condition Logic|1 AND (2 OR 3) AND NOT 4|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Advisor_Contact__c| Is Null|✅|
    |2|$Record.Advisor_NPN__c| Is Null|⬜|
    |3|$Record.Financial_Professional_Email__c| Is Null|⬜|
    |4|$Record.Financial_Professional_Email__c| Contains|@mailinator.com|
    
    
    
    
    ### Advisor_Needed
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Advisor Needed|
    |Default Connector|[Owner_Notification_Needed](#owner_notification_needed)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Advisor_Contact_Needed (Advisor Contact Needed)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Advisor_0](#get_advisor_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Advisor_Contact__c| Is Null|✅|
    
    
    
    
    ### Are_they_active
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Are they active|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Is_Active (Is Active)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_to_Partnership_User](#assign_to_partnership_user)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Find_Mike_C.IsActive| Equal To|✅|
    
    
    
    
    ### NPN_Present
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|NPN Present?|
    |Default Connector|[Get_Advisor_Email](#get_advisor_email)|
    |Default Connector Label|NPN Not Found|
    
    
    #### Rule NPN_Found (NPN Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Advisor_NPN](#get_advisor_npn)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Advisor_NPN__c| Is Null|⬜|
    
    
    
    
    ### Owner_Notification_Needed
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Owner Notification Needed|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Notify (Notify)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Create_Task](#create_task)|
    |Condition Logic|2 AND (1 or 3)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|newproposal| Equal To|✅|
    |2|$Record.Owner:User.UserRoleId| Equal To|00E00000006xFiWEAU|
    |3|$Record.OwnerId| Is Changed|✅|
    
    
    
    
    #### Rule Notify_Default_Owner (Notify Default Owner)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Create_Task_No_Advisor](#create_task_no_advisor)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.OwnerId| Contains|005Ho000007taPX|
    |2|[X2nd_Run_Check](#x2nd_run_check)| Was Visited|✅|
    
    
    
    
    ### Owner_Notification_Needed_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Owner Notification Needed|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Notify_Simply_Generated (Notify Simply Generated)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Owner_Valid_RPC](#owner_valid_rpc)|
    |Condition Logic|(1 OR 6) AND 2 AND 5 AND NOT 3 AND NOT 4 AND 7|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|newproposal| Equal To|✅|
    |2|$Record.Owner:User.Username| Not Equal To|jfarmakis@myubiquity.com|
    |3|$Record.Plan_ID__c| Contains|devface|
    |4|$Record.Plan_ID__c| Contains|localhost|
    |5|[Owner_Valid_RPC](#owner_valid_rpc)| Was Visited|⬜|
    |6|$Record__Prior.OwnerId| Contains|0051G0000069uOp|
    |7|$Record.Stage_Flag__c| Not Equal To|Marketing|
    
    
    
    
    #### Rule No_notif_Advisor_path (No notif Advisor path)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[TPA_Contact_Required](#tpa_contact_required)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Advisor_Referred| Equal To|✅|
    
    
    
    
    #### Rule no_notif_tpa_path (no notif tpa path)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Advisor_Contact_Required](#advisor_contact_required)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|TPA_Referred| Equal To|✅|
    
    
    
    
    ### Owner_Valid_RPC
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Owner Valid RPC|
    |Default Connector|[Alert_Partnership_invalid_RPC](#alert_partnership_invalid_rpc)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Owner_Valid (Owner Valid)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Send_New_Simply_Prop_Alert](#send_new_simply_prop_alert)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.OwnerId| Contains|00500000006olCp|
    |2|$Record.OwnerId| Contains|00500000006vlyn|
    
    
    
    
    ### Proposal_Type
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Proposal Type|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Principal_Proposal (Principal Proposal)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Simply_Record_Type](#simply_record_type)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Principal_Id__c| Is Null|⬜|
    
    
    
    
    #### Rule Sallus_Proposal (Sallus Proposal)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Sallus_Record_Type](#sallus_record_type)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Sallus_ID__c| Is Null|⬜|
    
    
    
    
    ### Query_Successful
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Query Successful?|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Referrer_Found (Referrer Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Advisor_Proposal](#update_advisor_proposal)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|referrer.Id| Is Null|⬜|
    
    
    
    
    ### Query_Successful_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Query Successful?|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Referrer_Found_0 (Referrer Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_TPA_Proposal](#update_tpa_proposal)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|referrer.Id| Is Null|⬜|
    
    
    
    
    ### Query_Successful_0_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Query Successful?|
    |Default Connector|[Get_Advisor_Email](#get_advisor_email)|
    |Default Connector Label|Advisor Not Found|
    
    
    #### Rule Advisor_Found (Advisor Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Add_Advisor](#add_advisor)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|advisorContact.Id| Is Null|⬜|
    
    
    
    
    ### Query_Successful_0_0_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Query Successful?|
    |Default Connector Label|Advisor Email Not Found|
    
    
    #### Rule Advisor_Email_Found (Advisor Email Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Add_Advisor](#add_advisor)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|advisorContact.Id| Is Null|⬜|
    
    
    
    
    ### Query_Successful_0_0_0_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Query Successful?|
    |Default Connector Label|TPA Account Not Found|
    
    
    #### Rule TPA_Account_Found (TPA Account Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_TPA_Contact](#get_tpa_contact)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|tpaAccount.Id| Is Null|⬜|
    
    
    
    
    ### Query_Successful_0_0_0_0_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Query Successful?|
    |Default Connector Label|TPA Contact Not Found|
    
    
    #### Rule TPA_Contact_Found (TPA Contact Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Add_TPA](#add_tpa)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|tpaContact.Id| Is Null|⬜|
    
    
    
    
    ### Query_Successful_0_0_0_0_0_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Query Successful?|
    |Default Connector Label|Default|
    
    
    #### Rule Referrer_Found_update_needed (Referrer Found update needed)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Advisor_Proposal_0](#update_advisor_proposal_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|referrer.Id| Is Null|⬜|
    |2|referrer.OwnerId| Not Equal To|$Record.OwnerId|
    
    
    
    
    #### Rule Partnership_Already_Owns (Partnership Already Owns)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[X2nd_Run_Check](#x2nd_run_check)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.OwnerId| Contains|005Ho000007taPX|
    |2|referrer.Id| Is Null|✅|
    
    
    
    
    #### Rule No_Referrer_Found_and_Owner_not_active_RPC (No Referrer Found and Owner not active RPC)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Find_Mike_C](#find_mike_c)|
    |Condition Logic|1 AND (2 or 3)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|referrer.Id| Is Null|✅|
    |2|$Record.Owner:User.UserRoleId| Not Equal To|00E00000006xFiWEAU|
    |3|$Record.Owner:User.IsActive| Equal To|⬜|
    
    
    
    
    ### Referrer_Type
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Referrer Type|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Advisor_Referred (Advisor Referred)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Advisor](#get_advisor)|
    |Condition Logic|(1 AND 2) OR (1 AND 3)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Referrer_Type__c| Equal To|Advisor|
    |2|$Record.Advisor_Contact__c| Is Null|✅|
    |3|$Record.Referrer_Email__c| Not Equal To|$Record__Prior.Referrer_Email__c|
    
    
    
    
    #### Rule TPA_Referred (TPA Referred)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_TPA](#get_tpa)|
    |Condition Logic|(1 AND 2) OR (1 AND 3)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Referrer_Type__c| Equal To|TPA|
    |2|$Record.TPA_Contact__c| Is Null|✅|
    |3|$Record.Referrer_Email__c| Not Equal To|$Record__Prior.Referrer_Email__c|
    
    
    
    
    #### Rule Advisor_Linked (Advisor Linked)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[TPA_Contact_Required](#tpa_contact_required)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Referrer_Type__c| Equal To|Advisor|
    |2|$Record.Advisor_Contact__c| Is Null|⬜|
    
    
    
    
    #### Rule TPA_Linked (TPA Linked)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Advisor_Contact_Required](#advisor_contact_required)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Referrer_Type__c| Equal To|TPA|
    |2|$Record.TPA_Contact__c| Is Null|⬜|
    
    
    
    
    ### Sallus_Proposal_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Sallus Proposal Check|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Sallus_Proposal_Partnerhsip_Owns (Sallus Proposal Partnerhsip Owns)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Advisor_Needed](#advisor_needed)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.RecordTypeId| Equal To|0121G000000RlhjQAC|
    |2|$Record.OwnerId| Contains|005Ho000007taPX|
    
    
    
    
    ### Sallus_Record_Type
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Sallus Record Type|
    |Default Connector|[Set_Record_Type](#set_record_type)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Record_Type_Set_Sallus (Record Type Set)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Advisor_Needed](#advisor_needed)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.RecordTypeId| Contains|0121G000000RlhjQAC|
    
    
    
    
    ### Simply_Record_Type
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Simply Record Type|
    |Default Connector|[Set_Record_Type_0](#set_record_type_0)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Record_Type_Set_Simply (Record Type Set)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Referrer_Type](#referrer_type)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.RecordTypeId| Contains|0121G000000RlheQAC|
    
    
    
    
    ### TPA_Contact_Required
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|TPA Contact Required|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule TPA_Involved (TPA Involved)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_TPA_Account](#get_tpa_account)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.TPA_Contact__c| Is Null|✅|
    |2|$Record.TPA_EIN__c| Is Null|⬜|
    
    
    
    
    ### X2nd_Run_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|2nd Run Check|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule X2nd_Go_Around (2nd Go Around)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Owner_Notification_Needed](#owner_notification_needed)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|[Sallus_Proposal_Check](#sallus_proposal_check)| Was Visited|✅|
    
    
    
    
    ### Create_Task
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Task|
    |Label|Create Task|
    |Store Output Automatically|✅|
    |Connector|[Send_New_Sallus_Prop_Alert](#send_new_sallus_prop_alert)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |ActivityDate|$Flow.CurrentDate|
    |OwnerId|$Record.OwnerId|
    |Priority|Normal|
    |Status|Not Started|
    |Subject|New Sallus Proposal From {!$Record.Advisor_Contact__r.Full_Name__c}|
    |WhatId|$Record.Id|
    |WhoId|$Record.Advisor_Contact__c|
    
    
    
    
    ### Create_Task_No_Advisor
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Task|
    |Label|Create Task No Advisor|
    |Store Output Automatically|✅|
    |Connector|[Send_New_Sallus_Prop_Alert](#send_new_sallus_prop_alert)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |ActivityDate|$Flow.CurrentDate|
    |OwnerId|$Record.OwnerId|
    |Priority|Normal|
    |Status|Not Started|
    |Subject|New Sallus Proposal - No Advisor Contact|
    |WhatId|$Record.Id|
    
    
    
    
    ### Find_Mike_C
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|User|
    |Label|Find Mike C|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|- Id<br/>- IsActive<br/>|
    |Store Output Automatically|✅|
    |Connector|[Are_they_active](#are_they_active)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|005Ho000007taPX|
    
    
    
    
    ### Get_Advisor
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Get Advisor|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|referrer|
    |Queried Fields|- Id<br/>- AccountId<br/>- OwnerId<br/>|
    |Connector|[Query_Successful](#query_successful)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Email| Equal To|$Record.Referrer_Email__c|
    
    
    
    
    ### Get_Advisor_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Get Advisor|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|referrer|
    |Queried Fields|- Id<br/>- AccountId<br/>- OwnerId<br/>|
    |Connector|[Query_Successful_0_0_0_0_0_0](#query_successful_0_0_0_0_0_0)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Email| Equal To|$Record.Referrer_Email__c|
    |2|CRD_Number__c| Equal To|$Record.Advisor_CRD__c|
    |3|CRD_Number__c| Is Null|<!-- -->|
    
    
    
    
    ### Get_Advisor_Email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Get Advisor (Email)|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|advisorContact|
    |Queried Fields|- Id<br/>- OwnerId<br/>- AccountId<br/>|
    |Connector|[Query_Successful_0_0_0](#query_successful_0_0_0)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Email| Equal To|$Record.Financial_Professional_Email__c|
    
    
    
    
    ### Get_Advisor_NPN
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Get Advisor (NPN)|
    |Assign Null Values If No Records Found|✅|
    |Output Assignments|- assignToReference: advisorContact.AccountId<br/>&nbsp;&nbsp;field: AccountId<br/>- assignToReference: advisorContact.Id<br/>&nbsp;&nbsp;field: Id<br/>- assignToReference: advisorContact.OwnerId<br/>&nbsp;&nbsp;field: OwnerId<br/>|
    |Connector|[Query_Successful_0_0](#query_successful_0_0)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|NPN_Number__c| Equal To|$Record.Advisor_NPN__c|
    
    
    
    
    ### Get_TPA
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Get TPA|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|referrer|
    |Queried Fields|- Id<br/>- AccountId<br/>- OwnerId<br/>|
    |Connector|[Query_Successful_0](#query_successful_0)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Email| Equal To|$Record.Referrer_Email__c|
    
    
    
    
    ### Get_TPA_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Account|
    |Label|Get TPA Account|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|tpaAccount|
    |Queried Fields|Id|
    |Connector|[Query_Successful_0_0_0_0](#query_successful_0_0_0_0)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Employer_Identification_Number_EIN__c| Equal To|$Record.TPA_EIN__c|
    
    
    
    
    ### Get_TPA_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Get TPA Contact|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|tpaContact|
    |Queried Fields|Id|
    |Connector|[Query_Successful_0_0_0_0_0](#query_successful_0_0_0_0_0)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|AccountId| Equal To|tpaAccount.Id|
    |2|Role__c| Equal To|TPA - Sales|
    
    
    
    
    ### Add_Advisor
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Add Advisor|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Advisor_Account__c|advisorContact.AccountId|
    |Advisor_Contact__c|advisorContact.Id|
    |OwnerId|advisorContact.OwnerId|
    
    
    
    
    ### Add_TPA
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Add TPA|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Service_Option__c|Simply Retirement Unbundled|
    |TPA_Account__c|tpaAccount.Id|
    |TPA_Contact__c|tpaContact.Id|
    
    
    
    
    ### Assign_to_Partnership_User
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Assign to Partnership User|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |OwnerId|Find_Mike_C.Id|
    
    
    
    
    ### Set_Record_Type
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Proposal__c|
    |Label|Set Record Type|
    |Connector|[Advisor_Needed](#advisor_needed)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$Record.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |RecordTypeId|0121G000000RlhjQAC|
    
    
    
    
    ### Set_Record_Type_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Proposal__c|
    |Label|Set Record Type|
    |Connector|[Referrer_Type](#referrer_type)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$Record.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |RecordTypeId|0121G000000RlheQAC|
    
    
    
    
    ### Update_Advisor_Proposal
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Advisor Proposal|
    |Input Reference|$Record|
    |Connector|[Owner_Notification_Needed_0](#owner_notification_needed_0)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Advisor_Account__c|referrer.AccountId|
    |Advisor_Contact__c|referrer.Id|
    |OwnerId|referrer.OwnerId|
    |Service_Option__c|Simply Retirement Bundled|
    
    
    
    
    ### Update_Advisor_Proposal_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Advisor Proposal|
    |Input Reference|$Record|
    |Connector|[Owner_Notification_Needed](#owner_notification_needed)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Advisor_Account__c|referrer.AccountId|
    |Advisor_Contact__c|referrer.Id|
    |OwnerId|referrer.OwnerId|
    
    
    
    
    ### Update_Owner_to_Karen
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Owner to Karen|
    |Input Reference|$Record|
    |Connector|[Owner_Notification_Needed_0](#owner_notification_needed_0)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |OwnerId|0051G0000069AXb|
    
    
    
    
    ### Update_TPA_Proposal
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update TPA Proposal|
    |Input Reference|$Record|
    |Connector|[Owner_Notification_Needed_0](#owner_notification_needed_0)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |OwnerId|referrer.OwnerId|
    |Service_Option__c|Simply Retirement Unbundled|
    |TPA_Account__c|referrer.AccountId|
    |TPA_Contact__c|referrer.Id|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

