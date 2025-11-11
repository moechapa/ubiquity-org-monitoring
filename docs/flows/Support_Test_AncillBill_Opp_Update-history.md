# Support_Test_AncillBill_Opp_Update history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Support_Test_AncillBill_Opp_Update-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Case</b></br>Type: <b>On All Changes</b>"]):::startClass
    click START "#general-information" "3712822395"
    
    START --> myVariable_waitStartTimeAssignment
    myVariable_waitStartTimeAssignment[\"🟰 <em></em><br/>myVariable_waitStartTimeAssignment"/]:::assignments
    click myVariable_waitStartTimeAssignment "#myvariable_waitstarttimeassignment" "3820923316"
    
    isChangedDecision2_myRule_1_Status{"🔀 <em></em><br/>isChangedDecision2_myRule_1_Status"}:::decisions
    click isChangedDecision2_myRule_1_Status "#ischangeddecision2_myrule_1_status" "2842082847"
    
    isChangedDecision5_myRule_4_Status{"🔀 <em></em><br/>isChangedDecision5_myRule_4_Status"}:::decisions
    click isChangedDecision5_myRule_4_Status "#ischangeddecision5_myrule_4_status" "1926885748"
    
    myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
    click myDecision "#mydecision" "3395576136"
    
    myDecision3{"🔀 <em></em><br/>myDecision3"}:::decisions
    click myDecision3 "#mydecision3" "612656594"
    
    myRule_1_A1[("🛠️ <em></em><br/>AncillBillHoulryOpp")]:::recordUpdates
    click myRule_1_A1 "#myrule_1_a1" "1490080007"
    
    myRule_1_A2[("🛠️ <em></em><br/>AncillBillFlatOpp")]:::recordUpdates
    click myRule_1_A2 "#myrule_1_a2" "2633219824"
    
    myRule_4_A1[("🛠️ <em></em><br/>AncillBillHourlyOpp ClosedWon")]:::recordUpdates
    click myRule_4_A1 "#myrule_4_a1" "1028561015"
    
    myRule_4_A2[("🛠️ <em></em><br/>AncillBilllFlatOpp ClosedWon")]:::recordUpdates
    click myRule_4_A2 "#myrule_4_a2" "152646223"
    
    myVariable_waitStartTimeAssignment --> isChangedDecision2_myRule_1_Status
    isChangedDecision2_myRule_1_Status --> |"isChangedRule_2_myRule_1_Status"| isChangedDecision5_myRule_4_Status
    isChangedDecision2_myRule_1_Status --> |"default"| isChangedDecision5_myRule_4_Status
    isChangedDecision5_myRule_4_Status --> |"isChangedRule_5_myRule_4_Status"| myDecision
    isChangedDecision5_myRule_4_Status --> |"default"| myDecision
    myDecision --> |"Child Case Resolved w AncillBillOpp"| myRule_1_A1
    myDecision --> |"default"| myDecision3
    myDecision3 --> |"Case Resolved w AncillBillOpp"| myRule_4_A1
    myDecision3 --> |"default"| END_myDecision3
    myRule_1_A1 --> myRule_1_A2
    myRule_1_A2 --> END_myRule_1_A2
    myRule_4_A1 --> myRule_4_A2
    myRule_4_A2 --> END_myRule_4_A2
    END_myDecision3(( END )):::endClass
    END_myRule_1_A2(( END )):::endClass
    END_myRule_4_A2(( END )):::endClass
    
    
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
    |Label|Ancillary Billing | Opp Stage Updates|
    |Status|Active|
    |Description|Update Ancill Bill Opp Stage to "Billing Complete" or "Closed Won"|
    |Interview Label|Support_Test_AncillBill_Opp_Update-5_InterviewLabel|
    |Start Element Reference|[myVariable_waitStartTimeAssignment](#myvariable_waitstarttimeassignment)|
    | Object Type (PM)|Case|
    | Object Variable (PM)|myVariable_current|
    | Old Object Variable (PM)|myVariable_old|
    | Trigger Type (PM)|onAllChanges|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |myVariable_current|SObject|⬜|✅|✅|Case|<!-- -->|
    |myVariable_old|SObject|⬜|✅|⬜|Case|<!-- -->|
    |myVariable_waitStartTimeVariable|DateTime|⬜|⬜|⬜|<!-- -->|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### myVariable_waitStartTimeAssignment
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|[myVariable_waitStartTimeAssignment](#myvariable_waitstarttimeassignment)|
    |Connector|[isChangedDecision2_myRule_1_Status](#ischangeddecision2_myrule_1_status)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |myVariable_waitStartTimeVariable| Assign|$Flow.CurrentDateTime|
    
    
    
    
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
    
    
    #### Rule myRule_1 (Child Case Resolved w AncillBillOpp)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_A1](#myrule_1_a1)|
    |Condition Logic|(1 AND 2) AND (3 OR 4)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|isChangedRule_2_myRule_1_Status| Equal To|✅|
    |2|myVariable_current.Status| Equal To|Child Case Resolved|
    |3|myVariable_current.Case_Type__c| Equal To|Parent Case w/ Ancillary Billing Opp|
    |4|myVariable_current.Case_Type__c| Equal To|Child Case w/ Ancillary Billing Opp|
    
    
    
    
    ### myDecision3
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision3](#mydecision3)|
    |Default Connector Label|default|
    |Index (PM)|1|
    
    
    #### Rule myRule_4 (Case Resolved w AncillBillOpp)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_4_A1](#myrule_4_a1)|
    |Condition Logic|(1 AND 2) AND (3 OR 4)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|isChangedRule_5_myRule_4_Status| Equal To|✅|
    |2|myVariable_current.Status| Equal To|Resolved|
    |3|myVariable_current.Case_Type__c| Equal To|Parent Case w/ Ancillary Billing Opp|
    |4|myVariable_current.Case_Type__c| Equal To|Child Case w/ Ancillary Billing Opp|
    
    
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Opportunity|
    |Label|AncillBillHoulryOpp|
    |Evaluation Type (PM)|criteria|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|✅|
    |Reference (PM)|[Case].Opportunities__r|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myRule_1_A2](#myrule_1_a2)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Case__c| Equal To|myVariable_current.Id|
    |2|Type| Equal To|Ancillary Billing Hourly Rate|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |StageName|Billing Complete|
    
    
    
    
    ### myRule_1_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Opportunity|
    |Label|AncillBillFlatOpp|
    |Evaluation Type (PM)|criteria|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|✅|
    |Reference (PM)|[Case].Opportunities__r|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Case__c| Equal To|myVariable_current.Id|
    |2|Type| Equal To|Ancillary Billing Flat Fee|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |StageName|Billing Complete|
    
    
    
    
    ### myRule_4_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Opportunity|
    |Label|AncillBillHourlyOpp ClosedWon|
    |Evaluation Type (PM)|criteria|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|✅|
    |Reference (PM)|[Case].Opportunities__r|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myRule_4_A2](#myrule_4_a2)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Case__c| Equal To|myVariable_current.Id|
    |2|Type| Equal To|Ancillary Billing Hourly Rate|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |StageName|Closed Won|
    
    
    
    
    ### myRule_4_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Opportunity|
    |Label|AncillBilllFlatOpp ClosedWon|
    |Evaluation Type (PM)|criteria|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|✅|
    |Reference (PM)|[Case].Opportunities__r|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Case__c| Equal To|myVariable_current.Id|
    |2|Type| Equal To|Ancillary Billing Flat Fee|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |StageName|Closed Won|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

