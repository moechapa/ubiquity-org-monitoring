# Transition_After_Update_Create_Project_Tasks history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Transition_After_Update_Create_Project_Tasks-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "3700650435"
    
    Add_Start_Date[\"🟰 <em></em><br/>Add Start Date"/]:::assignments
    click Add_Start_Date "#add_start_date" "2820063917"
    
    Assign_to_Collection[\"🟰 <em></em><br/>Assign to Collection"/]:::assignments
    click Assign_to_Collection "#assign_to_collection" "3634633528"
    
    Assign_to_Task[\"🟰 <em></em><br/>Assign to Task"/]:::assignments
    click Assign_to_Task "#assign_to_task" "438271042"
    
    Assign_to_Task_Current_Record_Owner_0[\"🟰 <em></em><br/>Assign to Task (Current Record Owner)"/]:::assignments
    click Assign_to_Task_Current_Record_Owner_0 "#assign_to_task_current_record_owner_0" "404746874"
    
    Assign_to_Task_Current_Record_Owner_0_0[\"🟰 <em></em><br/>Assign to Task (Current Record Owner)"/]:::assignments
    click Assign_to_Task_Current_Record_Owner_0_0 "#assign_to_task_current_record_owner_0_0" "3998656794"
    
    Remove_Start_Date[\"🟰 <em></em><br/>Remove Start Date"/]:::assignments
    click Remove_Start_Date "#remove_start_date" "1998018532"
    
    Activate_Upon_Creation{"🔀 <em></em><br/>Activate Upon Creation?"}:::decisions
    click Activate_Upon_Creation "#activate_upon_creation" "2024744735"
    
    Assign_to_Current_Record_Owner{"🔀 <em></em><br/>Assign to Current Record Owner?"}:::decisions
    click Assign_to_Current_Record_Owner "#assign_to_current_record_owner" "4174810214"
    
    Does_a_task_already_exist_0{"🔀 <em></em><br/>Does a task already exist?"}:::decisions
    click Does_a_task_already_exist_0 "#does_a_task_already_exist_0" "412882297"
    
    Is_Owner_a_Queue{"🔀 <em></em><br/>Is Owner a Queue?"}:::decisions
    click Is_Owner_a_Queue "#is_owner_a_queue" "221232204"
    
    Status_Upon_Creation_In_Progress{"🔀 <em></em><br/>Status Upon Creation = In Progress?"}:::decisions
    click Status_Upon_Creation_In_Progress "#status_upon_creation_in_progress" "2529610023"
    
    WBS_Exists{"🔀 <em></em><br/>WBS Exists?"}:::decisions
    click WBS_Exists "#wbs_exists" "428794628"
    
    PD_Loop{{"🔁 <em></em><br/>PD Loop"}}:::loops
    click PD_Loop "#pd_loop" "2806481641"
    
    Create_Tasks[("➕ <em></em><br/>Create Tasks")]:::recordCreates
    click Create_Tasks "#create_tasks" "3210225957"
    
    Delete_Existing_Tasks_0[("🗑️ <em></em><br/>Delete Existing Tasks")]:::recordDeletes
    click Delete_Existing_Tasks_0 "#delete_existing_tasks_0" "3512780001"
    
    Get_Existing_Tasks_0[("🔍 <em></em><br/>Get Existing Tasks")]:::recordLookups
    click Get_Existing_Tasks_0 "#get_existing_tasks_0" "1710162213"
    
    Get_Project_Deliverables[("🔍 <em></em><br/>Get Project Deliverables")]:::recordLookups
    click Get_Project_Deliverables "#get_project_deliverables" "2356885309"
    
    Get_Transition_WBS[("🔍 <em></em><br/>Get Transition WBS")]:::recordLookups
    click Get_Transition_WBS "#get_transition_wbs" "2845855524"
    
    Add_Start_Date --> Assign_to_Collection
    Assign_to_Collection --> PD_Loop
    Assign_to_Task --> Status_Upon_Creation_In_Progress
    Assign_to_Task_Current_Record_Owner_0 --> Status_Upon_Creation_In_Progress
    Assign_to_Task_Current_Record_Owner_0_0 --> Status_Upon_Creation_In_Progress
    Remove_Start_Date --> Assign_to_Collection
    Activate_Upon_Creation --> |"Yes"| Assign_to_Current_Record_Owner
    Activate_Upon_Creation --> |"No"| PD_Loop
    Assign_to_Current_Record_Owner --> |"Yes"| Is_Owner_a_Queue
    Assign_to_Current_Record_Owner --> |"No"| Assign_to_Task
    Does_a_task_already_exist_0 --> |"Yes, Incorrect WBS"| Delete_Existing_Tasks_0
    Does_a_task_already_exist_0 --> |"No"| PD_Loop
    Is_Owner_a_Queue --> |"Yes"| Assign_to_Task_Current_Record_Owner_0_0
    Is_Owner_a_Queue --> |"No"| Assign_to_Task_Current_Record_Owner_0
    Status_Upon_Creation_In_Progress --> |"Yes"| Add_Start_Date
    Status_Upon_Creation_In_Progress --> |"No"| Remove_Start_Date
    WBS_Exists --> |"Yes"| Get_Project_Deliverables
    WBS_Exists --> |"No"| END_WBS_Exists
    PD_Loop --> |"For Each"|Activate_Upon_Creation
    PD_Loop ---> |"After Last"|Create_Tasks
    Create_Tasks --> END_Create_Tasks
    Delete_Existing_Tasks_0 --> PD_Loop
    Get_Existing_Tasks_0 --> Does_a_task_already_exist_0
    Get_Project_Deliverables --> Get_Existing_Tasks_0
    Get_Transition_WBS --> WBS_Exists
    START -->  Get_Transition_WBS
    END_WBS_Exists(( END )):::endClass
    END_Create_Tasks(( END )):::endClass
    
    
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
    |Object|Transition__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create And Update|
    |Label|Transition | After Update | Create Project Tasks|
    |Status|Obsolete|
    |Interview Label|Transition | After Update | Create Project Tasks {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Transition_WBS](#get_transition_wbs)|
    |Next Node|[Get_Transition_WBS](#get_transition_wbs)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |End|Number|⬜|✅|✅|<!-- -->|<!-- -->|
    |existingTask|SObject|⬜|✅|✅|Project_Task__c|<!-- -->|
    |Milestone|String|⬜|✅|✅|<!-- -->|<!-- -->|
    |Name|String|⬜|✅|✅|<!-- -->|<!-- -->|
    |Order|Number|⬜|✅|✅|<!-- -->|<!-- -->|
    |recordId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    |ResponsibleParty|String|⬜|✅|✅|<!-- -->|<!-- -->|
    |Start|Number|⬜|✅|✅|<!-- -->|<!-- -->|
    |Status|String|⬜|✅|✅|<!-- -->|<!-- -->|
    |taskCollection|SObject|✅|✅|✅|Project_Task__c|<!-- -->|
    |taskLoop|SObject|⬜|✅|✅|Project_Task__c|<!-- -->|
    |wbs|SObject|⬜|✅|✅|Work_Breakdown_Structure__c|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |EndDate|Date|NOW()+{!End}|<!-- -->|
    |ExpectedCompletion|Date|{!ExpectedStart}+{!PD_Loop.Days_to_Complete__c}|<!-- -->|
    |ExpectedStart|Date|{!$Record.CreatedDate}+{!PD_Loop.Expected_Start_Days_from_Creation__c}|<!-- -->|
    |StartDate|Date|NOW()+{!Start}|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Add_Start_Date
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add Start Date|
    |Connector|[Assign_to_Collection](#assign_to_collection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |taskLoop.Actual_Start_Date__c| Assign|StartDate|
    
    
    
    
    ### Assign_to_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign to Collection|
    |Connector|[PD_Loop](#pd_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |taskCollection| Add|taskLoop|
    
    
    
    
    ### Assign_to_Task
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign to Task|
    |Connector|[Status_Upon_Creation_In_Progress](#status_upon_creation_in_progress)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |taskLoop.Name| Assign|PD_Loop.Name|
    |taskLoop.Transition__c| Assign|$Record.Id|
    |taskLoop.Assigned_To__c| Assign|PD_Loop.Assigned_To__c|
    |taskLoop.KPI_Milestone__c| Assign|PD_Loop.KPI_Milestone__c|
    |taskLoop.Responsible_Party__c| Assign|PD_Loop.Responsible_Party__c|
    |taskLoop.Status__c| Assign|PD_Loop.Status_Upon_Creation__c|
    |taskLoop.Order_Number__c| Assign|PD_Loop.Order_Number__c|
    |taskLoop.Expected_Start_Date__c| Assign|ExpectedStart|
    |taskLoop.Expected_Completion_Date__c| Assign|ExpectedCompletion|
    |taskLoop.Project_Deliverable__c| Assign|PD_Loop.Id|
    |taskLoop.OwnerId| Assign|PD_Loop.Assigned_To__c|
    |taskLoop.RecordTypeId| Assign|0121G000000RlRgQAK|
    
    
    
    
    ### Assign_to_Task_Current_Record_Owner_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign to Task (Current Record Owner)|
    |Connector|[Status_Upon_Creation_In_Progress](#status_upon_creation_in_progress)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |taskLoop.Name| Assign|PD_Loop.Name|
    |taskLoop.Transition__c| Assign|$Record.Id|
    |taskLoop.Assigned_To__c| Assign|$Record.OwnerId|
    |taskLoop.KPI_Milestone__c| Assign|PD_Loop.KPI_Milestone__c|
    |taskLoop.Responsible_Party__c| Assign|PD_Loop.Responsible_Party__c|
    |taskLoop.Status__c| Assign|PD_Loop.Status_Upon_Creation__c|
    |taskLoop.Order_Number__c| Assign|PD_Loop.Order_Number__c|
    |taskLoop.Expected_Start_Date__c| Assign|ExpectedStart|
    |taskLoop.Expected_Completion_Date__c| Assign|ExpectedCompletion|
    |taskLoop.Project_Deliverable__c| Assign|PD_Loop.Id|
    |taskLoop.OwnerId| Assign|$Record.OwnerId|
    |taskLoop.RecordTypeId| Assign|0121G000000RlRgQAK|
    
    
    
    
    ### Assign_to_Task_Current_Record_Owner_0_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign to Task (Current Record Owner)|
    |Connector|[Status_Upon_Creation_In_Progress](#status_upon_creation_in_progress)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |taskLoop.Name| Assign|PD_Loop.Name|
    |taskLoop.Transition__c| Assign|$Record.Id|
    |taskLoop.Assigned_To__c| Assign|$User.Id|
    |taskLoop.KPI_Milestone__c| Assign|PD_Loop.KPI_Milestone__c|
    |taskLoop.Responsible_Party__c| Assign|PD_Loop.Responsible_Party__c|
    |taskLoop.Status__c| Assign|PD_Loop.Status_Upon_Creation__c|
    |taskLoop.Order_Number__c| Assign|PD_Loop.Order_Number__c|
    |taskLoop.Expected_Start_Date__c| Assign|ExpectedStart|
    |taskLoop.Expected_Completion_Date__c| Assign|ExpectedCompletion|
    |taskLoop.Project_Deliverable__c| Assign|PD_Loop.Id|
    |taskLoop.OwnerId| Assign|$User.Id|
    |taskLoop.RecordTypeId| Assign|0121G000000RlRgQAK|
    
    
    
    
    ### Remove_Start_Date
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Remove Start Date|
    |Connector|[Assign_to_Collection](#assign_to_collection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |taskLoop.Actual_Start_Date__c| Assign|<!-- -->|
    
    
    
    
    ### Activate_Upon_Creation
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Activate Upon Creation?|
    |Default Connector|[PD_Loop](#pd_loop)|
    |Default Connector Label|No|
    
    
    #### Rule YesActivate (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_to_Current_Record_Owner](#assign_to_current_record_owner)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|PD_Loop.Status_Upon_Creation__c| Equal To|Ready|
    |2|PD_Loop.Status_Upon_Creation__c| Equal To|In Progress|
    
    
    
    
    ### Assign_to_Current_Record_Owner
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Assign to Current Record Owner?|
    |Default Connector|[Assign_to_Task](#assign_to_task)|
    |Default Connector Label|No|
    
    
    #### Rule YesAssign (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Is_Owner_a_Queue](#is_owner_a_queue)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|PD_Loop.Assign_to_Current_Owner__c| Equal To|✅|
    
    
    
    
    ### Does_a_task_already_exist_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Does a task already exist?|
    |Default Connector|[PD_Loop](#pd_loop)|
    |Default Connector Label|No|
    
    
    #### Rule Yes_Incorrect_WBS_0 (Yes, Incorrect WBS)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Delete_Existing_Tasks_0](#delete_existing_tasks_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|existingTask.Id| Is Null|⬜|
    |2|existingTask.Work_Breakdown_Structure__c| Not Equal To|wbs.Name|
    
    
    
    
    #### Rule YesExists_0 (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|existingTask.Id| Is Null|⬜|
    
    
    
    
    ### Is_Owner_a_Queue
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Is Owner a Queue?|
    |Default Connector|[Assign_to_Task_Current_Record_Owner_0](#assign_to_task_current_record_owner_0)|
    |Default Connector Label|No|
    
    
    #### Rule YesQueue (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_to_Task_Current_Record_Owner_0_0](#assign_to_task_current_record_owner_0_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.OwnerId| Starts With|00G|
    
    
    
    
    ### Status_Upon_Creation_In_Progress
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Status Upon Creation = In Progress?|
    |Default Connector|[Remove_Start_Date](#remove_start_date)|
    |Default Connector Label|No|
    
    
    #### Rule YesInProgress (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Add_Start_Date](#add_start_date)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|PD_Loop.Status_Upon_Creation__c| Equal To|In Progress|
    
    
    
    
    ### WBS_Exists
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|WBS Exists?|
    |Default Connector Label|No|
    
    
    #### Rule Yes (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Project_Deliverables](#get_project_deliverables)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|wbs.Id| Is Null|⬜|
    
    
    
    
    ### PD_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|PD Loop|
    |Collection Reference|[Get_Project_Deliverables](#get_project_deliverables)|
    |Iteration Order|Asc|
    |Next Value Connector|[Activate_Upon_Creation](#activate_upon_creation)|
    |No More Values Connector|[Create_Tasks](#create_tasks)|
    
    
    ### Create_Tasks
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Label|Create Tasks|
    |Input Reference|taskCollection|
    
    
    ### Delete_Existing_Tasks_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Delete|
    |Object|Project_Task__c|
    |Label|Delete Existing Tasks|
    |Connector|[PD_Loop](#pd_loop)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Transition__c| Equal To|$Record.Id|
    
    
    
    
    ### Get_Existing_Tasks_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Project_Task__c|
    |Label|Get Existing Tasks|
    |Assign Null Values If No Records Found|✅|
    |Output Assignments|- assignToReference: existingTask.Id<br/>&nbsp;&nbsp;field: Id<br/>- assignToReference: existingTask.Work_Breakdown_Structure__c<br/>&nbsp;&nbsp;field: Work_Breakdown_Structure__c<br/>|
    |Connector|[Does_a_task_already_exist_0](#does_a_task_already_exist_0)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Transition__c| Equal To|$Record.Id|
    
    
    
    
    ### Get_Project_Deliverables
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Project_Deliverables__c|
    |Label|Get Project Deliverables|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Store Output Automatically|✅|
    |Connector|[Get_Existing_Tasks_0](#get_existing_tasks_0)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Work_Breakdown_Structure__c| Equal To|wbs.Id|
    
    
    
    
    ### Get_Transition_WBS
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Work_Breakdown_Structure__c|
    |Label|Get Transition WBS|
    |Assign Null Values If No Records Found|✅|
    |Output Assignments|- assignToReference: wbs.Id<br/>&nbsp;&nbsp;field: Id<br/>- assignToReference: wbs.Name<br/>&nbsp;&nbsp;field: Name<br/>|
    |Connector|[WBS_Exists](#wbs_exists)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Active__c| Equal To|✅|
    |2|Custodian__c| Contains|$Record.Custodian__c|
    |3|Object_Managed__c| Equal To|Transition|
    |4|Transition_Type__c| Equal To|$Record.RecordType.Name|
    |5|Service_Option__c| Contains|$Record.Service_Option__c|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

