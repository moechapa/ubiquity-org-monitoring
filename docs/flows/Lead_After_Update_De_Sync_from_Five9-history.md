# Lead_After_Update_De_Sync_from_Five9 history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Lead_After_Update_De_Sync_from_Five9-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record Before Save</b>"]):::startClass
    click START "#general-information" "2365384147"
    
    Status{"🔀 <em></em><br/>Status"}:::decisions
    click Status "#status" "2109483439"
    
    De_Sync_from_Five9[("🛠️ <em></em><br/>De-Sync from Five9")]:::recordUpdates
    click De_Sync_from_Five9 "#de_sync_from_five9" "4280997925"
    
    Sync_to_Five9[("🛠️ <em></em><br/>Sync to Five9")]:::recordUpdates
    click Sync_to_Five9 "#sync_to_five9" "1190316322"
    
    Status --> |"De-Sync"| De_Sync_from_Five9
    Status --> |"Default Outcome"| Sync_to_Five9
    De_Sync_from_Five9 --> END_De_Sync_from_Five9
    Sync_to_Five9 --> END_Sync_to_Five9
    START -->  Status
    END_De_Sync_from_Five9(( END )):::endClass
    END_Sync_to_Five9(( END )):::endClass
    
    
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
    |Object|Lead|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record Before Save|
    |Record Trigger Type| Update|
    |Label|Lead | After Update | Sync/De-Sync from Five9|
    |Status|Active|
    |Environments|Default|
    |Interview Label|Lead | After Update | De-Sync from Five9 {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Status](#status)|
    |Next Node|[Status](#status)|
    
    
    #### Filters (logic: **1 AND ((2 AND (3 OR 4 OR 5)) or 6)**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Phone| Is Null|<!-- -->|
    |2|[Status](#status)| Is Changed|✅|
    |3|[Status](#status)| Equal To|Qualified|
    |4|[Status](#status)| Equal To|Unable to Qualify|
    |5|[Status](#status)| Equal To|Unqualified|
    |6|Phone| Is Changed|✅|
    
    
    ## Flow Nodes Details
    
    ### Status
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[Status](#status)|
    |Default Connector|[Sync_to_Five9](#sync_to_five9)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule De_Sync (De-Sync)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[De_Sync_from_Five9](#de_sync_from_five9)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Status| Equal To|Qualified|
    |2|$Record.Status| Equal To|Unable to Qualify|
    |3|$Record.Status| Equal To|Unqualified|
    
    
    
    
    ### De_Sync_from_Five9
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|De-Sync from Five9|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |delete_from_f9list_id__c|a4AUo0000009oonMAA|
    
    
    
    
    ### Sync_to_Five9
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Sync to Five9|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Add_to_f9list_id__c|a4AUo0000009oonMAA|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

