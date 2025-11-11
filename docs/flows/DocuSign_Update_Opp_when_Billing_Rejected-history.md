# DocuSign_Update_Opp_when_Billing_Rejected history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](DocuSign_Update_Opp_when_Billing_Rejected-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Opportunity</b></br>Type: <b>On All Changes</b>"]):::startClass
    click START "#general-information" "3370244247"
    
    START --> isChangedDecision2_myRule_1_Amount
    isChangedDecision2_myRule_1_Amount{"🔀 <em></em><br/>isChangedDecision2_myRule_1_Amount"}:::decisions
    click isChangedDecision2_myRule_1_Amount "#ischangeddecision2_myrule_1_amount" "2599644459"
    
    isChangedDecision5_myRule_4_Amount{"🔀 <em></em><br/>isChangedDecision5_myRule_4_Amount"}:::decisions
    click isChangedDecision5_myRule_4_Amount "#ischangeddecision5_myrule_4_amount" "246547558"
    
    myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
    click myDecision "#mydecision" "3289697325"
    
    myDecision3{"🔀 <em></em><br/>myDecision3"}:::decisions
    click myDecision3 "#mydecision3" "2822751860"
    
    myRule_1_A1[("🛠️ <em></em><br/>Update A4S")]:::recordUpdates
    click myRule_1_A1 "#myrule_1_a1" "315109670"
    
    myRule_4_A1[("🛠️ <em></em><br/>Update A4S")]:::recordUpdates
    click myRule_4_A1 "#myrule_4_a1" "2270575038"
    
    isChangedDecision2_myRule_1_Amount --> |"isChangedRule_2_myRule_1_Amount"| isChangedDecision5_myRule_4_Amount
    isChangedDecision2_myRule_1_Amount --> |"default"| isChangedDecision5_myRule_4_Amount
    isChangedDecision5_myRule_4_Amount --> |"isChangedRule_5_myRule_4_Amount"| myDecision
    isChangedDecision5_myRule_4_Amount --> |"default"| myDecision
    myDecision --> |"Amount is Changed"| myRule_1_A1
    myDecision --> |"default"| myDecision3
    myDecision3 --> |"Amount is Changed"| myRule_4_A1
    myDecision3 --> |"default"| END_myDecision3
    myRule_1_A1 --> myDecision3
    myRule_4_A1 --> END_myRule_4_A1
    END_myDecision3(( END )):::endClass
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
    |Label|DocuSign | Update Opp when Billing Rejected V1|
    |Status|⚠️ Draft|
    |Description|Resubmits A4S for Approval once Opp is revised|
    |Interview Label|DocuSign_Update_Opp_when_Billing_Rejected-5_InterviewLabel|
    |Start Element Reference|[isChangedDecision2_myRule_1_Amount](#ischangeddecision2_myrule_1_amount)|
    | Object Type (PM)|Opportunity|
    | Object Variable (PM)|myVariable_current|
    | Old Object Variable (PM)|myVariable_old|
    | Trigger Type (PM)|onAllChanges|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |myVariable_current|SObject|⬜|✅|✅|Opportunity|<!-- -->|
    |myVariable_old|SObject|⬜|✅|⬜|Opportunity|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### isChangedDecision2_myRule_1_Amount
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision2_myRule_1_Amount](#ischangeddecision2_myrule_1_amount)|
    |Default Connector|[isChangedDecision5_myRule_4_Amount](#ischangeddecision5_myrule_4_amount)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_2_myRule_1_Amount (isChangedRule_2_myRule_1_Amount)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision5_myRule_4_Amount](#ischangeddecision5_myrule_4_amount)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Amount| Not Equal To|myVariable_current.Amount|
    
    
    
    
    ### isChangedDecision5_myRule_4_Amount
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision5_myRule_4_Amount](#ischangeddecision5_myrule_4_amount)|
    |Default Connector|[myDecision](#mydecision)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_5_myRule_4_Amount (isChangedRule_5_myRule_4_Amount)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myDecision](#mydecision)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Amount| Not Equal To|myVariable_current.Amount|
    
    
    
    
    ### myDecision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision](#mydecision)|
    |Default Connector|[myDecision3](#mydecision3)|
    |Default Connector Label|default|
    |Index (PM)|numberValue: 0<br/>|
    
    
    #### Rule myRule_1 (Amount is Changed)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_A1](#myrule_1_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.A4S_Needs_Review__c| Equal To|✅|
    |2|isChangedRule_2_myRule_1_Amount| Equal To|✅|
    
    
    
    
    ### myDecision3
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision3](#mydecision3)|
    |Default Connector Label|default|
    |Index (PM)|1|
    
    
    #### Rule myRule_4 (Amount is Changed)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_4_A1](#myrule_4_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|isChangedRule_5_myRule_4_Amount| Equal To|✅|
    |2|myVariable_current.A4S_Needs_Review__c| Equal To|✅|
    
    
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|dsfs__DocuSign_Status__c|
    |Label|Update A4S|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Opportunity].A4S Document|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myDecision3](#mydecision3)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.A4S_Document__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |dsfs__Envelope_Status__c|Sent|
    
    
    
    
    ### myRule_4_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|dsfs__DocuSign_Status__c|
    |Label|Update A4S|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Opportunity].A4S Document|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.A4S_Document__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |dsfs__Envelope_Status__c|Completed|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

