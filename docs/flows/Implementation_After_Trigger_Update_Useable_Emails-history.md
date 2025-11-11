# Implementation_After_Trigger_Update_Useable_Emails history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Implementation_After_Trigger_Update_Useable_Emails-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "3636174401"
    
    Add_Advisor_Email[\"🟰 <em></em><br/>Add Advisor Email"/]:::assignments
    click Add_Advisor_Email "#add_advisor_email" "2783545515"
    
    Add_Advisor_Email_0[\"🟰 <em></em><br/>Add Advisor Email"/]:::assignments
    click Add_Advisor_Email_0 "#add_advisor_email_0" "233920437"
    
    Add_Advisor_Email_0_0[\"🟰 <em></em><br/>Add Advisor Email"/]:::assignments
    click Add_Advisor_Email_0_0 "#add_advisor_email_0_0" "4247153593"
    
    Add_Client_Email[\"🟰 <em></em><br/>Add Client Email"/]:::assignments
    click Add_Client_Email "#add_client_email" "3626301257"
    
    Add_Id[\"🟰 <em></em><br/>Add Id"/]:::assignments
    click Add_Id "#add_id" "1227671529"
    
    Add_Id_0[\"🟰 <em></em><br/>Add Id"/]:::assignments
    click Add_Id_0 "#add_id_0" "3162488974"
    
    Add_To_Collection[\"🟰 <em></em><br/>Add To Collection"/]:::assignments
    click Add_To_Collection "#add_to_collection" "1609758893"
    
    Add_To_Collection_0[\"🟰 <em></em><br/>Add To Collection"/]:::assignments
    click Add_To_Collection_0 "#add_to_collection_0" "2600162497"
    
    Add_To_Collection_0_0[\"🟰 <em></em><br/>Add To Collection"/]:::assignments
    click Add_To_Collection_0_0 "#add_to_collection_0_0" "2433331104"
    
    Add_To_Collection_0_0_0_0[\"🟰 <em></em><br/>Add To Collection"/]:::assignments
    click Add_To_Collection_0_0_0_0 "#add_to_collection_0_0_0_0" "3285969581"
    
    Add_To_Collection_0_0_0_0_0[\"🟰 <em></em><br/>Add To Collection"/]:::assignments
    click Add_To_Collection_0_0_0_0_0 "#add_to_collection_0_0_0_0_0" "66445638"
    
    Add_TPA_Email[\"🟰 <em></em><br/>Add TPA Email"/]:::assignments
    click Add_TPA_Email "#add_tpa_email" "3458365716"
    
    Assign_New_Primary[\"🟰 <em></em><br/>Assign New Primary"/]:::assignments
    click Assign_New_Primary "#assign_new_primary" "2648624709"
    
    Set_Defaults[\"🟰 <em></em><br/>Set Defaults"/]:::assignments
    click Set_Defaults "#set_defaults" "3787436077"
    
    Update_Email[\"🟰 <em></em><br/>Update Email"/]:::assignments
    click Update_Email "#update_email" "2939263117"
    
    AC_Role{"🔀 <em></em><br/>AC Role"}:::decisions
    click AC_Role "#ac_role" "2121414667"
    
    Client_Id_Not_Present{"🔀 <em></em><br/>Client Id Not Present"}:::decisions
    click Client_Id_Not_Present "#client_id_not_present" "1593581167"
    
    Client_Id_Present{"🔀 <em></em><br/>Client Id Present"}:::decisions
    click Client_Id_Present "#client_id_present" "3877445032"
    
    Secondary_Client_Email_Verification{"🔀 <em></em><br/>Secondary Client Email Verification"}:::decisions
    click Secondary_Client_Email_Verification "#secondary_client_email_verification" "3724276877"
    
    TPA_Email_Verification{"🔀 <em></em><br/>TPA Email Verification"}:::decisions
    click TPA_Email_Verification "#tpa_email_verification" "1783978572"
    
    AC_Loop{{"🔁 <em></em><br/>AC Loop"}}:::loops
    click AC_Loop "#ac_loop" "3693891527"
    
    Get_Related_ACs[("🔍 <em></em><br/>Get Related ACs")]:::recordLookups
    click Get_Related_ACs "#get_related_acs" "1557664013"
    
    Client_ACs_0[("🛠️ <em></em><br/>Update ACs")]:::recordUpdates
    click Client_ACs_0 "#client_acs_0" "4002617451"
    
    Add_Advisor_Email --> Add_To_Collection_0
    Add_Advisor_Email_0 --> Add_To_Collection_0_0_0_0
    Add_Advisor_Email_0_0 --> Add_To_Collection_0_0_0_0_0
    Add_Client_Email --> Client_Id_Not_Present
    Add_Id --> AC_Loop
    Add_Id_0 --> AC_Loop
    Add_To_Collection --> AC_Loop
    Add_To_Collection_0 --> AC_Loop
    Add_To_Collection_0_0 --> AC_Loop
    Add_To_Collection_0_0_0_0 --> AC_Loop
    Add_To_Collection_0_0_0_0_0 --> AC_Loop
    Add_TPA_Email --> Add_To_Collection_0_0
    Assign_New_Primary --> Client_ACs_0
    Set_Defaults --> AC_Loop
    Update_Email --> AC_Role
    AC_Role --> |"Client"| Add_Id
    AC_Role --> |"Secondary Client"| Secondary_Client_Email_Verification
    AC_Role --> |"Primary Advisor"| Add_Advisor_Email
    AC_Role --> |"Secondary Advisor"| Add_Advisor_Email_0
    AC_Role --> |"Tertiary Advisor"| Add_Advisor_Email_0_0
    AC_Role --> |"TPA"| TPA_Email_Verification
    AC_Role --> |"Default Outcome"| AC_Loop
    Client_Id_Not_Present --> |"Client Not Found"| Add_Id_0
    Client_Id_Not_Present --> |"Skip"| Add_To_Collection
    Client_Id_Present --> |"Client Found"| Client_ACs_0
    Client_Id_Present --> |"Client Not Found, Secondary Caught"| Assign_New_Primary
    Client_Id_Present --> |"Default Outcome"| Client_ACs_0
    Secondary_Client_Email_Verification --> |"Client Useable Email"| Add_Client_Email
    Secondary_Client_Email_Verification --> |"Skip"| Client_Id_Not_Present
    TPA_Email_Verification --> |"TPA Useable Email"| Add_TPA_Email
    TPA_Email_Verification --> |"Skip"| Add_To_Collection_0_0
    AC_Loop --> |"For Each"|Update_Email
    AC_Loop ---> |"After Last"|Client_Id_Present
    Get_Related_ACs --> Set_Defaults
    Client_ACs_0 --> END_Client_ACs_0
    START -->  Get_Related_ACs
    END_Client_ACs_0(( END )):::endClass
    
    
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
    |Object|Implementation__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create And Update|
    |Label|Implementation | After Trigger | Update Useable Emails|
    |Status|Active|
    |Environments|Default|
    |Interview Label|Implementation | After Trigger | Update Useable Emails {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Related_ACs](#get_related_acs)|
    |Next Node|[Get_Related_ACs](#get_related_acs)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |acCollection|SObject|✅|✅|⬜|Associated_Contact__c|<!-- -->|
    |clientAC|SObject|⬜|✅|⬜|Associated_Contact__c|<!-- -->|
    |primaryCatch|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Add_Advisor_Email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add Advisor Email|
    |Connector|[Add_To_Collection_0](#add_to_collection_0)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |clientAC.Primary_Advisor_Email__c| Assign|AC_Loop.Useable_Email__c|
    
    
    
    
    ### Add_Advisor_Email_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add Advisor Email|
    |Connector|[Add_To_Collection_0_0_0_0](#add_to_collection_0_0_0_0)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |clientAC.Secondary_Advisor_Email__c| Assign|AC_Loop.Useable_Email__c|
    
    
    
    
    ### Add_Advisor_Email_0_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add Advisor Email|
    |Connector|[Add_To_Collection_0_0_0_0_0](#add_to_collection_0_0_0_0_0)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |clientAC.Tertiary_Advisor_Email__c| Assign|AC_Loop.Useable_Email__c|
    
    
    
    
    ### Add_Client_Email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add Client Email|
    |Connector|[Client_Id_Not_Present](#client_id_not_present)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |clientAC.Additional_Trustee_Email__c| Assign|AC_Loop.Useable_Email__c|
    
    
    
    
    ### Add_Id
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add Id|
    |Connector|[AC_Loop](#ac_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |clientAC.Id| Assign|AC_Loop.Id|
    |acCollection| Add|clientAC|
    
    
    
    
    ### Add_Id_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add Id|
    |Connector|[AC_Loop](#ac_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |primaryCatch| Assign|AC_Loop.Id|
    
    
    
    
    ### Add_To_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add To Collection|
    |Connector|[AC_Loop](#ac_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |acCollection| Add|[AC_Loop](#ac_loop)|
    
    
    
    
    ### Add_To_Collection_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add To Collection|
    |Connector|[AC_Loop](#ac_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |acCollection| Add|[AC_Loop](#ac_loop)|
    
    
    
    
    ### Add_To_Collection_0_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add To Collection|
    |Connector|[AC_Loop](#ac_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |acCollection| Add|[AC_Loop](#ac_loop)|
    
    
    
    
    ### Add_To_Collection_0_0_0_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add To Collection|
    |Connector|[AC_Loop](#ac_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |acCollection| Add|[AC_Loop](#ac_loop)|
    
    
    
    
    ### Add_To_Collection_0_0_0_0_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add To Collection|
    |Connector|[AC_Loop](#ac_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |acCollection| Add|[AC_Loop](#ac_loop)|
    
    
    
    
    ### Add_TPA_Email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add TPA Email|
    |Connector|[Add_To_Collection_0_0](#add_to_collection_0_0)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |clientAC.TPA_Operational_Email__c| Assign|AC_Loop.Useable_Email__c|
    
    
    
    
    ### Assign_New_Primary
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign New Primary|
    |Connector|[Client_ACs_0](#client_acs_0)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |clientAC.Id| Assign|primaryCatch|
    |clientAC.Primary__c| Assign|✅|
    |acCollection| Add|clientAC|
    
    
    
    
    ### Set_Defaults
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Set Defaults|
    |Connector|[AC_Loop](#ac_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |clientAC.Primary_Advisor_Email__c| Assign|stringValue: ''<br/>|
    |clientAC.TPA_Operational_Email__c| Assign|stringValue: ''<br/>|
    |clientAC.Id| Assign|stringValue: ''<br/>|
    |clientAC.Additional_Trustee_Email__c| Assign|stringValue: ''<br/>|
    |clientAC.Secondary_Advisor_Email__c| Assign|stringValue: ''<br/>|
    |clientAC.Tertiary_Advisor_Email__c| Assign|stringValue: ''<br/>|
    
    
    
    
    ### Update_Email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Update Email|
    |Connector|[AC_Role](#ac_role)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |AC_Loop.Useable_Email__c| Assign|AC_Loop.Email__c|
    
    
    
    
    ### AC_Role
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|AC Role|
    |Default Connector|[AC_Loop](#ac_loop)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Client (Client)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Add_Id](#add_id)|
    |Condition Logic|(1 OR 2 OR 3) AND 4|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|AC_Loop.Contact_Role__c| Contains|Plan Sponsor|
    |2|AC_Loop.Contact_Role__c| Contains|Trustee|
    |3|AC_Loop.Contact_Role__c| Equal To|Authorized Buyer|
    |4|AC_Loop.Primary__c| Equal To|✅|
    
    
    
    
    #### Rule Secondary_Client (Secondary Client)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Secondary_Client_Email_Verification](#secondary_client_email_verification)|
    |Condition Logic|(1 OR 2 OR 3) AND 4|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|AC_Loop.Contact_Role__c| Contains|Plan Sponsor|
    |2|AC_Loop.Contact_Role__c| Contains|Trustee|
    |3|AC_Loop.Contact_Role__c| Equal To|Authorized Buyer|
    |4|AC_Loop.Primary__c| Equal To|⬜|
    
    
    
    
    #### Rule Primary_Advisor (Primary Advisor)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Add_Advisor_Email](#add_advisor_email)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|AC_Loop.Contact_Role__c| Equal To|Financial Advisor|
    |2|clientAC.Primary_Advisor_Email__c| Equal To|stringValue: ''<br/>|
    
    
    
    
    #### Rule Secondary_Advisor (Secondary Advisor)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Add_Advisor_Email_0](#add_advisor_email_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|AC_Loop.Contact_Role__c| Equal To|Financial Advisor|
    |2|clientAC.Primary_Advisor_Email__c| Not Equal To|stringValue: ''<br/>|
    |3|clientAC.Secondary_Advisor_Email__c| Equal To|stringValue: ''<br/>|
    
    
    
    
    #### Rule Tertiary_Advisor (Tertiary Advisor)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Add_Advisor_Email_0_0](#add_advisor_email_0_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|AC_Loop.Contact_Role__c| Equal To|Financial Advisor|
    |2|clientAC.Primary_Advisor_Email__c| Not Equal To|stringValue: ''<br/>|
    |3|clientAC.Secondary_Advisor_Email__c| Not Equal To|stringValue: ''<br/>|
    |4|clientAC.Tertiary_Advisor_Email__c| Equal To|stringValue: ''<br/>|
    
    
    
    
    #### Rule TPA (TPA)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[TPA_Email_Verification](#tpa_email_verification)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|AC_Loop.Contact_Role__c| Contains|TPA|
    |2|clientAC.TPA_Operational_Email__c| Equal To|stringValue: ''<br/>|
    
    
    
    
    ### Client_Id_Not_Present
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Client Id Not Present|
    |Default Connector|[Add_To_Collection](#add_to_collection)|
    |Default Connector Label|Skip|
    
    
    #### Rule Client_Not_Found (Client Not Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Add_Id_0](#add_id_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|clientAC.Id| Equal To|stringValue: ''<br/>|
    
    
    
    
    ### Client_Id_Present
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Client Id Present|
    |Default Connector|[Client_ACs_0](#client_acs_0)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Client_Found (Client Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Client_ACs_0](#client_acs_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|clientAC.Id| Not Equal To|stringValue: ''<br/>|
    
    
    
    
    #### Rule Client_Not_Found_Secondary_Caught (Client Not Found, Secondary Caught)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_New_Primary](#assign_new_primary)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|primaryCatch| Is Null|⬜|
    |2|clientAC.Id| Equal To|stringValue: ''<br/>|
    
    
    
    
    ### Secondary_Client_Email_Verification
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Secondary Client Email Verification|
    |Default Connector|[Client_Id_Not_Present](#client_id_not_present)|
    |Default Connector Label|Skip|
    
    
    #### Rule Client_Useable_Email (Client Useable Email)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Add_Client_Email](#add_client_email)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|clientAC.Additional_Trustee_Email__c| Equal To|stringValue: ''<br/>|
    
    
    
    
    ### TPA_Email_Verification
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|TPA Email Verification|
    |Default Connector|[Add_To_Collection_0_0](#add_to_collection_0_0)|
    |Default Connector Label|Skip|
    
    
    #### Rule TPA_Useable_Email (TPA Useable Email)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Add_TPA_Email](#add_tpa_email)|
    |Condition Logic|(1 AND 2) OR 3|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|AC_Loop.Contact_Role__c| Contains|TPA|
    |2|clientAC.TPA_Operational_Email__c| Equal To|stringValue: ''<br/>|
    |3|AC_Loop.Contact_Role__c| Equal To|TPA - Onboarding|
    
    
    
    
    ### AC_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|AC Loop|
    |Collection Reference|[Get_Related_ACs](#get_related_acs)|
    |Iteration Order|Asc|
    |Next Value Connector|[Update_Email](#update_email)|
    |No More Values Connector|[Client_Id_Present](#client_id_present)|
    
    
    ### Get_Related_ACs
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Associated_Contact__c|
    |Label|Get Related ACs|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Sort Field|CreatedDate|
    |Sort Order|Desc|
    |Store Output Automatically|✅|
    |Connector|[Set_Defaults](#set_defaults)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Implementation__c| Equal To|$Record.Id|
    
    
    
    
    ### Client_ACs_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update ACs|
    |Input Reference|acCollection|
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

