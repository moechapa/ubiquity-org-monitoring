# Project_Items_Confirm_Project_Items history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Project_Items_Confirm_Project_Items-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>"]):::startClass
    click START "#general-information" "3406478467"
    
    Are_Any_Project_Items_Committed{"🔀 <em></em><br/>Are Any Project Items Committed?"}:::decisions
    click Are_Any_Project_Items_Committed "#are_any_project_items_committed" "1475665480"
    
    Are_Any_Project_Items_Uncommitted{"🔀 <em></em><br/>Are Any Project Items Uncommitted?"}:::decisions
    click Are_Any_Project_Items_Uncommitted "#are_any_project_items_uncommitted" "3725152792"
    
    Item_Assigned{"🔀 <em></em><br/>Item Assigned?"}:::decisions
    click Item_Assigned "#item_assigned" "2982068341"
    
    Assignment_Check{{"🔁 <em></em><br/>Assignment Check"}}:::loops
    click Assignment_Check "#assignment_check" "4024977864"
    
    Get_Assignments[("🔍 <em></em><br/>Get Assignments")]:::recordLookups
    click Get_Assignments "#get_assignments" "1674514404"
    
    Get_Committed_Project_Items[("🔍 <em></em><br/>Get Committed Project Items")]:::recordLookups
    click Get_Committed_Project_Items "#get_committed_project_items" "2159523174"
    
    Get_Uncommitted_Project_Items[("🔍 <em></em><br/>Get Uncommitted Project Items")]:::recordLookups
    click Get_Uncommitted_Project_Items "#get_uncommitted_project_items" "2777909258"
    
    Get_Updated_Project_Item[("🔍 <em></em><br/>Get Updated Project Item")]:::recordLookups
    click Get_Updated_Project_Item "#get_updated_project_item" "1489239059"
    
    Project_Items_Confirmed[("🛠️ <em></em><br/>Project Items Confirmed")]:::recordUpdates
    click Project_Items_Confirmed "#project_items_confirmed" "218836183"
    
    Project_Items_Unconfirmed[("🛠️ <em></em><br/>Project Items Unconfirmed")]:::recordUpdates
    click Project_Items_Unconfirmed "#project_items_unconfirmed" "1642331259"
    
    Project_Items_Unconfirmed_0[("🛠️ <em></em><br/>Project Items Unconfirmed")]:::recordUpdates
    click Project_Items_Unconfirmed_0 "#project_items_unconfirmed_0" "2026606912"
    
    Project_Items_Unconfirmed_0_0[("🛠️ <em></em><br/>Project Items Unconfirmed")]:::recordUpdates
    click Project_Items_Unconfirmed_0_0 "#project_items_unconfirmed_0_0" "1857213680"
    
    Are_Any_Project_Items_Committed --> |"No"| Project_Items_Unconfirmed_0
    Are_Any_Project_Items_Committed --> |"Yes"| Assignment_Check
    Are_Any_Project_Items_Uncommitted --> |"No"| Get_Committed_Project_Items
    Are_Any_Project_Items_Uncommitted --> |"Yes"| Project_Items_Unconfirmed
    Item_Assigned --> |"Not Assigned"| Project_Items_Unconfirmed_0_0
    Item_Assigned --> |"Assigned"| Assignment_Check
    Assignment_Check --> |"For Each"|Get_Assignments
    Assignment_Check ---> |"After Last"|Project_Items_Confirmed
    Get_Assignments --> Item_Assigned
    Get_Committed_Project_Items --> Are_Any_Project_Items_Committed
    Get_Uncommitted_Project_Items --> Are_Any_Project_Items_Uncommitted
    Get_Updated_Project_Item --> Get_Uncommitted_Project_Items
    Project_Items_Confirmed --> END_Project_Items_Confirmed
    Project_Items_Unconfirmed --> END_Project_Items_Unconfirmed
    Project_Items_Unconfirmed_0 --> END_Project_Items_Unconfirmed_0
    Project_Items_Unconfirmed_0_0 --> END_Project_Items_Unconfirmed_0_0
    START -->  Get_Updated_Project_Item
    END_Project_Items_Confirmed(( END )):::endClass
    END_Project_Items_Unconfirmed(( END )):::endClass
    END_Project_Items_Unconfirmed_0(( END )):::endClass
    END_Project_Items_Unconfirmed_0_0(( END )):::endClass
    
    
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
    |Label|Project Items | Confirm Project Items|
    |Status|Active|
    |Interview Label|Project Items | Confirm Project Items {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Updated_Project_Item](#get_updated_project_item)|
    |Next Node|[Get_Updated_Project_Item](#get_updated_project_item)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |assignmentCheck|SObject|⬜|✅|⬜|Project_Item_Assignments__c|<!-- -->|
    |committedItems|SObject|✅|✅|⬜|Project_Item__c|<!-- -->|
    |recordId|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |uncommittedItems|SObject|⬜|✅|⬜|Project_Item__c|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Are_Any_Project_Items_Committed
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Are Any Project Items Committed?|
    |Default Connector|[Assignment_Check](#assignment_check)|
    |Default Connector Label|Yes|
    
    
    #### Rule NoneCommitted (No)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Project_Items_Unconfirmed_0](#project_items_unconfirmed_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|committedItems| Is Null|✅|
    
    
    
    
    ### Are_Any_Project_Items_Uncommitted
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Are Any Project Items Uncommitted?|
    |Default Connector|[Project_Items_Unconfirmed](#project_items_unconfirmed)|
    |Default Connector Label|Yes|
    
    
    #### Rule No (No)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Committed_Project_Items](#get_committed_project_items)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|uncommittedItems.Id| Is Null|✅|
    
    
    
    
    ### Item_Assigned
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Item Assigned?|
    |Default Connector|[Assignment_Check](#assignment_check)|
    |Default Connector Label|Assigned|
    
    
    #### Rule Not_Assigned (Not Assigned)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Project_Items_Unconfirmed_0_0](#project_items_unconfirmed_0_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|assignmentCheck.Id| Is Null|✅|
    
    
    
    
    ### Assignment_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Assignment Check|
    |Collection Reference|committedItems|
    |Iteration Order|Asc|
    |Next Value Connector|[Get_Assignments](#get_assignments)|
    |No More Values Connector|[Project_Items_Confirmed](#project_items_confirmed)|
    
    
    ### Get_Assignments
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Project_Item_Assignments__c|
    |Label|Get Assignments|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|assignmentCheck|
    |Queried Fields|Id|
    |Connector|[Item_Assigned](#item_assigned)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Complex_Project__c| Equal To|Get_Updated_Project_Item.Complex_Project__c|
    |2|Item_Assignment__c| Equal To|Assignment_Check.Id|
    
    
    
    
    ### Get_Committed_Project_Items
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Project_Item__c|
    |Label|Get Committed Project Items|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|committedItems|
    |Queried Fields|Id|
    |Connector|[Are_Any_Project_Items_Committed](#are_any_project_items_committed)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Status__c| Equal To|Rejected|
    |2|Status__c| Equal To|On Hold|
    |3|Status__c| Equal To|Committed|
    |4|Complex_Project__c| Equal To|Get_Updated_Project_Item.Complex_Project__c|
    
    
    
    
    ### Get_Uncommitted_Project_Items
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Project_Item__c|
    |Label|Get Uncommitted Project Items|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|uncommittedItems|
    |Queried Fields|Id|
    |Connector|[Are_Any_Project_Items_Uncommitted](#are_any_project_items_uncommitted)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Status__c| Not Equal To|Rejected|
    |2|Status__c| Not Equal To|On Hold|
    |3|Status__c| Not Equal To|Committed|
    |4|Complex_Project__c| Equal To|Get_Updated_Project_Item.Complex_Project__c|
    
    
    
    
    ### Get_Updated_Project_Item
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Project_Item__c|
    |Label|Get Updated Project Item|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Get_Uncommitted_Project_Items](#get_uncommitted_project_items)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Project_Items_Confirmed
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Complex_Project__c|
    |Label|Project Items Confirmed|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Updated_Project_Item.Complex_Project__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Project_Items_Confirmed__c|✅|
    
    
    
    
    ### Project_Items_Unconfirmed
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Complex_Project__c|
    |Label|Project Items Unconfirmed|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Updated_Project_Item.Complex_Project__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Project_Items_Confirmed__c|⬜|
    
    
    
    
    ### Project_Items_Unconfirmed_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Complex_Project__c|
    |Label|Project Items Unconfirmed|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Updated_Project_Item.Complex_Project__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Project_Items_Confirmed__c|⬜|
    
    
    
    
    ### Project_Items_Unconfirmed_0_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Complex_Project__c|
    |Label|Project Items Unconfirmed|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Updated_Project_Item.Complex_Project__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Project_Items_Confirmed__c|⬜|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

