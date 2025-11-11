# Project_Task_Process_Move_Project_Forward history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Project_Task_Process_Move_Project_Forward-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "458502901"
    
    Add_to_Collection[\"🟰 <em></em><br/>Add to Collection"/]:::assignments
    click Add_to_Collection "#add_to_collection" "1625659100"
    
    Add_to_Next_Action_List[\"🟰 <em></em><br/>Add to Next Action List"/]:::assignments
    click Add_to_Next_Action_List "#add_to_next_action_list" "2451135472"
    
    Assign_Current_User[\"🟰 <em></em><br/>Assign Current User"/]:::assignments
    click Assign_Current_User "#assign_current_user" "2877944160"
    
    Assign_Imp_Owner_0[\"🟰 <em></em><br/>Assign Imp Owner"/]:::assignments
    click Assign_Imp_Owner_0 "#assign_imp_owner_0" "2597228380"
    
    Assign_New_Values[\"🟰 <em></em><br/>Assign New Values"/]:::assignments
    click Assign_New_Values "#assign_new_values" "508665610"
    
    Assign_New_Values_0[\"🟰 <em></em><br/>Assign New Values"/]:::assignments
    click Assign_New_Values_0 "#assign_new_values_0" "4224471856"
    
    Assign_New_Values_0_0[\"🟰 <em></em><br/>Assign New Values"/]:::assignments
    click Assign_New_Values_0_0 "#assign_new_values_0_0" "2685140694"
    
    Assign_Static_Owner[\"🟰 <em></em><br/>Assign Static Owner"/]:::assignments
    click Assign_Static_Owner "#assign_static_owner" "744064538"
    
    Creation_Collection[\"🟰 <em></em><br/>Creation Collection"/]:::assignments
    click Creation_Collection "#creation_collection" "2326611067"
    
    Imp_Owner[\"🟰 <em></em><br/>Imp Owner"/]:::assignments
    click Imp_Owner "#imp_owner" "3557489953"
    
    Trans_Owner[\"🟰 <em></em><br/>Trans Owner"/]:::assignments
    click Trans_Owner "#trans_owner" "124357399"
    
    Update_Collection[\"🟰 <em></em><br/>Update Collection"/]:::assignments
    click Update_Collection "#update_collection" "2011991994"
    
    Assign_Owner_of_Current_Controlling_Record{"🔀 <em></em><br/>Assign Owner of Current Controlling Record?"}:::decisions
    click Assign_Owner_of_Current_Controlling_Record "#assign_owner_of_current_controlling_record" "2919503256"
    
    Completion_Date_Verification{"🔀 <em></em><br/>Completion Date Verification"}:::decisions
    click Completion_Date_Verification "#completion_date_verification" "3219403370"
    
    Connected_Object{"🔀 <em></em><br/>Connected Object"}:::decisions
    click Connected_Object "#connected_object" "2282266268"
    
    Create_Empty{"🔀 <em></em><br/>Create Empty?"}:::decisions
    click Create_Empty "#create_empty" "4260985023"
    
    Dupe_Found{"🔀 <em></em><br/>Dupe Found?"}:::decisions
    click Dupe_Found "#dupe_found" "1941166524"
    
    Eligible_Object_Process{"🔀 <em></em><br/>Eligible Object Process"}:::decisions
    click Eligible_Object_Process "#eligible_object_process" "3605334239"
    
    Existing_Task_Completed{"🔀 <em></em><br/>Existing Task Completed?"}:::decisions
    click Existing_Task_Completed "#existing_task_completed" "3920719814"
    
    Existing_Task_or_New_Task{"🔀 <em></em><br/>Existing Task or New Task?"}:::decisions
    click Existing_Task_or_New_Task "#existing_task_or_new_task" "1650217078"
    
    Incomplete_Tasks_Found{"🔀 <em></em><br/>Incomplete Tasks Found?"}:::decisions
    click Incomplete_Tasks_Found "#incomplete_tasks_found" "67918457"
    
    Next_Action_is_Null{"🔀 <em></em><br/>Next Action is Null"}:::decisions
    click Next_Action_is_Null "#next_action_is_null" "1146811555"
    
    Next_Action_is_Null_0{"🔀 <em></em><br/>Next Action is Null"}:::decisions
    click Next_Action_is_Null_0 "#next_action_is_null_0" "342553336"
    
    Non_Linear_Trigger_Found{"🔀 <em></em><br/>Non-Linear Trigger Found"}:::decisions
    click Non_Linear_Trigger_Found "#non_linear_trigger_found" "2975879792"
    
    Owned_by_Queue_0{"🔀 <em></em><br/>Owned by Queue"}:::decisions
    click Owned_by_Queue_0 "#owned_by_queue_0" "893864036"
    
    Part_of_a_Non_Linear_Progression_Group{"🔀 <em></em><br/>Part of a Non-Linear Progression Group"}:::decisions
    click Part_of_a_Non_Linear_Progression_Group "#part_of_a_non_linear_progression_group" "845399683"
    
    Ready_or_In_Progress_Upon_Activation{"🔀 <em></em><br/>Ready or In Progress Upon Activation?"}:::decisions
    click Ready_or_In_Progress_Upon_Activation "#ready_or_in_progress_upon_activation" "398426663"
    
    Task_Found{"🔀 <em></em><br/>Task Found?"}:::decisions
    click Task_Found "#task_found" "405572005"
    
    Update_Empty{"🔀 <em></em><br/>Update Empty?"}:::decisions
    click Update_Empty "#update_empty" "2237687314"
    
    Affected_Deliverable_Loop{{"🔁 <em></em><br/>Affected Deliverable Loop"}}:::loops
    click Affected_Deliverable_Loop "#affected_deliverable_loop" "1820763878"
    
    Find_Duplicate_Task{{"🔁 <em></em><br/>Find Duplicate Task"}}:::loops
    click Find_Duplicate_Task "#find_duplicate_task" "1805071504"
    
    Get_Tasks_to_Activate{{"🔁 <em></em><br/>Get Tasks to Activate"}}:::loops
    click Get_Tasks_to_Activate "#get_tasks_to_activate" "2474635967"
    
    Next_Action_Loop{{"🔁 <em></em><br/>Next Action Loop"}}:::loops
    click Next_Action_Loop "#next_action_loop" "3312679587"
    
    Create_Tasks[("➕ <em></em><br/>Create Tasks")]:::recordCreates
    click Create_Tasks "#create_tasks" "747308403"
    
    Get_Driving_Task[("🔍 <em></em><br/>Get Driving Task")]:::recordLookups
    click Get_Driving_Task "#get_driving_task" "242850744"
    
    Get_Existing_Task[("🔍 <em></em><br/>Get Existing Task")]:::recordLookups
    click Get_Existing_Task "#get_existing_task" "935820117"
    
    Get_Incomplete_Tasks[("🔍 <em></em><br/>Get Incomplete Tasks")]:::recordLookups
    click Get_Incomplete_Tasks "#get_incomplete_tasks" "12995469"
    
    Get_PD[("🔍 <em></em><br/>Get PD")]:::recordLookups
    click Get_PD "#get_pd" "1892793509"
    
    Get_PDs_to_Activate[("🔍 <em></em><br/>Get PDs to Activate")]:::recordLookups
    click Get_PDs_to_Activate "#get_pds_to_activate" "3373753244"
    
    Get_PDs_to_Activate_0[("🔍 <em></em><br/>Get PDs to Activate")]:::recordLookups
    click Get_PDs_to_Activate_0 "#get_pds_to_activate_0" "3542518978"
    
    Get_Task[("🔍 <em></em><br/>Get Task")]:::recordLookups
    click Get_Task "#get_task" "2001519090"
    
    Update_Existing[("🛠️ <em></em><br/>Update Existing")]:::recordUpdates
    click Update_Existing "#update_existing" "3736929931"
    
    Add_to_Collection --> Get_Tasks_to_Activate
    Add_to_Next_Action_List --> Next_Action_Loop
    Assign_Current_User --> Ready_or_In_Progress_Upon_Activation
    Assign_Imp_Owner_0 --> Ready_or_In_Progress_Upon_Activation
    Assign_New_Values --> Find_Duplicate_Task
    Assign_New_Values_0 --> Find_Duplicate_Task
    Assign_New_Values_0_0 --> Find_Duplicate_Task
    Assign_Static_Owner --> Ready_or_In_Progress_Upon_Activation
    Creation_Collection --> Affected_Deliverable_Loop
    Imp_Owner --> Owned_by_Queue_0
    Trans_Owner --> Owned_by_Queue_0
    Update_Collection --> Affected_Deliverable_Loop
    Assign_Owner_of_Current_Controlling_Record --> |"Yes"| Connected_Object
    Assign_Owner_of_Current_Controlling_Record --> |"Imps Path"| Ready_or_In_Progress_Upon_Activation
    Assign_Owner_of_Current_Controlling_Record --> |"No"| Assign_Static_Owner
    Completion_Date_Verification --> |"Grab Task"| Add_to_Next_Action_List
    Completion_Date_Verification --> |"Skip Task"| Next_Action_Loop
    Connected_Object --> |"Transition"| Trans_Owner
    Connected_Object --> |"Implementation"| Imp_Owner
    Connected_Object --> |"Default Outcome"| END_Connected_Object
    Create_Empty --> |"No"| Create_Tasks
    Dupe_Found --> |"No"| Find_Duplicate_Task
    Eligible_Object_Process --> |"Opportunity"| Get_Task
    Eligible_Object_Process --> |"Add-On Product"| Get_Task
    Eligible_Object_Process --> |"Implementation"| Get_Task
    Eligible_Object_Process --> |"Transition"| Get_Task
    Eligible_Object_Process --> |"Default Outcome"| END_Eligible_Object_Process
    Existing_Task_Completed --> |"Yes"| Get_Tasks_to_Activate
    Existing_Task_Completed --> |"No"| Assign_Owner_of_Current_Controlling_Record
    Existing_Task_or_New_Task --> |"Existing"| Update_Collection
    Existing_Task_or_New_Task --> |"New"| Creation_Collection
    Incomplete_Tasks_Found --> |"Yes"| Get_PDs_to_Activate_0
    Incomplete_Tasks_Found --> |"No"| Get_PDs_to_Activate
    Next_Action_is_Null --> |"No"| Get_Tasks_to_Activate
    Next_Action_is_Null_0 --> |"No"| Next_Action_Loop
    Non_Linear_Trigger_Found --> |"Non-Linear"| Get_Driving_Task
    Non_Linear_Trigger_Found --> |"Linear"| Add_to_Next_Action_List
    Owned_by_Queue_0 --> |"Yes"| Assign_Current_User
    Owned_by_Queue_0 --> |"No"| Assign_Imp_Owner_0
    Part_of_a_Non_Linear_Progression_Group --> |"Yes"| Get_Incomplete_Tasks
    Part_of_a_Non_Linear_Progression_Group --> |"No"| Get_PDs_to_Activate
    Ready_or_In_Progress_Upon_Activation --> |"Not Needed/Declined"| Assign_New_Values_0
    Ready_or_In_Progress_Upon_Activation --> |"Ready"| Assign_New_Values_0_0
    Ready_or_In_Progress_Upon_Activation --> |"In Progress"| Assign_New_Values
    Ready_or_In_Progress_Upon_Activation --> |"Skip Task"| Find_Duplicate_Task
    Task_Found --> |"No Task"| Next_Action_Loop
    Task_Found --> |"Task Found"| Completion_Date_Verification
    Update_Empty --> |"Yes"| Create_Empty
    Update_Empty --> |"No"| Update_Existing
    Affected_Deliverable_Loop --> |"For Each"|Existing_Task_or_New_Task
    Affected_Deliverable_Loop ---> |"After Last"|Update_Empty
    Find_Duplicate_Task --> |"For Each"|Dupe_Found
    Find_Duplicate_Task ---> |"After Last"|Add_to_Collection
    Get_Tasks_to_Activate --> |"For Each"|Get_PD
    Get_Tasks_to_Activate ---> |"After Last"|Affected_Deliverable_Loop
    Next_Action_Loop --> |"For Each"|Non_Linear_Trigger_Found
    Next_Action_Loop ---> |"After Last"|Next_Action_is_Null
    Create_Tasks --> END_Create_Tasks
    Get_Driving_Task --> Task_Found
    Get_Existing_Task --> Existing_Task_Completed
    Get_Incomplete_Tasks --> Incomplete_Tasks_Found
    Get_PD --> Get_Existing_Task
    Get_PDs_to_Activate --> Next_Action_is_Null_0
    Get_PDs_to_Activate_0 --> Next_Action_is_Null
    Get_Task --> Part_of_a_Non_Linear_Progression_Group
    Update_Existing --> Create_Empty
    START --> |"Run Immediately"| Eligible_Object_Process
    START --> |"Batch Size = 1"| Eligible_Object_Process
    END_Connected_Object(( END )):::endClass
    END_Eligible_Object_Process(( END )):::endClass
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
    |Object|Project_Task__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create And Update|
    |Label|Project Task | Process | Move Project Forward|
    |Status|Active|
    |Does Require Record Changed To Meet Criteria|✅|
    |Description|Added path for imps tasks to not be reassigned to Nasrin on activation|
    |Environments|Default|
    |Interview Label|Project Task | Process | Move Project Forward {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Eligible_Object_Process](#eligible_object_process)|
    |Next Node|[Eligible_Object_Process](#eligible_object_process)|
    
    
    #### Scheduled Paths
    
    |Label|Name|Offset Number|Offset Unit|Record Field|Time Source|Connector|
    |:-- |:-- |:-- |:-- |:-- |:-- |:--  |
    |Batch Size = 1|Batch_Size_1|0|Minutes|<!-- -->|RecordTriggerEvent|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Actual_Completion_Date__c| Is Null|<!-- -->|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |actionProcessed|String|⬜|✅|✅|<!-- -->|<!-- -->|
    |CreationCollection|SObject|✅|✅|✅|Project_Task__c|<!-- -->|
    |existingTask|SObject|⬜|✅|✅|Project_Task__c|<!-- -->|
    |incompleteTask|SObject|⬜|✅|✅|Project_Task__c|<!-- -->|
    |loopVar|SObject|⬜|✅|✅|Project_Task__c|<!-- -->|
    |missingTask|SObject|⬜|✅|⬜|Project_Task__c|<!-- -->|
    |newTask|SObject|⬜|✅|✅|Project_Task__c|<!-- -->|
    |newTaskCollection|SObject|✅|✅|✅|Project_Task__c|<!-- -->|
    |nextActions|SObject|✅|✅|✅|Required_Action__c|<!-- -->|
    |nonLinearAction|SObject|✅|✅|⬜|Required_Action__c|<!-- -->|
    |ownerId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    |recordId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    |taskCollection|SObject|✅|✅|✅|Project_Task__c|<!-- -->|
    |toUpdate|SObject|✅|✅|✅|Project_Task__c|<!-- -->|
    |updateCollection|SObject|✅|✅|✅|Project_Task__c|<!-- -->|
    |updateIds|SObject|✅|✅|✅|Project_Task__c|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |expectedEnd|Date|{!expectedStart}+{!Get_PD.Days_to_Complete__c}|<!-- -->|
    |expectedStart|Date|{!Get_Task.Implementation__r.CreatedDate}+{!Get_PD.Expected_Start_Days_from_Creation__c}|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Add_to_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add to Collection|
    |Connector|[Get_Tasks_to_Activate](#get_tasks_to_activate)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |newTaskCollection| Add|newTask|
    
    
    
    
    ### Add_to_Next_Action_List
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add to Next Action List|
    |Connector|[Next_Action_Loop](#next_action_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |nextActions| Add|[Next_Action_Loop](#next_action_loop)|
    
    
    
    
    ### Assign_Current_User
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Current User|
    |Connector|[Ready_or_In_Progress_Upon_Activation](#ready_or_in_progress_upon_activation)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |newTask.OwnerId| Assign|$User.Id|
    |newTask.Assigned_To__c| Assign|$User.Id|
    
    
    
    
    ### Assign_Imp_Owner_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Imp Owner|
    |Connector|[Ready_or_In_Progress_Upon_Activation](#ready_or_in_progress_upon_activation)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |newTask.OwnerId| Assign|ownerId|
    |newTask.Assigned_To__c| Assign|ownerId|
    
    
    
    
    ### Assign_New_Values
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign New Values|
    |Connector|[Find_Duplicate_Task](#find_duplicate_task)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |newTask.Status__c| Assign|Get_PD.Status_Upon_Activation__c|
    |newTask.Actual_Start_Date__c| Assign|Get_Task.Actual_Completion_Date__c|
    |newTask.Name| Assign|Get_PD.Name|
    |newTask.Implementation__c| Assign|Get_Task.Implementation__c|
    |newTask.KPI_Milestone__c| Assign|Get_PD.KPI_Milestone__c|
    |newTask.Responsible_Party__c| Assign|Get_PD.Responsible_Party__c|
    |newTask.Order_Number__c| Assign|Get_PD.Order_Number__c|
    |newTask.Project_Deliverable__c| Assign|Get_PD.Id|
    |newTask.Expected_Start_Date__c| Assign|expectedStart|
    |newTask.Expected_Completion_Date__c| Assign|expectedEnd|
    |newTask.Transition__c| Assign|Get_Task.Transition__c|
    |newTask.Opportunity__c| Assign|Get_Task.Opportunity__c|
    |newTask.Add_On_Product__c| Assign|Get_Task.Add_On_Product__c|
    |newTask.Team_Member__c| Assign|Get_PD.Team_Member__c|
    
    
    
    
    ### Assign_New_Values_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign New Values|
    |Connector|[Find_Duplicate_Task](#find_duplicate_task)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |newTask.Status__c| Assign|Get_Task.Status__c|
    |newTask.Actual_Start_Date__c| Assign|Get_Task.Actual_Completion_Date__c|
    |newTask.Name| Assign|Get_PD.Name|
    |newTask.Implementation__c| Assign|Get_Task.Implementation__c|
    |newTask.KPI_Milestone__c| Assign|Get_PD.KPI_Milestone__c|
    |newTask.Responsible_Party__c| Assign|Get_PD.Responsible_Party__c|
    |newTask.Order_Number__c| Assign|Get_PD.Order_Number__c|
    |newTask.Project_Deliverable__c| Assign|Get_PD.Id|
    |newTask.Expected_Start_Date__c| Assign|expectedStart|
    |newTask.Expected_Completion_Date__c| Assign|expectedEnd|
    |newTask.Actual_Completion_Date__c| Assign|Get_Task.Actual_Completion_Date__c|
    |newTask.Transition__c| Assign|Get_Task.Transition__c|
    |newTask.Opportunity__c| Assign|Get_Task.Opportunity__c|
    |newTask.Add_On_Product__c| Assign|Get_Task.Add_On_Product__c|
    |newTask.Team_Member__c| Assign|Get_PD.Team_Member__c|
    
    
    
    
    ### Assign_New_Values_0_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign New Values|
    |Connector|[Find_Duplicate_Task](#find_duplicate_task)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |newTask.Status__c| Assign|Get_PD.Status_Upon_Activation__c|
    |newTask.Name| Assign|Get_PD.Name|
    |newTask.Implementation__c| Assign|Get_Task.Implementation__c|
    |newTask.KPI_Milestone__c| Assign|Get_PD.KPI_Milestone__c|
    |newTask.Responsible_Party__c| Assign|Get_PD.Responsible_Party__c|
    |newTask.Order_Number__c| Assign|Get_PD.Order_Number__c|
    |newTask.Project_Deliverable__c| Assign|Get_PD.Id|
    |newTask.Expected_Start_Date__c| Assign|expectedStart|
    |newTask.Expected_Completion_Date__c| Assign|expectedEnd|
    |newTask.Actual_Start_Date__c| Assign|Get_Task.Actual_Completion_Date__c|
    |newTask.Transition__c| Assign|Get_Task.Transition__c|
    |newTask.Opportunity__c| Assign|Get_Task.Opportunity__c|
    |newTask.Add_On_Product__c| Assign|Get_Task.Add_On_Product__c|
    |newTask.Team_Member__c| Assign|Get_PD.Team_Member__c|
    
    
    
    
    ### Assign_Static_Owner
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Static Owner|
    |Connector|[Ready_or_In_Progress_Upon_Activation](#ready_or_in_progress_upon_activation)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |newTask.OwnerId| Assign|Get_PD.Assigned_To__c|
    |newTask.Assigned_To__c| Assign|Get_PD.Assigned_To__c|
    
    
    
    
    ### Creation_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Creation Collection|
    |Connector|[Affected_Deliverable_Loop](#affected_deliverable_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |CreationCollection| Add|[Affected_Deliverable_Loop](#affected_deliverable_loop)|
    
    
    
    
    ### Imp_Owner
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Imp Owner|
    |Connector|[Owned_by_Queue_0](#owned_by_queue_0)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |ownerId| Assign|Get_Task.Implementation__r.OwnerId|
    |newTask.RecordTypeId| Assign|0121G000000TjhAQAS|
    
    
    
    
    ### Trans_Owner
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Trans Owner|
    |Connector|[Owned_by_Queue_0](#owned_by_queue_0)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |ownerId| Assign|Get_Task.Transition__r.OwnerId|
    |newTask.RecordTypeId| Assign|0121G000000RlRgQAK|
    
    
    
    
    ### Update_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Update Collection|
    |Connector|[Affected_Deliverable_Loop](#affected_deliverable_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |updateCollection| Add|[Affected_Deliverable_Loop](#affected_deliverable_loop)|
    
    
    
    
    ### Assign_Owner_of_Current_Controlling_Record
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Assign Owner of Current Controlling Record?|
    |Default Connector|[Assign_Static_Owner](#assign_static_owner)|
    |Default Connector Label|No|
    
    
    #### Rule YesCurrent (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Connected_Object](#connected_object)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_PD.Assign_to_Current_Owner__c| Equal To|✅|
    
    
    
    
    #### Rule Imps_Path (Imps Path)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Ready_or_In_Progress_Upon_Activation](#ready_or_in_progress_upon_activation)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_PD.Work_Breakdown_Structure__r.Object_Managed__c| Equal To|Implementation|
    
    
    
    
    ### Completion_Date_Verification
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Completion Date Verification|
    |Default Connector|[Next_Action_Loop](#next_action_loop)|
    |Default Connector Label|Skip Task|
    
    
    #### Rule Grab_Task (Grab Task)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Add_to_Next_Action_List](#add_to_next_action_list)|
    |Condition Logic|(1 AND 2) OR 3|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Actual_Completion_Date__c| Not Equal To|missingTask.Actual_Completion_Date__c|
    |2|$Record.Completion_Order__c| Equal To|1|
    |3|$Record.Id| Equal To|missingTask.Id|
    
    
    
    
    ### Connected_Object
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Connected Object|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Transition (Transition)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Trans_Owner](#trans_owner)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Task.Transition__c| Is Null|⬜|
    |2|Get_Task.Implementation__c| Is Null|✅|
    
    
    
    
    #### Rule Implementation (Implementation)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Imp_Owner](#imp_owner)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Task.Implementation__c| Is Null|⬜|
    |2|Get_Task.Transition__c| Is Null|✅|
    
    
    
    
    ### Create_Empty
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Create Empty?|
    |Default Connector|[Create_Tasks](#create_tasks)|
    |Default Connector Label|No|
    
    
    #### Rule YesEmpty_0 (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|CreationCollection| Is Null|✅|
    
    
    
    
    ### Dupe_Found
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Dupe Found?|
    |Default Connector|[Find_Duplicate_Task](#find_duplicate_task)|
    |Default Connector Label|No|
    
    
    #### Rule YesDupe (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Find_Duplicate_Task.Project_Deliverable__c| Equal To|newTask.Project_Deliverable__c|
    
    
    
    
    ### Eligible_Object_Process
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Eligible Object Process|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Opportunity (Opportunity)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Task](#get_task)|
    |Condition Logic|1 AND 2 AND (NOT 3)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Add_On_Product__c| Is Null|✅|
    |2|$Record.Opportunity__c| Is Null|⬜|
    |3|$Record.Opportunity_Stage__c| Contains|Closed|
    
    
    
    
    #### Rule Add_On_Product (Add-On Product)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Task](#get_task)|
    |Condition Logic|1 AND (NOT 2) AND (NOT 3) AND (NOT 4)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Add_On_Product__c| Is Null|⬜|
    |2|$Record.Add_On_Product_Status__c| Contains|Terminated|
    |3|$Record.Add_On_Product_Status__c| Contains|No Start|
    |4|$Record.Add_On_Product__r.Product_Status__c| Contains|Completed Setup|
    
    
    
    
    #### Rule Implementation_Process (Implementation)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Task](#get_task)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Implementation__c| Is Null|⬜|
    |2|$Record.Add_On_Product__c| Is Null|✅|
    |3|$Record.Opportunity__c| Is Null|✅|
    
    
    
    
    #### Rule Transition_Process (Transition)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Task](#get_task)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Transition__c| Is Null|⬜|
    
    
    
    
    ### Existing_Task_Completed
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Existing Task Completed?|
    |Default Connector|[Assign_Owner_of_Current_Controlling_Record](#assign_owner_of_current_controlling_record)|
    |Default Connector Label|No|
    
    
    #### Rule YesCompleted (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Tasks_to_Activate](#get_tasks_to_activate)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|newTask.Status__c| Equal To|Completed|
    |2|newTask.Status__c| Equal To|Not Needed|
    |3|newTask.Status__c| Equal To|Declined|
    
    
    
    
    ### Existing_Task_or_New_Task
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Existing Task or New Task?|
    |Default Connector|[Creation_Collection](#creation_collection)|
    |Default Connector Label|New|
    
    
    #### Rule Existing (Existing)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Collection](#update_collection)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Affected_Deliverable_Loop.Id| Is Null|⬜|
    
    
    
    
    ### Incomplete_Tasks_Found
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Incomplete Tasks Found?|
    |Default Connector|[Get_PDs_to_Activate](#get_pds_to_activate)|
    |Default Connector Label|No|
    
    
    #### Rule Yes (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_PDs_to_Activate_0](#get_pds_to_activate_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|incompleteTask.Id| Is Null|⬜|
    
    
    
    
    ### Next_Action_is_Null
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Next Action is Null|
    |Default Connector|[Get_Tasks_to_Activate](#get_tasks_to_activate)|
    |Default Connector Label|No|
    
    
    #### Rule YesNull (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|nextActions| Is Null|✅|
    
    
    
    
    ### Next_Action_is_Null_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Next Action is Null|
    |Default Connector|[Next_Action_Loop](#next_action_loop)|
    |Default Connector Label|No|
    
    
    #### Rule YesNull_0 (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|nonLinearAction| Is Null|✅|
    
    
    
    
    ### Non_Linear_Trigger_Found
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Non-Linear Trigger Found|
    |Default Connector|[Add_to_Next_Action_List](#add_to_next_action_list)|
    |Default Connector Label|Linear|
    
    
    #### Rule Non_Linear (Non-Linear)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Driving_Task](#get_driving_task)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Next_Action_Loop.Non_Linear_Progression_Trigger__c| Is Null|⬜|
    
    
    
    
    ### Owned_by_Queue_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Owned by Queue|
    |Default Connector|[Assign_Imp_Owner_0](#assign_imp_owner_0)|
    |Default Connector Label|No|
    
    
    #### Rule YesQueue_0 (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Current_User](#assign_current_user)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|ownerId| Starts With|00G|
    
    
    
    
    ### Part_of_a_Non_Linear_Progression_Group
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Part of a Non-Linear Progression Group|
    |Default Connector|[Get_PDs_to_Activate](#get_pds_to_activate)|
    |Default Connector Label|No|
    
    
    #### Rule YesNonLinear (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Incomplete_Tasks](#get_incomplete_tasks)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Task.Non_Linear_Progression_Group__c| Is Null|⬜|
    
    
    
    
    ### Ready_or_In_Progress_Upon_Activation
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Ready or In Progress Upon Activation?|
    |Default Connector|[Find_Duplicate_Task](#find_duplicate_task)|
    |Default Connector Label|Skip Task|
    
    
    #### Rule Not_Needed_Declined (Not Needed/Declined)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_New_Values_0](#assign_new_values_0)|
    |Condition Logic|(1 OR 2) AND 3 AND 4 AND 5 AND 6|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Task.Status__c| Equal To|Not Needed|
    |2|Get_Task.Status__c| Equal To|Declined|
    |3|Get_Tasks_to_Activate.Not_Needed_Declined_at_Creation__c| Was Set|✅|
    |4|newTask.Status__c| Not Equal To|Completed|
    |5|newTask.Status__c| Not Equal To|Not Needed|
    |6|newTask.Status__c| Not Equal To|Declined|
    
    
    
    
    #### Rule Ready (Ready)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_New_Values_0_0](#assign_new_values_0_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_PD.Status_Upon_Activation__c| Equal To|Ready|
    |2|newTask.Status__c| Not Equal To|Completed|
    |3|newTask.Status__c| Not Equal To|Declined|
    |4|newTask.Status__c| Not Equal To|Not Needed|
    
    
    
    
    #### Rule In_Progress (In Progress)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_New_Values](#assign_new_values)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_PD.Status_Upon_Activation__c| Equal To|In Progress|
    |2|newTask.Status__c| Not Equal To|Completed|
    |3|newTask.Status__c| Not Equal To|Not Needed|
    |4|newTask.Status__c| Not Equal To|Declined|
    
    
    
    
    ### Task_Found
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Task Found?|
    |Default Connector|[Completion_Date_Verification](#completion_date_verification)|
    |Default Connector Label|Task Found|
    
    
    #### Rule No_Task (No Task)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Next_Action_Loop](#next_action_loop)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|missingTask.Id| Is Null|✅|
    
    
    
    
    ### Update_Empty
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Update Empty?|
    |Default Connector|[Update_Existing](#update_existing)|
    |Default Connector Label|No|
    
    
    #### Rule YesEmpty (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Create_Empty](#create_empty)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|updateCollection| Is Null|✅|
    
    
    
    
    ### Affected_Deliverable_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Affected Deliverable Loop|
    |Collection Reference|newTaskCollection|
    |Iteration Order|Asc|
    |Next Value Connector|[Existing_Task_or_New_Task](#existing_task_or_new_task)|
    |No More Values Connector|[Update_Empty](#update_empty)|
    
    
    ### Find_Duplicate_Task
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Find Duplicate Task|
    |Collection Reference|newTaskCollection|
    |Iteration Order|Asc|
    |Next Value Connector|[Dupe_Found](#dupe_found)|
    |No More Values Connector|[Add_to_Collection](#add_to_collection)|
    
    
    ### Get_Tasks_to_Activate
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Get Tasks to Activate|
    |Collection Reference|nextActions|
    |Iteration Order|Asc|
    |Next Value Connector|[Get_PD](#get_pd)|
    |No More Values Connector|[Affected_Deliverable_Loop](#affected_deliverable_loop)|
    
    
    ### Next_Action_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Next Action Loop|
    |Collection Reference|nonLinearAction|
    |Iteration Order|Asc|
    |Next Value Connector|[Non_Linear_Trigger_Found](#non_linear_trigger_found)|
    |No More Values Connector|[Next_Action_is_Null](#next_action_is_null)|
    
    
    ### Create_Tasks
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Label|Create Tasks|
    |Input Reference|CreationCollection|
    
    
    ### Get_Driving_Task
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Project_Task__c|
    |Label|Get Driving Task|
    |Assign Null Values If No Records Found|✅|
    |Output Assignments|- assignToReference: missingTask.Actual_Completion_Date__c<br/>&nbsp;&nbsp;field: Actual_Completion_Date__c<br/>- assignToReference: missingTask.Id<br/>&nbsp;&nbsp;field: Id<br/>|
    |Connector|[Task_Found](#task_found)|
    
    
    #### Filters (logic: **1 AND (2 OR 3 OR 4) AND (5 OR 10) AND ((6 AND 7) OR (8 AND 9))**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Project_Deliverable__c| Equal To|Next_Action_Loop.Finish_before_Activation__c|
    |2|Status__c| Equal To|Completed|
    |3|Status__c| Equal To|Not Needed|
    |4|Status__c| Equal To|Declined|
    |5|Actual_Completion_Date__c| Not Equal To|$Record.Actual_Completion_Date__c|
    |6|Transition__c| Equal To|$Record.Transition__c|
    |7|Transition__c| Is Null|<!-- -->|
    |8|Implementation__c| Equal To|$Record.Implementation__c|
    |9|Implementation__c| Is Null|<!-- -->|
    |10|Id| Equal To|$Record.Id|
    
    
    
    
    ### Get_Existing_Task
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Project_Task__c|
    |Label|Get Existing Task|
    |Assign Null Values If No Records Found|✅|
    |Output Assignments|- assignToReference: newTask.Id<br/>&nbsp;&nbsp;field: Id<br/>- assignToReference: newTask.Status__c<br/>&nbsp;&nbsp;field: Status__c<br/>|
    |Connector|[Existing_Task_Completed](#existing_task_completed)|
    
    
    #### Filters (logic: **1 AND ((2 AND 3) OR (4 AND 5))**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Project_Deliverable__c| Equal To|Get_PD.Id|
    |2|Implementation__c| Equal To|Get_Task.Implementation__c|
    |3|Implementation__c| Is Null|<!-- -->|
    |4|Transition__c| Equal To|Get_Task.Transition__c|
    |5|Transition__c| Is Null|<!-- -->|
    
    
    
    
    ### Get_Incomplete_Tasks
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Project_Task__c|
    |Label|Get Incomplete Tasks|
    |Assign Null Values If No Records Found|✅|
    |Output Assignments|assignToReference: incompleteTask.Id<br/>field: Id<br/>|
    |Connector|[Incomplete_Tasks_Found](#incomplete_tasks_found)|
    
    
    #### Filters (logic: **1 AND 2 AND 3 AND 4 AND 5 AND ((6 AND 8) OR (7 AND 9))**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Non_Linear_Progression_Group__c| Equal To|Get_Task.Non_Linear_Progression_Group__c|
    |2|Status__c| Not Equal To|Completed|
    |3|Status__c| Not Equal To|Not Needed|
    |4|Status__c| Not Equal To|Declined|
    |5|Non_Linear_Progression_Group__c| Is Null|<!-- -->|
    |6|Implementation__c| Equal To|Get_Task.Implementation__c|
    |7|Transition__c| Equal To|Get_Task.Transition__c|
    |8|Implementation__c| Is Null|<!-- -->|
    |9|Transition__c| Is Null|<!-- -->|
    
    
    
    
    ### Get_PD
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Project_Deliverables__c|
    |Label|Get PD|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Get_Existing_Task](#get_existing_task)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Tasks_to_Activate.Affected_Deliverable__c|
    
    
    
    
    ### Get_PDs_to_Activate
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Required_Action__c|
    |Label|Get PDs to Activate|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|nonLinearAction|
    |Queried Fields|- Id<br/>- Affected_Deliverable__c<br/>- Non_Linear_Progression_Trigger__c<br/>- Finish_before_Activation__c<br/>|
    |Connector|[Next_Action_is_Null_0](#next_action_is_null_0)|
    
    
    #### Filters (logic: **1 OR (2 AND 3)**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Finish_before_Activation__c| Equal To|Get_Task.Project_Deliverable__c|
    |2|Non_Linear_Progression_Trigger__c| Equal To|Get_Task.Non_Linear_Progression_Group__c|
    |3|Non_Linear_Progression_Trigger__c| Is Null|<!-- -->|
    
    
    
    
    ### Get_PDs_to_Activate_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Required_Action__c|
    |Label|Get PDs to Activate|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|nextActions|
    |Queried Fields|- Id<br/>- Affected_Deliverable__c<br/>|
    |Connector|[Next_Action_is_Null](#next_action_is_null)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Finish_before_Activation__c| Equal To|Get_Task.Project_Deliverable__c|
    |2|Non_Linear_Progression_Trigger__c| Is Null|<!-- -->|
    
    
    
    
    ### Get_Task
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Project_Task__c|
    |Label|Get Task|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Part_of_a_Non_Linear_Progression_Group](#part_of_a_non_linear_progression_group)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$Record.Id|
    
    
    
    
    ### Update_Existing
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Existing|
    |Input Reference|updateCollection|
    |Connector|[Create_Empty](#create_empty)|
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

