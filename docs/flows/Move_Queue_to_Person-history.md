# Move_Queue_to_Person history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Move_Queue_to_Person-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>"]):::startClass
    click START "#general-information" "3895095272"
    
    Does_Person_Exist{"🔀 <em></em><br/>Does Person Exist?"}:::decisions
    click Does_Person_Exist "#does_person_exist" "3884394093"
    
    Queue_Exists{"🔀 <em></em><br/>Queue Exists?"}:::decisions
    click Queue_Exists "#queue_exists" "1239793570"
    
    Make_Person[("➕ <em></em><br/>Make Person")]:::recordCreates
    click Make_Person "#make_person" "2335404676"
    
    Delete_Person[("🗑️ <em></em><br/>Delete Person")]:::recordDeletes
    click Delete_Person "#delete_person" "2024407294"
    
    Get_Person[("🔍 <em></em><br/>Get Person")]:::recordLookups
    click Get_Person "#get_person" "2725935133"
    
    Get_Queue[("🔍 <em></em><br/>Get Queue")]:::recordLookups
    click Get_Queue "#get_queue" "2059456667"
    
    Does_Person_Exist --> |"Yes"| Queue_Exists
    Does_Person_Exist --> |"No"| Make_Person
    Queue_Exists --> |"No"| Delete_Person
    Make_Person --> Queue_Exists
    Delete_Person --> END_Delete_Person
    Get_Person --> Does_Person_Exist
    Get_Queue --> Get_Person
    START -->  Get_Queue
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
    |Process Type| Auto Launched Flow|
    |Label|Move Queue to Person|
    |Status|Active|
    |Interview Label|Move Queue to Person {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Queue](#get_queue)|
    |Next Node|[Get_Queue](#get_queue)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |PersonRecord|SObject|⬜|✅|✅|Person__c|<!-- -->|
    |Queue|SObject|⬜|✅|✅|QueueSobject|<!-- -->|
    |userId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    
    
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
    |Connector|[Queue_Exists](#queue_exists)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|PersonRecord| Is Null|⬜|
    
    
    
    
    ### Queue_Exists
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Queue Exists?|
    |Default Connector|[Delete_Person](#delete_person)|
    |Default Connector Label|No|
    
    
    #### Rule Yes (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Queue| Is Null|⬜|
    
    
    
    
    ### Make_Person
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Person__c|
    |Label|Make Person|
    |Store Output Automatically|✅|
    |Connector|[Queue_Exists](#queue_exists)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |ID__c|userId|
    |Name|Queue.Queue.Name|
    
    
    
    
    ### Delete_Person
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Delete|
    |Object|Person__c|
    |Label|Delete Person|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|ID__c| Equal To|userId|
    
    
    
    
    ### Get_Person
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Person__c|
    |Label|Get Person|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|PersonRecord|
    |Queried Fields|- Id<br/>- ID__c<br/>|
    |Connector|[Does_Person_Exist](#does_person_exist)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|ID__c| Equal To|userId|
    
    
    
    
    ### Get_Queue
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|QueueSobject|
    |Label|Get Queue|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|Queue|
    |Queried Fields|Id|
    |Connector|[Get_Person](#get_person)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|userId|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

