# Case_After_Update_Assign_Deliverable_SLA history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Case_After_Update_Assign_Deliverable_SLA-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "3729211386"
    
    Calculate_SLA("⚙️ <em></em><br/>Calculate SLA"):::actionCalls
    click Calculate_SLA "#calculate_sla" "3641062422"
    
    Assign_Deliverable[\"🟰 <em></em><br/>Assign Deliverable"/]:::assignments
    click Assign_Deliverable "#assign_deliverable" "3193823092"
    
    Convert_Category_to_Text[\"🟰 <em></em><br/>Convert Category to Text"/]:::assignments
    click Convert_Category_to_Text "#convert_category_to_text" "1683401322"
    
    Define_Case_Biz_Hours[\"🟰 <em></em><br/>Define Case Biz Hours"/]:::assignments
    click Define_Case_Biz_Hours "#define_case_biz_hours" "2284691347"
    
    Record_Global_Default_Attempt[\"🟰 <em></em><br/>Record Global Default Attempt"/]:::assignments
    click Record_Global_Default_Attempt "#record_global_default_attempt" "2503432841"
    
    Check_for_Null_Biz_Hours{"🔀 <em></em><br/>Check for Null Biz Hours"}:::decisions
    click Check_for_Null_Biz_Hours "#check_for_null_biz_hours" "1553483174"
    
    Check_If_Flow_Looping{"🔀 <em></em><br/>Check If Flow Looping"}:::decisions
    click Check_If_Flow_Looping "#check_if_flow_looping" "4140362077"
    
    Check_if_WBS_Found{"🔀 <em></em><br/>Check if WBS Found"}:::decisions
    click Check_if_WBS_Found "#check_if_wbs_found" "2658955710"
    
    Complex_Entry_Conditions{"🔀 <em></em><br/>Complex Entry Conditions"}:::decisions
    click Complex_Entry_Conditions "#complex_entry_conditions" "2897973399"
    
    Default_Found{"🔀 <em></em><br/>Default Found?"}:::decisions
    click Default_Found "#default_found" "2266404755"
    
    Has_Deliverable_Been_Defined{"🔀 <em></em><br/>Has Deliverable Been Defined?"}:::decisions
    click Has_Deliverable_Been_Defined "#has_deliverable_been_defined" "1041341242"
    
    Scan_Text_For_Category{"🔀 <em></em><br/>Scan Text For Category"}:::decisions
    click Scan_Text_For_Category "#scan_text_for_category" "826458442"
    
    Specialized_Found{"🔀 <em></em><br/>Specialized Found?"}:::decisions
    click Specialized_Found "#specialized_found" "835102245"
    
    Deliverable_Loop{{"🔁 <em></em><br/>Deliverable Loop"}}:::loops
    click Deliverable_Loop "#deliverable_loop" "2319440788"
    
    Grab_Active_Deliverables[("🔍 <em></em><br/>Grab Active Deliverables")]:::recordLookups
    click Grab_Active_Deliverables "#grab_active_deliverables" "2814115097"
    
    Grab_Default_Biz_Hours[("🔍 <em></em><br/>Grab Default Biz Hours")]:::recordLookups
    click Grab_Default_Biz_Hours "#grab_default_biz_hours" "2449124987"
    
    Grab_Default_Deliverable[("🔍 <em></em><br/>Grab Default Deliverable")]:::recordLookups
    click Grab_Default_Deliverable "#grab_default_deliverable" "4084805491"
    
    Grab_Global_Default[("🔍 <em></em><br/>Grab Global Default")]:::recordLookups
    click Grab_Global_Default "#grab_global_default" "2098456231"
    
    Grab_Record_Type_WBS[("🔍 <em></em><br/>Grab Record Type WBS")]:::recordLookups
    click Grab_Record_Type_WBS "#grab_record_type_wbs" "2469547787"
    
    Stamp_New_SLA[("🛠️ <em></em><br/>Stamp New SLA")]:::recordUpdates
    click Stamp_New_SLA "#stamp_new_sla" "1563345081"
    
    Calculate_SLA --> Stamp_New_SLA
    Assign_Deliverable --> Deliverable_Loop
    Convert_Category_to_Text --> Scan_Text_For_Category
    Define_Case_Biz_Hours --> Calculate_SLA
    Record_Global_Default_Attempt --> Grab_Global_Default
    Check_for_Null_Biz_Hours --> |"Biz Hours Null"| Grab_Default_Biz_Hours
    Check_for_Null_Biz_Hours --> |"Default Outcome"| Define_Case_Biz_Hours
    Check_If_Flow_Looping --> |"Default Outcome"| Record_Global_Default_Attempt
    Check_if_WBS_Found --> |"WBS Valid"| Grab_Active_Deliverables
    Check_if_WBS_Found --> |"Default Outcome"| Check_If_Flow_Looping
    Complex_Entry_Conditions --> |"Assign new SLA"| Grab_Record_Type_WBS
    Complex_Entry_Conditions --> |"Default Outcome"| END_Complex_Entry_Conditions
    Default_Found --> |"Default Deliverable Found"| Check_for_Null_Biz_Hours
    Default_Found --> |"No Deliverable Found"| Check_If_Flow_Looping
    Has_Deliverable_Been_Defined --> |"Deliverable Defined"| Check_for_Null_Biz_Hours
    Has_Deliverable_Been_Defined --> |"Default Needed"| Grab_Default_Deliverable
    Scan_Text_For_Category --> |"Category Found"| Assign_Deliverable
    Scan_Text_For_Category --> |"None Found"| Deliverable_Loop
    Specialized_Found --> |"Specialized Deliverable Found"| Deliverable_Loop
    Specialized_Found --> |"Try Default Deliverable"| Grab_Default_Deliverable
    Deliverable_Loop --> |"For Each"|Convert_Category_to_Text
    Deliverable_Loop ---> |"After Last"|Has_Deliverable_Been_Defined
    Grab_Active_Deliverables --> Specialized_Found
    Grab_Default_Biz_Hours --> Calculate_SLA
    Grab_Default_Deliverable --> Default_Found
    Grab_Global_Default --> Check_if_WBS_Found
    Grab_Record_Type_WBS --> Check_if_WBS_Found
    Stamp_New_SLA --> END_Stamp_New_SLA
    START -->  Complex_Entry_Conditions
    END_Complex_Entry_Conditions(( END )):::endClass
    END_Stamp_New_SLA(( END )):::endClass
    
    
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
    |Label|Case | After Update | Assign Deliverable SLA|
    |Status|⚠️ Draft|
    |Description|Modified entry conditions to better fit CST cases (basically just adding isnew())|
    |Environments|Default|
    |Interview Label|Case | After {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Complex_Entry_Conditions](#complex_entry_conditions)|
    |Next Node|[Complex_Entry_Conditions](#complex_entry_conditions)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|IsClosed| Equal To|⬜|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |CaseBizHours|String|⬜|✅|✅|<!-- -->|<!-- -->|
    |DeliverableCategoryText|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |DeliverableCollection|SObject|✅|⬜|⬜|Project_Deliverables__c|<!-- -->|
    |GlobalDefaultTryCount|Number|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |ProjectDeliverable|SObject|⬜|⬜|⬜|Project_Deliverables__c|<!-- -->|
    |WorkBreakdownStruct|SObject|⬜|⬜|⬜|Work_Breakdown_Structure__c|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |isNew|Boolean|isnew()|<!-- -->|
    |nowMinusOneHour|DateTime|{!$Flow.CurrentDateTime} - (1/24)|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Calculate_SLA
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Calculate SLA|
    |Action Type|Apex|
    |Action Name|[Case_SLA_Invocable_Stamp](../apex/Case_SLA_Invocable_Stamp.md)|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Case_SLA_Invocable_Stamp|
    |Store Output Automatically|✅|
    |Bizhours Id (input)|CaseBizHours|
    |Case Created D T (input)|$Record.CreatedDate|
    | Close S L A (input)|ProjectDeliverable.Case_Close_Time_Hours__c|
    | Response S L A (input)|ProjectDeliverable.First_Response_Time_Hours__c|
    |Connector|[Stamp_New_SLA](#stamp_new_sla)|
    
    
    ### Assign_Deliverable
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Deliverable|
    |Connector|[Deliverable_Loop](#deliverable_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |ProjectDeliverable.Id| Assign|Deliverable_Loop.Id|
    |ProjectDeliverable.Case_Close_Time_Hours__c| Assign|Deliverable_Loop.Case_Close_Time_Hours__c|
    |ProjectDeliverable.First_Response_Time_Hours__c| Assign|Deliverable_Loop.First_Response_Time_Hours__c|
    
    
    
    
    ### Convert_Category_to_Text
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Convert Category to Text|
    |Connector|[Scan_Text_For_Category](#scan_text_for_category)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |DeliverableCategoryText| Assign|Deliverable_Loop.Category__c|
    
    
    
    
    ### Define_Case_Biz_Hours
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Define Case Biz Hours|
    |Connector|[Calculate_SLA](#calculate_sla)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |CaseBizHours| Assign|$Record.BusinessHoursId|
    
    
    
    
    ### Record_Global_Default_Attempt
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Record Global Default Attempt|
    |Connector|[Grab_Global_Default](#grab_global_default)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |GlobalDefaultTryCount| Add|1|
    
    
    
    
    ### Check_for_Null_Biz_Hours
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check for Null Biz Hours|
    |Default Connector|[Define_Case_Biz_Hours](#define_case_biz_hours)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Biz_Hours_Null (Biz Hours Null)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Grab_Default_Biz_Hours](#grab_default_biz_hours)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.BusinessHoursId| Is Null|✅|
    
    
    
    
    ### Check_If_Flow_Looping
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check If Flow Looping|
    |Default Connector|[Record_Global_Default_Attempt](#record_global_default_attempt)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Abort_Flow (Abort Flow)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|GlobalDefaultTryCount| Greater Than Or Equal To|1|
    
    
    
    
    ### Check_if_WBS_Found
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check if WBS Found|
    |Default Connector|[Check_If_Flow_Looping](#check_if_flow_looping)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule WBS_Valid (WBS Valid)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Grab_Active_Deliverables](#grab_active_deliverables)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|WorkBreakdownStruct.Id| Is Null|⬜|
    
    
    
    
    ### Complex_Entry_Conditions
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Complex Entry Conditions|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Assign_new_SLA (Assign new SLA)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Grab_Record_Type_WBS](#grab_record_type_wbs)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Category__c| Is Changed|✅|
    |2|$Record.RecordTypeId| Is Changed|✅|
    |3|$Record.Project_Deliverable__c| Is Null|✅|
    |4|isNew| Equal To|✅|
    |5|$Record.CreatedDate| Greater Than Or Equal To|nowMinusOneHour|
    
    
    
    
    ### Default_Found
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Default Found?|
    |Default Connector|[Check_If_Flow_Looping](#check_if_flow_looping)|
    |Default Connector Label|No Deliverable Found|
    
    
    #### Rule Default_Deliverable_Found (Default Deliverable Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|isGoTo: true<br/>targetReference: Check_for_Null_Biz_Hours<br/>|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|ProjectDeliverable.Id| Is Null|⬜|
    
    
    
    
    ### Has_Deliverable_Been_Defined
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Has Deliverable Been Defined?|
    |Default Connector|[Grab_Default_Deliverable](#grab_default_deliverable)|
    |Default Connector Label|Default Needed|
    
    
    #### Rule Deliverable_Defined (Deliverable Defined)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Check_for_Null_Biz_Hours](#check_for_null_biz_hours)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|ProjectDeliverable.Id| Is Null|⬜|
    
    
    
    
    ### Scan_Text_For_Category
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Scan Text For Category|
    |Default Connector|[Deliverable_Loop](#deliverable_loop)|
    |Default Connector Label|None Found|
    
    
    #### Rule Category_Found (Category Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Deliverable](#assign_deliverable)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|DeliverableCategoryText| Contains|$Record.Category__c|
    
    
    
    
    ### Specialized_Found
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Specialized Found?|
    |Default Connector|[Grab_Default_Deliverable](#grab_default_deliverable)|
    |Default Connector Label|Try Default Deliverable|
    
    
    #### Rule Specialized_Deliverable_Found (Specialized Deliverable Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Deliverable_Loop](#deliverable_loop)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|DeliverableCollection| Is Null|⬜|
    |2|$Record.Category__c| Is Null|⬜|
    
    
    
    
    ### Deliverable_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Deliverable Loop|
    |Collection Reference|DeliverableCollection|
    |Iteration Order|Asc|
    |Next Value Connector|[Convert_Category_to_Text](#convert_category_to_text)|
    |No More Values Connector|[Has_Deliverable_Been_Defined](#has_deliverable_been_defined)|
    
    
    ### Grab_Active_Deliverables
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Project_Deliverables__c|
    |Label|Grab Active Deliverables|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|DeliverableCollection|
    |Queried Fields|- Id<br/>- Active__c<br/>- Default__c<br/>- Category__c<br/>- First_Response_Time_Hours__c<br/>- Case_Close_Time_Hours__c<br/>|
    |Connector|[Specialized_Found](#specialized_found)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Active__c| Equal To|✅|
    |2|Default__c| Equal To|⬜|
    |3|Work_Breakdown_Structure__c| Equal To|WorkBreakdownStruct.Id|
    
    
    
    
    ### Grab_Default_Biz_Hours
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|BusinessHours|
    |Label|Grab Default Biz Hours|
    |Assign Null Values If No Records Found|✅|
    |Output Assignments|assignToReference: CaseBizHours<br/>field: Id<br/>|
    |Connector|[Calculate_SLA](#calculate_sla)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|IsActive| Equal To|✅|
    |2|IsDefault| Equal To|✅|
    
    
    
    
    ### Grab_Default_Deliverable
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Project_Deliverables__c|
    |Label|Grab Default Deliverable|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|ProjectDeliverable|
    |Queried Fields|- Id<br/>- Default__c<br/>- Active__c<br/>- First_Response_Time_Hours__c<br/>- Case_Close_Time_Hours__c<br/>|
    |Connector|[Default_Found](#default_found)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Default__c| Equal To|✅|
    |2|Active__c| Equal To|✅|
    |3|Work_Breakdown_Structure__c| Equal To|WorkBreakdownStruct.Id|
    
    
    
    
    ### Grab_Global_Default
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Work_Breakdown_Structure__c|
    |Label|Grab Global Default|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|WorkBreakdownStruct|
    |Queried Fields|- Id<br/>- Active__c<br/>- Global_Default__c<br/>|
    |Connector|isGoTo: true<br/>targetReference: Check_if_WBS_Found<br/>|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Global_Default__c| Equal To|✅|
    |2|Object_Managed__c| Equal To|Case|
    |3|Active__c| Equal To|✅|
    
    
    
    
    ### Grab_Record_Type_WBS
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Work_Breakdown_Structure__c|
    |Label|Grab Record Type WBS|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|WorkBreakdownStruct|
    |Queried Fields|- Id<br/>- Active__c<br/>- Case_Record_Type__c<br/>- Object_Managed__c<br/>|
    |Connector|[Check_if_WBS_Found](#check_if_wbs_found)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Case_Record_Type__c| Equal To|$Record.RecordType.Name|
    |2|Active__c| Equal To|✅|
    |3|Object_Managed__c| Equal To|Case|
    
    
    
    
    ### Stamp_New_SLA
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Stamp New SLA|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |BusinessHoursId|CaseBizHours|
    |Goal_Close_DT_Stamp__c|Calculate_SLA.caseCloseGoal|
    |Goal_FR_DT_Stamp__c|Calculate_SLA.caseResponseGoal|
    |Project_Deliverable__c|ProjectDeliverable.Id|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

