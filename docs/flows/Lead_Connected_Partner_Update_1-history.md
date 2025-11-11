# Lead_Connected_Partner_Update_1 history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Lead_Connected_Partner_Update_1-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record Before Save</b>"]):::startClass
    click START "#general-information" "3773491630"
    
    Set_null_Partner[\"🟰 <em></em><br/>Set null Partner"/]:::assignments
    click Set_null_Partner "#set_null_partner" "3130206445"
    
    Set_Sallus_Partner[\"🟰 <em></em><br/>Set Sallus Partner"/]:::assignments
    click Set_Sallus_Partner "#set_sallus_partner" "194665980"
    
    Set_Schwab_Partner[\"🟰 <em></em><br/>Set Schwab Partner"/]:::assignments
    click Set_Schwab_Partner "#set_schwab_partner" "1113901734"
    
    Set_Simply_Partner[\"🟰 <em></em><br/>Set Simply Partner"/]:::assignments
    click Set_Simply_Partner "#set_simply_partner" "4150781290"
    
    Connected_Partner_Split{"🔀 <em></em><br/>Connected Partner Split"}:::decisions
    click Connected_Partner_Split "#connected_partner_split" "1097771437"
    
    Set_null_Partner --> END_Set_null_Partner
    Set_Sallus_Partner --> END_Set_Sallus_Partner
    Set_Schwab_Partner --> END_Set_Schwab_Partner
    Set_Simply_Partner --> END_Set_Simply_Partner
    Connected_Partner_Split --> |"Schwab"| Set_Schwab_Partner
    Connected_Partner_Split --> |"Simply Retirement"| Set_Simply_Partner
    Connected_Partner_Split --> |"Sallus"| Set_Sallus_Partner
    Connected_Partner_Split --> |"Default Outcome"| Set_null_Partner
    START -->  Connected_Partner_Split
    END_Set_null_Partner(( END )):::endClass
    END_Set_Sallus_Partner(( END )):::endClass
    END_Set_Schwab_Partner(( END )):::endClass
    END_Set_Simply_Partner(( END )):::endClass
    
    
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
    |Label|Lead | Before Trigger | Connected Partner Update|
    |Status|Active|
    |Description|Migrated from the Lead | Connected Partner Update process using multiple criteria.<br/>Sets connected partner based on lead source.  Updated to simplify and fix Sallus issue (now looks at lead source, not LSD)|
    |Environments|Default|
    |Interview Label|Lead | Connected Partner Update_1 {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    |Connector|[Connected_Partner_Split](#connected_partner_split)|
    |Next Node|[Connected_Partner_Split](#connected_partner_split)|
    
    
    #### Filters (logic: **or**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|LeadSource| Equal To|Simply Retirement|
    |2|LeadSource| Equal To|Sallus|
    |3|LeadSource| Equal To|Schwab|
    |4|Connected_Partner__c| Is Null|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Set_null_Partner
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Set null Partner|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Connected_Partner__c| Assign|<!-- -->|
    
    
    
    
    ### Set_Sallus_Partner
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Set Sallus Partner|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Connected_Partner__c| Assign|Sallus|
    
    
    
    
    ### Set_Schwab_Partner
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Set Schwab Partner|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Connected_Partner__c| Assign|Schwab|
    
    
    
    
    ### Set_Simply_Partner
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Set Simply Partner|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Connected_Partner__c| Assign|Simply Retirement|
    
    
    
    
    ### Connected_Partner_Split
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Connected Partner Split|
    |Default Connector|[Set_null_Partner](#set_null_partner)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Schwab (Schwab)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Set_Schwab_Partner](#set_schwab_partner)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.LeadSource| Equal To|Schwab|
    
    
    
    
    #### Rule Simply_Retirement (Simply Retirement)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Set_Simply_Partner](#set_simply_partner)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.LeadSource| Equal To|Simply Retirement|
    
    
    
    
    #### Rule Sallus (Sallus)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Set_Sallus_Partner](#set_sallus_partner)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.LeadSource| Equal To|Sallus|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

