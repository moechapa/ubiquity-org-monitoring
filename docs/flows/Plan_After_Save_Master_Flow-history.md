# Plan_After_Save_Master_Flow history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Plan_After_Save_Master_Flow-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "1915543423"
    
    Check_if_AC_needs_update{"🔀 <em></em><br/>Check if AC needs update"}:::decisions
    click Check_if_AC_needs_update "#check_if_ac_needs_update" "634432422"
    
    Check_if_AP_needs_update{"🔀 <em></em><br/>Check if AP needs update"}:::decisions
    click Check_if_AP_needs_update "#check_if_ap_needs_update" "1894502631"
    
    Do_I_have_an_opp{"🔀 <em></em><br/>Do I have an opp"}:::decisions
    click Do_I_have_an_opp "#do_i_have_an_opp" "1316227807"
    
    Look_for_ACs[("🔍 <em></em><br/>Look for ACs")]:::recordLookups
    click Look_for_ACs "#look_for_acs" "850027724"
    
    Look_for_APs[("🔍 <em></em><br/>Look for APs")]:::recordLookups
    click Look_for_APs "#look_for_aps" "3807193857"
    
    Look_for_Transition[("🔍 <em></em><br/>Look for Transition")]:::recordLookups
    click Look_for_Transition "#look_for_transition" "3924750109"
    
    Update_Synced_ACs[("🛠️ <em></em><br/>Update Synced ACs")]:::recordUpdates
    click Update_Synced_ACs "#update_synced_acs" "3553234964"
    
    Update_Synced_APs[("🛠️ <em></em><br/>Update Synced APs")]:::recordUpdates
    click Update_Synced_APs "#update_synced_aps" "900146142"
    
    Sync_Junction_Records[["🔗 <em>Subflow</em><br/>Sync Junction Records"]]:::subflows
    click Sync_Junction_Records "#sync_junction_records" "853805725"
    
    Check_if_AC_needs_update --> |"AC needs update"| Update_Synced_ACs
    Check_if_AC_needs_update --> |"Default Outcome"| Check_if_AP_needs_update
    Check_if_AP_needs_update --> |"AP needs update"| Update_Synced_APs
    Check_if_AP_needs_update --> |"Default Outcome"| END_Check_if_AP_needs_update
    Do_I_have_an_opp --> |"Opp present"| Look_for_Transition
    Do_I_have_an_opp --> |"Default Outcome"| END_Do_I_have_an_opp
    Look_for_ACs --> Look_for_APs
    Look_for_APs --> Sync_Junction_Records
    Look_for_Transition --> Look_for_ACs
    Update_Synced_ACs --> Check_if_AP_needs_update
    Update_Synced_APs --> END_Update_Synced_APs
    START -->  Do_I_have_an_opp
    Sync_Junction_Records --> Check_if_AC_needs_update
    END_Check_if_AP_needs_update(( END )):::endClass
    END_Do_I_have_an_opp(( END )):::endClass
    END_Update_Synced_APs(( END )):::endClass
    
    
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
    |Object|Plan__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create And Update|
    |Label|Plan | After Save | Master Flow|
    |Status|Active|
    |Description|After save flow that always runs.<br/><br/>What it does:<br/>- Updates any and all associated contacts + associated partners with the plan, imp, opp, and transition Ids if applicable.  No overwrites.|
    |Environments|Default|
    |Interview Label|Plan | After Save | Master Flow {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Do_I_have_an_opp](#do_i_have_an_opp)|
    |Next Node|[Do_I_have_an_opp](#do_i_have_an_opp)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |transitionId|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Check_if_AC_needs_update
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check if AC needs update|
    |Default Connector|[Check_if_AP_needs_update](#check_if_ap_needs_update)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule AC_needs_update (AC needs update)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Synced_ACs](#update_synced_acs)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Sync_Junction_Records.acNeedingUpdate| Is Empty|⬜|
    
    
    
    
    ### Check_if_AP_needs_update
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check if AP needs update|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule AP_needs_update (AP needs update)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Synced_APs](#update_synced_aps)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Sync_Junction_Records.apNeedingUpdate| Is Empty|⬜|
    
    
    
    
    ### Do_I_have_an_opp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Do I have an opp|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Opp_present (Opp present)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Look_for_Transition](#look_for_transition)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Opportunity__c| Is Blank|⬜|
    
    
    
    
    ### Look_for_ACs
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Associated_Contact__c|
    |Label|Look for ACs|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Queried Fields|- Id<br/>- Opportunity__c<br/>- Plan__c<br/>- Transition__c<br/>- Implementation__c<br/>|
    |Store Output Automatically|✅|
    |Connector|[Look_for_APs](#look_for_aps)|
    
    
    #### Filters (logic: **(1 OR 2) AND (3 OR 4 OR (5 AND 6) OR (7 AND 8))**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Opportunity__c| Equal To|$Record.Opportunity__c|
    |2|Plan__c| Equal To|$Record.Id|
    |3|Opportunity__c| Is Null|<!-- -->|
    |4|Plan__c| Is Null|<!-- -->|
    |5|Transition__c| Is Null|<!-- -->|
    |6|Transition__c| Not Equal To|transitionId|
    |7|Implementation__c| Is Null|<!-- -->|
    |8|Implementation__c| Not Equal To|$Record.Implementation__c|
    
    
    
    
    ### Look_for_APs
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Associated_Partner__c|
    |Label|Look for APs|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Queried Fields|- Id<br/>- Implementation__c<br/>- Opportunity__c<br/>- Transition__c<br/>- Plan__c<br/>|
    |Store Output Automatically|✅|
    |Connector|[Sync_Junction_Records](#sync_junction_records)|
    
    
    #### Filters (logic: **(1 OR 2) AND (3 OR 4 OR (5 AND 6) OR (7 AND 8))**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Plan__c| Equal To|$Record.Id|
    |2|Opportunity__c| Equal To|$Record.Opportunity__c|
    |3|Plan__c| Is Null|<!-- -->|
    |4|Opportunity__c| Is Null|<!-- -->|
    |5|Transition__c| Is Null|<!-- -->|
    |6|Transition__c| Not Equal To|transitionId|
    |7|Implementation__c| Is Null|<!-- -->|
    |8|Implementation__c| Not Equal To|$Record.Implementation__c|
    
    
    
    
    ### Look_for_Transition
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Transition__c|
    |Label|Look for Transition|
    |Assign Null Values If No Records Found|⬜|
    |Output Assignments|assignToReference: transitionId<br/>field: Id<br/>|
    |Sort Field|CreatedDate|
    |Sort Order|Desc|
    |Connector|[Look_for_ACs](#look_for_acs)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Plan__c| Equal To|$Record.Id|
    |2|Status__c| Not Equal To|Saved|
    |3|Status__c| Not Equal To|Cancelled|
    
    
    
    
    ### Update_Synced_ACs
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Synced ACs|
    |Input Reference|Sync_Junction_Records.acNeedingUpdate|
    |Connector|[Check_if_AP_needs_update](#check_if_ap_needs_update)|
    
    
    ### Update_Synced_APs
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Synced APs|
    |Input Reference|Sync_Junction_Records.apNeedingUpdate|
    
    
    ### Sync_Junction_Records
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Subflow|
    |Label|Sync Junction Records|
    |Flow Name|Junction_Autolaunched_Sync_Imp_Plan_Opp_Trans_Ids|
    |Store Output Automatically|✅|
    |Connector|[Check_if_AC_needs_update](#check_if_ac_needs_update)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |<!-- -->|[Look_for_ACs](#look_for_acs)|
    |<!-- -->|[Look_for_APs](#look_for_aps)|
    |<!-- -->|$Record.Implementation__c|
    |<!-- -->|$Record.Opportunity__c|
    |<!-- -->|$Record.Id|
    |<!-- -->|transitionId|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

