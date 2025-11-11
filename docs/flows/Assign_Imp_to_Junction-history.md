# Assign_Imp_to_Junction history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Assign_Imp_to_Junction-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>"]):::startClass
    click START "#general-information" "1402580690"
    
    Assign_Junction_Values[\"🟰 <em></em><br/>Assign Junction Values"/]:::assignments
    click Assign_Junction_Values "#assign_junction_values" "3699857963"
    
    Assign_to_Collection[\"🟰 <em></em><br/>Assign to Collection"/]:::assignments
    click Assign_to_Collection "#assign_to_collection" "2930331451"
    
    Mark_as_Primary[\"🟰 <em></em><br/>Mark as Primary"/]:::assignments
    click Mark_as_Primary "#mark_as_primary" "1406732798"
    
    Role_Check{"🔀 <em></em><br/>Role Check"}:::decisions
    click Role_Check "#role_check" "3354190937"
    
    Junction_Loop{{"🔁 <em></em><br/>Junction Loop"}}:::loops
    click Junction_Loop "#junction_loop" "1886720207"
    
    Get_Imp[("🔍 <em></em><br/>Get Imp")]:::recordLookups
    click Get_Imp "#get_imp" "1320393508"
    
    Get_Junction[("🔍 <em></em><br/>Get Junction")]:::recordLookups
    click Get_Junction "#get_junction" "3992777538"
    
    Get_Opportunity[("🔍 <em></em><br/>Get Opportunity")]:::recordLookups
    click Get_Opportunity "#get_opportunity" "2110031301"
    
    Update_Junction[("🛠️ <em></em><br/>Update Junction")]:::recordUpdates
    click Update_Junction "#update_junction" "437741234"
    
    Assign_Junction_Values --> Assign_to_Collection
    Assign_to_Collection --> Junction_Loop
    Mark_as_Primary --> Assign_Junction_Values
    Role_Check --> |"Primary"| Mark_as_Primary
    Role_Check --> |"Ancillary"| Assign_Junction_Values
    Junction_Loop --> |"For Each"|Role_Check
    Junction_Loop ---> |"After Last"|Update_Junction
    Get_Imp --> Get_Opportunity
    Get_Junction --> Junction_Loop
    Get_Opportunity --> Get_Junction
    Update_Junction --> END_Update_Junction
    START -->  Get_Imp
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
    |Label|Implementation | Process | Junction to Contact|
    |Status|Obsolete|
    |Description|Maps Implementation record to any relevant Associated Contact Junction upon creation|
    |Interview Label|Assign Imp to Junction {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Imp](#get_imp)|
    |Next Node|[Get_Imp](#get_imp)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |Contacts|SObject|⬜|✅|✅|Contact|<!-- -->|
    |Junction|SObject|⬜|✅|✅|Associated_Contact__c|<!-- -->|
    |primaryCheck|Number|⬜|✅|⬜|<!-- -->|<!-- -->|
    |recordId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    |UpdatedJunctions|SObject|✅|✅|✅|Associated_Contact__c|<!-- -->|
    
    
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
    |Junction.Implementation__c| Assign|recordId|
    |Junction.Plan__c| Assign|Get_Imp.Plan__c|
    
    
    
    
    ### Assign_to_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign to Collection|
    |Connector|[Junction_Loop](#junction_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |UpdatedJunctions| Add|Junction|
    
    
    
    
    ### Mark_as_Primary
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Mark as Primary|
    |Connector|[Assign_Junction_Values](#assign_junction_values)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Junction.Primary__c| Assign|✅|
    |primaryCheck| Add|1|
    
    
    
    
    ### Role_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Role Check|
    |Default Connector|[Assign_Junction_Values](#assign_junction_values)|
    |Default Connector Label|Ancillary|
    
    
    #### Rule Primary (Primary)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Mark_as_Primary](#mark_as_primary)|
    |Condition Logic|(1 OR 2 OR 3) AND 4|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Junction.Contact_Role__c| Equal To|Authorized Buyer|
    |2|Junction.Contact_Role__c| Contains|Sponsor|
    |3|Junction.Contact_Role__c| Contains|Trustee|
    |4|primaryCheck| Equal To|numberValue: 0<br/>|
    
    
    
    
    ### Junction_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Junction Loop|
    |Assign Next Value To Reference|Junction|
    |Collection Reference|[Get_Junction](#get_junction)|
    |Iteration Order|Asc|
    |Next Value Connector|[Role_Check](#role_check)|
    |No More Values Connector|[Update_Junction](#update_junction)|
    
    
    ### Get_Imp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Implementation__c|
    |Label|Get Imp|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|- Id<br/>- Opportunity_Name__c<br/>- Plan__c<br/>|
    |Store Output Automatically|✅|
    |Connector|[Get_Opportunity](#get_opportunity)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Get_Junction
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Associated_Contact__c|
    |Label|Get Junction|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Queried Fields|- Id<br/>- Contact_Role__c<br/>|
    |Sort Field|CreatedDate|
    |Sort Order|Asc|
    |Store Output Automatically|✅|
    |Connector|[Junction_Loop](#junction_loop)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Opportunity__c| Equal To|Get_Opportunity.Id|
    
    
    
    
    ### Get_Opportunity
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Opportunity|
    |Label|Get Opportunity|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|Id|
    |Store Output Automatically|✅|
    |Connector|[Get_Junction](#get_junction)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Imp.Opportunity_Name__c|
    
    
    
    
    ### Update_Junction
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Junction|
    |Input Reference|UpdatedJunctions|
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

