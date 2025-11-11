# Lead_Before_Trigger_Don_t_Sync_to_MC history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Lead_Before_Trigger_Don_t_Sync_to_MC-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record Before Save</b>"]):::startClass
    click START "#general-information" "3391998675"
    
    Sync_to_MC{"🔀 <em></em><br/>Sync to MC?"}:::decisions
    click Sync_to_MC "#sync_to_mc" "1386340973"
    
    Don_t_Sync_to_MC[("🛠️ <em></em><br/>Don't Sync to MC")]:::recordUpdates
    click Don_t_Sync_to_MC "#don_t_sync_to_mc" "611228762"
    
    Sync_to_MC1[("🛠️ <em></em><br/>Sync to MC")]:::recordUpdates
    click Sync_to_MC1 "#sync_to_mc1" "3663170155"
    
    Sync_to_MC --> |"Don't Sync"| Don_t_Sync_to_MC
    Sync_to_MC --> |"Sync"| Sync_to_MC1
    Don_t_Sync_to_MC --> END_Don_t_Sync_to_MC
    Sync_to_MC1 --> END_Sync_to_MC1
    START -->  Sync_to_MC
    END_Don_t_Sync_to_MC(( END )):::endClass
    END_Sync_to_MC1(( END )):::endClass
    
    
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
    |Record Trigger Type| Create And Update|
    |Label|Lead | Before Trigger | Don't Sync to MC|
    |Status|Active|
    |Description|If a lead is created without an email, don't sync to MC. If an email is entered later, sync to MC. If a lead converts, remove sync to MC|
    |Environments|Default|
    |Interview Label|Lead | Before Trigger | Don't Sync to MC {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Sync_to_MC](#sync_to_mc)|
    |Next Node|[Sync_to_MC](#sync_to_mc)|
    
    
    #### Filters (logic: **(1 AND 2) OR (3 AND 4 AND 5) OR (6 AND 7)**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Email| Is Null|<!-- -->|
    |2|MC_Removal__c| Equal To|⬜|
    |3|Email| Is Null|<!-- -->|
    |4|Email| Is Changed|✅|
    |5|MC_Removal__c| Equal To|✅|
    |6|IsConverted| Is Changed|✅|
    |7|IsConverted| Equal To|✅|
    
    
    ## Flow Nodes Details
    
    ### Sync_to_MC
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Sync to MC?|
    |Default Connector|[Sync_to_MC1](#sync_to_mc1)|
    |Default Connector Label|Sync|
    
    
    #### Rule Don_t_Sync (Don't Sync)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Don_t_Sync_to_MC](#don_t_sync_to_mc)|
    |Condition Logic|(1 AND 2) OR (3 AND 2)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Email| Is Null|✅|
    |2|$Record.MC_Removal__c| Equal To|⬜|
    |3|$Record.IsConverted| Equal To|✅|
    
    
    
    
    ### Don_t_Sync_to_MC
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Don't Sync to MC|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |MC_Removal__c|✅|
    
    
    
    
    ### Sync_to_MC1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Sync to MC|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |MC_Removal__c|⬜|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

