# Contact_Match_Account_to_AC_Record history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Contact_Match_Account_to_AC_Record-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Contact</b></br>Type: <b>On All Changes</b>"]):::startClass
    click START "#general-information" "3801508987"
    
    START --> isChangedDecision2_myRule_1_AccountId
    isChangedDecision2_myRule_1_AccountId{"🔀 <em></em><br/>isChangedDecision2_myRule_1_AccountId"}:::decisions
    click isChangedDecision2_myRule_1_AccountId "#ischangeddecision2_myrule_1_accountid" "4138503524"
    
    myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
    click myDecision "#mydecision" "3138685119"
    
    myRule_1_A1[("🛠️ <em></em><br/>Update AC")]:::recordUpdates
    click myRule_1_A1 "#myrule_1_a1" "2677209032"
    
    isChangedDecision2_myRule_1_AccountId --> |"isChangedRule_2_myRule_1_AccountId"| myDecision
    isChangedDecision2_myRule_1_AccountId --> |"default"| myDecision
    myDecision --> |"Account is Changed"| myRule_1_A1
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
    |Label|Contact | Match Account to AC Record|
    |Status|Obsolete|
    |Description|If Contact is moved to another Account, change their Account lookup in all related Associated Contacts|
    |Interview Label|Contact_Match_Account_to_AC_Record-1_InterviewLabel|
    |Start Element Reference|[isChangedDecision2_myRule_1_AccountId](#ischangeddecision2_myrule_1_accountid)|
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
    
    ### isChangedDecision2_myRule_1_AccountId
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision2_myRule_1_AccountId](#ischangeddecision2_myrule_1_accountid)|
    |Default Connector|[myDecision](#mydecision)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_2_myRule_1_AccountId (isChangedRule_2_myRule_1_AccountId)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myDecision](#mydecision)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.AccountId| Not Equal To|myVariable_current.AccountId|
    
    
    
    
    ### myDecision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision](#mydecision)|
    |Default Connector Label|default|
    |Index (PM)|numberValue: 0<br/>|
    
    
    #### Rule myRule_1 (Account is Changed)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_A1](#myrule_1_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|isChangedRule_2_myRule_1_AccountId| Equal To|✅|
    |2|myVariable_current.AccountId| Is Null|⬜|
    
    
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Associated_Contact__c|
    |Label|Update AC|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|✅|
    |Reference (PM)|[Contact].Master_Contact_Associations__r|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Contact__c| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Account__c|myVariable_current.AccountId|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

