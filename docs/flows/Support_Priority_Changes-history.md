# Support_Priority_Changes history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Support_Priority_Changes-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Case</b></br>Type: <b>On All Changes</b>"]):::startClass
    click START "#general-information" "2869834909"
    
    START --> isChangedDecision2_myRule_1_Status
    isChangedDecision2_myRule_1_Status{"🔀 <em></em><br/>isChangedDecision2_myRule_1_Status"}:::decisions
    click isChangedDecision2_myRule_1_Status "#ischangeddecision2_myrule_1_status" "2842082847"
    
    isChangedDecision5_myRule_4_Status{"🔀 <em></em><br/>isChangedDecision5_myRule_4_Status"}:::decisions
    click isChangedDecision5_myRule_4_Status "#ischangeddecision5_myrule_4_status" "1926885748"
    
    myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
    click myDecision "#mydecision" "3101890058"
    
    myDecision10{"🔀 <em></em><br/>myDecision10"}:::decisions
    click myDecision10 "#mydecision10" "567988497"
    
    myDecision3{"🔀 <em></em><br/>myDecision3"}:::decisions
    click myDecision3 "#mydecision3" "1206714993"
    
    myDecision6{"🔀 <em></em><br/>myDecision6"}:::decisions
    click myDecision6 "#mydecision6" "531294309"
    
    myDecision8{"🔀 <em></em><br/>myDecision8"}:::decisions
    click myDecision8 "#mydecision8" "1356541859"
    
    myRule_7_pmetdec{"🔀 <em></em><br/>Previously Met Decision"}:::decisions
    click myRule_7_pmetdec "#myrule_7_pmetdec" "147979789"
    
    myRule_11_A1[("🛠️ <em></em><br/>Priority Medium")]:::recordUpdates
    click myRule_11_A1 "#myrule_11_a1" "1992048629"
    
    myRule_1_A1[("🛠️ <em></em><br/>Critical Priority")]:::recordUpdates
    click myRule_1_A1 "#myrule_1_a1" "3057448645"
    
    myRule_4_A1[("🛠️ <em></em><br/>High Priority")]:::recordUpdates
    click myRule_4_A1 "#myrule_4_a1" "38821281"
    
    myRule_7_A1[("🛠️ <em></em><br/>High Priority")]:::recordUpdates
    click myRule_7_A1 "#myrule_7_a1" "1504926666"
    
    myRule_9_A1[("🛠️ <em></em><br/>Priority Medium")]:::recordUpdates
    click myRule_9_A1 "#myrule_9_a1" "3130551014"
    
    isChangedDecision2_myRule_1_Status --> |"isChangedRule_2_myRule_1_Status"| isChangedDecision5_myRule_4_Status
    isChangedDecision2_myRule_1_Status --> |"default"| isChangedDecision5_myRule_4_Status
    isChangedDecision5_myRule_4_Status --> |"isChangedRule_5_myRule_4_Status"| myDecision
    isChangedDecision5_myRule_4_Status --> |"default"| myDecision
    myDecision --> |"Missing Info"| myRule_1_A1
    myDecision --> |"default"| myDecision3
    myDecision10 --> |"Reset Child Case Missing Info"| myRule_11_A1
    myDecision10 --> |"default"| END_myDecision10
    myDecision3 --> |"Response Received"| myRule_4_A1
    myDecision3 --> |"default"| myDecision6
    myDecision6 --> |"Schwab Cases"| myRule_7_pmetdec
    myDecision6 --> |"default"| myDecision8
    myDecision8 --> |"Reset Response Recieved"| myRule_9_A1
    myDecision8 --> |"default"| myDecision10
    myRule_7_pmetdec --> |"Previously Met - Null"| myRule_7_A1
    myRule_7_pmetdec --> |"Not Previously Met"| myRule_7_A1
    myRule_11_A1 --> END_myRule_11_A1
    myRule_1_A1 --> END_myRule_1_A1
    myRule_4_A1 --> END_myRule_4_A1
    myRule_7_A1 --> END_myRule_7_A1
    myRule_9_A1 --> END_myRule_9_A1
    END_myDecision10(( END )):::endClass
    END_myRule_11_A1(( END )):::endClass
    END_myRule_1_A1(( END )):::endClass
    END_myRule_4_A1(( END )):::endClass
    END_myRule_7_A1(( END )):::endClass
    END_myRule_9_A1(( END )):::endClass
    
    
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
    |Label|Support | Priority Changes|
    |Status|Active|
    |Description|Makes priority changes to certain cases that meet criteria ( i.e. sets all Schwab cases to High Priority)|
    |Interview Label|Support_Priority_Changes-5_InterviewLabel|
    |Start Element Reference|[isChangedDecision2_myRule_1_Status](#ischangeddecision2_myrule_1_status)|
    | Object Type (PM)|Case|
    | Object Variable (PM)|myVariable_current|
    | Old Object Variable (PM)|myVariable_old|
    | Trigger Type (PM)|onAllChanges|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |myVariable_current|SObject|⬜|✅|✅|Case|<!-- -->|
    |myVariable_old|SObject|⬜|✅|⬜|Case|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |formula_myRule_11|Boolean|AND(<br/>ISPICKVAL(PRIORVALUE({!myVariable_current.Status}),"Child Case Missing Info"),ISPICKVAL({!myVariable_current.Priority}, "Critical"), ISCHANGED({!myVariable_current.Status}))|<!-- -->|
    |formula_myRule_9|Boolean|AND(<br/>ISPICKVAL(PRIORVALUE({!myVariable_current.Status}),"Response Received"),ISPICKVAL({!myVariable_current.Priority}, "High"), ISCHANGED({!myVariable_current.Status}))|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### isChangedDecision2_myRule_1_Status
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision2_myRule_1_Status](#ischangeddecision2_myrule_1_status)|
    |Default Connector|[isChangedDecision5_myRule_4_Status](#ischangeddecision5_myrule_4_status)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_2_myRule_1_Status (isChangedRule_2_myRule_1_Status)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision5_myRule_4_Status](#ischangeddecision5_myrule_4_status)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Status| Not Equal To|myVariable_current.Status|
    
    
    
    
    ### isChangedDecision5_myRule_4_Status
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision5_myRule_4_Status](#ischangeddecision5_myrule_4_status)|
    |Default Connector|[myDecision](#mydecision)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_5_myRule_4_Status (isChangedRule_5_myRule_4_Status)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myDecision](#mydecision)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Status| Not Equal To|myVariable_current.Status|
    
    
    
    
    ### myDecision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision](#mydecision)|
    |Default Connector|[myDecision3](#mydecision3)|
    |Default Connector Label|default|
    |Index (PM)|numberValue: 0<br/>|
    
    
    #### Rule myRule_1 (Missing Info)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_A1](#myrule_1_a1)|
    |Condition Logic|1 AND 2 AND ( 3 OR 4 OR 5)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|isChangedRule_2_myRule_1_Status| Equal To|✅|
    |2|myVariable_current.Status| Equal To|Child Case Missing Info|
    |3|myVariable_current.Priority| Equal To|Low|
    |4|myVariable_current.Priority| Equal To|Medium|
    |5|myVariable_current.Priority| Equal To|High|
    
    
    
    
    ### myDecision10
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision10](#mydecision10)|
    |Default Connector Label|default|
    |Index (PM)|4|
    
    
    #### Rule myRule_11 (Reset Child Case Missing Info)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_11_A1](#myrule_11_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|formula_myRule_11| Equal To|✅|
    
    
    
    
    ### myDecision3
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision3](#mydecision3)|
    |Default Connector|[myDecision6](#mydecision6)|
    |Default Connector Label|default|
    |Index (PM)|1|
    
    
    #### Rule myRule_4 (Response Received)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_4_A1](#myrule_4_a1)|
    |Condition Logic|1 AND 2 AND (3 OR 4)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Status| Equal To|Response Received|
    |2|isChangedRule_5_myRule_4_Status| Equal To|✅|
    |3|myVariable_current.Priority| Equal To|Low|
    |4|myVariable_current.Priority| Equal To|Medium|
    
    
    
    
    ### myDecision6
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision6](#mydecision6)|
    |Default Connector|[myDecision8](#mydecision8)|
    |Default Connector Label|default|
    |Index (PM)|2|
    
    
    #### Rule myRule_7 (Schwab Cases)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_7_pmetdec](#myrule_7_pmetdec)|
    |Condition Logic|((3 AND 5 AND 1) OR (4 AND 6 AND 2)) AND (7 OR 8)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Account.Custodian__c| Equal To|Schwab Trust|
    |2|myVariable_current.Plan__r.Custodian__c| Equal To|Schwab & Co., Inc.|
    |3|myVariable_current.AccountId| Is Null|⬜|
    |4|myVariable_current.Plan__c| Is Null|⬜|
    |5|myVariable_current.Account.Custodian__c| Is Null|⬜|
    |6|myVariable_current.Plan__r.Custodian__c| Is Null|⬜|
    |7|myVariable_current.Priority| Equal To|Low|
    |8|myVariable_current.Priority| Equal To|Medium|
    
    
    
    
    ### myDecision8
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision8](#mydecision8)|
    |Default Connector|[myDecision10](#mydecision10)|
    |Default Connector Label|default|
    |Index (PM)|3|
    
    
    #### Rule myRule_9 (Reset Response Recieved)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_9_A1](#myrule_9_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|formula_myRule_9| Equal To|✅|
    
    
    
    
    ### myRule_7_pmetdec
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Previously Met Decision|
    |Default Connector|[myRule_7_A1](#myrule_7_a1)|
    |Default Connector Label|Not Previously Met|
    
    
    #### Rule myRule_7_pmetnullrule (Previously Met - Null)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_7_A1](#myrule_7_a1)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|✅|
    
    
    
    
    #### Rule myRule_7_pmetrule (Previously Met - Prev)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|((3 AND 5 AND 1) OR (4 AND 6 AND 2)) AND (7 OR 8)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old.Account.Custodian__c| Equal To|Schwab Trust|
    |2|myVariable_old.Plan__r.Custodian__c| Equal To|Schwab & Co., Inc.|
    |3|myVariable_old.AccountId| Is Null|⬜|
    |4|myVariable_old.Plan__c| Is Null|⬜|
    |5|myVariable_old.Account.Custodian__c| Is Null|⬜|
    |6|myVariable_old.Plan__r.Custodian__c| Is Null|⬜|
    |7|myVariable_old.Priority| Equal To|Low|
    |8|myVariable_old.Priority| Equal To|Medium|
    
    
    
    
    ### myRule_11_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Case|
    |Label|Priority Medium|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Case]|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Priority|Medium|
    
    
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Case|
    |Label|Critical Priority|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Case]|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Priority|Critical|
    
    
    
    
    ### myRule_4_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Case|
    |Label|High Priority|
    |Evaluation Type (PM)|criteria|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Case]|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    |2|OwnerId| Not Equal To|00500000006vmbuAAA|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Priority|High|
    
    
    
    
    ### myRule_7_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Case|
    |Label|High Priority|
    |Evaluation Type (PM)|criteria|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Case]|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    |2|OwnerId| Not Equal To|00500000006vmbuAAA|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Priority|High|
    
    
    
    
    ### myRule_9_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Case|
    |Label|Priority Medium|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Case]|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Priority|Medium|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

