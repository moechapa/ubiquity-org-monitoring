# Project_Task_Button_Complete_Tasks history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Project_Task_Button_Complete_Tasks-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Screen Flow</b>"]):::startClass
    click START "#general-information" "1200582039"
    
    Add_to_Collection_0_0[\"🟰 <em></em><br/>Add to Collection"/]:::assignments
    click Add_to_Collection_0_0 "#add_to_collection_0_0" "1923179625"
    
    Assign_Completion_Date[\"🟰 <em></em><br/>Assign Completion Date"/]:::assignments
    click Assign_Completion_Date "#assign_completion_date" "611658292"
    
    Assign_Record_to_Variable[\"🟰 <em></em><br/>Assign Record to Variable"/]:::assignments
    click Assign_Record_to_Variable "#assign_record_to_variable" "3763531730"
    
    Order_Assignment[\"🟰 <em></em><br/>Order Assignment"/]:::assignments
    click Order_Assignment "#order_assignment" "3489661621"
    
    Loop_through_PT_Ids{{"🔁 <em></em><br/>Loop through PT Ids"}}:::loops
    click Loop_through_PT_Ids "#loop_through_pt_ids" "4210966854"
    
    Complete_Tasks[("🛠️ <em></em><br/>Complete Tasks")]:::recordUpdates
    click Complete_Tasks "#complete_tasks" "2503102082"
    
    Error_Screen(["💻 <em></em><br/>Error Screen"]):::screens
    click Error_Screen "#error_screen" "1931307284"
    
    Add_to_Collection_0_0 --> Loop_through_PT_Ids
    Assign_Completion_Date --> Add_to_Collection_0_0
    Assign_Record_to_Variable --> Assign_Completion_Date
    Order_Assignment --> Assign_Record_to_Variable
    Loop_through_PT_Ids --> |"For Each"|Order_Assignment
    Loop_through_PT_Ids ---> |"After Last"|Complete_Tasks
    Complete_Tasks --> END_Complete_Tasks
    Complete_Tasks -. Fault .->Error_Screen
    Error_Screen --> END_Error_Screen
    START -->  Loop_through_PT_Ids
    END_Complete_Tasks(( END )):::endClass
    END_Error_Screen(( END )):::endClass
    
    
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
    |Label|Project Task | Button | Complete Tasks|
    |Status|Active|
    |Environments|Default|
    |Interview Label|Project Task | Button | Complete Tasks {!$Flow.CurrentDateTime}|
    |Run In Mode| System Mode Without Sharing|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Loop_through_PT_Ids](#loop_through_pt_ids)|
    |Next Node|[Loop_through_PT_Ids](#loop_through_pt_ids)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |completedTask|SObject|⬜|✅|✅|Project_Task__c|<!-- -->|
    |completedTasks|SObject|✅|✅|✅|Project_Task__c|<!-- -->|
    |compOrder|Number|⬜|✅|⬜|<!-- -->|<!-- -->|
    |CreationCollection|SObject|✅|✅|✅|Project_Task__c|<!-- -->|
    |existingTask|SObject|⬜|✅|✅|Project_Task__c|<!-- -->|
    |ids|String|✅|✅|✅|<!-- -->|<!-- -->|
    |incompleteTask|SObject|⬜|✅|✅|Project_Task__c|<!-- -->|
    |loopVar|SObject|⬜|✅|✅|Project_Task__c|<!-- -->|
    |newTask|SObject|⬜|✅|✅|Project_Task__c|<!-- -->|
    |newTaskCollection|SObject|✅|✅|✅|Project_Task__c|<!-- -->|
    |nextActions|SObject|✅|✅|✅|Required_Action__c|<!-- -->|
    |nonLinearGroupId|String|✅|✅|✅|<!-- -->|<!-- -->|
    |ownerId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    |recordId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    |taskCollection|SObject|✅|✅|✅|Project_Task__c|<!-- -->|
    |taskGroupValidation|SObject|⬜|✅|✅|Project_Task__c|<!-- -->|
    |toUpdate|SObject|✅|✅|✅|Project_Task__c|<!-- -->|
    |updateCollection|SObject|✅|✅|✅|Project_Task__c|<!-- -->|
    |updateIds|SObject|✅|✅|✅|Project_Task__c|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |now|DateTime|NOW()|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Add_to_Collection_0_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add to Collection|
    |Connector|[Loop_through_PT_Ids](#loop_through_pt_ids)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |completedTasks| Add|completedTask|
    
    
    
    
    ### Assign_Completion_Date
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Completion Date|
    |Connector|[Add_to_Collection_0_0](#add_to_collection_0_0)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |completedTask.Actual_Completion_Date__c| Assign|now|
    |completedTask.Status__c| Assign|Completed|
    |completedTask.Closed_via_Button__c| Assign|✅|
    |completedTask.Completion_Order__c| Assign|compOrder|
    
    
    
    
    ### Assign_Record_to_Variable
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Record to Variable|
    |Connector|[Assign_Completion_Date](#assign_completion_date)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |completedTask.Id| Assign|[Loop_through_PT_Ids](#loop_through_pt_ids)|
    
    
    
    
    ### Order_Assignment
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Order Assignment|
    |Connector|[Assign_Record_to_Variable](#assign_record_to_variable)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |compOrder| Add|1|
    
    
    
    
    ### Loop_through_PT_Ids
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Loop through PT Ids|
    |Collection Reference|ids|
    |Iteration Order|Asc|
    |Next Value Connector|[Order_Assignment](#order_assignment)|
    |No More Values Connector|[Complete_Tasks](#complete_tasks)|
    
    
    ### Complete_Tasks
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Complete Tasks|
    |Fault Connector|[Error_Screen](#error_screen)|
    |Input Reference|completedTasks|
    
    
    ### Error_Screen
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|Error Screen|
    |Allow Back|⬜|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Show Footer|✅|
    |Show Header|⬜|
    
    
    #### FaultMessage
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p>Task is unable to complete due to the following error:</p><p><br></p><p>{!$Flow.FaultMessage}</p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

