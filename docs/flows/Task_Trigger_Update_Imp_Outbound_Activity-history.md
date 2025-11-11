# Task_Trigger_Update_Imp_Outbound_Activity history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Task_Trigger_Update_Imp_Outbound_Activity-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "2951955466"
    
    Assign_to_Imp_Collection[\"🟰 <em></em><br/>Assign to Imp Collection"/]:::assignments
    click Assign_to_Imp_Collection "#assign_to_imp_collection" "928297839"
    
    Stamp_Imp_Date[\"🟰 <em></em><br/>Stamp Imp Date"/]:::assignments
    click Stamp_Imp_Date "#stamp_imp_date" "1179666190"
    
    AC_Present{"🔀 <em></em><br/>AC Present"}:::decisions
    click AC_Present "#ac_present" "1266985699"
    
    Id_Already_Updating{"🔀 <em></em><br/>Id Already Updating"}:::decisions
    click Id_Already_Updating "#id_already_updating" "3182346464"
    
    AC_Loop{{"🔁 <em></em><br/>AC Loop"}}:::loops
    click AC_Loop "#ac_loop" "2867279871"
    
    Get_AC[("🔍 <em></em><br/>Get AC")]:::recordLookups
    click Get_AC "#get_ac" "1647075332"
    
    Update_Imps[("🛠️ <em></em><br/>Update Imps")]:::recordUpdates
    click Update_Imps "#update_imps" "1517401"
    
    Assign_to_Imp_Collection --> AC_Loop
    Stamp_Imp_Date --> Id_Already_Updating
    AC_Present --> |"AC Found"| AC_Loop
    AC_Present --> |"Default Outcome"| END_AC_Present
    Id_Already_Updating --> |"Duplicate Found"| AC_Loop
    Id_Already_Updating --> |"No Duplicates"| Assign_to_Imp_Collection
    AC_Loop --> |"For Each"|Stamp_Imp_Date
    AC_Loop ---> |"After Last"|Update_Imps
    Get_AC --> AC_Present
    Update_Imps --> END_Update_Imps
    START -->  Get_AC
    END_AC_Present(( END )):::endClass
    END_Update_Imps(( END )):::endClass
    
    
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
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create And Update|
    |Label|Task | Trigger | Update Imp Outbound Activity|
    |Status|Active|
    |Interview Label|Task | Trigger | Update Imp Outbound Activity {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_AC](#get_ac)|
    |Next Node|[Get_AC](#get_ac)|
    
    
    #### Filters (logic: **NOT 1**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Subject| Contains|Pardot|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |acCollection|SObject|✅|✅|⬜|Associated_Contact__c|<!-- -->|
    |impCollection|SObject|✅|✅|⬜|Implementation__c|<!-- -->|
    |impToUpdate|SObject|⬜|✅|⬜|Implementation__c|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |today|Date|TODAY()|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Assign_to_Imp_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign to Imp Collection|
    |Connector|[AC_Loop](#ac_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |impCollection| Add|impToUpdate|
    
    
    
    
    ### Stamp_Imp_Date
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Stamp Imp Date|
    |Connector|[Id_Already_Updating](#id_already_updating)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |impToUpdate.Id| Assign|AC_Loop.Implementation__c|
    |impToUpdate.Last_Case_Outbound_Activity__c| Assign|today|
    
    
    
    
    ### AC_Present
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|AC Present|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule AC_Found (AC Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[AC_Loop](#ac_loop)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|acCollection| Is Null|⬜|
    
    
    
    
    ### Id_Already_Updating
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Id Already Updating|
    |Default Connector|[Assign_to_Imp_Collection](#assign_to_imp_collection)|
    |Default Connector Label|No Duplicates|
    
    
    #### Rule Duplicate_Found (Duplicate Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[AC_Loop](#ac_loop)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|impCollection| Contains|impToUpdate|
    
    
    
    
    ### AC_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|AC Loop|
    |Collection Reference|acCollection|
    |Iteration Order|Asc|
    |Next Value Connector|[Stamp_Imp_Date](#stamp_imp_date)|
    |No More Values Connector|[Update_Imps](#update_imps)|
    
    
    ### Get_AC
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Associated_Contact__c|
    |Label|Get AC|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|acCollection|
    |Queried Fields|- Id<br/>- Implementation__c<br/>|
    |Connector|[AC_Present](#ac_present)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Contact__c| Equal To|$Record.WhoId|
    |2|Implementation__c| Is Null|<!-- -->|
    |3|Implementation_Status__c| Contains|In Progress|
    
    
    
    
    ### Update_Imps
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Imps|
    |Input Reference|impCollection|
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

