# System_Enhancement_Form history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](System_Enhancement_Form-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Screen Flow</b>"]):::startClass
    click START "#general-information" "2413491940"
    
    Submit_Enhancement_to_Ubiquity_Leader("⚡ <em></em><br/>Submit Enhancement to Ubiquity Leader"):::actionCalls
    click Submit_Enhancement_to_Ubiquity_Leader "#submit_enhancement_to_ubiquity_leader" "178349819"
    
    Add_Approver_to_Collection[\"🟰 <em></em><br/>Add Approver to Collection"/]:::assignments
    click Add_Approver_to_Collection "#add_approver_to_collection" "3280314121"
    
    Add_line_break[\"🟰 <em></em><br/>Add line break"/]:::assignments
    click Add_line_break "#add_line_break" "1506685986"
    
    Add_to_file_collection[\"🟰 <em></em><br/>Add to file collection"/]:::assignments
    click Add_to_file_collection "#add_to_file_collection" "2034127602"
    
    add_to_name_list[\"🟰 <em></em><br/>add to name list"/]:::assignments
    click add_to_name_list "#add_to_name_list" "2241275950"
    
    Assign_file_count[\"🟰 <em></em><br/>Assign file count"/]:::assignments
    click Assign_file_count "#assign_file_count" "2325086216"
    
    Define_File[\"🟰 <em></em><br/>Define File"/]:::assignments
    click Define_File "#define_file" "3977458569"
    
    Mark_Admin_as_Valid[\"🟰 <em></em><br/>Mark Admin as Valid"/]:::assignments
    click Mark_Admin_as_Valid "#mark_admin_as_valid" "2413563814"
    
    Mark_Leader_as_Valid[\"🟰 <em></em><br/>Mark Leader as Valid"/]:::assignments
    click Mark_Leader_as_Valid "#mark_leader_as_valid" "2618039260"
    
    Set_web_email[\"🟰 <em></em><br/>Set web email"/]:::assignments
    click Set_web_email "#set_web_email" "1302702542"
    
    Set_web_email_alt[\"🟰 <em></em><br/>Set web email alt"/]:::assignments
    click Set_web_email_alt "#set_web_email_alt" "4145666054"
    
    Check_for_Files{"🔀 <em></em><br/>Check for Files"}:::decisions
    click Check_for_Files "#check_for_files" "1174101756"
    
    Contact_Found_Check{"🔀 <em></em><br/>Contact Found Check"}:::decisions
    click Contact_Found_Check "#contact_found_check" "2134117454"
    
    Copy_1_of_Value_Comparison{"🔀 <em></em><br/>Copy 1 of Value Comparison"}:::decisions
    click Copy_1_of_Value_Comparison "#copy_1_of_value_comparison" "2452423123"
    
    File_names_check{"🔀 <em></em><br/>File names check"}:::decisions
    click File_names_check "#file_names_check" "3101139348"
    
    User_Whitelisted_Check{"🔀 <em></em><br/>User Whitelisted Check"}:::decisions
    click User_Whitelisted_Check "#user_whitelisted_check" "3205752515"
    
    Value_Comparison{"🔀 <em></em><br/>Value Comparison"}:::decisions
    click Value_Comparison "#value_comparison" "1948903577"
    
    Admin_Loop{{"🔁 <em></em><br/>Admin Loop"}}:::loops
    click Admin_Loop "#admin_loop" "4245780854"
    
    File_Loop{{"🔁 <em></em><br/>File Loop"}}:::loops
    click File_Loop "#file_loop" "268192971"
    
    File_Name_Loop{{"🔁 <em></em><br/>File Name Loop"}}:::loops
    click File_Name_Loop "#file_name_loop" "803112734"
    
    Leader_Loop{{"🔁 <em></em><br/>Leader Loop"}}:::loops
    click Leader_Loop "#leader_loop" "934257662"
    
    Commit_File_Collection[("➕ <em></em><br/>Commit File Collection")]:::recordCreates
    click Commit_File_Collection "#commit_file_collection" "3009034522"
    
    Create_Case[("➕ <em></em><br/>Create Case")]:::recordCreates
    click Create_Case "#create_case" "2036654743"
    
    Case_Meta_ID_Grab[("🔍 <em></em><br/>Case Meta ID Grab")]:::recordLookups
    click Case_Meta_ID_Grab "#case_meta_id_grab" "1462578738"
    
    Find_Submitter_s_Contact[("🔍 <em></em><br/>Find Submitter's Contact")]:::recordLookups
    click Find_Submitter_s_Contact "#find_submitter_s_contact" "3357905697"
    
    Grab_case[("🔍 <em></em><br/>Grab case #")]:::recordLookups
    click Grab_case "#grab_case" "3271905393"
    
    Grab_User[("🔍 <em></em><br/>Grab User")]:::recordLookups
    click Grab_User "#grab_user" "271004587"
    
    Ubiquity_Admin_Field_ID_Grab[("🔍 <em></em><br/>Ubiquity Admin Field ID Grab")]:::recordLookups
    click Ubiquity_Admin_Field_ID_Grab "#ubiquity_admin_field_id_grab" "4112210759"
    
    Ubiquity_Admin_Values_Grab[("🔍 <em></em><br/>Ubiquity Admin Values Grab")]:::recordLookups
    click Ubiquity_Admin_Values_Grab "#ubiquity_admin_values_grab" "4258818110"
    
    Ubiquity_Leader_Field_ID_Grab[("🔍 <em></em><br/>Ubiquity Leader Field ID Grab")]:::recordLookups
    click Ubiquity_Leader_Field_ID_Grab "#ubiquity_leader_field_id_grab" "1242397680"
    
    Ubiquity_Leader_Values_Grab[("🔍 <em></em><br/>Ubiquity Leader Values Grab")]:::recordLookups
    click Ubiquity_Leader_Values_Grab "#ubiquity_leader_values_grab" "3876370376"
    
    Add_file_links_to_case_description[("🛠️ <em></em><br/>Add file links to case description")]:::recordUpdates
    click Add_file_links_to_case_description "#add_file_links_to_case_description" "3975352952"
    
    Auto_Approve_Case[("🛠️ <em></em><br/>Auto Approve Case")]:::recordUpdates
    click Auto_Approve_Case "#auto_approve_case" "1110836031"
    
    Confirmation_Screen(["💻 <em></em><br/>Confirmation Screen"]):::screens
    click Confirmation_Screen "#confirmation_screen" "3324272111"
    
    finalScreen(["💻 <em></em><br/>finalScreen"]):::screens
    click finalScreen "#finalscreen" "2314300733"
    
    initialScreen(["💻 <em></em><br/>initialScreen"]):::screens
    click initialScreen "#initialscreen" "3099366538"
    
    Submit_Enhancement_to_Ubiquity_Leader --> Grab_case
    Add_Approver_to_Collection --> Submit_Enhancement_to_Ubiquity_Leader
    Add_line_break --> add_to_name_list
    Add_to_file_collection --> File_Loop
    add_to_name_list --> File_Name_Loop
    Assign_file_count --> File_names_check
    Define_File --> Add_to_file_collection
    Mark_Admin_as_Valid --> Admin_Loop
    Mark_Leader_as_Valid --> Leader_Loop
    Set_web_email --> Case_Meta_ID_Grab
    Set_web_email_alt --> Case_Meta_ID_Grab
    Check_for_Files --> |"Files 2 Attach Found"| File_Loop
    Check_for_Files --> |"Default Outcome"| User_Whitelisted_Check
    Contact_Found_Check --> |"Contact Found"| Set_web_email
    Contact_Found_Check --> |"Default Outcome"| Set_web_email_alt
    Copy_1_of_Value_Comparison --> |"Admin Valid"| Mark_Admin_as_Valid
    Copy_1_of_Value_Comparison --> |"Default Outcome"| Admin_Loop
    File_names_check --> |"File names found"| File_Name_Loop
    File_names_check --> |"Default Outcome"| Confirmation_Screen
    User_Whitelisted_Check --> |"Needs Approval"| Add_Approver_to_Collection
    User_Whitelisted_Check --> |"Default Outcome"| Auto_Approve_Case
    Value_Comparison --> |"Leader Valid"| Mark_Leader_as_Valid
    Value_Comparison --> |"Default Outcome"| Leader_Loop
    Admin_Loop --> |"For Each"|Copy_1_of_Value_Comparison
    Admin_Loop ---> |"After Last"|Create_Case
    File_Loop --> |"For Each"|Define_File
    File_Loop ---> |"After Last"|Commit_File_Collection
    File_Name_Loop --> |"For Each"|Add_line_break
    File_Name_Loop ---> |"After Last"|Confirmation_Screen
    Leader_Loop --> |"For Each"|Value_Comparison
    Leader_Loop ---> |"After Last"|Ubiquity_Admin_Field_ID_Grab
    Commit_File_Collection --> Add_file_links_to_case_description
    Create_Case --> Check_for_Files
    Case_Meta_ID_Grab --> Ubiquity_Leader_Field_ID_Grab
    Find_Submitter_s_Contact --> Contact_Found_Check
    Grab_case --> finalScreen
    Grab_User --> initialScreen
    Ubiquity_Admin_Field_ID_Grab --> Ubiquity_Admin_Values_Grab
    Ubiquity_Admin_Values_Grab --> Admin_Loop
    Ubiquity_Leader_Field_ID_Grab --> Ubiquity_Leader_Values_Grab
    Ubiquity_Leader_Values_Grab --> Leader_Loop
    Add_file_links_to_case_description --> User_Whitelisted_Check
    Auto_Approve_Case --> Grab_case
    Confirmation_Screen --> Find_Submitter_s_Contact
    finalScreen --> END_finalScreen
    initialScreen --> Assign_file_count
    START -->  Grab_User
    END_finalScreen(( END )):::endClass
    
    
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
    |Label|System Enhancement Form|
    |Status|Active|
    |Description|Updated to run in system context with sharing.  Getting issues with random profiles not having access to this record type.<br/><br/>Making submitter field dynamic, providing redirect to case, and confirmation message that it was submitted|
    |Environments|Default|
    |Interview Label|System Enhancement Form {!$Flow.CurrentDateTime}|
    |Run In Mode| System Mode With Sharing|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Grab_User](#grab_user)|
    |Next Node|[Grab_User](#grab_user)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |adminValue|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |approverId|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |approverIdCollection|String|✅|⬜|⬜|<!-- -->|<!-- -->|
    |enhancementCaseId|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |enhancementCaseNumber|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |fileAttachIds|String|✅|⬜|⬜|<!-- -->|<!-- -->|
    |fileAttachNames|String|✅|⬜|⬜|<!-- -->|<!-- -->|
    |fileCount|Number|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |fileLinkList|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |fileNameList|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |fileRecord|SObject|⬜|⬜|⬜|ContentDocumentLink|<!-- -->|
    |files2create|SObject|✅|⬜|⬜|ContentDocumentLink|<!-- -->|
    |leaderValue|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |SubmitterContact|SObject|⬜|⬜|⬜|Contact|<!-- -->|
    |webEmail|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |approvalDynamicText|String|IF({!userWhitelisted},"!", " for review to " + {!Manager_Approver.selectedChoiceLabels} + "!")|<!-- -->|
    |autoApproverText|String|{!SubmissionText} + BR() + BR() +<br/>"Approved by " + {!$User.FirstName} + {!$User.LastName}|<!-- -->|
    |caseRecordType|String|IF({!System_to_Enhance}="Salesforce","01237000000Ez81AAC","01237000000EyimAAC")|<!-- -->|
    |enhanceStatusForm|String|IF({!System_to_Enhance}="Paradigm","Received","")|<!-- -->|
    |fileLink|String|"https://myubiquity.lightning.force.com/lightning/r/ContentDocument/"+{!File_Loop}+"/view" + BR()|<!-- -->|
    |finalScreenDynamicText|String|IF({!userWhitelisted},"Your submission has been sent directly to " + IF({!System_to_Enhance}="Salesforce","Business Intelligence.","PRKS."),"Your submission has been sent to " + {!Manager_Approver.selectedChoiceLabels} + " for review.")|<!-- -->|
    |formattedSubject|String|{!System_to_Enhance}+" Enhancement - " + {!Idea_Title} + " - " + TEXT({!UbiquityAdmin})|<!-- -->|
    |lineBreak|String|BR()|<!-- -->|
    |otherResourcesForm|String|SUBSTITUTE({!what_other_resources}, ";", ", ")|<!-- -->|
    |ownerIdForm|String|IF({!System_to_Enhance} = "Salesforce","00G37000000ztuW","00500000006wpUQ")|<!-- -->|
    |reasonFormat|String|IF({!System_to_Enhance}="Salesforce","Salesforce Enhancement", "Paradigm Enhancement")|<!-- -->|
    |SubmissionText|String|"Title: " + {!Idea_Title} + BR() + BR() +<br/>"Description: " + {!Description_of_Idea} + BR() + BR() +<br/>"Solves For: " + {!What_problem_does_this_solve_for} + BR() + BR() +<br/>"Measurable Value: " + {!What_measurable_value_will_this_enhancement_provide} + BR() + BR() +<br/>IF({!Current_workaround2},"Current Workaround: " + {!Explain_the_workaround}, "No Current Workaround") + BR() + BR() +<br/>"Who's Impacted: " + {!Who_is_impacted_by_this_change} + BR() + BR() +<br/>"Business Unit SME: " + {!Business_Unit_SME.selectedChoiceValues} + BR() + BR() +<br/>IF(NOT(ISBLANK({!what_other_resources})),"Other Resources Needed: " + {!otherResourcesForm} + BR() + BR(), "") +<br/>IF(NOT(ISBLANK({!fileNameList})),"Attachment Names: "+ BR() +{!fileNameList},"") + BR() +<br/>IF(NOT(ISBLANK({!fileLinkList})),"Attachment Links: "+ BR() +{!fileLinkList},"")|<!-- -->|
    |UbiquityAdminDefault|String|{!$User.FirstName} + " " + {!$User.LastName}|<!-- -->|
    |userWhitelisted|Boolean|{!$User.Id} = '00500000006xUkg' || {!$User.Id} = '0051G000006IjDd' || {!$User.Id} = '00500000007VSPS' || {!$User.Id} = '0051G000006IsUi'|Users that don't need an approver|
    
    
    ## Flow Nodes Details
    
    ### Submit_Enhancement_to_Ubiquity_Leader
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Submit Enhancement to Ubiquity Leader|
    |Action Type|Submit|
    |Action Name|submit|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|submit|
    |Next Approver Ids (input)|approverIdCollection|
    |Object Id (input)|enhancementCaseId|
    |Skip Entry Criteria (input)|✅|
    |Submitter Id (input)|$User.Id|
    |Connector|[Grab_case](#grab_case)|
    
    
    ### Add_Approver_to_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add Approver to Collection|
    |Connector|[Submit_Enhancement_to_Ubiquity_Leader](#submit_enhancement_to_ubiquity_leader)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |approverIdCollection| Add|approverId|
    
    
    
    
    ### Add_line_break
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add line break|
    |Connector|[add_to_name_list](#add_to_name_list)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |[File_Name_Loop](#file_name_loop)| Add|lineBreak|
    
    
    
    
    ### Add_to_file_collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add to file collection|
    |Connector|[File_Loop](#file_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |files2create| Add|fileRecord|
    
    
    
    
    ### add_to_name_list
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|add to name list|
    |Connector|[File_Name_Loop](#file_name_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |fileNameList| Add|[File_Name_Loop](#file_name_loop)|
    
    
    
    
    ### Assign_file_count
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign file count|
    |Connector|[File_names_check](#file_names_check)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |fileCount| Assign Count|fileAttachIds|
    
    
    
    
    ### Define_File
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Define File|
    |Connector|[Add_to_file_collection](#add_to_file_collection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |fileRecord.ContentDocumentId| Assign|[File_Loop](#file_loop)|
    |fileRecord.LinkedEntityId| Assign|enhancementCaseId|
    |fileLinkList| Add|fileLink|
    
    
    
    
    ### Mark_Admin_as_Valid
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Mark Admin as Valid|
    |Connector|[Admin_Loop](#admin_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |adminValue| Assign|Admin_Loop.Label|
    
    
    
    
    ### Mark_Leader_as_Valid
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Mark Leader as Valid|
    |Connector|[Leader_Loop](#leader_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |leaderValue| Assign|Leader_Loop.Label|
    
    
    
    
    ### Set_web_email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Set web email|
    |Connector|[Case_Meta_ID_Grab](#case_meta_id_grab)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |webEmail| Assign|SubmitterContact.Email|
    
    
    
    
    ### Set_web_email_alt
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Set web email alt|
    |Connector|[Case_Meta_ID_Grab](#case_meta_id_grab)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |webEmail| Assign|$User.Email|
    
    
    
    
    ### Check_for_Files
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check for Files|
    |Default Connector|[User_Whitelisted_Check](#user_whitelisted_check)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Files_2_Attach_Found (Files 2 Attach Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[File_Loop](#file_loop)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|fileCount| Greater Than Or Equal To|1|
    
    
    
    
    ### Contact_Found_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Contact Found Check|
    |Default Connector|[Set_web_email_alt](#set_web_email_alt)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Contact_Found (Contact Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Set_web_email](#set_web_email)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|SubmitterContact.Id| Is Null|⬜|
    
    
    
    
    ### Copy_1_of_Value_Comparison
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Copy 1 of Value Comparison|
    |Default Connector|[Admin_Loop](#admin_loop)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Admin_Valid (Admin Valid)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Mark_Admin_as_Valid](#mark_admin_as_valid)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Requester.selectedChoiceLabels| Equal To|Admin_Loop.Label|
    
    
    
    
    ### File_names_check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|File names check|
    |Default Connector|[Confirmation_Screen](#confirmation_screen)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule File_names_found (File names found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[File_Name_Loop](#file_name_loop)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|fileCount| Greater Than Or Equal To|1|
    
    
    
    
    ### User_Whitelisted_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|User Whitelisted Check|
    |Default Connector|[Auto_Approve_Case](#auto_approve_case)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Needs_Approval (Needs Approval)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Add_Approver_to_Collection](#add_approver_to_collection)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|userWhitelisted| Equal To|⬜|
    
    
    
    
    ### Value_Comparison
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Value Comparison|
    |Default Connector|[Leader_Loop](#leader_loop)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Leader_Valid (Leader Valid)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Mark_Leader_as_Valid](#mark_leader_as_valid)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Manager_Approver.selectedChoiceLabels| Equal To|Leader_Loop.Label|
    
    
    
    
    ### Admin_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Admin Loop|
    |Collection Reference|[Ubiquity_Admin_Values_Grab](#ubiquity_admin_values_grab)|
    |Iteration Order|Asc|
    |Next Value Connector|[Copy_1_of_Value_Comparison](#copy_1_of_value_comparison)|
    |No More Values Connector|[Create_Case](#create_case)|
    
    
    ### File_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|File Loop|
    |Collection Reference|fileAttachIds|
    |Iteration Order|Asc|
    |Next Value Connector|[Define_File](#define_file)|
    |No More Values Connector|[Commit_File_Collection](#commit_file_collection)|
    
    
    ### File_Name_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|File Name Loop|
    |Collection Reference|fileAttachNames|
    |Iteration Order|Asc|
    |Next Value Connector|[Add_line_break](#add_line_break)|
    |No More Values Connector|[Confirmation_Screen](#confirmation_screen)|
    
    
    ### Leader_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Leader Loop|
    |Collection Reference|[Ubiquity_Leader_Values_Grab](#ubiquity_leader_values_grab)|
    |Iteration Order|Asc|
    |Next Value Connector|[Value_Comparison](#value_comparison)|
    |No More Values Connector|[Ubiquity_Admin_Field_ID_Grab](#ubiquity_admin_field_id_grab)|
    
    
    ### Commit_File_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Label|Commit File Collection|
    |Input Reference|files2create|
    |Connector|[Add_file_links_to_case_description](#add_file_links_to_case_description)|
    
    
    ### Create_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Create Case|
    |Assign Record Id To Reference|enhancementCaseId|
    |Connector|[Check_for_Files](#check_for_files)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Case_Type__c|Single Case|
    |ContactId|SubmitterContact.Id|
    |Department__c|$User.Department|
    |Description|SubmissionText|
    |Enhancement_Status__c|enhanceStatusForm|
    |Enhancement_System__c|System_to_Enhance|
    |First_Response__c|$Flow.CurrentDateTime|
    |JIRA_Priority__c|Trivial|
    |Origin|Internal|
    |OwnerId|ownerIdForm|
    |Plan__c|a2o1G000000oQW5QAM|
    |Priority|Low|
    |Reason|reasonFormat|
    |RecordTypeId|caseRecordType|
    |Status|New|
    |Subject|formattedSubject|
    |SuppliedEmail|webEmail|
    |Type|Stand Alone Case|
    |Ubiquity_Admin__c|adminValue|
    |Ubiquity_Leader__c|leaderValue|
    
    
    
    
    ### Case_Meta_ID_Grab
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|EntityDefinition|
    |Label|Case Meta ID Grab|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|- Id<br/>- DurableId<br/>|
    |Store Output Automatically|✅|
    |Connector|[Ubiquity_Leader_Field_ID_Grab](#ubiquity_leader_field_id_grab)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|DeveloperName| Equal To|Case|
    
    
    
    
    ### Find_Submitter_s_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Find Submitter's Contact|
    |Assign Null Values If No Records Found|⬜|
    |Output Reference|SubmitterContact|
    |Queried Fields|- Id<br/>- Email<br/>- Ubiquity_Manager__c<br/>|
    |Connector|[Contact_Found_Check](#contact_found_check)|
    
    
    #### Filters (logic: **1 AND (2 OR 3)**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|RecordTypeId| Equal To|01237000000TgxVAAS|
    |2|Name| Equal To|UbiquityAdmin|
    |3|Email| Equal To|$User.Email|
    
    
    
    
    ### Grab_case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Case|
    |Label|Grab case #|
    |Assign Null Values If No Records Found|✅|
    |Output Assignments|assignToReference: enhancementCaseNumber<br/>field: CaseNumber<br/>|
    |Connector|[finalScreen](#finalscreen)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|enhancementCaseId|
    
    
    
    
    ### Grab_User
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|User|
    |Label|Grab User|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[initialScreen](#initialscreen)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$User.Id|
    
    
    
    
    ### Ubiquity_Admin_Field_ID_Grab
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|FieldDefinition|
    |Label|Ubiquity Admin Field ID Grab|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|- Id<br/>- DurableId<br/>|
    |Store Output Automatically|✅|
    |Connector|[Ubiquity_Admin_Values_Grab](#ubiquity_admin_values_grab)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|QualifiedApiName| Equal To|Ubiquity_Admin__c|
    |2|EntityDefinitionId| Equal To|Case_Meta_ID_Grab.DurableId|
    
    
    
    
    ### Ubiquity_Admin_Values_Grab
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|PicklistValueInfo|
    |Label|Ubiquity Admin Values Grab|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Queried Fields|- Id<br/>- Label<br/>|
    |Store Output Automatically|✅|
    |Connector|[Admin_Loop](#admin_loop)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|EntityParticleId| Equal To|Ubiquity_Admin_Field_ID_Grab.DurableId|
    |2|IsActive| Equal To|✅|
    
    
    
    
    ### Ubiquity_Leader_Field_ID_Grab
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|FieldDefinition|
    |Label|Ubiquity Leader Field ID Grab|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|- Id<br/>- DurableId<br/>|
    |Store Output Automatically|✅|
    |Connector|[Ubiquity_Leader_Values_Grab](#ubiquity_leader_values_grab)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|QualifiedApiName| Equal To|Ubiquity_Leader__c|
    |2|EntityDefinitionId| Equal To|Case_Meta_ID_Grab.DurableId|
    
    
    
    
    ### Ubiquity_Leader_Values_Grab
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|PicklistValueInfo|
    |Label|Ubiquity Leader Values Grab|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Queried Fields|- Id<br/>- Label<br/>|
    |Store Output Automatically|✅|
    |Connector|[Leader_Loop](#leader_loop)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|EntityParticleId| Equal To|Ubiquity_Leader_Field_ID_Grab.DurableId|
    |2|IsActive| Equal To|✅|
    
    
    
    
    ### Add_file_links_to_case_description
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Case|
    |Label|Add file links to case description|
    |Connector|[User_Whitelisted_Check](#user_whitelisted_check)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|enhancementCaseId|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Description|SubmissionText|
    
    
    
    
    ### Auto_Approve_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Case|
    |Label|Auto Approve Case|
    |Connector|[Grab_case](#grab_case)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|enhancementCaseId|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Approval_Status__c|Approved|
    |Description|autoApproverText|
    
    
    
    
    ### Confirmation_Screen
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|Confirmation Screen|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|✅|
    |Show Footer|✅|
    |Show Header|⬜|
    |Connector|[Find_Submitter_s_Contact](#find_submitter_s_contact)|
    
    
    #### Logo2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Extension Name|flowruntime:image|
    |Field Type| Component Instance|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Store Output Automatically|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Image Name (input)|ubqtLogo|
    |Horizontal Alignment (input)|center|
    
    
    
    
    #### headerText2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p style="text-align: center;"><strong style="font-size: 16px;">Please review the information below before submitting</strong></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### SubmissionSummaryText
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p><span style="font-size: 14px;">{!SubmissionText}</span></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    ### finalScreen
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|[finalScreen](#finalscreen)|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|✅|
    |Show Footer|✅|
    |Show Header|✅|
    
    
    #### Logo3
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Extension Name|flowruntime:image|
    |Field Type| Component Instance|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Store Output Automatically|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Image Name (input)|ubqtLogo|
    |Horizontal Alignment (input)|center|
    
    
    
    
    #### successDisplayText
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p style="text-align: center;"><strong style="font-size: 20px;">Success!</strong></p><p><span style="font-size: 16px;">Your request has been submitted{!approvalDynamicText}</span></p><p><br></p><p><span style="font-size: 16px;">Please click </span><a href="https://myubiquity.lightning.force.com/lightning/r/Case/{!enhancementCaseId}/view" rel="noopener noreferrer" target="_blank" style="font-size: 16px;">here</a><span style="font-size: 16px;"> to view your submission, case #{!enhancementCaseNumber}</span></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    ### initialScreen
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|[initialScreen](#initialscreen)|
    |Allow Back|⬜|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Show Footer|✅|
    |Show Header|⬜|
    |Connector|[Assign_file_count](#assign_file_count)|
    
    
    #### Logo
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Extension Name|flowruntime:image|
    |Field Type| Component Instance|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Store Output Automatically|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Image Name (input)|ubqtLogo|
    |Horizontal Alignment (input)|center|
    
    
    
    
    #### headerText
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p style="text-align: center;"><strong style="font-size: 20px;">Feature Prioritization Request</strong></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### System_to_Enhance
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|systemChoices|
    |Field Text|System to Enhance|
    |Field Type| Dropdown Box|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[General_Info_Column1](#general_info_column1)|
    
    
    
    
    #### Requester
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Choice References|contactList|
    |Default Value|UbiquityAdminDefault|
    |Extension Name|flowruntime:choiceLookup|
    |Field Text|Requester|
    |Field Type| Component Choice|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Store Output Automatically|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[General_Info_Column1](#general_info_column1)|
    |Placeholder (input)|Ubiquity Admin|
    
    
    
    
    #### Manager_Approver
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Choice References|userList|
    |Default Value|Grab_User.ManagerId|
    |Extension Name|flowruntime:choiceLookup|
    |Field Text|Manager/Approver|
    |Field Type| Component Choice|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Store Output Automatically|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: userWhitelisted<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;booleanValue: false<br/>|
    |Parent Field|[General_Info_Column1](#general_info_column1)|
    |Placeholder (input)|Ubiquity Leader|
    
    
    
    
    #### Department
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|UbiquityDepartment|
    |Default Value|$User.Department|
    |Field Text|Department|
    |Field Type| Dropdown Box|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[General_Info_Column1](#general_info_column1)|
    
    
    
    
    #### Current_workaround2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|Boolean|
    |Default Value|false|
    |Field Text|Is there a current process/workaround?|
    |Field Type| Input Field|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[General_Info_Column1](#general_info_column1)|
    
    
    
    
    #### Explain_the_workaround
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Default Value|Please explain how this process works today. Will other parts of the system need to be addressed with the new process?|
    |Field Text|Explain the Process/Workaround|
    |Field Type| Large Text Area|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Validation Rule|errorMessage: <p>Please enter an explanation</p><br/>formulaExpression: >-<br/>&nbsp;&nbsp;NOT(CONTAINS({!Explain_the_workaround},Please explain how this process works<br/>&nbsp;&nbsp;today.))<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Current_workaround2<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;booleanValue: true<br/>|
    |Parent Field|[General_Info_Column1](#general_info_column1)|
    
    
    
    
    #### General_Info_Column1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region|
    |Is Required|⬜|
    |Parent Field|[General_Info](#general_info)|
    |Width (input)|4|
    
    
    
    
    #### Idea_Title
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Field Text|Feature Requested|
    |Field Type| Input Field|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[General_Info_Column2](#general_info_column2)|
    
    
    
    
    #### Description_of_Idea
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Default Value|What is the feature/enhancement being requested?|
    |Field Text|Description of New Feature|
    |Field Type| Large Text Area|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Validation Rule|errorMessage: <p>Please enter a description</p><br/>formulaExpression: NOT(CONTAINS({!Description_of_Idea},s the feature/enhancement being reque))<br/>|
    |Parent Field|[General_Info_Column2](#general_info_column2)|
    
    
    
    
    #### What_problem_does_this_solve_for
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|What problem does this solve for?|
    |Field Type| Large Text Area|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[General_Info_Column2](#general_info_column2)|
    
    
    
    
    #### Who_is_impacted_by_this_change
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Default Value|Internal Ubiquity departments, Clients, Advisors, Participants, etc|
    |Field Text|Who is impacted by this change?|
    |Field Type| Large Text Area|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Validation Rule|errorMessage: <p>Please enter impacted parties</p><br/>formulaExpression: >-<br/>&nbsp;&nbsp;NOT(CONTAINS({!Who_is_impacted_by_this_change},nal Ubiquity departments,<br/>&nbsp;&nbsp;Clients, Advisors, Partic))<br/>|
    |Parent Field|[General_Info_Column2](#general_info_column2)|
    
    
    
    
    #### General_Info_Column2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region|
    |Is Required|⬜|
    |Parent Field|[General_Info](#general_info)|
    |Width (input)|8|
    
    
    
    
    #### General_Info
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|General Info|
    |Field Type| Region Container|
    |Is Required|⬜|
    |Region Container Type| Section With Header|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Business_Unit_SME
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Choice References|ubiquityEmployees|
    |Extension Name|flowruntime:choiceLookup|
    |Field Text|Business Unit SME|
    |Field Type| Component Choice|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Store Output Automatically|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[Details_Column1](#details_column1)|
    |Placeholder (input)|Responsible for BU-specific testing and validating|
    
    
    
    
    #### fileUpload
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Extension Name|c:Versatile_File_Upload|
    |Field Type| Component Instance|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Output Parameters|- assignToReference: fileAttachIds<br/>&nbsp;&nbsp;name: cdIDs<br/>- assignToReference: fileAttachNames<br/>&nbsp;&nbsp;name: cdLabels<br/>|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[Details_Column1](#details_column1)|
    |File Types (input)|.jpeg,.jpg,.png,.gif,.img,.docx,.doc.,.pdf,.txt|
    |Cd I Ds (input)|fileAttachIds|
    |Cd Labels (input)|fileAttachNames|
    |Label (input)|Screenshot/Docs Upload|
    
    
    
    
    #### Details_Column1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region|
    |Is Required|⬜|
    |Parent Field|[Details](#details)|
    |Width (input)|4|
    
    
    
    
    #### What_measurable_value_will_this_enhancement_provide
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Default Value|What value does this drive for our organization? [Dollars Earned, Dollars Saved, Hours Saved, Headcount consideration, etc.]|
    |Field Text|Value Proposition – Organization | Customer|
    |Field Type| Large Text Area|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Validation Rule|errorMessage: <p>Please enter a value proposition</p><br/>formulaExpression: >-<br/>&nbsp;&nbsp;NOT(CONTAINS({!What_measurable_value_will_this_enhancement_provide},anization?<br/>&nbsp;&nbsp;[Dollars Earned, Dollars Saved, Hours Sa))<br/>|
    |Parent Field|[Details_Column2](#details_column2)|
    
    
    
    
    #### what_other_resources
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|- choiceBI<br/>- choiceReport<br/>- choiceMarketing<br/>- choiceClientNotification<br/>|
    |Field Text|What other resources are needed to complete this update?|
    |Field Type| Multi Select Checkboxes|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: System_to_Enhance<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;elementReference: paradigmChoice<br/>|
    |Parent Field|[Details_Column2](#details_column2)|
    
    
    
    
    #### Details_Column2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region|
    |Is Required|⬜|
    |Parent Field|[Details](#details)|
    |Width (input)|8|
    
    
    
    
    #### Details
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|Details|
    |Field Type| Region Container|
    |Is Required|⬜|
    |Region Container Type| Section With Header|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

