# Enrollment_Copy_Plan_Provisions history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Enrollment_Copy_Plan_Provisions-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Enrollment_Meeting__c</b></br>Type: <b>On All Changes</b>"]):::startClass
    click START "#general-information" "3483910574"
    
    START --> myDecision
    myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
    click myDecision "#mydecision" "2153090608"
    
    myDecision2{"🔀 <em></em><br/>myDecision2"}:::decisions
    click myDecision2 "#mydecision2" "1899679272"
    
    myRule_1_A1[("🛠️ <em></em><br/>Plan Provisions")]:::recordUpdates
    click myRule_1_A1 "#myrule_1_a1" "953833208"
    
    myRule_1_A2[("🛠️ <em></em><br/>Business/Industry")]:::recordUpdates
    click myRule_1_A2 "#myrule_1_a2" "2051377500"
    
    myRule_3_A1[("🛠️ <em></em><br/>Plan Provisions")]:::recordUpdates
    click myRule_3_A1 "#myrule_3_a1" "2745293176"
    
    myRule_3_A2[("🛠️ <em></em><br/>Business/Industry")]:::recordUpdates
    click myRule_3_A2 "#myrule_3_a2" "4061092405"
    
    myDecision --> |"Data from Implementation"| myRule_1_A1
    myDecision --> |"default"| myDecision2
    myDecision2 --> |"Data from Plan"| myRule_3_A1
    myDecision2 --> |"default"| END_myDecision2
    myRule_1_A1 --> myRule_1_A2
    myRule_1_A2 --> END_myRule_1_A2
    myRule_3_A1 --> myRule_3_A2
    myRule_3_A2 --> END_myRule_3_A2
    END_myDecision2(( END )):::endClass
    END_myRule_1_A2(( END )):::endClass
    END_myRule_3_A2(( END )):::endClass
    
    
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
    |Label|Enrollment | Copy Plan Provisions|
    |Status|Obsolete|
    |Description|Copies plan provisions from Plan or Implementations to get most current data stamped at time of meeting|
    |Interview Label|Enrollment_Copy_Plan_Provisions-9_InterviewLabel|
    |Start Element Reference|[myDecision](#mydecision)|
    | Object Type (PM)|Enrollment_Meeting__c|
    | Object Variable (PM)|myVariable_current|
    | Old Object Variable (PM)|myVariable_old|
    | Trigger Type (PM)|onAllChanges|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |myVariable_current|SObject|⬜|✅|✅|Enrollment_Meeting__c|<!-- -->|
    |myVariable_old|SObject|⬜|✅|⬜|Enrollment_Meeting__c|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### myDecision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision](#mydecision)|
    |Default Connector|[myDecision2](#mydecision2)|
    |Default Connector Label|default|
    |Index (PM)|numberValue: 0<br/>|
    
    
    #### Rule myRule_1 (Data from Implementation)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_A1](#myrule_1_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Implementation__c| Is Null|⬜|
    |2|myVariable_current.Implementation__r.Implementation_Status__c| Not Equal To|Completed|
    
    
    
    
    ### myDecision2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision2](#mydecision2)|
    |Default Connector Label|default|
    |Index (PM)|1|
    
    
    #### Rule myRule_3 (Data from Plan)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_3_A1](#myrule_3_a1)|
    |Condition Logic|(1 AND 2) OR 3|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Implementation__c| Is Null|⬜|
    |2|myVariable_current.Implementation__r.Implementation_Status__c| Equal To|Completed|
    |3|myVariable_current.Implementation__c| Is Null|✅|
    
    
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Enrollment_Meeting__c|
    |Label|Plan Provisions|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Enrollment_Meeting__c]|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myRule_1_A2](#myrule_1_a2)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Auto_Enroll__c|myVariable_current.Implementation__r.Auto_Enrollment__c|
    |Auto_Enrollment_Deferral_Escalation_Rate__c|myVariable_current.Implementation__r.Auto_Enrollment_Deferral_Escalation_Rate__c|
    |Brokerage_Accounts__c|myVariable_current.Implementation__r.Brokerage_Accounts_PCRA__c|
    |Deferral_Change_Frequency__c|myVariable_current.Implementation__r.Deferral_Change_Frequency__c|
    |Discretionary_Match_Notes__c|myVariable_current.Implementation__r.Discretionary_Match_Formula_Notes__c|
    |Discretionary_Match__c|myVariable_current.Implementation__r.Discretionary_Match__c|
    |Eligibility_Age__c|myVariable_current.Implementation__r.Eligibility_Age__c|
    |Eligibility__c|myVariable_current.Implementation__r.Plan_Eligibilty__c|
    |Loans__c|myVariable_current.Implementation__r.Loans__c|
    |Plan_Entry_Frequency__c|myVariable_current.Implementation__r.Plan_Entry_Frequency__c|
    |Profit_Sharing__c|myVariable_current.Implementation__r.Profit_Sharing__c|
    |QACA_Safe_Harbor_Vesting_Schedule__c|myVariable_current.Implementation__r.QACA_Safe_Harbor_Vesting_Schedule__c|
    |ROTH__c|myVariable_current.Implementation__r.Roth__c|
    |Safe_Harbor__c|myVariable_current.Implementation__r.Safe_Harbor__c|
    |Service_Option__c|myVariable_current.Implementation__r.Service_Option__c|
    |Vesting_Schedule__c|myVariable_current.Implementation__r.Profit_Sharing_Vesting_Schedule__c|
    
    
    
    
    ### myRule_1_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Enrollment_Meeting__c|
    |Label|Business/Industry|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Enrollment_Meeting__c]|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Business_Industry__c|myVariable_current.Implementation__r.Account__r.Business_Industry__c|
    
    
    
    
    ### myRule_3_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Enrollment_Meeting__c|
    |Label|Plan Provisions|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Enrollment_Meeting__c]|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myRule_3_A2](#myrule_3_a2)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Auto_Enroll__c|myVariable_current.Plan__r.Auto_Enrollment__c|
    |Auto_Enrollment_Deferral_Escalation_Rate__c|myVariable_current.Plan__r.Auto_Enrollment_Deferral_Escalation_Rate__c|
    |Brokerage_Accounts__c|myVariable_current.Plan__r.Brokerage_Accounts_PCRA__c|
    |Deferral_Change_Frequency__c|myVariable_current.Plan__r.Deferral_Change_Frequency__c|
    |Discretionary_Match_Notes__c|myVariable_current.Plan__r.Discretionary_Match_Formula_Notes__c|
    |Discretionary_Match__c|myVariable_current.Plan__r.Discretionary_Match__c|
    |Eligibility_Age__c|myVariable_current.Plan__r.Eligibility_Age__c|
    |Eligibility__c|myVariable_current.Plan__r.Plan_Eligibility__c|
    |Loans__c|myVariable_current.Plan__r.Loans__c|
    |Plan_Entry_Frequency__c|myVariable_current.Plan__r.Plan_Entry_Frequency__c|
    |Profit_Sharing__c|myVariable_current.Plan__r.Profit_Sharing__c|
    |QACA_Safe_Harbor_Vesting_Schedule__c|myVariable_current.Plan__r.QACA_Safe_Harbor_Vesting_Schedule__c|
    |ROTH__c|myVariable_current.Plan__r.Roth__c|
    |Safe_Harbor__c|myVariable_current.Plan__r.Safe_Harbor__c|
    |Service_Option__c|myVariable_current.Plan__r.Service_Option__c|
    |Vesting_Schedule__c|myVariable_current.Plan__r.Vesting_Schedule__c|
    
    
    
    
    ### myRule_3_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Enrollment_Meeting__c|
    |Label|Business/Industry|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Enrollment_Meeting__c]|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Business_Industry__c|myVariable_current.Plan__r.Account__r.Business_Industry__c|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

