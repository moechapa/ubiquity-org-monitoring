# Task_Before_Update_Account_Link history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Task_Before_Update_Account_Link-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record Before Save</b>"]):::startClass
    click START "#general-information" "313233854"
    
    Account_Id_From_Standard[\"🟰 <em></em><br/>Account Id From Standard"/]:::assignments
    click Account_Id_From_Standard "#account_id_from_standard" "2419840267"
    
    Assign_Account_Id[\"🟰 <em></em><br/>Assign Account Id"/]:::assignments
    click Assign_Account_Id "#assign_account_id" "1482313331"
    
    Account_Link_Required{"🔀 <em></em><br/>Account Link Required"}:::decisions
    click Account_Link_Required "#account_link_required" "3393096963"
    
    Get_Case[("🔍 <em></em><br/>Get Case")]:::recordLookups
    click Get_Case "#get_case" "2008561877"
    
    Get_Contact[("🔍 <em></em><br/>Get Contact")]:::recordLookups
    click Get_Contact "#get_contact" "3675760626"
    
    Get_Imp[("🔍 <em></em><br/>Get Imp")]:::recordLookups
    click Get_Imp "#get_imp" "3539882629"
    
    Account_Id_From_Standard --> Assign_Account_Id
    Assign_Account_Id --> END_Assign_Account_Id
    Account_Link_Required --> |"Standard Field Present"| Account_Id_From_Standard
    Account_Link_Required --> |"Imp Linked"| Get_Imp
    Account_Link_Required --> |"Case Linked"| Get_Case
    Account_Link_Required --> |"Name Linked"| Get_Contact
    Account_Link_Required --> |"Default Outcome"| END_Account_Link_Required
    Get_Case --> Assign_Account_Id
    Get_Contact --> Assign_Account_Id
    Get_Imp --> Assign_Account_Id
    START -->  Account_Link_Required
    END_Assign_Account_Id(( END )):::endClass
    END_Account_Link_Required(( END )):::endClass
    
    
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
    |Object|Task|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record Before Save|
    |Record Trigger Type| Create And Update|
    |Label|Task | Before Update | Account Link|
    |Status|Active|
    |Description|Updated to mirror standard field first, and removed unnecessary decision conditions|
    |Environments|Default|
    |Interview Label|Task | Before Update | Account Link {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Account_Link_Required](#account_link_required)|
    |Next Node|[Account_Link_Required](#account_link_required)|
    
    
    #### Filters (logic: **1 AND (2 OR 3 OR 4)**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Account__c| Is Null|<!-- -->|
    |2|WhatId| Is Null|<!-- -->|
    |3|WhoId| Is Null|<!-- -->|
    |4|AccountId| Is Null|<!-- -->|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |accountId|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |today|Date|TODAY()|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Account_Id_From_Standard
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Account Id From Standard|
    |Connector|[Assign_Account_Id](#assign_account_id)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |accountId| Assign|$Record.AccountId|
    
    
    
    
    ### Assign_Account_Id
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Account Id|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Account__c| Assign|accountId|
    
    
    
    
    ### Account_Link_Required
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Account Link Required|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Standard_Field_Present (Standard Field Present)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Account_Id_From_Standard](#account_id_from_standard)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.AccountId| Is Blank|⬜|
    
    
    
    
    #### Rule Imp_Linked (Imp Linked)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Imp](#get_imp)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.WhatId| Starts With|a2R|
    |2|$Record.WhatId| Is Null|⬜|
    
    
    
    
    #### Rule Case_Linked (Case Linked)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Case](#get_case)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.WhatId| Starts With|500|
    |2|$Record.WhatId| Is Null|⬜|
    
    
    
    
    #### Rule Name_Linked (Name Linked)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Contact](#get_contact)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.WhoId| Is Null|⬜|
    |2|$Record.WhoId| Starts With|3|
    
    
    
    
    ### Get_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Case|
    |Label|Get Case|
    |Assign Null Values If No Records Found|✅|
    |Output Assignments|assignToReference: accountId<br/>field: AccountId<br/>|
    |Connector|[Assign_Account_Id](#assign_account_id)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$Record.WhatId|
    
    
    
    
    ### Get_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Get Contact|
    |Assign Null Values If No Records Found|✅|
    |Output Assignments|assignToReference: accountId<br/>field: AccountId<br/>|
    |Connector|[Assign_Account_Id](#assign_account_id)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$Record.WhoId|
    
    
    
    
    ### Get_Imp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Implementation__c|
    |Label|Get Imp|
    |Assign Null Values If No Records Found|✅|
    |Output Assignments|assignToReference: accountId<br/>field: Account__c<br/>|
    |Connector|[Assign_Account_Id](#assign_account_id)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$Record.WhatId|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

