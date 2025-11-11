# Proposal_After_Trigger history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Proposal_After_Trigger-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "1229118650"
    
    Send_Manual_Assignment_Alert("📧 <em></em><br/>Send Manual Assignment Alert"):::actionCalls
    click Send_Manual_Assignment_Alert "#send_manual_assignment_alert" "794246030"
    
    Send_Quick_Quote_Notif("📧 <em></em><br/>Send Quick Quote Notif"):::actionCalls
    click Send_Quick_Quote_Notif "#send_quick_quote_notif" "4075941993"
    
    Send_Sallus_Proposal_Generated_Alert("📧 <em></em><br/>Send Sallus Proposal Generated Alert"):::actionCalls
    click Send_Sallus_Proposal_Generated_Alert "#send_sallus_proposal_generated_alert" "528704132"
    
    Send_Simply_Proposal_Generated_Alert("📧 <em></em><br/>Send Simply Proposal Generated Alert"):::actionCalls
    click Send_Simply_Proposal_Generated_Alert "#send_simply_proposal_generated_alert" "3712416782"
    
    Add_Advisor_to_Lead_Collection[\"🟰 <em></em><br/>Add Advisor to Lead Collection"/]:::assignments
    click Add_Advisor_to_Lead_Collection "#add_advisor_to_lead_collection" "1067457165"
    
    Add_TPA_Phone[\"🟰 <em></em><br/>Add TPA Phone #"/]:::assignments
    click Add_TPA_Phone "#add_tpa_phone" "3372800464"
    
    Add_TPA_to_Collection[\"🟰 <em></em><br/>Add TPA to Collection"/]:::assignments
    click Add_TPA_to_Collection "#add_tpa_to_collection" "1924719762"
    
    Assign_Advisor_Values_to_Proposal[\"🟰 <em></em><br/>Assign Advisor Values to Proposal"/]:::assignments
    click Assign_Advisor_Values_to_Proposal "#assign_advisor_values_to_proposal" "2326384919"
    
    Assign_to_Staging_Queue[\"🟰 <em></em><br/>Assign to Staging Queue"/]:::assignments
    click Assign_to_Staging_Queue "#assign_to_staging_queue" "3070651058"
    
    Assign_TPA_Values_to_Proposal[\"🟰 <em></em><br/>Assign TPA Values to Proposal"/]:::assignments
    click Assign_TPA_Values_to_Proposal "#assign_tpa_values_to_proposal" "2072038301"
    
    Copy_1_of_Add_issue_msg_to_notes[\"🟰 <em></em><br/>Copy 1 of Add issue msg to notes"/]:::assignments
    click Copy_1_of_Add_issue_msg_to_notes "#copy_1_of_add_issue_msg_to_notes" "3519124493"
    
    Copy_1_of_Assign_Advisor_Values_to_Proposal[\"🟰 <em></em><br/>Copy 1 of Assign Advisor Values to Proposal"/]:::assignments
    click Copy_1_of_Assign_Advisor_Values_to_Proposal "#copy_1_of_assign_advisor_values_to_proposal" "4055824935"
    
    Copy_1_of_Assign_TPA_Values_to_Proposal[\"🟰 <em></em><br/>Copy 1 of Assign TPA Values to Proposal"/]:::assignments
    click Copy_1_of_Assign_TPA_Values_to_Proposal "#copy_1_of_assign_tpa_values_to_proposal" "2891448498"
    
    Copy_1_of_Copy_1_of_Add_issue_msg_to_notes[\"🟰 <em></em><br/>Copy 1 of Copy 1 of Add issue msg to notes"/]:::assignments
    click Copy_1_of_Copy_1_of_Add_issue_msg_to_notes "#copy_1_of_copy_1_of_add_issue_msg_to_notes" "1284294351"
    
    Define_Advisor_Lead_Simply[\"🟰 <em></em><br/>Define Advisor Lead Simply"/]:::assignments
    click Define_Advisor_Lead_Simply "#define_advisor_lead_simply" "1811773971"
    
    Define_Issue_Message_Advisor[\"🟰 <em></em><br/>Define Issue Message Advisor"/]:::assignments
    click Define_Issue_Message_Advisor "#define_issue_message_advisor" "938853352"
    
    Define_Issue_Message_Both[\"🟰 <em></em><br/>Define Issue Message Both"/]:::assignments
    click Define_Issue_Message_Both "#define_issue_message_both" "143073417"
    
    Define_Issue_Message_TPA[\"🟰 <em></em><br/>Define Issue Message TPA"/]:::assignments
    click Define_Issue_Message_TPA "#define_issue_message_tpa" "2276448161"
    
    Define_TPA_Lead[\"🟰 <em></em><br/>Define TPA Lead"/]:::assignments
    click Define_TPA_Lead "#define_tpa_lead" "2965378106"
    
    Needs_Manual_Assignment[\"🟰 <em></em><br/>Needs Manual Assignment"/]:::assignments
    click Needs_Manual_Assignment "#needs_manual_assignment" "2112297787"
    
    Needs_manual_assignment2[\"🟰 <em></em><br/>Needs manual assignment2"/]:::assignments
    click Needs_manual_assignment2 "#needs_manual_assignment2" "2111523040"
    
    Second_Run_True[\"🟰 <em></em><br/>Second Run True"/]:::assignments
    click Second_Run_True "#second_run_true" "1244641594"
    
    Set_Correct_Record_Type_ID[\"🟰 <em></em><br/>Set Correct Record Type ID"/]:::assignments
    click Set_Correct_Record_Type_ID "#set_correct_record_type_id" "3794077339"
    
    Unmark_Pending_Alert[\"🟰 <em></em><br/>Unmark Pending Alert"/]:::assignments
    click Unmark_Pending_Alert "#unmark_pending_alert" "2822112738"
    
    Advisor_Found_Check{"🔀 <em></em><br/>Advisor Found Check"}:::decisions
    click Advisor_Found_Check "#advisor_found_check" "3945946517"
    
    Advisor_Needed_Check{"🔀 <em></em><br/>Advisor Needed Check"}:::decisions
    click Advisor_Needed_Check "#advisor_needed_check" "963833026"
    
    Alert_Type{"🔀 <em></em><br/>Alert Type"}:::decisions
    click Alert_Type "#alert_type" "3301976545"
    
    Anything_to_update_check{"🔀 <em></em><br/>Anything to update check"}:::decisions
    click Anything_to_update_check "#anything_to_update_check" "2704731924"
    
    Are_there_leads_to_create{"🔀 <em></em><br/>Are there leads to create"}:::decisions
    click Are_there_leads_to_create "#are_there_leads_to_create" "841260870"
    
    Contact_Type_Check{"🔀 <em></em><br/>Contact Type Check"}:::decisions
    click Contact_Type_Check "#contact_type_check" "241934850"
    
    Is_owner_API{"🔀 <em></em><br/>Is owner API"}:::decisions
    click Is_owner_API "#is_owner_api" "4087772640"
    
    Is_this_a_TPA_referral_QQ{"🔀 <em></em><br/>Is this a TPA referral QQ"}:::decisions
    click Is_this_a_TPA_referral_QQ "#is_this_a_tpa_referral_qq" "1338610831"
    
    Partner_Proposal_Type{"🔀 <em></em><br/>Partner Proposal Type"}:::decisions
    click Partner_Proposal_Type "#partner_proposal_type" "4086118977"
    
    Problem_Type{"🔀 <em></em><br/>Problem Type"}:::decisions
    click Problem_Type "#problem_type" "566421851"
    
    Proposal_Verification{"🔀 <em></em><br/>Proposal Verification"}:::decisions
    click Proposal_Verification "#proposal_verification" "3340627598"
    
    Ready_for_Assignment_Check{"🔀 <em></em><br/>Ready for Assignment Check"}:::decisions
    click Ready_for_Assignment_Check "#ready_for_assignment_check" "1384543871"
    
    Record_Type_Correct_Check{"🔀 <em></em><br/>Record Type Correct Check"}:::decisions
    click Record_Type_Correct_Check "#record_type_correct_check" "4270211199"
    
    TPA_Found_Check{"🔀 <em></em><br/>TPA Found Check"}:::decisions
    click TPA_Found_Check "#tpa_found_check" "1374471295"
    
    TPA_Needed_Check{"🔀 <em></em><br/>TPA Needed Check"}:::decisions
    click TPA_Needed_Check "#tpa_needed_check" "4096023359"
    
    Were_the_expected_contacts_found{"🔀 <em></em><br/>Were the expected contacts found"}:::decisions
    click Were_the_expected_contacts_found "#were_the_expected_contacts_found" "3484774334"
    
    Which_Contacts_to_Look_For{"🔀 <em></em><br/>Which Contacts to Look For"}:::decisions
    click Which_Contacts_to_Look_For "#which_contacts_to_look_for" "4285684726"
    
    Prop_Value_Assignment_Loop{{"🔁 <em></em><br/>Prop Value Assignment Loop"}}:::loops
    click Prop_Value_Assignment_Loop "#prop_value_assignment_loop" "4111261513"
    
    Create_Leads[("➕ <em></em><br/>Create Leads")]:::recordCreates
    click Create_Leads "#create_leads" "2159320690"
    
    Create_Manual_Assignment_Task[("➕ <em></em><br/>Create Manual Assignment Task")]:::recordCreates
    click Create_Manual_Assignment_Task "#create_manual_assignment_task" "2218394116"
    
    Create_Missing_Contact_Task[("➕ <em></em><br/>Create Missing Contact Task")]:::recordCreates
    click Create_Missing_Contact_Task "#create_missing_contact_task" "699258894"
    
    Create_Quick_Quote_Reach_Out[("➕ <em></em><br/>Create Quick Quote Reach Out")]:::recordCreates
    click Create_Quick_Quote_Reach_Out "#create_quick_quote_reach_out" "2641084127"
    
    Create_Reach_Out_Sallus[("➕ <em></em><br/>Create Reach Out Sallus")]:::recordCreates
    click Create_Reach_Out_Sallus "#create_reach_out_sallus" "3425483615"
    
    Create_Reach_Out_Simply[("➕ <em></em><br/>Create Reach Out Simply")]:::recordCreates
    click Create_Reach_Out_Simply "#create_reach_out_simply" "165283259"
    
    Find_Both_New_Contacts[("🔍 <em></em><br/>Find Both New Contacts")]:::recordLookups
    click Find_Both_New_Contacts "#find_both_new_contacts" "2787939098"
    
    Find_New_Advisor_Contact[("🔍 <em></em><br/>Find New Advisor Contact")]:::recordLookups
    click Find_New_Advisor_Contact "#find_new_advisor_contact" "3679270877"
    
    Find_New_TPA_Contact[("🔍 <em></em><br/>Find New TPA Contact")]:::recordLookups
    click Find_New_TPA_Contact "#find_new_tpa_contact" "3243569283"
    
    Locate_Advisor[("🔍 <em></em><br/>Locate Advisor")]:::recordLookups
    click Locate_Advisor "#locate_advisor" "1060320097"
    
    Locate_Advisor_Sallus[("🔍 <em></em><br/>Locate Advisor Sallus")]:::recordLookups
    click Locate_Advisor_Sallus "#locate_advisor_sallus" "3919312824"
    
    Locate_TPA[("🔍 <em></em><br/>Locate TPA")]:::recordLookups
    click Locate_TPA "#locate_tpa" "317088116"
    
    Commit_Proposal_Updates[("🛠️ <em></em><br/>Commit Proposal Updates")]:::recordUpdates
    click Commit_Proposal_Updates "#commit_proposal_updates" "2029889565"
    
    Send_Manual_Assignment_Alert --> Unmark_Pending_Alert
    Send_Quick_Quote_Notif --> Create_Quick_Quote_Reach_Out
    Send_Sallus_Proposal_Generated_Alert --> Create_Reach_Out_Sallus
    Send_Simply_Proposal_Generated_Alert --> Create_Reach_Out_Simply
    Add_Advisor_to_Lead_Collection --> TPA_Needed_Check
    Add_TPA_Phone --> Add_TPA_to_Collection
    Add_TPA_to_Collection --> Are_there_leads_to_create
    Assign_Advisor_Values_to_Proposal --> TPA_Needed_Check
    Assign_to_Staging_Queue --> Anything_to_update_check
    Assign_TPA_Values_to_Proposal --> Are_there_leads_to_create
    Copy_1_of_Add_issue_msg_to_notes --> Ready_for_Assignment_Check
    Copy_1_of_Assign_Advisor_Values_to_Proposal --> Prop_Value_Assignment_Loop
    Copy_1_of_Assign_TPA_Values_to_Proposal --> Prop_Value_Assignment_Loop
    Copy_1_of_Copy_1_of_Add_issue_msg_to_notes --> Ready_for_Assignment_Check
    Define_Advisor_Lead_Simply --> Add_Advisor_to_Lead_Collection
    Define_Issue_Message_Advisor --> Were_the_expected_contacts_found
    Define_Issue_Message_Both --> Were_the_expected_contacts_found
    Define_Issue_Message_TPA --> Were_the_expected_contacts_found
    Define_TPA_Lead --> Is_this_a_TPA_referral_QQ
    Needs_Manual_Assignment --> Ready_for_Assignment_Check
    Needs_manual_assignment2 --> Ready_for_Assignment_Check
    Second_Run_True --> Is_owner_API
    Set_Correct_Record_Type_ID --> Advisor_Needed_Check
    Unmark_Pending_Alert --> Anything_to_update_check
    Advisor_Found_Check --> |"Advisor Exists"| Assign_Advisor_Values_to_Proposal
    Advisor_Found_Check --> |"Create Advisor Simply"| Define_Advisor_Lead_Simply
    Advisor_Found_Check --> |"Missing Advisor Sallus"| TPA_Needed_Check
    Advisor_Found_Check --> |"Default Outcome"| TPA_Needed_Check
    Advisor_Needed_Check --> |"Needs Advisor Simply"| Locate_Advisor
    Advisor_Needed_Check --> |"Needs Advisor Sallus"| Locate_Advisor_Sallus
    Advisor_Needed_Check --> |"Default Outcome"| TPA_Needed_Check
    Alert_Type --> |"Problem Catch"| Problem_Type
    Alert_Type --> |"Quick Quote Generated"| Send_Quick_Quote_Notif
    Alert_Type --> |"Simply Plan Proposal Generated"| Send_Simply_Proposal_Generated_Alert
    Alert_Type --> |"Sallus Proposal Generated"| Send_Sallus_Proposal_Generated_Alert
    Alert_Type --> |"Default Outcome"| END_Alert_Type
    Anything_to_update_check --> |"Update Record"| Commit_Proposal_Updates
    Anything_to_update_check --> |"Default Outcome"| END_Anything_to_update_check
    Are_there_leads_to_create --> |"Lead collection not empty"| Create_Leads
    Are_there_leads_to_create --> |"Default Outcome"| Proposal_Verification
    Contact_Type_Check --> |"TPA"| Copy_1_of_Assign_TPA_Values_to_Proposal
    Contact_Type_Check --> |"Advisor"| Copy_1_of_Assign_Advisor_Values_to_Proposal
    Contact_Type_Check --> |"Default Outcome"| Prop_Value_Assignment_Loop
    Is_owner_API --> |"Owner non API"| Partner_Proposal_Type
    Is_owner_API --> |"Default Outcome"| Partner_Proposal_Type
    Is_this_a_TPA_referral_QQ --> |"QQ From TPA"| Add_TPA_Phone
    Is_this_a_TPA_referral_QQ --> |"Default Outcome"| Add_TPA_to_Collection
    Partner_Proposal_Type --> |"Simply Retirement Proposal"| Record_Type_Correct_Check
    Partner_Proposal_Type --> |"Sallus Proposal"| Record_Type_Correct_Check
    Partner_Proposal_Type --> |"Default Outcome"| END_Partner_Proposal_Type
    Problem_Type --> |"Missing Contact(s)"| Create_Missing_Contact_Task
    Problem_Type --> |"Invalid Advisor Owner"| Create_Manual_Assignment_Task
    Problem_Type --> |"Default Outcome"| END_Problem_Type
    Proposal_Verification --> |"Problem - Advisor owned by someone outside of BU"| Needs_Manual_Assignment
    Proposal_Verification --> |"2nd Run Problem - missing both advisor and tpa"| Needs_manual_assignment2
    Proposal_Verification --> |"2nd Run Problem - missing advisor"| Copy_1_of_Add_issue_msg_to_notes
    Proposal_Verification --> |"2nd Run Problem - missing tpa"| Copy_1_of_Copy_1_of_Add_issue_msg_to_notes
    Proposal_Verification --> |"Default Outcome"| Ready_for_Assignment_Check
    Ready_for_Assignment_Check --> |"Push to DE"| Assign_to_Staging_Queue
    Ready_for_Assignment_Check --> |"Record Newly Assigned"| Alert_Type
    Ready_for_Assignment_Check --> |"Default Outcome"| Anything_to_update_check
    Record_Type_Correct_Check --> |"2nd Run"| Which_Contacts_to_Look_For
    Record_Type_Correct_Check --> |"Record Type Correct"| Advisor_Needed_Check
    Record_Type_Correct_Check --> |"Default Outcome"| Set_Correct_Record_Type_ID
    TPA_Found_Check --> |"TPA Exists"| Assign_TPA_Values_to_Proposal
    TPA_Found_Check --> |"Create TPA Lead"| Define_TPA_Lead
    TPA_Found_Check --> |"Default Outcome"| Are_there_leads_to_create
    TPA_Needed_Check --> |"Needs TPA"| Locate_TPA
    TPA_Needed_Check --> |"Default Outcome"| Are_there_leads_to_create
    Were_the_expected_contacts_found --> |"Proceed with Assignment"| Prop_Value_Assignment_Loop
    Were_the_expected_contacts_found --> |"Default Outcome"| Proposal_Verification
    Which_Contacts_to_Look_For --> |"Need Advisor Only"| Find_New_Advisor_Contact
    Which_Contacts_to_Look_For --> |"Need TPA Only"| Find_New_TPA_Contact
    Which_Contacts_to_Look_For --> |"Need Both"| Find_Both_New_Contacts
    Which_Contacts_to_Look_For --> |"Default Outcome"| END_Which_Contacts_to_Look_For
    Prop_Value_Assignment_Loop --> |"For Each"|Contact_Type_Check
    Prop_Value_Assignment_Loop ---> |"After Last"|Proposal_Verification
    Create_Leads --> Proposal_Verification
    Create_Manual_Assignment_Task --> Send_Manual_Assignment_Alert
    Create_Missing_Contact_Task --> Unmark_Pending_Alert
    Create_Quick_Quote_Reach_Out --> Unmark_Pending_Alert
    Create_Reach_Out_Sallus --> Unmark_Pending_Alert
    Create_Reach_Out_Simply --> Unmark_Pending_Alert
    Find_Both_New_Contacts --> Define_Issue_Message_Both
    Find_New_Advisor_Contact --> Define_Issue_Message_Advisor
    Find_New_TPA_Contact --> Define_Issue_Message_TPA
    Locate_Advisor --> Advisor_Found_Check
    Locate_Advisor_Sallus --> Advisor_Found_Check
    Locate_TPA --> TPA_Found_Check
    Commit_Proposal_Updates --> END_Commit_Proposal_Updates
    START --> |"Run Immediately"| Is_owner_API
    START --> |"Conversion and Distribution Time"| Second_Run_True
    END_Alert_Type(( END )):::endClass
    END_Anything_to_update_check(( END )):::endClass
    END_Partner_Proposal_Type(( END )):::endClass
    END_Problem_Type(( END )):::endClass
    END_Which_Contacts_to_Look_For(( END )):::endClass
    END_Commit_Proposal_Updates(( END )):::endClass
    
    
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
    |Label|Proposal | After Save | Partner Proposal Assignment|
    |Status|Obsolete|
    |Does Require Record Changed To Meet Criteria|✅|
    |Description|Removed advisor lead creation for Sallus (covered by their api connection, leads created directly), adjusted formatted state formula to return null instead of 'Other' when it can't find a match.<br/><br/>Handles proposals before distribution via DE.  Creates partner lead(s), connects contacts to proposal, assigns it to staging user/queue.  After assignment from DE this also sends alert and creates reach out task|
    |Environments|Default|
    |Interview Label|Proposal | After Trigger {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Is_owner_API](#is_owner_api)|
    |Next Node|[Is_owner_API](#is_owner_api)|
    
    
    #### Scheduled Paths
    
    |Label|Name|Offset Number|Offset Unit|Record Field|Time Source|Connector|
    |:-- |:-- |:-- |:-- |:-- |:-- |:--  |
    |Conversion and Distribution Time|Conversion_and_Distribution_Time|2|Minutes|<!-- -->|RecordTriggerEvent|[Second_Run_True](#second_run_true)|
    
    
    #### Filters (logic: **(1 AND ((2 AND 4) OR ((3 OR 7) and 5) OR (13 AND 8)) and 6 AND 9 AND 10 AND (11 OR 12) AND 14) OR 15**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Referrer_Email__c| Is Null|<!-- -->|
    |2|TPA_Sales_Email__c| Is Null|<!-- -->|
    |3|Financial_Professional_Email__c| Is Null|<!-- -->|
    |4|TPA_Contact__c| Is Null|<!-- -->|
    |5|Advisor_Contact__c| Is Null|<!-- -->|
    |6|Plan_ID_First_Synced__c| Not Equal To|dateValue: '1982-08-25'<br/>|
    |7|Advisor_CRD__c| Is Null|<!-- -->|
    |8|OwnerId| Contains|0051G0000069uOp|
    |9|Status__c| Not Equal To|Expired Save/Share|
    |10|Status__c| Not Equal To|Purchased|
    |11|Principal_Id__c| Is Null|<!-- -->|
    |12|Sallus_ID__c| Is Null|<!-- -->|
    |13|Referrer_Type__c| Equal To|Employer|
    |14|Status__c| Not Equal To|Marketing|
    |15|Pending_Alert__c| Equal To|✅|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |advisorContact|SObject|⬜|⬜|⬜|Contact|<!-- -->|
    |contacts2Attach|SObject|✅|⬜|⬜|Contact|<!-- -->|
    |issueMessage|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |leads2Convert|SObject|✅|⬜|⬜|Lead|<!-- -->|
    |leads2ConvertIds|String|✅|⬜|⬜|<!-- -->|<!-- -->|
    |leads2Create|SObject|✅|⬜|⬜|Lead|<!-- -->|
    |newAdvisorLead|SObject|⬜|⬜|⬜|Lead|<!-- -->|
    |newTPALead|SObject|⬜|⬜|⬜|Lead|<!-- -->|
    |secondaryContact|SObject|⬜|⬜|⬜|Contact|<!-- -->|
    |secondRun|Boolean|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |tpaContact|SObject|⬜|⬜|⬜|Contact|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |advisorContactOwnerValid|Boolean|IF({!Simply_Retirement_Proposal} && (CONTAINS({!$Record.Advisor_Contact__r.OwnerId},"00500000006olCp") ||<br/>CONTAINS({!$Record.Advisor_Contact__r.OwnerId},"00500000006vlyn")),TRUE,<br/>IF({!Sallus_Proposal} && (CONTAINS({!$Record.Advisor_Contact__r.OwnerId},"00500000006olCp") ||<br/>CONTAINS({!$Record.Advisor_Contact__r.OwnerId},"00500000006vlyn") ||<br/>CONTAINS({!$Record.Advisor_Contact__r.OwnerId},"0051G0000069ZJZ")),TRUE,FALSE))|Simply BU = Jason, Robby<br/>Sallus BU = Jay, Jason, Robby|
    |advisorMismatchMsg|String|IF({!advisorContactOwnerValid},"Advisor owner mismatched with proposal owner","Advisor owned by someone outside of Business Unit")<br/>+ BR() +<br/>{!$Record.Proposal_Notes__c}|<!-- -->|
    |correctRecordTypeId|String|IF(NOT(ISBLANK({!$Record.Principal_Id__c})),"0121G000000RlheQAC",<br/>IF(NOT(ISBLANK({!$Record.Sallus_ID__c})),"0121G000000RlhjQAC","ERROR NO VALID RECORD TYPE ID"))|<!-- -->|
    |formattedState|String|CASE({!$Record.Financial_Professional_State__c},'AL','Alabama',<br/>'AK','Alaska',<br/>'AZ','Arizona',<br/>'AR','Arkansas',<br/>'CA','California',<br/>'CO','Colorado',<br/>'CT','Connecticut',<br/>'DE','Delaware',<br/>'FL','Florida',<br/>'GA','Georgia',<br/>'HI','Hawaii',<br/>'ID','Idaho',<br/>'IL','Illinois',<br/>'IN','Indiana',<br/>'IA','Iowa',<br/>'KS','Kansas',<br/>'KY','Kentucky',<br/>'LA','Louisiana',<br/>'ME','Maine',<br/>'MD','Maryland',<br/>'MA','Massachusetts',<br/>'MI','Michigan',<br/>'MN','Minnesota',<br/>'MS','Mississippi',<br/>'MO','Missouri',<br/>'MT','Montana',<br/>'NE','Nebraska',<br/>'NV','Nevada',<br/>'NH','New Hampshire',<br/>'NJ','New Jersey',<br/>'NM','New Mexico',<br/>'NY','New York',<br/>'NC','North Carolina',<br/>'ND','North Dakota',<br/>'OH','Ohio',<br/>'OK','Oklahoma',<br/>'OR','Oregon',<br/>'PA','Pennsylvania',<br/>'RI','Rhode Island',<br/>'SC','South Carolina',<br/>'SD','South Dakota',<br/>'TN','Tennessee',<br/>'TX','Texas',<br/>'UT','Utah',<br/>'VT','Vermont',<br/>'VA','Virginia',<br/>'WA','Washington',<br/>'WV','West Virginia',<br/>'WI','Wisconsin',<br/>'WY','Wyoming',<br/>'DC','District of Columbia',<br/>null)|Converts financial professional state codes to full state name for lead creation.  If it can't find a state code match, returns null|
    |isNew|Boolean|isnew()|<!-- -->|
    |newRecord|Boolean|ISNEW()|<!-- -->|
    |referrerId|String|IF(AND(ISPICKVAL({!$Record.Referrer_Type__c},"Advisor"),NOT(ISBLANK({!$Record.Advisor_Contact__c}))),{!$Record.Advisor_Contact__c},<br/>IF(AND(ISPICKVAL({!$Record.Referrer_Type__c},"TPA"),NOT(ISBLANK({!$Record.TPA_Contact__c}))),{!$Record.TPA_Contact__c},""))|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Send_Manual_Assignment_Alert
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send Manual Assignment Alert|
    |Action Type|Email Alert|
    |Action Name|Proposal__c.Partner_Proposal_Needs_Manual_Assignment|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Proposal__c.Partner_Proposal_Needs_Manual_Assignment|
    |Offset|0|
    | SObject Row Id (input)|$Record.Id|
    |Connector|[Unmark_Pending_Alert](#unmark_pending_alert)|
    
    
    ### Send_Quick_Quote_Notif
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send Quick Quote Notif|
    |Action Type|Email Alert|
    |Action Name|Proposal__c.Quick_Quote_Generated|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Proposal__c.Quick_Quote_Generated|
    |Offset|0|
    | SObject Row Id (input)|$Record.Id|
    |Connector|[Create_Quick_Quote_Reach_Out](#create_quick_quote_reach_out)|
    
    
    ### Send_Sallus_Proposal_Generated_Alert
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send Sallus Proposal Generated Alert|
    |Action Type|Email Alert|
    |Action Name|Proposal__c.Sallus_Proposal_Generated|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Proposal__c.Sallus_Proposal_Generated|
    |Offset|0|
    | SObject Row Id (input)|$Record.Id|
    |Connector|[Create_Reach_Out_Sallus](#create_reach_out_sallus)|
    
    
    ### Send_Simply_Proposal_Generated_Alert
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send Simply Proposal Generated Alert|
    |Action Type|Email Alert|
    |Action Name|Proposal__c.Proposal_Generated|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Proposal__c.Proposal_Generated|
    |Offset|0|
    | SObject Row Id (input)|$Record.Id|
    |Connector|[Create_Reach_Out_Simply](#create_reach_out_simply)|
    
    
    ### Add_Advisor_to_Lead_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add Advisor to Lead Collection|
    |Connector|[TPA_Needed_Check](#tpa_needed_check)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |leads2Create| Add|newAdvisorLead|
    
    
    
    
    ### Add_TPA_Phone
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add TPA Phone #|
    |Connector|[Add_TPA_to_Collection](#add_tpa_to_collection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |newTPALead.Phone| Assign|$Record.Contact_Phone_Number__c|
    
    
    
    
    ### Add_TPA_to_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add TPA to Collection|
    |Connector|[Are_there_leads_to_create](#are_there_leads_to_create)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |leads2Create| Add|newTPALead|
    
    
    
    
    ### Assign_Advisor_Values_to_Proposal
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Advisor Values to Proposal|
    |Connector|[TPA_Needed_Check](#tpa_needed_check)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Advisor_Account__c| Assign|advisorContact.AccountId|
    |$Record.Advisor_Contact__c| Assign|advisorContact.Id|
    |$Record.Advisor_CRD__c| Assign|advisorContact.CRD_Number__c|
    |$Record.Advisor_NPN__c| Assign|advisorContact.NPN_Number__c|
    
    
    
    
    ### Assign_to_Staging_Queue
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign to Staging Queue|
    |Connector|[Anything_to_update_check](#anything_to_update_check)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.OwnerId| Assign|00GHo000001jfX0|
    
    
    
    
    ### Assign_TPA_Values_to_Proposal
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign TPA Values to Proposal|
    |Connector|[Are_there_leads_to_create](#are_there_leads_to_create)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.TPA_Contact__c| Assign|tpaContact.Id|
    |$Record.TPA_Account__c| Assign|tpaContact.AccountId|
    |$Record.TPA_EIN__c| Assign|tpaContact.Account.Employer_Identification_Number_EIN__c|
    
    
    
    
    ### Copy_1_of_Add_issue_msg_to_notes
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Copy 1 of Add issue msg to notes|
    |Connector|[Ready_for_Assignment_Check](#ready_for_assignment_check)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Proposal_Notes__c| Assign|issueMessage|
    |$Record.Ownership_Override__c| Assign|✅|
    
    
    
    
    ### Copy_1_of_Assign_Advisor_Values_to_Proposal
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Copy 1 of Assign Advisor Values to Proposal|
    |Connector|[Prop_Value_Assignment_Loop](#prop_value_assignment_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Advisor_Account__c| Assign|Prop_Value_Assignment_Loop.AccountId|
    |$Record.Advisor_Contact__c| Assign|Prop_Value_Assignment_Loop.Id|
    |$Record.Advisor_CRD__c| Assign|Prop_Value_Assignment_Loop.CRD_Number__c|
    |$Record.Advisor_NPN__c| Assign|Prop_Value_Assignment_Loop.NPN_Number__c|
    
    
    
    
    ### Copy_1_of_Assign_TPA_Values_to_Proposal
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Copy 1 of Assign TPA Values to Proposal|
    |Connector|[Prop_Value_Assignment_Loop](#prop_value_assignment_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.TPA_Contact__c| Assign|Prop_Value_Assignment_Loop.Id|
    |$Record.TPA_Account__c| Assign|Prop_Value_Assignment_Loop.AccountId|
    |$Record.TPA_EIN__c| Assign|Prop_Value_Assignment_Loop.Account.Employer_Identification_Number_EIN__c|
    
    
    
    
    ### Copy_1_of_Copy_1_of_Add_issue_msg_to_notes
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Copy 1 of Copy 1 of Add issue msg to notes|
    |Connector|[Ready_for_Assignment_Check](#ready_for_assignment_check)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Proposal_Notes__c| Assign|issueMessage|
    
    
    
    
    ### Define_Advisor_Lead_Simply
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Define Advisor Lead Simply|
    |Connector|[Add_Advisor_to_Lead_Collection](#add_advisor_to_lead_collection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |newAdvisorLead.Email| Assign|$Record.Financial_Professional_Email__c|
    |newAdvisorLead.FirstName| Assign|$Record.Financial_Professional_First_Name__c|
    |newAdvisorLead.LastName| Assign|$Record.Financial_Professional_Last_Name__c|
    |newAdvisorLead.Phone| Assign|$Record.Financial_Professional_Phone__c|
    |newAdvisorLead.Company| Assign|$Record.Firm_Name__c|
    |newAdvisorLead.Product_Type__c| Assign|401(k)|
    |newAdvisorLead.Business_Unit__c| Assign|Simply Retirement|
    |newAdvisorLead.Territory__c| Assign|Major Partner|
    |newAdvisorLead.Lead_Type__c| Assign|Advisor|
    |newAdvisorLead.Role__c| Assign|Advisor|
    |newAdvisorLead.State| Assign|formattedState|
    |newAdvisorLead.LeadSource| Assign|Simply Retirement|
    |newAdvisorLead.LeadSourceDetail__c| Assign|Simply Advisor|
    |newAdvisorLead.Method_of_First_Contact__c| Assign|Partner Referral|
    |newAdvisorLead.OwnerId| Assign|00G1G000001ZWmt|
    |newAdvisorLead.RecordTypeId| Assign|012000000000n0fAAA|
    |newAdvisorLead.Lead_Origin__c| Assign|Ubiquity Generated|
    |newAdvisorLead.Connected_Partner__c| Assign|Simply Retirement|
    |newAdvisorLead.Business_Industry__c| Assign|Finance|
    
    
    
    
    ### Define_Issue_Message_Advisor
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Define Issue Message Advisor|
    |Connector|[Were_the_expected_contacts_found](#were_the_expected_contacts_found)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |issueMessage| Assign|"Proposal is missing an expected Advisor""|
    
    
    
    
    ### Define_Issue_Message_Both
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Define Issue Message Both|
    |Connector|[Were_the_expected_contacts_found](#were_the_expected_contacts_found)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |issueMessage| Assign|"Proposal is missing an expected advisor and TPA"|
    
    
    
    
    ### Define_Issue_Message_TPA
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Define Issue Message TPA|
    |Connector|[Were_the_expected_contacts_found](#were_the_expected_contacts_found)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |issueMessage| Assign|"Proposal is missing an expected TPA""|
    
    
    
    
    ### Define_TPA_Lead
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Define TPA Lead|
    |Connector|[Is_this_a_TPA_referral_QQ](#is_this_a_tpa_referral_qq)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |newTPALead.Email| Assign|$Record.TPA_Sales_Email__c|
    |newTPALead.FirstName| Assign|$Record.TPA_Sales_First_Name__c|
    |newTPALead.LastName| Assign|$Record.TPA_Sales_Last_Name__c|
    |newTPALead.Company| Assign|$Record.TPA_Firm_Name__c|
    |newTPALead.Product_Type__c| Assign|401(k)|
    |newTPALead.Business_Unit__c| Assign|Simply Retirement|
    |newTPALead.Lead_Type__c| Assign|TPA|
    |newTPALead.Role__c| Assign|TPA - Sales|
    |newTPALead.LeadSource| Assign|Simply Retirement|
    |newTPALead.LeadSourceDetail__c| Assign|Simply TPA|
    |newTPALead.Method_of_First_Contact__c| Assign|Partner Referral|
    |newTPALead.OwnerId| Assign|00G1G000001ZWmt|
    |newTPALead.RecordTypeId| Assign|012000000000n0fAAA|
    |newTPALead.Connected_Partner__c| Assign|Simply Retirement|
    |newTPALead.Lead_Origin__c| Assign|Ubiquity Generated|
    |newTPALead.Business_Industry__c| Assign|Finance|
    |newTPALead.Company_FEIN__c| Assign|$Record.TPA_EIN__c|
    |newTPALead.State| Assign|formattedState|
    
    
    
    
    ### Needs_Manual_Assignment
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Needs Manual Assignment|
    |Connector|[Ready_for_Assignment_Check](#ready_for_assignment_check)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Ownership_Override__c| Assign|✅|
    |$Record.Proposal_Notes__c| Assign|advisorMismatchMsg|
    
    
    
    
    ### Needs_manual_assignment2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Needs manual assignment2|
    |Connector|[Ready_for_Assignment_Check](#ready_for_assignment_check)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Proposal_Notes__c| Assign|issueMessage|
    |$Record.Ownership_Override__c| Assign|✅|
    
    
    
    
    ### Second_Run_True
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Second Run True|
    |Connector|[Is_owner_API](#is_owner_api)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |secondRun| Assign|✅|
    
    
    
    
    ### Set_Correct_Record_Type_ID
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Set Correct Record Type ID|
    |Connector|isGoTo: true<br/>targetReference: Advisor_Needed_Check<br/>|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.RecordTypeId| Assign|correctRecordTypeId|
    
    
    
    
    ### Unmark_Pending_Alert
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Unmark Pending Alert|
    |Connector|[Anything_to_update_check](#anything_to_update_check)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Pending_Alert__c| Assign|⬜|
    
    
    
    
    ### Advisor_Found_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Advisor Found Check|
    |Default Connector|[TPA_Needed_Check](#tpa_needed_check)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Advisor_Exists (Advisor Exists)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Advisor_Values_to_Proposal](#assign_advisor_values_to_proposal)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|advisorContact.Id| Is Null|⬜|
    
    
    
    
    #### Rule Create_Advisor_Simply (Create Advisor Simply)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Define_Advisor_Lead_Simply](#define_advisor_lead_simply)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Financial_Professional_First_Name__c| Is Null|⬜|
    |2|$Record.Financial_Professional_Last_Name__c| Is Null|⬜|
    |3|$Record.Financial_Professional_Email__c| Is Null|⬜|
    |4|$Record.Firm_Name__c| Is Null|⬜|
    |5|Needs_Advisor_Simply| Equal To|✅|
    |6|isNew| Equal To|✅|
    
    
    
    
    #### Rule Missing_Advisor_Sallus (Missing Advisor Sallus)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[TPA_Needed_Check](#tpa_needed_check)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Sallus_Proposal| Equal To|✅|
    |2|$Record.Referrer_Email__c| Not Equal To|$Record.Company_Email__c|
    |3|$Record.Referrer_Email__c| Is Blank|⬜|
    
    
    
    
    ### Advisor_Needed_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Advisor Needed Check|
    |Default Connector|[TPA_Needed_Check](#tpa_needed_check)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Needs_Advisor_Simply (Needs Advisor Simply)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Locate_Advisor](#locate_advisor)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Financial_Professional_Email__c| Is Null|⬜|
    |2|$Record.Advisor_Contact__c| Is Null|✅|
    |3|Simply_Retirement_Proposal| Equal To|✅|
    
    
    
    
    #### Rule Needs_Advisor_Sallus (Needs Advisor Sallus)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Locate_Advisor_Sallus](#locate_advisor_sallus)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Referrer_Email__c| Is Null|⬜|
    |2|$Record.Advisor_Contact__c| Is Null|✅|
    |3|Sallus_Proposal| Equal To|✅|
    
    
    
    
    ### Alert_Type
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Alert Type|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Problem_Catch (Problem Catch)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Problem_Type](#problem_type)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Problem_Advisor_owned_by_someone_outside_of_BU| Equal To|✅|
    |2|X2nd_Run_Problem_missing_advisor| Equal To|✅|
    |3|X2nd_Run_Problem_missing_both_advisor_and_tpa| Equal To|✅|
    |4|X2nd_Run_Problem_missing_tpa| Equal To|✅|
    
    
    
    
    #### Rule Quick_Quote_Generated (Quick Quote Generated)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Send_Quick_Quote_Notif](#send_quick_quote_notif)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Stage_Flag__c| Equal To|Quick Quote|
    
    
    
    
    #### Rule Simply_Plan_Proposal_Generated (Simply Plan Proposal Generated)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Send_Simply_Proposal_Generated_Alert](#send_simply_proposal_generated_alert)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Principal_Id__c| Is Null|⬜|
    
    
    
    
    #### Rule Sallus_Proposal_Generated (Sallus Proposal Generated)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Send_Sallus_Proposal_Generated_Alert](#send_sallus_proposal_generated_alert)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Sallus_ID__c| Is Null|⬜|
    
    
    
    
    ### Anything_to_update_check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Anything to update check|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Update_Record (Update Record)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Commit_Proposal_Updates](#commit_proposal_updates)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|[Assign_Advisor_Values_to_Proposal](#assign_advisor_values_to_proposal)| Was Visited|✅|
    |2|[Assign_to_Staging_Queue](#assign_to_staging_queue)| Was Visited|✅|
    |3|[Assign_TPA_Values_to_Proposal](#assign_tpa_values_to_proposal)| Was Visited|✅|
    |4|[Copy_1_of_Assign_Advisor_Values_to_Proposal](#copy_1_of_assign_advisor_values_to_proposal)| Was Visited|✅|
    |5|[Copy_1_of_Assign_TPA_Values_to_Proposal](#copy_1_of_assign_tpa_values_to_proposal)| Was Visited|✅|
    |6|[Needs_manual_assignment2](#needs_manual_assignment2)| Was Visited|✅|
    |7|[Set_Correct_Record_Type_ID](#set_correct_record_type_id)| Was Visited|✅|
    |8|[Unmark_Pending_Alert](#unmark_pending_alert)| Was Visited|✅|
    |9|[Needs_Manual_Assignment](#needs_manual_assignment)| Was Visited|✅|
    |10|[Copy_1_of_Add_issue_msg_to_notes](#copy_1_of_add_issue_msg_to_notes)| Was Visited|✅|
    |11|[Copy_1_of_Copy_1_of_Add_issue_msg_to_notes](#copy_1_of_copy_1_of_add_issue_msg_to_notes)| Was Visited|✅|
    
    
    
    
    ### Are_there_leads_to_create
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Are there leads to create|
    |Default Connector|[Proposal_Verification](#proposal_verification)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Lead_collection_not_empty (Lead collection not empty)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Create_Leads](#create_leads)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|leads2Create| Is Null|⬜|
    
    
    
    
    ### Contact_Type_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Contact Type Check|
    |Default Connector|[Prop_Value_Assignment_Loop](#prop_value_assignment_loop)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule TPA (TPA)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Copy_1_of_Assign_TPA_Values_to_Proposal](#copy_1_of_assign_tpa_values_to_proposal)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Prop_Value_Assignment_Loop.Role__c| Contains|TPA|
    
    
    
    
    #### Rule Advisor (Advisor)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Copy_1_of_Assign_Advisor_Values_to_Proposal](#copy_1_of_assign_advisor_values_to_proposal)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Prop_Value_Assignment_Loop.Role__c| Contains|Advisor|
    
    
    
    
    ### Is_owner_API
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Is owner API|
    |Default Connector|[Partner_Proposal_Type](#partner_proposal_type)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule X2nd_run_non_API_catch (2nd run non API catch)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|secondRun| Equal To|✅|
    |2|$Record.OwnerId| Not Equal To|0051G0000069uOpQAI|
    |3|$Record.OwnerId| Not Equal To|005Uo000002Cn3pIAC|
    
    
    
    
    #### Rule Owner_non_API (Owner non API)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Partner_Proposal_Type](#partner_proposal_type)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.OwnerId| Not Equal To|0051G0000069uOpQAI|
    |2|$Record.OwnerId| Not Equal To|005Uo000002Cn3pIAC|
    
    
    
    
    ### Is_this_a_TPA_referral_QQ
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Is this a TPA referral QQ|
    |Default Connector|[Add_TPA_to_Collection](#add_tpa_to_collection)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule QQ_From_TPA (QQ From TPA)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Add_TPA_Phone](#add_tpa_phone)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Referrer_Type__c| Equal To|TPA|
    |2|$Record.Stage_Flag__c| Equal To|Quick Quote|
    
    
    
    
    ### Partner_Proposal_Type
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Partner Proposal Type|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Simply_Retirement_Proposal (Simply Retirement Proposal)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Record_Type_Correct_Check](#record_type_correct_check)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Principal_Id__c| Is Null|⬜|
    
    
    
    
    #### Rule Sallus_Proposal (Sallus Proposal)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Record_Type_Correct_Check](#record_type_correct_check)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Sallus_ID__c| Is Null|⬜|
    
    
    
    
    ### Problem_Type
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Problem Type|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Missing_Contact_s (Missing Contact(s))
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Create_Missing_Contact_Task](#create_missing_contact_task)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Ownership_Override__c| Equal To|⬜|
    
    
    
    
    #### Rule Invalid_Advisor_Owner (Invalid Advisor Owner)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Create_Manual_Assignment_Task](#create_manual_assignment_task)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|advisorContactOwnerValid| Equal To|✅|
    
    
    
    
    ### Proposal_Verification
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Proposal Verification|
    |Default Connector|[Ready_for_Assignment_Check](#ready_for_assignment_check)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Problem_Advisor_owned_by_someone_outside_of_BU (Problem - Advisor owned by someone outside of BU)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Needs_Manual_Assignment](#needs_manual_assignment)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Advisor_Contact__c| Is Null|⬜|
    |2|advisorContactOwnerValid| Equal To|⬜|
    
    
    
    
    #### Rule X2nd_Run_Problem_missing_both_advisor_and_tpa (2nd Run Problem - missing both advisor and tpa)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Needs_manual_assignment2](#needs_manual_assignment2)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|secondRun| Equal To|✅|
    |2|$Record.Advisor_Contact__c| Is Null|✅|
    |3|$Record.TPA_Contact__c| Is Null|✅|
    |4|[Define_Issue_Message_Both](#define_issue_message_both)| Was Visited|✅|
    
    
    
    
    #### Rule X2nd_Run_Problem_missing_advisor (2nd Run Problem - missing advisor)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Copy_1_of_Add_issue_msg_to_notes](#copy_1_of_add_issue_msg_to_notes)|
    |Condition Logic|1 AND 2 AND (3 OR 4)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|secondRun| Equal To|✅|
    |2|$Record.Advisor_Contact__c| Is Null|✅|
    |3|[Define_Issue_Message_Advisor](#define_issue_message_advisor)| Was Visited|✅|
    |4|[Define_Issue_Message_Both](#define_issue_message_both)| Was Visited|✅|
    
    
    
    
    #### Rule X2nd_Run_Problem_missing_tpa (2nd Run Problem - missing tpa)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Copy_1_of_Copy_1_of_Add_issue_msg_to_notes](#copy_1_of_copy_1_of_add_issue_msg_to_notes)|
    |Condition Logic|1 AND 2 AND (3 OR 4)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|secondRun| Equal To|✅|
    |2|$Record.TPA_Contact__c| Is Null|✅|
    |3|[Define_Issue_Message_TPA](#define_issue_message_tpa)| Was Visited|✅|
    |4|[Define_Issue_Message_Both](#define_issue_message_both)| Was Visited|✅|
    
    
    
    
    ### Ready_for_Assignment_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Ready for Assignment Check|
    |Default Connector|[Anything_to_update_check](#anything_to_update_check)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Push_to_DE (Push to DE)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_to_Staging_Queue](#assign_to_staging_queue)|
    |Condition Logic|(1 OR (2 AND 4 AND 5)) AND 3|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|secondRun| Equal To|✅|
    |2|[Create_Leads](#create_leads)| Was Visited|⬜|
    |3|Owner_non_API| Equal To|⬜|
    |4|isNew| Equal To|✅|
    |5|Missing_Advisor_Sallus| Not Equal To|✅|
    
    
    
    
    #### Rule Record_Newly_Assigned (Record Newly Assigned)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Alert_Type](#alert_type)|
    |Condition Logic|1 AND (2 OR 3)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Owner_non_API| Equal To|✅|
    |2|$Record.OwnerId| Is Changed|✅|
    |3|$Record.Pending_Alert__c| Equal To|✅|
    
    
    
    
    ### Record_Type_Correct_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Record Type Correct Check|
    |Default Connector|[Set_Correct_Record_Type_ID](#set_correct_record_type_id)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule X2nd_Run (2nd Run)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Which_Contacts_to_Look_For](#which_contacts_to_look_for)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|secondRun| Equal To|✅|
    
    
    
    
    #### Rule Record_Type_Correct (Record Type Correct)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Advisor_Needed_Check](#advisor_needed_check)|
    |Condition Logic|(1 and 2) or (3 and 4)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Simply_Retirement_Proposal| Equal To|✅|
    |2|$Record.RecordTypeId| Equal To|0121G000000RlheQAC|
    |3|Sallus_Proposal| Equal To|✅|
    |4|$Record.RecordTypeId| Equal To|0121G000000RlhjQAC|
    
    
    
    
    ### TPA_Found_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|TPA Found Check|
    |Default Connector|[Are_there_leads_to_create](#are_there_leads_to_create)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule TPA_Exists (TPA Exists)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_TPA_Values_to_Proposal](#assign_tpa_values_to_proposal)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|tpaContact| Is Null|⬜|
    
    
    
    
    #### Rule Create_TPA_Lead (Create TPA Lead)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Define_TPA_Lead](#define_tpa_lead)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.TPA_Firm_Name__c| Is Null|⬜|
    |2|$Record.TPA_Sales_First_Name__c| Is Null|⬜|
    |3|$Record.TPA_Sales_Last_Name__c| Is Null|⬜|
    |4|$Record.TPA_Sales_Email__c| Is Null|⬜|
    |5|isNew| Equal To|✅|
    
    
    
    
    ### TPA_Needed_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|TPA Needed Check|
    |Default Connector|[Are_there_leads_to_create](#are_there_leads_to_create)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Needs_TPA (Needs TPA)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Locate_TPA](#locate_tpa)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.TPA_Sales_Email__c| Is Null|⬜|
    |2|$Record.TPA_Sales_First_Name__c| Is Null|⬜|
    |3|$Record.TPA_Sales_Last_Name__c| Is Null|⬜|
    |4|$Record.TPA_Contact__c| Is Null|✅|
    
    
    
    
    ### Were_the_expected_contacts_found
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Were the expected contacts found|
    |Default Connector|[Proposal_Verification](#proposal_verification)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Proceed_with_Assignment (Proceed with Assignment)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Prop_Value_Assignment_Loop](#prop_value_assignment_loop)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|contacts2Attach| Is Null|⬜|
    
    
    
    
    ### Which_Contacts_to_Look_For
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Which Contacts to Look For|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Need_Advisor_Only (Need Advisor Only)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Find_New_Advisor_Contact](#find_new_advisor_contact)|
    |Condition Logic|1 AND (2 OR (6 AND 7)) AND (3 OR 4 OR 5)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Advisor_Contact__c| Is Null|✅|
    |2|$Record.Financial_Professional_Email__c| Is Null|⬜|
    |3|$Record.TPA_Sales_Email__c| Is Null|✅|
    |4|$Record.TPA_Contact__c| Is Null|⬜|
    |5|Sallus_Proposal| Equal To|✅|
    |6|$Record.Referrer_Type__c| Equal To|Advisor|
    |7|$Record.Referrer_Email__c| Is Null|⬜|
    
    
    
    
    #### Rule Need_TPA_Only (Need TPA Only)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Find_New_TPA_Contact](#find_new_tpa_contact)|
    |Condition Logic|1 AND 2 AND (3 OR 4)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.TPA_Contact__c| Is Null|✅|
    |2|$Record.TPA_Sales_Email__c| Is Null|⬜|
    |3|$Record.Financial_Professional_Email__c| Is Null|✅|
    |4|$Record.Advisor_Contact__c| Is Null|⬜|
    
    
    
    
    #### Rule Need_Both (Need Both)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Find_Both_New_Contacts](#find_both_new_contacts)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Advisor_Contact__c| Is Null|✅|
    |2|$Record.TPA_Contact__c| Is Null|✅|
    |3|$Record.Financial_Professional_Email__c| Is Null|⬜|
    |4|$Record.TPA_Sales_Email__c| Is Null|⬜|
    
    
    
    
    ### Prop_Value_Assignment_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Prop Value Assignment Loop|
    |Collection Reference|contacts2Attach|
    |Iteration Order|Asc|
    |Next Value Connector|[Contact_Type_Check](#contact_type_check)|
    |No More Values Connector|[Proposal_Verification](#proposal_verification)|
    
    
    ### Create_Leads
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Label|Create Leads|
    |Input Reference|leads2Create|
    |Connector|[Proposal_Verification](#proposal_verification)|
    
    
    ### Create_Manual_Assignment_Task
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Task|
    |Label|Create Manual Assignment Task|
    |Store Output Automatically|✅|
    |Connector|[Send_Manual_Assignment_Alert](#send_manual_assignment_alert)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |ActivityDate|$Flow.CurrentDate|
    |OwnerId|$Record.OwnerId|
    |Priority|Normal|
    |Status|Not Started|
    |Subject|New Partner Proposal - Needs Manual Assignment|
    |WhatId|$Record.Id|
    
    
    
    
    ### Create_Missing_Contact_Task
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Task|
    |Label|Create Missing Contact Task|
    |Store Output Automatically|✅|
    |Connector|[Unmark_Pending_Alert](#unmark_pending_alert)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |ActivityDate|$Flow.CurrentDate|
    |OwnerId|$Record.OwnerId|
    |Priority|Normal|
    |Status|Not Started|
    |Subject|New Partner Proposal - Missing Related Contact(s)|
    |WhatId|$Record.Id|
    
    
    
    
    ### Create_Quick_Quote_Reach_Out
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Task|
    |Label|Create Quick Quote Reach Out|
    |Store Output Automatically|✅|
    |Connector|[Unmark_Pending_Alert](#unmark_pending_alert)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |ActivityDate|$Flow.CurrentDate|
    |OwnerId|$Record.OwnerId|
    |Priority|Normal|
    |Status|Not Started|
    |Subject|New Simply Quick Quote - Reach Out to Referrer|
    |WhatId|$Record.Id|
    |WhoId|referrerId|
    
    
    
    
    ### Create_Reach_Out_Sallus
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Task|
    |Label|Create Reach Out Sallus|
    |Store Output Automatically|✅|
    |Connector|[Unmark_Pending_Alert](#unmark_pending_alert)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |ActivityDate|$Flow.CurrentDate|
    |OwnerId|$Record.OwnerId|
    |Priority|Normal|
    |Status|Not Started|
    |Subject|New Sallus Proposal From {!$Record.Advisor_Contact__r.Full_Name__c}|
    |WhatId|$Record.Id|
    |WhoId|referrerId|
    
    
    
    
    ### Create_Reach_Out_Simply
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Task|
    |Label|Create Reach Out Simply|
    |Store Output Automatically|✅|
    |Connector|[Unmark_Pending_Alert](#unmark_pending_alert)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |ActivityDate|$Flow.CurrentDate|
    |OwnerId|$Record.OwnerId|
    |Priority|Normal|
    |Status|Not Started|
    |Subject|New Simply Retirement Proposal for {!$Record.Client_Company_Name__c}|
    |WhatId|$Record.Id|
    |WhoId|referrerId|
    
    
    
    
    ### Find_Both_New_Contacts
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Find Both New Contacts|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|contacts2Attach|
    |Queried Fields|- Id<br/>- AccountId<br/>- NPN_Number__c<br/>- CRD_Number__c<br/>- Role__c<br/>- OwnerId<br/>|
    |Connector|[Define_Issue_Message_Both](#define_issue_message_both)|
    
    
    #### Filters (logic: **or**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Email| Equal To|$Record.TPA_Sales_Email__c|
    |2|Email| Equal To|$Record.Financial_Professional_Email__c|
    
    
    
    
    ### Find_New_Advisor_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Find New Advisor Contact|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|contacts2Attach|
    |Queried Fields|- Id<br/>- AccountId<br/>- NPN_Number__c<br/>- CRD_Number__c<br/>- Role__c<br/>- OwnerId<br/>|
    |Connector|[Define_Issue_Message_Advisor](#define_issue_message_advisor)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Email| Equal To|$Record.Financial_Professional_Email__c|
    
    
    
    
    ### Find_New_TPA_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Find New TPA Contact|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|contacts2Attach|
    |Queried Fields|- Id<br/>- AccountId<br/>- NPN_Number__c<br/>- CRD_Number__c<br/>- Role__c<br/>- OwnerId<br/>|
    |Connector|[Define_Issue_Message_TPA](#define_issue_message_tpa)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Email| Equal To|$Record.TPA_Sales_Email__c|
    
    
    
    
    ### Locate_Advisor
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Locate Advisor|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|advisorContact|
    |Queried Fields|- Id<br/>- AccountId<br/>- CRD_Number__c<br/>- NPN_Number__c<br/>- OwnerId<br/>|
    |Sort Field|CreatedDate|
    |Sort Order|Desc|
    |Connector|isGoTo: true<br/>targetReference: Advisor_Found_Check<br/>|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Email| Equal To|$Record.Financial_Professional_Email__c|
    
    
    
    
    ### Locate_Advisor_Sallus
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Locate Advisor Sallus|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|advisorContact|
    |Queried Fields|- Id<br/>- AccountId<br/>- CRD_Number__c<br/>- NPN_Number__c<br/>- OwnerId<br/>|
    |Sort Field|CreatedDate|
    |Sort Order|Desc|
    |Connector|[Advisor_Found_Check](#advisor_found_check)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Email| Equal To|$Record.Referrer_Email__c|
    
    
    
    
    ### Locate_TPA
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Locate TPA|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|tpaContact|
    |Queried Fields|- Id<br/>- AccountId<br/>- OwnerId<br/>|
    |Sort Field|CreatedDate|
    |Sort Order|Desc|
    |Connector|[TPA_Found_Check](#tpa_found_check)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Email| Equal To|$Record.TPA_Sales_Email__c|
    
    
    
    
    ### Commit_Proposal_Updates
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Commit Proposal Updates|
    |Input Reference|$Record|
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

