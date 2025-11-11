# Support_Contact_Record_Type history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Support_Contact_Record_Type-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Contact</b></br>Type: <b>On All Changes</b>"]):::startClass
    click START "#general-information" "4176664547"
    
    START --> isChangedDecision2_myRule_1_Role_c
    isChangedDecision2_myRule_1_Role_c{"🔀 <em></em><br/>isChangedDecision2_myRule_1_Role_c"}:::decisions
    click isChangedDecision2_myRule_1_Role_c "#ischangeddecision2_myrule_1_role_c" "1929735081"
    
    isChangedDecision5_myRule_4_Role_c{"🔀 <em></em><br/>isChangedDecision5_myRule_4_Role_c"}:::decisions
    click isChangedDecision5_myRule_4_Role_c "#ischangeddecision5_myrule_4_role_c" "1494600232"
    
    myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
    click myDecision "#mydecision" "219821437"
    
    myDecision3{"🔀 <em></em><br/>myDecision3"}:::decisions
    click myDecision3 "#mydecision3" "877161250"
    
    myRule_1_A1[("🛠️ <em></em><br/>Plan Participant RT")]:::recordUpdates
    click myRule_1_A1 "#myrule_1_a1" "1221324041"
    
    myRule_4_A1[("🛠️ <em></em><br/>Ubiquity Contact RT")]:::recordUpdates
    click myRule_4_A1 "#myrule_4_a1" "291388439"
    
    isChangedDecision2_myRule_1_Role_c --> |"isChangedRule_2_myRule_1_Role_c"| isChangedDecision5_myRule_4_Role_c
    isChangedDecision2_myRule_1_Role_c --> |"default"| isChangedDecision5_myRule_4_Role_c
    isChangedDecision5_myRule_4_Role_c --> |"isChangedRule_5_myRule_4_Role_c"| myDecision
    isChangedDecision5_myRule_4_Role_c --> |"default"| myDecision
    myDecision --> |""Saver" Only Role"| myRule_1_A1
    myDecision --> |"default"| myDecision3
    myDecision3 --> |"Non Saver Role"| myRule_4_A1
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
    |Label|Support | Contact Record Type|
    |Status|Obsolete|
    |Description|Change Contact RT between Plan Participant and Ubiquity Contact when 'Contact Role' is updated|
    |Interview Label|Support_Contact_Record_Type-3_InterviewLabel|
    |Start Element Reference|[isChangedDecision2_myRule_1_Role_c](#ischangeddecision2_myrule_1_role_c)|
    | Object Type (PM)|Contact|
    | Object Variable (PM)|myVariable_current|
    | Old Object Variable (PM)|myVariable_old|
    | Trigger Type (PM)|onAllChanges|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |myVariable_current|SObject|⬜|✅|✅|Contact|<!-- -->|
    |myVariable_old|SObject|⬜|✅|⬜|Contact|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### isChangedDecision2_myRule_1_Role_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision2_myRule_1_Role_c](#ischangeddecision2_myrule_1_role_c)|
    |Default Connector|[isChangedDecision5_myRule_4_Role_c](#ischangeddecision5_myrule_4_role_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_2_myRule_1_Role_c (isChangedRule_2_myRule_1_Role_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision5_myRule_4_Role_c](#ischangeddecision5_myrule_4_role_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Role__c| Not Equal To|myVariable_current.Role__c|
    
    
    
    
    ### isChangedDecision5_myRule_4_Role_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision5_myRule_4_Role_c](#ischangeddecision5_myrule_4_role_c)|
    |Default Connector|[myDecision](#mydecision)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_5_myRule_4_Role_c (isChangedRule_5_myRule_4_Role_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myDecision](#mydecision)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Role__c| Not Equal To|myVariable_current.Role__c|
    
    
    
    
    ### myDecision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision](#mydecision)|
    |Default Connector|[myDecision3](#mydecision3)|
    |Default Connector Label|default|
    |Index (PM)|numberValue: 0<br/>|
    
    
    #### Rule myRule_1 ("Saver" Only Role)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_A1](#myrule_1_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|isChangedRule_2_myRule_1_Role_c| Equal To|✅|
    |2|myVariable_current.Role__c| Equal To|Saver|
    |3|myVariable_current.RecordTypeId| Not Equal To|01237000000TgxVAAS|
    
    
    
    
    ### myDecision3
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision3](#mydecision3)|
    |Default Connector Label|default|
    |Index (PM)|1|
    
    
    #### Rule myRule_4 (Non Saver Role)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_4_A1](#myrule_4_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|isChangedRule_5_myRule_4_Role_c| Equal To|✅|
    |2|myVariable_current.Role__c| Not Equal To|Saver|
    |3|myVariable_current.Role__c| Not Equal To|Advisor|
    |4|myVariable_current.RecordTypeId| Not Equal To|01237000000TgxVAAS|
    
    
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Contact|
    |Label|Plan Participant RT|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Contact]|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |RecordTypeId|01237000000TgxQAAS|
    
    
    
    
    ### myRule_4_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Contact|
    |Label|Ubiquity Contact RT|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Contact]|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |RecordTypeId|01237000000TgxLAAS|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

