# Add_On_Product_After_Close_Unused_Tasks history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Add_On_Product_After_Close_Unused_Tasks-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "3923747360"
    
    Add_to_Collection[\"🟰 <em></em><br/>Add to Collection"/]:::assignments
    click Add_to_Collection "#add_to_collection" "1899779442"
    
    Update_Task_Status[\"🟰 <em></em><br/>Update Task Status"/]:::assignments
    click Update_Task_Status "#update_task_status" "3720795326"
    
    Null_Check{"🔀 <em></em><br/>Null Check"}:::decisions
    click Null_Check "#null_check" "4234857432"
    
    Task_Loop{{"🔁 <em></em><br/>Task Loop"}}:::loops
    click Task_Loop "#task_loop" "3808285338"
    
    Get_Project_Tasks[("🔍 <em></em><br/>Get Project Tasks")]:::recordLookups
    click Get_Project_Tasks "#get_project_tasks" "452217485"
    
    Update_Tasks[("🛠️ <em></em><br/>Update Tasks")]:::recordUpdates
    click Update_Tasks "#update_tasks" "3344215931"
    
    Add_to_Collection --> Task_Loop
    Update_Task_Status --> Add_to_Collection
    Null_Check --> |"Tasks Found"| Task_Loop
    Null_Check --> |"Tasks Not Found"| END_Null_Check
    Task_Loop --> |"For Each"|Update_Task_Status
    Task_Loop ---> |"After Last"|Update_Tasks
    Get_Project_Tasks --> Null_Check
    Update_Tasks --> END_Update_Tasks
    START --> |"Run Immediately"| Get_Project_Tasks
    END_Null_Check(( END )):::endClass
    END_Update_Tasks(( END )):::endClass
    
    
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
    |Object|Add_On_Products__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create And Update|
    |Label|Add-On Product | After | Close Unused Tasks|
    |Status|Active|
    |Does Require Record Changed To Meet Criteria|✅|
    |Environments|Default|
    |Interview Label|Add-On Product {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    
    
    #### Scheduled Paths
    
    |Label|Name|Offset Number|Offset Unit|Record Field|Time Source|Connector|
    |:-- |:-- |:-- |:-- |:-- |:-- |:--  |
    |<!-- -->|<!-- -->|<!-- -->|<!-- -->|<!-- -->|<!-- -->|[Get_Project_Tasks](#get_project_tasks)|
    
    
    #### Filters (logic: **or**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Product_Status__c| Equal To|Terminated Integration|
    |2|Product_Status__c| Equal To|No Start|
    |3|Product_Status__c| Equal To|Completed Setup|
    |4|Product_Status__c| Equal To|Transferred to Finch|
    |5|Product_Status__c| Equal To|Cancelled Setup|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |incompleteTasks|SObject|✅|✅|⬜|Project_Task__c|<!-- -->|
    |taskCollection|SObject|✅|✅|⬜|Project_Task__c|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |now|DateTime|NOW()|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Add_to_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add to Collection|
    |Connector|[Task_Loop](#task_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |taskCollection| Add|[Task_Loop](#task_loop)|
    
    
    
    
    ### Update_Task_Status
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Update Task Status|
    |Connector|[Add_to_Collection](#add_to_collection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Task_Loop.Status__c| Assign|Declined|
    |Task_Loop.Actual_Completion_Date__c| Assign|now|
    
    
    
    
    ### Null_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Null Check|
    |Default Connector Label|Tasks Not Found|
    
    
    #### Rule Tasks_Found (Tasks Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Task_Loop](#task_loop)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|incompleteTasks| Is Null|⬜|
    
    
    
    
    ### Task_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Task Loop|
    |Collection Reference|incompleteTasks|
    |Iteration Order|Asc|
    |Next Value Connector|[Update_Task_Status](#update_task_status)|
    |No More Values Connector|[Update_Tasks](#update_tasks)|
    
    
    ### Get_Project_Tasks
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Project_Task__c|
    |Label|Get Project Tasks|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|incompleteTasks|
    |Queried Fields|Id|
    |Connector|[Null_Check](#null_check)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Add_On_Product__c| Equal To|$Record.Id|
    |2|Status__c| Not Equal To|Declined|
    |3|Status__c| Not Equal To|Not Needed|
    |4|Status__c| Not Equal To|Completed|
    
    
    
    
    ### Update_Tasks
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Tasks|
    |Input Reference|taskCollection|
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

