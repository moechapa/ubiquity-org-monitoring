# Plan_Type_Updates history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Plan_Type_Updates-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Lead</b></br>Type: <b>On All Changes</b>"]):::startClass
    click START "#general-information" "2057966777"
    
    START --> myDecision
    myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
    click myDecision "#mydecision" "804566297"
    
    myDecision2{"🔀 <em></em><br/>myDecision2"}:::decisions
    click myDecision2 "#mydecision2" "107591464"
    
    myDecision4{"🔀 <em></em><br/>myDecision4"}:::decisions
    click myDecision4 "#mydecision4" "2569363114"
    
    myRule_1_pmetdec{"🔀 <em></em><br/>Previously Met Decision"}:::decisions
    click myRule_1_pmetdec "#myrule_1_pmetdec" "962447239"
    
    myRule_1_A1[("🛠️ <em></em><br/>Default # of Employees")]:::recordUpdates
    click myRule_1_A1 "#myrule_1_a1" "1252401816"
    
    myRule_3_A1[("🛠️ <em></em><br/>Update Plan Type")]:::recordUpdates
    click myRule_3_A1 "#myrule_3_a1" "1039968175"
    
    myRule_5_A1[("🛠️ <em></em><br/>Update Plan Type (New Plan)")]:::recordUpdates
    click myRule_5_A1 "#myrule_5_a1" "3406991466"
    
    myDecision --> |"Single(k) Plan"| myRule_1_pmetdec
    myDecision --> |"default"| myDecision2
    myDecision2 --> |"Conversion Plan"| myRule_3_A1
    myDecision2 --> |"default"| myDecision4
    myDecision4 --> |"New Plan"| myRule_5_A1
    myDecision4 --> |"default"| END_myDecision4
    myRule_1_pmetdec --> |"Previously Met - Null"| myRule_1_A1
    myRule_1_pmetdec --> |"Previously Met - Prev"| myDecision2
    myRule_1_pmetdec --> |"Not Previously Met"| myRule_1_A1
    myRule_1_A1 --> myDecision2
    myRule_3_A1 --> END_myRule_3_A1
    myRule_5_A1 --> END_myRule_5_A1
    END_myDecision4(( END )):::endClass
    END_myRule_3_A1(( END )):::endClass
    END_myRule_5_A1(( END )):::endClass
    
    
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
    |Label|Sales | Lead Plan Type Updates|
    |Status|Obsolete|
    |Description|Updates Plan Type on Leads to "Conversion Plan" or "New Plan"|
    |Interview Label|Plan_Type_Updates-4_InterviewLabel|
    |Start Element Reference|[myDecision](#mydecision)|
    | Object Type (PM)|Lead|
    | Object Variable (PM)|myVariable_current|
    | Old Object Variable (PM)|myVariable_old|
    | Trigger Type (PM)|onAllChanges|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |myVariable_current|SObject|⬜|✅|✅|Lead|<!-- -->|
    |myVariable_old|SObject|⬜|✅|⬜|Lead|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### myDecision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision](#mydecision)|
    |Default Connector|[myDecision2](#mydecision2)|
    |Default Connector Label|default|
    |Index (PM)|numberValue: 0<br/>|
    
    
    #### Rule myRule_1 (Single(k) Plan)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_pmetdec](#myrule_1_pmetdec)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Service_Option__c| Contains|Single(k)|
    
    
    
    
    ### myDecision2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision2](#mydecision2)|
    |Default Connector|[myDecision4](#mydecision4)|
    |Default Connector Label|default|
    |Index (PM)|1|
    
    
    #### Rule myRule_3 (Conversion Plan)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_3_A1](#myrule_3_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Product_Type__c| Equal To|401(k)|
    |2|myVariable_current.Current_Plan__c| Equal To|401(k)|
    |3|myVariable_current.Plan_Type__c| Is Null|✅|
    
    
    
    
    ### myDecision4
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision4](#mydecision4)|
    |Default Connector Label|default|
    |Index (PM)|2|
    
    
    #### Rule myRule_5 (New Plan)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_5_A1](#myrule_5_a1)|
    |Condition Logic|1 AND 8 AND (2 OR 3 OR 4 OR 5 OR 6 OR 7)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Product_Type__c| Equal To|401(k)|
    |2|myVariable_current.Current_Plan__c| Equal To|None|
    |3|myVariable_current.Current_Plan__c| Equal To|SIMPLE|
    |4|myVariable_current.Current_Plan__c| Equal To|SEP IRA|
    |5|myVariable_current.Current_Plan__c| Equal To|Defined Benefit|
    |6|myVariable_current.Current_Plan__c| Equal To|Money Purchase|
    |7|myVariable_current.Current_Plan__c| Equal To|KEOGH|
    |8|myVariable_current.Plan_Type__c| Is Null|✅|
    
    
    
    
    ### myRule_1_pmetdec
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Previously Met Decision|
    |Default Connector|[myRule_1_A1](#myrule_1_a1)|
    |Default Connector Label|Not Previously Met|
    
    
    #### Rule myRule_1_pmetnullrule (Previously Met - Null)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_A1](#myrule_1_a1)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|✅|
    
    
    
    
    #### Rule myRule_1_pmetrule (Previously Met - Prev)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myDecision2](#mydecision2)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old.Service_Option__c| Contains|Single(k)|
    
    
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Lead|
    |Label|Default # of Employees|
    |Evaluation Type (PM)|criteria|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Lead]|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myDecision2](#mydecision2)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    |2|NumberOfEmployees| Is Null|<!-- -->|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |NumberOfEmployees|1|
    
    
    
    
    ### myRule_3_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Lead|
    |Label|Update Plan Type|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Lead]|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Plan_Type__c|Conversion Plan|
    
    
    
    
    ### myRule_5_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Lead|
    |Label|Update Plan Type (New Plan)|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Lead]|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Plan_Type__c|New Plan|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

