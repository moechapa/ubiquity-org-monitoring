# Support_Case_Sentiment_To_Plan history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Support_Case_Sentiment_To_Plan-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Case</b></br>Type: <b>On All Changes</b>"]):::startClass
    click START "#general-information" "1650948828"
    
    START --> isChangedDecision2_myRule_1_Status
    isChangedDecision11_myRule_10_Status{"🔀 <em></em><br/>isChangedDecision11_myRule_10_Status"}:::decisions
    click isChangedDecision11_myRule_10_Status "#ischangeddecision11_myrule_10_status" "2109924259"
    
    isChangedDecision14_myRule_13_Status{"🔀 <em></em><br/>isChangedDecision14_myRule_13_Status"}:::decisions
    click isChangedDecision14_myRule_13_Status "#ischangeddecision14_myrule_13_status" "1101459632"
    
    isChangedDecision2_myRule_1_Status{"🔀 <em></em><br/>isChangedDecision2_myRule_1_Status"}:::decisions
    click isChangedDecision2_myRule_1_Status "#ischangeddecision2_myrule_1_status" "2842082847"
    
    isChangedDecision5_myRule_4_Status{"🔀 <em></em><br/>isChangedDecision5_myRule_4_Status"}:::decisions
    click isChangedDecision5_myRule_4_Status "#ischangeddecision5_myrule_4_status" "1433197788"
    
    isChangedDecision8_myRule_7_Status{"🔀 <em></em><br/>isChangedDecision8_myRule_7_Status"}:::decisions
    click isChangedDecision8_myRule_7_Status "#ischangeddecision8_myrule_7_status" "4087193159"
    
    myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
    click myDecision "#mydecision" "1460648853"
    
    myDecision12{"🔀 <em></em><br/>myDecision12"}:::decisions
    click myDecision12 "#mydecision12" "2643756454"
    
    myDecision3{"🔀 <em></em><br/>myDecision3"}:::decisions
    click myDecision3 "#mydecision3" "3466309494"
    
    myDecision6{"🔀 <em></em><br/>myDecision6"}:::decisions
    click myDecision6 "#mydecision6" "3231521917"
    
    myDecision9{"🔀 <em></em><br/>myDecision9"}:::decisions
    click myDecision9 "#mydecision9" "1681495327"
    
    myRule_10_A1[("🛠️ <em></em><br/>Saver Sentiment")]:::recordUpdates
    click myRule_10_A1 "#myrule_10_a1" "4158142931"
    
    myRule_13_A1[("🛠️ <em></em><br/>S/T Sentiment")]:::recordUpdates
    click myRule_13_A1 "#myrule_13_a1" "3424184557"
    
    myRule_1_A1[("🛠️ <em></em><br/>Wipe Sentiment")]:::recordUpdates
    click myRule_1_A1 "#myrule_1_a1" "3635730667"
    
    myRule_4_A1[("🛠️ <em></em><br/>Saver Sentiment")]:::recordUpdates
    click myRule_4_A1 "#myrule_4_a1" "3035844685"
    
    myRule_7_A1[("🛠️ <em></em><br/>S/T Sentiment")]:::recordUpdates
    click myRule_7_A1 "#myrule_7_a1" "494228686"
    
    isChangedDecision11_myRule_10_Status --> |"isChangedRule_11_myRule_10_Status"| isChangedDecision14_myRule_13_Status
    isChangedDecision11_myRule_10_Status --> |"default"| isChangedDecision14_myRule_13_Status
    isChangedDecision14_myRule_13_Status --> |"isChangedRule_14_myRule_13_Status"| myDecision
    isChangedDecision14_myRule_13_Status --> |"default"| myDecision
    isChangedDecision2_myRule_1_Status --> |"isChangedRule_2_myRule_1_Status"| isChangedDecision5_myRule_4_Status
    isChangedDecision2_myRule_1_Status --> |"default"| isChangedDecision5_myRule_4_Status
    isChangedDecision5_myRule_4_Status --> |"isChangedRule_5_myRule_4_Status"| isChangedDecision8_myRule_7_Status
    isChangedDecision5_myRule_4_Status --> |"default"| isChangedDecision8_myRule_7_Status
    isChangedDecision8_myRule_7_Status --> |"isChangedRule_8_myRule_7_Status"| isChangedDecision11_myRule_10_Status
    isChangedDecision8_myRule_7_Status --> |"default"| isChangedDecision11_myRule_10_Status
    myDecision --> |"Reopened w Case Sentiment"| myRule_1_A1
    myDecision --> |"default"| myDecision3
    myDecision12 --> |"Imp Case w S/T Sentiment"| myRule_13_A1
    myDecision12 --> |"default"| END_myDecision12
    myDecision3 --> |"Case Closed Saver with Sentiment"| myRule_4_A1
    myDecision3 --> |"default"| myDecision6
    myDecision6 --> |"Case Closed with S/T Sentiment"| myRule_7_A1
    myDecision6 --> |"default"| myDecision9
    myDecision9 --> |"Imp Case w Saver Sentiment"| myRule_10_A1
    myDecision9 --> |"default"| myDecision12
    myRule_10_A1 --> END_myRule_10_A1
    myRule_13_A1 --> END_myRule_13_A1
    myRule_1_A1 --> myDecision3
    myRule_4_A1 --> END_myRule_4_A1
    myRule_7_A1 --> END_myRule_7_A1
    END_myDecision12(( END )):::endClass
    END_myRule_10_A1(( END )):::endClass
    END_myRule_13_A1(( END )):::endClass
    END_myRule_4_A1(( END )):::endClass
    END_myRule_7_A1(( END )):::endClass
    
    
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
    |Label|Support | Case Sentiment To Plan|
    |Status|Active|
    |Description|Copies Case Sentiment to Plan on Creation and Wipes Case Sentiment on Reopen|
    |Interview Label|Support_Case_Sentiment_To_Plan-3_InterviewLabel|
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
    
    
    ## Flow Nodes Details
    
    ### isChangedDecision11_myRule_10_Status
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision11_myRule_10_Status](#ischangeddecision11_myrule_10_status)|
    |Default Connector|[isChangedDecision14_myRule_13_Status](#ischangeddecision14_myrule_13_status)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_11_myRule_10_Status (isChangedRule_11_myRule_10_Status)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision14_myRule_13_Status](#ischangeddecision14_myrule_13_status)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Status| Not Equal To|myVariable_current.Status|
    
    
    
    
    ### isChangedDecision14_myRule_13_Status
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision14_myRule_13_Status](#ischangeddecision14_myrule_13_status)|
    |Default Connector|[myDecision](#mydecision)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_14_myRule_13_Status (isChangedRule_14_myRule_13_Status)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myDecision](#mydecision)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Status| Not Equal To|myVariable_current.Status|
    
    
    
    
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
    |Default Connector|[isChangedDecision8_myRule_7_Status](#ischangeddecision8_myrule_7_status)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_5_myRule_4_Status (isChangedRule_5_myRule_4_Status)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision8_myRule_7_Status](#ischangeddecision8_myrule_7_status)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Status| Not Equal To|myVariable_current.Status|
    
    
    
    
    ### isChangedDecision8_myRule_7_Status
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision8_myRule_7_Status](#ischangeddecision8_myrule_7_status)|
    |Default Connector|[isChangedDecision11_myRule_10_Status](#ischangeddecision11_myrule_10_status)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_8_myRule_7_Status (isChangedRule_8_myRule_7_Status)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision11_myRule_10_Status](#ischangeddecision11_myrule_10_status)|
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
    
    
    #### Rule myRule_1 (Reopened w Case Sentiment)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_A1](#myrule_1_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|isChangedRule_2_myRule_1_Status| Equal To|✅|
    |2|myVariable_current.Status| Not Equal To|Resolved|
    |3|myVariable_current.Case_Sentiment__c| Is Null|⬜|
    
    
    
    
    ### myDecision12
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision12](#mydecision12)|
    |Default Connector Label|default|
    |Index (PM)|4|
    
    
    #### Rule myRule_13 (Imp Case w S/T Sentiment)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_13_A1](#myrule_13_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|isChangedRule_14_myRule_13_Status| Equal To|✅|
    |2|myVariable_current.Status| Equal To|Resolved|
    |3|myVariable_current.ContactId| Is Null|⬜|
    |4|myVariable_current.Contact.Role__c| Not Equal To|Saver|
    |5|myVariable_current.Case_Sentiment__c| Is Null|⬜|
    |6|myVariable_current.Implementation__c| Is Null|⬜|
    
    
    
    
    ### myDecision3
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision3](#mydecision3)|
    |Default Connector|[myDecision6](#mydecision6)|
    |Default Connector Label|default|
    |Index (PM)|1|
    
    
    #### Rule myRule_4 (Case Closed Saver with Sentiment)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_4_A1](#myrule_4_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|isChangedRule_5_myRule_4_Status| Equal To|✅|
    |2|myVariable_current.Status| Equal To|Resolved|
    |3|myVariable_current.ContactId| Is Null|⬜|
    |4|myVariable_current.Contact.Role__c| Equal To|Saver|
    |5|myVariable_current.Case_Sentiment__c| Is Null|⬜|
    |6|myVariable_current.Implementation__c| Is Null|✅|
    
    
    
    
    ### myDecision6
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision6](#mydecision6)|
    |Default Connector|[myDecision9](#mydecision9)|
    |Default Connector Label|default|
    |Index (PM)|2|
    
    
    #### Rule myRule_7 (Case Closed with S/T Sentiment)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_7_A1](#myrule_7_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|isChangedRule_8_myRule_7_Status| Equal To|✅|
    |2|myVariable_current.Status| Equal To|Resolved|
    |3|myVariable_current.ContactId| Is Null|⬜|
    |4|myVariable_current.Contact.Role__c| Not Equal To|Saver|
    |5|myVariable_current.Case_Sentiment__c| Is Null|⬜|
    |6|myVariable_current.Implementation__c| Is Null|✅|
    
    
    
    
    ### myDecision9
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision9](#mydecision9)|
    |Default Connector|[myDecision12](#mydecision12)|
    |Default Connector Label|default|
    |Index (PM)|3|
    
    
    #### Rule myRule_10 (Imp Case w Saver Sentiment)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_10_A1](#myrule_10_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|isChangedRule_11_myRule_10_Status| Equal To|✅|
    |2|myVariable_current.Status| Equal To|Resolved|
    |3|myVariable_current.ContactId| Is Null|⬜|
    |4|myVariable_current.Contact.Role__c| Equal To|Saver|
    |5|myVariable_current.Case_Sentiment__c| Is Null|⬜|
    |6|myVariable_current.Implementation__c| Is Null|⬜|
    
    
    
    
    ### myRule_10_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Plan__c|
    |Label|Saver Sentiment|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Case].Implementation.Plan|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Implementation__r.Plan__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Most_Recent_Case_Sentiment_Saver__c|myVariable_current.Sentiment_Score__c|
    
    
    
    
    ### myRule_13_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Plan__c|
    |Label|S/T Sentiment|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Case].Implementation.Plan|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Implementation__r.Plan__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Most_Recent_Case_Sentiment_S_T__c|myVariable_current.Sentiment_Score__c|
    
    
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Case|
    |Label|Wipe Sentiment|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Case]|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myDecision3](#mydecision3)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Case_Sentiment__c|<!-- -->|
    
    
    
    
    ### myRule_4_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Plan__c|
    |Label|Saver Sentiment|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Case].Plan|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Plan__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Most_Recent_Case_Sentiment_Saver__c|myVariable_current.Sentiment_Score__c|
    
    
    
    
    ### myRule_7_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Plan__c|
    |Label|S/T Sentiment|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Case].Plan|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Plan__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Most_Recent_Case_Sentiment_S_T__c|myVariable_current.Sentiment_Score__c|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

