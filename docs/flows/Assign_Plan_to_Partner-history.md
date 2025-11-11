# Assign_Plan_to_Partner history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Assign_Plan_to_Partner-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>"]):::startClass
    click START "#general-information" "3866211787"
    
    Assign_Junction_Values[\"🟰 <em></em><br/>Assign Junction Values"/]:::assignments
    click Assign_Junction_Values "#assign_junction_values" "2592517534"
    
    Assign_Junction_Values_0[\"🟰 <em></em><br/>Assign Junction Values"/]:::assignments
    click Assign_Junction_Values_0 "#assign_junction_values_0" "799435461"
    
    Assign_to_Collection[\"🟰 <em></em><br/>Assign to Collection"/]:::assignments
    click Assign_to_Collection "#assign_to_collection" "1177756127"
    
    Assign_to_Collection_0[\"🟰 <em></em><br/>Assign to Collection"/]:::assignments
    click Assign_to_Collection_0 "#assign_to_collection_0" "3256919955"
    
    Does_Partner_Exist{"🔀 <em></em><br/>Does Partner Exist?"}:::decisions
    click Does_Partner_Exist "#does_partner_exist" "3986172593"
    
    Does_Partner_Exist_0{"🔀 <em></em><br/>Does Partner Exist?"}:::decisions
    click Does_Partner_Exist_0 "#does_partner_exist_0" "218608682"
    
    Opp_Found_Check{"🔀 <em></em><br/>Opp Found Check"}:::decisions
    click Opp_Found_Check "#opp_found_check" "2170525090"
    
    Type_of_Plan{"🔀 <em></em><br/>Type of Plan"}:::decisions
    click Type_of_Plan "#type_of_plan" "2504324273"
    
    Junction_Loop{{"🔁 <em></em><br/>Junction Loop"}}:::loops
    click Junction_Loop "#junction_loop" "902110619"
    
    Junction_Loop_0{{"🔁 <em></em><br/>Junction Loop"}}:::loops
    click Junction_Loop_0 "#junction_loop_0" "3419133472"
    
    Get_Imp[("🔍 <em></em><br/>Get Imp")]:::recordLookups
    click Get_Imp "#get_imp" "2628205979"
    
    Get_Junction[("🔍 <em></em><br/>Get Junction")]:::recordLookups
    click Get_Junction "#get_junction" "3655024319"
    
    Get_Junction2[("🔍 <em></em><br/>Get Junction")]:::recordLookups
    click Get_Junction2 "#get_junction2" "2933868393"
    
    Get_Opp[("🔍 <em></em><br/>Get Opp")]:::recordLookups
    click Get_Opp "#get_opp" "2720953759"
    
    Get_Plan[("🔍 <em></em><br/>Get Plan")]:::recordLookups
    click Get_Plan "#get_plan" "3123720087"
    
    Update_Junction[("🛠️ <em></em><br/>Update Junction")]:::recordUpdates
    click Update_Junction "#update_junction" "1667344010"
    
    Assign_Junction_Values --> Assign_to_Collection
    Assign_Junction_Values_0 --> Assign_to_Collection_0
    Assign_to_Collection --> Junction_Loop
    Assign_to_Collection_0 --> Junction_Loop_0
    Does_Partner_Exist --> |"Yes"| Junction_Loop_0
    Does_Partner_Exist --> |"Default Outcome"| END_Does_Partner_Exist
    Does_Partner_Exist_0 --> |"Yes"| Junction_Loop
    Does_Partner_Exist_0 --> |"Default Outcome"| END_Does_Partner_Exist_0
    Opp_Found_Check --> |"Opp Present"| Get_Junction2
    Opp_Found_Check --> |"Default Outcome"| END_Opp_Found_Check
    Type_of_Plan --> |"Single(k)"| Get_Opp
    Type_of_Plan --> |"401(k)"| Get_Imp
    Junction_Loop --> |"For Each"|Assign_Junction_Values
    Junction_Loop ---> |"After Last"|Update_Junction
    Junction_Loop_0 --> |"For Each"|Assign_Junction_Values_0
    Junction_Loop_0 ---> |"After Last"|Update_Junction
    Get_Imp --> Get_Junction
    Get_Junction --> Does_Partner_Exist_0
    Get_Junction2 --> Does_Partner_Exist
    Get_Opp --> Opp_Found_Check
    Get_Plan --> Type_of_Plan
    Update_Junction --> END_Update_Junction
    START -->  Get_Plan
    END_Does_Partner_Exist(( END )):::endClass
    END_Does_Partner_Exist_0(( END )):::endClass
    END_Opp_Found_Check(( END )):::endClass
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
    |Label|Plan | Process | Junction to Partner|
    |Status|Obsolete|
    |Description|Added "opp present" check to avoid error if opp is missing<br/><br/>Maps Plan record to any relevant Associated Junction upon creation|
    |Environments|Default|
    |Interview Label|Assign Plan to Partner {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Plan](#get_plan)|
    |Next Node|[Get_Plan](#get_plan)|
    
    
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
    |Partner.Plan__c| Assign|recordId|
    
    
    
    
    ### Assign_Junction_Values_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Junction Values|
    |Connector|[Assign_to_Collection_0](#assign_to_collection_0)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Partner.Plan__c| Assign|recordId|
    
    
    
    
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
    
    
    
    
    ### Assign_to_Collection_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign to Collection|
    |Connector|[Junction_Loop_0](#junction_loop_0)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |UpdatedPartner| Add|Partner|
    
    
    
    
    ### Does_Partner_Exist
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Does Partner Exist?|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Junction_Loop_0](#junction_loop_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|PartnerToUpdate| Is Null|⬜|
    
    
    
    
    ### Does_Partner_Exist_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Does Partner Exist?|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes_0 (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Junction_Loop](#junction_loop)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|PartnerToUpdate| Is Null|⬜|
    
    
    
    
    ### Opp_Found_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Opp Found Check|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Opp_Present (Opp Present)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Junction2](#get_junction2)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|[Get_Opp](#get_opp)| Is Null|⬜|
    
    
    
    
    ### Type_of_Plan
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Type of Plan|
    |Default Connector|[Get_Imp](#get_imp)|
    |Default Connector Label|401(k)|
    
    
    #### Rule Single_k (Single(k))
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Opp](#get_opp)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Plan.RecordTypeId| Equal To|01237000000TgnaAAC|
    
    
    
    
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
    
    
    ### Junction_Loop_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Junction Loop|
    |Assign Next Value To Reference|Partner|
    |Collection Reference|PartnerToUpdate|
    |Iteration Order|Asc|
    |Next Value Connector|[Assign_Junction_Values_0](#assign_junction_values_0)|
    |No More Values Connector|[Update_Junction](#update_junction)|
    
    
    ### Get_Imp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Implementation__c|
    |Label|Get Imp|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|Id|
    |Store Output Automatically|✅|
    |Connector|[Get_Junction](#get_junction)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Plan.Implementation__c|
    
    
    
    
    ### Get_Junction
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Associated_Partner__c|
    |Label|Get Junction|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|PartnerToUpdate|
    |Queried Fields|Id|
    |Connector|[Does_Partner_Exist_0](#does_partner_exist_0)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Implementation__c| Equal To|Get_Imp.Id|
    
    
    
    
    ### Get_Junction2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Associated_Partner__c|
    |Label|Get Junction|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|PartnerToUpdate|
    |Queried Fields|Id|
    |Connector|[Does_Partner_Exist](#does_partner_exist)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Opportunity__c| Equal To|Get_Opp.Id|
    
    
    
    
    ### Get_Opp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Opportunity|
    |Label|Get Opp|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|Id|
    |Store Output Automatically|✅|
    |Connector|[Opp_Found_Check](#opp_found_check)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Plan.Opportunity__c|
    
    
    
    
    ### Get_Plan
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Plan__c|
    |Label|Get Plan|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|- Id<br/>- Implementation__c<br/>- RecordTypeId<br/>- Opportunity__c<br/>|
    |Store Output Automatically|✅|
    |Connector|[Type_of_Plan](#type_of_plan)|
    
    
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

