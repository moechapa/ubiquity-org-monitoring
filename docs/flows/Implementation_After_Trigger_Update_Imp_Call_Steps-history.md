# Implementation_After_Trigger_Update_Imp_Call_Steps history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Implementation_After_Trigger_Update_Imp_Call_Steps-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "3210993434"
    
    Alert_imp_owner("📧 <em></em><br/>Alert imp owner"):::actionCalls
    click Alert_imp_owner "#alert_imp_owner" "2730135261"
    
    Assign_Email_Recipients[\"🟰 <em></em><br/>Assign Email Recipients"/]:::assignments
    click Assign_Email_Recipients "#assign_email_recipients" "1773922856"
    
    Census_Check{"🔀 <em></em><br/>Census Check"}:::decisions
    click Census_Check "#census_check" "1804327733"
    
    Document_Check{"🔀 <em></em><br/>Document Check"}:::decisions
    click Document_Check "#document_check" "1500791221"
    
    Finch{"🔀 <em></em><br/>Finch?"}:::decisions
    click Finch "#finch" "2122511034"
    
    is_this_a_validation_error{"🔀 <em></em><br/>is this a validation error"}:::decisions
    click is_this_a_validation_error "#is_this_a_validation_error" "3865682534"
    
    Move_to_Next_Step{"🔀 <em></em><br/>Move to Next Step"}:::decisions
    click Move_to_Next_Step "#move_to_next_step" "3608691200"
    
    Self_Service_at_Intro_Stage{"🔀 <em></em><br/>Self Service at Intro Stage"}:::decisions
    click Self_Service_at_Intro_Stage "#self_service_at_intro_stage" "245686512"
    
    Still_Awaiting_Assignment{"🔀 <em></em><br/>Still Awaiting Assignment?"}:::decisions
    click Still_Awaiting_Assignment "#still_awaiting_assignment" "1591363577"
    
    Task_Complete{"🔀 <em></em><br/>Task Complete?"}:::decisions
    click Task_Complete "#task_complete" "3771619824"
    
    Task_Complete_0{"🔀 <em></em><br/>Task Complete?"}:::decisions
    click Task_Complete_0 "#task_complete_0" "93716245"
    
    Task_Complete_0_0{"🔀 <em></em><br/>Task Complete?"}:::decisions
    click Task_Complete_0_0 "#task_complete_0_0" "4100406311"
    
    Get_Census_Call_Task[("🔍 <em></em><br/>Get Census Call Task")]:::recordLookups
    click Get_Census_Call_Task "#get_census_call_task" "1025858489"
    
    Get_Funding_Call_PT[("🔍 <em></em><br/>Get Funding Call PT")]:::recordLookups
    click Get_Funding_Call_PT "#get_funding_call_pt" "2877739135"
    
    Get_Funding_Call_Task[("🔍 <em></em><br/>Get Funding Call Task")]:::recordLookups
    click Get_Funding_Call_Task "#get_funding_call_task" "3722812791"
    
    Get_Intro_Call_Task[("🔍 <em></em><br/>Get Intro Call Task")]:::recordLookups
    click Get_Intro_Call_Task "#get_intro_call_task" "2178824297"
    
    Mark_Call_Complete_Only[("🛠️ <em></em><br/>Mark Call Complete Only")]:::recordUpdates
    click Mark_Call_Complete_Only "#mark_call_complete_only" "1033530824"
    
    Mark_Census_Call_Complete_Only[("🛠️ <em></em><br/>Mark Census Call Complete Only")]:::recordUpdates
    click Mark_Census_Call_Complete_Only "#mark_census_call_complete_only" "3078506998"
    
    Mark_Funding_Call_PT_Not_Needed_Finch[("🛠️ <em></em><br/>Mark Funding Call PT Not Needed - Finch")]:::recordUpdates
    click Mark_Funding_Call_PT_Not_Needed_Finch "#mark_funding_call_pt_not_needed_finch" "2396078080"
    
    Update_Census_Project_Task[("🛠️ <em></em><br/>Update Census Project Task")]:::recordUpdates
    click Update_Census_Project_Task "#update_census_project_task" "4161130632"
    
    Update_Funding_Project_Task[("🛠️ <em></em><br/>Update Funding Project Task")]:::recordUpdates
    click Update_Funding_Project_Task "#update_funding_project_task" "2978014763"
    
    Update_Imp_Step_to_Complete[("🛠️ <em></em><br/>Update Imp Step to Complete")]:::recordUpdates
    click Update_Imp_Step_to_Complete "#update_imp_step_to_complete" "1321214149"
    
    Update_Intro_Project_Task[("🛠️ <em></em><br/>Update Intro Project Task")]:::recordUpdates
    click Update_Intro_Project_Task "#update_intro_project_task" "1049066378"
    
    Update_to_Enrollment[("🛠️ <em></em><br/>Update to Enrollment")]:::recordUpdates
    click Update_to_Enrollment "#update_to_enrollment" "2618145682"
    
    Update_to_Enrollment_and_In_Progress[("🛠️ <em></em><br/>Update to Enrollment and In Progress")]:::recordUpdates
    click Update_to_Enrollment_and_In_Progress "#update_to_enrollment_and_in_progress" "3987879618"
    
    Update_to_Funding_Step[("🛠️ <em></em><br/>Update to Funding Step")]:::recordUpdates
    click Update_to_Funding_Step "#update_to_funding_step" "2774704411"
    
    Update_to_Funding_Step_0[("🛠️ <em></em><br/>Update to Funding Step")]:::recordUpdates
    click Update_to_Funding_Step_0 "#update_to_funding_step_0" "3758832396"
    
    Update_to_self_service_census_stage[("🛠️ <em></em><br/>Update to self service census stage")]:::recordUpdates
    click Update_to_self_service_census_stage "#update_to_self_service_census_stage" "1204130250"
    
    Wipe_Census_Info[("🛠️ <em></em><br/>Wipe Census Info")]:::recordUpdates
    click Wipe_Census_Info "#wipe_census_info" "85300284"
    
    Alert_imp_owner --> END_Alert_imp_owner
    Assign_Email_Recipients --> Alert_imp_owner
    Census_Check --> |"Census Uploaded from Census Call"| Update_to_Funding_Step
    Census_Check --> |"Census Uploaded from Tutorial"| Update_to_Funding_Step_0
    Census_Check --> |"Tutorial Complete, Census Not Uploaded"| Mark_Census_Call_Complete_Only
    Document_Check --> |"Docs Signed"| Update_to_Enrollment
    Document_Check --> |"Docs Not Signed"| Mark_Call_Complete_Only
    Finch --> |"Yes Finch"| Mark_Funding_Call_PT_Not_Needed_Finch
    Finch --> |"Default Outcome"| END_Finch
    is_this_a_validation_error --> |"Validation Error"| Assign_Email_Recipients
    is_this_a_validation_error --> |"Default Outcome"| END_is_this_a_validation_error
    Move_to_Next_Step --> |"Move to Enrollment"| Self_Service_at_Intro_Stage
    Move_to_Next_Step --> |"Move to Funding"| Census_Check
    Move_to_Next_Step --> |"Move to Complete"| Update_Imp_Step_to_Complete
    Move_to_Next_Step --> |"Documents Signed"| Self_Service_at_Intro_Stage
    Move_to_Next_Step --> |"Census Complete"| Update_to_Funding_Step
    Move_to_Next_Step --> |"Default Outcome"| END_Move_to_Next_Step
    Self_Service_at_Intro_Stage --> |"Self Service intro stage complete"| Update_to_self_service_census_stage
    Self_Service_at_Intro_Stage --> |"Conventional Imp Reroute to doc path"| Still_Awaiting_Assignment
    Self_Service_at_Intro_Stage --> |"Conventional Imp Reroute to M2E Path"| Document_Check
    Self_Service_at_Intro_Stage --> |"OOPS"| END_Self_Service_at_Intro_Stage
    Still_Awaiting_Assignment --> |"Yes"| Update_to_Enrollment_and_In_Progress
    Still_Awaiting_Assignment --> |"Default Outcome"| Update_to_Enrollment
    Task_Complete --> |"Task Incomplete"| Update_Intro_Project_Task
    Task_Complete --> |"Task Complete"| END_Task_Complete
    Task_Complete_0 --> |"Census Task Incomplete"| Update_Census_Project_Task
    Task_Complete_0 --> |"Census Task Complete but Finch"| Mark_Funding_Call_PT_Not_Needed_Finch
    Task_Complete_0 --> |"Task Complete"| END_Task_Complete_0
    Task_Complete_0_0 --> |"Task Incomplete"| Update_Funding_Project_Task
    Task_Complete_0_0 --> |"Task Complete"| END_Task_Complete_0_0
    Get_Census_Call_Task --> Get_Funding_Call_PT
    Get_Funding_Call_PT --> Task_Complete_0
    Get_Funding_Call_Task --> Task_Complete_0_0
    Get_Intro_Call_Task --> Task_Complete
    Mark_Call_Complete_Only --> Get_Intro_Call_Task
    Mark_Census_Call_Complete_Only --> Get_Census_Call_Task
    Mark_Census_Call_Complete_Only -. Fault .->Wipe_Census_Info
    Mark_Funding_Call_PT_Not_Needed_Finch --> END_Mark_Funding_Call_PT_Not_Needed_Finch
    Update_Census_Project_Task --> Finch
    Update_Funding_Project_Task --> END_Update_Funding_Project_Task
    Update_Imp_Step_to_Complete --> Get_Funding_Call_Task
    Update_Intro_Project_Task --> END_Update_Intro_Project_Task
    Update_to_Enrollment --> Get_Intro_Call_Task
    Update_to_Enrollment_and_In_Progress --> Get_Intro_Call_Task
    Update_to_Funding_Step --> Get_Census_Call_Task
    Update_to_Funding_Step -. Fault .->Wipe_Census_Info
    Update_to_Funding_Step_0 --> END_Update_to_Funding_Step_0
    Update_to_Funding_Step_0 -. Fault .->Wipe_Census_Info
    Update_to_self_service_census_stage --> END_Update_to_self_service_census_stage
    Wipe_Census_Info --> is_this_a_validation_error
    START -->  Move_to_Next_Step
    END_Alert_imp_owner(( END )):::endClass
    END_Finch(( END )):::endClass
    END_is_this_a_validation_error(( END )):::endClass
    END_Move_to_Next_Step(( END )):::endClass
    END_Self_Service_at_Intro_Stage(( END )):::endClass
    END_Task_Complete(( END )):::endClass
    END_Task_Complete_0(( END )):::endClass
    END_Task_Complete_0_0(( END )):::endClass
    END_Mark_Funding_Call_PT_Not_Needed_Finch(( END )):::endClass
    END_Update_Funding_Project_Task(( END )):::endClass
    END_Update_Intro_Project_Task(( END )):::endClass
    END_Update_to_Funding_Step_0(( END )):::endClass
    END_Update_to_self_service_census_stage(( END )):::endClass
    
    
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
    |Label|Implementation | After Trigger | Update Imp Call Steps|
    |Status|Active|
    |Description|Added support for self service plans to move from intro -> census.  Plans will progress when self service intro fields are completed AND documents are signed.|
    |Environments|Default|
    |Interview Label|Implementation | After Trigger | Update Imp Call Steps {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Move_to_Next_Step](#move_to_next_step)|
    |Next Node|[Move_to_Next_Step](#move_to_next_step)|
    
    
    #### Filters (logic: **(1 and 4) or (2 and 5) or (3 and 6) or (7 and 8) or (9 and 10) or (11 and 12) or (14 AND 16 AND 4 AND (15 OR 13)) or (17 and 18 and 19 and (20 or 21 or 22))**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Intro_Call_Complete__c| Is Changed|✅|
    |2|Census_Call_Complete__c| Is Changed|✅|
    |3|Funding_Call_Complete__c| Is Changed|✅|
    |4|Intro_Call_Complete__c| Is Null|<!-- -->|
    |5|Census_Call_Complete__c| Is Null|<!-- -->|
    |6|Funding_Call_Complete__c| Is Null|<!-- -->|
    |7|Ubiquity_Plan_Documents_Signed__c| Is Null|<!-- -->|
    |8|Ubiquity_Plan_Documents_Signed__c| Is Changed|✅|
    |9|Census_and_Eligibility_Uploaded__c| Is Null|<!-- -->|
    |10|Census_and_Eligibility_Uploaded__c| Is Changed|✅|
    |11|Census_Tutorial_Complete__c| Equal To|✅|
    |12|Census_Tutorial_Complete__c| Is Changed|✅|
    |13|Update_Salesforce_Paradigm__c| Is Changed|✅|
    |14|Update_Salesforce_Paradigm__c| Equal To|Yes|
    |15|Update_Verify_Plan_Provisions__c| Is Changed|✅|
    |16|Update_Verify_Plan_Provisions__c| Equal To|Yes|
    |17|Provisions_Accepted__c| Equal To|✅|
    |18|Dashboard_Overview_Tutorial_Complete__c| Equal To|✅|
    |19|Plan_Setup_Tutorial_Complete__c| Equal To|✅|
    |20|Provisions_Accepted__c| Is Changed|✅|
    |21|Plan_Setup_Tutorial_Complete__c| Is Changed|✅|
    |22|Dashboard_Overview_Tutorial_Complete__c| Is Changed|✅|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |errorEmailRecipients|String|✅|⬜|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |formattedError|String|MID({!$Flow.FaultMessage},<br/>FIND("FIELD_CUSTOM_VALIDATION_EXCEPTION:", {!$Flow.FaultMessage}),<br/>FIND("You can look up ExceptionCode values",{!$Flow.FaultMessage})-FIND("FIELD_CUSTOM_VALIDATION_EXCEPTION:", {!$Flow.FaultMessage}))|<!-- -->|
    |Now|DateTime|NOW()|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Alert_imp_owner
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Alert imp owner|
    |Action Type|Email Simple|
    |Action Name|emailSimple|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|emailSimple|
    |Email Addresses Array (input)|errorEmailRecipients|
    |Sender Type (input)|DefaultWorkflowUser|
    |Email Subject (input)|Missing data for {!$Record.Name}|
    |Email Body (input)|formattedErrorEmailBody|
    
    
    ### Assign_Email_Recipients
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Email Recipients|
    |Connector|[Alert_imp_owner](#alert_imp_owner)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |errorEmailRecipients| Add|$Record.Owner:User.Email|
    |errorEmailRecipients| Add|$Record.Owner:User.Manager.Email|
    |errorEmailRecipients| Add|ccampbell@myubiquity.com|
    
    
    
    
    ### Census_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Census Check|
    |Default Connector|[Mark_Census_Call_Complete_Only](#mark_census_call_complete_only)|
    |Default Connector Label|Tutorial Complete, Census Not Uploaded|
    
    
    #### Rule Census_Uploaded (Census Uploaded from Census Call)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_to_Funding_Step](#update_to_funding_step)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Census_and_Eligibility_Uploaded__c| Is Null|⬜|
    |2|$Record.Census_Call_Complete__c| Equal To|✅|
    
    
    
    
    #### Rule Census_Uploaded_from_Tutorial (Census Uploaded from Tutorial)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_to_Funding_Step_0](#update_to_funding_step_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Census_Tutorial_Complete__c| Equal To|✅|
    |2|$Record.Census_and_Eligibility_Uploaded__c| Is Null|⬜|
    
    
    
    
    #### Rule Call_Complete_Census_Not_Uploaded (Call Complete, Census Not Uploaded)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Census_Call_Complete__c| Equal To|✅|
    |2|$Record.Census_and_Eligibility_Uploaded__c| Is Null|✅|
    
    
    
    
    ### Document_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Document Check|
    |Default Connector|[Mark_Call_Complete_Only](#mark_call_complete_only)|
    |Default Connector Label|Docs Not Signed|
    
    
    #### Rule Docs_Signed (Docs Signed)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_to_Enrollment](#update_to_enrollment)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Ubiquity_Plan_Documents_Signed__c| Is Null|⬜|
    
    
    
    
    ### Finch
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Finch?|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes_Finch (Yes Finch)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Mark_Funding_Call_PT_Not_Needed_Finch](#mark_funding_call_pt_not_needed_finch)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Account__r.Finch_Credential_Status__c| Equal To|Active|
    |2|$Record.Account__r.Finch_Credential_Status__c| Equal To|Pending|
    
    
    
    
    ### is_this_a_validation_error
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|is this a validation error|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Validation_Error (Validation Error)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Email_Recipients](#assign_email_recipients)|
    |Condition Logic|1 AND (2 OR 3 OR 4 OR 5)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Flow.FaultMessage| Contains|FIELD_CUSTOM_VALIDATION_EXCEPTION:|
    |2|$User.ProfileId| Equal To|00e1G0000011hdP|
    |3|$User.ProfileId| Equal To|00e00000006ohd0|
    |4|$User.ProfileId| Equal To|00e1G000000JImV|
    |5|$User.ProfileId| Equal To|00e1G000000JIma|
    
    
    
    
    ### Move_to_Next_Step
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Move to Next Step|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Move_to_Enrollment (Move to Enrollment)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Self_Service_at_Intro_Stage](#self_service_at_intro_stage)|
    |Condition Logic|3 AND ((2 AND 1) OR (4 AND 5 AND 6 AND (7 OR 8 OR 9)))|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Intro_Call_Complete__c| Is Changed|✅|
    |2|$Record.Intro_Call_Complete__c| Equal To|✅|
    |3|$Record.Census_Call_Complete__c| Equal To|⬜|
    |4|$Record.Provisions_Accepted__c| Equal To|✅|
    |5|$Record.Dashboard_Overview_Tutorial_Complete__c| Equal To|✅|
    |6|$Record.Plan_Setup_Tutorial_Complete__c| Equal To|✅|
    |7|$Record.Provisions_Accepted__c| Is Changed|✅|
    |8|$Record.Dashboard_Overview_Tutorial_Complete__c| Is Changed|✅|
    |9|$Record.Plan_Setup_Tutorial_Complete__c| Is Changed|✅|
    
    
    
    
    #### Rule Move_to_Funding (Move to Funding)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Census_Check](#census_check)|
    |Condition Logic|3 AND ((1 AND 2) or  (4 and 5))|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Census_Call_Complete__c| Is Changed|✅|
    |2|$Record.Census_Call_Complete__c| Equal To|✅|
    |3|$Record.Funding_Call_Complete__c| Equal To|⬜|
    |4|$Record.Census_Tutorial_Complete__c| Equal To|✅|
    |5|$Record.Census_Tutorial_Complete__c| Is Changed|✅|
    
    
    
    
    #### Rule Move_to_Complete (Move to Complete)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Imp_Step_to_Complete](#update_imp_step_to_complete)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Funding_Call_Complete__c| Is Changed|✅|
    |2|$Record.Funding_Call_Complete__c| Equal To|✅|
    |3|$Record.Intro_Call_Complete__c| Equal To|✅|
    |4|$Record.Census_Call_Complete__c| Equal To|✅|
    
    
    
    
    #### Rule Documents_Signed (Documents Signed)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Self_Service_at_Intro_Stage](#self_service_at_intro_stage)|
    |Condition Logic|1 AND 3 AND (2 OR (4 AND 5 AND 6))|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Ubiquity_Plan_Documents_Signed__c| Is Null|⬜|
    |2|$Record.Intro_Call_Complete__c| Equal To|✅|
    |3|$Record.Implementation_Steps__c| Equal To|Introductory Tasks|
    |4|$Record.Dashboard_Overview_Tutorial_Complete__c| Equal To|✅|
    |5|$Record.Plan_Setup_Tutorial_Complete__c| Equal To|✅|
    |6|$Record.Provisions_Accepted__c| Equal To|✅|
    
    
    
    
    #### Rule Census_Complete (Census Complete)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_to_Funding_Step](#update_to_funding_step)|
    |Condition Logic|1 AND 3 AND (2 OR 4)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Census_and_Eligibility_Uploaded__c| Is Null|⬜|
    |2|$Record.Census_Call_Complete__c| Equal To|✅|
    |3|$Record.Implementation_Steps__c| Equal To|Add Your Employees|
    |4|$Record.Census_Tutorial_Complete__c| Equal To|✅|
    
    
    
    
    ### Self_Service_at_Intro_Stage
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Self Service at Intro Stage|
    |Default Connector Label|OOPS|
    
    
    #### Rule Self_Service_intro_stage_complete (Self Service intro stage complete)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_to_self_service_census_stage](#update_to_self_service_census_stage)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Census_Self_Service__c| Equal To|✅|
    |2|$Record.Dashboard_Overview_Tutorial_Complete__c| Equal To|✅|
    |3|$Record.Plan_Setup_Tutorial_Complete__c| Equal To|✅|
    |4|$Record.Provisions_Accepted__c| Equal To|✅|
    |5|$Record.Ubiquity_Plan_Documents_Signed__c| Is Null|⬜|
    |6|$Record.Implementation_Steps__c| Equal To|Introductory Tasks|
    
    
    
    
    #### Rule Conventional_Imp_Reroute_to_doc_path (Conventional Imp Reroute to doc path)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Still_Awaiting_Assignment](#still_awaiting_assignment)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Documents_Signed| Equal To|✅|
    |2|$Record.Census_Self_Service__c| Equal To|⬜|
    
    
    
    
    #### Rule Conventional_Imp_Reroute_to_M2E_Path (Conventional Imp Reroute to M2E Path)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Document_Check](#document_check)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Move_to_Enrollment| Equal To|✅|
    |2|$Record.Census_Self_Service__c| Equal To|⬜|
    
    
    
    
    ### Still_Awaiting_Assignment
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Still Awaiting Assignment?|
    |Default Connector|[Update_to_Enrollment](#update_to_enrollment)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_to_Enrollment_and_In_Progress](#update_to_enrollment_and_in_progress)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Implementation_Status__c| Equal To|Awaiting Assignment|
    
    
    
    
    ### Task_Complete
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Task Complete?|
    |Default Connector Label|Task Complete|
    
    
    #### Rule Task_Incomplete (Task Incomplete)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Intro_Project_Task](#update_intro_project_task)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Intro_Call_Task.Status__c| Not Equal To|Completed|
    
    
    
    
    ### Task_Complete_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Task Complete?|
    |Default Connector Label|Task Complete|
    
    
    #### Rule Task_Incomplete_0 (Census Task Incomplete)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Census_Project_Task](#update_census_project_task)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Census_Call_Task.Status__c| Not Equal To|Completed|
    
    
    
    
    #### Rule Census_Task_Complete_but_Finch (Census Task Complete but Finch)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Mark_Funding_Call_PT_Not_Needed_Finch](#mark_funding_call_pt_not_needed_finch)|
    |Condition Logic|1 AND (2 OR 3)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Census_Call_Task.Status__c| Equal To|Completed|
    |2|$Record.Account__r.Finch_Credential_Status__c| Equal To|Active|
    |3|$Record.Account__r.Finch_Credential_Status__c| Equal To|Pending|
    
    
    
    
    ### Task_Complete_0_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Task Complete?|
    |Default Connector Label|Task Complete|
    
    
    #### Rule Task_Incomplete_0_0 (Task Incomplete)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Funding_Project_Task](#update_funding_project_task)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Funding_Call_Task.Status__c| Not Equal To|Completed|
    
    
    
    
    ### Get_Census_Call_Task
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Project_Task__c|
    |Label|Get Census Call Task|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|- Id<br/>- Actual_Completion_Date__c<br/>- Status__c<br/>|
    |Store Output Automatically|✅|
    |Connector|[Get_Funding_Call_PT](#get_funding_call_pt)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Implementation__c| Equal To|$Record.Id|
    |2|Name| Equal To|Census Call|
    
    
    
    
    ### Get_Funding_Call_PT
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Project_Task__c|
    |Label|Get Funding Call PT|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|- Id<br/>- Actual_Completion_Date__c<br/>- Status__c<br/>|
    |Store Output Automatically|✅|
    |Connector|[Task_Complete_0](#task_complete_0)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Implementation__c| Equal To|$Record.Id|
    |2|Name| Equal To|Funding & Final Call|
    
    
    
    
    ### Get_Funding_Call_Task
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Project_Task__c|
    |Label|Get Funding Call Task|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|- Id<br/>- Actual_Completion_Date__c<br/>- Status__c<br/>|
    |Store Output Automatically|✅|
    |Connector|[Task_Complete_0_0](#task_complete_0_0)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Implementation__c| Equal To|$Record.Id|
    |2|Name| Equal To|Funding & Final Call|
    
    
    
    
    ### Get_Intro_Call_Task
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Project_Task__c|
    |Label|Get Intro Call Task|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|- Id<br/>- Actual_Completion_Date__c<br/>- Status__c<br/>|
    |Store Output Automatically|✅|
    |Connector|[Task_Complete](#task_complete)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Implementation__c| Equal To|$Record.Id|
    |2|Name| Equal To|Introductory Call|
    
    
    
    
    ### Mark_Call_Complete_Only
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Mark Call Complete Only|
    |Input Reference|$Record|
    |Connector|[Get_Intro_Call_Task](#get_intro_call_task)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Introductory_Call__c|✅|
    
    
    
    
    ### Mark_Census_Call_Complete_Only
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Mark Census Call Complete Only|
    |Fault Connector|[Wipe_Census_Info](#wipe_census_info)|
    |Input Reference|$Record|
    |Connector|[Get_Census_Call_Task](#get_census_call_task)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Census_Call__c|✅|
    
    
    
    
    ### Mark_Funding_Call_PT_Not_Needed_Finch
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Project_Task__c|
    |Label|Mark Funding Call PT Not Needed - Finch|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Funding_Call_PT.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Actual_Completion_Date__c|Now|
    |Status__c|Not Needed|
    
    
    
    
    ### Update_Census_Project_Task
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Project_Task__c|
    |Label|Update Census Project Task|
    |Connector|[Finch](#finch)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Census_Call_Task.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Actual_Completion_Date__c|Now|
    |Status__c|Completed|
    
    
    
    
    ### Update_Funding_Project_Task
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Project_Task__c|
    |Label|Update Funding Project Task|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Funding_Call_Task.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Actual_Completion_Date__c|Now|
    |Status__c|Completed|
    
    
    
    
    ### Update_Imp_Step_to_Complete
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Imp Step to Complete|
    |Input Reference|$Record|
    |Connector|[Get_Funding_Call_Task](#get_funding_call_task)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Funding_Call__c|✅|
    
    
    
    
    ### Update_Intro_Project_Task
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Project_Task__c|
    |Label|Update Intro Project Task|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Intro_Call_Task.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Actual_Completion_Date__c|Now|
    |Status__c|Completed|
    
    
    
    
    ### Update_to_Enrollment
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update to Enrollment|
    |Input Reference|$Record|
    |Connector|[Get_Intro_Call_Task](#get_intro_call_task)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Implementation_Stage__c|Census|
    |Implementation_Steps__c|Add Your Employees|
    |Introductory_Call__c|✅|
    
    
    
    
    ### Update_to_Enrollment_and_In_Progress
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update to Enrollment and In Progress|
    |Input Reference|$Record|
    |Connector|[Get_Intro_Call_Task](#get_intro_call_task)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Implementation_Stage__c|Census|
    |Implementation_Status__c|In Progress|
    |Implementation_Steps__c|Add Your Employees|
    |Introductory_Call__c|✅|
    
    
    
    
    ### Update_to_Funding_Step
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update to Funding Step|
    |Fault Connector|[Wipe_Census_Info](#wipe_census_info)|
    |Input Reference|$Record|
    |Connector|[Get_Census_Call_Task](#get_census_call_task)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Census_Call__c|✅|
    |Implementation_Stage__c|Funding|
    |Implementation_Steps__c|Funding & Review|
    
    
    
    
    ### Update_to_Funding_Step_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update to Funding Step|
    |Fault Connector|[Wipe_Census_Info](#wipe_census_info)|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Implementation_Stage__c|Funding|
    |Implementation_Steps__c|Funding & Review|
    
    
    
    
    ### Update_to_self_service_census_stage
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update to self service census stage|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Implementation_Stage__c|Census|
    |Implementation_Steps__c|Add Your Employees|
    
    
    
    
    ### Wipe_Census_Info
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Wipe Census Info|
    |Input Reference|$Record|
    |Connector|[is_this_a_validation_error](#is_this_a_validation_error)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Census_and_Eligibility_Uploaded__c|<!-- -->|
    |Count_of_Employees_Census__c|<!-- -->|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

