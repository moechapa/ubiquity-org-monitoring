# Plan_CST_Change history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Plan_CST_Change-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Plan__c</b></br>Type: <b>On All Changes</b>"]):::startClass
    click START "#general-information" "702115342"
    
    START --> myVariable_waitStartTimeAssignment
    myVariable_waitStartTimeAssignment[\"🟰 <em></em><br/>myVariable_waitStartTimeAssignment"/]:::assignments
    click myVariable_waitStartTimeAssignment "#myvariable_waitstarttimeassignment" "2185638770"
    
    isChangedDecision2_myRule_1_CST_Client_Support_Team_c{"🔀 <em></em><br/>isChangedDecision2_myRule_1_CST_Client_Support_Team_c"}:::decisions
    click isChangedDecision2_myRule_1_CST_Client_Support_Team_c "#ischangeddecision2_myrule_1_cst_client_support_team_c" "978896096"
    
    myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
    click myDecision "#mydecision" "1670632144"
    
    myRule_1_A1[("🛠️ <em></em><br/>Update CST on Account")]:::recordUpdates
    click myRule_1_A1 "#myrule_1_a1" "1864157168"
    
    myVariable_waitStartTimeAssignment --> isChangedDecision2_myRule_1_CST_Client_Support_Team_c
    isChangedDecision2_myRule_1_CST_Client_Support_Team_c --> |"isChangedRule_2_myRule_1_CST_Client_Support_Team_c"| myDecision
    isChangedDecision2_myRule_1_CST_Client_Support_Team_c --> |"default"| myDecision
    myDecision --> |"CST Change"| myRule_1_A1
    myDecision --> |"default"| END_myDecision
    myRule_1_A1 --> END_myRule_1_A1
    END_myDecision(( END )):::endClass
    END_myRule_1_A1(( END )):::endClass
    
    
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
    |Process Type| Workflow|
    |Label|Plan | CST Change|
    |Status|Active|
    |Description|Updates account when CST changes on the plan|
    |Interview Label|Plan_CST_Change-1_InterviewLabel|
    |Start Element Reference|[myVariable_waitStartTimeAssignment](#myvariable_waitstarttimeassignment)|
    | Object Type (PM)|Plan__c|
    | Object Variable (PM)|myVariable_current|
    | Old Object Variable (PM)|myVariable_old|
    | Trigger Type (PM)|onAllChanges|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |myVariable_current|SObject|⬜|✅|✅|Plan__c|<!-- -->|
    |myVariable_old|SObject|⬜|✅|⬜|Plan__c|<!-- -->|
    |myVariable_waitStartTimeVariable|DateTime|⬜|⬜|⬜|<!-- -->|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### myVariable_waitStartTimeAssignment
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|[myVariable_waitStartTimeAssignment](#myvariable_waitstarttimeassignment)|
    |Connector|[isChangedDecision2_myRule_1_CST_Client_Support_Team_c](#ischangeddecision2_myrule_1_cst_client_support_team_c)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |myVariable_waitStartTimeVariable| Assign|$Flow.CurrentDateTime|
    
    
    
    
    ### isChangedDecision2_myRule_1_CST_Client_Support_Team_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision2_myRule_1_CST_Client_Support_Team_c](#ischangeddecision2_myrule_1_cst_client_support_team_c)|
    |Default Connector|[myDecision](#mydecision)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_2_myRule_1_CST_Client_Support_Team_c (isChangedRule_2_myRule_1_CST_Client_Support_Team_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myDecision](#mydecision)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.CST_Client_Support_Team__c| Not Equal To|myVariable_current.CST_Client_Support_Team__c|
    
    
    
    
    ### myDecision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision](#mydecision)|
    |Default Connector Label|default|
    |Index (PM)|numberValue: 0<br/>|
    
    
    #### Rule myRule_1 (CST Change)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_A1](#myrule_1_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|isChangedRule_2_myRule_1_CST_Client_Support_Team_c| Equal To|✅|
    
    
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Account|
    |Label|Update CST on Account|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Plan__c].Account|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Account__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Client_Support_Teams__c|myVariable_current.CST_Client_Support_Team__c|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

