# Case_Button_Create_Jira_Case history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Case_Button_Create_Jira_Case-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Screen Flow</b>"]):::startClass
    click START "#general-information" "2172999748"
    
    Submit_for_Approval("⚡ <em></em><br/>Submit for Approval"):::actionCalls
    click Submit_for_Approval "#submit_for_approval" "746615087"
    
    Add_File_to_collection[\"🟰 <em></em><br/>Add File to collection"/]:::assignments
    click Add_File_to_collection "#add_file_to_collection" "1795823065"
    
    Define_New_File_Link[\"🟰 <em></em><br/>Define New File Link"/]:::assignments
    click Define_New_File_Link "#define_new_file_link" "261053679"
    
    Set_Initial_Case_Values[\"🟰 <em></em><br/>Set Initial Case Values"/]:::assignments
    click Set_Initial_Case_Values "#set_initial_case_values" "1006207281"
    
    Show_Error_Text[\"🟰 <em></em><br/>Show Error Text"/]:::assignments
    click Show_Error_Text "#show_error_text" "3494453036"
    
    Check_if_needs_approval_submission{"🔀 <em></em><br/>Check if needs approval submission"}:::decisions
    click Check_if_needs_approval_submission "#check_if_needs_approval_submission" "526384278"
    
    Check_Required_Inputs{"🔀 <em></em><br/>Check Required Inputs"}:::decisions
    click Check_Required_Inputs "#check_required_inputs" "190308114"
    
    Files_Uploaded{"🔀 <em></em><br/>Files Uploaded?"}:::decisions
    click Files_Uploaded "#files_uploaded" "4068472257"
    
    From_List_OR_Parent_Case{"🔀 <em></em><br/>From List or Parent Case?"}:::decisions
    click From_List_OR_Parent_Case "#from_list_or_parent_case" "681706727"
    
    From_List_OR_Parent_Case_0{"🔀 <em></em><br/>From List or Parent Case?"}:::decisions
    click From_List_OR_Parent_Case_0 "#from_list_or_parent_case_0" "1854729597"
    
    File_Upload_Loop{{"🔁 <em></em><br/>File Upload Loop"}}:::loops
    click File_Upload_Loop "#file_upload_loop" "2872477560"
    
    Create_Child_Case_0[("➕ <em></em><br/>Create Child Case")]:::recordCreates
    click Create_Child_Case_0 "#create_child_case_0" "518597659"
    
    Create_Linked_Files[("➕ <em></em><br/>Create Linked Files")]:::recordCreates
    click Create_Linked_Files "#create_linked_files" "4007179570"
    
    Create_Parent_Case[("➕ <em></em><br/>Create Parent Case")]:::recordCreates
    click Create_Parent_Case "#create_parent_case" "890045126"
    
    Get_JIRA_RecordType[("🔍 <em></em><br/>Get JIRA RecordType")]:::recordLookups
    click Get_JIRA_RecordType "#get_jira_recordtype" "1508053640"
    
    Get_new_jira_case[("🔍 <em></em><br/>Get new jira case")]:::recordLookups
    click Get_new_jira_case "#get_new_jira_case" "3852410528"
    
    Get_PRKS_User[("🔍 <em></em><br/>Get PRKS User")]:::recordLookups
    click Get_PRKS_User "#get_prks_user" "26734204"
    
    Grab_Parent_Case_Record[("🔍 <em></em><br/>Grab Parent Case Record")]:::recordLookups
    click Grab_Parent_Case_Record "#grab_parent_case_record" "663683406"
    
    Grab_running_user_manager[("🔍 <em></em><br/>Grab running user manager")]:::recordLookups
    click Grab_running_user_manager "#grab_running_user_manager" "1234911605"
    
    Enter_Case_Details(["💻 <em></em><br/>Enter Case Details"]):::screens
    click Enter_Case_Details "#enter_case_details" "3988043782"
    
    Error_Screen(["💻 <em></em><br/>Error Screen"]):::screens
    click Error_Screen "#error_screen" "2584811577"
    
    Success_Screen(["💻 <em></em><br/>Success Screen"]):::screens
    click Success_Screen "#success_screen" "1483250965"
    
    Run_approval_check[["🔗 <em>Subflow</em><br/>Run approval check"]]:::subflows
    click Run_approval_check "#run_approval_check" "271232328"
    
    Submit_for_Approval --> Success_Screen
    Add_File_to_collection --> File_Upload_Loop
    Define_New_File_Link --> Add_File_to_collection
    Set_Initial_Case_Values --> From_List_OR_Parent_Case
    Show_Error_Text --> Enter_Case_Details
    Check_if_needs_approval_submission --> |"Needs approval"| Submit_for_Approval
    Check_if_needs_approval_submission --> |"Default Outcome"| Success_Screen
    Check_Required_Inputs --> |"Inputs Valid"| From_List_OR_Parent_Case_0
    Check_Required_Inputs --> |"Default Outcome"| Show_Error_Text
    Files_Uploaded --> |"Yes"| File_Upload_Loop
    Files_Uploaded --> |"No"| Get_new_jira_case
    From_List_OR_Parent_Case --> |"Parent case"| Grab_Parent_Case_Record
    From_List_OR_Parent_Case --> |"List view"| Enter_Case_Details
    From_List_OR_Parent_Case_0 --> |"Parent case"| Create_Child_Case_0
    From_List_OR_Parent_Case_0 --> |"List view"| Create_Parent_Case
    File_Upload_Loop --> |"For Each"|Define_New_File_Link
    File_Upload_Loop ---> |"After Last"|Create_Linked_Files
    Create_Child_Case_0 --> Files_Uploaded
    Create_Child_Case_0 -. Fault .->Cancel_Attempted_Record_Creation
    Create_Linked_Files --> Get_new_jira_case
    Create_Linked_Files -. Fault .->Cancel_Attempted_Record_Creation
    Create_Parent_Case --> Create_Child_Case_0
    Create_Parent_Case -. Fault .->Cancel_Attempted_Record_Creation
    Get_JIRA_RecordType --> Set_Initial_Case_Values
    Get_new_jira_case --> Run_approval_check
    Get_PRKS_User --> Get_JIRA_RecordType
    Grab_Parent_Case_Record --> Enter_Case_Details
    Grab_Parent_Case_Record -. Fault .->Error_Screen
    Grab_running_user_manager --> Get_PRKS_User
    Grab_running_user_manager -. Fault .->Error_Screen
    Enter_Case_Details --> Check_Required_Inputs
    Error_Screen --> END_Error_Screen
    Success_Screen --> END_Success_Screen
    START -->  Grab_running_user_manager
    Run_approval_check --> Check_if_needs_approval_submission
    END_Error_Screen(( END )):::endClass
    END_Success_Screen(( END )):::endClass
    
    
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
    |Label|Case | Button | Create JIRA Case|
    |Status|Active|
    |Description|Updated to move "Check Groups" action and approval logic into subflow so it can be called from apex.|
    |Environments|Default|
    |Interview Label|Case | Button | Create Jira Case {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Grab_running_user_manager](#grab_running_user_manager)|
    |Next Node|[Grab_running_user_manager](#grab_running_user_manager)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |Child_Case|SObject|⬜|⬜|✅|Case|<!-- -->|
    |displayErrorText|Boolean|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |Files2Link|SObject|✅|⬜|⬜|ContentDocumentLink|<!-- -->|
    |FileUploadId|String|✅|⬜|⬜|<!-- -->|<!-- -->|
    |ParentCase|SObject|⬜|⬜|⬜|Case|<!-- -->|
    |recordId|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |SingleFile2Link|SObject|⬜|⬜|⬜|ContentDocumentLink|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |AutoCasePriorityfromJira|String|CASE(TEXT({!JIRAPriority_ChoiceSet}),<br/>"Blocker","Critical",<br/>TEXT({!JIRAPriority_ChoiceSet}))|<!-- -->|
    |newCaseUrl|String|LEFT({!$Api.Partner_Server_URL_340}, FIND( '/services', {!$Api.Partner_Server_URL_340}))+"lightning/r/Case/"+{!ParentCase.Id}+"/view"|used for new jira parent case|
    |UbiquityAdmin|String|{!$User.FirstName} + " " + {!$User.LastName}|<!-- -->|
    |UbiquityLeader|String|{!Grab_running_user_manager.FirstName} + " " + {!Grab_running_user_manager.LastName}|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Submit_for_Approval
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Submit for Approval|
    |Action Type|Submit|
    |Action Name|submit|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|submit|
    |Offset|0|
    |Store Output Automatically|✅|
    |Object Id (input)|Child_Case.Id|
    |Submitter Id (input)|$User.Id|
    |Connector|[Success_Screen](#success_screen)|
    
    
    ### Add_File_to_collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add File to collection|
    |Connector|[File_Upload_Loop](#file_upload_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Files2Link| Add|SingleFile2Link|
    
    
    
    
    ### Define_New_File_Link
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Define New File Link|
    |Connector|[Add_File_to_collection](#add_file_to_collection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |SingleFile2Link.ContentDocumentId| Assign|[File_Upload_Loop](#file_upload_loop)|
    |SingleFile2Link.LinkedEntityId| Assign|Child_Case.Id|
    
    
    
    
    ### Set_Initial_Case_Values
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Set Initial Case Values|
    |Connector|[From_List_OR_Parent_Case](#from_list_or_parent_case)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Child_Case.RecordTypeId| Assign|Get_JIRA_RecordType.Id|
    |Child_Case.Description| Assign|This is the description section. Please describe the issue you are encountering. Is something not functioning as expected, does data need to be corrected, or any other issues. Provide any research done to determine the cause of the issue and any steps take to attempt to resolve it if possible. Any links can be included here as well.|
    
    
    
    
    ### Show_Error_Text
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Show Error Text|
    |Connector|isGoTo: true<br/>targetReference: Enter_Case_Details<br/>|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |displayErrorText| Assign|✅|
    
    
    
    
    ### Check_if_needs_approval_submission
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check if needs approval submission|
    |Default Connector|[Success_Screen](#success_screen)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Needs_approval (Needs approval)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Submit_for_Approval](#submit_for_approval)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Run_approval_check.needsApproval| Equal To|✅|
    
    
    
    
    ### Check_Required_Inputs
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check Required Inputs|
    |Default Connector|[Show_Error_Text](#show_error_text)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Inputs_Valid (Inputs Valid)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[From_List_OR_Parent_Case_0](#from_list_or_parent_case_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Child_Case.Description| Is Blank|⬜|
    |2|Child_Case.Description| Not Equal To|This is the description section. Please describe the issue you are encountering. Is something not functioning as expected, does data need to be corrected, or any other issues. Provide any research done to determine the cause of the issue and any steps take to attempt to resolve it if possible. Any links can be included here as well.|
    |3|Child_Case.JIRA_Component__c| Is Blank|⬜|
    |4|Child_Case.JIRA_End_User_Type__c| Is Blank|⬜|
    
    
    
    
    ### Files_Uploaded
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Files Uploaded?|
    |Default Connector|[Get_new_jira_case](#get_new_jira_case)|
    |Default Connector Label|No|
    
    
    #### Rule Yes (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[File_Upload_Loop](#file_upload_loop)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|FileUploadId| Is Empty|⬜|
    
    
    
    
    ### From_List_OR_Parent_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|From List or Parent Case?|
    |Default Connector|[Enter_Case_Details](#enter_case_details)|
    |Default Connector Label|List view|
    
    
    #### Rule Parent_case (Parent case)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Grab_Parent_Case_Record](#grab_parent_case_record)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|recordId| Is Blank|⬜|
    
    
    
    
    ### From_List_OR_Parent_Case_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|From List or Parent Case?|
    |Default Connector|[Create_Parent_Case](#create_parent_case)|
    |Default Connector Label|List view|
    
    
    #### Rule Parent_case_0 (Parent case)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Create_Child_Case_0](#create_child_case_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Parent_case| Equal To|✅|
    
    
    
    
    ### File_Upload_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|File Upload Loop|
    |Collection Reference|FileUploadId|
    |Iteration Order|Asc|
    |Next Value Connector|[Define_New_File_Link](#define_new_file_link)|
    |No More Values Connector|[Create_Linked_Files](#create_linked_files)|
    
    
    ### Create_Child_Case_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Create Child Case|
    |Assign Record Id To Reference|Child_Case.Id|
    |Fault Connector|isGoTo: true<br/>targetReference: Cancel_Attempted_Record_Creation<br/>|
    |Connector|[Files_Uploaded](#files_uploaded)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|LookupAccount.recordId|
    |Case_Type__c|Child Case|
    |Department__c|Paradigm/RKS|
    |Description|Child_Case.Description|
    |Implementation__c|LookupImp.recordId|
    |JIRA_Component__c|Child_Case.JIRA_Component__c|
    |JIRA_End_User_Type__c|Child_Case.JIRA_End_User_Type__c|
    |JIRA_Priority__c|JIRA_Priority|
    |JIRA_Severity__c|Severity|
    |Origin|Internal|
    |OwnerId|Get_PRKS_User.Id|
    |ParentId|ParentCase.Id|
    |Plan__c|LookupPlan.recordId|
    |Priority|JIRA_Priority|
    |Reason|Paradigm Bug|
    |RecordTypeId|Get_JIRA_RecordType.Id|
    |Status|Assigned|
    |Subject|Subject_Child|
    |SuppliedEmail|$User.Email|
    |Ubiquity_Admin__c|Ubiquity_Admin_Child|
    |Ubiquity_Leader__c|Ubiquity_Leader_Child|
    
    
    
    
    ### Create_Linked_Files
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Label|Create Linked Files|
    |Fault Connector|Cancel_Attempted_Record_Creation|
    |Input Reference|Files2Link|
    |Connector|[Get_new_jira_case](#get_new_jira_case)|
    
    
    ### Create_Parent_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Create Parent Case|
    |Assign Record Id To Reference|ParentCase.Id|
    |Fault Connector|isGoTo: true<br/>targetReference: Cancel_Attempted_Record_Creation<br/>|
    |Connector|[Create_Child_Case_0](#create_child_case_0)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|LookupAccount.recordId|
    |Case_Type__c|Parent Case w/ JIRA Child Case|
    |Description|Child_Case.Description|
    |Implementation__c|LookupImp.recordId|
    |OwnerId|$User.Id|
    |Plan__c|LookupPlan.recordId|
    |Priority|JIRA_Priority|
    |Status|Child Case Pending|
    |Subject|JIRA Parent Case [{!Subject_Child}]|
    |Type|Parent Case|
    
    
    
    
    ### Get_JIRA_RecordType
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|RecordType|
    |Label|Get JIRA RecordType|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|Id|
    |Store Output Automatically|✅|
    |Connector|[Set_Initial_Case_Values](#set_initial_case_values)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|SobjectType| Equal To|Case|
    |2|Name| Contains|Jira|
    
    
    
    
    ### Get_new_jira_case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Case|
    |Label|Get new jira case|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Run_approval_check](#run_approval_check)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Child_Case.Id|
    
    
    
    
    ### Get_PRKS_User
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|User|
    |Label|Get PRKS User|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|Id|
    |Store Output Automatically|✅|
    |Connector|[Get_JIRA_RecordType](#get_jira_recordtype)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Name| Equal To|PRKS|
    
    
    
    
    ### Grab_Parent_Case_Record
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Case|
    |Label|Grab Parent Case Record|
    |Assign Null Values If No Records Found|✅|
    |Fault Connector|isGoTo: true<br/>targetReference: Error_Screen<br/>|
    |Output Assignments|- assignToReference: LookupAccount.recordId<br/>&nbsp;&nbsp;field: AccountId<br/>- assignToReference: ParentCase.Id<br/>&nbsp;&nbsp;field: Id<br/>- assignToReference: LookupImp.recordId<br/>&nbsp;&nbsp;field: Implementation__c<br/>- assignToReference: LookupPlan.recordId<br/>&nbsp;&nbsp;field: Plan__c<br/>|
    |Connector|[Enter_Case_Details](#enter_case_details)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Grab_running_user_manager
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|User|
    |Label|Grab running user manager|
    |Assign Null Values If No Records Found|⬜|
    |Fault Connector|isGoTo: true<br/>targetReference: Error_Screen<br/>|
    |Get First Record Only|✅|
    |Queried Fields|- Id<br/>- FirstName<br/>- LastName<br/>- ManagerId<br/>- UserRoleId<br/>- Profile_ID__c<br/>|
    |Store Output Automatically|✅|
    |Connector|[Get_PRKS_User](#get_prks_user)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$User.ManagerId|
    
    
    
    
    ### Enter_Case_Details
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|Enter Case Details|
    |Allow Back|⬜|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Next Or Finish Button Label|Submit|
    |Show Footer|✅|
    |Show Header|✅|
    |Connector|[Check_Required_Inputs](#check_required_inputs)|
    
    
    #### Subject_Child
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Default Value|1 Line Description - Company Name - Impacted Participant|
    |Field Text|Subject|
    |Field Type| Input Field|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Validation Rule|errorMessage: <p>Please enter a subject</p><br/>formulaExpression: NOT(CONTAINS({!Subject_Child},Company Name))<br/>|
    |Parent Field|[Case_Information_Column1](#case_information_column1)|
    
    
    
    
    #### Child_Case.Description
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|Child_Case.Description|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[Case_Information_Column1](#case_information_column1)|
    
    
    
    
    #### File_Upload_Child
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Extension Name|forceContent:fileUpload|
    |Field Type| Component Instance|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Output Parameters|assignToReference: FileUploadId<br/>name: contentDocIds<br/>|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[Case_Information_Column1](#case_information_column1)|
    |Label (input)|Upload Files|
    |Accept (input)|.jpg, .png, .gif, .pdf, .docx|
    |Multiple (input)|✅|
    |Title (input)|Upload relevant screenshots and documents|
    
    
    
    
    #### Case_Information_Column1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region|
    |Is Required|⬜|
    |Parent Field|[Case_Information](#case_information)|
    |Width (input)|6|
    
    
    
    
    #### JIRA_Priority
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|JIRAPriority_ChoiceSet|
    |Field Text|JIRA Priority|
    |Field Type| Dropdown Box|
    |Help Text|<p><strong>High- </strong>A critical incident with very high impact.</p><p><br></p><p><strong>Medium-</strong> A major incident with significant impact.</p><p><br></p><p><strong>Low-</strong> A minor incident with low impact</p>|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[Case_Information_Column2](#case_information_column2)|
    
    
    
    
    #### Severity
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|severityChoices|
    |Field Text|Severity|
    |Field Type| Dropdown Box|
    |Help Text|<p><strong>Sev 1</strong>- Complete outage or critical functionality of the service is unavailable, affecting all users.</p><p><br></p><p><strong>Sev 2</strong>- Major functionality is impacted, but the service remains operational with some restrictions.</p><p><br></p><p><strong>Sev 3</strong>- Partial loss of service functionality or degradation that affects some users but not critical to overall operations.</p><p><br></p><p><strong>Sev 4</strong>- Minor issue or cosmetic problems that do not significantly affect the service.</p>|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[Case_Information_Column2](#case_information_column2)|
    
    
    
    
    #### Child_Case.JIRA_Component__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|Child_Case.JIRA_Component__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[Case_Information_Column2](#case_information_column2)|
    
    
    
    
    #### Child_Case.JIRA_End_User_Type__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|Child_Case.JIRA_End_User_Type__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[Case_Information_Column2](#case_information_column2)|
    
    
    
    
    #### Case_Information_Column2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region|
    |Is Required|⬜|
    |Parent Field|[Case_Information](#case_information)|
    |Width (input)|6|
    
    
    
    
    #### Case_Information
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|Case Information|
    |Field Type| Region Container|
    |Is Required|⬜|
    |Region Container Type| Section With Header|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### inputRequiredText
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p><span style="color: rgb(234, 0, 30); font-size: 14px;">Please input a valid description, component(s), and end user type(s) before proceeding.</span></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: displayErrorText<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;booleanValue: true<br/>|
    
    
    
    
    #### LookupAccount
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Extension Name|flowruntime:lookup|
    |Field Type| Component Instance|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Store Output Automatically|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[Related_Records_Column1](#related_records_column1)|
    |Field Api Name (input)|AccountId|
    |Label (input)|Account|
    |Object Api Name (input)|Case|
    |Required (input)|⬜|
    
    
    
    
    #### LookupPlan
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Extension Name|flowruntime:lookup|
    |Field Type| Component Instance|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Store Output Automatically|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[Related_Records_Column1](#related_records_column1)|
    |Field Api Name (input)|Plan__c|
    |Label (input)|Plan|
    |Object Api Name (input)|Case|
    |Required (input)|⬜|
    
    
    
    
    #### Related_Records_Column1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region|
    |Is Required|⬜|
    |Parent Field|[Related_Records](#related_records)|
    |Width (input)|6|
    
    
    
    
    #### LookupImp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Extension Name|flowruntime:lookup|
    |Field Type| Component Instance|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Store Output Automatically|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[Related_Records_Column2](#related_records_column2)|
    |Field Api Name (input)|Implementation__c|
    |Label (input)|Implementation|
    |Object Api Name (input)|Case|
    |Required (input)|⬜|
    
    
    
    
    #### Related_Records_Column2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region|
    |Is Required|⬜|
    |Parent Field|[Related_Records](#related_records)|
    |Width (input)|6|
    
    
    
    
    #### Related_Records
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|Related Records|
    |Field Type| Region Container|
    |Is Required|⬜|
    |Region Container Type| Section With Header|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Ubiquity_Admin_Child
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|UbiquityAdmin_ChoiceSet|
    |Default Value|UbiquityAdmin|
    |Field Text|Ubiquity Admin|
    |Field Type| Dropdown Box|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[Submitter_Info_Column1](#submitter_info_column1)|
    
    
    
    
    #### Submitter_Info_Column1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region|
    |Is Required|⬜|
    |Parent Field|[Submitter_Info](#submitter_info)|
    |Width (input)|6|
    
    
    
    
    #### Ubiquity_Leader_Child
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|UbiquityLeader_Choiceset|
    |Default Value|UbiquityLeader|
    |Field Text|Ubiquity Leader|
    |Field Type| Dropdown Box|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[Submitter_Info_Column2](#submitter_info_column2)|
    
    
    
    
    #### Submitter_Info_Column2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region|
    |Is Required|⬜|
    |Parent Field|[Submitter_Info](#submitter_info)|
    |Width (input)|6|
    
    
    
    
    #### Submitter_Info
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|Submitter Info|
    |Field Type| Region Container|
    |Is Required|⬜|
    |Region Container Type| Section With Header|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    ### Error_Screen
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|Error Screen|
    |Allow Back|⬜|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Show Footer|✅|
    |Show Header|✅|
    
    
    #### ParentError
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p><span style="font-size: 16px;">Failed to create case!  Please share this screen with Business Intelligence</span></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### FlowErrorCode
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p>Error Info: {!$Flow.FaultMessage}</p><p><br></p><p>Flow start time: {!$Flow.InterviewStartTime}</p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    ### Success_Screen
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|Success Screen|
    |Allow Back|⬜|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Show Footer|✅|
    |Show Header|✅|
    
    
    #### SuccessTextChild
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p>Child JIRA case created</p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Parent_case<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;booleanValue: true<br/>|
    
    
    
    
    #### SuccessTestParentChild
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p>JIRA parent and child cases created. Click <a href="{!newCaseUrl}" rel="noopener noreferrer" target="_blank">here</a> to view.</p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Parent_case<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;booleanValue: false<br/>|
    
    
    
    
    ### Run_approval_check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Subflow|
    |Label|Run approval check|
    |Description|Returns "true" if case needs approval b4 sync to jira|
    |Flow Name|Case_Autolaunched_Need_Approval_For_Jira|
    |Store Output Automatically|✅|
    |Connector|[Check_if_needs_approval_submission](#check_if_needs_approval_submission)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |<!-- -->|[Get_new_jira_case](#get_new_jira_case)|
    |<!-- -->|$User.Id|
    |<!-- -->|$User.UserRoleId|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

