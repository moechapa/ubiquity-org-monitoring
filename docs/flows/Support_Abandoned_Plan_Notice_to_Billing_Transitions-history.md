# Support_Abandoned_Plan_Notice_to_Billing_Transitions history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Support_Abandoned_Plan_Notice_to_Billing_Transitions-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Case</b></br>Type: <b>On All Changes</b>"]):::startClass
    click START "#general-information" "3508867261"
    
    START --> isChangedDecision2_myRule_1_Abandoned_Review_Result_c
    isChangedDecision2_myRule_1_Abandoned_Review_Result_c{"🔀 <em></em><br/>isChangedDecision2_myRule_1_Abandoned_Review_Result_c"}:::decisions
    click isChangedDecision2_myRule_1_Abandoned_Review_Result_c "#ischangeddecision2_myrule_1_abandoned_review_result_c" "55709359"
    
    myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
    click myDecision "#mydecision" "4204008962"
    
    myRule_1_A1[("➕ <em></em><br/>Transitions Case")]:::recordCreates
    click myRule_1_A1 "#myrule_1_a1" "2222587620"
    
    myRule_1_A2[("➕ <em></em><br/>A&F Case")]:::recordCreates
    click myRule_1_A2 "#myrule_1_a2" "3784389909"
    
    isChangedDecision2_myRule_1_Abandoned_Review_Result_c --> |"isChangedRule_2_myRule_1_Abandoned_Review_Result_c"| myDecision
    isChangedDecision2_myRule_1_Abandoned_Review_Result_c --> |"default"| myDecision
    myDecision --> |"Potentially Abandoned Case"| myRule_1_A1
    myDecision --> |"default"| END_myDecision
    myRule_1_A1 --> myRule_1_A2
    myRule_1_A2 --> END_myRule_1_A2
    END_myDecision(( END )):::endClass
    END_myRule_1_A2(( END )):::endClass
    
    
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
    |Label|Support | Abandoned Plan Notice to Billing & Transitions|
    |Status|Active|
    |Description|Creates cases for billing and transitions when abandoned plan review case = Potentially Abandoned|
    |Interview Label|Support_Abandoned_Plan_Notice_to_Billing_Transitions-2_InterviewLabel|
    |Start Element Reference|[isChangedDecision2_myRule_1_Abandoned_Review_Result_c](#ischangeddecision2_myrule_1_abandoned_review_result_c)|
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
    
    ### isChangedDecision2_myRule_1_Abandoned_Review_Result_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision2_myRule_1_Abandoned_Review_Result_c](#ischangeddecision2_myrule_1_abandoned_review_result_c)|
    |Default Connector|[myDecision](#mydecision)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_2_myRule_1_Abandoned_Review_Result_c (isChangedRule_2_myRule_1_Abandoned_Review_Result_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myDecision](#mydecision)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Abandoned_Review_Result__c| Not Equal To|myVariable_current.Abandoned_Review_Result__c|
    
    
    
    
    ### myDecision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision](#mydecision)|
    |Default Connector Label|default|
    |Index (PM)|numberValue: 0<br/>|
    
    
    #### Rule myRule_1 (Potentially Abandoned Case)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_A1](#myrule_1_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.RecordTypeId| Equal To|0121G000000Rl9rQAC|
    |2|isChangedRule_2_myRule_1_Abandoned_Review_Result_c| Equal To|✅|
    |3|myVariable_current.Abandoned_Review_Result__c| Equal To|Potentially Abandoned|
    
    
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Transitions Case|
    |Connector|[myRule_1_A2](#myrule_1_a2)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|myVariable_current.AccountId|
    |BusinessHoursId|01m37000000L07P|
    |Case_Source__c|Internal|
    |Category__c|Abandoned Plan Review|
    |Department__c|Transitions|
    |Description|Client Support completed initial Abandoned Plan Review.   Confirm if plan should start the official Abandoned process|
    |Inquiry_Source__c|CST|
    |Origin|Internal|
    |OwnerId|00500000006xUkf|
    |Plan__c|myVariable_current.Plan__c|
    |Priority|Medium|
    |RecordTypeId|01237000000XwY4|
    |Subject|Abandoned Plan Review from Client Support|
    
    
    
    
    ### myRule_1_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|A&F Case|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|myVariable_current.AccountId|
    |BusinessHoursId|01m37000000PC36|
    |Case_Source__c|Internal|
    |Department__c|Accounting & Finance|
    |Description|Client Support completed initial Abandoned Plan Review.   Transitions will start review to see if official abandoned plan process should start.|
    |Inquiry_Source__c|CST|
    |Origin|Internal|
    |OwnerId|00500000006yEak|
    |Plan__c|myVariable_current.Plan__c|
    |Priority|Medium|
    |RecordTypeId|01237000000Xu63|
    |Subject|Abandoned Plan Review Update|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

