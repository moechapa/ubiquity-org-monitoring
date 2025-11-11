# Add_On_Before_Save_Payroll_Master history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Add_On_Before_Save_Payroll_Master-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record Before Save</b>"]):::startClass
    click START "#general-information" "3451193693"
    
    DI_Complete[\"🟰 <em></em><br/>DI Complete"/]:::assignments
    click DI_Complete "#di_complete" "1037210889"
    
    EPS_Complete[\"🟰 <em></em><br/>EPS Complete"/]:::assignments
    click EPS_Complete "#eps_complete" "797376170"
    
    Stage_to_Test_Files_Failed[\"🟰 <em></em><br/>Stage to Test Files Failed"/]:::assignments
    click Stage_to_Test_Files_Failed "#stage_to_test_files_failed" "2090460833"
    
    Stage_to_Test_Files_Passed[\"🟰 <em></em><br/>Stage to Test Files Passed"/]:::assignments
    click Stage_to_Test_Files_Passed "#stage_to_test_files_passed" "2565339139"
    
    Update_to_Awaiting_Vendor_Response1[\"🟰 <em></em><br/>Update to Awaiting Vendor Response"/]:::assignments
    click Update_to_Awaiting_Vendor_Response1 "#update_to_awaiting_vendor_response1" "216481053"
    
    Update_to_Operational_Set_Up_in_Progress[\"🟰 <em></em><br/>Update to Operational Set Up in Progress"/]:::assignments
    click Update_to_Operational_Set_Up_in_Progress "#update_to_operational_set_up_in_progress" "4068078744"
    
    Update_to_Pending_First_Upload[\"🟰 <em></em><br/>Update to Pending First Upload"/]:::assignments
    click Update_to_Pending_First_Upload "#update_to_pending_first_upload" "362183622"
    
    Update_to_Pending_Payroll[\"🟰 <em></em><br/>Update to Pending Payroll"/]:::assignments
    click Update_to_Pending_Payroll "#update_to_pending_payroll" "1021614145"
    
    Update_to_Test_Files_Received1[\"🟰 <em></em><br/>Update to Test Files Received"/]:::assignments
    click Update_to_Test_Files_Received1 "#update_to_test_files_received1" "4163061072"
    
    Service_Option{"🔀 <em></em><br/>Service Option"}:::decisions
    click Service_Option "#service_option" "1331260992"
    
    Stage_Change{"🔀 <em></em><br/>Stage Change?"}:::decisions
    click Stage_Change "#stage_change" "1996803002"
    
    What_Happened_DI{"🔀 <em></em><br/>What Happened- DI"}:::decisions
    click What_Happened_DI "#what_happened_di" "2575687327"
    
    What_Happened_EPS{"🔀 <em></em><br/>What Happened - EPS"}:::decisions
    click What_Happened_EPS "#what_happened_eps" "4211638034"
    
    Update_Last_Stage_Change_Field[("🛠️ <em></em><br/>Update Last Stage Change Field")]:::recordUpdates
    click Update_Last_Stage_Change_Field "#update_last_stage_change_field" "1948296647"
    
    DI_Complete --> END_DI_Complete
    EPS_Complete --> END_EPS_Complete
    Stage_to_Test_Files_Failed --> END_Stage_to_Test_Files_Failed
    Stage_to_Test_Files_Passed --> END_Stage_to_Test_Files_Passed
    Update_to_Awaiting_Vendor_Response1 --> END_Update_to_Awaiting_Vendor_Response1
    Update_to_Operational_Set_Up_in_Progress --> END_Update_to_Operational_Set_Up_in_Progress
    Update_to_Pending_First_Upload --> END_Update_to_Pending_First_Upload
    Update_to_Pending_Payroll --> END_Update_to_Pending_Payroll
    Update_to_Test_Files_Received1 --> END_Update_to_Test_Files_Received1
    Service_Option --> |"DI"| What_Happened_DI
    Service_Option --> |"EPS"| What_Happened_EPS
    Stage_Change --> |"New Stage"| Update_Last_Stage_Change_Field
    Stage_Change --> |"Default Outcome"| END_Stage_Change
    What_Happened_DI --> |"Payroll Vendor Email Added"| Update_to_Awaiting_Vendor_Response1
    What_Happened_DI --> |"Test Files Received"| Update_to_Test_Files_Received1
    What_Happened_DI --> |"Test Files Passed?"| Stage_to_Test_Files_Passed
    What_Happened_DI --> |"Test Files Failed"| Stage_to_Test_Files_Failed
    What_Happened_DI --> |"Test Files Failed Again"| Update_Last_Stage_Change_Field
    What_Happened_DI --> |"Activation Date Added"| DI_Complete
    What_Happened_DI --> |"Default Outcome"| Stage_Change
    What_Happened_EPS --> |"Login Credentials Received"| Update_to_Pending_Payroll
    What_Happened_EPS --> |"Requested Source Mapping"| Update_to_Operational_Set_Up_in_Progress
    What_Happened_EPS --> |"Handoff to TPI Task Complete"| Update_to_Pending_First_Upload
    What_Happened_EPS --> |"First Payroll Uploaded"| EPS_Complete
    What_Happened_EPS --> |"Default Outcome"| Stage_Change
    Update_Last_Stage_Change_Field --> END_Update_Last_Stage_Change_Field
    START -->  Service_Option
    END_DI_Complete(( END )):::endClass
    END_EPS_Complete(( END )):::endClass
    END_Stage_to_Test_Files_Failed(( END )):::endClass
    END_Stage_to_Test_Files_Passed(( END )):::endClass
    END_Update_to_Awaiting_Vendor_Response1(( END )):::endClass
    END_Update_to_Operational_Set_Up_in_Progress(( END )):::endClass
    END_Update_to_Pending_First_Upload(( END )):::endClass
    END_Update_to_Pending_Payroll(( END )):::endClass
    END_Update_to_Test_Files_Received1(( END )):::endClass
    END_Stage_Change(( END )):::endClass
    END_Update_Last_Stage_Change_Field(( END )):::endClass
    
    
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
    |Trigger Type| Record Before Save|
    |Record Trigger Type| Create And Update|
    |Label|Add-On | Before Save | Payroll Master|
    |Status|Active|
    |Description|Master flow for before-save updates|
    |Environments|Default|
    |Interview Label|Add-On | Before Save | Payroll Master {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Service_Option](#service_option)|
    |Next Node|[Service_Option](#service_option)|
    
    
    #### Filters (logic: **or**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Service_Option__c| Equal To|Direct Integration|
    |2|Service_Option__c| Equal To|Enhanced Payroll Service|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |today|Date|TODAY()|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### DI_Complete
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|DI Complete|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Product_Stage__c| Assign|Integration Complete|
    |$Record.Product_Status__c| Assign|Completed Setup|
    |$Record.Last_Stage_Change__c| Assign|today|
    
    
    
    
    ### EPS_Complete
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|EPS Complete|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Product_Stage__c| Assign|Integration Complete|
    |$Record.Product_Status__c| Assign|Completed Setup|
    |$Record.Last_Stage_Change__c| Assign|today|
    
    
    
    
    ### Stage_to_Test_Files_Failed
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Stage to Test Files Failed|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Product_Stage__c| Assign|Test Files Reviewed - Corrections Needed|
    |$Record.Last_Stage_Change__c| Assign|today|
    
    
    
    
    ### Stage_to_Test_Files_Passed
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Stage to Test Files Passed|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Product_Stage__c| Assign|Test Files Passed - Pending First Payroll|
    |$Record.Last_Stage_Change__c| Assign|today|
    
    
    
    
    ### Update_to_Awaiting_Vendor_Response1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Update to Awaiting Vendor Response|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Product_Stage__c| Assign|Awaiting Vendor Response|
    |$Record.Last_Stage_Change__c| Assign|today|
    
    
    
    
    ### Update_to_Operational_Set_Up_in_Progress
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Update to Operational Set Up in Progress|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Product_Stage__c| Assign|Operation Set Up In Progress|
    |$Record.Last_Stage_Change__c| Assign|today|
    
    
    
    
    ### Update_to_Pending_First_Upload
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Update to Pending First Upload|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Product_Stage__c| Assign|Pending First EPS Upload|
    |$Record.Last_Stage_Change__c| Assign|today|
    
    
    
    
    ### Update_to_Pending_Payroll
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Update to Pending Payroll|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Product_Stage__c| Assign|Pending First Payroll Submission|
    |$Record.Last_Stage_Change__c| Assign|today|
    
    
    
    
    ### Update_to_Test_Files_Received1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Update to Test Files Received|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Product_Stage__c| Assign|Reviewing Test Files|
    |$Record.Product_Stage__c| Assign|today|
    
    
    
    
    ### Service_Option
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Service Option|
    |Default Connector|[What_Happened_EPS](#what_happened_eps)|
    |Default Connector Label|EPS|
    
    
    #### Rule DI (DI)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[What_Happened_DI](#what_happened_di)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Service_Option__c| Equal To|Direct Integration|
    
    
    
    
    ### Stage_Change
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Stage Change?|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule New_Stage (New Stage)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Last_Stage_Change_Field](#update_last_stage_change_field)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Product_Stage__c| Is Changed|✅|
    
    
    
    
    ### What_Happened_DI
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|What Happened- DI|
    |Default Connector|[Stage_Change](#stage_change)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Payroll_Vendor_Email_Added (Payroll Vendor Email Added)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[Update_to_Awaiting_Vendor_Response1](#update_to_awaiting_vendor_response1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Payroll_Vendor_Email__c| Is Blank|⬜|
    
    
    
    
    #### Rule Test_Files_Received (Test Files Received)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[Update_to_Test_Files_Received1](#update_to_test_files_received1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Test_File_Received__c| Is Blank|⬜|
    
    
    
    
    #### Rule Test_Files_Passed (Test Files Passed?)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[Stage_to_Test_Files_Passed](#stage_to_test_files_passed)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Test_Files_Passed__c| Is Blank|⬜|
    
    
    
    
    #### Rule DI_Test_Files_Failed (Test Files Failed)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[Stage_to_Test_Files_Failed](#stage_to_test_files_failed)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Test_Files_Failed__c| Is Blank|⬜|
    
    
    
    
    #### Rule Test_Files_Failed_Again (Test Files Failed Again)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|isGoTo: true<br/>targetReference: Update_Last_Stage_Change_Field<br/>|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record__Prior.Test_Files_Failed__c| Is Blank|⬜|
    |2|$Record.Test_Files_Failed__c| Is Changed|✅|
    
    
    
    
    #### Rule Activation_Date_Added (Activation Date Added)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[DI_Complete](#di_complete)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.X1st_Payroll_Expected__c| Is Blank|⬜|
    
    
    
    
    ### What_Happened_EPS
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|What Happened - EPS|
    |Default Connector|[Stage_Change](#stage_change)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Login_Credentials_Received (Login Credentials Received)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[Update_to_Pending_Payroll](#update_to_pending_payroll)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Login_Credentials_Received__c| Is Blank|⬜|
    
    
    
    
    #### Rule Requested_Source_Mapping (Requested Source Mapping)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[Update_to_Operational_Set_Up_in_Progress](#update_to_operational_set_up_in_progress)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Requested_Source_Mapping__c| Is Blank|⬜|
    
    
    
    
    #### Rule Handoff_to_TPI_Task_Complete (Handoff to TPI Task Complete)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[Update_to_Pending_First_Upload](#update_to_pending_first_upload)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Date_Given_To_Third_Party_Integrator__c| Is Blank|⬜|
    
    
    
    
    #### Rule First_Payroll_Uploaded (First Payroll Uploaded)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[EPS_Complete](#eps_complete)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.X1st_Payroll_Uploaded__c| Is Blank|⬜|
    
    
    
    
    ### Update_Last_Stage_Change_Field
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Last Stage Change Field|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Last_Stage_Change__c|$Flow.CurrentDate|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

