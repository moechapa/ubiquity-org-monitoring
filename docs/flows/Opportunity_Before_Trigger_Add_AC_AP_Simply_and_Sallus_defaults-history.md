# Opportunity_Before_Trigger_Add_AC_AP_Simply_and_Sallus_defaults history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Opportunity_Before_Trigger_Add_AC_AP_Simply_and_Sallus_defaults-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record Before Save</b>"]):::startClass
    click START "#general-information" "2476941784"
    
    Assign_AC_and_AP[\"🟰 <em></em><br/>Assign AC and AP"/]:::assignments
    click Assign_AC_and_AP "#assign_ac_and_ap" "3958597989"
    
    Assign_Default_Fields[\"🟰 <em></em><br/>Assign Default Fields"/]:::assignments
    click Assign_Default_Fields "#assign_default_fields" "657239999"
    
    Assign_Default_Fields_Custom_k[\"🟰 <em></em><br/>Assign Default Fields"/]:::assignments
    click Assign_Default_Fields_Custom_k "#assign_default_fields_custom_k" "3943698619"
    
    Assign_Default_Fields_Sallus[\"🟰 <em></em><br/>Assign Default Fields"/]:::assignments
    click Assign_Default_Fields_Sallus "#assign_default_fields_sallus" "359115348"
    
    Assign_Default_Fields_Saverk_w_safe_harbor[\"🟰 <em></em><br/>Assign Default Fields"/]:::assignments
    click Assign_Default_Fields_Saverk_w_safe_harbor "#assign_default_fields_saverk_w_safe_harbor" "1246697185"
    
    Assign_Group_Defaults[\"🟰 <em></em><br/>Assign Group Defaults"/]:::assignments
    click Assign_Group_Defaults "#assign_group_defaults" "932330771"
    
    Set_to_OneDigital[\"🟰 <em></em><br/>Set to OneDigital"/]:::assignments
    click Set_to_OneDigital "#set_to_onedigital" "1968301318"
    
    Set_to_wilshire[\"🟰 <em></em><br/>Set to wilshire"/]:::assignments
    click Set_to_wilshire "#set_to_wilshire" "3238630247"
    
    AC_and_AP_found{"🔀 <em></em><br/>AC and AP found?"}:::decisions
    click AC_and_AP_found "#ac_and_ap_found" "2851275257"
    
    Fund_List_Check{"🔀 <em></em><br/>Fund List Check"}:::decisions
    click Fund_List_Check "#fund_list_check" "4004311429"
    
    LeasSourceDetail_PSIvet{"🔀 <em></em><br/>LeasSourceDetail = PSIvet?"}:::decisions
    click LeasSourceDetail_PSIvet "#leassourcedetail_psivet" "2138241272"
    
    Saver_k_w_Safe_Harbor{"🔀 <em></em><br/>Saver(k)"}:::decisions
    click Saver_k_w_Safe_Harbor "#saver_k_w_safe_harbor" "1265977218"
    
    Service_Option_Custom_k{"🔀 <em></em><br/>Service Option = Custom(k)?"}:::decisions
    click Service_Option_Custom_k "#service_option_custom_k" "2461688618"
    
    Service_Option_Express_k{"🔀 <em></em><br/>Service Option = Express(k) ?"}:::decisions
    click Service_Option_Express_k "#service_option_express_k" "254290335"
    
    Service_Option_Reserve_k{"🔀 <em></em><br/>Service Option = Reserve(k)?"}:::decisions
    click Service_Option_Reserve_k "#service_option_reserve_k" "2610663916"
    
    Service_Option_Sallus{"🔀 <em></em><br/>Service Option = Sallus ?"}:::decisions
    click Service_Option_Sallus "#service_option_sallus" "331268383"
    
    Service_Option_Simply{"🔀 <em></em><br/>Service Option = Simply ?"}:::decisions
    click Service_Option_Simply "#service_option_simply" "1717072407"
    
    Wilshire_or_Onedigital_3_38{"🔀 <em></em><br/>Wilshire or Onedigital 3(38)"}:::decisions
    click Wilshire_or_Onedigital_3_38 "#wilshire_or_onedigital_3_38" "37019963"
    
    Get_Associated_Contact[("🔍 <em></em><br/>Get Associated Contact")]:::recordLookups
    click Get_Associated_Contact "#get_associated_contact" "4057966322"
    
    Get_Associated_Partner[("🔍 <em></em><br/>Get Associated Partner")]:::recordLookups
    click Get_Associated_Partner "#get_associated_partner" "1908103706"
    
    Update_3_38_to_Kaye_Capital[("🛠️ <em></em><br/>Update 3(38) to Kaye Capital")]:::recordUpdates
    click Update_3_38_to_Kaye_Capital "#update_3_38_to_kaye_capital" "982162681"
    
    Assign_AC_and_AP --> Fund_List_Check
    Assign_Default_Fields --> Wilshire_or_Onedigital_3_38
    Assign_Default_Fields_Custom_k --> END_Assign_Default_Fields_Custom_k
    Assign_Default_Fields_Sallus --> END_Assign_Default_Fields_Sallus
    Assign_Default_Fields_Saverk_w_safe_harbor --> Assign_Group_Defaults
    Assign_Group_Defaults --> END_Assign_Group_Defaults
    Set_to_OneDigital --> END_Set_to_OneDigital
    Set_to_wilshire --> END_Set_to_wilshire
    AC_and_AP_found --> |"Found"| Assign_AC_and_AP
    AC_and_AP_found --> |"Default Outcome"| Fund_List_Check
    Fund_List_Check --> |"CensiblyYours Fund List"| Update_3_38_to_Kaye_Capital
    Fund_List_Check --> |"Default Outcome"| Service_Option_Simply
    LeasSourceDetail_PSIvet --> |"Yes"| Get_Associated_Contact
    LeasSourceDetail_PSIvet --> |"Default Outcome"| Fund_List_Check
    Saver_k_w_Safe_Harbor --> |"Yes"| Assign_Default_Fields_Saverk_w_safe_harbor
    Saver_k_w_Safe_Harbor --> |"Default Outcome"| Service_Option_Custom_k
    Service_Option_Custom_k --> |"Yes"| Assign_Group_Defaults
    Service_Option_Custom_k --> |"Default Outcome"| Service_Option_Reserve_k
    Service_Option_Express_k --> |"Yes"| Assign_Default_Fields_Custom_k
    Service_Option_Express_k --> |"Default Outcome"| Saver_k_w_Safe_Harbor
    Service_Option_Reserve_k --> |"Yes"| Assign_Group_Defaults
    Service_Option_Reserve_k --> |"Default Outcome"| END_Service_Option_Reserve_k
    Service_Option_Sallus --> |"Yes"| Assign_Default_Fields_Sallus
    Service_Option_Sallus --> |"Default Outcome"| Service_Option_Express_k
    Service_Option_Simply --> |"Yes"| Assign_Default_Fields
    Service_Option_Simply --> |"Default Outcome"| Service_Option_Sallus
    Wilshire_or_Onedigital_3_38 --> |"OneDigital"| Set_to_OneDigital
    Wilshire_or_Onedigital_3_38 --> |"Default Outcome"| Set_to_wilshire
    Get_Associated_Contact --> Get_Associated_Partner
    Get_Associated_Partner --> AC_and_AP_found
    Update_3_38_to_Kaye_Capital --> Service_Option_Simply
    START -->  LeasSourceDetail_PSIvet
    END_Assign_Default_Fields_Custom_k(( END )):::endClass
    END_Assign_Default_Fields_Sallus(( END )):::endClass
    END_Assign_Group_Defaults(( END )):::endClass
    END_Set_to_OneDigital(( END )):::endClass
    END_Set_to_wilshire(( END )):::endClass
    END_Service_Option_Reserve_k(( END )):::endClass
    
    
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
    |Object|Opportunity|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record Before Save|
    |Record Trigger Type| Create And Update|
    |Label|Opportunity | Before Trigger | Add Associations & map Simply and Sallus Default Fields|
    |Status|Active|
    |Description|Fixed bug where Roth was being set to "true" not "yes"<br/><br/>Update/Add Associated Contact and Associated Partner, map default fields for Simply, Sallus, Express(k), Saver(k) w/ Safe Harbor, and Saver(k) w/o Safe Harbor|
    |Environments|Default|
    |Interview Label|Opportunity | Before Trigger | {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[LeasSourceDetail_PSIvet](#leassourcedetail_psivet)|
    |Next Node|[LeasSourceDetail_PSIvet](#leassourcedetail_psivet)|
    
    
    ## Flow Nodes Details
    
    ### Assign_AC_and_AP
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign AC and AP|
    |Connector|[Fund_List_Check](#fund_list_check)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Associated_Contact__c| Assign|Get_Associated_Contact.Id|
    |$Record.Associated_Partner__c| Assign|Get_Associated_Partner.Id|
    
    
    
    
    ### Assign_Default_Fields
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Default Fields|
    |Description|Assign these default fields --> Advisor Fees Paid from ESA, Auto-Enrollment, Brokerage Accounts (PCRA), Business Unit, Custodian, Deferral Change Frequency, Discretionary Match Vesting Schedule, Eligibility Age, Hardships, Loans, Participant Fees Paid from ESA, Plan Entry Frequency, Profit Sharing & Match Vesting Schedule, Profit Sharing, Roth Contributions, Ubiquity Admin Fees Paid by ESA, 3(38)|
    |Connector|[Wilshire_or_Onedigital_3_38](#wilshire_or_onedigital_3_38)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Advisor_Fees_Paid_from_ESA__c| Assign|No|
    |$Record.AutoEnrollment__c| Assign|EACA|
    |$Record.Brokerage_Accounts_PCRA__c| Assign|No|
    |$Record.Business_Unit__c| Assign|Simply Retirement|
    |$Record.Custodian__c| Assign|MG Trust Company, LLC.|
    |$Record.Deferral_Change_Frequency__c| Assign|Per Pay Period|
    |$Record.Discretionary_Match_Vesting_Schedule__c| Assign|Immediate|
    |$Record.Eligibility_Age__c| Assign|21|
    |$Record.Hardships__c| Assign|No|
    |$Record.Loans__c| Assign|Yes|
    |$Record.Participant_Fees_Paid_from_ESA__c| Assign|No|
    |$Record.Plan_Entry_Frequency__c| Assign|Immediate|
    |$Record.Profit_Sharing_Match_Vesting_Schedule__c| Assign|Immediate|
    |$Record.Profit_Sharing__c| Assign|Pro Rata|
    |$Record.Roth__c| Assign|Yes|
    |$Record.Ubiquity_Admin_Fees_Paid_by_ESA__c| Assign|No|
    
    
    
    
    ### Assign_Default_Fields_Custom_k
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Default Fields|
    |Description|Update Set Express(k) Provisions - Discretionary Match, Plan Eligibility, Vesting Schedule, Profit Sharing, Roth Contributions|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Discretionary_Match__c| Assign|No|
    |$Record.Plan_Eligibility__c| Assign|Immediate|
    |$Record.Profit_Sharing__c| Assign|Pro Rata|
    |$Record.Roth__c| Assign|No|
    |$Record.Profit_Sharing_Match_Vesting_Schedule__c| Assign|Immediate|
    
    
    
    
    ### Assign_Default_Fields_Sallus
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Default Fields|
    |Description|Auto-Enrollment Deferral/Escalation Rate, Brokerage Accounts (PCRA), Custodian, Eligibility Age, Hardships, Plan Entry Frequency,  Profit Sharing, Roth Contributions|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Auto_Enrollment_Deferral_Escalation_Rate__c| Assign|6% Auto-Escalate|
    |$Record.Brokerage_Accounts_PCRA__c| Assign|No|
    |$Record.Custodian__c| Assign|MG Trust Company, LLC.|
    |$Record.Eligibility_Age__c| Assign|21|
    |$Record.Hardships__c| Assign|Yes|
    |$Record.Plan_Entry_Frequency__c| Assign|Immediate|
    |$Record.Profit_Sharing__c| Assign|Pro Rata|
    |$Record.Roth__c| Assign|Yes|
    
    
    
    
    ### Assign_Default_Fields_Saverk_w_safe_harbor
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Default Fields|
    |Description|Update Saver(k) Provisions - Auto-Enrollment, Auto-Enrollment Deferral/Escalation Rate, Hardships, Loans, Plan Eligibility, Profit Sharing & Match Vesting Schedule, Profit Sharing, QACA Safe Harbor Vesting Schedule, Roth Contributions|
    |Connector|[Assign_Group_Defaults](#assign_group_defaults)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Hardships__c| Assign|No|
    |$Record.Loans__c| Assign|Yes|
    |$Record.Plan_Eligibility__c| Assign|Immediate|
    |$Record.Profit_Sharing_Match_Vesting_Schedule__c| Assign|Immediate|
    |$Record.Profit_Sharing__c| Assign|Pro Rata|
    |$Record.QACA_Safe_Harbor_Vesting_Schedule__c| Assign|Immediate|
    |$Record.Initial_Deferral_Rate__c| Assign|3|
    |$Record.Plan_Entry_Frequency__c| Assign|Immediate|
    |$Record.Discretionary_Match__c| Assign|No|
    |$Record.Eligibility_Age__c| Assign|None|
    
    
    
    
    ### Assign_Group_Defaults
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Group Defaults|
    |Description|Added to ensure roth defaults to YES for saverk, customk, and reservek|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Roth__c| Assign|Yes|
    
    
    
    
    ### Set_to_OneDigital
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Set to OneDigital|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.X3_38__c| Assign|OneDigital|
    
    
    
    
    ### Set_to_wilshire
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Set to wilshire|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.X3_38__c| Assign|Wilshire|
    
    
    
    
    ### AC_and_AP_found
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|AC and AP found?|
    |Default Connector|[Fund_List_Check](#fund_list_check)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Found (Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_AC_and_AP](#assign_ac_and_ap)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Associated_Contact.Id| Is Null|⬜|
    |2|Get_Associated_Partner.Id| Is Null|⬜|
    
    
    
    
    ### Fund_List_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Fund List Check|
    |Description|Checks fund list and applies defaults if applicable|
    |Default Connector|[Service_Option_Simply](#service_option_simply)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule CensiblyYours_Fund_List (CensiblyYours Fund List)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[Update_3_38_to_Kaye_Capital](#update_3_38_to_kaye_capital)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Fund_List__c| Equal To|CensiblyYours|
    
    
    
    
    ### LeasSourceDetail_PSIvet
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|LeasSourceDetail = PSIvet?|
    |Default Connector|[Fund_List_Check](#fund_list_check)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule YesPSIvet (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Associated_Contact](#get_associated_contact)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.LeadSourceDetail__c| Equal To|PSIvet|
    |2|$Record.Service_Option__c| Contains|Simply|
    |3|$Record.Associated_Contact__c| Is Null|✅|
    
    
    
    
    ### Saver_k_w_Safe_Harbor
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Saver(k)|
    |Description|Service Option = Saver(k), removed the outdated logic around setting QACA versus EACA because RPCs can enter that in the OPD screen|
    |Default Connector|[Service_Option_Custom_k](#service_option_custom_k)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule yesSaverkwithSafeharbor (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[Assign_Default_Fields_Saverk_w_safe_harbor](#assign_default_fields_saverk_w_safe_harbor)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Service_Option__c| Equal To|Saver(k)|
    
    
    
    
    ### Service_Option_Custom_k
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Service Option = Custom(k)?|
    |Default Connector|[Service_Option_Reserve_k](#service_option_reserve_k)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule yes_custom_k (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[Assign_Group_Defaults](#assign_group_defaults)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Service_Option__c| Equal To|Custom(k)|
    
    
    
    
    ### Service_Option_Express_k
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Service Option = Express(k) ?|
    |Default Connector|[Saver_k_w_Safe_Harbor](#saver_k_w_safe_harbor)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule YesExpressk (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[Assign_Default_Fields_Custom_k](#assign_default_fields_custom_k)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Service_Option__c| Equal To|Express(k)|
    
    
    
    
    ### Service_Option_Reserve_k
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Service Option = Reserve(k)?|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule yes_reserve_k (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[Assign_Group_Defaults](#assign_group_defaults)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Service_Option__c| Equal To|Reserve(k)|
    
    
    
    
    ### Service_Option_Sallus
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Service Option = Sallus ?|
    |Description|Service Option = Starter or Builder or Partner or Franchise ????|
    |Default Connector|[Service_Option_Express_k](#service_option_express_k)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule YesSallus (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[Assign_Default_Fields_Sallus](#assign_default_fields_sallus)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Service_Option__c| Equal To|Starter|
    |2|$Record.Service_Option__c| Equal To|Builder|
    |3|$Record.Service_Option__c| Equal To|Partner|
    |4|$Record.Service_Option__c| Equal To|Franchise|
    
    
    
    
    ### Service_Option_Simply
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Service Option = Simply ?|
    |Default Connector|[Service_Option_Sallus](#service_option_sallus)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule YesSimply (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[Assign_Default_Fields](#assign_default_fields)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Service_Option__c| Contains|Simply|
    
    
    
    
    ### Wilshire_or_Onedigital_3_38
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Wilshire or Onedigital 3(38)|
    |Default Connector|[Set_to_wilshire](#set_to_wilshire)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule OneDigital (OneDigital)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Set_to_OneDigital](#set_to_onedigital)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Fund_List__c| Contains|OneDigital|
    
    
    
    
    ### Get_Associated_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Get Associated Contact|
    |Description|Get Contact where name = 'Darby Affeldt'|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Get_Associated_Partner](#get_associated_partner)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Name| Equal To|Darby Affeldt|
    
    
    
    
    ### Get_Associated_Partner
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Account|
    |Label|Get Associated Partner|
    |Description|Get Account where name = 'North Star Resource Group'|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[AC_and_AP_found](#ac_and_ap_found)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Name| Equal To|North Star Resource Group|
    
    
    
    
    ### Update_3_38_to_Kaye_Capital
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update 3(38) to Kaye Capital|
    |Input Reference|$Record|
    |Connector|[Service_Option_Simply](#service_option_simply)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |X3_38__c|Kaye Capital|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

