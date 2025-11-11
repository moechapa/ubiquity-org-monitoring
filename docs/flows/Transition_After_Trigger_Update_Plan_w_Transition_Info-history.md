# Transition_After_Trigger_Update_Plan_w_Transition_Info history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Transition_After_Trigger_Update_Plan_w_Transition_Info-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "2188637438"
    
    Update_Plan_w_Transition_Info[\"🟰 <em></em><br/>Update Plan w/ Transition Info"/]:::assignments
    click Update_Plan_w_Transition_Info "#update_plan_w_transition_info" "1695896234"
    
    case_exists_check{"🔀 <em></em><br/>case exists check"}:::decisions
    click case_exists_check "#case_exists_check" "3312966994"
    
    Check_Plan_Status{"🔀 <em></em><br/>Check Plan Status"}:::decisions
    click Check_Plan_Status "#check_plan_status" "3094483492"
    
    is_this_a_no_start{"🔀 <em></em><br/>is this a no start"}:::decisions
    click is_this_a_no_start "#is_this_a_no_start" "1858176313"
    
    create_billing_case[("➕ <em></em><br/>create billing case")]:::recordCreates
    click create_billing_case "#create_billing_case" "119154294"
    
    Check_for_existing_case[("🔍 <em></em><br/>Check for existing case")]:::recordLookups
    click Check_for_existing_case "#check_for_existing_case" "1381613637"
    
    Get_Plan[("🔍 <em></em><br/>Get Plan")]:::recordLookups
    click Get_Plan "#get_plan" "3764136884"
    
    Update_Plan[("🛠️ <em></em><br/>Update Plan")]:::recordUpdates
    click Update_Plan "#update_plan" "2809555604"
    
    Update_Plan_w_Transition_Info --> Update_Plan
    case_exists_check --> |"no case"| create_billing_case
    case_exists_check --> |"Default Outcome"| END_case_exists_check
    Check_Plan_Status --> |"Active, Pending, or Frozen"| Update_Plan_w_Transition_Info
    Check_Plan_Status --> |"Default Outcome"| is_this_a_no_start
    is_this_a_no_start --> |"Case path"| Check_for_existing_case
    is_this_a_no_start --> |"Default Outcome"| END_is_this_a_no_start
    create_billing_case --> END_create_billing_case
    Check_for_existing_case --> case_exists_check
    Get_Plan --> Check_Plan_Status
    Update_Plan --> is_this_a_no_start
    START -->  Get_Plan
    END_case_exists_check(( END )):::endClass
    END_is_this_a_no_start(( END )):::endClass
    END_create_billing_case(( END )):::endClass
    
    
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
    |Object|Transition__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create And Update|
    |Label|Transition | After Trigger | Update Plan w/ Transition Info|
    |Status|Obsolete|
    |Does Require Record Changed To Meet Criteria|✅|
    |Description|Added case creation for billing in the case of one not already existing<br/><br/>When a Transition Status is set to "Complete", update the plan with the Transition Complete Date and set Status to "Inactive". Note: If the formula for Transition Complete Date is null (no value in Liquidation Date or Final Valuation Date), it will be set to null on the Plan. There isn't anything that requires a value in that field on the Transition record.|
    |Environments|Default|
    |Interview Label|Transition | After Trigger | Update Plan w/ Transition Info {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Plan](#get_plan)|
    |Next Node|[Get_Plan](#get_plan)|
    
    
    #### Filters (logic: **(1 AND 2) OR (3 AND 4)**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Status__c| Equal To|Complete|
    |2|Transition_Complete__c| Is Null|<!-- -->|
    |3|Status__c| Equal To|Complete|
    |4|Transition_Reason__c| Equal To|No-Start|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |existingCaseId|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |PlanToUpdate|SObject|⬜|✅|⬜|Plan__c|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Update_Plan_w_Transition_Info
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Update Plan w/ Transition Info|
    |Connector|[Update_Plan](#update_plan)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |PlanToUpdate.Status__c| Assign|Inactive|
    |PlanToUpdate.Plan_Transition_Date__c| Assign|$Record.Transition_Complete__c|
    
    
    
    
    ### case_exists_check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|case exists check|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule no_case (no case)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[create_billing_case](#create_billing_case)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|existingCaseId| Is Null|✅|
    
    
    
    
    ### Check_Plan_Status
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check Plan Status|
    |Default Connector|[is_this_a_no_start](#is_this_a_no_start)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Active (Active, Pending, or Frozen)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Plan_w_Transition_Info](#update_plan_w_transition_info)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|PlanToUpdate.Status__c| Contains|Active|
    |2|PlanToUpdate.Status__c| Equal To|Transition Pending|
    |3|PlanToUpdate.Status__c| Equal To|Pending Abandonment|
    |4|PlanToUpdate.Status__c| Equal To|Frozen Plan|
    
    
    
    
    ### is_this_a_no_start
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|is this a no start|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Case_path (Case path)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Check_for_existing_case](#check_for_existing_case)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Transition_Reason__c| Equal To|No-Start|
    
    
    
    
    ### create_billing_case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|create billing case|
    |Store Output Automatically|✅|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|$Record.Account__c|
    |BusinessHoursId|01m1G000000XaE1|
    |Case_Source__c|Internal|
    |Case_Type__c|Single Case|
    |Department__c|Accounting & Finance|
    |Description|No Start – review and update Paradigm|
    |Origin|Transitions|
    |OwnerId|00500000006yEak|
    |Plan__c|$Record.Plan__c|
    |Priority|Medium|
    |RecordTypeId|01237000000Xu63AAC|
    |Status|Assigned|
    |Subject|New No Start Notification|
    |Transition__c|$Record.Id|
    
    
    
    
    ### Check_for_existing_case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Case|
    |Label|Check for existing case|
    |Assign Null Values If No Records Found|✅|
    |Output Assignments|assignToReference: existingCaseId<br/>field: Id<br/>|
    |Connector|[case_exists_check](#case_exists_check)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Subject| Contains|New No Start Notification|
    |2|Plan__c| Equal To|$Record.Plan__c|
    |3|AccountId| Equal To|$Record.Account__c|
    
    
    
    
    ### Get_Plan
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Plan__c|
    |Label|Get Plan|
    |Assign Null Values If No Records Found|⬜|
    |Output Reference|PlanToUpdate|
    |Queried Fields|- Id<br/>- Status__c<br/>- Plan_Transition_Date__c<br/>|
    |Connector|[Check_Plan_Status](#check_plan_status)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$Record.Plan__c|
    
    
    
    
    ### Update_Plan
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Plan|
    |Input Reference|PlanToUpdate|
    |Connector|[is_this_a_no_start](#is_this_a_no_start)|
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

