# Support_Case_Last_Activity_Task history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Support_Case_Last_Activity_Task-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Task</b></br>Type: <b>On All Changes</b>"]):::startClass
    click START "#general-information" "2901356590"
    
    START --> myDecision
    myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
    click myDecision "#mydecision" "4004661332"
    
    myDecision4{"🔀 <em></em><br/>myDecision4"}:::decisions
    click myDecision4 "#mydecision4" "851399409"
    
    myRule_1_pmetdec{"🔀 <em></em><br/>Previously Met Decision"}:::decisions
    click myRule_1_pmetdec "#myrule_1_pmetdec" "2231855983"
    
    myRule_5_pmetdec{"🔀 <em></em><br/>Previously Met Decision"}:::decisions
    click myRule_5_pmetdec "#myrule_5_pmetdec" "4262790613"
    
    myRule_1_A1[("🛠️ <em></em><br/>Case Inbound Activity")]:::recordUpdates
    click myRule_1_A1 "#myrule_1_a1" "1589027605"
    
    myRule_1_A2[("🛠️ <em></em><br/>Imp Inbound Activity")]:::recordUpdates
    click myRule_1_A2 "#myrule_1_a2" "3169637774"
    
    myRule_5_A1[("🛠️ <em></em><br/>Case Outbound Activity")]:::recordUpdates
    click myRule_5_A1 "#myrule_5_a1" "1596862359"
    
    myRule_5_A2[("🛠️ <em></em><br/>Imp Outbound Activity")]:::recordUpdates
    click myRule_5_A2 "#myrule_5_a2" "1708790286"
    
    myDecision --> |"Inbound Task Complete"| myRule_1_pmetdec
    myDecision --> |"default"| myDecision4
    myDecision4 --> |"Outbound Task Complete"| myRule_5_pmetdec
    myDecision4 --> |"default"| END_myDecision4
    myRule_1_pmetdec --> |"Previously Met - Null"| myRule_1_A1
    myRule_1_pmetdec --> |"Not Previously Met"| myRule_1_A1
    myRule_5_pmetdec --> |"Previously Met - Null"| myRule_5_A1
    myRule_5_pmetdec --> |"Not Previously Met"| myRule_5_A1
    myRule_1_A1 --> myRule_1_A2
    myRule_1_A2 --> END_myRule_1_A2
    myRule_5_A1 --> myRule_5_A2
    myRule_5_A2 --> END_myRule_5_A2
    END_myDecision4(( END )):::endClass
    END_myRule_1_A2(( END )):::endClass
    END_myRule_5_A2(( END )):::endClass
    
    
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
    |Label|Support | Case & Imp Last Activity Task|
    |Status|Active|
    |Description|When a task is closed on a case, stamp the Last Activity Date on the Case or Implementation|
    |Interview Label|Support_Case_Last_Activity_Task-3_InterviewLabel|
    |Start Element Reference|[myDecision](#mydecision)|
    | Object Type (PM)|Task|
    | Object Variable (PM)|myVariable_current|
    | Old Object Variable (PM)|myVariable_old|
    | Trigger Type (PM)|onAllChanges|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |myVariable_current|SObject|⬜|✅|✅|Task|<!-- -->|
    |myVariable_old|SObject|⬜|✅|⬜|Task|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |formula_2_myRule_1_A2_8365006087|Date|NOW()|<!-- -->|
    |formula_3_myRule_1_A1_5035235168|Date|NOW()|<!-- -->|
    |formula_6_myRule_5_A2_9173632481|Date|NOW()|<!-- -->|
    |formula_7_myRule_5_A1_1807918771|Date|NOW()|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### myDecision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision](#mydecision)|
    |Default Connector|[myDecision4](#mydecision4)|
    |Default Connector Label|default|
    |Index (PM)|numberValue: 0<br/>|
    
    
    #### Rule myRule_1 (Inbound Task Complete)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_pmetdec](#myrule_1_pmetdec)|
    |Condition Logic|1 AND (2 OR (3 AND 4))|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.IsClosed| Equal To|✅|
    |2|myVariable_current.Type| Equal To|Inbound Call|
    |3|myVariable_current.Type| Equal To|Call|
    |4|myVariable_current.CallType| Equal To|Inbound|
    
    
    
    
    ### myDecision4
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision4](#mydecision4)|
    |Default Connector Label|default|
    |Index (PM)|1|
    
    
    #### Rule myRule_5 (Outbound Task Complete)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_5_pmetdec](#myrule_5_pmetdec)|
    |Condition Logic|1 AND (2 OR (3 AND 4))|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.IsClosed| Equal To|✅|
    |2|myVariable_current.Type| Equal To|Outbound Call|
    |3|myVariable_current.Type| Equal To|Call|
    |4|myVariable_current.CallType| Equal To|Outbound|
    
    
    
    
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
    |Condition Logic|1 AND (2 OR (3 AND 4))|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old.IsClosed| Equal To|✅|
    |2|myVariable_old.Type| Equal To|Inbound Call|
    |3|myVariable_old.Type| Equal To|Call|
    |4|myVariable_old.CallType| Equal To|Inbound|
    
    
    
    
    ### myRule_5_pmetdec
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Previously Met Decision|
    |Default Connector|[myRule_5_A1](#myrule_5_a1)|
    |Default Connector Label|Not Previously Met|
    
    
    #### Rule myRule_5_pmetnullrule (Previously Met - Null)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_5_A1](#myrule_5_a1)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|✅|
    
    
    
    
    #### Rule myRule_5_pmetrule (Previously Met - Prev)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|1 AND (2 OR (3 AND 4))|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old.IsClosed| Equal To|✅|
    |2|myVariable_old.Type| Equal To|Outbound Call|
    |3|myVariable_old.Type| Equal To|Call|
    |4|myVariable_old.CallType| Equal To|Outbound|
    
    
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Case|
    |Label|Case Inbound Activity|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Task].Related To ID (Case)|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myRule_1_A2](#myrule_1_a2)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.WhatId|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Last_Inbound_Activity__c|formula_3_myRule_1_A1_5035235168|
    
    
    
    
    ### myRule_1_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Implementation__c|
    |Label|Imp Inbound Activity|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Task].Related To ID (Implementation__c)|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.WhatId|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Last_Case_Inbound_Activity__c|formula_2_myRule_1_A2_8365006087|
    
    
    
    
    ### myRule_5_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Case|
    |Label|Case Outbound Activity|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Task].Related To ID (Case)|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myRule_5_A2](#myrule_5_a2)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.WhatId|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Last_Outbound_Activity__c|formula_7_myRule_5_A1_1807918771|
    
    
    
    
    ### myRule_5_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Implementation__c|
    |Label|Imp Outbound Activity|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Task].Related To ID (Implementation__c)|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.WhatId|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Last_Case_Outbound_Activity__c|formula_6_myRule_5_A2_9173632481|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

