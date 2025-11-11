# Contact_After_Trigger_Update_ETA_Records_when_Termination_Date_is_Entered history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Contact_After_Trigger_Update_ETA_Records_when_Termination_Date_is_Entered-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "1905130733"
    
    Assign_Remove_Request_Date[\"🟰 <em></em><br/>Assign Remove Request Date"/]:::assignments
    click Assign_Remove_Request_Date "#assign_remove_request_date" "817834251"
    
    Assign_to_Collection[\"🟰 <em></em><br/>Assign to Collection"/]:::assignments
    click Assign_to_Collection "#assign_to_collection" "169340390"
    
    ETA_Records_Found{"🔀 <em></em><br/>ETA Records Found"}:::decisions
    click ETA_Records_Found "#eta_records_found" "1510717856"
    
    Update_Remove_Request_Date{{"🔁 <em></em><br/>Update Remove Request Date"}}:::loops
    click Update_Remove_Request_Date "#update_remove_request_date" "3545709984"
    
    Find_ETA_Records[("🔍 <em></em><br/>Find ETA Records")]:::recordLookups
    click Find_ETA_Records "#find_eta_records" "585679747"
    
    Update_Request_Dates_on_All_ETA_Records[("🛠️ <em></em><br/>Update Request Dates on All ETA Records")]:::recordUpdates
    click Update_Request_Dates_on_All_ETA_Records "#update_request_dates_on_all_eta_records" "1282476250"
    
    Assign_Remove_Request_Date --> Assign_to_Collection
    Assign_to_Collection --> Update_Remove_Request_Date
    ETA_Records_Found --> |"Found"| Update_Remove_Request_Date
    ETA_Records_Found --> |"Default Outcome"| END_ETA_Records_Found
    Update_Remove_Request_Date --> |"For Each"|Assign_Remove_Request_Date
    Update_Remove_Request_Date ---> |"After Last"|Update_Request_Dates_on_All_ETA_Records
    Find_ETA_Records --> ETA_Records_Found
    Update_Request_Dates_on_All_ETA_Records --> END_Update_Request_Dates_on_All_ETA_Records
    START -->  Find_ETA_Records
    END_ETA_Records_Found(( END )):::endClass
    END_Update_Request_Dates_on_All_ETA_Records(( END )):::endClass
    
    
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
    |Object|Contact|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Update|
    |Label|Contact | After Trigger | Update ETA Records when Termination Date is Entered|
    |Status|Active|
    |Environments|Default|
    |Interview Label|Contact | After Trigger | Update ETA Records when Termination Date is Entered {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Find_ETA_Records](#find_eta_records)|
    |Next Node|[Find_ETA_Records](#find_eta_records)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|RecordTypeId| Equal To|01237000000TgxVAAS|
    |2|Termination_Date__c| Is Changed|✅|
    |3|Termination_Date__c| Is Null|<!-- -->|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |ETA|SObject|✅|✅|⬜|Employee_Technology_Access__c|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |Today|Date|TODAY()|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Assign_Remove_Request_Date
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Remove Request Date|
    |Connector|[Assign_to_Collection](#assign_to_collection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Update_Remove_Request_Date.Access_Removed_Requested__c| Assign|Today|
    
    
    
    
    ### Assign_to_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign to Collection|
    |Connector|[Update_Remove_Request_Date](#update_remove_request_date)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |ETA| Add|[Update_Remove_Request_Date](#update_remove_request_date)|
    
    
    
    
    ### ETA_Records_Found
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|ETA Records Found|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Found (Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Remove_Request_Date](#update_remove_request_date)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|[Find_ETA_Records](#find_eta_records)| Is Null|⬜|
    
    
    
    
    ### Update_Remove_Request_Date
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Update Remove Request Date|
    |Collection Reference|[Find_ETA_Records](#find_eta_records)|
    |Iteration Order|Asc|
    |Next Value Connector|[Assign_Remove_Request_Date](#assign_remove_request_date)|
    |No More Values Connector|[Update_Request_Dates_on_All_ETA_Records](#update_request_dates_on_all_eta_records)|
    
    
    ### Find_ETA_Records
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Employee_Technology_Access__c|
    |Label|Find ETA Records|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Queried Fields|- Id<br/>- Access_Removed_Date__c<br/>- Access_Removed_Requested__c<br/>|
    |Store Output Automatically|✅|
    |Connector|[ETA_Records_Found](#eta_records_found)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Contact__c| Equal To|$Record.Id|
    |2|Access_Removed_Requested__c| Is Null|<!-- -->|
    |3|Access_Removed_Date__c| Is Null|<!-- -->|
    
    
    
    
    ### Update_Request_Dates_on_All_ETA_Records
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Request Dates on All ETA Records|
    |Input Reference|ETA|
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

