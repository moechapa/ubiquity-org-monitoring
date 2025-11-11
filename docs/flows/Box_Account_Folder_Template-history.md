# Box_Account_Folder_Template history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Box_Account_Folder_Template-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "2337086905"
    
    Check_for_Existing_Folder("⚙️ <em></em><br/>Check for Existing Folder"):::actionCalls
    click Check_for_Existing_Folder "#check_for_existing_folder" "4286923023"
    
    Create_Folder_for_this_account("⚙️ <em></em><br/>Create Folder for this account"):::actionCalls
    click Create_Folder_for_this_account "#create_folder_for_this_account" "2186538065"
    
    Email_BI("📧 <em></em><br/>Email BI"):::actionCalls
    click Email_BI "#email_bi" "4196988477"
    
    Mark_folder_as_OLD("⚙️ <em></em><br/>Mark folder as OLD"):::actionCalls
    click Mark_folder_as_OLD "#mark_folder_as_old" "1125311387"
    
    Move_account_folder_to_subfolder("⚙️ <em></em><br/>Move account folder to subfolder"):::actionCalls
    click Move_account_folder_to_subfolder "#move_account_folder_to_subfolder" "485241148"
    
    Assign_completed_values[\"🟰 <em></em><br/>Assign completed values"/]:::assignments
    click Assign_completed_values "#assign_completed_values" "382766024"
    
    Assign_Conversion_Plan_Folder_Id[\"🟰 <em></em><br/>Assign Conversion Plan Folder Id"/]:::assignments
    click Assign_Conversion_Plan_Folder_Id "#assign_conversion_plan_folder_id" "73462762"
    
    Assign_email_subject[\"🟰 <em></em><br/>Assign email subject"/]:::assignments
    click Assign_email_subject "#assign_email_subject" "3552309616"
    
    Assign_imp_note_value[\"🟰 <em></em><br/>Assign imp note value"/]:::assignments
    click Assign_imp_note_value "#assign_imp_note_value" "3492917610"
    
    Assign_New_Plan_Template_Folder_Id[\"🟰 <em></em><br/>Assign New Plan Template Folder Id"/]:::assignments
    click Assign_New_Plan_Template_Folder_Id "#assign_new_plan_template_folder_id" "673929412"
    
    Check_for_imp{"🔀 <em></em><br/>Check for imp"}:::decisions
    click Check_for_imp "#check_for_imp" "2382692140"
    
    Check_for_SubFolder{"🔀 <em></em><br/>Check for SubFolder"}:::decisions
    click Check_for_SubFolder "#check_for_subfolder" "390138442"
    
    Check_if_older_than_a_month{"🔀 <em></em><br/>Check if older than a month"}:::decisions
    click Check_if_older_than_a_month "#check_if_older_than_a_month" "899972657"
    
    Is_Template_Folder_Id_Assignment_Done{"🔀 <em></em><br/>Is Template Folder Id Assignment Done"}:::decisions
    click Is_Template_Folder_Id_Assignment_Done "#is_template_folder_id_assignment_done" "4225880117"
    
    Is_there_an_existing_Box_Folder_for_the_Account{"🔀 <em></em><br/>Is there an existing Box Folder for the Account?"}:::decisions
    click Is_there_an_existing_Box_Folder_for_the_Account "#is_there_an_existing_box_folder_for_the_account" "3441616877"
    
    New_or_Conversion{"🔀 <em></em><br/>New or Conversion"}:::decisions
    click New_or_Conversion "#new_or_conversion" "2314820579"
    
    Proj_task_found_check{"🔀 <em></em><br/>Proj task found check"}:::decisions
    click Proj_task_found_check "#proj_task_found_check" "2798614437"
    
    Delete_existing_frup[("🗑️ <em></em><br/>Delete existing frup")]:::recordDeletes
    click Delete_existing_frup "#delete_existing_frup" "3460943406"
    
    Find_Create_Client_Folders_Task[("🔍 <em></em><br/>Find Create Client Folders Task")]:::recordLookups
    click Find_Create_Client_Folders_Task "#find_create_client_folders_task" "573400933"
    
    Get_Corresponding_Account_Sub_Box_Folder[("🔍 <em></em><br/>Get Corresponding Account Sub Box Folder")]:::recordLookups
    click Get_Corresponding_Account_Sub_Box_Folder "#get_corresponding_account_sub_box_folder" "3031374345"
    
    Get_existing_FRUP_record[("🔍 <em></em><br/>Get existing FRUP record")]:::recordLookups
    click Get_existing_FRUP_record "#get_existing_frup_record" "4294447480"
    
    Update_Box_Id_on_Account[("🛠️ <em></em><br/>Update Box Id on Account")]:::recordUpdates
    click Update_Box_Id_on_Account "#update_box_id_on_account" "3079133524"
    
    Update_Imp_Notes[("🛠️ <em></em><br/>Update Imp Notes")]:::recordUpdates
    click Update_Imp_Notes "#update_imp_notes" "1059074314"
    
    Update_Project_Task[("🛠️ <em></em><br/>Update Project Task")]:::recordUpdates
    click Update_Project_Task "#update_project_task" "528396477"
    
    Wipe_box_fields_on_account[("🛠️ <em></em><br/>Wipe box fields on account")]:::recordUpdates
    click Wipe_box_fields_on_account "#wipe_box_fields_on_account" "721640805"
    
    Check_for_Existing_Folder --> Is_there_an_existing_Box_Folder_for_the_Account
    Create_Folder_for_this_account --> Move_account_folder_to_subfolder
    Email_BI --> END_Email_BI
    Mark_folder_as_OLD --> Delete_existing_frup
    Move_account_folder_to_subfolder --> Update_Box_Id_on_Account
    Assign_completed_values --> Update_Project_Task
    Assign_Conversion_Plan_Folder_Id --> Is_Template_Folder_Id_Assignment_Done
    Assign_email_subject --> Email_BI
    Assign_imp_note_value --> Update_Imp_Notes
    Assign_New_Plan_Template_Folder_Id --> Is_Template_Folder_Id_Assignment_Done
    Check_for_imp --> |"Imp Present"| Assign_imp_note_value
    Check_for_imp --> |"Default Outcome"| END_Check_for_imp
    Check_for_SubFolder --> |"Subfolder Present"| Create_Folder_for_this_account
    Check_for_SubFolder --> |"Not Present"| END_Check_for_SubFolder
    Check_if_older_than_a_month --> |"Folder older than 1 month"| Mark_folder_as_OLD
    Check_if_older_than_a_month --> |"Default Outcome"| END_Check_if_older_than_a_month
    Is_Template_Folder_Id_Assignment_Done --> |"Template Folder Assignment Exists"| Get_Corresponding_Account_Sub_Box_Folder
    Is_Template_Folder_Id_Assignment_Done --> |"Default Outcome"| END_Is_Template_Folder_Id_Assignment_Done
    Is_there_an_existing_Box_Folder_for_the_Account --> |"No box folder"| New_or_Conversion
    Is_there_an_existing_Box_Folder_for_the_Account --> |"Default Outcome"| Get_existing_FRUP_record
    New_or_Conversion --> |"New Plan"| Assign_New_Plan_Template_Folder_Id
    New_or_Conversion --> |"Conversion"| Assign_Conversion_Plan_Folder_Id
    New_or_Conversion --> |"Default Outcome"| Is_Template_Folder_Id_Assignment_Done
    Proj_task_found_check --> |"Project task found"| Assign_completed_values
    Proj_task_found_check --> |"Default Outcome"| END_Proj_task_found_check
    Delete_existing_frup --> Wipe_box_fields_on_account
    Find_Create_Client_Folders_Task --> Proj_task_found_check
    Get_Corresponding_Account_Sub_Box_Folder --> Check_for_SubFolder
    Get_existing_FRUP_record --> Check_if_older_than_a_month
    Update_Box_Id_on_Account --> Check_for_imp
    Update_Imp_Notes --> Find_Create_Client_Folders_Task
    Update_Project_Task --> END_Update_Project_Task
    Wipe_box_fields_on_account --> Assign_email_subject
    START --> |"Run Immediately"| Check_for_Existing_Folder
    END_Email_BI(( END )):::endClass
    END_Check_for_imp(( END )):::endClass
    END_Check_for_SubFolder(( END )):::endClass
    END_Check_if_older_than_a_month(( END )):::endClass
    END_Is_Template_Folder_Id_Assignment_Done(( END )):::endClass
    END_Proj_task_found_check(( END )):::endClass
    END_Update_Project_Task(( END )):::endClass
    
    
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
    |Object|Plan__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create|
    |Label|Box | Account Folder Template|
    |Status|⚠️ Draft|
    |Description|Creates a folder in Box for this Account with the specified Template Folder|
    |Environments|Default|
    |Interview Label|Account Folder Template {!$Flow.CurrentDateTime}|
    |Source Template|box__Account_Folder_Template|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    
    
    #### Scheduled Paths
    
    |Label|Name|Offset Number|Offset Unit|Record Field|Time Source|Connector|
    |:-- |:-- |:-- |:-- |:-- |:-- |:--  |
    |<!-- -->|<!-- -->|<!-- -->|<!-- -->|<!-- -->|<!-- -->|[Check_for_Existing_Folder](#check_for_existing_folder)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |boxNotes|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |emailBody|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |emailSubject|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |existingFolderId|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |newBoxFolderId|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |oldFolderName|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |targetAccountSubFolderId|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |TemplateFolderId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |accountNameOLD|String|{!$Record.Account__r.Name} & " - OLD"|<!-- -->|
    |boxNoteFormula|String|TEXT(MONTH({!$Flow.CurrentDate})) + "/" + TEXT(DAY({!$Flow.CurrentDate})) + "/" + TEXT(YEAR({!$Flow.CurrentDate})) + " - Created client folders. AUTO" +<br/>IF(ISBLANK({!$Record.Implementation__r.Implementation_Notes__c}),"",BR() + {!$Record.Implementation__r.Implementation_Notes__c})|<!-- -->|
    |oneMonthAgo|Date|TODAY() - 30|<!-- -->|
    |targetAccountSubFolderName|String|IF(ISNUMBER(LEFT({!$Record.Name}, 1)),<br/>"#",<br/>UPPER(LEFT({!$Record.Name}, 1)))|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Check_for_Existing_Folder
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Check for Existing Folder|
    |Action Type|Apex|
    |Action Name|box__GetFolderIdByRecordId_v2|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|box__GetFolderIdByRecordId_v2|
    |Output Parameters|assignToReference: existingFolderId<br/>name: boxFolderId<br/>|
    |Record Id (input)|$Record.Account_Id__c|
    |Connector|[Is_there_an_existing_Box_Folder_for_the_Account](#is_there_an_existing_box_folder_for_the_account)|
    
    
    ### Create_Folder_for_this_account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Create Folder for this account|
    |Action Type|Apex|
    |Action Name|box__CreateFolderForRecordIdFromTemplate_v2|
    |Description|Creates folder in box and links it to account record.|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|box__CreateFolderForRecordIdFromTemplate_v2|
    |Store Output Automatically|✅|
    |Record Id (input)|$Record.Account__c|
    |Template Folder Id (input)|TemplateFolderId|
    |Connector|[Move_account_folder_to_subfolder](#move_account_folder_to_subfolder)|
    
    
    ### Email_BI
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Email BI|
    |Action Type|Email Simple|
    |Action Name|emailSimple|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|emailSimple|
    |Email Addresses (input)|bi@myubiquity.com|
    |Sender Type (input)|DefaultWorkflowUser|
    |Email Subject (input)|emailSubject|
    |Email Body (input)|emailBody|
    
    
    ### Mark_folder_as_OLD
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Mark folder as OLD|
    |Action Type|Apex|
    |Action Name|box__UpdateFolder|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|box__UpdateFolder|
    |Store Output Automatically|✅|
    |Folder Id (input)|existingFolderId|
    |Folder Name (input)|accountNameOLD|
    |Connector|[Delete_existing_frup](#delete_existing_frup)|
    
    
    ### Move_account_folder_to_subfolder
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Move account folder to subfolder|
    |Action Type|Apex|
    |Action Name|box__MoveFolder_v2|
    |Description|Moves new account folder to the corresponding letter subfolder<br/>Root -> Accounts -> A Accounts -> a new account folder|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|box__MoveFolder_v2|
    |Store Output Automatically|✅|
    |Folder Id (input)|Create_Folder_for_this_account.folderId|
    |New Parent Folder Id (input)|targetAccountSubFolderId|
    |Connector|[Update_Box_Id_on_Account](#update_box_id_on_account)|
    
    
    ### Assign_completed_values
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign completed values|
    |Connector|[Update_Project_Task](#update_project_task)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Find_Create_Client_Folders_Task.Actual_Completion_Date__c| Assign|$Flow.CurrentDateTime|
    |Find_Create_Client_Folders_Task.Actual_Start_Date__c| Assign|$Flow.CurrentDateTime|
    |Find_Create_Client_Folders_Task.Status__c| Assign|Completed|
    
    
    
    
    ### Assign_Conversion_Plan_Folder_Id
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Conversion Plan Folder Id|
    |Description|Provide the box template folder value that needs to created when an account record is created.|
    |Connector|[Is_Template_Folder_Id_Assignment_Done](#is_template_folder_id_assignment_done)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |TemplateFolderId| Assign|263969139950|
    
    
    
    
    ### Assign_email_subject
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign email subject|
    |Connector|[Email_BI](#email_bi)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |emailSubject| Add|Please create Box folder for account:|
    |emailSubject| Add|$Record.Account__r.Name|
    |emailBody| Add|New folder requested for new plan.  Existing plan's folder unlinked.  Old folder Id:|
    |emailBody| Add|existingFolderId|
    |emailBody| Add|. Use the "Create Box Folder" button on account's "Box" tab|
    
    
    
    
    ### Assign_imp_note_value
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign imp note value|
    |Connector|[Update_Imp_Notes](#update_imp_notes)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |boxNotes| Assign|boxNoteFormula|
    
    
    
    
    ### Assign_New_Plan_Template_Folder_Id
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign New Plan Template Folder Id|
    |Description|Provide the box template folder value that needs to created when an account record is created.|
    |Connector|[Is_Template_Folder_Id_Assignment_Done](#is_template_folder_id_assignment_done)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |TemplateFolderId| Assign|263971360305|
    
    
    
    
    ### Check_for_imp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check for imp|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Imp_Present (Imp Present)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_imp_note_value](#assign_imp_note_value)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Implementation__c| Is Blank|⬜|
    
    
    
    
    ### Check_for_SubFolder
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check for SubFolder|
    |Default Connector Label|Not Present|
    
    
    #### Rule Subfolder_Present (Subfolder Present)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Create_Folder_for_this_account](#create_folder_for_this_account)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|targetAccountSubFolderId| Is Blank|⬜|
    
    
    
    
    ### Check_if_older_than_a_month
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check if older than a month|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Folder_older_than_1_month (Folder older than 1 month)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Mark_folder_as_OLD](#mark_folder_as_old)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_existing_FRUP_record.CreatedDate| Less Than|oneMonthAgo|
    
    
    
    
    ### Is_Template_Folder_Id_Assignment_Done
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Is Template Folder Id Assignment Done|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Template_Folder_Assignment_Exists (Template Folder Assignment Exists)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Corresponding_Account_Sub_Box_Folder](#get_corresponding_account_sub_box_folder)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|TemplateFolderId| Is Null|⬜|
    
    
    
    
    ### Is_there_an_existing_Box_Folder_for_the_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Is there an existing Box Folder for the Account?|
    |Default Connector|[Get_existing_FRUP_record](#get_existing_frup_record)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule No_box_folder (No box folder)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[New_or_Conversion](#new_or_conversion)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|existingFolderId| Is Blank|✅|
    
    
    
    
    ### New_or_Conversion
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|New or Conversion|
    |Default Connector|[Is_Template_Folder_Id_Assignment_Done](#is_template_folder_id_assignment_done)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule New_Plan (New Plan)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_New_Plan_Template_Folder_Id](#assign_new_plan_template_folder_id)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Plan_Type1__c| Equal To|New Plan|
    
    
    
    
    #### Rule Conversion (Conversion)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Conversion_Plan_Folder_Id](#assign_conversion_plan_folder_id)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Plan_Type1__c| Equal To|Conversion Plan|
    
    
    
    
    ### Proj_task_found_check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Proj task found check|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Project_task_found (Project task found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_completed_values](#assign_completed_values)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|[Find_Create_Client_Folders_Task](#find_create_client_folders_task)| Is Null|⬜|
    
    
    
    
    ### Delete_existing_frup
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Delete|
    |Object|box__FRUP__c|
    |Label|Delete existing frup|
    |Connector|[Wipe_box_fields_on_account](#wipe_box_fields_on_account)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|box__Record_ID__c| Equal To|$Record.Account_Id__c|
    
    
    
    
    ### Find_Create_Client_Folders_Task
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Project_Task__c|
    |Label|Find Create Client Folders Task|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|Id|
    |Store Output Automatically|✅|
    |Connector|[Proj_task_found_check](#proj_task_found_check)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Name| Equal To|Create Client Folders|
    |2|Implementation__c| Equal To|$Record.Implementation__c|
    |3|Status__c| Not Equal To|Completed|
    
    
    
    
    ### Get_Corresponding_Account_Sub_Box_Folder
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|box__Folder_Details__c|
    |Label|Get Corresponding Account Sub Box Folder|
    |Assign Null Values If No Records Found|⬜|
    |Output Assignments|assignToReference: targetAccountSubFolderId<br/>field: box__FolderId__c<br/>|
    |Connector|[Check_for_SubFolder](#check_for_subfolder)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Name| Equal To|targetAccountSubFolderName|
    
    
    
    
    ### Get_existing_FRUP_record
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|box__FRUP__c|
    |Label|Get existing FRUP record|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|- Id<br/>- CreatedDate<br/>|
    |Sort Field|CreatedDate|
    |Sort Order|Desc|
    |Store Output Automatically|✅|
    |Connector|[Check_if_older_than_a_month](#check_if_older_than_a_month)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|box__Record_ID__c| Equal To|$Record.Account_Id__c|
    
    
    
    
    ### Update_Box_Id_on_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Account|
    |Label|Update Box Id on Account|
    |Connector|[Check_for_imp](#check_for_imp)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$Record.Account_Id__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Box_Folder_Id__c|Create_Folder_for_this_account.folderId|
    |Box_Folder_Linked__c|✅|
    
    
    
    
    ### Update_Imp_Notes
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Implementation__c|
    |Label|Update Imp Notes|
    |Connector|[Find_Create_Client_Folders_Task](#find_create_client_folders_task)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$Record.Implementation__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Implementation_Notes__c|boxNotes|
    
    
    
    
    ### Update_Project_Task
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Project Task|
    |Input Reference|[Find_Create_Client_Folders_Task](#find_create_client_folders_task)|
    
    
    ### Wipe_box_fields_on_account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Account|
    |Label|Wipe box fields on account|
    |Connector|[Assign_email_subject](#assign_email_subject)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$Record.Account__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Box_Docusign_Folder_Id__c|<!-- -->|
    |Box_Folder_Id__c|<!-- -->|
    |Box_Folder_Linked__c|⬜|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

