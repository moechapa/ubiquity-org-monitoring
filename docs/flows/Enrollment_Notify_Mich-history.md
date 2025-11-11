# Enrollment_Notify_Mich history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Enrollment_Notify_Mich-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Enrollment_Meeting__c</b></br>Type: <b>On Create Only</b>"]):::startClass
    click START "#general-information" "736282635"
    
    START --> myDecision
    myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
    click myDecision "#mydecision" "1098581705"
    
    myRule_1_A1[("➕ <em></em><br/>New Enroll Case")]:::recordCreates
    click myRule_1_A1 "#myrule_1_a1" "4058375834"
    
    myDecision --> |"Non_Mich Created"| myRule_1_A1
    myDecision --> |"default"| END_myDecision
    myRule_1_A1 --> END_myRule_1_A1
    END_myDecision(( END )):::endClass
    END_myRule_1_A1(( END )):::endClass
    
    
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
    |Label|Enrollment | Notify Mich & Enroll Team|
    |Status|Obsolete|
    |Description|Notifies Mich and Enroll Team of new enrollment meeting object|
    |Interview Label|Enrollment_Notify_Mich-6_InterviewLabel|
    |Start Element Reference|[myDecision](#mydecision)|
    | Object Type (PM)|Enrollment_Meeting__c|
    | Object Variable (PM)|myVariable_current|
    | Old Object Variable (PM)|myVariable_old|
    | Trigger Type (PM)|onCreateOnly|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |myVariable_current|SObject|⬜|✅|✅|Enrollment_Meeting__c|<!-- -->|
    |myVariable_old|SObject|⬜|✅|⬜|Enrollment_Meeting__c|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |formula_2_myRule_1_A1_9889061666|String|"Review details here - https://myubiquity.my.salesforce.com/"+{!myVariable_current.Id}+" __Status = "+TEXT({!myVariable_current.Status__c} )+"__Stage = "+TEXT({!myVariable_current.Stage__c} )|<!-- -->|
    |formula_3_myRule_1_A1_8741666743|String|"Enrollment Meeting Object created for " +{!myVariable_current.Implementation__r.Account__r.Name}|<!-- -->|
    |formula_myRule_1|Boolean|✅|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### myDecision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision](#mydecision)|
    |Default Connector Label|default|
    |Index (PM)|numberValue: 0<br/>|
    
    
    #### Rule myRule_1 (Non_Mich Created)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_A1](#myrule_1_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|formula_myRule_1| Equal To|✅|
    
    
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|New Enroll Case|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|0013700000JH68lAAD|
    |BusinessHoursId|01m1G000000IF2B|
    |Case_Sentiment__c|Neutral|
    |Case_Type__c|Single Case|
    |Category__c|Enrollment Meeting Request|
    |Department__c|Enrollment|
    |Description|formula_2_myRule_1_A1_9889061666|
    |Implementation__c|a2R1G000001M2X4UAK|
    |OwnerId|0051G000007N0sZ|
    |Plan__c|a2o1G000000oQW5QAM|
    |Priority|Medium|
    |RecordTypeId|01237000000AZr4AAG|
    |Subject|formula_3_myRule_1_A1_8741666743|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

