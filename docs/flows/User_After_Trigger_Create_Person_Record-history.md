# User_After_Trigger_Create_Person_Record history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](User_After_Trigger_Create_Person_Record-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "368939812"
    
    Does_Person_Exist{"🔀 <em></em><br/>Does Person Exist?"}:::decisions
    click Does_Person_Exist "#does_person_exist" "2317507246"
    
    Make_Person[("➕ <em></em><br/>Make Person")]:::recordCreates
    click Make_Person "#make_person" "2708052869"
    
    Delete_Person[("🗑️ <em></em><br/>Delete Person")]:::recordDeletes
    click Delete_Person "#delete_person" "1189613700"
    
    Get_Person[("🔍 <em></em><br/>Get Person")]:::recordLookups
    click Get_Person "#get_person" "3040932738"
    
    Get_User[("🔍 <em></em><br/>Get User")]:::recordLookups
    click Get_User "#get_user" "1290257873"
    
    Does_Person_Exist --> |"Yes, but Inactive"| Delete_Person
    Does_Person_Exist --> |"No"| Make_Person
    Make_Person --> END_Make_Person
    Delete_Person --> END_Delete_Person
    Get_Person --> Does_Person_Exist
    Get_User --> Get_Person
    START --> |"Run Immediately"| Get_User
    END_Make_Person(( END )):::endClass
    END_Delete_Person(( END )):::endClass
    
    
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
    |Object|User|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create And Update|
    |Label|User | After Trigger | Create Person Record|
    |Status|Active|
    |Description|Used for splitting/re-assigning cases and people to queues|
    |Environments|Default|
    |Interview Label|Move User to Person {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    
    
    #### Scheduled Paths
    
    |Label|Name|Offset Number|Offset Unit|Record Field|Time Source|Connector|
    |:-- |:-- |:-- |:-- |:-- |:-- |:--  |
    |<!-- -->|<!-- -->|<!-- -->|<!-- -->|<!-- -->|<!-- -->|[Get_User](#get_user)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|IsActive| Is Changed|✅|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |PersonRecord|SObject|⬜|✅|✅|Person__c|<!-- -->|
    |userId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |OneMinute|DateTime|Now() + (1/1440)|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Does_Person_Exist
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Does Person Exist?|
    |Default Connector|[Make_Person](#make_person)|
    |Default Connector Label|No|
    
    
    #### Rule YesPerson (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|PersonRecord| Is Null|⬜|
    |2|$Record.IsActive| Equal To|✅|
    
    
    
    
    #### Rule Yes_but_Inactive (Yes, but Inactive)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Delete_Person](#delete_person)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|PersonRecord| Is Null|⬜|
    |2|$Record.IsActive| Equal To|⬜|
    
    
    
    
    #### Rule No_but_Inactive (No, but Inactive)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|PersonRecord| Is Null|✅|
    |2|$Record.IsActive| Equal To|⬜|
    
    
    
    
    ### Make_Person
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Person__c|
    |Label|Make Person|
    |Store Output Automatically|✅|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |ID__c|$Record.Id|
    |Name|Get_User.Name|
    
    
    
    
    ### Delete_Person
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Delete|
    |Label|Delete Person|
    |Input Reference|PersonRecord|
    
    
    ### Get_Person
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Person__c|
    |Label|Get Person|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|PersonRecord|
    |Queried Fields|- Id<br/>- ID__c<br/>- Name<br/>|
    |Connector|[Does_Person_Exist](#does_person_exist)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|ID__c| Equal To|$Record.Id|
    
    
    
    
    ### Get_User
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|User|
    |Label|Get User|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Get_Person](#get_person)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$Record.Id|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

