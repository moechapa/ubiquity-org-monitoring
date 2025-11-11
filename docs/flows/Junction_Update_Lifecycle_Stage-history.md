# Junction_Update_Lifecycle_Stage history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Junction_Update_Lifecycle_Stage-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Associated_Contact__c</b></br>Type: <b>On All Changes</b>"]):::startClass
    click START "#general-information" "2819924861"
    
    START --> isChangedDecision4_myRule_3_Opportunity_c
    isChangedDecision4_myRule_3_Opportunity_c{"🔀 <em></em><br/>isChangedDecision4_myRule_3_Opportunity_c"}:::decisions
    click isChangedDecision4_myRule_3_Opportunity_c "#ischangeddecision4_myrule_3_opportunity_c" "451337988"
    
    isChangedDecision5_myRule_3_Implementation_c{"🔀 <em></em><br/>isChangedDecision5_myRule_3_Implementation_c"}:::decisions
    click isChangedDecision5_myRule_3_Implementation_c "#ischangeddecision5_myrule_3_implementation_c" "2869666760"
    
    isChangedDecision6_myRule_3_Plan_c{"🔀 <em></em><br/>isChangedDecision6_myRule_3_Plan_c"}:::decisions
    click isChangedDecision6_myRule_3_Plan_c "#ischangeddecision6_myrule_3_plan_c" "4120062464"
    
    isChangedDecision7_myRule_3_Account_c{"🔀 <em></em><br/>isChangedDecision7_myRule_3_Account_c"}:::decisions
    click isChangedDecision7_myRule_3_Account_c "#ischangeddecision7_myrule_3_account_c" "3907740874"
    
    myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
    click myDecision "#mydecision" "3393245677"
    
    myDecision2{"🔀 <em></em><br/>myDecision2"}:::decisions
    click myDecision2 "#mydecision2" "2295698469"
    
    myDecision8{"🔀 <em></em><br/>myDecision8"}:::decisions
    click myDecision8 "#mydecision8" "3827671944"
    
    myRule_1_pmetdec{"🔀 <em></em><br/>Previously Met Decision"}:::decisions
    click myRule_1_pmetdec "#myrule_1_pmetdec" "932781395"
    
    myRule_1_A1[("🛠️ <em></em><br/>Update Current Client Name")]:::recordUpdates
    click myRule_1_A1 "#myrule_1_a1" "506653099"
    
    myRule_3_A1[("🛠️ <em></em><br/>Survey Link Updates")]:::recordUpdates
    click myRule_3_A1 "#myrule_3_a1" "2106072030"
    
    myRule_9_A1[("🛠️ <em></em><br/>Update Imp Owner")]:::recordUpdates
    click myRule_9_A1 "#myrule_9_a1" "2004064221"
    
    isChangedDecision4_myRule_3_Opportunity_c --> |"isChangedRule_4_myRule_3_Opportunity_c"| isChangedDecision5_myRule_3_Implementation_c
    isChangedDecision4_myRule_3_Opportunity_c --> |"default"| isChangedDecision5_myRule_3_Implementation_c
    isChangedDecision5_myRule_3_Implementation_c --> |"isChangedRule_5_myRule_3_Implementation_c"| isChangedDecision6_myRule_3_Plan_c
    isChangedDecision5_myRule_3_Implementation_c --> |"default"| isChangedDecision6_myRule_3_Plan_c
    isChangedDecision6_myRule_3_Plan_c --> |"isChangedRule_6_myRule_3_Plan_c"| isChangedDecision7_myRule_3_Account_c
    isChangedDecision6_myRule_3_Plan_c --> |"default"| isChangedDecision7_myRule_3_Account_c
    isChangedDecision7_myRule_3_Account_c --> |"isChangedRule_7_myRule_3_Account_c"| myDecision
    isChangedDecision7_myRule_3_Account_c --> |"default"| myDecision
    myDecision --> |"Imp Present"| myRule_1_pmetdec
    myDecision --> |"default"| myDecision2
    myDecision2 --> |"Contact Survey Updates"| myRule_3_A1
    myDecision2 --> |"default"| myDecision8
    myDecision8 --> |"Owner is Person"| myRule_9_A1
    myDecision8 --> |"default"| END_myDecision8
    myRule_1_pmetdec --> |"Previously Met - Null"| myRule_1_A1
    myRule_1_pmetdec --> |"Previously Met - Prev"| myDecision2
    myRule_1_pmetdec --> |"Not Previously Met"| myRule_1_A1
    myRule_1_A1 --> myDecision2
    myRule_3_A1 --> myDecision8
    myRule_9_A1 --> END_myRule_9_A1
    END_myDecision8(( END )):::endClass
    END_myRule_9_A1(( END )):::endClass
    
    
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
    |Label|Junction | Lifecycle Updates|
    |Status|Obsolete|
    |Interview Label|Junction_Update_Lifecycle_Stage-22_InterviewLabel|
    |Start Element Reference|[isChangedDecision4_myRule_3_Opportunity_c](#ischangeddecision4_myrule_3_opportunity_c)|
    | Object Type (PM)|Associated_Contact__c|
    | Object Variable (PM)|myVariable_current|
    | Old Object Variable (PM)|myVariable_old|
    | Trigger Type (PM)|onAllChanges|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |myVariable_current|SObject|⬜|✅|✅|Associated_Contact__c|<!-- -->|
    |myVariable_old|SObject|⬜|✅|⬜|Associated_Contact__c|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### isChangedDecision4_myRule_3_Opportunity_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision4_myRule_3_Opportunity_c](#ischangeddecision4_myrule_3_opportunity_c)|
    |Default Connector|[isChangedDecision5_myRule_3_Implementation_c](#ischangeddecision5_myrule_3_implementation_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_4_myRule_3_Opportunity_c (isChangedRule_4_myRule_3_Opportunity_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision5_myRule_3_Implementation_c](#ischangeddecision5_myrule_3_implementation_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Opportunity__c| Not Equal To|myVariable_current.Opportunity__c|
    
    
    
    
    ### isChangedDecision5_myRule_3_Implementation_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision5_myRule_3_Implementation_c](#ischangeddecision5_myrule_3_implementation_c)|
    |Default Connector|[isChangedDecision6_myRule_3_Plan_c](#ischangeddecision6_myrule_3_plan_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_5_myRule_3_Implementation_c (isChangedRule_5_myRule_3_Implementation_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision6_myRule_3_Plan_c](#ischangeddecision6_myrule_3_plan_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Implementation__c| Not Equal To|myVariable_current.Implementation__c|
    
    
    
    
    ### isChangedDecision6_myRule_3_Plan_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision6_myRule_3_Plan_c](#ischangeddecision6_myrule_3_plan_c)|
    |Default Connector|[isChangedDecision7_myRule_3_Account_c](#ischangeddecision7_myrule_3_account_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_6_myRule_3_Plan_c (isChangedRule_6_myRule_3_Plan_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision7_myRule_3_Account_c](#ischangeddecision7_myrule_3_account_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Plan__c| Not Equal To|myVariable_current.Plan__c|
    
    
    
    
    ### isChangedDecision7_myRule_3_Account_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision7_myRule_3_Account_c](#ischangeddecision7_myrule_3_account_c)|
    |Default Connector|[myDecision](#mydecision)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_7_myRule_3_Account_c (isChangedRule_7_myRule_3_Account_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myDecision](#mydecision)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Account__c| Not Equal To|myVariable_current.Account__c|
    
    
    
    
    ### myDecision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision](#mydecision)|
    |Default Connector|[myDecision2](#mydecision2)|
    |Default Connector Label|default|
    |Index (PM)|numberValue: 0<br/>|
    
    
    #### Rule myRule_1 (Imp Present)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_pmetdec](#myrule_1_pmetdec)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Implementation__c| Is Null|⬜|
    
    
    
    
    ### myDecision2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision2](#mydecision2)|
    |Default Connector|[myDecision8](#mydecision8)|
    |Default Connector Label|default|
    |Index (PM)|1|
    
    
    #### Rule myRule_3 (Contact Survey Updates)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_3_A1](#myrule_3_a1)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|isChangedRule_4_myRule_3_Opportunity_c| Equal To|✅|
    |2|isChangedRule_5_myRule_3_Implementation_c| Equal To|✅|
    |3|isChangedRule_6_myRule_3_Plan_c| Equal To|✅|
    |4|isChangedRule_7_myRule_3_Account_c| Equal To|✅|
    
    
    
    
    ### myDecision8
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision8](#mydecision8)|
    |Default Connector Label|default|
    |Index (PM)|2|
    
    
    #### Rule myRule_9 (Owner is Person)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_9_A1](#myrule_9_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Implementation__c| Is Null|⬜|
    |2|myVariable_current.Implementation__r.OwnerId| Starts With|5|
    
    
    
    
    ### myRule_1_pmetdec
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Previously Met Decision|
    |Default Connector|[myRule_1_A1](#myrule_1_a1)|
    |Default Connector Label|Not Previously Met|
    
    
    #### Rule myRule_1_pmetnullrule (Previously Met - Null)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_A1](#myrule_1_a1)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|✅|
    
    
    
    
    #### Rule myRule_1_pmetrule (Previously Met - Prev)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myDecision2](#mydecision2)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old.Implementation__c| Is Null|⬜|
    
    
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Contact|
    |Label|Update Current Client Name|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Associated_Contact__c].Contact|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myDecision2](#mydecision2)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Contact__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Current_Client__c|myVariable_current.Implementation__r.Account__r.Name|
    
    
    
    
    ### myRule_3_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Contact|
    |Label|Survey Link Updates|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Associated_Contact__c].Contact|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myDecision8](#mydecision8)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Contact__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Kotapay_Survey_Link__c|myVariable_current.Kotapay_Survey_Link__c|
    |PayKon_Welcome_Survey__c|myVariable_current.PayKon_Welcome_Survey__c|
    |Text_Opt_In_Survey_Link__c|myVariable_current.Text_Opt_Survey__c|
    
    
    
    
    ### myRule_9_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Contact|
    |Label|Update Imp Owner|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Associated_Contact__c].Contact|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Contact__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Implementations_User__c|myVariable_current.Implementation__r.OwnerId|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

