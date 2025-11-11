# Lead_Update_Partner_Status_on_Contact_1 history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Lead_Update_Partner_Status_on_Contact_1-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "1143879836"
    
    myRule_1{"🔀 <em></em><br/>Contact Associated"}:::decisions
    click myRule_1 "#myrule_1" "1111807564"
    
    myRule_3{"🔀 <em></em><br/>Contact Associated, No Prior Lead"}:::decisions
    click myRule_3 "#myrule_3" "2745277462"
    
    myRule_5{"🔀 <em></em><br/>Recent Associated Contact"}:::decisions
    click myRule_5 "#myrule_5" "4165637256"
    
    myRule_8{"🔀 <em></em><br/>Old Association"}:::decisions
    click myRule_8 "#myrule_8" "3338112884"
    
    myRule_3_A1[("🛠️ <em></em><br/>Fill "Latest Lead Referred Date"")]:::recordUpdates
    click myRule_3_A1 "#myrule_3_a1" "1378813320"
    
    myRule_5_A1[("🛠️ <em></em><br/>Update Partner Status")]:::recordUpdates
    click myRule_5_A1 "#myrule_5_a1" "3082544036"
    
    myRule_8_A1[("🛠️ <em></em><br/>Update Partner Status")]:::recordUpdates
    click myRule_8_A1 "#myrule_8_a1" "1916528482"
    
    Update_Related_Contact[("🛠️ <em></em><br/>Update Related Contact")]:::recordUpdates
    click Update_Related_Contact "#update_related_contact" "167262063"
    
    myRule_1 --> |"TRUE_Contact Associated"| Update_Related_Contact
    myRule_1 --> |"FALSE_Contact Associated"| myRule_3
    myRule_3 --> |"TRUE_Contact Associated, No Prior Lead"| myRule_3_A1
    myRule_3 --> |"FALSE_Contact Associated, No Prior Lead"| myRule_5
    myRule_5 --> |"TRUE_Recent Associated Contact"| myRule_5_A1
    myRule_5 --> |"FALSE_Recent Associated Contact"| myRule_8
    myRule_8 --> |"TRUE_Old Association"| myRule_8_A1
    myRule_8 --> |"FALSE_Old Association"| END_myRule_8
    myRule_3_A1 --> myRule_5
    myRule_5_A1 --> END_myRule_5_A1
    myRule_8_A1 --> END_myRule_8_A1
    Update_Related_Contact --> myRule_3
    START -->  myRule_1
    END_myRule_8(( END )):::endClass
    END_myRule_5_A1(( END )):::endClass
    END_myRule_8_A1(( END )):::endClass
    
    
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
    |Object|Lead|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create And Update|
    |Label|Lead | Affter Update | Update Partner Status on Contact|
    |Status|Active|
    |Description|Migrated from the Lead | Update Partner Status on Contact process using multiple criteria.<br/>Updates Partner Status Field Based on "Latest Lead Referred Date"|
    |Environments|Default|
    |Interview Label|Lead | Affter Update | Update Partner Status on Contact {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    |Connector|[myRule_1](#myrule_1)|
    |Next Node|[myRule_1](#myrule_1)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |RelatedContactId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |LeadCloseDateFormula|Date|DATE(YEAR(TODAY()) - 1, MONTH(TODAY()), DAY(TODAY()))|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### myRule_1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Contact Associated|
    |Default Connector|[myRule_3](#myrule_3)|
    |Default Connector Label|FALSE_Contact Associated|
    
    
    #### Rule TRUE_myRule_1 (TRUE_Contact Associated)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Related_Contact](#update_related_contact)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Associated_Contact__c| Is Null|⬜|
    |2|$Record.Associated_Contact__r.Latest_Lead_Referred_Date__c| Is Null|⬜|
    
    
    
    
    ### myRule_3
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Contact Associated, No Prior Lead|
    |Default Connector|[myRule_5](#myrule_5)|
    |Default Connector Label|FALSE_Contact Associated, No Prior Lead|
    
    
    #### Rule TRUE_myRule_3 (TRUE_Contact Associated, No Prior Lead)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_3_A1](#myrule_3_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Associated_Contact__c| Is Null|⬜|
    |2|$Record.Associated_Contact__r.Latest_Lead_Referred_Date__c| Is Null|✅|
    
    
    
    
    ### myRule_5
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Recent Associated Contact|
    |Default Connector|[myRule_8](#myrule_8)|
    |Default Connector Label|FALSE_Recent Associated Contact|
    
    
    #### Rule TRUE_myRule_5 (TRUE_Recent Associated Contact)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_5_A1](#myrule_5_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Associated_Contact__c| Is Null|⬜|
    |2|$Record.Lead_Close_Date__c| Greater Than Or Equal To|LeadCloseDateFormula|
    |3|$Record.Associated_Contact__c| Is Null|⬜|
    |4|$Record.Associated_Contact__r.Partner_Status__c| Not Equal To|Inactive|
    
    
    
    
    ### myRule_8
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Old Association|
    |Default Connector Label|FALSE_Old Association|
    
    
    #### Rule TRUE_myRule_8 (TRUE_Old Association)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_8_A1](#myrule_8_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Associated_Contact__c| Is Null|⬜|
    |2|$Record.Lead_Close_Date__c| Less Than|LeadCloseDateFormula|
    |3|$Record.Associated_Contact__c| Is Null|⬜|
    |4|$Record.Associated_Contact__r.Partner_Status__c| Not Equal To|Inactive|
    
    
    
    
    ### myRule_3_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Contact|
    |Label|Fill "Latest Lead Referred Date"|
    |Connector|[myRule_5](#myrule_5)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$Record.Associated_Contact__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Latest_Lead_Referred_Date__c|$Record.CreatedDate|
    
    
    
    
    ### myRule_5_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Partner Status|
    |Input Reference|$Record.Associated_Contact__r|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Partner_Status__c|Active Referrer|
    
    
    
    
    ### myRule_8_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Partner Status|
    |Input Reference|$Record.Associated_Contact__r|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Partner_Status__c| Not Equal To|Active Referrer|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Partner_Status__c|Passive Referrer|
    
    
    
    
    ### Update_Related_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Contact|
    |Label|Update Related Contact|
    |Connector|[myRule_3](#myrule_3)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$Record.Associated_Contact__c|
    |2|Latest_Lead_Referred_Date__c| Less Than|$Record.CreatedDate|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Latest_Lead_Referred_Date__c|$Record.CreatedDate|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

