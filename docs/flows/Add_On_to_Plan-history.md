# Add_On_to_Plan history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Add_On_to_Plan-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Screen Flow</b>"]):::startClass
    click START "#general-information" "3501503975"
    
    Assign_OwnerId[\"🟰 <em></em><br/>Assign OwnerId"/]:::assignments
    click Assign_OwnerId "#assign_ownerid" "18772109"
    
    Assign_OwnerId_0[\"🟰 <em></em><br/>Assign OwnerId"/]:::assignments
    click Assign_OwnerId_0 "#assign_ownerid_0" "1169474288"
    
    Is_Opp_Owner_an_Active_RPC{"🔀 <em></em><br/>Is Opp Owner an Active RPC?"}:::decisions
    click Is_Opp_Owner_an_Active_RPC "#is_opp_owner_an_active_rpc" "1841588355"
    
    Is_there_an_Employee_Referrer{"🔀 <em></em><br/>Is there an Employee Referrer?"}:::decisions
    click Is_there_an_Employee_Referrer "#is_there_an_employee_referrer" "2083358499"
    
    Is_User_an_RPC{"🔀 <em></em><br/>Is User an RPC?"}:::decisions
    click Is_User_an_RPC "#is_user_an_rpc" "2258842507"
    
    Payroll_Integration{"🔀 <em></em><br/>Payroll Integration?"}:::decisions
    click Payroll_Integration "#payroll_integration" "124859809"
    
    Service_Options{"🔀 <em></em><br/>Service Options"}:::decisions
    click Service_Options "#service_options" "2325594287"
    
    Service_Options_0{"🔀 <em></em><br/>Service Options"}:::decisions
    click Service_Options_0 "#service_options_0" "3415824701"
    
    Create_CY_Opp[("➕ <em></em><br/>Create CY Opp")]:::recordCreates
    click Create_CY_Opp "#create_cy_opp" "3144379928"
    
    Create_CY_Opp_0[("➕ <em></em><br/>Create CY Opp")]:::recordCreates
    click Create_CY_Opp_0 "#create_cy_opp_0" "1093162743"
    
    Create_Direct_Int_Opp[("➕ <em></em><br/>Create Direct Int Opp")]:::recordCreates
    click Create_Direct_Int_Opp "#create_direct_int_opp" "1958348161"
    
    Create_Edukate_Opp[("➕ <em></em><br/>Create Edukate Opp")]:::recordCreates
    click Create_Edukate_Opp "#create_edukate_opp" "1583008067"
    
    Create_Edukate_Opp_0[("➕ <em></em><br/>Create Edukate Opp")]:::recordCreates
    click Create_Edukate_Opp_0 "#create_edukate_opp_0" "2219260565"
    
    Create_EPS_Opp[("➕ <em></em><br/>Create EPS Opp")]:::recordCreates
    click Create_EPS_Opp "#create_eps_opp" "2090207820"
    
    Create_EPS_Opp_0[("➕ <em></em><br/>Create EPS Opp")]:::recordCreates
    click Create_EPS_Opp_0 "#create_eps_opp_0" "2456094685"
    
    Create_Int_Opp[("➕ <em></em><br/>Create Int Opp")]:::recordCreates
    click Create_Int_Opp "#create_int_opp" "3093158495"
    
    Create_Partner_Referral_Opp[("➕ <em></em><br/>Create Partner Referral Opp")]:::recordCreates
    click Create_Partner_Referral_Opp "#create_partner_referral_opp" "328699103"
    
    Create_Partner_Referral_Opp_0[("➕ <em></em><br/>Create Partner Referral Opp")]:::recordCreates
    click Create_Partner_Referral_Opp_0 "#create_partner_referral_opp_0" "3817943105"
    
    Create_Referrer[("➕ <em></em><br/>Create Referrer")]:::recordCreates
    click Create_Referrer "#create_referrer" "2235065278"
    
    Create_Upgrade_Opp[("➕ <em></em><br/>Create Upgrade Opp")]:::recordCreates
    click Create_Upgrade_Opp "#create_upgrade_opp" "2461236878"
    
    Create_Upgrade_Opp_0[("➕ <em></em><br/>Create Upgrade Opp")]:::recordCreates
    click Create_Upgrade_Opp_0 "#create_upgrade_opp_0" "1729703961"
    
    Get_Account[("🔍 <em></em><br/>Get Account")]:::recordLookups
    click Get_Account "#get_account" "3999508484"
    
    Get_Imp[("🔍 <em></em><br/>Get Imp")]:::recordLookups
    click Get_Imp "#get_imp" "1701264355"
    
    Get_Opp[("🔍 <em></em><br/>Get Opp")]:::recordLookups
    click Get_Opp "#get_opp" "378735326"
    
    Get_Opp_Owner[("🔍 <em></em><br/>Get Opp Owner")]:::recordLookups
    click Get_Opp_Owner "#get_opp_owner" "2407306252"
    
    Get_Payroll_Provider[("🔍 <em></em><br/>Get Payroll Provider")]:::recordLookups
    click Get_Payroll_Provider "#get_payroll_provider" "2265742821"
    
    Get_Plan[("🔍 <em></em><br/>Get Plan")]:::recordLookups
    click Get_Plan "#get_plan" "2566862321"
    
    Get_User[("🔍 <em></em><br/>Get User")]:::recordLookups
    click Get_User "#get_user" "3892203511"
    
    Update_Imp[("🛠️ <em></em><br/>Update Imp")]:::recordUpdates
    click Update_Imp "#update_imp" "1436315257"
    
    Create_New_Upgrade_Opportunity(["💻 <em></em><br/>Create New Upgrade Opportunity"]):::screens
    click Create_New_Upgrade_Opportunity "#create_new_upgrade_opportunity" "523287107"
    
    Duplicate_Integration_Request(["💻 <em></em><br/>Duplicate Integration Request"]):::screens
    click Duplicate_Integration_Request "#duplicate_integration_request" "2525597893"
    
    Upgrade_Successfully_Created(["💻 <em></em><br/>Upgrade Successfully Created"]):::screens
    click Upgrade_Successfully_Created "#upgrade_successfully_created" "2535906754"
    
    Assign_OwnerId --> Service_Options
    Assign_OwnerId_0 --> Service_Options
    Is_Opp_Owner_an_Active_RPC --> |"Yes"| Assign_OwnerId_0
    Is_Opp_Owner_an_Active_RPC --> |"No"| Service_Options_0
    Is_there_an_Employee_Referrer --> |"Yes"| Create_Referrer
    Is_there_an_Employee_Referrer --> |"No"| Upgrade_Successfully_Created
    Is_User_an_RPC --> |"Yes"| Assign_OwnerId
    Is_User_an_RPC --> |"No"| Is_Opp_Owner_an_Active_RPC
    Payroll_Integration --> |"Yes, Payroll"| Get_Payroll_Provider
    Payroll_Integration --> |"Default Outcome"| Is_User_an_RPC
    Service_Options --> |"Upgrade"| Create_Upgrade_Opp_0
    Service_Options --> |"CY"| Create_CY_Opp
    Service_Options --> |"Edukate"| Create_Edukate_Opp
    Service_Options --> |"Partner Referral"| Create_Partner_Referral_Opp
    Service_Options --> |"Payroll Integration Exists Already"| Duplicate_Integration_Request
    Service_Options --> |"Enhanced Payroll"| Create_EPS_Opp
    Service_Options --> |"Direct Int"| Create_Int_Opp
    Service_Options --> |"Default Outcome"| END_Service_Options
    Service_Options_0 --> |"Upgrade"| Create_Upgrade_Opp
    Service_Options_0 --> |"CY"| Create_CY_Opp_0
    Service_Options_0 --> |"Edukate"| Create_Edukate_Opp_0
    Service_Options_0 --> |"Partner Referral"| Create_Partner_Referral_Opp_0
    Service_Options_0 --> |"Payroll Integration Already Exists"| Duplicate_Integration_Request
    Service_Options_0 --> |"Enhanced Payroll"| Create_EPS_Opp_0
    Service_Options_0 --> |"Direct Int"| Create_Direct_Int_Opp
    Service_Options_0 --> |"Default Outcome"| END_Service_Options_0
    Create_CY_Opp --> Is_there_an_Employee_Referrer
    Create_CY_Opp_0 --> Is_there_an_Employee_Referrer
    Create_Direct_Int_Opp --> Update_Imp
    Create_Edukate_Opp --> Is_there_an_Employee_Referrer
    Create_Edukate_Opp_0 --> Is_there_an_Employee_Referrer
    Create_EPS_Opp --> Update_Imp
    Create_EPS_Opp_0 --> Update_Imp
    Create_Int_Opp --> Update_Imp
    Create_Partner_Referral_Opp --> Is_there_an_Employee_Referrer
    Create_Partner_Referral_Opp_0 --> Is_there_an_Employee_Referrer
    Create_Referrer --> Upgrade_Successfully_Created
    Create_Upgrade_Opp --> Is_there_an_Employee_Referrer
    Create_Upgrade_Opp_0 --> Is_there_an_Employee_Referrer
    Get_Account --> Get_Imp
    Get_Imp --> Get_Opp
    Get_Opp --> Get_Opp_Owner
    Get_Opp_Owner --> Create_New_Upgrade_Opportunity
    Get_Payroll_Provider --> Is_User_an_RPC
    Get_Plan --> Get_Account
    Get_User --> Get_Plan
    Update_Imp --> Is_there_an_Employee_Referrer
    Create_New_Upgrade_Opportunity --> Payroll_Integration
    Duplicate_Integration_Request --> END_Duplicate_Integration_Request
    Upgrade_Successfully_Created --> END_Upgrade_Successfully_Created
    START -->  Get_User
    END_Service_Options(( END )):::endClass
    END_Service_Options_0(( END )):::endClass
    END_Duplicate_Integration_Request(( END )):::endClass
    END_Upgrade_Successfully_Created(( END )):::endClass
    
    
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
    |Process Type| Flow|
    |Label|Plan | Button | Add-On Referral|
    |Status|Active|
    |Description|Creates an Add-On Opportunity for an existing plan and assigns to Payroll team|
    |Environments|Default|
    |Interview Label|Add-On to Plan {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_User](#get_user)|
    |Next Node|[Get_User](#get_user)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |ownerId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    |recordId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    |userId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |CloseDate|Date|TODAY()+90|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Assign_OwnerId
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign OwnerId|
    |Connector|[Service_Options](#service_options)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |ownerId| Assign|Get_User.Id|
    
    
    
    
    ### Assign_OwnerId_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign OwnerId|
    |Connector|[Service_Options](#service_options)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |ownerId| Assign|Get_Opp_Owner.Id|
    
    
    
    
    ### Is_Opp_Owner_an_Active_RPC
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Is Opp Owner an Active RPC?|
    |Default Connector|[Service_Options_0](#service_options_0)|
    |Default Connector Label|No|
    
    
    #### Rule Yes (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_OwnerId_0](#assign_ownerid_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Opp_Owner.IsActive| Equal To|✅|
    |2|Get_Opp_Owner.UserRoleId| Equal To|00E00000006xFiW|
    
    
    
    
    ### Is_there_an_Employee_Referrer
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Is there an Employee Referrer?|
    |Default Connector|[Upgrade_Successfully_Created](#upgrade_successfully_created)|
    |Default Connector Label|No|
    
    
    #### Rule YesRef (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Create_Referrer](#create_referrer)|
    |Condition Logic|1 AND NOT 2|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|EmployeeReferrer.recordId| Is Null|⬜|
    |2|ServiceOptionChoice.middleValue| Contains|Enhanced|
    
    
    
    
    ### Is_User_an_RPC
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Is User an RPC?|
    |Default Connector|[Is_Opp_Owner_an_Active_RPC](#is_opp_owner_an_active_rpc)|
    |Default Connector Label|No|
    
    
    #### Rule YesRPC (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_OwnerId](#assign_ownerid)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_User.UserRole.Name| Contains|Retirement Plan Consultant|
    |2|Get_User.Name| Equal To|Payroll Koncierge|
    
    
    
    
    ### Payroll_Integration
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Payroll Integration?|
    |Default Connector|[Is_User_an_RPC](#is_user_an_rpc)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes_Payroll (Yes, Payroll)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Payroll_Provider](#get_payroll_provider)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Are_you_requesting_Payroll_Integration| Equal To|yesPayroll|
    
    
    
    
    ### Service_Options
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Service Options|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Upgrade_to_Owner (Upgrade)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Create_Upgrade_Opp_0](#create_upgrade_opp_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|ServiceOptionChoice.topValue| Contains|Upgrade|
    
    
    
    
    #### Rule CY (CY)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Create_CY_Opp](#create_cy_opp)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|ServiceOptionChoice.middleValue| Contains|CensiblyYours|
    
    
    
    
    #### Rule Edukate (Edukate)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Create_Edukate_Opp](#create_edukate_opp)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|ServiceOptionChoice.middleValue| Contains|Edukate|
    
    
    
    
    #### Rule Partner_Referral (Partner Referral)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Create_Partner_Referral_Opp](#create_partner_referral_opp)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|ServiceOptionChoice.middleValue| Equal To|Partner Referral|
    
    
    
    
    #### Rule Payroll_Integration_Exists_Already (Payroll Integration Exists Already)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Duplicate_Integration_Request](#duplicate_integration_request)|
    |Condition Logic|1 AND (2 OR 3)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Imp.Payroll_Integration__c| Equal To|Yes|
    |2|ServiceOptionChoice.middleValue| Contains|Enhanced|
    |3|ServiceOptionChoice.middleValue| Contains|Integration|
    
    
    
    
    #### Rule Enhanced_Payroll (Enhanced Payroll)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Create_EPS_Opp](#create_eps_opp)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Payroll_Provider.Opportunity_Type__c| Equal To|EPS|
    
    
    
    
    #### Rule Direct_Int (Direct Int)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Create_Int_Opp](#create_int_opp)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Payroll_Provider.Opportunity_Type__c| Equal To|Direct Integration|
    
    
    
    
    ### Service_Options_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Service Options|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Upgrade (Upgrade)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Create_Upgrade_Opp](#create_upgrade_opp)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|ServiceOptionChoice.topValue| Contains|Upgrade|
    
    
    
    
    #### Rule CY_0 (CY)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Create_CY_Opp_0](#create_cy_opp_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|ServiceOptionChoice.middleValue| Contains|CensiblyYours|
    
    
    
    
    #### Rule Edukate_0 (Edukate)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Create_Edukate_Opp_0](#create_edukate_opp_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|ServiceOptionChoice.middleValue| Contains|Edukate|
    
    
    
    
    #### Rule Partner_Referral_0 (Partner Referral)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Create_Partner_Referral_Opp_0](#create_partner_referral_opp_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|ServiceOptionChoice.middleValue| Contains|Partner Referral|
    
    
    
    
    #### Rule Payroll_Integration_Already_Exists (Payroll Integration Already Exists)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Duplicate_Integration_Request](#duplicate_integration_request)|
    |Condition Logic|1 AND (2 OR 3)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Imp.Payroll_Integration__c| Equal To|Yes|
    |2|ServiceOptionChoice.middleValue| Contains|Enhanced|
    |3|ServiceOptionChoice.middleValue| Contains|Integration|
    
    
    
    
    #### Rule Enhanced_Payroll_0 (Enhanced Payroll)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Create_EPS_Opp_0](#create_eps_opp_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Payroll_Provider.Opportunity_Type__c| Equal To|EPS|
    
    
    
    
    #### Rule Direct_Int0 (Direct Int)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Create_Direct_Int_Opp](#create_direct_int_opp)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Payroll_Provider.Opportunity_Type__c| Equal To|Direct Integration|
    
    
    
    
    ### Create_CY_Opp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Opportunity|
    |Label|Create CY Opp|
    |Assign Record Id To Reference|recordId|
    |Connector|[Is_there_an_Employee_Referrer](#is_there_an_employee_referrer)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|Get_Plan.Account__c|
    |Associated_Contact_Role__c|Plan Sponsor & Trustee|
    |Associated_Contact__c|Contact.recordId|
    |CloseDate|CloseDate|
    |Custodian__c|Get_Opp.Custodian__c|
    |Employee_Referrer__c|userId|
    |LeadSource|Referral|
    |LeadSourceDetail__c|Ubiquity Employee|
    |Name|{!Get_Plan.Account__r.Name}-CY Add-On|
    |Opportunity_Notes__c|Notes|
    |OwnerId|ownerId|
    |Plan__c|Get_Plan.Id|
    |Product_Type__c|Add-On Product|
    |RecordTypeId|01237000000AhlSAAS|
    |Service_Option__c|ServiceOptionChoice.middleValue|
    |StageName|Quote Sent|
    |X3_38__c|Kaye Capital|
    
    
    
    
    ### Create_CY_Opp_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Opportunity|
    |Label|Create CY Opp|
    |Assign Record Id To Reference|recordId|
    |Connector|[Is_there_an_Employee_Referrer](#is_there_an_employee_referrer)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|Get_Plan.Account__c|
    |Associated_Contact_Role__c|Plan Sponsor & Trustee|
    |Associated_Contact__c|Contact.recordId|
    |CloseDate|CloseDate|
    |Custodian__c|Get_Opp.Custodian__c|
    |Employee_Referrer__c|userId|
    |LeadSource|Referral|
    |LeadSourceDetail__c|Ubiquity Employee|
    |Name|{!Get_Plan.Account__r.Name}-CY Add-On|
    |Opportunity_Notes__c|Notes|
    |OwnerId|00500000006xUkg|
    |Plan__c|Get_Plan.Id|
    |Product_Type__c|Add-On Product|
    |RecordTypeId|01237000000AhlSAAS|
    |Service_Option__c|ServiceOptionChoice.middleValue|
    |StageName|Quote Sent|
    |X3_38__c|Kaye Capital|
    
    
    
    
    ### Create_Direct_Int_Opp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Opportunity|
    |Label|Create Direct Int Opp|
    |Assign Record Id To Reference|recordId|
    |Connector|[Update_Imp](#update_imp)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|Get_Plan.Account__c|
    |Associated_Contact_Role__c|Plan Sponsor & Trustee|
    |Associated_Contact__c|Contact.recordId|
    |CloseDate|CloseDate|
    |Custodian__c|Get_Opp.Custodian__c|
    |Employee_Referrer__c|userId|
    |LeadSource|Referral|
    |LeadSourceDetail__c|Ubiquity Employee|
    |Name|{!Get_Plan.Account__r.Name} – New Integration Request|
    |Opportunity_Notes__c|Notes|
    |OwnerId|00537000002STLD|
    |Payroll_Provider__c|payrollProvider.recordId|
    |Plan__c|Get_Plan.Id|
    |Product_Type__c|Add-On Product|
    |RecordTypeId|01237000000N0d7AAC|
    |Service_Option__c|Direct Integration|
    |StageName|Quote Sent|
    
    
    
    
    ### Create_Edukate_Opp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Opportunity|
    |Label|Create Edukate Opp|
    |Assign Record Id To Reference|recordId|
    |Connector|[Is_there_an_Employee_Referrer](#is_there_an_employee_referrer)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|Get_Plan.Account__c|
    |Associated_Contact_Role__c|Plan Sponsor & Trustee|
    |Associated_Contact__c|Contact.recordId|
    |CloseDate|CloseDate|
    |Custodian__c|Get_Opp.Custodian__c|
    |Employee_Referrer__c|userId|
    |LeadSource|Referral|
    |LeadSourceDetail__c|Ubiquity Employee|
    |Name|{!Get_Plan.Account__r.Name}-Edukate|
    |Opportunity_Notes__c|Notes|
    |OwnerId|ownerId|
    |Plan__c|Get_Plan.Id|
    |Product_Type__c|Add-On Product|
    |RecordTypeId|0121G000000bpsFQAQ|
    |Service_Option__c|ServiceOptionChoice.middleValue|
    |StageName|Quote Sent|
    
    
    
    
    ### Create_Edukate_Opp_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Opportunity|
    |Label|Create Edukate Opp|
    |Assign Record Id To Reference|recordId|
    |Connector|[Is_there_an_Employee_Referrer](#is_there_an_employee_referrer)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|Get_Plan.Account__c|
    |Associated_Contact_Role__c|Plan Sponsor & Trustee|
    |Associated_Contact__c|Contact.recordId|
    |CloseDate|CloseDate|
    |Custodian__c|Get_Opp.Custodian__c|
    |Employee_Referrer__c|userId|
    |LeadSource|Referral|
    |LeadSourceDetail__c|Ubiquity Employee|
    |Name|{!Get_Plan.Account__r.Name}-Edukate|
    |Opportunity_Notes__c|Notes|
    |OwnerId|00500000006xUkg|
    |Plan__c|Get_Plan.Id|
    |Product_Type__c|Add-On Product|
    |RecordTypeId|0121G000000bpsFQAQ|
    |Service_Option__c|ServiceOptionChoice.middleValue|
    |StageName|Quote Sent|
    
    
    
    
    ### Create_EPS_Opp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Opportunity|
    |Label|Create EPS Opp|
    |Assign Record Id To Reference|recordId|
    |Connector|[Update_Imp](#update_imp)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|Get_Plan.Account__c|
    |Associated_Contact_Role__c|Plan Sponsor & Trustee|
    |Associated_Contact__c|Contact.recordId|
    |CloseDate|CloseDate|
    |Custodian__c|Get_Opp.Custodian__c|
    |Employee_Referrer__c|userId|
    |LeadSource|Referral|
    |LeadSourceDetail__c|Ubiquity Employee|
    |Name|{!Get_Plan.Account__r.Name} – New Integration Request|
    |Opportunity_Notes__c|Notes|
    |OwnerId|00537000002STLD|
    |Payroll_Provider__c|payrollProvider.recordId|
    |Plan__c|Get_Plan.Id|
    |Product_Type__c|Add-On Product|
    |RecordTypeId|01237000000N0d7AAC|
    |Service_Option__c|Enhanced Payroll Service|
    |StageName|Quote Sent|
    
    
    
    
    ### Create_EPS_Opp_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Opportunity|
    |Label|Create EPS Opp|
    |Assign Record Id To Reference|recordId|
    |Connector|[Update_Imp](#update_imp)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|Get_Plan.Account__c|
    |Associated_Contact_Role__c|Plan Sponsor & Trustee|
    |Associated_Contact__c|Contact.recordId|
    |CloseDate|CloseDate|
    |Custodian__c|Get_Opp.Custodian__c|
    |Employee_Referrer__c|userId|
    |LeadSource|Referral|
    |LeadSourceDetail__c|Ubiquity Employee|
    |Name|{!Get_Plan.Account__r.Name} – New Integration Request|
    |Opportunity_Notes__c|Notes|
    |OwnerId|00537000002STLD|
    |Payroll_Provider__c|payrollProvider.recordId|
    |Plan__c|Get_Plan.Id|
    |Product_Type__c|Add-On Product|
    |RecordTypeId|01237000000N0d7AAC|
    |Service_Option__c|Enhanced Payroll Service|
    |StageName|Quote Sent|
    
    
    
    
    ### Create_Int_Opp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Opportunity|
    |Label|Create Int Opp|
    |Assign Record Id To Reference|recordId|
    |Connector|[Update_Imp](#update_imp)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|Get_Plan.Account__c|
    |Associated_Contact_Role__c|Plan Sponsor & Trustee|
    |Associated_Contact__c|Contact.recordId|
    |CloseDate|CloseDate|
    |Custodian__c|Get_Opp.Custodian__c|
    |Employee_Referrer__c|userId|
    |LeadSource|Referral|
    |LeadSourceDetail__c|Ubiquity Employee|
    |Name|{!Get_Plan.Account__r.Name} – New Integration Request|
    |Opportunity_Notes__c|Notes|
    |OwnerId|00537000002STLD|
    |Payroll_Provider__c|payrollProvider.recordId|
    |Plan__c|Get_Plan.Id|
    |Product_Type__c|Add-On Product|
    |RecordTypeId|01237000000N0d7AAC|
    |Service_Option__c|Direct Integration|
    |StageName|Quote Sent|
    
    
    
    
    ### Create_Partner_Referral_Opp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Opportunity|
    |Label|Create Partner Referral Opp|
    |Assign Record Id To Reference|recordId|
    |Connector|[Is_there_an_Employee_Referrer](#is_there_an_employee_referrer)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|Get_Plan.Account__c|
    |Associated_Contact_Role__c|Plan Sponsor & Trustee|
    |Associated_Contact__c|Contact.recordId|
    |CloseDate|CloseDate|
    |Custodian__c|Get_Opp.Custodian__c|
    |Employee_Referrer__c|userId|
    |LeadSource|Referral|
    |LeadSourceDetail__c|Ubiquity Employee|
    |Name|{!Get_Plan.Account__r.Name}-UPGRADE|
    |Opportunity_Notes__c|Notes|
    |OwnerId|ownerId|
    |Plan__c|Get_Plan.Id|
    |Product_Type__c|Add-On Product|
    |RecordTypeId|0121G0000001bj5QAA|
    |Service_Option__c|ServiceOptionChoice.middleValue|
    |StageName|Quote Sent|
    
    
    
    
    ### Create_Partner_Referral_Opp_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Opportunity|
    |Label|Create Partner Referral Opp|
    |Assign Record Id To Reference|recordId|
    |Connector|[Is_there_an_Employee_Referrer](#is_there_an_employee_referrer)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|Get_Plan.Account__c|
    |Associated_Contact_Role__c|Plan Sponsor & Trustee|
    |Associated_Contact__c|Contact.recordId|
    |CloseDate|CloseDate|
    |Custodian__c|Get_Opp.Custodian__c|
    |Employee_Referrer__c|userId|
    |LeadSource|Referral|
    |LeadSourceDetail__c|Ubiquity Employee|
    |Name|{!Get_Plan.Account__r.Name}-UPGRADE|
    |Opportunity_Notes__c|Notes|
    |OwnerId|00500000006xUkg|
    |Plan__c|Get_Plan.Id|
    |Product_Type__c|Add-On Product|
    |RecordTypeId|0121G0000001bj5QAA|
    |Service_Option__c|ServiceOptionChoice.middleValue|
    |StageName|Quote Sent|
    
    
    
    
    ### Create_Referrer
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Associated_Contact__c|
    |Label|Create Referrer|
    |Store Output Automatically|✅|
    |Connector|[Upgrade_Successfully_Created](#upgrade_successfully_created)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Contact_Role__c|Referrer|
    |Contact__c|EmployeeReferrer.recordId|
    |Opportunity__c|recordId|
    |Plan__c|Get_Plan.Id|
    
    
    
    
    ### Create_Upgrade_Opp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Opportunity|
    |Label|Create Upgrade Opp|
    |Assign Record Id To Reference|recordId|
    |Connector|[Is_there_an_Employee_Referrer](#is_there_an_employee_referrer)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|Get_Plan.Account__c|
    |Associated_Contact_Role__c|Plan Sponsor & Trustee|
    |Associated_Contact__c|Contact.recordId|
    |CloseDate|CloseDate|
    |Custodian__c|Get_Opp.Custodian__c|
    |Employee_Referrer__c|userId|
    |LeadSource|Referral|
    |LeadSourceDetail__c|Ubiquity Employee|
    |Name|{!Get_Plan.Account__r.Name}-UPGRADE|
    |Opportunity_Notes__c|Notes|
    |OwnerId|00500000006xUkg|
    |Plan_Type__c|Upgrade|
    |Plan__c|Get_Plan.Id|
    |Product_Type__c|Upgrade|
    |RecordTypeId|01237000000Xsu6AAC|
    |Service_Option__c|ServiceOptionChoice.middleValue|
    |StageName|Quote Sent|
    
    
    
    
    ### Create_Upgrade_Opp_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Opportunity|
    |Label|Create Upgrade Opp|
    |Assign Record Id To Reference|recordId|
    |Connector|[Is_there_an_Employee_Referrer](#is_there_an_employee_referrer)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|Get_Plan.Account__c|
    |Associated_Contact_Role__c|Plan Sponsor & Trustee|
    |Associated_Contact__c|Contact.recordId|
    |CloseDate|CloseDate|
    |Custodian__c|Get_Opp.Custodian__c|
    |Employee_Referrer__c|userId|
    |LeadSource|Referral|
    |LeadSourceDetail__c|Ubiquity Employee|
    |Name|{!Get_Plan.Account__r.Name}-UPGRADE|
    |Opportunity_Notes__c|Notes|
    |OwnerId|ownerId|
    |Plan_Type__c|Upgrade|
    |Plan__c|Get_Plan.Id|
    |Product_Type__c|Upgrade|
    |RecordTypeId|01237000000Xsu6AAC|
    |Service_Option__c|ServiceOptionChoice.middleValue|
    |StageName|Quote Sent|
    
    
    
    
    ### Get_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Account|
    |Label|Get Account|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Get_Imp](#get_imp)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Plan.Account__c|
    
    
    
    
    ### Get_Imp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Implementation__c|
    |Label|Get Imp|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Get_Opp](#get_opp)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Account__c| Equal To|Get_Account.Id|
    
    
    
    
    ### Get_Opp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Opportunity|
    |Label|Get Opp|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Get_Opp_Owner](#get_opp_owner)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|AccountId| Equal To|Get_Plan.Account__c|
    |2|Product_Type__c| Equal To|Get_Plan.Product_Type1__c|
    
    
    
    
    ### Get_Opp_Owner
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|User|
    |Label|Get Opp Owner|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Create_New_Upgrade_Opportunity](#create_new_upgrade_opportunity)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Opp.OwnerId|
    
    
    
    
    ### Get_Payroll_Provider
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Products_Services__c|
    |Label|Get Payroll Provider|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Is_User_an_RPC](#is_user_an_rpc)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|payrollProvider.recordId|
    
    
    
    
    ### Get_Plan
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Plan__c|
    |Label|Get Plan|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Get_Account](#get_account)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Get_User
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|User|
    |Label|Get User|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Get_Plan](#get_plan)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|userId|
    
    
    
    
    ### Update_Imp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Implementation__c|
    |Label|Update Imp|
    |Connector|[Is_there_an_Employee_Referrer](#is_there_an_employee_referrer)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Imp.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Payroll_Integration__c|Yes|
    
    
    
    
    ### Create_New_Upgrade_Opportunity
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|Create New Upgrade Opportunity|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|✅|
    |Show Footer|✅|
    |Show Header|✅|
    |Connector|[Payroll_Integration](#payroll_integration)|
    
    
    #### EmployeeReferrer
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Extension Name|flowruntime:lookup|
    |Field Type| Component Instance|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Store Output Automatically|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Get_User.Username<br/>&nbsp;&nbsp;operator: NotEqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;stringValue: payrollkoncierge@myubiquity.com<br/>|
    |Field Api Name (input)|Associated_Contact__c|
    |Label (input)|Employee Referrer|
    |Object Api Name (input)|Opportunity|
    |Required (input)|⬜|
    
    
    
    
    #### Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Extension Name|flowruntime:lookup|
    |Field Type| Component Instance|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Store Output Automatically|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Field Api Name (input)|Associated_Contact__c|
    |Label (input)|Contact|
    |Object Api Name (input)|Opportunity|
    |Required (input)|✅|
    
    
    
    
    #### Are_you_requesting_Payroll_Integration
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|- yesPayroll<br/>- noPayroll<br/>|
    |Field Text|Are you requesting Payroll Integration?|
    |Field Type| Dropdown Box|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### payrollProvider
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Extension Name|flowruntime:lookup|
    |Field Type| Component Instance|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Store Output Automatically|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Are_you_requesting_Payroll_Integration<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;elementReference: yesPayroll<br/>|
    |Field Api Name (input)|Payroll_Provider__c|
    |Label (input)|Payroll Provider|
    |Object Api Name (input)|Opportunity|
    |Required (input)|✅|
    
    
    
    
    #### ProductTypeHelp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p>Please Select either Upgrade or Add-On</p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Are_you_requesting_Payroll_Integration<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;elementReference: noPayroll<br/>|
    
    
    
    
    #### ServiceOptionChoice
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Extension Name|flowruntime:dependentPicklists|
    |Field Type| Component Instance|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Store Output Automatically|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Are_you_requesting_Payroll_Integration<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;elementReference: noPayroll<br/>|
    |Dependency Wrapper Api Name (input)|Opportunity|
    |Middle Picklist Api Name (input)|Service_Option__c|
    |Middle Label (input)|Service Option|
    |Middle Required (input)|✅|
    |Top Picklist Api Name (input)|Product_Type__c|
    |Top Label (input)|Product Type|
    |Top Required (input)|✅|
    
    
    
    
    #### Notes
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|Notes|
    |Field Type| Large Text Area|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    ### Duplicate_Integration_Request
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|Duplicate Integration Request|
    |Allow Back|⬜|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Next Or Finish Button Label|Finish|
    |Show Footer|✅|
    |Show Header|⬜|
    
    
    #### dupeMessage
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p style="text-align: center;"><strong style="font-size: 18px;">A payroll integration request already exists for this plan. Please reach out to the payroll team with any questions.</strong></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    ### Upgrade_Successfully_Created
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|Upgrade Successfully Created|
    |Allow Back|⬜|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Show Footer|✅|
    |Show Header|✅|
    
    
    #### Success
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p>The Add-On Opportunity has been created successfully.</p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

