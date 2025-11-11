# Task_Before_Update_Activity_Type_Email history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Task_Before_Update_Activity_Type_Email-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "2922797746"
    
    Account_Link_Required{"🔀 <em></em><br/>Account Link Required"}:::decisions
    click Account_Link_Required "#account_link_required" "2688738625"
    
    Activity_Type_Change{"🔀 <em></em><br/>Activity Type Change"}:::decisions
    click Activity_Type_Change "#activity_type_change" "3206584787"
    
    Update_Payroll_Submission_Status{"🔀 <em></em><br/>Update Payroll Submission Status"}:::decisions
    click Update_Payroll_Submission_Status "#update_payroll_submission_status" "1058155373"
    
    Get_Case[("🔍 <em></em><br/>Get Case")]:::recordLookups
    click Get_Case "#get_case" "775035072"
    
    Get_Contact[("🔍 <em></em><br/>Get Contact")]:::recordLookups
    click Get_Contact "#get_contact" "3918712095"
    
    Get_Imp[("🔍 <em></em><br/>Get Imp")]:::recordLookups
    click Get_Imp "#get_imp" "3922688049"
    
    Assign_Activity_Type[("🛠️ <em></em><br/>Assign Activity Type")]:::recordUpdates
    click Assign_Activity_Type "#assign_activity_type" "974399058"
    
    Update_Pardot_Email[("🛠️ <em></em><br/>Update Pardot Email")]:::recordUpdates
    click Update_Pardot_Email "#update_pardot_email" "1551094976"
    
    Update_Payroll_Submission_Date[("🛠️ <em></em><br/>Update Payroll Submission Date")]:::recordUpdates
    click Update_Payroll_Submission_Date "#update_payroll_submission_date" "1006520879"
    
    Update_Task_Related_To_Case[("🛠️ <em></em><br/>Update Task Related To Case")]:::recordUpdates
    click Update_Task_Related_To_Case "#update_task_related_to_case" "2694150455"
    
    Update_Task_Related_To_Contact[("🛠️ <em></em><br/>Update Task Related To Contact")]:::recordUpdates
    click Update_Task_Related_To_Contact "#update_task_related_to_contact" "2009044259"
    
    Update_Task_Related_to_Imp[("🛠️ <em></em><br/>Update Task Related to Imp")]:::recordUpdates
    click Update_Task_Related_to_Imp "#update_task_related_to_imp" "517298844"
    
    Account_Link_Required --> |"Imp Linked"| Get_Imp
    Account_Link_Required --> |"Case Linked"| Get_Case
    Account_Link_Required --> |"Name Linked"| Get_Contact
    Account_Link_Required --> |"Default Outcome"| END_Account_Link_Required
    Activity_Type_Change --> |"Pardot Email"| Update_Pardot_Email
    Activity_Type_Change --> |"Email"| Assign_Activity_Type
    Activity_Type_Change --> |"Pass"| Update_Payroll_Submission_Status
    Update_Payroll_Submission_Status --> |"Payroll ID Entered"| Update_Payroll_Submission_Date
    Update_Payroll_Submission_Status --> |"Pass"| Account_Link_Required
    Get_Case --> Update_Task_Related_To_Case
    Get_Contact --> Update_Task_Related_To_Contact
    Get_Imp --> Update_Task_Related_to_Imp
    Assign_Activity_Type --> Update_Payroll_Submission_Status
    Update_Pardot_Email --> Update_Payroll_Submission_Status
    Update_Payroll_Submission_Date --> Account_Link_Required
    Update_Task_Related_To_Case --> END_Update_Task_Related_To_Case
    Update_Task_Related_To_Contact --> END_Update_Task_Related_To_Contact
    Update_Task_Related_to_Imp --> END_Update_Task_Related_to_Imp
    START --> |"Run Immediately"| Activity_Type_Change
    END_Account_Link_Required(( END )):::endClass
    END_Update_Task_Related_To_Case(( END )):::endClass
    END_Update_Task_Related_To_Contact(( END )):::endClass
    END_Update_Task_Related_to_Imp(( END )):::endClass
    
    
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
    |Label|Task | Before Update | Activity Type = Email|
    |Status|Active|
    |Does Require Record Changed To Meet Criteria|✅|
    |Description|If Task includes Email in the subject, change the activity type to Email.|
    |Interview Label|Task | Before Update | Activity Type = Email {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    
    
    #### Scheduled Paths
    
    |Label|Name|Offset Number|Offset Unit|Record Field|Time Source|Connector|
    |:-- |:-- |:-- |:-- |:-- |:-- |:--  |
    |<!-- -->|<!-- -->|<!-- -->|<!-- -->|<!-- -->|<!-- -->|[Activity_Type_Change](#activity_type_change)|
    
    
    #### Filters (logic: **or**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Payroll_ID__c| Is Null|<!-- -->|
    |2|Activity_Type__c| Not Equal To|Automated Email|
    |3|WhatId| Starts With|500|
    |4|WhatId| Starts With|a2R|
    |5|WhoId| Is Null|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |today|Date|TODAY()|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Account_Link_Required
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Account Link Required|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Imp_Linked (Imp Linked)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Imp](#get_imp)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Account__c| Is Null|✅|
    |2|$Record.WhatId| Starts With|a2R|
    
    
    
    
    #### Rule Case_Linked (Case Linked)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Case](#get_case)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Account__c| Is Null|✅|
    |2|$Record.WhatId| Starts With|500|
    
    
    
    
    #### Rule Name_Linked (Name Linked)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Contact](#get_contact)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.WhoId| Is Null|⬜|
    |2|$Record.Account__c| Is Null|✅|
    |3|$Record.WhoId| Starts With|3|
    
    
    
    
    ### Activity_Type_Change
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Activity Type Change|
    |Default Connector|[Update_Payroll_Submission_Status](#update_payroll_submission_status)|
    |Default Connector Label|Pass|
    
    
    #### Rule Pardot_Email (Pardot Email)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Pardot_Email](#update_pardot_email)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.CreatedById| Contains|00537000004JSaR|
    |2|$Record.Subject| Contains|Pardot|
    |3|$Record.Activity_Type__c| Not Equal To|Automated Email|
    
    
    
    
    #### Rule Email (Email)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Activity_Type](#assign_activity_type)|
    |Condition Logic|1 AND 2 AND (3 OR 4)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Subject| Contains|Email:|
    |2|$Record.IsClosed| Equal To|✅|
    |3|$Record.Activity_Type__c| Is Null|✅|
    |4|$Record.Activity_Type__c| Equal To|Outbound Call|
    
    
    
    
    ### Update_Payroll_Submission_Status
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Update Payroll Submission Status|
    |Default Connector|[Account_Link_Required](#account_link_required)|
    |Default Connector Label|Pass|
    
    
    #### Rule Payroll_ID_Entered (Payroll ID Entered)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Payroll_Submission_Date](#update_payroll_submission_date)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Payroll_ID__c| Is Null|⬜|
    |2|$Record.Payroll_Submission_Date__c| Is Null|✅|
    
    
    
    
    ### Get_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Case|
    |Label|Get Case|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Update_Task_Related_To_Case](#update_task_related_to_case)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$Record.WhatId|
    
    
    
    
    ### Get_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Get Contact|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Update_Task_Related_To_Contact](#update_task_related_to_contact)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$Record.WhoId|
    
    
    
    
    ### Get_Imp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Implementation__c|
    |Label|Get Imp|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Update_Task_Related_to_Imp](#update_task_related_to_imp)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$Record.WhatId|
    
    
    
    
    ### Assign_Activity_Type
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Assign Activity Type|
    |Input Reference|$Record|
    |Connector|[Update_Payroll_Submission_Status](#update_payroll_submission_status)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Activity_Type__c|Email|
    
    
    
    
    ### Update_Pardot_Email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Pardot Email|
    |Input Reference|$Record|
    |Connector|[Update_Payroll_Submission_Status](#update_payroll_submission_status)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Activity_Type__c|Automated Email|
    |Type|Automated Email|
    
    
    
    
    ### Update_Payroll_Submission_Date
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Payroll Submission Date|
    |Input Reference|$Record|
    |Connector|[Account_Link_Required](#account_link_required)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Payroll_Submission_Date__c|today|
    
    
    
    
    ### Update_Task_Related_To_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Task Related To Case|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Account__c|$Record.Account__c|
    
    
    
    
    ### Update_Task_Related_To_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Task Related To Contact|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Account__c|Get_Contact.AccountId|
    
    
    
    
    ### Update_Task_Related_to_Imp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Task Related to Imp|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Account__c|Get_Imp.Account__c|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

