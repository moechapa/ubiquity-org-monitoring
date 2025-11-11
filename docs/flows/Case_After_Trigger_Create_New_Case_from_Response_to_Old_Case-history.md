# Case_After_Trigger_Create_New_Case_from_Response_to_Old_Case history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Case_After_Trigger_Create_New_Case_from_Response_to_Old_Case-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "1201476986"
    
    Imp_Found{"🔀 <em></em><br/>Imp Found?"}:::decisions
    click Imp_Found "#imp_found" "2367623802"
    
    Imp_Status{"🔀 <em></em><br/>Imp Status"}:::decisions
    click Imp_Status "#imp_status" "70262980"
    
    Is_Original_User_Active{"🔀 <em></em><br/>Is Original User Active"}:::decisions
    click Is_Original_User_Active "#is_original_user_active" "3017423905"
    
    Create_Case_for_CST[("➕ <em></em><br/>Create Case for CST")]:::recordCreates
    click Create_Case_for_CST "#create_case_for_cst" "857644011"
    
    Create_Case_for_Imp[("➕ <em></em><br/>Create Case for Imp")]:::recordCreates
    click Create_Case_for_Imp "#create_case_for_imp" "657122859"
    
    Create_Case_for_Orig_Owner[("➕ <em></em><br/>Create Case for Orig Owner")]:::recordCreates
    click Create_Case_for_Orig_Owner "#create_case_for_orig_owner" "96060782"
    
    Get_Imp[("🔍 <em></em><br/>Get Imp")]:::recordLookups
    click Get_Imp "#get_imp" "3715325616"
    
    Resolve_Old_Case[("🛠️ <em></em><br/>Resolve Old Case")]:::recordUpdates
    click Resolve_Old_Case "#resolve_old_case" "3865957829"
    
    Imp_Found --> |"Found"| Imp_Status
    Imp_Found --> |"Default Outcome"| Create_Case_for_CST
    Imp_Status --> |"In Progress"| Create_Case_for_Imp
    Imp_Status --> |"Default Outcome"| Create_Case_for_CST
    Is_Original_User_Active --> |"Active"| Create_Case_for_Orig_Owner
    Is_Original_User_Active --> |"Default Outcome"| Get_Imp
    Create_Case_for_CST --> END_Create_Case_for_CST
    Create_Case_for_Imp --> END_Create_Case_for_Imp
    Create_Case_for_Orig_Owner --> END_Create_Case_for_Orig_Owner
    Get_Imp --> Imp_Found
    Resolve_Old_Case --> Is_Original_User_Active
    START -->  Resolve_Old_Case
    END_Create_Case_for_CST(( END )):::endClass
    END_Create_Case_for_Imp(( END )):::endClass
    END_Create_Case_for_Orig_Owner(( END )):::endClass
    
    
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
    |Record Trigger Type| Create And Update|
    |Label|Case | After Trigger | Create New Case from Response to Old Case|
    |Status|⚠️ Draft|
    |Filter Formula|{!$Record.Case_Age__c} > 30 &&  ISCHANGED({!$Record.Status}) && ISPICKVAL({!$Record.Status}, "Response Received") && ISPICKVAL(PRIORVALUE({!$Record.Status}), "Resolved" )|
    |Environments|Default|
    |Interview Label|Case | After Trigger | Create New Case from Response to Old Case {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Resolve_Old_Case](#resolve_old_case)|
    |Next Node|[Resolve_Old_Case](#resolve_old_case)|
    
    
    ## Flow Nodes Details
    
    ### Imp_Found
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Imp Found?|
    |Default Connector|[Create_Case_for_CST](#create_case_for_cst)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Found (Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Imp_Status](#imp_status)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Imp.Id| Is Null|⬜|
    
    
    
    
    ### Imp_Status
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Imp Status|
    |Default Connector|[Create_Case_for_CST](#create_case_for_cst)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule In_Progress (In Progress)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Create_Case_for_Imp](#create_case_for_imp)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Imp.Implementation_Status__c| Not Equal To|Completed|
    
    
    
    
    ### Is_Original_User_Active
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Is Original User Active|
    |Default Connector|[Get_Imp](#get_imp)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Active (Active)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Create_Case_for_Orig_Owner](#create_case_for_orig_owner)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Owner:User.IsActive| Equal To|✅|
    
    
    
    
    ### Create_Case_for_CST
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Create Case for CST|
    |Store Output Automatically|✅|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|$Record.AccountId|
    |BusinessHoursId|$Record.BusinessHoursId|
    |Category__c|$Record.Category__c|
    |Connected_to_Project__c|$Record.Connected_to_Project__c|
    |ContactId|$Record.ContactId|
    |Department__c|$Record.Department__c|
    |EntitlementId|$Record.EntitlementId|
    |Implementation__c|$Record.Implementation__c|
    |Inquiry_Source__c|$Record.Inquiry_Source__c|
    |Origin|$Record.Origin|
    |OwnerId|3D00G1G000001N3PA|
    |ParentId|$Record.Id|
    |Plan__c|$Record.Plan__c|
    |RecordTypeId|$Record.RecordTypeId|
    |Status|New|
    |Sub_Category__c|$Record.Sub_Category__c|
    |Subject|$Record.Subject|
    |SuppliedEmail|$Record.SuppliedEmail|
    |Type|$Record.Type|
    
    
    
    
    ### Create_Case_for_Imp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Create Case for Imp|
    |Store Output Automatically|✅|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|$Record.AccountId|
    |BusinessHoursId|$Record.BusinessHoursId|
    |Category__c|$Record.Category__c|
    |Connected_to_Project__c|$Record.Connected_to_Project__c|
    |ContactId|$Record.ContactId|
    |Department__c|$Record.Department__c|
    |EntitlementId|$Record.EntitlementId|
    |Implementation__c|$Record.Implementation__c|
    |Inquiry_Source__c|$Record.Inquiry_Source__c|
    |Origin|$Record.Origin|
    |OwnerId|3D00G37000000PDff|
    |ParentId|$Record.Id|
    |Plan__c|$Record.Plan__c|
    |RecordTypeId|$Record.RecordTypeId|
    |Status|New|
    |Sub_Category__c|$Record.Sub_Category__c|
    |Subject|$Record.Subject|
    |SuppliedEmail|$Record.SuppliedEmail|
    |Type|$Record.Type|
    
    
    
    
    ### Create_Case_for_Orig_Owner
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Create Case for Orig Owner|
    |Store Output Automatically|✅|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|$Record.AccountId|
    |BusinessHoursId|$Record.BusinessHoursId|
    |Category__c|$Record.Category__c|
    |Connected_to_Project__c|$Record.Connected_to_Project__c|
    |ContactId|$Record.ContactId|
    |Department__c|$Record.Department__c|
    |EntitlementId|$Record.EntitlementId|
    |Implementation__c|$Record.Implementation__c|
    |Inquiry_Source__c|$Record.Inquiry_Source__c|
    |Origin|$Record.Origin|
    |OwnerId|$Record.OwnerId|
    |ParentId|$Record.Id|
    |Plan__c|$Record.Plan__c|
    |RecordTypeId|$Record.RecordTypeId|
    |Status|New|
    |Sub_Category__c|$Record.Sub_Category__c|
    |Subject|$Record.Subject|
    |SuppliedEmail|$Record.SuppliedEmail|
    |Type|$Record.Type|
    
    
    
    
    ### Get_Imp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Implementation__c|
    |Label|Get Imp|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|- Id<br/>- Implementation_Status__c<br/>|
    |Store Output Automatically|✅|
    |Connector|[Imp_Found](#imp_found)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$Record.Implementation__c|
    
    
    
    
    ### Resolve_Old_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Resolve Old Case|
    |Input Reference|$Record|
    |Connector|[Is_Original_User_Active](#is_original_user_active)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Status|Resolved|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

