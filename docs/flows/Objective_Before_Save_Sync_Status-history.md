# Objective_Before_Save_Sync_Status history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Objective_Before_Save_Sync_Status-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record Before Save</b>"]):::startClass
    click START "#general-information" "4219290698"
    
    Check_missing_value{"🔀 <em></em><br/>Check missing value"}:::decisions
    click Check_missing_value "#check_missing_value" "1764839037"
    
    Update_Per[("🛠️ <em></em><br/>Update Per")]:::recordUpdates
    click Update_Per "#update_per" "4029698044"
    
    Update_Status[("🛠️ <em></em><br/>Update Status")]:::recordUpdates
    click Update_Status "#update_status" "4291637696"
    
    Check_missing_value --> |"Needs percentage correction"| Update_Per
    Check_missing_value --> |"Needs status correction"| Update_Status
    Check_missing_value --> |"Default Outcome"| END_Check_missing_value
    Update_Per --> END_Update_Per
    Update_Status --> END_Update_Status
    START -->  Check_missing_value
    END_Check_missing_value(( END )):::endClass
    END_Update_Per(( END )):::endClass
    END_Update_Status(( END )):::endClass
    
    
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
    |Object|Objective__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record Before Save|
    |Record Trigger Type| Create And Update|
    |Label|Objective | Before Save | Sync Status|
    |Status|Active|
    |Description|Syncs the objective's status with the manually entered completion % both ways|
    |Environments|Default|
    |Interview Label|Objective | Before Save | Sync Status {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Check_missing_value](#check_missing_value)|
    |Next Node|[Check_missing_value](#check_missing_value)|
    
    
    #### Filters (logic: **(1 AND 2) OR (3 AND 4)**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Status__c| Equal To|Completed|
    |2|Completion_per__c| Not Equal To|100|
    |3|Status__c| Not Equal To|Completed|
    |4|Completion_per__c| Equal To|100|
    
    
    ## Flow Nodes Details
    
    ### Check_missing_value
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check missing value|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Needs_percentage_correction (Needs percentage correction)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Per](#update_per)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Status__c| Equal To|Completed|
    |2|$Record.Completion_per__c| Not Equal To|100|
    
    
    
    
    #### Rule Needs_status_correction (Needs status correction)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Status](#update_status)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Completion_per__c| Equal To|100|
    |2|$Record.Status__c| Not Equal To|Completed|
    
    
    
    
    ### Update_Per
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Per|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Completion_per__c|100|
    
    
    
    
    ### Update_Status
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Status|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Status__c|Completed|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

