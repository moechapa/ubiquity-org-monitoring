# Case_Before_Trigger_Update_Account_Based_on_Contact history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Case_Before_Trigger_Update_Account_Based_on_Contact-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record Before Save</b>"]):::startClass
    click START "#general-information" "963765566"
    
    assign_init_to_new_values[\"🟰 <em></em><br/>assign init to new values"/]:::assignments
    click assign_init_to_new_values "#assign_init_to_new_values" "3330381193"
    
    Copy_1_of_Define_Contact_Count[\"🟰 <em></em><br/>Copy 1 of Define Contact Count"/]:::assignments
    click Copy_1_of_Define_Contact_Count "#copy_1_of_define_contact_count" "2188905548"
    
    Define_Account[\"🟰 <em></em><br/>Define Account"/]:::assignments
    click Define_Account "#define_account" "2405773352"
    
    Define_Case_Contact[\"🟰 <em></em><br/>Define Case Contact"/]:::assignments
    click Define_Case_Contact "#define_case_contact" "727006170"
    
    Define_Contact_Count[\"🟰 <em></em><br/>Define Contact Count"/]:::assignments
    click Define_Contact_Count "#define_contact_count" "3489924675"
    
    Define_Existing_Account[\"🟰 <em></em><br/>Define Existing Account"/]:::assignments
    click Define_Existing_Account "#define_existing_account" "969990690"
    
    Define_Newest_Inactive_Plan[\"🟰 <em></em><br/>Define Newest Inactive Plan"/]:::assignments
    click Define_Newest_Inactive_Plan "#define_newest_inactive_plan" "2208680748"
    
    Define_Phone_Vars_AC[\"🟰 <em></em><br/>Define Phone Vars AC"/]:::assignments
    click Define_Phone_Vars_AC "#define_phone_vars_ac" "1887550199"
    
    Define_Phone_Vars_Zoom[\"🟰 <em></em><br/>Define Phone Vars Zoom"/]:::assignments
    click Define_Phone_Vars_Zoom "#define_phone_vars_zoom" "787231366"
    
    Define_Plan_Count[\"🟰 <em></em><br/>Define Plan Count"/]:::assignments
    click Define_Plan_Count "#define_plan_count" "2334838780"
    
    Define_Searchable_Email[\"🟰 <em></em><br/>Define Searchable Email"/]:::assignments
    click Define_Searchable_Email "#define_searchable_email" "603574384"
    
    Record_Initial_Results[\"🟰 <em></em><br/>Record Initial Results"/]:::assignments
    click Record_Initial_Results "#record_initial_results" "3543058764"
    
    Set_New_Values[\"🟰 <em></em><br/>Set New Values"/]:::assignments
    click Set_New_Values "#set_new_values" "2266995779"
    
    Unsafe_to_search_plan[\"🟰 <em></em><br/>Unsafe to search plan"/]:::assignments
    click Unsafe_to_search_plan "#unsafe_to_search_plan" "135483592"
    
    Unsafe_to_search_second_plan[\"🟰 <em></em><br/>Unsafe to search second plan"/]:::assignments
    click Unsafe_to_search_second_plan "#unsafe_to_search_second_plan" "958562814"
    
    Wipe_Account[\"🟰 <em></em><br/>Wipe Account"/]:::assignments
    click Wipe_Account "#wipe_account" "4061117787"
    
    Wipe_New_Values[\"🟰 <em></em><br/>Wipe New Values"/]:::assignments
    click Wipe_New_Values "#wipe_new_values" "3442249450"
    
    Active_Plan_Stamp_Check{"🔀 <em></em><br/>Active Plan Stamp Check"}:::decisions
    click Active_Plan_Stamp_Check "#active_plan_stamp_check" "3265287628"
    
    Case_Origin_Check{"🔀 <em></em><br/>Case Origin Check"}:::decisions
    click Case_Origin_Check "#case_origin_check" "2024567613"
    
    Check_for_potential_secondary_search{"🔀 <em></em><br/>Check for potential secondary search"}:::decisions
    click Check_for_potential_secondary_search "#check_for_potential_secondary_search" "122264349"
    
    Check_Init_Result{"🔀 <em></em><br/>Check Init Result"}:::decisions
    click Check_Init_Result "#check_init_result" "2266649465"
    
    Check_Primary_Email{"🔀 <em></em><br/>Check Primary Email"}:::decisions
    click Check_Primary_Email "#check_primary_email" "749562390"
    
    Contact_Found_Check{"🔀 <em></em><br/>Contact Found Check"}:::decisions
    click Contact_Found_Check "#contact_found_check" "3072495551"
    
    Contact_Loop_Role_Check{"🔀 <em></em><br/>Contact Loop Role Check"}:::decisions
    click Contact_Loop_Role_Check "#contact_loop_role_check" "2534895576"
    
    Eligible_for_retry_check{"🔀 <em></em><br/>Eligible for retry check"}:::decisions
    click Eligible_for_retry_check "#eligible_for_retry_check" "2043689888"
    
    Email_Found_Check{"🔀 <em></em><br/>Email Found Check"}:::decisions
    click Email_Found_Check "#email_found_check" "3333717033"
    
    Is_Contact_or_Acct_Missing{"🔀 <em></em><br/>Is Contact or Acct Missing"}:::decisions
    click Is_Contact_or_Acct_Missing "#is_contact_or_acct_missing" "4191258968"
    
    Is_Plan_Missing{"🔀 <em></em><br/>Is Plan Missing"}:::decisions
    click Is_Plan_Missing "#is_plan_missing" "3906676129"
    
    Is_plan_not_Inactive{"🔀 <em></em><br/>Is plan not Inactive"}:::decisions
    click Is_plan_not_Inactive "#is_plan_not_inactive" "1041173402"
    
    Multiple_Email_Contacts_Check{"🔀 <em></em><br/>Multiple Email Contacts Check"}:::decisions
    click Multiple_Email_Contacts_Check "#multiple_email_contacts_check" "1538519582"
    
    new_vs_init_check{"🔀 <em></em><br/>new vs init check"}:::decisions
    click new_vs_init_check "#new_vs_init_check" "1148855430"
    
    Phone_Number_Validity_Check{"🔀 <em></em><br/>Phone Number Validity Check"}:::decisions
    click Phone_Number_Validity_Check "#phone_number_validity_check" "4267997346"
    
    Plan_Found_Check{"🔀 <em></em><br/>Plan Found Check"}:::decisions
    click Plan_Found_Check "#plan_found_check" "3697324212"
    
    Primary_Email_Contact_Check{"🔀 <em></em><br/>Primary Email Contact Check"}:::decisions
    click Primary_Email_Contact_Check "#primary_email_contact_check" "3477869800"
    
    Safe_Plan_Search_Check{"🔀 <em></em><br/>Safe Plan Search Check"}:::decisions
    click Safe_Plan_Search_Check "#safe_plan_search_check" "1788756362"
    
    Set_or_Check_Account{"🔀 <em></em><br/>Set or Check Account"}:::decisions
    click Set_or_Check_Account "#set_or_check_account" "1206150891"
    
    Loop_Through_Plans{{"🔁 <em></em><br/>Loop Through Plans"}}:::loops
    click Loop_Through_Plans "#loop_through_plans" "2441646345"
    
    Multi_Contact_Loop{{"🔁 <em></em><br/>Multi Contact Loop"}}:::loops
    click Multi_Contact_Loop "#multi_contact_loop" "128454785"
    
    Multi_Email_Contact_Loop{{"🔁 <em></em><br/>Multi Email Contact Loop"}}:::loops
    click Multi_Email_Contact_Loop "#multi_email_contact_loop" "594408439"
    
    Pull_Single_Contact_From_Collection{{"🔁 <em></em><br/>Pull Single Contact From Collection"}}:::loops
    click Pull_Single_Contact_From_Collection "#pull_single_contact_from_collection" "2763826869"
    
    Pull_Single_Plan_From_Collection{{"🔁 <em></em><br/>Pull Single Plan From Collection"}}:::loops
    click Pull_Single_Plan_From_Collection "#pull_single_plan_from_collection" "2175476942"
    
    Fetch_Source_Email_AC[("🔍 <em></em><br/>Fetch Source Email AC")]:::recordLookups
    click Fetch_Source_Email_AC "#fetch_source_email_ac" "1354254147"
    
    Find_Contact_s_Plan[("🔍 <em></em><br/>Find Contact's Plan")]:::recordLookups
    click Find_Contact_s_Plan "#find_contact_s_plan" "2520490832"
    
    Find_Email_Contact[("🔍 <em></em><br/>Find Email Contact")]:::recordLookups
    click Find_Email_Contact "#find_email_contact" "4150773848"
    
    Find_Phone_Contact[("🔍 <em></em><br/>Find Phone Contact")]:::recordLookups
    click Find_Phone_Contact "#find_phone_contact" "1036132205"
    
    Stamp_Active_Plan_on_Case[("🛠️ <em></em><br/>Stamp Active Plan on Case")]:::recordUpdates
    click Stamp_Active_Plan_on_Case "#stamp_active_plan_on_case" "3666548720"
    
    Stamp_Plan_on_Case[("🛠️ <em></em><br/>Stamp Plan on Case")]:::recordUpdates
    click Stamp_Plan_on_Case "#stamp_plan_on_case" "2933055660"
    
    Stamp_Recent_Inactive_Plan[("🛠️ <em></em><br/>Stamp Recent Inactive Plan")]:::recordUpdates
    click Stamp_Recent_Inactive_Plan "#stamp_recent_inactive_plan" "2481990791"
    
    Update_Case_AccountID[("🛠️ <em></em><br/>Update Case.AccountID")]:::recordUpdates
    click Update_Case_AccountID "#update_case_accountid" "3781242218"
    
    Update_Case_Cont_and_Acct[("🛠️ <em></em><br/>Update Case Cont and Acct")]:::recordUpdates
    click Update_Case_Cont_and_Acct "#update_case_cont_and_acct" "1542467981"
    
    assign_init_to_new_values --> Update_Case_Cont_and_Acct
    Copy_1_of_Define_Contact_Count --> Multiple_Email_Contacts_Check
    Define_Account --> Contact_Loop_Role_Check
    Define_Case_Contact --> Pull_Single_Contact_From_Collection
    Define_Contact_Count --> Contact_Found_Check
    Define_Existing_Account --> Contact_Loop_Role_Check
    Define_Newest_Inactive_Plan --> Loop_Through_Plans
    Define_Phone_Vars_AC --> Phone_Number_Validity_Check
    Define_Phone_Vars_Zoom --> Phone_Number_Validity_Check
    Define_Plan_Count --> Plan_Found_Check
    Define_Searchable_Email --> Find_Email_Contact
    Record_Initial_Results --> Check_for_potential_secondary_search
    Set_New_Values --> Multi_Email_Contact_Loop
    Unsafe_to_search_plan --> Multi_Contact_Loop
    Unsafe_to_search_second_plan --> Multi_Contact_Loop
    Wipe_Account --> Contact_Loop_Role_Check
    Wipe_New_Values --> Multi_Email_Contact_Loop
    Active_Plan_Stamp_Check --> |"Needs Inactive"| Stamp_Recent_Inactive_Plan
    Active_Plan_Stamp_Check --> |"Default Outcome"| END_Active_Plan_Stamp_Check
    Case_Origin_Check --> |"Zoom Voicemail"| Define_Phone_Vars_Zoom
    Case_Origin_Check --> |"Answer Connect"| Define_Phone_Vars_AC
    Case_Origin_Check --> |"Default Outcome"| Find_Email_Contact
    Check_for_potential_secondary_search --> |"AnswerConnect Email Found"| Fetch_Source_Email_AC
    Check_for_potential_secondary_search --> |"Default Outcome"| Check_Init_Result
    Check_Init_Result --> |"Init Found"| new_vs_init_check
    Check_Init_Result --> |"Default Outcome"| END_Check_Init_Result
    Check_Primary_Email --> |"Primary Email Match"| Set_New_Values
    Check_Primary_Email --> |"Primary Email Matched More Than Once"| Wipe_New_Values
    Check_Primary_Email --> |"Default Outcome"| Multi_Email_Contact_Loop
    Contact_Found_Check --> |"Single Contact Found"| Pull_Single_Contact_From_Collection
    Contact_Found_Check --> |"Multiple Contacts Found"| Multi_Contact_Loop
    Contact_Found_Check --> |"Default Outcome"| Check_for_potential_secondary_search
    Contact_Loop_Role_Check --> |"Current Role Ok"| Multi_Contact_Loop
    Contact_Loop_Role_Check --> |"Unsafe second attempt"| Unsafe_to_search_second_plan
    Contact_Loop_Role_Check --> |"Default Outcome"| Unsafe_to_search_plan
    Eligible_for_retry_check --> |"Worth Re attempting"| Record_Initial_Results
    Eligible_for_retry_check --> |"Default Outcome"| new_vs_init_check
    Email_Found_Check --> |"Source Email Found"| Define_Searchable_Email
    Email_Found_Check --> |"Default Outcome"| Check_Init_Result
    Is_Contact_or_Acct_Missing --> |"Need Contact"| Case_Origin_Check
    Is_Contact_or_Acct_Missing --> |"Need Account"| Update_Case_AccountID
    Is_Contact_or_Acct_Missing --> |"Default Outcome"| Is_Plan_Missing
    Is_Plan_Missing --> |"Plan needs update"| Safe_Plan_Search_Check
    Is_Plan_Missing --> |"Default Outcome"| END_Is_Plan_Missing
    Is_plan_not_Inactive --> |"Plan not inactive"| Stamp_Active_Plan_on_Case
    Is_plan_not_Inactive --> |"Newest Inactive Plan"| Define_Newest_Inactive_Plan
    Is_plan_not_Inactive --> |"Default Outcome"| Loop_Through_Plans
    Multiple_Email_Contacts_Check --> |"Multi Email Contacts Found"| Multi_Email_Contact_Loop
    Multiple_Email_Contacts_Check --> |"Default Outcome"| Contact_Found_Check
    new_vs_init_check --> |"init wins"| assign_init_to_new_values
    new_vs_init_check --> |"Default Outcome"| Update_Case_Cont_and_Acct
    Phone_Number_Validity_Check --> |"Phone Number Searchable"| Find_Phone_Contact
    Phone_Number_Validity_Check --> |"Default Outcome"| Define_Contact_Count
    Plan_Found_Check --> |"Plan Found"| Pull_Single_Plan_From_Collection
    Plan_Found_Check --> |"Multiple Found"| Loop_Through_Plans
    Plan_Found_Check --> |"Default Outcome"| END_Plan_Found_Check
    Primary_Email_Contact_Check --> |"Set New Contact Values"| Update_Case_Cont_and_Acct
    Primary_Email_Contact_Check --> |"Default Outcome"| Contact_Found_Check
    Safe_Plan_Search_Check --> |"Safe To Search Plan"| Find_Contact_s_Plan
    Safe_Plan_Search_Check --> |"Default Outcome"| END_Safe_Plan_Search_Check
    Set_or_Check_Account --> |"Account Already Present"| Define_Existing_Account
    Set_or_Check_Account --> |"Not set"| Define_Account
    Set_or_Check_Account --> |"Match"| Contact_Loop_Role_Check
    Set_or_Check_Account --> |"Default Outcome"| Wipe_Account
    Loop_Through_Plans --> |"For Each"|Is_plan_not_Inactive
    Loop_Through_Plans ---> |"After Last"|Active_Plan_Stamp_Check
    Multi_Contact_Loop --> |"For Each"|Set_or_Check_Account
    Multi_Contact_Loop ---> |"After Last"|Eligible_for_retry_check
    Multi_Email_Contact_Loop --> |"For Each"|Check_Primary_Email
    Multi_Email_Contact_Loop ---> |"After Last"|Primary_Email_Contact_Check
    Pull_Single_Contact_From_Collection --> |"For Each"|Define_Case_Contact
    Pull_Single_Contact_From_Collection ---> |"After Last"|new_vs_init_check
    Pull_Single_Plan_From_Collection --> |"For Each"|Stamp_Plan_on_Case
    Pull_Single_Plan_From_Collection ---> |"After Last"|END
    Fetch_Source_Email_AC --> Email_Found_Check
    Find_Contact_s_Plan --> Define_Plan_Count
    Find_Email_Contact --> Copy_1_of_Define_Contact_Count
    Find_Phone_Contact --> Define_Contact_Count
    Stamp_Active_Plan_on_Case --> Loop_Through_Plans
    Stamp_Plan_on_Case --> Pull_Single_Plan_From_Collection
    Stamp_Recent_Inactive_Plan --> END_Stamp_Recent_Inactive_Plan
    Update_Case_AccountID --> Is_Plan_Missing
    Update_Case_Cont_and_Acct --> Is_Plan_Missing
    START -->  Is_Contact_or_Acct_Missing
    END_Active_Plan_Stamp_Check(( END )):::endClass
    END_Check_Init_Result(( END )):::endClass
    END_Is_Plan_Missing(( END )):::endClass
    END_Plan_Found_Check(( END )):::endClass
    END_Safe_Plan_Search_Check(( END )):::endClass
    END_Stamp_Recent_Inactive_Plan(( END )):::endClass
    
    
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
    |Record Trigger Type| Create|
    |Label|Case | Before Trigger | Update Account Based on Contact|
    |Status|Active|
    |Description|Updated to "on create" only for performance reasons<br/><br/>When the contact on a case is changed and the account in null, update the account field with the new contact's account.|
    |Environments|Default|
    |Interview Label|Case | Before Trigger | Update Account Based on Contact {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Is_Contact_or_Acct_Missing](#is_contact_or_acct_missing)|
    |Next Node|[Is_Contact_or_Acct_Missing](#is_contact_or_acct_missing)|
    
    
    #### Filters (logic: **(1 OR 2 OR 3) AND (4 OR 5) AND 6**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|ContactId| Is Null|<!-- -->|
    |2|AccountId| Is Null|<!-- -->|
    |3|Plan__c| Is Null|<!-- -->|
    |4|SuppliedEmail| Is Null|<!-- -->|
    |5|ContactId| Is Null|<!-- -->|
    |6|IsClosed| Equal To|⬜|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |contactCollection|SObject|✅|⬜|⬜|Contact|<!-- -->|
    |contactCount|Number|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |dashifiedPhoneNumber|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |directPlanCollection|SObject|✅|⬜|⬜|Plan__c|<!-- -->|
    |inactivePlanId|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |initResultAccount|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |multiContactCounter|Number|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |newAccountId|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |newContactId|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |plainPhoneNumber|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |planSafeSearch|Boolean|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |plansFound|Number|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |searchableEmail|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |secondPlanSafeSearch|Boolean|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |sourceEmail|SObject|⬜|⬜|⬜|EmailMessage|<!-- -->|
    |standardPhoneNumber|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |dashifiedAnswerConnectPhone|String|MID({!$Record.Description},FIND("+1 ",{!$Record.Description},30)+3,12)|xxx-xxx-xxxx|
    |dashifiedZoomPhoneNumber|String|MID({!$Record.Subject},FIND("(",{!$Record.Subject})+1,3) + "-" +<br/>MID({!$Record.Subject},FIND("-",{!$Record.Subject})-3,8)|xxx-xxx-xxxx|
    |embeddedEmailAddress|String|MID({!sourceEmail.TextBody},FIND("Email", {!sourceEmail.TextBody},<br/>FIND("Call Regarding", {!sourceEmail.TextBody})<br/>)+7,<br/>(FIND("Message(If Any)", {!sourceEmail.TextBody},<br/>FIND("Email", {!sourceEmail.TextBody},<br/>FIND("Call Regarding", {!sourceEmail.TextBody})))-16) - <br/>FIND("Email", {!sourceEmail.TextBody},<br/>FIND("Call Regarding", {!sourceEmail.TextBody}))+7<br/>)|<!-- -->|
    |fiveMinutesAgo|DateTime|NOW()-(5/60/24)|<!-- -->|
    |phoneNumberValid|Boolean|ISNUMBER({!plainPhoneNumber}) && LEN({!plainPhoneNumber})=10|<!-- -->|
    |plainAnswerConnectPhoneNumber|String|SUBSTITUTE(MID({!$Record.Description},FIND("+1 ",{!$Record.Description},30)+3,12), "-", "")|xxxxxxxxxx|
    |plainZoomPhoneNumber|String|MID({!$Record.Subject},FIND("(",{!$Record.Subject})+1,3) +<br/>MID({!$Record.Subject},FIND("-",{!$Record.Subject})-3,3) +<br/>MID({!$Record.Subject},FIND("-",{!$Record.Subject})+1,4)|xxxxxxxxxx|
    |standardAnswerConnectPhoneNumber|String|"(" + MID({!$Record.Description},FIND("+1 ",{!$Record.Description},30)+3,3) + ")" + " " + MID({!$Record.Description},FIND("+1 ",{!$Record.Description},30)+7,8)|(xxx) xxx-xxxx|
    |standardZoomPhoneNumber|String|MID({!$Record.Subject},FIND("(",{!$Record.Subject}),14)|(xxx) xxx-xxxx|
    
    
    ## Flow Nodes Details
    
    ### assign_init_to_new_values
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|assign init to new values|
    |Connector|[Update_Case_Cont_and_Acct](#update_case_cont_and_acct)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |newAccountId| Assign|initResultAccount|
    |planSafeSearch| Assign|secondPlanSafeSearch|
    
    
    
    
    ### Copy_1_of_Define_Contact_Count
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Copy 1 of Define Contact Count|
    |Connector|[Multiple_Email_Contacts_Check](#multiple_email_contacts_check)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |contactCount| Assign Count|contactCollection|
    
    
    
    
    ### Define_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Define Account|
    |Connector|[Contact_Loop_Role_Check](#contact_loop_role_check)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |newAccountId| Assign|Multi_Contact_Loop.AccountId|
    
    
    
    
    ### Define_Case_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Define Case Contact|
    |Connector|[Pull_Single_Contact_From_Collection](#pull_single_contact_from_collection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |newContactId| Assign|Pull_Single_Contact_From_Collection.Id|
    |newAccountId| Assign|Pull_Single_Contact_From_Collection.AccountId|
    
    
    
    
    ### Define_Contact_Count
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Define Contact Count|
    |Connector|[Contact_Found_Check](#contact_found_check)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |contactCount| Assign Count|contactCollection|
    
    
    
    
    ### Define_Existing_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Define Existing Account|
    |Connector|[Contact_Loop_Role_Check](#contact_loop_role_check)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |newAccountId| Assign|$Record.AccountId|
    
    
    
    
    ### Define_Newest_Inactive_Plan
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Define Newest Inactive Plan|
    |Description|Used in the case of there being multiple plans but they're all inactive|
    |Connector|[Loop_Through_Plans](#loop_through_plans)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |inactivePlanId| Assign|Loop_Through_Plans.Id|
    
    
    
    
    ### Define_Phone_Vars_AC
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Define Phone Vars AC|
    |Connector|isGoTo: true<br/>targetReference: Phone_Number_Validity_Check<br/>|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |standardPhoneNumber| Assign|standardAnswerConnectPhoneNumber|
    |dashifiedPhoneNumber| Assign|dashifiedAnswerConnectPhone|
    |plainPhoneNumber| Assign|plainAnswerConnectPhoneNumber|
    
    
    
    
    ### Define_Phone_Vars_Zoom
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Define Phone Vars Zoom|
    |Connector|[Phone_Number_Validity_Check](#phone_number_validity_check)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |standardPhoneNumber| Assign|standardZoomPhoneNumber|
    |dashifiedPhoneNumber| Assign|dashifiedZoomPhoneNumber|
    |plainPhoneNumber| Assign|plainZoomPhoneNumber|
    
    
    
    
    ### Define_Plan_Count
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Define Plan Count|
    |Connector|[Plan_Found_Check](#plan_found_check)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |plansFound| Assign Count|directPlanCollection|
    
    
    
    
    ### Define_Searchable_Email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Define Searchable Email|
    |Connector|isGoTo: true<br/>targetReference: Find_Email_Contact<br/>|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |searchableEmail| Assign|embeddedEmailAddress|
    
    
    
    
    ### Record_Initial_Results
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Record Initial Results|
    |Connector|isGoTo: true<br/>targetReference: Check_for_potential_secondary_search<br/>|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |initResultAccount| Assign|newAccountId|
    |newAccountId| Assign|<!-- -->|
    
    
    
    
    ### Set_New_Values
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Set New Values|
    |Connector|[Multi_Email_Contact_Loop](#multi_email_contact_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |newContactId| Assign|Multi_Email_Contact_Loop.Id|
    |newAccountId| Assign|Multi_Email_Contact_Loop.AccountId|
    
    
    
    
    ### Unsafe_to_search_plan
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Unsafe to search plan|
    |Connector|[Multi_Contact_Loop](#multi_contact_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |planSafeSearch| Assign|⬜|
    
    
    
    
    ### Unsafe_to_search_second_plan
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Unsafe to search second plan|
    |Connector|[Multi_Contact_Loop](#multi_contact_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |secondPlanSafeSearch| Assign|⬜|
    
    
    
    
    ### Wipe_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Wipe Account|
    |Connector|[Contact_Loop_Role_Check](#contact_loop_role_check)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |newAccountId| Assign|<!-- -->|
    
    
    
    
    ### Wipe_New_Values
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Wipe New Values|
    |Connector|[Multi_Email_Contact_Loop](#multi_email_contact_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |newContactId| Assign|<!-- -->|
    |newAccountId| Assign|<!-- -->|
    
    
    
    
    ### Active_Plan_Stamp_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Active Plan Stamp Check|
    |Description|Was an active plan saved on the case?|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Needs_Inactive (Needs Inactive)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Stamp_Recent_Inactive_Plan](#stamp_recent_inactive_plan)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|[Stamp_Active_Plan_on_Case](#stamp_active_plan_on_case)| Was Visited|⬜|
    |2|inactivePlanId| Is Null|⬜|
    
    
    
    
    ### Case_Origin_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Case Origin Check|
    |Description|Is this a zoom voicemail, answer connect voicemail, or an email to case?|
    |Default Connector|[Find_Email_Contact](#find_email_contact)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Zoom_Voicemail (Zoom Voicemail)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Define_Phone_Vars_Zoom](#define_phone_vars_zoom)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.SuppliedEmail| Contains|@zoom.us|
    |2|$Record.Subject| Contains|New voicemail from|
    
    
    
    
    #### Rule Answer_Connect (Answer Connect)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Define_Phone_Vars_AC](#define_phone_vars_ac)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.SuppliedEmail| Contains|@answerconnect|
    
    
    
    
    ### Check_for_potential_secondary_search
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check for potential secondary search|
    |Description|Originally added for AnswerConnect cases that could have an email attached in addition to the phone number|
    |Default Connector|[Check_Init_Result](#check_init_result)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule AnswerConnect_Email_Found (AnswerConnect Email Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Fetch_Source_Email_AC](#fetch_source_email_ac)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Answer_Connect| Equal To|✅|
    |2|[Fetch_Source_Email_AC](#fetch_source_email_ac)| Was Visited|⬜|
    
    
    
    
    ### Check_Init_Result
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check Init Result|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Init_Found (Init Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[new_vs_init_check](#new_vs_init_check)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|initResultAccount| Is Null|⬜|
    
    
    
    
    ### Check_Primary_Email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check Primary Email|
    |Default Connector|[Multi_Email_Contact_Loop](#multi_email_contact_loop)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Primary_Email_Match (Primary Email Match)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Set_New_Values](#set_new_values)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Multi_Email_Contact_Loop.Email| Equal To|searchableEmail|
    |2|[Set_New_Values](#set_new_values)| Was Visited|⬜|
    
    
    
    
    #### Rule Primary_Email_Matched_More_Than_Once (Primary Email Matched More Than Once)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Wipe_New_Values](#wipe_new_values)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Multi_Email_Contact_Loop.Email| Equal To|searchableEmail|
    |2|[Wipe_New_Values](#wipe_new_values)| Was Visited|⬜|
    
    
    
    
    ### Contact_Found_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Contact Found Check|
    |Default Connector|[Check_for_potential_secondary_search](#check_for_potential_secondary_search)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Single_Contact_Found (Single Contact Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Pull_Single_Contact_From_Collection](#pull_single_contact_from_collection)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|contactCount| Equal To|1|
    
    
    
    
    #### Rule Multiple_Contacts_Found (Multiple Contacts Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Multi_Contact_Loop](#multi_contact_loop)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|contactCount| Greater Than|1|
    |2|$Record.AccountId| Is Null|✅|
    
    
    
    
    #### Rule Multiple_Contacts_Found_Account_On_Case (Multiple Contacts Found, Account On Case)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|contactCount| Greater Than|1|
    |2|$Record.AccountId| Is Null|⬜|
    
    
    
    
    ### Contact_Loop_Role_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Contact Loop Role Check|
    |Default Connector|[Unsafe_to_search_plan](#unsafe_to_search_plan)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Current_Role_Ok (Current Role Ok)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Multi_Contact_Loop](#multi_contact_loop)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Multi_Contact_Loop.Role__c| Contains|Saver|
    |2|Multi_Contact_Loop.Role__c| Contains|Buyer|
    |3|Multi_Contact_Loop.Role__c| Contains|Sponsor|
    |4|Multi_Contact_Loop.Role__c| Contains|Trustee|
    
    
    
    
    #### Rule Unsafe_second_attempt (Unsafe second attempt)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Unsafe_to_search_second_plan](#unsafe_to_search_second_plan)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Worth_Re_attempting| Equal To|✅|
    
    
    
    
    ### Eligible_for_retry_check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Eligible for retry check|
    |Default Connector|[new_vs_init_check](#new_vs_init_check)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Worth_Re_attempting (Worth Re attempting)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Record_Initial_Results](#record_initial_results)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|[Find_Phone_Contact](#find_phone_contact)| Was Visited|✅|
    |2|[Find_Email_Contact](#find_email_contact)| Was Visited|⬜|
    
    
    
    
    ### Email_Found_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Email Found Check|
    |Default Connector|[Check_Init_Result](#check_init_result)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Source_Email_Found (Source Email Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Define_Searchable_Email](#define_searchable_email)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|sourceEmail.Id| Is Null|⬜|
    |2|embeddedEmailAddress| Is Null|⬜|
    |3|embeddedEmailAddress| Contains|@|
    
    
    
    
    ### Is_Contact_or_Acct_Missing
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Is Contact or Acct Missing|
    |Default Connector|[Is_Plan_Missing](#is_plan_missing)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Need_Contact (Need Contact)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Case_Origin_Check](#case_origin_check)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.ContactId| Is Null|✅|
    |2|$Record.SuppliedEmail| Is Null|⬜|
    
    
    
    
    #### Rule Need_Account (Need Account)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Case_AccountID](#update_case_accountid)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.AccountId| Is Null|✅|
    |2|$Record.ContactId| Is Null|⬜|
    |3|$Record.Contact.AccountId| Is Null|⬜|
    
    
    
    
    ### Is_Plan_Missing
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Is Plan Missing|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Plan_needs_update (Plan needs update)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Safe_Plan_Search_Check](#safe_plan_search_check)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Plan__c| Is Null|✅|
    |2|$Record.AccountId| Is Null|⬜|
    
    
    
    
    ### Is_plan_not_Inactive
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Is plan not Inactive|
    |Default Connector|[Loop_Through_Plans](#loop_through_plans)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Plan_not_inactive (Plan not inactive)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Stamp_Active_Plan_on_Case](#stamp_active_plan_on_case)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Loop_Through_Plans.Status__c| Not Equal To|Inactive|
    |2|[Stamp_Active_Plan_on_Case](#stamp_active_plan_on_case)| Was Visited|⬜|
    
    
    
    
    #### Rule Newest_Inactive_Plan (Newest Inactive Plan)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Define_Newest_Inactive_Plan](#define_newest_inactive_plan)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Loop_Through_Plans.Status__c| Equal To|Inactive|
    |2|[Define_Newest_Inactive_Plan](#define_newest_inactive_plan)| Was Visited|⬜|
    
    
    
    
    ### Multiple_Email_Contacts_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Multiple Email Contacts Check|
    |Default Connector|[Contact_Found_Check](#contact_found_check)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Multi_Email_Contacts_Found (Multi Email Contacts Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Multi_Email_Contact_Loop](#multi_email_contact_loop)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|contactCount| Greater Than Or Equal To|2|
    
    
    
    
    ### new_vs_init_check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|new vs init check|
    |Default Connector|[Update_Case_Cont_and_Acct](#update_case_cont_and_acct)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule init_wins (init wins)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[assign_init_to_new_values](#assign_init_to_new_values)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|newAccountId| Is Null|✅|
    |2|initResultAccount| Is Null|⬜|
    
    
    
    
    ### Phone_Number_Validity_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Phone Number Validity Check|
    |Description|Checking to see if the derived phone number is 10 characters long, all integers|
    |Default Connector|[Define_Contact_Count](#define_contact_count)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Phone_Number_Searchable (Phone Number Searchable)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Find_Phone_Contact](#find_phone_contact)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|phoneNumberValid| Equal To|✅|
    
    
    
    
    ### Plan_Found_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Plan Found Check|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Plan_Found (Plan Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Pull_Single_Plan_From_Collection](#pull_single_plan_from_collection)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|plansFound| Equal To|1|
    
    
    
    
    #### Rule Multiple_Found (Multiple Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Loop_Through_Plans](#loop_through_plans)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|plansFound| Greater Than|1|
    
    
    
    
    ### Primary_Email_Contact_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Primary Email Contact Check|
    |Default Connector|[Contact_Found_Check](#contact_found_check)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Set_New_Contact_Values (Set New Contact Values)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|isGoTo: true<br/>targetReference: Update_Case_Cont_and_Acct<br/>|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|newContactId| Is Null|⬜|
    |2|newAccountId| Is Null|⬜|
    
    
    
    
    ### Safe_Plan_Search_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Safe Plan Search Check|
    |Description|For single contact found, check role.  For multiple, check boolean value from contact loop.|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Safe_To_Search_Plan (Safe To Search Plan)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Find_Contact_s_Plan](#find_contact_s_plan)|
    |Condition Logic|(1 OR 2 OR 3 OR 4 OR 6) AND 5|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Contact.Role__c| Contains|Trustee|
    |2|$Record.Contact.Role__c| Contains|buyer|
    |3|$Record.Contact.Role__c| Contains|sponsor|
    |4|$Record.Contact.Role__c| Contains|Saver|
    |5|planSafeSearch| Equal To|✅|
    |6|Multiple_Contacts_Found| Equal To|✅|
    
    
    
    
    ### Set_or_Check_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Set or Check Account|
    |Default Connector|[Wipe_Account](#wipe_account)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Account_Already_Present (Account Already Present)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Define_Existing_Account](#define_existing_account)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.AccountId| Is Null|⬜|
    
    
    
    
    #### Rule Not_set (Not set)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Define_Account](#define_account)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|newAccountId| Is Null|✅|
    |2|[Wipe_Account](#wipe_account)| Was Visited|⬜|
    
    
    
    
    #### Rule Match (Match)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Contact_Loop_Role_Check](#contact_loop_role_check)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Multi_Contact_Loop.AccountId| Equal To|newAccountId|
    |2|[Wipe_Account](#wipe_account)| Was Visited|⬜|
    
    
    
    
    ### Loop_Through_Plans
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Loop Through Plans|
    |Collection Reference|directPlanCollection|
    |Iteration Order|Asc|
    |Next Value Connector|[Is_plan_not_Inactive](#is_plan_not_inactive)|
    |No More Values Connector|[Active_Plan_Stamp_Check](#active_plan_stamp_check)|
    
    
    ### Multi_Contact_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Multi Contact Loop|
    |Description|Used to loop through multiple contacts.  Account to match against is defined with first contact, then others are checked to see if they match that account.  Roles are also evaluated to check for possible advisors/tpas|
    |Collection Reference|contactCollection|
    |Iteration Order|Asc|
    |Next Value Connector|[Set_or_Check_Account](#set_or_check_account)|
    |No More Values Connector|[Eligible_for_retry_check](#eligible_for_retry_check)|
    
    
    ### Multi_Email_Contact_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Multi Email Contact Loop|
    |Description|Goal of this loop is to sort through email contacts, and see if there's only one who's primary email matches the search term.  Prefer this contact over the others|
    |Collection Reference|contactCollection|
    |Iteration Order|Asc|
    |Next Value Connector|[Check_Primary_Email](#check_primary_email)|
    |No More Values Connector|[Primary_Email_Contact_Check](#primary_email_contact_check)|
    
    
    ### Pull_Single_Contact_From_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Pull Single Contact From Collection|
    |Collection Reference|contactCollection|
    |Iteration Order|Asc|
    |Next Value Connector|[Define_Case_Contact](#define_case_contact)|
    |No More Values Connector|[new_vs_init_check](#new_vs_init_check)|
    
    
    ### Pull_Single_Plan_From_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Pull Single Plan From Collection|
    |Collection Reference|directPlanCollection|
    |Iteration Order|Asc|
    |Next Value Connector|[Stamp_Plan_on_Case](#stamp_plan_on_case)|
    
    
    ### Fetch_Source_Email_AC
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|EmailMessage|
    |Label|Fetch Source Email AC|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|sourceEmail|
    |Queried Fields|- Id<br/>- TextBody<br/>|
    |Sort Field|CreatedDate|
    |Sort Order|Desc|
    |Connector|[Email_Found_Check](#email_found_check)|
    
    
    #### Filters (logic: **(1 OR 3) AND 2**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|ParentId| Equal To|$Record.Id|
    |2|FromAddress| Contains|@answerconnect.com|
    |3|Subject| Equal To|$Record.Subject|
    
    
    
    
    ### Find_Contact_s_Plan
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Plan__c|
    |Label|Find Contact's Plan|
    |Description|Sorted by created date in case they have multiple active plans (bad data) so the most recent has precedence.|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|directPlanCollection|
    |Queried Fields|- Id<br/>- Status__c<br/>|
    |Sort Field|CreatedDate|
    |Sort Order|Desc|
    |Connector|[Define_Plan_Count](#define_plan_count)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Account__c| Equal To|$Record.AccountId|
    
    
    
    
    ### Find_Email_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Find Email Contact|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|contactCollection|
    |Queried Fields|- Id<br/>- AccountId<br/>- Role__c<br/>- Email<br/>|
    |Connector|[Copy_1_of_Define_Contact_Count](#copy_1_of_define_contact_count)|
    
    
    #### Filters (logic: **(1 AND 3) OR (2 AND 4)**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Email| Equal To|searchableEmail|
    |2|Secondary_Email__c| Equal To|searchableEmail|
    |3|Email| Is Null|<!-- -->|
    |4|Secondary_Email__c| Is Null|<!-- -->|
    
    
    
    
    ### Find_Phone_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Find Phone Contact|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|contactCollection|
    |Queried Fields|- Id<br/>- AccountId<br/>- Role__c<br/>|
    |Connector|[Define_Contact_Count](#define_contact_count)|
    
    
    #### Filters (logic: **((1 OR 2 OR 3) AND 4) OR ((5 OR 6 OR 7) AND 8) OR ((9 OR 10 OR 11) AND 12)**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Phone| Equal To|plainPhoneNumber|
    |2|Phone| Equal To|dashifiedPhoneNumber|
    |3|Phone| Equal To|standardPhoneNumber|
    |4|Phone| Is Null|<!-- -->|
    |5|MobilePhone| Equal To|plainPhoneNumber|
    |6|MobilePhone| Equal To|dashifiedPhoneNumber|
    |7|MobilePhone| Equal To|standardPhoneNumber|
    |8|MobilePhone| Is Null|<!-- -->|
    |9|Secondary_Phone__c| Equal To|plainPhoneNumber|
    |10|Secondary_Phone__c| Equal To|standardPhoneNumber|
    |11|Secondary_Phone__c| Equal To|dashifiedPhoneNumber|
    |12|Secondary_Phone__c| Is Null|<!-- -->|
    
    
    
    
    ### Stamp_Active_Plan_on_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Stamp Active Plan on Case|
    |Input Reference|$Record|
    |Connector|[Loop_Through_Plans](#loop_through_plans)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Plan__c|Loop_Through_Plans.Id|
    
    
    
    
    ### Stamp_Plan_on_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Stamp Plan on Case|
    |Input Reference|$Record|
    |Connector|[Pull_Single_Plan_From_Collection](#pull_single_plan_from_collection)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Plan__c|Pull_Single_Plan_From_Collection.Id|
    
    
    
    
    ### Stamp_Recent_Inactive_Plan
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Stamp Recent Inactive Plan|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Plan__c|inactivePlanId|
    
    
    
    
    ### Update_Case_AccountID
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Case.AccountID|
    |Input Reference|$Record|
    |Connector|[Is_Plan_Missing](#is_plan_missing)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|$Record.Contact.AccountId|
    
    
    
    
    ### Update_Case_Cont_and_Acct
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Case Cont and Acct|
    |Input Reference|$Record|
    |Connector|[Is_Plan_Missing](#is_plan_missing)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|newAccountId|
    |ContactId|newContactId|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

