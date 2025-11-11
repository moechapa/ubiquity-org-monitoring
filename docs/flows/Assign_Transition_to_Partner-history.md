# Assign_Transition_to_Partner history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Assign_Transition_to_Partner-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>"]):::startClass
    click START "#general-information" "1118319988"
    
    Assign_Junction_Values[\"🟰 <em></em><br/>Assign Junction Values"/]:::assignments
    click Assign_Junction_Values "#assign_junction_values" "2852702547"
    
    Assign_to_Collection[\"🟰 <em></em><br/>Assign to Collection"/]:::assignments
    click Assign_to_Collection "#assign_to_collection" "1177756127"
    
    Junction_Loop{{"🔁 <em></em><br/>Junction Loop"}}:::loops
    click Junction_Loop "#junction_loop" "902110619"
    
    Get_Junction[("🔍 <em></em><br/>Get Junction")]:::recordLookups
    click Get_Junction "#get_junction" "2137579427"
    
    Get_Plan[("🔍 <em></em><br/>Get Plan")]:::recordLookups
    click Get_Plan "#get_plan" "2180222543"
    
    Get_Transition[("🔍 <em></em><br/>Get Transition")]:::recordLookups
    click Get_Transition "#get_transition" "2316952863"
    
    Update_Junction[("🛠️ <em></em><br/>Update Junction")]:::recordUpdates
    click Update_Junction "#update_junction" "1667344010"
    
    Assign_Junction_Values --> Assign_to_Collection
    Assign_to_Collection --> Junction_Loop
    Junction_Loop --> |"For Each"|Assign_Junction_Values
    Junction_Loop ---> |"After Last"|Update_Junction
    Get_Junction --> Junction_Loop
    Get_Plan --> Get_Junction
    Get_Transition --> Get_Plan
    Update_Junction --> END_Update_Junction
    START -->  Get_Transition
    END_Update_Junction(( END )):::endClass
    
    
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
    |Label|Transition | Process | Junction to Partner|
    |Status|Obsolete|
    |Description|Maps Transition record to any relevant Associated Partner Junction upon creation|
    |Interview Label|Assign Transition to Partner {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Transition](#get_transition)|
    |Next Node|[Get_Transition](#get_transition)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |Contacts|SObject|⬜|✅|✅|Contact|<!-- -->|
    |Junction|SObject|⬜|✅|✅|Associated_Contact__c|<!-- -->|
    |Partner|SObject|⬜|✅|✅|Associated_Partner__c|<!-- -->|
    |PartnerToUpdate|SObject|✅|✅|✅|Associated_Partner__c|<!-- -->|
    |recordId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    |UpdatedJunctions|SObject|✅|✅|✅|Associated_Contact__c|<!-- -->|
    |UpdatedPartner|SObject|✅|✅|✅|Associated_Partner__c|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Assign_Junction_Values
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Junction Values|
    |Connector|[Assign_to_Collection](#assign_to_collection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Partner.Transition__c| Assign|recordId|
    
    
    
    
    ### Assign_to_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign to Collection|
    |Connector|[Junction_Loop](#junction_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |UpdatedPartner| Add|Partner|
    
    
    
    
    ### Junction_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Junction Loop|
    |Assign Next Value To Reference|Partner|
    |Collection Reference|PartnerToUpdate|
    |Iteration Order|Asc|
    |Next Value Connector|[Assign_Junction_Values](#assign_junction_values)|
    |No More Values Connector|[Update_Junction](#update_junction)|
    
    
    ### Get_Junction
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Associated_Partner__c|
    |Label|Get Junction|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|PartnerToUpdate|
    |Queried Fields|Id|
    |Connector|[Junction_Loop](#junction_loop)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Plan__c| Equal To|Get_Plan.Id|
    
    
    
    
    ### Get_Plan
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Plan__c|
    |Label|Get Plan|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|Id|
    |Store Output Automatically|✅|
    |Connector|[Get_Junction](#get_junction)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Transition.Plan__c|
    
    
    
    
    ### Get_Transition
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Transition__c|
    |Label|Get Transition|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|- Id<br/>- Plan__c<br/>|
    |Store Output Automatically|✅|
    |Connector|[Get_Plan](#get_plan)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Update_Junction
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Junction|
    |Input Reference|UpdatedPartner|
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

