# Project_Task_Completion history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Project_Task_Completion-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Screen Flow</b>"]):::startClass
    click START "#general-information" "1624439810"
    
    Add_Task_to_Collection[\"🟰 <em></em><br/>Add Task to Collection"/]:::assignments
    click Add_Task_to_Collection "#add_task_to_collection" "383513118"
    
    Assign_Completion_Date[\"🟰 <em></em><br/>Assign Completion Date"/]:::assignments
    click Assign_Completion_Date "#assign_completion_date" "3950655400"
    
    Assign_Record_to_Variable[\"🟰 <em></em><br/>Assign Record to Variable"/]:::assignments
    click Assign_Record_to_Variable "#assign_record_to_variable" "3529995476"
    
    Loop_through_Ids{{"🔁 <em></em><br/>Loop through Ids"}}:::loops
    click Loop_through_Ids "#loop_through_ids" "1231639405"
    
    Update_Records[("🛠️ <em></em><br/>Update Records")]:::recordUpdates
    click Update_Records "#update_records" "3349051739"
    
    Error(["💻 <em></em><br/>Error"]):::screens
    click Error "#error" "3078481698"
    
    Add_Task_to_Collection --> Loop_through_Ids
    Assign_Completion_Date --> Add_Task_to_Collection
    Assign_Record_to_Variable --> Assign_Completion_Date
    Loop_through_Ids --> |"For Each"|Assign_Record_to_Variable
    Loop_through_Ids ---> |"After Last"|Update_Records
    Update_Records --> END_Update_Records
    Update_Records -. Fault .->Error
    Error --> END_Error
    START -->  Loop_through_Ids
    END_Update_Records(( END )):::endClass
    END_Error(( END )):::endClass
    
    
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
    |Status|Obsolete|
    |Description|Marks selected tasks as Completed from the List View|
    |Interview Label|Project Task | Button | Complete Tasks {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Loop_through_Ids](#loop_through_ids)|
    |Next Node|[Loop_through_Ids](#loop_through_ids)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |completedTask|SObject|⬜|✅|✅|Project_Task__c|<!-- -->|
    |id|String|⬜|✅|✅|<!-- -->|<!-- -->|
    |ids|String|✅|✅|⬜|<!-- -->|<!-- -->|
    |recordId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    |reqActions|SObject|✅|✅|✅|Required_Action__c|<!-- -->|
    |updateIds|SObject|✅|✅|✅|Project_Task__c|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |Now|DateTime|NOW()|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Add_Task_to_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add Task to Collection|
    |Connector|[Loop_through_Ids](#loop_through_ids)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |updateIds| Add|completedTask|
    
    
    
    
    ### Assign_Completion_Date
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Completion Date|
    |Connector|[Add_Task_to_Collection](#add_task_to_collection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |completedTask.Actual_Completion_Date__c| Assign|Now|
    |completedTask.Status__c| Assign|Completed|
    
    
    
    
    ### Assign_Record_to_Variable
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Record to Variable|
    |Connector|[Assign_Completion_Date](#assign_completion_date)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |completedTask.Id| Assign|[Loop_through_Ids](#loop_through_ids)|
    
    
    
    
    ### Loop_through_Ids
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Loop through Ids|
    |Collection Reference|ids|
    |Iteration Order|Asc|
    |Next Value Connector|[Assign_Record_to_Variable](#assign_record_to_variable)|
    |No More Values Connector|[Update_Records](#update_records)|
    
    
    ### Update_Records
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Records|
    |Fault Connector|[Error](#error)|
    |Input Reference|updateIds|
    
    
    ### Error
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|[Error](#error)|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|✅|
    |Show Footer|✅|
    |Show Header|✅|
    
    
    #### ErrorText
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p>{!$Flow.FaultMessage}</p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

