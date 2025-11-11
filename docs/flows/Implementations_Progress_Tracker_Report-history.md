# Implementations_Progress_Tracker_Report history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Implementations_Progress_Tracker_Report-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Scheduled</b>"]):::startClass
    click START "#general-information" "3346135830"
    
    Progress_Tracker_Stages{"🔀 <em></em><br/>Progress Tracker Stages"}:::decisions
    click Progress_Tracker_Stages "#progress_tracker_stages" "3814354627"
    
    Imp_to_At_Risk[("🛠️ <em></em><br/>Imp to At Risk")]:::recordUpdates
    click Imp_to_At_Risk "#imp_to_at_risk" "1080005765"
    
    Imp_To_Behind[("🛠️ <em></em><br/>Imp To Behind")]:::recordUpdates
    click Imp_To_Behind "#imp_to_behind" "2774930038"
    
    Imp_To_On_Track[("🛠️ <em></em><br/>Imp To On Track")]:::recordUpdates
    click Imp_To_On_Track "#imp_to_on_track" "3615084728"
    
    Progress_Tracker_Stages --> |"On Track"| Imp_To_On_Track
    Progress_Tracker_Stages --> |"At Risk"| Imp_to_At_Risk
    Progress_Tracker_Stages --> |"Behind"| Imp_To_Behind
    Progress_Tracker_Stages --> |"Default Outcome"| END_Progress_Tracker_Stages
    Imp_to_At_Risk --> END_Imp_to_At_Risk
    Imp_To_Behind --> END_Imp_To_Behind
    Imp_To_On_Track --> END_Imp_To_On_Track
    START -->  Progress_Tracker_Stages
    END_Progress_Tracker_Stages(( END )):::endClass
    END_Imp_to_At_Risk(( END )):::endClass
    END_Imp_To_Behind(( END )):::endClass
    END_Imp_To_On_Track(( END )):::endClass
    
    
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
    |Object|Implementation__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Scheduled|
    |Label|Implementation | Scheduled | Progress Tracker Report|
    |Status|Active|
    |Description|Modified to only update the triggering/runtime record<br/><br/>Updates Progress Tracker Report fields when they don't match the Progress Tracker Calc Field|
    |Environments|Default|
    |Interview Label|Implementations | Progress Tracker Report {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Progress_Tracker_Stages](#progress_tracker_stages)|
    |Next Node|[Progress_Tracker_Stages](#progress_tracker_stages)|
    
    
    #### Schedules
    
    |Frequency|Start Date|Start Time|
    |:-- |:--:|:--: |
    |Daily|Sep 25, 2024|00:30|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Implementation_Status__c| Contains|In Progress|
    |2|Plan_Type__c| Equal To|New Plan|
    
    
    ## Flow Nodes Details
    
    ### Progress_Tracker_Stages
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Progress Tracker Stages|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule On_Track (On Track)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Imp_To_On_Track](#imp_to_on_track)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Progress_Tracker_Calc__c| Contains|On Track|
    |2|$Record.Progress_Tracker_Report__c| Not Equal To|On Track|
    
    
    
    
    #### Rule At_Risk (At Risk)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Imp_to_At_Risk](#imp_to_at_risk)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Progress_Tracker_Calc__c| Contains|At Risk|
    |2|$Record.Progress_Tracker_Report__c| Not Equal To|At Risk|
    
    
    
    
    #### Rule Behind (Behind)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Imp_To_Behind](#imp_to_behind)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Progress_Tracker_Calc__c| Contains|Behind|
    |2|$Record.Progress_Tracker_Report__c| Not Equal To|Behind|
    
    
    
    
    ### Imp_to_At_Risk
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Imp to At Risk|
    |Description|Imp Progress Tracker set to At Risk|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Progress_Tracker_Report__c|At Risk|
    
    
    
    
    ### Imp_To_Behind
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Imp To Behind|
    |Description|Imp Progress Tracker set to Behind|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Progress_Tracker_Report__c|Behind|
    
    
    
    
    ### Imp_To_On_Track
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Imp To On Track|
    |Description|Imp Progress Tracker set to On Track|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Progress_Tracker_Report__c|On Track|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

