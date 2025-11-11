# Implementations_Paradigm_URLs_to_Plan history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Implementations_Paradigm_URLs_to_Plan-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Implementation__c</b></br>Type: <b>On All Changes</b>"]):::startClass
    click START "#general-information" "2403150314"
    
    START --> isChangedDecision2_myRule_1_Paradigm_Company_ID_c
    isChangedDecision2_myRule_1_Paradigm_Company_ID_c{"🔀 <em></em><br/>isChangedDecision2_myRule_1_Paradigm_Company_ID_c"}:::decisions
    click isChangedDecision2_myRule_1_Paradigm_Company_ID_c "#ischangeddecision2_myrule_1_paradigm_company_id_c" "2215857395"
    
    isChangedDecision3_myRule_1_Paradigm_Plan_ID_c{"🔀 <em></em><br/>isChangedDecision3_myRule_1_Paradigm_Plan_ID_c"}:::decisions
    click isChangedDecision3_myRule_1_Paradigm_Plan_ID_c "#ischangeddecision3_myrule_1_paradigm_plan_id_c" "2935447768"
    
    myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
    click myDecision "#mydecision" "3400977984"
    
    myRule_1_A1[("🛠️ <em></em><br/>SF ID URL Update")]:::recordUpdates
    click myRule_1_A1 "#myrule_1_a1" "327463532"
    
    isChangedDecision2_myRule_1_Paradigm_Company_ID_c --> |"isChangedRule_2_myRule_1_Paradigm_Company_ID_c"| isChangedDecision3_myRule_1_Paradigm_Plan_ID_c
    isChangedDecision2_myRule_1_Paradigm_Company_ID_c --> |"default"| isChangedDecision3_myRule_1_Paradigm_Plan_ID_c
    isChangedDecision3_myRule_1_Paradigm_Plan_ID_c --> |"isChangedRule_3_myRule_1_Paradigm_Plan_ID_c"| myDecision
    isChangedDecision3_myRule_1_Paradigm_Plan_ID_c --> |"default"| myDecision
    myDecision --> |"Paradigm ID URL Updates"| myRule_1_A1
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
    |Label|Implementations | Paradigm URLs to Plan|
    |Status|Active|
    |Description|Pushes Paradigm URL Links from Implementation to Plan|
    |Interview Label|Implementations_Paradigm_URLs_to_Plan-1_InterviewLabel|
    |Start Element Reference|[isChangedDecision2_myRule_1_Paradigm_Company_ID_c](#ischangeddecision2_myrule_1_paradigm_company_id_c)|
    | Object Type (PM)|Implementation__c|
    | Object Variable (PM)|myVariable_current|
    | Old Object Variable (PM)|myVariable_old|
    | Trigger Type (PM)|onAllChanges|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |myVariable_current|SObject|⬜|✅|✅|Implementation__c|<!-- -->|
    |myVariable_old|SObject|⬜|✅|⬜|Implementation__c|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### isChangedDecision2_myRule_1_Paradigm_Company_ID_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision2_myRule_1_Paradigm_Company_ID_c](#ischangeddecision2_myrule_1_paradigm_company_id_c)|
    |Default Connector|[isChangedDecision3_myRule_1_Paradigm_Plan_ID_c](#ischangeddecision3_myrule_1_paradigm_plan_id_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_2_myRule_1_Paradigm_Company_ID_c (isChangedRule_2_myRule_1_Paradigm_Company_ID_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision3_myRule_1_Paradigm_Plan_ID_c](#ischangeddecision3_myrule_1_paradigm_plan_id_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Paradigm_Company_ID__c| Not Equal To|myVariable_current.Paradigm_Company_ID__c|
    
    
    
    
    ### isChangedDecision3_myRule_1_Paradigm_Plan_ID_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision3_myRule_1_Paradigm_Plan_ID_c](#ischangeddecision3_myrule_1_paradigm_plan_id_c)|
    |Default Connector|[myDecision](#mydecision)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_3_myRule_1_Paradigm_Plan_ID_c (isChangedRule_3_myRule_1_Paradigm_Plan_ID_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myDecision](#mydecision)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Paradigm_Plan_ID__c| Not Equal To|myVariable_current.Paradigm_Plan_ID__c|
    
    
    
    
    ### myDecision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision](#mydecision)|
    |Default Connector Label|default|
    |Index (PM)|numberValue: 0<br/>|
    
    
    #### Rule myRule_1 (Paradigm ID URL Updates)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_A1](#myrule_1_a1)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|isChangedRule_2_myRule_1_Paradigm_Company_ID_c| Equal To|✅|
    |2|isChangedRule_3_myRule_1_Paradigm_Plan_ID_c| Equal To|✅|
    
    
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Plan__c|
    |Label|SF ID URL Update|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Implementation__c].Plan|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Plan__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Paradigm_Company_Link__c|myVariable_current.Paradigm_Company_Link__c|
    |Paradigm_Plan_Link__c|myVariable_current.Paradigm_Plan_Link__c|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

