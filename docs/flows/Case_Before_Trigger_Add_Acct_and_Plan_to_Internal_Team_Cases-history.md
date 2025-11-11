# Case_Before_Trigger_Add_Acct_and_Plan_to_Internal_Team_Cases history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Case_Before_Trigger_Add_Acct_and_Plan_to_Internal_Team_Cases-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record Before Save</b>"]):::startClass
    click START "#general-information" "3140721146"
    
    myRule_1{"🔀 <em></em><br/>BizIntel"}:::decisions
    click myRule_1 "#myrule_1" "3079398939"
    
    myRule_3{"🔀 <em></em><br/>Product Innovation"}:::decisions
    click myRule_3 "#myrule_3" "1244584798"
    
    myRule_5{"🔀 <em></em><br/>Marketing"}:::decisions
    click myRule_5 "#myrule_5" "2178950306"
    
    myRule_7{"🔀 <em></em><br/>KYC Review"}:::decisions
    click myRule_7 "#myrule_7" "1857573284"
    
    myRule_1_A1[("🛠️ <em></em><br/>Account & Plan")]:::recordUpdates
    click myRule_1_A1 "#myrule_1_a1" "27608553"
    
    myRule_3_A1[("🛠️ <em></em><br/>Account & Plan")]:::recordUpdates
    click myRule_3_A1 "#myrule_3_a1" "71682925"
    
    myRule_5_A1[("🛠️ <em></em><br/>Account & Plan")]:::recordUpdates
    click myRule_5_A1 "#myrule_5_a1" "3833801141"
    
    myRule_7_A1[("🛠️ <em></em><br/>Category")]:::recordUpdates
    click myRule_7_A1 "#myrule_7_a1" "524858980"
    
    myRule_1 --> |"TRUE_BizIntel"| myRule_1_A1
    myRule_1 --> |"FALSE_BizIntel"| myRule_3
    myRule_3 --> |"TRUE_Product Innovation"| myRule_3_A1
    myRule_3 --> |"FALSE_Product Innovation"| myRule_5
    myRule_5 --> |"TRUE_Marketing"| myRule_5_A1
    myRule_5 --> |"FALSE_Marketing"| myRule_7
    myRule_7 --> |"TRUE_KYC Review"| myRule_7_A1
    myRule_7 --> |"FALSE_KYC Review"| END_myRule_7
    myRule_1_A1 --> END_myRule_1_A1
    myRule_3_A1 --> END_myRule_3_A1
    myRule_5_A1 --> END_myRule_5_A1
    myRule_7_A1 --> END_myRule_7_A1
    START -->  myRule_1
    END_myRule_7(( END )):::endClass
    END_myRule_1_A1(( END )):::endClass
    END_myRule_3_A1(( END )):::endClass
    END_myRule_5_A1(( END )):::endClass
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
    |Object|Case|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record Before Save|
    |Record Trigger Type| Create|
    |Label|Case | Before Trigger | Add Acct and Plan to Internal Team Cases|
    |Status|Active|
    |Environments|Default|
    |Interview Label|Case | Before Trigger | Add Acct and Plan to Internal Team Cases {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    |Connector|[myRule_1](#myrule_1)|
    |Next Node|[myRule_1](#myrule_1)|
    
    
    ## Flow Nodes Details
    
    ### myRule_1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|BizIntel|
    |Default Connector|[myRule_3](#myrule_3)|
    |Default Connector Label|FALSE_BizIntel|
    
    
    #### Rule TRUE_myRule_1 (TRUE_BizIntel)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_A1](#myrule_1_a1)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Origin| Equal To|BI Inbox|
    |2|$Record.Origin| Equal To|Flow-Based Submission|
    
    
    
    
    ### myRule_3
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Product Innovation|
    |Default Connector|[myRule_5](#myrule_5)|
    |Default Connector Label|FALSE_Product Innovation|
    
    
    #### Rule TRUE_myRule_3 (TRUE_Product Innovation)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_3_A1](#myrule_3_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Origin| Equal To|Product Innovation|
    
    
    
    
    ### myRule_5
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Marketing|
    |Default Connector|[myRule_7](#myrule_7)|
    |Default Connector Label|FALSE_Marketing|
    
    
    #### Rule TRUE_myRule_5 (TRUE_Marketing)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_5_A1](#myrule_5_a1)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Origin| Equal To|Marketing Inbox|
    |2|$Record.Origin| Equal To|Flow-Based Submission|
    
    
    
    
    ### myRule_7
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|KYC Review|
    |Default Connector Label|FALSE_KYC Review|
    
    
    #### Rule TRUE_myRule_7 (TRUE_KYC Review)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_7_A1](#myrule_7_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Origin| Equal To|KYC Review|
    
    
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Account & Plan|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|0013700000JH68lAAD|
    |Plan__c|a2o1G000000oQW5QAM|
    
    
    
    
    ### myRule_3_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Account & Plan|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|0013700000JH68lAAD|
    |Plan__c|a2o1G000000oQW5QAM|
    
    
    
    
    ### myRule_5_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Account & Plan|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|0013700000JH68lAAD|
    |Plan__c|a2o1G000000oQW5QAM|
    
    
    
    
    ### myRule_7_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Category|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Category__c|KYC|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

