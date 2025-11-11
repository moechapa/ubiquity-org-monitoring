# Implementation_After_Trigger_Imp_Complete_Update_Related_Records history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Implementation_After_Trigger_Imp_Complete_Update_Related_Records-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "3613065453"
    
    Assign_to_CST[\"🟰 <em></em><br/>Assign to CST"/]:::assignments
    click Assign_to_CST "#assign_to_cst" "2320794954"
    
    Assign_to_Platinum[\"🟰 <em></em><br/>Assign to Platinum"/]:::assignments
    click Assign_to_Platinum "#assign_to_platinum" "3310350250"
    
    myRule_1{"🔀 <em></em><br/>Imp Complete"}:::decisions
    click myRule_1 "#myrule_1" "993958489"
    
    myRule_3{"🔀 <em></em><br/>Imp Complete no funds"}:::decisions
    click myRule_3 "#myrule_3" "1343794336"
    
    Number_of_Employees_on_Plan{"🔀 <em></em><br/>Number of Employees on Plan"}:::decisions
    click Number_of_Employees_on_Plan "#number_of_employees_on_plan" "1749426270"
    
    myRule_1_A1[("🛠️ <em></em><br/>Matrix 07C Acct Update")]:::recordUpdates
    click myRule_1_A1 "#myrule_1_a1" "2444015732"
    
    myRule_1_A2[("🛠️ <em></em><br/>Update & Activate Plan")]:::recordUpdates
    click myRule_1_A2 "#myrule_1_a2" "4273468481"
    
    myRule_3_A1[("🛠️ <em></em><br/>Matrix 07C Acct Update")]:::recordUpdates
    click myRule_3_A1 "#myrule_3_a1" "2586596091"
    
    myRule_3_A2[("🛠️ <em></em><br/>Update and Activate plan no funds")]:::recordUpdates
    click myRule_3_A2 "#myrule_3_a2" "288965676"
    
    Assign_to_CST --> myRule_1
    Assign_to_Platinum --> myRule_1
    myRule_1 --> |"TRUE_Imp Complete"| myRule_1_A1
    myRule_1 --> |"FALSE_Imp Complete"| myRule_3
    myRule_3 --> |"TRUE_Imp Complete no funds"| myRule_3_A1
    myRule_3 --> |"FALSE_Imp Complete no funds"| END_myRule_3
    Number_of_Employees_on_Plan --> |"More than 100"| Assign_to_Platinum
    Number_of_Employees_on_Plan --> |"Default Outcome"| Assign_to_CST
    myRule_1_A1 --> myRule_1_A2
    myRule_1_A2 --> myRule_3
    myRule_3_A1 --> myRule_3_A2
    myRule_3_A2 --> END_myRule_3_A2
    START -->  Number_of_Employees_on_Plan
    END_myRule_3(( END )):::endClass
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
    |Object|Implementation__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create And Update|
    |Label|Implementation | After Trigger | Imp Complete: Update Related Records|
    |Status|Active|
    |Description|Migrated from Imp | Stage Updates 6/22. This flow updates related records when imps are marked complete.|
    |Environments|Default|
    |Interview Label|Implementation | After Trigger | Imp Complete: Update Related Records {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    |Connector|[Number_of_Employees_on_Plan](#number_of_employees_on_plan)|
    |Next Node|[Number_of_Employees_on_Plan](#number_of_employees_on_plan)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |newPlanOwner|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Assign_to_CST
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign to CST|
    |Connector|[myRule_1](#myrule_1)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |newPlanOwner| Assign|00G1G000001N3PA|
    
    
    
    
    ### Assign_to_Platinum
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign to Platinum|
    |Connector|[myRule_1](#myrule_1)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |newPlanOwner| Assign|00G370000014GsN|
    
    
    
    
    ### myRule_1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Imp Complete|
    |Default Connector|[myRule_3](#myrule_3)|
    |Default Connector Label|FALSE_Imp Complete|
    
    
    #### Rule TRUE_myRule_1 (TRUE_Imp Complete)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[myRule_1_A1](#myrule_1_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Implementation_Completion_Date__c| Is Null|⬜|
    |2|$Record.Complete_without_funding__c| Equal To|⬜|
    
    
    
    
    ### myRule_3
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Imp Complete no funds|
    |Default Connector Label|FALSE_Imp Complete no funds|
    
    
    #### Rule TRUE_myRule_3 (TRUE_Imp Complete no funds)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[myRule_3_A1](#myrule_3_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Complete_without_funding__c| Equal To|✅|
    |2|$Record.Implementation_Completion_Date__c| Is Null|⬜|
    
    
    
    
    ### Number_of_Employees_on_Plan
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Number of Employees on Plan|
    |Default Connector|[Assign_to_CST](#assign_to_cst)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule More_than_100 (More than 100)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_to_Platinum](#assign_to_platinum)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Plan__r.Number_of_Employees__c| Greater Than Or Equal To|100|
    
    
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Matrix 07C Acct Update|
    |Input Reference|$Record.Account__r|
    |Connector|[myRule_1_A2](#myrule_1_a2)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Matrix_07C_Account__c|$Record.Matrix_07C_Account__c|
    
    
    
    
    ### myRule_1_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update & Activate Plan|
    |Input Reference|$Record.Plans__r|
    |Connector|[myRule_3](#myrule_3)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Advisor_Fees_Paid_from_ESA__c|$Record.Advisor_Fees_Paid_from_ESA__c|
    |Auto_Enroll_Escalation_Type__c|$Record.Auto_Enroll_Escalation_Type__c|
    |Auto_Enrollment__c|$Record.Auto_Enrollment__c|
    |Brokerage_Accounts_PCRA__c|$Record.Brokerage_Accounts_PCRA__c|
    |CST_Client_Support_Team__c|$Record.CST_Client_Support_Team__c|
    |Custodian_Account_ID__c|$Record.Custodian_Account_ID__c|
    |Custodian__c|$Record.Custodian__c|
    |Deferral_Change_Frequency__c|$Record.Deferral_Change_Frequency__c|
    |Discretionary_Match_Formula_Notes__c|$Record.Discretionary_Match_Formula_Notes__c|
    |Discretionary_Match__c|$Record.Discretionary_Match__c|
    |Eligibility_Age__c|$Record.Eligibility_Age__c|
    |Fund_List__c|$Record.Fund_List__c|
    |Hardships__c|$Record.Hardship_Distrobutions__c|
    |Initial_Deferral_Rate__c|$Record.Initial_Deferral_Rate__c|
    |Kotapay_Client_Signed__c|$Record.Kotapay_Client_Signed__c|
    |Kotapay_Complete__c|$Record.Kotapay_Complete__c|
    |Kotapay_Doc_Created__c|$Record.Kotapay_Doc_Created__c|
    |Kotapay_UBQT_Signed__c|$Record.Kotapay_UBQT_Signed__c|
    |Loans__c|$Record.Loans__c|
    |Matrix_07C_Account__c|$Record.Matrix_07C_Account__c|
    |Maximum_Deferral_Rate__c|$Record.Maximum_Deferral_Rate__c|
    |OwnerId|newPlanOwner|
    |Paradigm_Plan_ID__c|$Record.Paradigm_Plan_ID__c|
    |Participant_Fee_Payment__c|$Record.Sponsor_to_Pay_Participant_Fees__c|
    |Participant_Fees_Paid_from_ESA__c|$Record.Participant_Fees_Paid_from_ESA__c|
    |Payroll_Schedule__c|$Record.Payroll_Schedule__c|
    |Plan_Eligibility__c|$Record.Plan_Eligibilty__c|
    |Plan_Entry_Frequency__c|$Record.Plan_Entry_Frequency__c|
    |Profit_Sharing__c|$Record.Profit_Sharing__c|
    |QACA_Safe_Harbor_Vesting_Schedule__c|$Record.QACA_Safe_Harbor_Vesting_Schedule__c|
    |Roth__c|$Record.Roth__c|
    |Safe_Harbor_Match_Determination_Period__c|$Record.Safe_Harbor_Match_Determination_Period__c|
    |Safe_Harbor__c|$Record.Safe_Harbor__c|
    |Service_Option__c|$Record.Service_Option__c|
    |Status__c|Active|
    |Testing_Method__c|$Record.Testing_Method__c|
    |Ubiquity_Admin_Fees_Paid_by_ESA__c|$Record.Ubiquity_Admin_Fees_Paid_by_ESA__c|
    |Ubiquity_Plan_Effective_Date__c|$Record.Ubiquity_Plan_Effective_Date__c|
    |Vesting_Schedule__c|$Record.Profit_Sharing_Vesting_Schedule__c|
    |X1st_Payroll_Submission__c|$Record.X1st_Payroll_Date__c|
    
    
    
    
    ### myRule_3_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Matrix 07C Acct Update|
    |Input Reference|$Record.Account__r|
    |Connector|[myRule_3_A2](#myrule_3_a2)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Matrix_07C_Account__c|$Record.Matrix_07C_Account__c|
    
    
    
    
    ### myRule_3_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update and Activate plan no funds|
    |Input Reference|$Record.Plan__r|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Advisor_Fees_Paid_from_ESA__c|$Record.Advisor_Fees_Paid_from_ESA__c|
    |Auto_Enroll_Escalation_Type__c|$Record.Auto_Enroll_Escalation_Type__c|
    |Auto_Enrollment__c|$Record.Auto_Enrollment__c|
    |Brokerage_Accounts_PCRA__c|$Record.Brokerage_Accounts_PCRA__c|
    |CST_Client_Support_Team__c|$Record.CST_Client_Support_Team__c|
    |Custodian_Account_ID__c|$Record.Custodian_Account_ID__c|
    |Custodian__c|$Record.Custodian__c|
    |Deferral_Change_Frequency__c|$Record.Deferral_Change_Frequency__c|
    |Discretionary_Match_Formula_Notes__c|$Record.Discretionary_Match_Formula_Notes__c|
    |Discretionary_Match__c|$Record.Discretionary_Match__c|
    |Eligibility_Age__c|$Record.Eligibility_Age__c|
    |Fund_List__c|$Record.Fund_List__c|
    |Hardships__c|$Record.Hardship_Distrobutions__c|
    |Initial_Deferral_Rate__c|$Record.Initial_Deferral_Rate__c|
    |Kotapay_Client_Signed__c|$Record.Kotapay_Client_Signed__c|
    |Kotapay_Complete__c|$Record.Kotapay_Complete__c|
    |Kotapay_Doc_Created__c|$Record.Kotapay_Doc_Created__c|
    |Kotapay_UBQT_Signed__c|$Record.Kotapay_UBQT_Signed__c|
    |Loans__c|$Record.Loans__c|
    |Matrix_07C_Account__c|$Record.Matrix_07C_Account__c|
    |Maximum_Deferral_Rate__c|$Record.Maximum_Deferral_Rate__c|
    |OwnerId|newPlanOwner|
    |Paradigm_Plan_ID__c|$Record.Paradigm_Plan_ID__c|
    |Participant_Fees_Paid_from_ESA__c|$Record.Participant_Fees_Paid_from_ESA__c|
    |Payroll_Schedule__c|$Record.Payroll_Schedule__c|
    |Plan_Eligibility__c|$Record.Plan_Eligibilty__c|
    |Plan_Entry_Frequency__c|$Record.Plan_Entry_Frequency__c|
    |Profit_Sharing__c|$Record.Profit_Sharing__c|
    |QACA_Safe_Harbor_Vesting_Schedule__c|$Record.QACA_Safe_Harbor_Vesting_Schedule__c|
    |Roth__c|$Record.Roth__c|
    |Safe_Harbor_Match_Determination_Period__c|$Record.Safe_Harbor_Match_Determination_Period__c|
    |Safe_Harbor__c|$Record.Safe_Harbor__c|
    |Service_Option__c|$Record.Service_Option__c|
    |Status__c|Active Not Funded|
    |Testing_Method__c|$Record.Testing_Method__c|
    |Ubiquity_Admin_Fees_Paid_by_ESA__c|$Record.Ubiquity_Admin_Fees_Paid_by_ESA__c|
    |Ubiquity_Plan_Effective_Date__c|$Record.Ubiquity_Plan_Effective_Date__c|
    |Vesting_Schedule__c|$Record.Profit_Sharing_Vesting_Schedule__c|
    |X1st_Payroll_Submission__c|$Record.X1st_Payroll_Date__c|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

