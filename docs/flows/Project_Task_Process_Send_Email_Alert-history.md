# Project_Task_Process_Send_Email_Alert history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Project_Task_Process_Send_Email_Alert-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>"]):::startClass
    click START "#general-information" "2269553876"
    
    Follow_Up_with_Plan_Sponsor("📧 <em></em><br/>Follow Up with Plan Sponsor"):::actionCalls
    click Follow_Up_with_Plan_Sponsor "#follow_up_with_plan_sponsor" "1420894062"
    
    Intro_to_Simply_Client("📧 <em></em><br/>Intro to Simply Client"):::actionCalls
    click Intro_to_Simply_Client "#intro_to_simply_client" "2646800446"
    
    Payroll_K_oncierge_Intro_to_Client_Conversion("📧 <em></em><br/>Intro to Conversion Client"):::actionCalls
    click Payroll_K_oncierge_Intro_to_Client_Conversion "#payroll_k_oncierge_intro_to_client_conversion" "1923211835"
    
    Payroll_K_oncierge_Upload_1st_Payroll("📧 <em></em><br/>Payroll (K)oncierge - Upload 1st Payroll"):::actionCalls
    click Payroll_K_oncierge_Upload_1st_Payroll "#payroll_k_oncierge_upload_1st_payroll" "3524389006"
    
    Services_Declined("📧 <em></em><br/>Services Declined"):::actionCalls
    click Services_Declined "#services_declined" "1601823863"
    
    Task_Values_Follow_Up[\"🟰 <em></em><br/>Task Values, Follow Up"/]:::assignments
    click Task_Values_Follow_Up "#task_values_follow_up" "1480953811"
    
    Task_Values_Intro_0[\"🟰 <em></em><br/>Task Values, Intro"/]:::assignments
    click Task_Values_Intro_0 "#task_values_intro_0" "3919379035"
    
    Task_Values_Intro_Simply[\"🟰 <em></em><br/>Task Values, Intro (Simply)"/]:::assignments
    click Task_Values_Intro_Simply "#task_values_intro_simply" "4086348033"
    
    Task_Values_ServicesDeclined[\"🟰 <em></em><br/>Task Values, Services Declined"/]:::assignments
    click Task_Values_ServicesDeclined "#task_values_servicesdeclined" "968455674"
    
    Task_Values_UploadPayroll[\"🟰 <em></em><br/>Task Values, Upload Payroll"/]:::assignments
    click Task_Values_UploadPayroll "#task_values_uploadpayroll" "2036388485"
    
    Eligible_for_Email_Follow_Up{"🔀 <em></em><br/>Eligible for Email Follow Up"}:::decisions
    click Eligible_for_Email_Follow_Up "#eligible_for_email_follow_up" "667731986"
    
    Eligible_for_Email_Send{"🔀 <em></em><br/>Eligible for Email Send"}:::decisions
    click Eligible_for_Email_Send "#eligible_for_email_send" "3807464347"
    
    Initial_Call_not_yet_Scheduled_or_Completed{"🔀 <em></em><br/>Initial Call not yet Scheduled or Completed"}:::decisions
    click Initial_Call_not_yet_Scheduled_or_Completed "#initial_call_not_yet_scheduled_or_completed" "1714163857"
    
    Initial_Call_not_yet_Scheduled_or_Completed_0{"🔀 <em></em><br/>Initial Call not yet Scheduled or Completed"}:::decisions
    click Initial_Call_not_yet_Scheduled_or_Completed_0 "#initial_call_not_yet_scheduled_or_completed_0" "3868371987"
    
    Create_Case[("➕ <em></em><br/>Create Case")]:::recordCreates
    click Create_Case "#create_case" "2166823944"
    
    Create_Task[("➕ <em></em><br/>Create Task")]:::recordCreates
    click Create_Task "#create_task" "3757114011"
    
    Create_Task_0[("➕ <em></em><br/>Create Task")]:::recordCreates
    click Create_Task_0 "#create_task_0" "2683543509"
    
    Get_1st_Call_Task[("🔍 <em></em><br/>Get 1st Call Task")]:::recordLookups
    click Get_1st_Call_Task "#get_1st_call_task" "796154707"
    
    Get_Imp[("🔍 <em></em><br/>Get Imp")]:::recordLookups
    click Get_Imp "#get_imp" "3079661807"
    
    Get_Plan_Sponsor[("🔍 <em></em><br/>Get Plan Sponsor")]:::recordLookups
    click Get_Plan_Sponsor "#get_plan_sponsor" "3650526248"
    
    Get_Project_Task[("🔍 <em></em><br/>Get Project Task")]:::recordLookups
    click Get_Project_Task "#get_project_task" "2017976612"
    
    Follow_Up_with_Plan_Sponsor --> Task_Values_Follow_Up
    Intro_to_Simply_Client --> Task_Values_Intro_Simply
    Payroll_K_oncierge_Intro_to_Client_Conversion --> Task_Values_Intro_0
    Payroll_K_oncierge_Upload_1st_Payroll --> Task_Values_UploadPayroll
    Services_Declined --> Task_Values_ServicesDeclined
    Task_Values_Follow_Up --> Create_Task_0
    Task_Values_Intro_0 --> Create_Task
    Task_Values_Intro_Simply --> Create_Task
    Task_Values_ServicesDeclined --> Create_Task
    Task_Values_UploadPayroll --> Create_Task
    Eligible_for_Email_Follow_Up --> |"(K)oncierge Intro w/ Survey & Calendly Link"| Wait_72_Hours
    Eligible_for_Email_Follow_Up --> |"Simply (K)oncierge Intro w/ Survey & Calendly Link"| Wait_72_Hours
    Eligible_for_Email_Follow_Up --> |"Ineligible"| END_Eligible_for_Email_Follow_Up
    Eligible_for_Email_Send --> |"Conversion (K)oncierge Intro w/ Survey & Calendly Link"| Payroll_K_oncierge_Intro_to_Client_Conversion
    Eligible_for_Email_Send --> |"Simply (K)oncierge Intro w/ Survey & Calendly Link"| Intro_to_Simply_Client
    Eligible_for_Email_Send --> |"Upload 1st Payroll"| Payroll_K_oncierge_Upload_1st_Payroll
    Eligible_for_Email_Send --> |"First Call Declined"| Services_Declined
    Eligible_for_Email_Send --> |"Ineligible"| END_Eligible_for_Email_Send
    Initial_Call_not_yet_Scheduled_or_Completed --> |"Initial Call Not Scheduled or Completed"| Follow_Up_with_Plan_Sponsor
    Initial_Call_not_yet_Scheduled_or_Completed --> |"Default Outcome"| END_Initial_Call_not_yet_Scheduled_or_Completed
    Initial_Call_not_yet_Scheduled_or_Completed_0 --> |"Initial Call Not Scheduled or Completed"| Create_Case
    Initial_Call_not_yet_Scheduled_or_Completed_0 --> |"Default Outcome"| END_Initial_Call_not_yet_Scheduled_or_Completed_0
    Create_Case --> Wait_5_Days
    Create_Task --> Eligible_for_Email_Follow_Up
    Create_Task_0 --> END_Create_Task_0
    Get_1st_Call_Task --> Initial_Call_not_yet_Scheduled_or_Completed
    Get_Imp --> Initial_Call_not_yet_Scheduled_or_Completed_0
    Get_Plan_Sponsor --> Eligible_for_Email_Send
    Get_Project_Task --> Get_Plan_Sponsor
    START -->  Get_Project_Task
    END_Eligible_for_Email_Follow_Up(( END )):::endClass
    END_Eligible_for_Email_Send(( END )):::endClass
    END_Initial_Call_not_yet_Scheduled_or_Completed(( END )):::endClass
    END_Initial_Call_not_yet_Scheduled_or_Completed_0(( END )):::endClass
    END_Create_Task_0(( END )):::endClass
    
    
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
    |Label|Project Task | Process | Send Email Alert|
    |Status|Obsolete|
    |Description|Flow built to trigger auto email when Project Task is created or updated.|
    |Interview Label|Project Task | Process | {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Project_Task](#get_project_task)|
    |Next Node|[Get_Project_Task](#get_project_task)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |emailTask|SObject|⬜|✅|✅|Task|<!-- -->|
    |recordId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    |Upload1stPayroll|SObject|⬜|✅|✅|Project_Task__c|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |description|String|"Review plan & follow up with the client to help report 401(k) contributions. Please review this report to determine if the client needs an initial call or training call:" + BR() + BR() +<br/>"https://myubiquity.lightning.force.com/lightning/r/Report/00O1G000002F09tUAC/view?queryScope=userFolders"|<!-- -->|
    |subject|String|"Follow Up with " + {!Get_Imp.Plan__r.Name}|<!-- -->|
    |today|Date|{!Get_Project_Task.Actual_Completion_Date__c}|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Follow_Up_with_Plan_Sponsor
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Follow Up with Plan Sponsor|
    |Action Type|Email Alert|
    |Action Name|Associated_Contact__c.Payroll_K_oncierge_Follow_up_to_Intro|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Associated_Contact__c.Payroll_K_oncierge_Follow_up_to_Intro|
    | SObject Row Id (input)|Get_Plan_Sponsor.Id|
    |Connector|[Task_Values_Follow_Up](#task_values_follow_up)|
    
    
    ### Intro_to_Simply_Client
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Intro to Simply Client|
    |Action Type|Email Alert|
    |Action Name|Associated_Contact__c.Payroll_K_oncierge_Intro_to_Client_Simply|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Associated_Contact__c.Payroll_K_oncierge_Intro_to_Client_Simply|
    | SObject Row Id (input)|Get_Plan_Sponsor.Id|
    |Connector|[Task_Values_Intro_Simply](#task_values_intro_simply)|
    
    
    ### Payroll_K_oncierge_Intro_to_Client_Conversion
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Intro to Conversion Client|
    |Action Type|Email Alert|
    |Action Name|Associated_Contact__c.Payroll_K_oncierge_Intro_to_Client_Conversion|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Associated_Contact__c.Payroll_K_oncierge_Intro_to_Client_Conversion|
    | SObject Row Id (input)|Get_Plan_Sponsor.Id|
    |Connector|[Task_Values_Intro_0](#task_values_intro_0)|
    
    
    ### Payroll_K_oncierge_Upload_1st_Payroll
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Payroll (K)oncierge - Upload 1st Payroll|
    |Action Type|Email Alert|
    |Action Name|Associated_Contact__c.Payroll_K_oncierge_Upload_1st_Payroll|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Associated_Contact__c.Payroll_K_oncierge_Upload_1st_Payroll|
    | SObject Row Id (input)|Get_Plan_Sponsor.Id|
    |Connector|[Task_Values_UploadPayroll](#task_values_uploadpayroll)|
    
    
    ### Services_Declined
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Services Declined|
    |Action Type|Email Alert|
    |Action Name|Associated_Contact__c.Payroll_K_oncierge_Decline_Koncierge_Services|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Associated_Contact__c.Payroll_K_oncierge_Decline_Koncierge_Services|
    | SObject Row Id (input)|Get_Plan_Sponsor.Id|
    |Connector|[Task_Values_ServicesDeclined](#task_values_servicesdeclined)|
    
    
    ### Task_Values_Follow_Up
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Task Values, Follow Up|
    |Connector|[Create_Task_0](#create_task_0)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |emailTask.Priority| Assign|Normal|
    |emailTask.Status| Assign|Completed|
    |emailTask.Subject| Assign|subject|
    |emailTask.Type| Assign|Email|
    |emailTask.WhoId| Assign|Get_Plan_Sponsor.Contact__c|
    |emailTask.OwnerId| Assign|Get_Project_Task.OwnerId|
    
    
    
    
    ### Task_Values_Intro_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Task Values, Intro|
    |Connector|[Create_Task](#create_task)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |emailTask.Priority| Assign|Normal|
    |emailTask.Status| Assign|Completed|
    |emailTask.Subject| Assign|Welcome to Ubiquity’s Payroll (K)oncierge|
    |emailTask.Type| Assign|Email|
    |emailTask.WhoId| Assign|Get_Plan_Sponsor.Contact__c|
    |emailTask.OwnerId| Assign|Get_Project_Task.OwnerId|
    |emailTask.ActivityDate| Assign|today|
    
    
    
    
    ### Task_Values_Intro_Simply
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Task Values, Intro (Simply)|
    |Connector|[Create_Task](#create_task)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |emailTask.Priority| Assign|Normal|
    |emailTask.Status| Assign|Completed|
    |emailTask.Subject| Assign|Welcome to Simply Retirement’s Payroll (K)oncierge|
    |emailTask.Type| Assign|Email|
    |emailTask.WhoId| Assign|Get_Plan_Sponsor.Contact__c|
    |emailTask.OwnerId| Assign|Get_Project_Task.OwnerId|
    |emailTask.ActivityDate| Assign|today|
    
    
    
    
    ### Task_Values_ServicesDeclined
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Task Values, Services Declined|
    |Connector|[Create_Task](#create_task)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |emailTask.Priority| Assign|Normal|
    |emailTask.Status| Assign|Completed|
    |emailTask.Subject| Assign|Complete your one-time payroll set up|
    |emailTask.Type| Assign|Email|
    |emailTask.WhoId| Assign|Get_Plan_Sponsor.Contact__c|
    |emailTask.OwnerId| Assign|Get_Project_Task.OwnerId|
    |emailTask.ActivityDate| Assign|today|
    
    
    
    
    ### Task_Values_UploadPayroll
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Task Values, Upload Payroll|
    |Connector|[Create_Task](#create_task)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |emailTask.Priority| Assign|Normal|
    |emailTask.Status| Assign|Completed|
    |emailTask.Subject| Assign|Your 401(k) Plan Contributions|
    |emailTask.Type| Assign|Email|
    |emailTask.WhoId| Assign|Get_Plan_Sponsor.Contact__c|
    |emailTask.OwnerId| Assign|Get_Project_Task.OwnerId|
    |emailTask.ActivityDate| Assign|today|
    
    
    
    
    ### Eligible_for_Email_Follow_Up
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Eligible for Email Follow Up|
    |Default Connector Label|Ineligible|
    
    
    #### Rule KonciergeIntroAccepted_0 ((K)oncierge Intro w/ Survey & Calendly Link)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|Wait_72_Hours|
    |Condition Logic|(1 OR 4) AND 2 AND NOT 3|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Project_Task.Name| Equal To|(K)oncierge Intro w/ Survey & Calendly Link|
    |2|Get_Project_Task.Status__c| Equal To|Completed|
    |3|Get_Project_Task.Implementation__r.Service_Option__c| Contains|Simply Retirement|
    |4|Get_Project_Task.Name| Equal To|Intro email from Payroll Koncierge|
    
    
    
    
    #### Rule SimplyKonciergeIntroAccepted_0 (Simply (K)oncierge Intro w/ Survey & Calendly Link)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|Wait_72_Hours|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Project_Task.Name| Equal To|(K)oncierge Intro w/ Survey & Calendly Link|
    |2|Get_Project_Task.Status__c| Equal To|Completed|
    |3|Get_Project_Task.Implementation__r.Service_Option__c| Contains|Simply Retirement|
    
    
    
    
    #### Rule Upload_1st_Payroll_0 (Upload 1st Payroll)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Project_Task.Name| Equal To|Upload 1st Payroll|
    |2|Get_Project_Task.Status__c| Equal To|Completed|
    |3|Get_Project_Task.OwnerId| Equal To|0051G000006HUFrQAO|
    
    
    
    
    #### Rule First_Call_Declined_0 (First Call Declined)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Project_Task.Name| Contains|Hold First Call|
    |2|Get_Project_Task.Status__c| Equal To|Declined|
    
    
    
    
    ### Eligible_for_Email_Send
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Eligible for Email Send|
    |Default Connector Label|Ineligible|
    
    
    #### Rule KonciergeIntroAccepted ((K)oncierge Intro w/ Survey & Calendly Link)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|1 AND 2 AND (NOT 3) AND 4|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Project_Task.Name| Equal To|(K)oncierge Intro w/ Survey & Calendly Link|
    |2|Get_Project_Task.Status__c| Equal To|Completed|
    |3|Get_Project_Task.Implementation__r.Service_Option__c| Contains|Simply Retirement|
    |4|Get_Project_Task.Implementation__r.Plan_Type__c| Equal To|New Plan|
    
    
    
    
    #### Rule Conversion_K_oncierge_Intro_w_Survey_Calendly_Link (Conversion (K)oncierge Intro w/ Survey & Calendly Link)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Payroll_K_oncierge_Intro_to_Client_Conversion](#payroll_k_oncierge_intro_to_client_conversion)|
    |Condition Logic|1 AND 2 AND (NOT 3) AND 4|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Project_Task.Status__c| Equal To|Completed|
    |2|Get_Project_Task.Implementation__r.Service_Option__c| Contains|Simply Retirement|
    |3|Get_Project_Task.Implementation__r.Plan_Type__c| Equal To|Conversion Plan|
    |4|Get_Project_Task.Name| Equal To|Intro email from Payroll Koncierge|
    
    
    
    
    #### Rule SimplyKonciergeIntroAccepted (Simply (K)oncierge Intro w/ Survey & Calendly Link)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Intro_to_Simply_Client](#intro_to_simply_client)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Project_Task.Name| Equal To|(K)oncierge Intro w/ Survey & Calendly Link|
    |2|Get_Project_Task.Status__c| Equal To|Completed|
    |3|Get_Project_Task.Implementation__r.Service_Option__c| Contains|Simply Retirement|
    
    
    
    
    #### Rule Upload_1st_Payroll (Upload 1st Payroll)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Payroll_K_oncierge_Upload_1st_Payroll](#payroll_k_oncierge_upload_1st_payroll)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Project_Task.Name| Equal To|Upload 1st Payroll|
    |2|Get_Project_Task.Status__c| Equal To|Completed|
    |3|Get_Project_Task.OwnerId| Equal To|0051G000006HUFrQAO|
    |4|$User.Id| Equal To|0051G000006HUFrQAO|
    
    
    
    
    #### Rule First_Call_Declined (First Call Declined)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Services_Declined](#services_declined)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Project_Task.Name| Contains|Hold First Call|
    |2|Get_Project_Task.Status__c| Equal To|Declined|
    
    
    
    
    ### Initial_Call_not_yet_Scheduled_or_Completed
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Initial Call not yet Scheduled or Completed|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Initial_Call_Not_Scheduled_Completed (Initial Call Not Scheduled or Completed)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Follow_Up_with_Plan_Sponsor](#follow_up_with_plan_sponsor)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Imp.Koncierge_Initial_Call__c| Is Null|✅|
    |2|Get_Imp.Koncierge_Initial_Call_Scheduled__c| Is Null|✅|
    |3|Upload1stPayroll.Status__c| Not Equal To|Declined|
    |4|Upload1stPayroll.Status__c| Not Equal To|Not Needed|
    
    
    
    
    ### Initial_Call_not_yet_Scheduled_or_Completed_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Initial Call not yet Scheduled or Completed|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Initial_Call_Not_Scheduled_Completed_0 (Initial Call Not Scheduled or Completed)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Create_Case](#create_case)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Imp.Koncierge_Initial_Call__c| Is Null|✅|
    |2|Get_Imp.Koncierge_Initial_Call_Scheduled__c| Is Null|✅|
    |3|Upload1stPayroll.Status__c| Not Equal To|Declined|
    |4|Upload1stPayroll.Status__c| Not Equal To|Not Needed|
    
    
    
    
    ### Create_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Create Case|
    |Store Output Automatically|✅|
    |Connector|Wait_5_Days|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|Get_Imp.Account__c|
    |Category__c|Missing Client Information|
    |Description|[description](#description)|
    |Origin|Internal|
    |OwnerId|0051G000006HUFrQAO|
    |Plan__c|Get_Imp.Plan__c|
    |Sub_Category__c|Scheduled call|
    |Subject|subject|
    |Team_Member__c|Melissa Srica|
    
    
    
    
    ### Create_Task
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Label|Create Task|
    |Input Reference|emailTask|
    |Connector|[Eligible_for_Email_Follow_Up](#eligible_for_email_follow_up)|
    
    
    ### Create_Task_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Label|Create Task|
    |Input Reference|emailTask|
    
    
    ### Get_1st_Call_Task
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Project_Task__c|
    |Label|Get 1st Call Task|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|Upload1stPayroll|
    |Queried Fields|- Id<br/>- Status__c<br/>|
    |Connector|[Initial_Call_not_yet_Scheduled_or_Completed](#initial_call_not_yet_scheduled_or_completed)|
    
    
    #### Filters (logic: **1 AND (2 OR 3)**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Implementation__c| Equal To|Get_Imp.Id|
    |2|Name| Equal To|Hold First Call Based on Survey Results|
    |3|Name| Equal To|Initial Call|
    
    
    
    
    ### Get_Imp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Implementation__c|
    |Label|Get Imp|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Initial_Call_not_yet_Scheduled_or_Completed_0](#initial_call_not_yet_scheduled_or_completed_0)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Project_Task.Implementation__c|
    
    
    
    
    ### Get_Plan_Sponsor
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Associated_Contact__c|
    |Label|Get Plan Sponsor|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Eligible_for_Email_Send](#eligible_for_email_send)|
    
    
    #### Filters (logic: **1 AND (2 OR 3 OR 4)**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Implementation__c| Equal To|Get_Project_Task.Implementation__c|
    |2|Contact_Role__c| Contains|Plan Sponsor|
    |3|Contact_Role__c| Contains|Authorized Buyer|
    |4|Contact_Role__c| Contains|Trustee|
    
    
    
    
    ### Get_Project_Task
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Project_Task__c|
    |Label|Get Project Task|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Get_Plan_Sponsor](#get_plan_sponsor)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

