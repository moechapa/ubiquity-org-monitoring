# Invoice_Line_Item_After_Save_Update_Parent_Account history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Invoice_Line_Item_After_Save_Update_Parent_Account-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "202060348"
    
    Assign_new_employee_tier[\"🟰 <em></em><br/>Assign new employee tier"/]:::assignments
    click Assign_new_employee_tier "#assign_new_employee_tier" "2553835731"
    
    Assign_new_service_option[\"🟰 <em></em><br/>Assign new service option"/]:::assignments
    click Assign_new_service_option "#assign_new_service_option" "50837808"
    
    Define_Parent_Account[\"🟰 <em></em><br/>Define Parent Account"/]:::assignments
    click Define_Parent_Account "#define_parent_account" "3197092316"
    
    Check_if_account_needs_new_billed_employee_tier{"🔀 <em></em><br/>Check if account needs new billed employee tier"}:::decisions
    click Check_if_account_needs_new_billed_employee_tier "#check_if_account_needs_new_billed_employee_tier" "443806018"
    
    Check_if_account_needs_new_billed_service_option{"🔀 <em></em><br/>Check if account needs new billed service option"}:::decisions
    click Check_if_account_needs_new_billed_service_option "#check_if_account_needs_new_billed_service_option" "2574059955"
    
    Check_if_update_needed{"🔀 <em></em><br/>Check if update needed"}:::decisions
    click Check_if_update_needed "#check_if_update_needed" "1722758706"
    
    Update_parent_account[("🛠️ <em></em><br/>Update parent account")]:::recordUpdates
    click Update_parent_account "#update_parent_account" "284844467"
    
    Assign_new_employee_tier --> Check_if_update_needed
    Assign_new_service_option --> Check_if_account_needs_new_billed_employee_tier
    Define_Parent_Account --> Check_if_account_needs_new_billed_service_option
    Check_if_account_needs_new_billed_employee_tier --> |"Employee tier mismatch"| Assign_new_employee_tier
    Check_if_account_needs_new_billed_employee_tier --> |"Default Outcome"| Check_if_update_needed
    Check_if_account_needs_new_billed_service_option --> |"Service option mismatch"| Assign_new_service_option
    Check_if_account_needs_new_billed_service_option --> |"Default Outcome"| Check_if_account_needs_new_billed_employee_tier
    Check_if_update_needed --> |"Parent account needs update"| Update_parent_account
    Check_if_update_needed --> |"Default Outcome"| END_Check_if_update_needed
    Update_parent_account --> END_Update_parent_account
    START -->  Define_Parent_Account
    END_Check_if_update_needed(( END )):::endClass
    END_Update_parent_account(( END )):::endClass
    
    
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
    |Object|Invoice_Line_Items__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create And Update|
    |Label|Invoice Line Item | After Save | Update Parent Account|
    |Status|Active|
    |Does Require Record Changed To Meet Criteria|✅|
    |Environments|Default|
    |Interview Label|Invoice Line Item | After Save | Update Parent Account {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Define_Parent_Account](#define_parent_account)|
    |Next Node|[Define_Parent_Account](#define_parent_account)|
    
    
    #### Filters (logic: **or**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Employee_Tier__c| Is Null|<!-- -->|
    |2|Service_Option__c| Is Null|<!-- -->|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |newEmployeeTier|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |newServiceOption|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |parentAccount|SObject|⬜|✅|⬜|Account|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Assign_new_employee_tier
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign new employee tier|
    |Connector|[Check_if_update_needed](#check_if_update_needed)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |parentAccount.Billed_Employee_Tier__c| Assign|$Record.Employee_Tier__c|
    
    
    
    
    ### Assign_new_service_option
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign new service option|
    |Connector|[Check_if_account_needs_new_billed_employee_tier](#check_if_account_needs_new_billed_employee_tier)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |parentAccount.Billed_Service_Option__c| Assign|$Record.Service_Option__c|
    
    
    
    
    ### Define_Parent_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Define Parent Account|
    |Connector|[Check_if_account_needs_new_billed_service_option](#check_if_account_needs_new_billed_service_option)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |parentAccount.Id| Assign|$Record.Invoice__r.Account__c|
    |parentAccount.Billed_Employee_Tier__c| Assign|$Record.Invoice__r.Account__r.Billed_Employee_Tier__c|
    |parentAccount.Billed_Service_Option__c| Assign|$Record.Invoice__r.Account__r.Billed_Service_Option__c|
    
    
    
    
    ### Check_if_account_needs_new_billed_employee_tier
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check if account needs new billed employee tier|
    |Default Connector|[Check_if_update_needed](#check_if_update_needed)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Employee_tier_mismatch (Employee tier mismatch)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_new_employee_tier](#assign_new_employee_tier)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Employee_Tier__c| Not Equal To|parentAccount.Billed_Employee_Tier__c|
    |2|$Record.Employee_Tier__c| Is Null|⬜|
    
    
    
    
    ### Check_if_account_needs_new_billed_service_option
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check if account needs new billed service option|
    |Default Connector|[Check_if_account_needs_new_billed_employee_tier](#check_if_account_needs_new_billed_employee_tier)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Service_option_mismatch (Service option mismatch)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_new_service_option](#assign_new_service_option)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Service_Option__c| Not Equal To|parentAccount.Billed_Service_Option__c|
    |2|$Record.Service_Option__c| Is Null|⬜|
    
    
    
    
    ### Check_if_update_needed
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check if update needed|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Parent_account_needs_update (Parent account needs update)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_parent_account](#update_parent_account)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Employee_tier_mismatch| Equal To|✅|
    |2|Service_option_mismatch| Equal To|✅|
    
    
    
    
    ### Update_parent_account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update parent account|
    |Input Reference|parentAccount|
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

