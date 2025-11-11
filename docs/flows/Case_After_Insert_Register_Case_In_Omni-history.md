# Case_After_Insert_Register_Case_In_Omni history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Case_After_Insert_Register_Case_In_Omni-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "1970093162"
    
    Check_If_Omni_Case_User{"🔀 <em></em><br/>Check If Omni Case User"}:::decisions
    click Check_If_Omni_Case_User "#check_if_omni_case_user" "4233296682"
    
    Create_Pending_Routing[("➕ <em></em><br/>Create Pending Routing")]:::recordCreates
    click Create_Pending_Routing "#create_pending_routing" "2070669311"
    
    Get_Case_Service_Channel_Id[("🔍 <em></em><br/>Get Case Service Channel Id")]:::recordLookups
    click Get_Case_Service_Channel_Id "#get_case_service_channel_id" "3111765806"
    
    Get_Default_Routing_Configuration[("🔍 <em></em><br/>Get Default Routing Configuration")]:::recordLookups
    click Get_Default_Routing_Configuration "#get_default_routing_configuration" "1762453324"
    
    Get_Omni_Case_Permission_Set[("🔍 <em></em><br/>Get Omni Case Permission Set")]:::recordLookups
    click Get_Omni_Case_Permission_Set "#get_omni_case_permission_set" "3331363423"
    
    Get_Permission_Asisgnment[("🔍 <em></em><br/>Get Permission Asisgnment")]:::recordLookups
    click Get_Permission_Asisgnment "#get_permission_asisgnment" "3723745543"
    
    Check_If_Omni_Case_User --> |"Is Omni Case User"| Get_Case_Service_Channel_Id
    Check_If_Omni_Case_User --> |"Default Outcome"| END_Check_If_Omni_Case_User
    Create_Pending_Routing --> END_Create_Pending_Routing
    Get_Case_Service_Channel_Id --> Get_Default_Routing_Configuration
    Get_Default_Routing_Configuration --> Create_Pending_Routing
    Get_Omni_Case_Permission_Set --> Get_Permission_Asisgnment
    Get_Permission_Asisgnment --> Check_If_Omni_Case_User
    START -->  Get_Omni_Case_Permission_Set
    END_Check_If_Omni_Case_User(( END )):::endClass
    END_Create_Pending_Routing(( END )):::endClass
    
    
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
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create|
    |Label|Case | After Insert | Register Case In Omni|
    |Status|Active|
    |Filter Formula|{!$Record.CreatedById} = {!$Record.OwnerId} && NOT(ISPICKVAL({!$Record.Status},'Resolved'))|
    |Description|Creates pending omni routing for cases manually created by omni case user.|
    |Environments|Default|
    |Interview Label|Case | After Insert | Register Case In Omni {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Omni_Case_Permission_Set](#get_omni_case_permission_set)|
    |Next Node|[Get_Omni_Case_Permission_Set](#get_omni_case_permission_set)|
    
    
    ## Flow Nodes Details
    
    ### Check_If_Omni_Case_User
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check If Omni Case User|
    |Description|Is the running user (created and owns the case) an omni case user?|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Is_Omni_Case_User (Is Omni Case User)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Case_Service_Channel_Id](#get_case_service_channel_id)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|[Get_Permission_Asisgnment](#get_permission_asisgnment)| Is Null|⬜|
    
    
    
    
    ### Create_Pending_Routing
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|PendingServiceRouting|
    |Label|Create Pending Routing|
    |Store Output Automatically|✅|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |CapacityPercentage|Get_Default_Routing_Configuration.CapacityPercentage|
    |CapacityWeight|Get_Default_Routing_Configuration.CapacityWeight|
    |IsInterruptible|✅|
    |IsPreferredUserRequired|✅|
    |PausedCapacityPercentage|Get_Default_Routing_Configuration.PausedCapacityPercentage|
    |PausedCapacityWeight|Get_Default_Routing_Configuration.PausedCapacityWeight|
    |PreferredUserId|$User.Id|
    |RoutingPriority|Get_Default_Routing_Configuration.RoutingPriority|
    |RoutingType|SkillsBased|
    |ServiceChannelId|Get_Case_Service_Channel_Id.Id|
    |WorkItemId|$Record.Id|
    
    
    
    
    ### Get_Case_Service_Channel_Id
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|ServiceChannel|
    |Label|Get Case Service Channel Id|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|Id|
    |Store Output Automatically|✅|
    |Connector|[Get_Default_Routing_Configuration](#get_default_routing_configuration)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|RelatedEntity| Equal To|Case|
    
    
    
    
    ### Get_Default_Routing_Configuration
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|QueueRoutingConfig|
    |Label|Get Default Routing Configuration|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|- Id<br/>- CapacityPercentage<br/>- CapacityWeight<br/>- PausedCapacityPercentage<br/>- PausedCapacityWeight<br/>- RoutingPriority<br/>|
    |Store Output Automatically|✅|
    |Connector|[Create_Pending_Routing](#create_pending_routing)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|DeveloperName| Equal To|General_Case|
    
    
    
    
    ### Get_Omni_Case_Permission_Set
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|PermissionSet|
    |Label|Get Omni Case Permission Set|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|Id|
    |Store Output Automatically|✅|
    |Connector|[Get_Permission_Asisgnment](#get_permission_asisgnment)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Name| Equal To|Omni_Channel_Case_User|
    
    
    
    
    ### Get_Permission_Asisgnment
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|PermissionSetAssignment|
    |Label|Get Permission Asisgnment|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|Id|
    |Store Output Automatically|✅|
    |Connector|[Check_If_Omni_Case_User](#check_if_omni_case_user)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|AssigneeId| Equal To|$User.Id|
    |2|PermissionSetId| Equal To|Get_Omni_Case_Permission_Set.Id|
    |3|IsActive| Equal To|✅|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

