# QA_Screen_Better_Create_QA history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](QA_Screen_Better_Create_QA-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Screen Flow</b>"]):::startClass
    click START "#general-information" "1987635618"
    
    Redirect_to_new_QA("⚡ <em></em><br/>Redirect to new QA"):::actionCalls
    click Redirect_to_new_QA "#redirect_to_new_qa" "788311835"
    
    Assign_Activity[\"🟰 <em></em><br/>Assign Activity"/]:::assignments
    click Assign_Activity "#assign_activity" "2244184062"
    
    Assign_Case[\"🟰 <em></em><br/>Assign Case"/]:::assignments
    click Assign_Case "#assign_case" "1909121003"
    
    Assign_department[\"🟰 <em></em><br/>Assign department"/]:::assignments
    click Assign_department "#assign_department" "328650995"
    
    Assign_employee[\"🟰 <em></em><br/>Assign employee"/]:::assignments
    click Assign_employee "#assign_employee" "3995281932"
    
    Assign_Project_Task[\"🟰 <em></em><br/>Assign Project Task"/]:::assignments
    click Assign_Project_Task "#assign_project_task" "283816536"
    
    Assign_QA_Values[\"🟰 <em></em><br/>Assign QA Values"/]:::assignments
    click Assign_QA_Values "#assign_qa_values" "928915124"
    
    Set_new_qa_id[\"🟰 <em></em><br/>Set new qa id"/]:::assignments
    click Set_new_qa_id "#set_new_qa_id" "2688582892"
    
    Set_validation_to_false[\"🟰 <em></em><br/>Set validation to false"/]:::assignments
    click Set_validation_to_false "#set_validation_to_false" "4279068327"
    
    Check_if_employee_department_valid{"🔀 <em></em><br/>Check if employee department valid"}:::decisions
    click Check_if_employee_department_valid "#check_if_employee_department_valid" "3754543172"
    
    Check_if_QA_Created{"🔀 <em></em><br/>Check if QA Created"}:::decisions
    click Check_if_QA_Created "#check_if_qa_created" "120842856"
    
    Did_we_find_an_employee{"🔀 <em></em><br/>Did we find an employee?"}:::decisions
    click Did_we_find_an_employee "#did_we_find_an_employee" "1365344475"
    
    Does_employee_have_a_department{"🔀 <em></em><br/>Does employee have a department?"}:::decisions
    click Does_employee_have_a_department "#does_employee_have_a_department" "4167190747"
    
    QA_Permission_Check{"🔀 <em></em><br/>QA Permission Check"}:::decisions
    click QA_Permission_Check "#qa_permission_check" "883559265"
    
    QA_Version_Check{"🔀 <em></em><br/>QA Version Check"}:::decisions
    click QA_Version_Check "#qa_version_check" "1415915869"
    
    Record_Context{"🔀 <em></em><br/>Record Context"}:::decisions
    click Record_Context "#record_context" "2383866479"
    
    Required_Fields_Check{"🔀 <em></em><br/>Required Fields Check"}:::decisions
    click Required_Fields_Check "#required_fields_check" "4208139332"
    
    Team_Member_Check{"🔀 <em></em><br/>Team Member Check"}:::decisions
    click Team_Member_Check "#team_member_check" "1488741324"
    
    Value_loop{{"🔁 <em></em><br/>Value loop"}}:::loops
    click Value_loop "#value_loop" "3334465347"
    
    Create_QA_Record[("➕ <em></em><br/>Create QA Record")]:::recordCreates
    click Create_QA_Record "#create_qa_record" "1169714416"
    
    Copy_1_of_Find_User_Contact[("🔍 <em></em><br/>Copy 1 of Find User Contact")]:::recordLookups
    click Copy_1_of_Find_User_Contact "#copy_1_of_find_user_contact" "2579406445"
    
    Find_Case_Owner_Contact[("🔍 <em></em><br/>Find Case Owner Contact")]:::recordLookups
    click Find_Case_Owner_Contact "#find_case_owner_contact" "242551032"
    
    Find_Department_Field[("🔍 <em></em><br/>Find Department Field")]:::recordLookups
    click Find_Department_Field "#find_department_field" "1790672809"
    
    Find_QA_entity_definition[("🔍 <em></em><br/>Find QA entity definition")]:::recordLookups
    click Find_QA_entity_definition "#find_qa_entity_definition" "1377879071"
    
    Find_Team_Member_Contact[("🔍 <em></em><br/>Find Team Member Contact")]:::recordLookups
    click Find_Team_Member_Contact "#find_team_member_contact" "1058784637"
    
    Find_User_Contact[("🔍 <em></em><br/>Find User Contact")]:::recordLookups
    click Find_User_Contact "#find_user_contact" "246055099"
    
    Get_Activity[("🔍 <em></em><br/>Get Activity")]:::recordLookups
    click Get_Activity "#get_activity" "2212781916"
    
    Get_Case[("🔍 <em></em><br/>Get Case")]:::recordLookups
    click Get_Case "#get_case" "58408346"
    
    Get_Dynamic_QA_Recordtype[("🔍 <em></em><br/>Get Dynamic QA Recordtype")]:::recordLookups
    click Get_Dynamic_QA_Recordtype "#get_dynamic_qa_recordtype" "357735207"
    
    Get_picklist_values[("🔍 <em></em><br/>Get picklist values")]:::recordLookups
    click Get_picklist_values "#get_picklist_values" "1962536371"
    
    Get_Project_Task[("🔍 <em></em><br/>Get Project Task")]:::recordLookups
    click Get_Project_Task "#get_project_task" "1330208301"
    
    Get_User[("🔍 <em></em><br/>Get User")]:::recordLookups
    click Get_User "#get_user" "3003204262"
    
    Confirmation_Screen(["💻 <em></em><br/>Confirmation Screen"]):::screens
    click Confirmation_Screen "#confirmation_screen" "1494541180"
    
    QA_Version_Screen(["💻 <em></em><br/>QA Version Screen"]):::screens
    click QA_Version_Screen "#qa_version_screen" "585867093"
    
    Launch_old_QA_creation[["🔗 <em>Subflow</em><br/>Launch old QA creation"]]:::subflows
    click Launch_old_QA_creation "#launch_old_qa_creation" "919762107"
    
    Redirect_to_new_QA --> END_Redirect_to_new_QA
    Assign_Activity --> Get_Activity
    Assign_Case --> Get_Case
    Assign_department --> Value_loop
    Assign_employee --> Does_employee_have_a_department
    Assign_Project_Task --> Get_Project_Task
    Assign_QA_Values --> Did_we_find_an_employee
    Set_new_qa_id --> Redirect_to_new_QA
    Set_validation_to_false --> Confirmation_Screen
    Check_if_employee_department_valid --> |"Department Match"| Assign_department
    Check_if_employee_department_valid --> |"Default Outcome"| Value_loop
    Check_if_QA_Created --> |"QA created old proc"| Set_new_qa_id
    Check_if_QA_Created --> |"Default Outcome"| END_Check_if_QA_Created
    Did_we_find_an_employee --> |"Employee found"| Assign_employee
    Did_we_find_an_employee --> |"Default Outcome"| Confirmation_Screen
    Does_employee_have_a_department --> |"Department Present"| Find_QA_entity_definition
    Does_employee_have_a_department --> |"Default Outcome"| Confirmation_Screen
    QA_Permission_Check --> |"User can create dynQA"| QA_Version_Screen
    QA_Permission_Check --> |"Default Outcome"| Launch_old_QA_creation
    QA_Version_Check --> |"New Version"| Record_Context
    QA_Version_Check --> |"Old"| Launch_old_QA_creation
    Record_Context --> |"Case"| Assign_Case
    Record_Context --> |"Activity"| Assign_Activity
    Record_Context --> |"Proj Task"| Assign_Project_Task
    Record_Context --> |"Floating QA"| Get_Dynamic_QA_Recordtype
    Required_Fields_Check --> |"Required fields complete"| Create_QA_Record
    Required_Fields_Check --> |"Missing one or more"| Set_validation_to_false
    Team_Member_Check --> |"Shared user"| Find_Team_Member_Contact
    Team_Member_Check --> |"Default Outcome"| Find_Case_Owner_Contact
    Value_loop --> |"For Each"|Check_if_employee_department_valid
    Value_loop ---> |"After Last"|Confirmation_Screen
    Create_QA_Record --> Redirect_to_new_QA
    Copy_1_of_Find_User_Contact --> Get_Dynamic_QA_Recordtype
    Find_Case_Owner_Contact --> Get_Dynamic_QA_Recordtype
    Find_Department_Field --> Get_picklist_values
    Find_QA_entity_definition --> Find_Department_Field
    Find_Team_Member_Contact --> Get_Dynamic_QA_Recordtype
    Find_User_Contact --> Get_Dynamic_QA_Recordtype
    Get_Activity --> Find_User_Contact
    Get_Case --> Get_User
    Get_Dynamic_QA_Recordtype --> Assign_QA_Values
    Get_picklist_values --> Value_loop
    Get_Project_Task --> Copy_1_of_Find_User_Contact
    Get_User --> Team_Member_Check
    Confirmation_Screen --> Required_Fields_Check
    QA_Version_Screen --> QA_Version_Check
    START -->  QA_Permission_Check
    Launch_old_QA_creation --> Check_if_QA_Created
    END_Redirect_to_new_QA(( END )):::endClass
    END_Check_if_QA_Created(( END )):::endClass
    
    
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
    |Label|QA | Screen | Better Create QA|
    |Status|Active|
    |Environments|Default|
    |Interview Label|QA | Screen | Better Create QA {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[QA_Permission_Check](#qa_permission_check)|
    |Next Node|[QA_Permission_Check](#qa_permission_check)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |dynamicRecordtypeId|String|⬜|⬜|⬜|<!-- -->|Id of dynamic qa form record type|
    |employeeContact|SObject|⬜|⬜|⬜|Contact|<!-- -->|
    |inputsValid|Boolean|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |qaRecord|SObject|⬜|⬜|⬜|Quality_Assurance_QA__c|<!-- -->|
    |recordId|String|⬜|✅|⬜|<!-- -->|There he is, back at it again!|
    |versionsFoundCount|Number|⬜|⬜|⬜|<!-- -->|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Redirect_to_new_QA
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Redirect to new QA|
    |Action Type|Component|
    |Action Name|ecflc:flowIdRedirect|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|ecflc:flowIdRedirect|
    |Offset|0|
    |Store Output Automatically|✅|
    |Record Id (input)|qaRecord.Id|
    
    
    ### Assign_Activity
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Activity|
    |Connector|[Get_Activity](#get_activity)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |qaRecord.Activity__c| Assign|recordId|
    
    
    
    
    ### Assign_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Case|
    |Connector|[Get_Case](#get_case)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |qaRecord.Case__c| Assign|recordId|
    
    
    
    
    ### Assign_department
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign department|
    |Connector|[Value_loop](#value_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |qaRecord.Department_Dyn__c| Assign|Value_loop.Value|
    
    
    
    
    ### Assign_employee
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign employee|
    |Connector|[Does_employee_have_a_department](#does_employee_have_a_department)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |qaRecord.Ubiquity_Employee__c| Assign|employeeContact.Id|
    
    
    
    
    ### Assign_Project_Task
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Project Task|
    |Connector|[Get_Project_Task](#get_project_task)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |qaRecord.Project_Task__c| Assign|recordId|
    
    
    
    
    ### Assign_QA_Values
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign QA Values|
    |Connector|[Did_we_find_an_employee](#did_we_find_an_employee)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |qaRecord.OwnerId| Assign|$User.Id|
    |qaRecord.RecordTypeId| Assign|dynamicRecordtypeId|
    |qaRecord.Date__c| Assign|$Flow.CurrentDate|
    
    
    
    
    ### Set_new_qa_id
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Set new qa id|
    |Connector|[Redirect_to_new_QA](#redirect_to_new_qa)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |qaRecord.Id| Assign|Launch_old_QA_creation.newQA.Id|
    
    
    
    
    ### Set_validation_to_false
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Set validation to false|
    |Connector|isGoTo: true<br/>targetReference: Confirmation_Screen<br/>|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |inputsValid| Assign|⬜|
    
    
    
    
    ### Check_if_employee_department_valid
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check if employee department valid|
    |Default Connector|[Value_loop](#value_loop)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Department_Match (Department Match)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_department](#assign_department)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Value_loop.Value| Equal To|employeeContact.Department|
    
    
    
    
    ### Check_if_QA_Created
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check if QA Created|
    |Description|Did the old flow work?|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule QA_created_old_proc (QA created old proc)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Set_new_qa_id](#set_new_qa_id)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Launch_old_QA_creation.newQA.Id| Is Blank|⬜|
    
    
    
    
    ### Did_we_find_an_employee
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Did we find an employee?|
    |Default Connector|[Confirmation_Screen](#confirmation_screen)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Employee_found (Employee found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_employee](#assign_employee)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|employeeContact| Is Null|⬜|
    
    
    
    
    ### Does_employee_have_a_department
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Does employee have a department?|
    |Description|Checks if employee's department field is null|
    |Default Connector|[Confirmation_Screen](#confirmation_screen)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Department_Present (Department Present)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Find_QA_entity_definition](#find_qa_entity_definition)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|employeeContact.Department| Is Blank|⬜|
    
    
    
    
    ### QA_Permission_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|QA Permission Check|
    |Default Connector|isGoTo: true<br/>targetReference: Launch_old_QA_creation<br/>|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule User_can_create_dynQA (User can create dynQA)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[QA_Version_Screen](#qa_version_screen)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Permission.Create_Dynamic_QA| Equal To|✅|
    
    
    
    
    ### QA_Version_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|QA Version Check|
    |Description|Are they "with it?"|
    |Default Connector|[Launch_old_QA_creation](#launch_old_qa_creation)|
    |Default Connector Label|Old|
    
    
    #### Rule New_Version (New Version)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Record_Context](#record_context)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|QA_Version| Equal To|newQA|
    
    
    
    
    ### Record_Context
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Record Context|
    |Description|What object am I on, if any?|
    |Default Connector|[Get_Dynamic_QA_Recordtype](#get_dynamic_qa_recordtype)|
    |Default Connector Label|Floating QA|
    
    
    #### Rule Case (Case)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Case](#assign_case)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|recordId| Starts With|500|
    
    
    
    
    #### Rule Activity (Activity)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Activity](#assign_activity)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|recordId| Starts With|00T|
    
    
    
    
    #### Rule Proj_Task (Proj Task)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Project_Task](#assign_project_task)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|recordId| Starts With|a17|
    
    
    
    
    ### Required_Fields_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Required Fields Check|
    |Default Connector|[Set_validation_to_false](#set_validation_to_false)|
    |Default Connector Label|Missing one or more|
    
    
    #### Rule Required_fields_complete (Required fields complete)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Create_QA_Record](#create_qa_record)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|qaRecord.Ubiquity_Employee__c| Is Blank|⬜|
    |2|qaRecord.Department_Dyn__c| Is Blank|⬜|
    |3|qaRecord.QA_Type_Dyn__c| Is Blank|⬜|
    |4|qaRecord.QA_Design_Version__c| Is Blank|⬜|
    
    
    
    
    ### Team_Member_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Team Member Check|
    |Description|Is this a shared user?|
    |Default Connector|[Find_Case_Owner_Contact](#find_case_owner_contact)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Shared_user (Shared user)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Find_Team_Member_Contact](#find_team_member_contact)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Case.Team_Member__c| Is Blank|⬜|
    |2|Get_User.Shared_User__c| Equal To|✅|
    
    
    
    
    ### Value_loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Value loop|
    |Collection Reference|[Get_picklist_values](#get_picklist_values)|
    |Iteration Order|Asc|
    |Next Value Connector|[Check_if_employee_department_valid](#check_if_employee_department_valid)|
    |No More Values Connector|[Confirmation_Screen](#confirmation_screen)|
    
    
    ### Create_QA_Record
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Label|Create QA Record|
    |Input Reference|qaRecord|
    |Connector|[Redirect_to_new_QA](#redirect_to_new_qa)|
    
    
    ### Copy_1_of_Find_User_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Copy 1 of Find User Contact|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|employeeContact|
    |Queried Fields|- Id<br/>- Department<br/>|
    |Connector|[Get_Dynamic_QA_Recordtype](#get_dynamic_qa_recordtype)|
    
    
    #### Filters (logic: **1 AND (2 OR 3)**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|RecordTypeId| Equal To|01237000000TgxVAAS|
    |2|Email| Equal To|Get_Project_Task.Assigned_To__r.Email|
    |3|Employee_Email__c| Equal To|Get_Project_Task.Assigned_To__r.Email|
    
    
    
    
    ### Find_Case_Owner_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Find Case Owner Contact|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|employeeContact|
    |Queried Fields|- Id<br/>- Department<br/>|
    |Connector|[Get_Dynamic_QA_Recordtype](#get_dynamic_qa_recordtype)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|RecordTypeId| Equal To|01237000000TgxVAAS|
    |2|Name| Equal To|Get_User.Name|
    
    
    
    
    ### Find_Department_Field
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|FieldDefinition|
    |Label|Find Department Field|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|- Id<br/>- DurableId<br/>|
    |Store Output Automatically|✅|
    |Connector|[Get_picklist_values](#get_picklist_values)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|EntityDefinitionId| Equal To|Find_QA_entity_definition.DurableId|
    |2|QualifiedApiName| Equal To|Department_Dyn__c|
    
    
    
    
    ### Find_QA_entity_definition
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|EntityDefinition|
    |Label|Find QA entity definition|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|- Id<br/>- DurableId<br/>|
    |Store Output Automatically|✅|
    |Connector|[Find_Department_Field](#find_department_field)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|QualifiedApiName| Equal To|Quality_Assurance_QA__c|
    
    
    
    
    ### Find_Team_Member_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Find Team Member Contact|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|employeeContact|
    |Queried Fields|- Id<br/>- Department<br/>|
    |Connector|[Get_Dynamic_QA_Recordtype](#get_dynamic_qa_recordtype)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|RecordTypeId| Equal To|01237000000TgxVAAS|
    |2|Name| Equal To|Get_Case.Team_Member__c|
    
    
    
    
    ### Find_User_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Find User Contact|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|employeeContact|
    |Queried Fields|- Id<br/>- Department<br/>|
    |Connector|[Get_Dynamic_QA_Recordtype](#get_dynamic_qa_recordtype)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|RecordTypeId| Equal To|01237000000TgxVAAS|
    |2|Name| Equal To|Get_Activity.Owner:User.Name|
    
    
    
    
    ### Get_Activity
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Task|
    |Label|Get Activity|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Find_User_Contact](#find_user_contact)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Get_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Case|
    |Label|Get Case|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Get_User](#get_user)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Get_Dynamic_QA_Recordtype
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|RecordType|
    |Label|Get Dynamic QA Recordtype|
    |Assign Null Values If No Records Found|✅|
    |Output Assignments|assignToReference: dynamicRecordtypeId<br/>field: Id<br/>|
    |Connector|[Assign_QA_Values](#assign_qa_values)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Name| Contains|Dynamic|
    |2|SobjectType| Equal To|Quality_Assurance_QA__c|
    
    
    
    
    ### Get_picklist_values
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|PicklistValueInfo|
    |Label|Get picklist values|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Queried Fields|- Id<br/>- Value<br/>|
    |Store Output Automatically|✅|
    |Connector|[Value_loop](#value_loop)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|EntityParticleId| Equal To|Find_Department_Field.DurableId|
    |2|IsActive| Equal To|✅|
    
    
    
    
    ### Get_Project_Task
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Project_Task__c|
    |Label|Get Project Task|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Copy_1_of_Find_User_Contact](#copy_1_of_find_user_contact)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Get_User
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|User|
    |Label|Get User|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|- Id<br/>- Shared_User__c<br/>- Name<br/>|
    |Store Output Automatically|✅|
    |Connector|[Team_Member_Check](#team_member_check)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Case.OwnerId|
    
    
    
    
    ### Confirmation_Screen
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|Confirmation Screen|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Show Footer|✅|
    |Show Header|⬜|
    |Connector|[Required_Fields_Check](#required_fields_check)|
    
    
    #### qaRecord.Ubiquity_Employee__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|qaRecord.Ubiquity_Employee__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### qaRecord.Department_Dyn__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|qaRecord.Department_Dyn__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### qaRecord.QA_Type_Dyn__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|qaRecord.QA_Type_Dyn__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### qaRecord.QA_Design_Version__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|qaRecord.QA_Design_Version__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### errorText
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p><span style="color: rgb(234, 0, 30);">Please complete all fields</span></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: inputsValid<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;booleanValue: false<br/>|
    
    
    
    
    ### QA_Version_Screen
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|QA Version Screen|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Show Footer|✅|
    |Show Header|⬜|
    |Connector|[QA_Version_Check](#qa_version_check)|
    
    
    #### QA_Version
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|- oldQA<br/>- newQA<br/>|
    |Field Text|QA Version|
    |Field Type| Radio Buttons|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    ### Launch_old_QA_creation
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Subflow|
    |Label|Launch old QA creation|
    |Flow Name|QA_Button_Create_QA|
    |Store Output Automatically|✅|
    |Connector|[Check_if_QA_Created](#check_if_qa_created)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |<!-- -->|recordId|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

