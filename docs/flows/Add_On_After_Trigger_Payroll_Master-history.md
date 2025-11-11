# Add_On_After_Trigger_Payroll_Master history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Add_On_After_Trigger_Payroll_Master-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "541239591"
    
    Send_Completion_Email("📧 <em></em><br/>Send Completion Email"):::actionCalls
    click Send_Completion_Email "#send_completion_email" "1716377831"
    
    Send_Email_when_Stage_is_Awaiting_Response("📧 <em></em><br/>Send Email when Stage is Awaiting Response"):::actionCalls
    click Send_Email_when_Stage_is_Awaiting_Response "#send_email_when_stage_is_awaiting_response" "1948503865"
    
    Send_Integration_Complete_Email("📧 <em></em><br/>Send Integration Complete Email"):::actionCalls
    click Send_Integration_Complete_Email "#send_integration_complete_email" "1901386261"
    
    Send_Review_Test_Files("📧 <em></em><br/>Send Review Test Files"):::actionCalls
    click Send_Review_Test_Files "#send_review_test_files" "142621229"
    
    Assign_Other_Emails[\"🟰 <em></em><br/>Assign Other Emails"/]:::assignments
    click Assign_Other_Emails "#assign_other_emails" "1495252387"
    
    Assign_Sponsor_Id_and_Email[\"🟰 <em></em><br/>Assign Sponsor Id and Email"/]:::assignments
    click Assign_Sponsor_Id_and_Email "#assign_sponsor_id_and_email" "1626433232"
    
    EPS_180[\"🟰 <em></em><br/>EPS 180"/]:::assignments
    click EPS_180 "#eps_180" "3465185546"
    
    EPS_360[\"🟰 <em></em><br/>EPS 360"/]:::assignments
    click EPS_360 "#eps_360" "2405293408"
    
    X180_Template_Assignment[\"🟰 <em></em><br/>180 Template Assignment"/]:::assignments
    click X180_Template_Assignment "#x180_template_assignment" "3003404466"
    
    X360_Template_Assignment[\"🟰 <em></em><br/>360 Template Assignment"/]:::assignments
    click X360_Template_Assignment "#x360_template_assignment" "636201974"
    
    DI_180_or_360{"🔀 <em></em><br/>DI 180 or 360"}:::decisions
    click DI_180_or_360 "#di_180_or_360" "2775767268"
    
    DI_What_Updated{"🔀 <em></em><br/>DI- What Updated?"}:::decisions
    click DI_What_Updated "#di_what_updated" "1199873154"
    
    EPS180_or_360{"🔀 <em></em><br/>180 or 360"}:::decisions
    click EPS180_or_360 "#eps180_or_360" "603621652"
    
    EPS_or_DI{"🔀 <em></em><br/>EPS or DI?"}:::decisions
    click EPS_or_DI "#eps_or_di" "2244992408"
    
    EPS_What_Happened{"🔀 <em></em><br/>EPS- What Happened?"}:::decisions
    click EPS_What_Happened "#eps_what_happened" "3781138772"
    
    Sponsor_Found{"🔀 <em></em><br/>Sponsor Found?"}:::decisions
    click Sponsor_Found "#sponsor_found" "634038534"
    
    AC_Loop{{"🔁 <em></em><br/>AC Loop"}}:::loops
    click AC_Loop "#ac_loop" "2013032789"
    
    Create_30_Day_Follow_Up_Case[("➕ <em></em><br/>Create 30 Day Follow Up Case")]:::recordCreates
    click Create_30_Day_Follow_Up_Case "#create_30_day_follow_up_case" "852601337"
    
    Create_75_Day_Follow_Up_Case[("➕ <em></em><br/>Create 75 Day Follow Up Case")]:::recordCreates
    click Create_75_Day_Follow_Up_Case "#create_75_day_follow_up_case" "3533160983"
    
    Create_Error_Case[("➕ <em></em><br/>Create Error Case")]:::recordCreates
    click Create_Error_Case "#create_error_case" "494389517"
    
    Get_ACs[("🔍 <em></em><br/>Get ACs")]:::recordLookups
    click Get_ACs "#get_acs" "4045691607"
    
    Send_Completion_Email --> END_Send_Completion_Email
    Send_Completion_Email -. Fault .->Create_Error_Case
    Send_Email_when_Stage_is_Awaiting_Response --> END_Send_Email_when_Stage_is_Awaiting_Response
    Send_Email_when_Stage_is_Awaiting_Response -. Fault .->Create_Error_Case
    Send_Integration_Complete_Email --> Create_30_Day_Follow_Up_Case
    Send_Integration_Complete_Email -. Fault .->Create_Error_Case
    Send_Review_Test_Files --> END_Send_Review_Test_Files
    Send_Review_Test_Files -. Fault .->Create_Error_Case
    Assign_Other_Emails --> AC_Loop
    Assign_Sponsor_Id_and_Email --> AC_Loop
    EPS_180 --> Send_Completion_Email
    EPS_360 --> Send_Completion_Email
    X180_Template_Assignment --> Send_Integration_Complete_Email
    X360_Template_Assignment --> Send_Integration_Complete_Email
    DI_180_or_360 --> |"180"| X180_Template_Assignment
    DI_180_or_360 --> |"Default Outcome"| X360_Template_Assignment
    DI_What_Updated --> |"Stage: Awaiting Vendor Response"| Send_Email_when_Stage_is_Awaiting_Response
    DI_What_Updated --> |"Stage: Review Test Files"| Send_Review_Test_Files
    DI_What_Updated --> |"Stage: Integration Complete"| DI_180_or_360
    DI_What_Updated --> |"Default Outcome"| END_DI_What_Updated
    EPS180_or_360 --> |"Gusto"| Send_Completion_Email
    EPS180_or_360 --> |"Template for 180"| EPS_180
    EPS180_or_360 --> |"Default Outcome"| EPS_360
    EPS_or_DI --> |"DI"| DI_What_Updated
    EPS_or_DI --> |"EPS"| EPS_What_Happened
    EPS_or_DI --> |"Default Outcome"| END_EPS_or_DI
    EPS_What_Happened --> |"Stage: Pending First Upload"| EPS180_or_360
    EPS_What_Happened --> |"Stage: EPS Complete"| Create_30_Day_Follow_Up_Case
    EPS_What_Happened --> |"Default Outcome"| END_EPS_What_Happened
    Sponsor_Found --> |"Yes, First Sponsor"| Assign_Sponsor_Id_and_Email
    Sponsor_Found --> |"Get Other Sponsors and Advisors"| Assign_Other_Emails
    AC_Loop --> |"For Each"|Sponsor_Found
    AC_Loop ---> |"After Last"|EPS_or_DI
    Create_30_Day_Follow_Up_Case --> Create_75_Day_Follow_Up_Case
    Create_75_Day_Follow_Up_Case --> END_Create_75_Day_Follow_Up_Case
    Create_Error_Case --> END_Create_Error_Case
    Get_ACs --> AC_Loop
    START -->  Get_ACs
    END_Send_Completion_Email(( END )):::endClass
    END_Send_Email_when_Stage_is_Awaiting_Response(( END )):::endClass
    END_Send_Review_Test_Files(( END )):::endClass
    END_DI_What_Updated(( END )):::endClass
    END_EPS_or_DI(( END )):::endClass
    END_EPS_What_Happened(( END )):::endClass
    END_Create_75_Day_Follow_Up_Case(( END )):::endClass
    END_Create_Error_Case(( END )):::endClass
    
    
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
    |Object|Add_On_Products__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create And Update|
    |Label|Add-On | After Trigger | Payroll Master|
    |Status|Active|
    |Environments|Default|
    |Interview Label|Add-On | After Trigger | Payroll Master {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_ACs](#get_acs)|
    |Next Node|[Get_ACs](#get_acs)|
    
    
    #### Filters (logic: **(1 OR 2) AND 3 AND (4 OR 5)**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Service_Option__c| Equal To|Direct Integration|
    |2|Service_Option__c| Equal To|Enhanced Payroll Service|
    |3|Opportunity__c| Is Null|<!-- -->|
    |4|Product_Status__c| Equal To|New|
    |5|Product_Status__c| Equal To|In Progress|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |emailsToSendTo|String|✅|✅|✅|<!-- -->|<!-- -->|
    |sponsorFound|Boolean|⬜|✅|⬜|<!-- -->|<!-- -->|
    |sponsorId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    |templateId|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |x30DayDate|Date|TODAY() + 30|<!-- -->|
    |x75DayDate|Date|TODAY() + 75|<!-- -->|
    
    
    ## Text Templates
    
    |Name|Text|Description|
    |:-- |:-- |:--  |
    |x30DayDesc|It has been 30 days since {!$Record.Account__r.Name}'s payroll integration was completed. Please follow up with them to check on their payroll integration.|<!-- -->|
    |x30DaySubj|30 Day Followup|<!-- -->|
    |x75DayDesc|It has been 75 days since {!$Record.Account__r.Name}'s payroll integration was completed. Please follow up with them to check on their payroll integration.|<!-- -->|
    |x75DaySubj|75 Day Followup|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Send_Completion_Email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send Completion Email|
    |Action Type|Email Simple|
    |Action Name|emailSimple|
    |Fault Connector|isGoTo: true<br/>targetReference: Create_Error_Case<br/>|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|emailSimple|
    |Offset|0|
    |Email Addresses Array (input)|emailsToSendTo|
    |Sender Type (input)|OrgWideEmailAddress|
    |Sender Address (input)|ubiquitypayroll@myubiquity.com|
    |Related Record Id (input)|$Record.Id|
    |Recipient Id (input)|sponsorId|
    |Log Email On Send (input)|✅|
    |Email Template Id (input)|templateId|
    
    
    ### Send_Email_when_Stage_is_Awaiting_Response
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send Email when Stage is Awaiting Response|
    |Action Type|Email Simple|
    |Action Name|emailSimple|
    |Fault Connector|[Create_Error_Case](#create_error_case)|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|emailSimple|
    |Offset|0|
    |Email Addresses Array (input)|emailsToSendTo|
    |Sender Type (input)|OrgWideEmailAddress|
    |Sender Address (input)|ubiquitypayroll@myubiquity.com|
    |Related Record Id (input)|$Record.Id|
    |Recipient Id (input)|sponsorId|
    |Log Email On Send (input)|✅|
    |Email Template Id (input)|00XUo000001OvKj|
    
    
    ### Send_Integration_Complete_Email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send Integration Complete Email|
    |Action Type|Email Simple|
    |Action Name|emailSimple|
    |Fault Connector|isGoTo: true<br/>targetReference: Create_Error_Case<br/>|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|emailSimple|
    |Offset|0|
    |Email Addresses Array (input)|emailsToSendTo|
    |Related Record Id (input)|$Record.Id|
    |Recipient Id (input)|sponsorId|
    |Log Email On Send (input)|✅|
    |Email Template Id (input)|templateId|
    |Connector|[Create_30_Day_Follow_Up_Case](#create_30_day_follow_up_case)|
    
    
    ### Send_Review_Test_Files
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send Review Test Files|
    |Action Type|Email Simple|
    |Action Name|emailSimple|
    |Fault Connector|isGoTo: true<br/>targetReference: Create_Error_Case<br/>|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|emailSimple|
    |Offset|0|
    |Email Addresses Array (input)|emailsToSendTo|
    |Sender Type (input)|OrgWideEmailAddress|
    |Sender Address (input)|ubiquitypayroll@myubiquity.com|
    |Related Record Id (input)|$Record.Id|
    |Recipient Id (input)|sponsorId|
    |Log Email On Send (input)|✅|
    |Email Template Id (input)|00XUo000001OvKj|
    
    
    ### Assign_Other_Emails
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Other Emails|
    |Connector|[AC_Loop](#ac_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |emailsToSendTo| Add|AC_Loop.Useable_Email__c|
    
    
    
    
    ### Assign_Sponsor_Id_and_Email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Sponsor Id and Email|
    |Connector|[AC_Loop](#ac_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |sponsorFound| Assign|✅|
    |emailsToSendTo| Add|AC_Loop.Useable_Email__c|
    |sponsorId| Assign|AC_Loop.Contact__r.Id|
    
    
    
    
    ### EPS_180
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|EPS 180|
    |Connector|[Send_Completion_Email](#send_completion_email)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |templateId| Assign|00X1G000000g2Ss|
    
    
    
    
    ### EPS_360
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|EPS 360|
    |Connector|[Send_Completion_Email](#send_completion_email)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |templateId| Assign|00XUo000001NqyD|
    
    
    
    
    ### X180_Template_Assignment
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|180 Template Assignment|
    |Connector|[Send_Integration_Complete_Email](#send_integration_complete_email)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |templateId| Assign|00XUo000001OsOU|
    |emailsToSendTo| Add|$Record.Payroll_Vendor_Email__c|
    
    
    
    
    ### X360_Template_Assignment
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|360 Template Assignment|
    |Connector|[Send_Integration_Complete_Email](#send_integration_complete_email)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |templateId| Assign|00XUo000001OtZ3|
    |emailsToSendTo| Add|$Record.Payroll_Vendor_Email__c|
    
    
    
    
    ### DI_180_or_360
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|DI 180 or 360|
    |Default Connector|[X360_Template_Assignment](#x360_template_assignment)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule X180 (180)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[X180_Template_Assignment](#x180_template_assignment)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Integration_Type__c| Equal To|180|
    
    
    
    
    ### DI_What_Updated
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|DI- What Updated?|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Awaiting_Vendor_Response (Stage: Awaiting Vendor Response)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[Send_Email_when_Stage_is_Awaiting_Response](#send_email_when_stage_is_awaiting_response)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Product_Stage__c| Equal To|Awaiting Vendor Response|
    
    
    
    
    #### Rule Review_Test_Files (Stage: Review Test Files)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[Send_Review_Test_Files](#send_review_test_files)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Product_Stage__c| Equal To|Reviewing Test Files|
    
    
    
    
    #### Rule Stage_Integration_Complete (Stage: Integration Complete)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[DI_180_or_360](#di_180_or_360)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Product_Stage__c| Equal To|Integration Complete|
    
    
    
    
    ### EPS180_or_360
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|180 or 360|
    |Default Connector|[EPS_360](#eps_360)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Gusto (Gusto)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Send_Completion_Email](#send_completion_email)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Payroll_Provider__c| Equal To|Gusto|
    
    
    
    
    #### Rule Template_for_180 (Template for 180)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[EPS_180](#eps_180)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Integration_Type__c| Equal To|180|
    
    
    
    
    ### EPS_or_DI
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|EPS or DI?|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule DI (DI)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[DI_What_Updated](#di_what_updated)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Service_Option__c| Equal To|Direct Integration|
    
    
    
    
    #### Rule EPS (EPS)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[EPS_What_Happened](#eps_what_happened)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Service_Option__c| Equal To|Enhanced Payroll Service|
    
    
    
    
    ### EPS_What_Happened
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|EPS- What Happened?|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Stage_Incorrect_Access_Level (Stage: Incorrect Access Level)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Product_Stage__c| Equal To|Incorrect Access Level|
    
    
    
    
    #### Rule Stage_Operational_Set_Up_In_Progress (Stage: Operational Set Up In Progress)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Product_Stage__c| Equal To|Operation Set Up In Progress|
    
    
    
    
    #### Rule Stage_Pending_First_Upload (Stage: Pending First Upload)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[EPS180_or_360](#eps180_or_360)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Product_Stage__c| Equal To|Pending First EPS Upload|
    
    
    
    
    #### Rule Stage_EPS_Complete (Stage: EPS Complete)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[Create_30_Day_Follow_Up_Case](#create_30_day_follow_up_case)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Product_Stage__c| Equal To|Integration Complete|
    
    
    
    
    ### Sponsor_Found
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Sponsor Found?|
    |Default Connector|[Assign_Other_Emails](#assign_other_emails)|
    |Default Connector Label|Get Other Sponsors and Advisors|
    
    
    #### Rule Yes_First_Sponsor (Yes, First Sponsor)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Sponsor_Id_and_Email](#assign_sponsor_id_and_email)|
    |Condition Logic|(1 OR 2) AND 3|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|AC_Loop.Contact_Role__c| Contains|Sponsor|
    |2|AC_Loop.Contact_Role__c| Equal To|Authorized Buyer|
    |3|sponsorFound| Equal To|⬜|
    
    
    
    
    ### AC_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|AC Loop|
    |Collection Reference|[Get_ACs](#get_acs)|
    |Iteration Order|Asc|
    |Next Value Connector|[Sponsor_Found](#sponsor_found)|
    |No More Values Connector|[EPS_or_DI](#eps_or_di)|
    
    
    ### Create_30_Day_Follow_Up_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Create 30 Day Follow Up Case|
    |Store Output Automatically|✅|
    |Connector|[Create_75_Day_Follow_Up_Case](#create_75_day_follow_up_case)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|$Record.Account__c|
    |ContactId|sponsorId|
    |Department__c|Payroll|
    |Description|x30DayDesc|
    |Follow_Up_Date__c|x30DayDate|
    |Origin|Internal|
    |Plan__c|$Record.Plan__c|
    |Sender_Role__c|Sponsor|
    |Status|Resolved|
    |Subject|x30DaySubj|
    
    
    
    
    ### Create_75_Day_Follow_Up_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Create 75 Day Follow Up Case|
    |Store Output Automatically|✅|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|$Record.Account__c|
    |ContactId|sponsorId|
    |Department__c|Payroll|
    |Description|x75DayDesc|
    |Follow_Up_Date__c|x75DayDate|
    |Origin|Internal|
    |Plan__c|$Record.Plan__c|
    |Sender_Role__c|Sponsor|
    |Status|Resolved|
    |Subject|x75DaySubj|
    
    
    
    
    ### Create_Error_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Create Error Case|
    |Store Output Automatically|✅|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|$Record.Account__c|
    |Department__c|Payroll|
    |Description|There was an error sending the automated email. Please send email manually|
    |Origin|Internal|
    |OwnerId|00537000002STLD|
    |Plan__c|$Record.Plan__c|
    |Sender_Role__c|Sponsor|
    |Status|New|
    |Subject|Error Sending Auto Email for Payroll Integration Setup|
    
    
    
    
    ### Get_ACs
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Associated_Contact__c|
    |Label|Get ACs|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Store Output Automatically|✅|
    |Connector|[AC_Loop](#ac_loop)|
    
    
    #### Filters (logic: **1 AND 5 AND (2 OR 3 OR 4)**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Opportunity__c| Equal To|$Record.Opportunity__c|
    |2|Contact_Role__c| Contains|Sponsor|
    |3|Contact_Role__c| Contains|Advisor|
    |4|Contact_Role__c| Equal To|Authorized Buyer|
    |5|Useable_Email__c| Is Null|<!-- -->|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

