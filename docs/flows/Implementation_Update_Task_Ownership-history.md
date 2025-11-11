# Implementation_Update_Task_Ownership history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Implementation_Update_Task_Ownership-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>"]):::startClass
    click START "#general-information" "2955957783"
    
    Assign_to_Collection[\"🟰 <em></em><br/>Assign to Collection"/]:::assignments
    click Assign_to_Collection "#assign_to_collection" "3620494930"
    
    Assign_to_Collection_0[\"🟰 <em></em><br/>Assign to Collection"/]:::assignments
    click Assign_to_Collection_0 "#assign_to_collection_0" "28532112"
    
    Reassign_Owner[\"🟰 <em></em><br/>Reassign Owner"/]:::assignments
    click Reassign_Owner "#reassign_owner" "521212959"
    
    Reassign_Owner_0[\"🟰 <em></em><br/>Reassign Owner"/]:::assignments
    click Reassign_Owner_0 "#reassign_owner_0" "3982971147"
    
    Eligible_for_Reassignment{"🔀 <em></em><br/>Eligible for Reassignment?"}:::decisions
    click Eligible_for_Reassignment "#eligible_for_reassignment" "1987250305"
    
    Is_this_owned_by_the_Imps_Team{"🔀 <em></em><br/>Is this owned by the Imps Team?"}:::decisions
    click Is_this_owned_by_the_Imps_Team "#is_this_owned_by_the_imps_team" "208939809"
    
    Owned_by_an_Individual_User{"🔀 <em></em><br/>Owned by an Individual User?"}:::decisions
    click Owned_by_an_Individual_User "#owned_by_an_individual_user" "1286915493"
    
    Should_task_go_to_CST{"🔀 <em></em><br/>Should task go to CST?"}:::decisions
    click Should_task_go_to_CST "#should_task_go_to_cst" "3287861739"
    
    Task_Loop{{"🔁 <em></em><br/>Task Loop"}}:::loops
    click Task_Loop "#task_loop" "3930299231"
    
    Task_Loop_Imp{{"🔁 <em></em><br/>Task Loop"}}:::loops
    click Task_Loop_Imp "#task_loop_imp" "3121955067"
    
    Get_Imp[("🔍 <em></em><br/>Get Imp")]:::recordLookups
    click Get_Imp "#get_imp" "3794234808"
    
    Get_Owner[("🔍 <em></em><br/>Get Owner")]:::recordLookups
    click Get_Owner "#get_owner" "3190401021"
    
    Get_Tasks[("🔍 <em></em><br/>Get Tasks")]:::recordLookups
    click Get_Tasks "#get_tasks" "3566310805"
    
    Update_Tasks[("🛠️ <em></em><br/>Update Tasks")]:::recordUpdates
    click Update_Tasks "#update_tasks" "3696471185"
    
    Assign_to_Collection --> Task_Loop
    Assign_to_Collection_0 --> Task_Loop_Imp
    Reassign_Owner --> Assign_to_Collection
    Reassign_Owner_0 --> Assign_to_Collection_0
    Eligible_for_Reassignment --> |"Yes"| Reassign_Owner_0
    Eligible_for_Reassignment --> |"No"| Task_Loop_Imp
    Is_this_owned_by_the_Imps_Team --> |"Yes"| Task_Loop_Imp
    Is_this_owned_by_the_Imps_Team --> |"No"| Task_Loop
    Owned_by_an_Individual_User --> |"Yes"| Get_Owner
    Owned_by_an_Individual_User --> |"No"| Is_this_owned_by_the_Imps_Team
    Should_task_go_to_CST --> |"Yes"| Reassign_Owner
    Should_task_go_to_CST --> |"No"| Task_Loop
    Task_Loop --> |"For Each"|Should_task_go_to_CST
    Task_Loop ---> |"After Last"|Update_Tasks
    Task_Loop_Imp --> |"For Each"|Eligible_for_Reassignment
    Task_Loop_Imp ---> |"After Last"|Update_Tasks
    Get_Imp --> Get_Tasks
    Get_Owner --> Is_this_owned_by_the_Imps_Team
    Get_Tasks --> Owned_by_an_Individual_User
    Update_Tasks --> END_Update_Tasks
    START -->  Get_Imp
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
    |Process Type| Auto Launched Flow|
    |Label|Implementation | Update Task Ownership|
    |Status|Obsolete|
    |Description|When CST owns Implementation, reassign open tasks when appropriate.   Adds reassignment of "Set Implementation Completion Date"|
    |Environments|Default|
    |Interview Label|Implementation | Update Task Ownership {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Imp](#get_imp)|
    |Next Node|[Get_Imp](#get_imp)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |LoopVar|SObject|⬜|✅|✅|Project_Task__c|<!-- -->|
    |recordId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    |TaskCollection|SObject|✅|✅|✅|Project_Task__c|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Assign_to_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign to Collection|
    |Connector|[Task_Loop](#task_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |TaskCollection| Add|LoopVar|
    
    
    
    
    ### Assign_to_Collection_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign to Collection|
    |Connector|[Task_Loop_Imp](#task_loop_imp)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |TaskCollection| Add|LoopVar|
    
    
    
    
    ### Reassign_Owner
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Reassign Owner|
    |Connector|[Assign_to_Collection](#assign_to_collection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |LoopVar.Assigned_To__c| Assign|00500000006wfdm|
    |LoopVar.OwnerId| Assign|00500000006wfdm|
    
    
    
    
    ### Reassign_Owner_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Reassign Owner|
    |Connector|[Assign_to_Collection_0](#assign_to_collection_0)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |LoopVar.Assigned_To__c| Assign|Get_Imp.OwnerId|
    |LoopVar.OwnerId| Assign|Get_Imp.OwnerId|
    
    
    
    
    ### Eligible_for_Reassignment
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Eligible for Reassignment?|
    |Default Connector|[Task_Loop_Imp](#task_loop_imp)|
    |Default Connector Label|No|
    
    
    #### Rule Yes (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Reassign_Owner_0](#reassign_owner_0)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|LoopVar.Eligible_for_Reassignment__c| Equal To|✅|
    |2|LoopVar.Skill__c| Equal To|RM|
    
    
    
    
    ### Is_this_owned_by_the_Imps_Team
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Is this owned by the Imps Team?|
    |Default Connector|[Task_Loop](#task_loop)|
    |Default Connector Label|No|
    
    
    #### Rule YesImps (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Task_Loop_Imp](#task_loop_imp)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Owner.UserRole.Name| Starts With|Imp|
    |2|Get_Owner.UserRole.Name| Starts With|Payroll|
    
    
    
    
    #### Rule Imps_Queue (Imps Queue)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Imp.OwnerId| Equal To|3D00G37000000PDff|
    
    
    
    
    ### Owned_by_an_Individual_User
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Owned by an Individual User?|
    |Default Connector|[Is_this_owned_by_the_Imps_Team](#is_this_owned_by_the_imps_team)|
    |Default Connector Label|No|
    
    
    #### Rule YesUser (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Owner](#get_owner)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Imp.OwnerId| Starts With|5|
    
    
    
    
    ### Should_task_go_to_CST
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Should task go to CST?|
    |Default Connector|[Task_Loop](#task_loop)|
    |Default Connector Label|No|
    
    
    #### Rule YesAssign (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Reassign_Owner](#reassign_owner)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|LoopVar.Name| Contains|Upload|
    |2|LoopVar.Name| Contains|Verify|
    |3|LoopVar.Name| Contains|Set Implementation Complete Date|
    
    
    
    
    ### Task_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Task Loop|
    |Assign Next Value To Reference|LoopVar|
    |Collection Reference|[Get_Tasks](#get_tasks)|
    |Iteration Order|Asc|
    |Next Value Connector|[Should_task_go_to_CST](#should_task_go_to_cst)|
    |No More Values Connector|[Update_Tasks](#update_tasks)|
    
    
    ### Task_Loop_Imp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Task Loop|
    |Assign Next Value To Reference|LoopVar|
    |Collection Reference|[Get_Tasks](#get_tasks)|
    |Iteration Order|Asc|
    |Next Value Connector|[Eligible_for_Reassignment](#eligible_for_reassignment)|
    |No More Values Connector|[Update_Tasks](#update_tasks)|
    
    
    ### Get_Imp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Implementation__c|
    |Label|Get Imp|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Get_Tasks](#get_tasks)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Get_Owner
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|User|
    |Label|Get Owner|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Is_this_owned_by_the_Imps_Team](#is_this_owned_by_the_imps_team)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Imp.OwnerId|
    
    
    
    
    ### Get_Tasks
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Project_Task__c|
    |Label|Get Tasks|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Store Output Automatically|✅|
    |Connector|[Owned_by_an_Individual_User](#owned_by_an_individual_user)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Implementation__c| Equal To|recordId|
    |2|Status__c| Not Equal To|Completed|
    |3|Status__c| Not Equal To|Not Needed|
    |4|Status__c| Not Equal To|Declined|
    
    
    
    
    ### Update_Tasks
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Tasks|
    |Input Reference|TaskCollection|
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

