# Implementation_Before_Trigger_Mirror_Stage_and_Step history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Implementation_Before_Trigger_Mirror_Stage_and_Step-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record Before Save</b>"]):::startClass
    click START "#general-information" "3451778910"
    
    Field_Changed{"🔀 <em></em><br/>Field Changed"}:::decisions
    click Field_Changed "#field_changed" "4251320273"
    
    Stage_Reached{"🔀 <em></em><br/>Stage Reached"}:::decisions
    click Stage_Reached "#stage_reached" "3398298141"
    
    Step_Reached{"🔀 <em></em><br/>Step Reached"}:::decisions
    click Step_Reached "#step_reached" "4076765485"
    
    Stage_Census[("🛠️ <em></em><br/>Stage = Census")]:::recordUpdates
    click Stage_Census "#stage_census" "2283186276"
    
    Stage_Funding[("🛠️ <em></em><br/>Stage = Funding")]:::recordUpdates
    click Stage_Funding "#stage_funding" "2501591510"
    
    Stage_Introduction[("🛠️ <em></em><br/>Stage = Introduction")]:::recordUpdates
    click Stage_Introduction "#stage_introduction" "1158020934"
    
    Step_Census[("🛠️ <em></em><br/>Step = Census")]:::recordUpdates
    click Step_Census "#step_census" "1608695775"
    
    Step_Funding[("🛠️ <em></em><br/>Step = Funding")]:::recordUpdates
    click Step_Funding "#step_funding" "1517001507"
    
    Step_Intro[("🛠️ <em></em><br/>Step = Intro")]:::recordUpdates
    click Step_Intro "#step_intro" "1076343965"
    
    Field_Changed --> |"Step Changed"| Step_Reached
    Field_Changed --> |"Stage Changed"| Stage_Reached
    Stage_Reached --> |"Intro"| Step_Intro
    Stage_Reached --> |"Census"| Step_Census
    Stage_Reached --> |"Funding"| Step_Funding
    Stage_Reached --> |"Default Outcome"| END_Stage_Reached
    Step_Reached --> |"Intro"| Stage_Introduction
    Step_Reached --> |"Census"| Stage_Census
    Step_Reached --> |"Funding"| Stage_Funding
    Step_Reached --> |"Default Outcome"| END_Step_Reached
    Stage_Census --> END_Stage_Census
    Stage_Funding --> END_Stage_Funding
    Stage_Introduction --> END_Stage_Introduction
    Step_Census --> END_Step_Census
    Step_Funding --> END_Step_Funding
    Step_Intro --> END_Step_Intro
    START -->  Field_Changed
    END_Stage_Reached(( END )):::endClass
    END_Step_Reached(( END )):::endClass
    END_Stage_Census(( END )):::endClass
    END_Stage_Funding(( END )):::endClass
    END_Stage_Introduction(( END )):::endClass
    END_Step_Census(( END )):::endClass
    END_Step_Funding(( END )):::endClass
    END_Step_Intro(( END )):::endClass
    
    
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
    |Trigger Type| Record Before Save|
    |Record Trigger Type| Create And Update|
    |Label|Implementation | Before Trigger | Mirror Stage and Step|
    |Status|Active|
    |Environments|Default|
    |Interview Label|Implementation | Before Trigger | Mirror Stage and Step {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Field_Changed](#field_changed)|
    |Next Node|[Field_Changed](#field_changed)|
    
    
    #### Filters (logic: **or**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Implementation_Stage__c| Is Changed|✅|
    |2|Implementation_Steps__c| Is Changed|✅|
    
    
    ## Flow Nodes Details
    
    ### Field_Changed
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Field Changed|
    |Default Connector|[Stage_Reached](#stage_reached)|
    |Default Connector Label|Stage Changed|
    
    
    #### Rule Step_Changed (Step Changed)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Step_Reached](#step_reached)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Implementation_Steps__c| Not Equal To|$Record__Prior.Implementation_Steps__c|
    |2|$Record__Prior.Implementation_Steps__c| Is Null|⬜|
    
    
    
    
    ### Stage_Reached
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Stage Reached|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Intro_0 (Intro)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Step_Intro](#step_intro)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Implementation_Steps__c| Not Equal To|Introductory Tasks|
    |2|$Record.Implementation_Stage__c| Equal To|Introduction|
    
    
    
    
    #### Rule Census_0 (Census)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Step_Census](#step_census)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Implementation_Steps__c| Not Equal To|Add Your Employees|
    |2|$Record.Implementation_Stage__c| Equal To|Census|
    
    
    
    
    #### Rule Funding_0 (Funding)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Step_Funding](#step_funding)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Implementation_Steps__c| Not Equal To|Funding & Review|
    |2|$Record.Implementation_Stage__c| Equal To|Funding|
    
    
    
    
    ### Step_Reached
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Step Reached|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Intro (Intro)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Stage_Introduction](#stage_introduction)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Implementation_Steps__c| Equal To|Introductory Tasks|
    |2|$Record.Implementation_Stage__c| Not Equal To|Introduction|
    
    
    
    
    #### Rule Census (Census)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Stage_Census](#stage_census)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Implementation_Steps__c| Equal To|Add Your Employees|
    |2|$Record.Implementation_Stage__c| Not Equal To|Census|
    
    
    
    
    #### Rule Funding (Funding)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Stage_Funding](#stage_funding)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Implementation_Steps__c| Equal To|Funding & Review|
    |2|$Record.Implementation_Stage__c| Not Equal To|Funding|
    
    
    
    
    ### Stage_Census
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Stage = Census|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Implementation_Stage__c|Census|
    
    
    
    
    ### Stage_Funding
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Stage = Funding|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Implementation_Stage__c|Funding|
    
    
    
    
    ### Stage_Introduction
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Stage = Introduction|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Implementation_Stage__c|Introduction|
    
    
    
    
    ### Step_Census
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Step = Census|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Implementation_Steps__c|Add Your Employees|
    
    
    
    
    ### Step_Funding
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Step = Funding|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Implementation_Steps__c|Funding & Review|
    
    
    
    
    ### Step_Intro
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Step = Intro|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Implementation_Steps__c|Introductory Tasks|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

