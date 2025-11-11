# Project_Tasks_After_Trigger_Delete_Duplicates history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Project_Tasks_After_Trigger_Delete_Duplicates-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "4045240707"
    
    Query_Validation_0{"🔀 <em></em><br/>Query Validation"}:::decisions
    click Query_Validation_0 "#query_validation_0" "1231816773"
    
    Delete_Dupes_0[("🗑️ <em></em><br/>Delete Dupes")]:::recordDeletes
    click Delete_Dupes_0 "#delete_dupes_0" "1689060000"
    
    Get_Dupes_0[("🔍 <em></em><br/>Get Dupes")]:::recordLookups
    click Get_Dupes_0 "#get_dupes_0" "2943562506"
    
    Query_Validation_0 --> |"Dupes Found"| Delete_Dupes_0
    Query_Validation_0 --> |"No Dupes"| END_Query_Validation_0
    Delete_Dupes_0 --> END_Delete_Dupes_0
    Get_Dupes_0 --> Query_Validation_0
    START --> |"Batch Size = 1"| Get_Dupes_0
    END_Query_Validation_0(( END )):::endClass
    END_Delete_Dupes_0(( END )):::endClass
    
    
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
    |Record Trigger Type| Create|
    |Label|Project Tasks | After Trigger | Delete Duplicates|
    |Status|Obsolete|
    |Interview Label|Project Tasks | After Trigger | Delete Duplicates {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    
    
    #### Scheduled Paths
    
    |Label|Name|Offset Number|Offset Unit|Record Field|Time Source|Connector|
    |:-- |:-- |:-- |:-- |:-- |:-- |:--  |
    |Batch Size = 1|Batch_Size_1|0|Minutes|<!-- -->|RecordTriggerEvent|[Get_Dupes_0](#get_dupes_0)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |deleteCollection|SObject|✅|✅|⬜|Project_Task__c|<!-- -->|
    |deleteTasks|SObject|✅|✅|⬜|Project_Task__c|<!-- -->|
    |dupeCount|Number|⬜|✅|⬜|<!-- -->|<!-- -->|
    |keepTask|SObject|⬜|✅|⬜|Project_Task__c|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Query_Validation_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Query Validation|
    |Default Connector Label|No Dupes|
    
    
    #### Rule Dupes_Found_0 (Dupes Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Delete_Dupes_0](#delete_dupes_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|deleteCollection| Is Null|⬜|
    
    
    
    
    ### Delete_Dupes_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Delete|
    |Label|Delete Dupes|
    |Input Reference|deleteCollection|
    
    
    ### Get_Dupes_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Project_Task__c|
    |Label|Get Dupes|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|deleteCollection|
    |Queried Fields|Id|
    |Connector|[Query_Validation_0](#query_validation_0)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Transition__c| Equal To|$Record.Transition__c|
    |2|Opportunity__c| Equal To|$Record.Opportunity__c|
    |3|Add_On_Product__c| Equal To|$Record.Add_On_Product__c|
    |4|Implementation__c| Equal To|$Record.Implementation__c|
    |5|Project_Deliverable__c| Equal To|$Record.Project_Deliverable__c|
    |6|Id| Not Equal To|$Record.Id|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

