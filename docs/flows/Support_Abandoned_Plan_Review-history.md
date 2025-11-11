# Support_Abandoned_Plan_Review history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Support_Abandoned_Plan_Review-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Plan__c</b></br>Type: <b>On All Changes</b>"]):::startClass
    click START "#general-information" "1899523924"
    
    START --> isChangedDecision2_myRule_1_Abandon_Plan_Review_c
    isChangedDecision2_myRule_1_Abandon_Plan_Review_c{"🔀 <em></em><br/>isChangedDecision2_myRule_1_Abandon_Plan_Review_c"}:::decisions
    click isChangedDecision2_myRule_1_Abandon_Plan_Review_c "#ischangeddecision2_myrule_1_abandon_plan_review_c" "3038179452"
    
    isChangedDecision5_myRule_4_Abandon_Plan_Review_c{"🔀 <em></em><br/>isChangedDecision5_myRule_4_Abandon_Plan_Review_c"}:::decisions
    click isChangedDecision5_myRule_4_Abandon_Plan_Review_c "#ischangeddecision5_myrule_4_abandon_plan_review_c" "423849597"
    
    myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
    click myDecision "#mydecision" "3623661316"
    
    myDecision3{"🔀 <em></em><br/>myDecision3"}:::decisions
    click myDecision3 "#mydecision3" "438329504"
    
    myRule_1_A1[("➕ <em></em><br/>At Risk Case")]:::recordCreates
    click myRule_1_A1 "#myrule_1_a1" "2154660510"
    
    myRule_4_A1[("➕ <em></em><br/>Abandoned Case")]:::recordCreates
    click myRule_4_A1 "#myrule_4_a1" "1669049602"
    
    isChangedDecision2_myRule_1_Abandon_Plan_Review_c --> |"isChangedRule_2_myRule_1_Abandon_Plan_Review_c"| isChangedDecision5_myRule_4_Abandon_Plan_Review_c
    isChangedDecision2_myRule_1_Abandon_Plan_Review_c --> |"default"| isChangedDecision5_myRule_4_Abandon_Plan_Review_c
    isChangedDecision5_myRule_4_Abandon_Plan_Review_c --> |"isChangedRule_5_myRule_4_Abandon_Plan_Review_c"| myDecision
    isChangedDecision5_myRule_4_Abandon_Plan_Review_c --> |"default"| myDecision
    myDecision --> |"At Risk"| myRule_1_A1
    myDecision --> |"default"| myDecision3
    myDecision3 --> |"Potentially Abandoned"| myRule_4_A1
    myDecision3 --> |"default"| END_myDecision3
    myRule_1_A1 --> END_myRule_1_A1
    myRule_4_A1 --> END_myRule_4_A1
    END_myDecision3(( END )):::endClass
    END_myRule_1_A1(( END )):::endClass
    END_myRule_4_A1(( END )):::endClass
    
    
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
    |Label|Support | Abandoned Plan Review|
    |Status|Active|
    |Description|Creates At Risk Abandoned Plan Review case when Payroll & 1099 are 9+ months old|
    |Interview Label|Support_Abandoned_Plan_Review-1_InterviewLabel|
    |Start Element Reference|[isChangedDecision2_myRule_1_Abandon_Plan_Review_c](#ischangeddecision2_myrule_1_abandon_plan_review_c)|
    | Object Type (PM)|Plan__c|
    | Object Variable (PM)|myVariable_current|
    | Old Object Variable (PM)|myVariable_old|
    | Trigger Type (PM)|onAllChanges|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |myVariable_current|SObject|⬜|✅|✅|Plan__c|<!-- -->|
    |myVariable_old|SObject|⬜|✅|⬜|Plan__c|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### isChangedDecision2_myRule_1_Abandon_Plan_Review_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision2_myRule_1_Abandon_Plan_Review_c](#ischangeddecision2_myrule_1_abandon_plan_review_c)|
    |Default Connector|[isChangedDecision5_myRule_4_Abandon_Plan_Review_c](#ischangeddecision5_myrule_4_abandon_plan_review_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_2_myRule_1_Abandon_Plan_Review_c (isChangedRule_2_myRule_1_Abandon_Plan_Review_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision5_myRule_4_Abandon_Plan_Review_c](#ischangeddecision5_myrule_4_abandon_plan_review_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Abandon_Plan_Review__c| Not Equal To|myVariable_current.Abandon_Plan_Review__c|
    
    
    
    
    ### isChangedDecision5_myRule_4_Abandon_Plan_Review_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision5_myRule_4_Abandon_Plan_Review_c](#ischangeddecision5_myrule_4_abandon_plan_review_c)|
    |Default Connector|[myDecision](#mydecision)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_5_myRule_4_Abandon_Plan_Review_c (isChangedRule_5_myRule_4_Abandon_Plan_Review_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myDecision](#mydecision)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Abandon_Plan_Review__c| Not Equal To|myVariable_current.Abandon_Plan_Review__c|
    
    
    
    
    ### myDecision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision](#mydecision)|
    |Default Connector|[myDecision3](#mydecision3)|
    |Default Connector Label|default|
    |Index (PM)|numberValue: 0<br/>|
    
    
    #### Rule myRule_1 (At Risk)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_A1](#myrule_1_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|isChangedRule_2_myRule_1_Abandon_Plan_Review_c| Equal To|✅|
    |2|myVariable_current.Abandon_Plan_Review__c| Equal To|At Risk|
    
    
    
    
    ### myDecision3
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision3](#mydecision3)|
    |Default Connector Label|default|
    |Index (PM)|1|
    
    
    #### Rule myRule_4 (Potentially Abandoned)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_4_A1](#myrule_4_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|isChangedRule_5_myRule_4_Abandon_Plan_Review_c| Equal To|✅|
    |2|myVariable_current.Abandon_Plan_Review__c| Equal To|Potentially Abandoned|
    
    
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|At Risk Case|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|myVariable_current.Account__r.Id|
    |BusinessHoursId|01m1G000000XaE6|
    |Category__c|Abandoned Plan Review|
    |Department__c|Servicing|
    |Most_Recent_1099R__c|myVariable_current.Most_Recent_1099R__c|
    |Most_Recent_Payroll_Submitted__c|myVariable_current.Most_Recent_Payroll_Submitted__c|
    |Origin|Internal|
    |OwnerId|00G1G000001N3PA|
    |Plan__c|myVariable_current.Id|
    |Priority|Medium|
    |RecordTypeId|0121G000000Rl9rQAC|
    |Status|New|
    |Sub_Category__c|At Risk|
    |Subject|At Risk for Abandoned Plan|
    
    
    
    
    ### myRule_4_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Abandoned Case|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|myVariable_current.Account__r.Id|
    |BusinessHoursId|01m1G000000XaE6|
    |Category__c|Abandoned Plan Review|
    |Department__c|Servicing|
    |Most_Recent_1099R__c|myVariable_current.Most_Recent_1099R__c|
    |Most_Recent_Payroll_Submitted__c|myVariable_current.Most_Recent_Payroll_Submitted__c|
    |Origin|Internal|
    |OwnerId|00G1G000001N3PA|
    |Plan__c|myVariable_current.Id|
    |Priority|Medium|
    |RecordTypeId|0121G000000Rl9rQAC|
    |Status|New|
    |Sub_Category__c|Potentially Abandoned|
    |Subject|Potentially Abandoned Plan|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

