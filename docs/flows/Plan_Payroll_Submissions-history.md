# Plan_Payroll_Submissions history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Plan_Payroll_Submissions-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Plan__c</b></br>Type: <b>On All Changes</b>"]):::startClass
    click START "#general-information" "2727717337"
    
    START --> isChangedDecision5_myRule_4_Days_Behind_on_Payroll_c
    isChangedDecision5_myRule_4_Days_Behind_on_Payroll_c{"🔀 <em></em><br/>isChangedDecision5_myRule_4_Days_Behind_on_Payroll_c"}:::decisions
    click isChangedDecision5_myRule_4_Days_Behind_on_Payroll_c "#ischangeddecision5_myrule_4_days_behind_on_payroll_c" "1093526413"
    
    isChangedDecision8_myRule_7_Most_Recent_Pay_Period_Submitted_c{"🔀 <em></em><br/>isChangedDecision8_myRule_7_Most_Recent_Pay_Period_Submitted_c"}:::decisions
    click isChangedDecision8_myRule_7_Most_Recent_Pay_Period_Submitted_c "#ischangeddecision8_myrule_7_most_recent_pay_period_submitted_c" "989368853"
    
    myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
    click myDecision "#mydecision" "2560129036"
    
    myDecision3{"🔀 <em></em><br/>myDecision3"}:::decisions
    click myDecision3 "#mydecision3" "3633252608"
    
    myDecision6{"🔀 <em></em><br/>myDecision6"}:::decisions
    click myDecision6 "#mydecision6" "2876605052"
    
    myRule_1_A2[("➕ <em></em><br/>Create Past Due Payroll Case")]:::recordCreates
    click myRule_1_A2 "#myrule_1_a2" "1437846048"
    
    myRule_1_A1[("🛠️ <em></em><br/>Update Payroll Submission Status")]:::recordUpdates
    click myRule_1_A1 "#myrule_1_a1" "4115627269"
    
    myRule_4_A1[("🛠️ <em></em><br/>Update PR Status to Current")]:::recordUpdates
    click myRule_4_A1 "#myrule_4_a1" "946661199"
    
    myRule_7_A1[("🛠️ <em></em><br/>PR Status = Current")]:::recordUpdates
    click myRule_7_A1 "#myrule_7_a1" "3350680433"
    
    isChangedDecision5_myRule_4_Days_Behind_on_Payroll_c --> |"isChangedRule_5_myRule_4_Days_Behind_on_Payroll_c"| isChangedDecision8_myRule_7_Most_Recent_Pay_Period_Submitted_c
    isChangedDecision5_myRule_4_Days_Behind_on_Payroll_c --> |"default"| isChangedDecision8_myRule_7_Most_Recent_Pay_Period_Submitted_c
    isChangedDecision8_myRule_7_Most_Recent_Pay_Period_Submitted_c --> |"isChangedRule_8_myRule_7_Most_Recent_Pay_Period_Submitted_c"| myDecision
    isChangedDecision8_myRule_7_Most_Recent_Pay_Period_Submitted_c --> |"default"| myDecision
    myDecision --> |"Payroll Past Due"| myRule_1_A1
    myDecision --> |"default"| myDecision3
    myDecision3 --> |"Payroll Current"| myRule_4_A1
    myDecision3 --> |"default"| myDecision6
    myDecision6 --> |"Imp to Current"| myRule_7_A1
    myDecision6 --> |"default"| END_myDecision6
    myRule_1_A2 --> END_myRule_1_A2
    myRule_1_A1 --> myRule_1_A2
    myRule_4_A1 --> END_myRule_4_A1
    myRule_7_A1 --> END_myRule_7_A1
    END_myDecision6(( END )):::endClass
    END_myRule_1_A2(( END )):::endClass
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
    |Label|Servicing | Payroll Submissions|
    |Status|⚠️ Draft|
    |Description|Process that Updates Plan Payroll submission status and alerts CE when action is needed|
    |Interview Label|Plan_Payroll_Submissions-14_InterviewLabel|
    |Start Element Reference|[isChangedDecision5_myRule_4_Days_Behind_on_Payroll_c](#ischangeddecision5_myrule_4_days_behind_on_payroll_c)|
    | Object Type (PM)|Plan__c|
    | Object Variable (PM)|myVariable_current|
    | Old Object Variable (PM)|myVariable_old|
    | Trigger Type (PM)|onAllChanges|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |myVariable_current|SObject|⬜|✅|✅|Plan__c|<!-- -->|
    |myVariable_old|SObject|⬜|✅|⬜|Plan__c|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |formula_2_myRule_1_A2_3892493494|String|"Days Behind Payroll = " + TEXT({!myVariable_current.Days_Behind_on_Payroll__c} )<br/>+ "        " +<br/>"Most Recent Payroll Submitted Date = " + TEXT({!myVariable_current.Most_Recent_Payroll_Submitted__c} ) <br/>+ "        " +<br/>"Most Recent Pay Period Submitted = " + "myVariable_current.Most_Recent_Pay_Period_Submitted__c )"|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### isChangedDecision5_myRule_4_Days_Behind_on_Payroll_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision5_myRule_4_Days_Behind_on_Payroll_c](#ischangeddecision5_myrule_4_days_behind_on_payroll_c)|
    |Default Connector|[isChangedDecision8_myRule_7_Most_Recent_Pay_Period_Submitted_c](#ischangeddecision8_myrule_7_most_recent_pay_period_submitted_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_5_myRule_4_Days_Behind_on_Payroll_c (isChangedRule_5_myRule_4_Days_Behind_on_Payroll_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision8_myRule_7_Most_Recent_Pay_Period_Submitted_c](#ischangeddecision8_myrule_7_most_recent_pay_period_submitted_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Days_Behind_on_Payroll__c| Not Equal To|myVariable_current.Days_Behind_on_Payroll__c|
    
    
    
    
    ### isChangedDecision8_myRule_7_Most_Recent_Pay_Period_Submitted_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision8_myRule_7_Most_Recent_Pay_Period_Submitted_c](#ischangeddecision8_myrule_7_most_recent_pay_period_submitted_c)|
    |Default Connector|[myDecision](#mydecision)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_8_myRule_7_Most_Recent_Pay_Period_Submitted_c (isChangedRule_8_myRule_7_Most_Recent_Pay_Period_Submitted_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myDecision](#mydecision)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Most_Recent_Pay_Period_Submitted__c| Not Equal To|myVariable_current.Most_Recent_Pay_Period_Submitted__c|
    
    
    
    
    ### myDecision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision](#mydecision)|
    |Default Connector|[myDecision3](#mydecision3)|
    |Default Connector Label|default|
    |Index (PM)|numberValue: 0<br/>|
    
    
    #### Rule myRule_1 (Payroll Past Due)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_A1](#myrule_1_a1)|
    |Condition Logic|1 AND (2 OR 3) AND 4 AND 5|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Days_Behind_on_Payroll__c| Greater Than|10|
    |2|myVariable_current.Payroll_Submission_Status__c| Equal To|Current|
    |3|myVariable_current.Payroll_Submission_Status__c| Is Null|✅|
    |4|myVariable_current.Status__c| Equal To|Active|
    |5|myVariable_current.Payroll_Schedule__c| Not Equal To|Annual|
    
    
    
    
    ### myDecision3
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision3](#mydecision3)|
    |Default Connector|[myDecision6](#mydecision6)|
    |Default Connector Label|default|
    |Index (PM)|1|
    
    
    #### Rule myRule_4 (Payroll Current)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_4_A1](#myrule_4_a1)|
    |Condition Logic|(1 OR 2 OR 3) AND 4 AND 5|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Payroll_Submission_Status__c| Equal To|Behind|
    |2|myVariable_current.Payroll_Submission_Status__c| Equal To|Never Submitted|
    |3|myVariable_current.Payroll_Submission_Status__c| Is Null|✅|
    |4|myVariable_current.Days_Behind_on_Payroll__c| Less Than Or Equal To|10|
    |5|isChangedRule_5_myRule_4_Days_Behind_on_Payroll_c| Equal To|✅|
    
    
    
    
    ### myDecision6
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision6](#mydecision6)|
    |Default Connector Label|default|
    |Index (PM)|2|
    
    
    #### Rule myRule_7 (Imp to Current)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_7_A1](#myrule_7_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Payroll_Submission_Status__c| Equal To|Implementation|
    |2|isChangedRule_8_myRule_7_Most_Recent_Pay_Period_Submitted_c| Equal To|✅|
    |3|myVariable_current.Most_Recent_Payroll_Submitted__c| Is Null|⬜|
    
    
    
    
    ### myRule_1_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Create Past Due Payroll Case|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|myVariable_current.Account__c|
    |Case_Source__c|Internal|
    |Category__c|Payroll|
    |Department__c|Servicing|
    |Description|formula_2_myRule_1_A2_3892493494|
    |Most_Recent_Payroll_Submitted__c|myVariable_current.Most_Recent_Payroll_Submitted__c|
    |Origin|Internal|
    |OwnerId|00G1G000001N3PAUA0|
    |Plan__c|myVariable_current.Id|
    |Priority|High|
    |RecordTypeId|01237000000Aho7|
    |Status|New|
    |Sub_Category__c|Late Payroll|
    |Subject|Past Due Payroll|
    
    
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Plan__c|
    |Label|Update Payroll Submission Status|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Plan__c]|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myRule_1_A2](#myrule_1_a2)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Payroll_Submission_Status__c|Behind|
    
    
    
    
    ### myRule_4_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Plan__c|
    |Label|Update PR Status to Current|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Plan__c]|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Payroll_Submission_Status__c|Current|
    
    
    
    
    ### myRule_7_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Plan__c|
    |Label|PR Status = Current|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Plan__c]|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Payroll_Submission_Status__c|Current|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

