# Case_Before_Trigger_Reassign_Owner_to_CA_Queue history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Case_Before_Trigger_Reassign_Owner_to_CA_Queue-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record Before Save</b>"]):::startClass
    click START "#general-information" "2189579868"
    
    Which_Queue{"🔀 <em></em><br/>Which Queue?"}:::decisions
    click Which_Queue "#which_queue" "3534872721"
    
    Update_Owner_to_Queue[("🛠️ <em></em><br/>Update Owner to Queue")]:::recordUpdates
    click Update_Owner_to_Queue "#update_owner_to_queue" "1418380776"
    
    Update_to_Tier_1[("🛠️ <em></em><br/>Update to Tier 1")]:::recordUpdates
    click Update_to_Tier_1 "#update_to_tier_1" "87006857"
    
    Which_Queue --> |"CA"| Update_Owner_to_Queue
    Which_Queue --> |"Tier 1"| Update_to_Tier_1
    Which_Queue --> |"Default Outcome"| END_Which_Queue
    Update_Owner_to_Queue --> END_Update_Owner_to_Queue
    Update_to_Tier_1 --> END_Update_to_Tier_1
    START -->  Which_Queue
    END_Which_Queue(( END )):::endClass
    END_Update_Owner_to_Queue(( END )):::endClass
    END_Update_to_Tier_1(( END )):::endClass
    
    
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
    |Object|Case|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record Before Save|
    |Record Trigger Type| Create|
    |Label|Case | Before Trigger | Reassign Owner to Queue|
    |Status|Active|
    |Environments|Default|
    |Interview Label|Case | Before Trigger | Reassign Client F {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Which_Queue](#which_queue)|
    |Next Node|[Which_Queue](#which_queue)|
    
    
    #### Filters (logic: **or**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|RecordTypeId| Equal To|012Ho000000YDkIIAW|
    |2|Origin| Equal To|Help Center|
    
    
    ## Flow Nodes Details
    
    ### Which_Queue
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Which Queue?|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule CA (CA)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Owner_to_Queue](#update_owner_to_queue)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.RecordTypeId| Equal To|012Ho000000YDkIIAW|
    
    
    
    
    #### Rule Tier_1 (Tier 1)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_to_Tier_1](#update_to_tier_1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Origin| Equal To|Help Center|
    
    
    
    
    ### Update_Owner_to_Queue
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Owner to Queue|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |OwnerId|00GHo000001fRQQ|
    
    
    
    
    ### Update_to_Tier_1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update to Tier 1|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |OwnerId|00GHo000002SIjQ|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

