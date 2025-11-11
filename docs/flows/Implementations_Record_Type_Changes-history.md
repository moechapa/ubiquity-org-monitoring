# Implementations_Record_Type_Changes history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Implementations_Record_Type_Changes-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Implementation__c</b></br>Type: <b>On All Changes</b>"]):::startClass
    click START "#general-information" "1341476566"
    
    START --> isChangedDecision2_myRule_1_Plan_Type_c
    isChangedDecision2_myRule_1_Plan_Type_c{"🔀 <em></em><br/>isChangedDecision2_myRule_1_Plan_Type_c"}:::decisions
    click isChangedDecision2_myRule_1_Plan_Type_c "#ischangeddecision2_myrule_1_plan_type_c" "2645924789"
    
    isChangedDecision3_myRule_1_Service_Option_c{"🔀 <em></em><br/>isChangedDecision3_myRule_1_Service_Option_c"}:::decisions
    click isChangedDecision3_myRule_1_Service_Option_c "#ischangeddecision3_myrule_1_service_option_c" "4254145336"
    
    myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
    click myDecision "#mydecision" "3696029655"
    
    myRule_1_A1[("🛠️ <em></em><br/>New Plan")]:::recordUpdates
    click myRule_1_A1 "#myrule_1_a1" "943415911"
    
    myRule_1_A2[("🛠️ <em></em><br/>Conversion Plan")]:::recordUpdates
    click myRule_1_A2 "#myrule_1_a2" "2352379030"
    
    myRule_1_A3[("🛠️ <em></em><br/>RKO New Plan")]:::recordUpdates
    click myRule_1_A3 "#myrule_1_a3" "640033798"
    
    myRule_1_A4[("🛠️ <em></em><br/>RKO Conversion Plan")]:::recordUpdates
    click myRule_1_A4 "#myrule_1_a4" "4171621686"
    
    myRule_1_A5[("🛠️ <em></em><br/>Single(k) Plus Plan")]:::recordUpdates
    click myRule_1_A5 "#myrule_1_a5" "3370791812"
    
    isChangedDecision2_myRule_1_Plan_Type_c --> |"isChangedRule_2_myRule_1_Plan_Type_c"| isChangedDecision3_myRule_1_Service_Option_c
    isChangedDecision2_myRule_1_Plan_Type_c --> |"default"| isChangedDecision3_myRule_1_Service_Option_c
    isChangedDecision3_myRule_1_Service_Option_c --> |"isChangedRule_3_myRule_1_Service_Option_c"| myDecision
    isChangedDecision3_myRule_1_Service_Option_c --> |"default"| myDecision
    myDecision --> |"Plan Type is Changed"| myRule_1_A1
    myDecision --> |"default"| END_myDecision
    myRule_1_A1 --> myRule_1_A2
    myRule_1_A2 --> myRule_1_A3
    myRule_1_A3 --> myRule_1_A4
    myRule_1_A4 --> myRule_1_A5
    myRule_1_A5 --> END_myRule_1_A5
    END_myDecision(( END )):::endClass
    END_myRule_1_A5(( END )):::endClass
    
    
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
    |Label|Implementations | Record Type Changes|
    |Status|Active|
    |Description|If Imp Changes Plan Type, Align Record Type Assignment|
    |Interview Label|Implementations_Record_Type_Changes-3_InterviewLabel|
    |Start Element Reference|[isChangedDecision2_myRule_1_Plan_Type_c](#ischangeddecision2_myrule_1_plan_type_c)|
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
    
    ### isChangedDecision2_myRule_1_Plan_Type_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision2_myRule_1_Plan_Type_c](#ischangeddecision2_myrule_1_plan_type_c)|
    |Default Connector|[isChangedDecision3_myRule_1_Service_Option_c](#ischangeddecision3_myrule_1_service_option_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_2_myRule_1_Plan_Type_c (isChangedRule_2_myRule_1_Plan_Type_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision3_myRule_1_Service_Option_c](#ischangeddecision3_myrule_1_service_option_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Plan_Type__c| Not Equal To|myVariable_current.Plan_Type__c|
    
    
    
    
    ### isChangedDecision3_myRule_1_Service_Option_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision3_myRule_1_Service_Option_c](#ischangeddecision3_myrule_1_service_option_c)|
    |Default Connector|[myDecision](#mydecision)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_3_myRule_1_Service_Option_c (isChangedRule_3_myRule_1_Service_Option_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myDecision](#mydecision)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Service_Option__c| Not Equal To|myVariable_current.Service_Option__c|
    
    
    
    
    ### myDecision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision](#mydecision)|
    |Default Connector Label|default|
    |Index (PM)|numberValue: 0<br/>|
    
    
    #### Rule myRule_1 (Plan Type is Changed)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_A1](#myrule_1_a1)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|isChangedRule_2_myRule_1_Plan_Type_c| Equal To|✅|
    |2|isChangedRule_3_myRule_1_Service_Option_c| Equal To|✅|
    
    
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Implementation__c|
    |Label|New Plan|
    |Evaluation Type (PM)|criteria|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Implementation__c]|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myRule_1_A2](#myrule_1_a2)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    |2|Plan_Type__c| Equal To|New Plan|
    |3|Service_Option__c| Not Equal To|RK Only|
    |4|Service_Option__c| Not Equal To|Single(k) Plus|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |RecordTypeId|01237000000AYcSAAW|
    
    
    
    
    ### myRule_1_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Implementation__c|
    |Label|Conversion Plan|
    |Evaluation Type (PM)|criteria|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Implementation__c]|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myRule_1_A3](#myrule_1_a3)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    |2|Plan_Type__c| Equal To|Conversion Plan|
    |3|Service_Option__c| Not Equal To|RK Only|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |RecordTypeId|01237000000AYcXAAW|
    
    
    
    
    ### myRule_1_A3
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Implementation__c|
    |Label|RKO New Plan|
    |Evaluation Type (PM)|criteria|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Implementation__c]|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myRule_1_A4](#myrule_1_a4)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    |2|Plan_Type__c| Equal To|New Plan|
    |3|Service_Option__c| Equal To|RK Only|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |RecordTypeId|0121G000000RlMCQA0|
    
    
    
    
    ### myRule_1_A4
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Implementation__c|
    |Label|RKO Conversion Plan|
    |Evaluation Type (PM)|criteria|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Implementation__c]|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myRule_1_A5](#myrule_1_a5)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    |2|Plan_Type__c| Equal To|Conversion Plan|
    |3|Service_Option__c| Equal To|RK Only|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |RecordTypeId|0121G000000RlZpQAK|
    
    
    
    
    ### myRule_1_A5
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Implementation__c|
    |Label|Single(k) Plus Plan|
    |Evaluation Type (PM)|criteria|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Implementation__c]|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    |2|Plan_Type__c| Equal To|New Plan|
    |3|Service_Option__c| Equal To|Single(k) Plus|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |RecordTypeId|0121G000000RlbvQAC|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

