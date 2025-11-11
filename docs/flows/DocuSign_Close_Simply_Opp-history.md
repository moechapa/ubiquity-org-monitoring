# DocuSign_Close_Simply_Opp history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](DocuSign_Close_Simply_Opp-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>dsfs__DocuSign_Status__c</b></br>Type: <b>On All Changes</b>"]):::startClass
    click START "#general-information" "128839219"
    
    START --> isChangedDecision2_myRule_1_dsfs_Envelope_Status_c
    isChangedDecision2_myRule_1_dsfs_Envelope_Status_c{"🔀 <em></em><br/>isChangedDecision2_myRule_1_dsfs_Envelope_Status_c"}:::decisions
    click isChangedDecision2_myRule_1_dsfs_Envelope_Status_c "#ischangeddecision2_myrule_1_dsfs_envelope_status_c" "2308192625"
    
    myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
    click myDecision "#mydecision" "2177259805"
    
    myRule_1_A1[("🛠️ <em></em><br/>Push Imp Stage")]:::recordUpdates
    click myRule_1_A1 "#myrule_1_a1" "992731955"
    
    myRule_1_A2[("🛠️ <em></em><br/>Update Task")]:::recordUpdates
    click myRule_1_A2 "#myrule_1_a2" "2875976180"
    
    isChangedDecision2_myRule_1_dsfs_Envelope_Status_c --> |"isChangedRule_2_myRule_1_dsfs_Envelope_Status_c"| myDecision
    isChangedDecision2_myRule_1_dsfs_Envelope_Status_c --> |"default"| myDecision
    myDecision --> |"Simply AA Completed"| myRule_1_A1
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
    |Label|DocuSign | Update Simply Objects|
    |Status|⚠️ Draft|
    |Description|Close Opp/Update Imp when A4S/AA is Signed if Service Option equals Simply|
    |Interview Label|DocuSign_Close_Simply_Opp-18_InterviewLabel|
    |Start Element Reference|[isChangedDecision2_myRule_1_dsfs_Envelope_Status_c](#ischangeddecision2_myrule_1_dsfs_envelope_status_c)|
    | Object Type (PM)|dsfs__DocuSign_Status__c|
    | Object Variable (PM)|myVariable_current|
    | Old Object Variable (PM)|myVariable_old|
    | Trigger Type (PM)|onAllChanges|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |myVariable_current|SObject|⬜|✅|✅|dsfs__DocuSign_Status__c|<!-- -->|
    |myVariable_old|SObject|⬜|✅|⬜|dsfs__DocuSign_Status__c|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |formula_3_myRule_1_A2_3065040047|DateTime|{!myVariable_current.dsfs__Completed_Date_Time__c}|<!-- -->|
    |formula_4_myRule_1_A1_3568798170|Date|DATEVALUE({!myVariable_current.dsfs__Completed_Date_Time__c} )|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### isChangedDecision2_myRule_1_dsfs_Envelope_Status_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision2_myRule_1_dsfs_Envelope_Status_c](#ischangeddecision2_myrule_1_dsfs_envelope_status_c)|
    |Default Connector|[myDecision](#mydecision)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_2_myRule_1_dsfs_Envelope_Status_c (isChangedRule_2_myRule_1_dsfs_Envelope_Status_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myDecision](#mydecision)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.dsfs__Envelope_Status__c| Not Equal To|myVariable_current.dsfs__Envelope_Status__c|
    
    
    
    
    ### myDecision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision](#mydecision)|
    |Default Connector Label|default|
    |Index (PM)|numberValue: 0<br/>|
    
    
    #### Rule myRule_1 (Simply AA Completed)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_A1](#myrule_1_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Implementation__c| Is Null|⬜|
    |2|myVariable_current.dsfs__Envelope_Status__c| Equal To|Completed|
    |3|isChangedRule_2_myRule_1_dsfs_Envelope_Status_c| Equal To|✅|
    |4|myVariable_current.dsfs__Subject__c| Contains|Adoption Agreement|
    |5|myVariable_current.Implementation__r.Business_Unit__c| Equal To|Simply Retirement|
    
    
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Implementation__c|
    |Label|Push Imp Stage|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[dsfs__DocuSign_Status__c].Implementation|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myRule_1_A2](#myrule_1_a2)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Implementation__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Implementation_Stage__c|Pending Funding Account Setup|
    |Ubiquity_Plan_Documents_Signed__c|formula_4_myRule_1_A1_3568798170|
    
    
    
    
    ### myRule_1_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Project_Task__c|
    |Label|Update Task|
    |Evaluation Type (PM)|criteria|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|✅|
    |Reference (PM)|[dsfs__DocuSign_Status__c].Implementation.Implementation_Tasks__r|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Implementation__c| Equal To|myVariable_current.Implementation__c|
    |2|Project_Deliverable__c| Equal To|a1A1G0000050E3MUAU|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Actual_Completion_Date__c|formula_3_myRule_1_A2_3065040047|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

