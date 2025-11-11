# Case_After_Update_Delete_Pending_Routing history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Case_After_Update_Delete_Pending_Routing-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "1202284201"
    
    Check_if_Pending_Routing_Found{"🔀 <em></em><br/>Check if Pending Routing Found"}:::decisions
    click Check_if_Pending_Routing_Found "#check_if_pending_routing_found" "4134951178"
    
    Kill[("🗑️ <em></em><br/>Kill")]:::recordDeletes
    click Kill "#kill" "4144742804"
    
    Get_User_Locked_Routing[("🔍 <em></em><br/>Get User Locked Routing")]:::recordLookups
    click Get_User_Locked_Routing "#get_user_locked_routing" "3045053066"
    
    Check_if_Pending_Routing_Found --> |"Pending Routing Spotted"| Kill
    Check_if_Pending_Routing_Found --> |"Default Outcome"| END_Check_if_Pending_Routing_Found
    Kill --> END_Kill
    Get_User_Locked_Routing --> Check_if_Pending_Routing_Found
    START -->  Get_User_Locked_Routing
    END_Check_if_Pending_Routing_Found(( END )):::endClass
    END_Kill(( END )):::endClass
    
    
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
    |Record Trigger Type| Update|
    |Label|Case | After Update | Delete Pending Routing|
    |Status|Active|
    |Filter Formula|ISCHANGED({!$Record.OwnerId}) && {!$Record.CreatedById} = {!$Record__Prior.OwnerId}|
    |Description|Deletes any PendingServiceRouting records created by "Register Case In Omni" flow when owner is changed.  Useful for when an inbound phone call case is created, then transferred to another user or non omni (slow, bad) queue.|
    |Environments|Default|
    |Interview Label|Case | After Update | Delete Pending Routing {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_User_Locked_Routing](#get_user_locked_routing)|
    |Next Node|[Get_User_Locked_Routing](#get_user_locked_routing)|
    
    
    ## Flow Nodes Details
    
    ### Check_if_Pending_Routing_Found
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check if Pending Routing Found|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Pending_Routing_Spotted (Pending Routing Spotted)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Kill](#kill)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|[Get_User_Locked_Routing](#get_user_locked_routing)| Is Empty|⬜|
    
    
    
    
    ### Kill
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Delete|
    |Label|[Kill](#kill)|
    |Input Reference|[Get_User_Locked_Routing](#get_user_locked_routing)|
    
    
    ### Get_User_Locked_Routing
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|PendingServiceRouting|
    |Label|Get User Locked Routing|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Queried Fields|Id|
    |Store Output Automatically|✅|
    |Connector|[Check_if_Pending_Routing_Found](#check_if_pending_routing_found)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|PreferredUserId| Equal To|$Record__Prior.OwnerId|
    |2|IsPreferredUserRequired| Equal To|✅|
    |3|WorkItemId| Equal To|$Record.Id|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

