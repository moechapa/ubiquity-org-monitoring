# Proposal_Scheduled_Sync_Marketing_Proposals history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Proposal_Scheduled_Sync_Marketing_Proposals-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Scheduled</b>"]):::startClass
    click START "#general-information" "3878989521"
    
    loop_count_add_one[\"🟰 <em></em><br/>loop count add one"/]:::assignments
    click loop_count_add_one "#loop_count_add_one" "2239558947"
    
    reset_count[\"🟰 <em></em><br/>reset count"/]:::assignments
    click reset_count "#reset_count" "13977079"
    
    Was_one_found{"🔀 <em></em><br/>Was one found"}:::decisions
    click Was_one_found "#was_one_found" "1004925940"
    
    Grab_Unsynced_Marketing_Proposal[("🔍 <em></em><br/>Grab Unsynced Marketing Proposal")]:::recordLookups
    click Grab_Unsynced_Marketing_Proposal "#grab_unsynced_marketing_proposal" "928418807"
    
    Sync_It[("🛠️ <em></em><br/>Sync It")]:::recordUpdates
    click Sync_It "#sync_it" "1363907728"
    
    loop_count_add_one --> Pause_Updates
    reset_count --> Grab_Unsynced_Marketing_Proposal
    Was_one_found --> |"Prop Found"| Sync_It
    Was_one_found --> |"Default Outcome"| END_Was_one_found
    Grab_Unsynced_Marketing_Proposal --> Was_one_found
    Sync_It --> loop_count_add_one
    START -->  Grab_Unsynced_Marketing_Proposal
    END_Was_one_found(( END )):::endClass
    
    
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
    |Trigger Type| Scheduled|
    |Label|Proposal | Scheduled | Sync Marketing Proposals|
    |Status|Obsolete|
    |Description|new run, no other changes|
    |Environments|Default|
    |Interview Label|Proposal | Scheduled | Sync Marketing Proposals {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Grab_Unsynced_Marketing_Proposal](#grab_unsynced_marketing_proposal)|
    |Next Node|[Grab_Unsynced_Marketing_Proposal](#grab_unsynced_marketing_proposal)|
    
    
    #### Schedules
    
    |Frequency|Start Date|Start Time|
    |:-- |:--:|:--: |
    |Once|Aug 2, 2023|16:15|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |formulaDebug|DateTime|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |loopCount|Number|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |unsyncedProp|SObject|⬜|⬜|⬜|Proposal__c|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |nowMinus59Minutes|DateTime|{!$Flow.CurrentDateTime}-(59/60/24)|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### loop_count_add_one
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|loop count add one|
    |Connector|Pause_Updates|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |loopCount| Add|1|
    
    
    
    
    ### reset_count
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|reset count|
    |Connector|isGoTo: true<br/>targetReference: Grab_Unsynced_Marketing_Proposal<br/>|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |loopCount| Assign|numberValue: 0<br/>|
    
    
    
    
    ### Was_one_found
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Was one found|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Prop_Found (Prop Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Sync_It](#sync_it)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|unsyncedProp.Id| Is Null|⬜|
    
    
    
    
    ### Grab_Unsynced_Marketing_Proposal
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Proposal__c|
    |Label|Grab Unsynced Marketing Proposal|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|unsyncedProp|
    |Queried Fields|- Id<br/>- Queued__c<br/>- Force_Queue__c<br/>|
    |Sort Field|CreatedDate|
    |Sort Order|Asc|
    |Connector|[Was_one_found](#was_one_found)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Stage_Flag__c| Equal To|Marketing|
    |2|Principal_Opportunity_Id__c| Is Null|<!-- -->|
    |3|Queued__c| Equal To|⬜|
    |4|Force_Queue__c| Equal To|⬜|
    |5|Company_State__c| Is Null|<!-- -->|
    
    
    
    
    ### Sync_It
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Proposal__c|
    |Label|Sync It|
    |Connector|[loop_count_add_one](#loop_count_add_one)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|unsyncedProp.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Force_Queue__c|✅|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

