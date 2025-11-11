# Proposal_Before_Update_Service_Option_Validation history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Proposal_Before_Update_Service_Option_Validation-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record Before Save</b>"]):::startClass
    click START "#general-information" "1175292245"
    
    AE_None[\"🟰 <em></em><br/>AE = None"/]:::assignments
    click AE_None "#ae_none" "1331269263"
    
    Hardship_no[\"🟰 <em></em><br/>Hardship = no"/]:::assignments
    click Hardship_no "#hardship_no" "3587957395"
    
    prop_owner_opp_owner[\"🟰 <em></em><br/>prop owner = opp owner"/]:::assignments
    click prop_owner_opp_owner "#prop_owner_opp_owner" "867646528"
    
    Set_Default_Effective_Date[\"🟰 <em></em><br/>Set Default Effective Date"/]:::assignments
    click Set_Default_Effective_Date "#set_default_effective_date" "3321694064"
    
    Set_Default_Employee_Count[\"🟰 <em></em><br/>Set Default Employee Count"/]:::assignments
    click Set_Default_Employee_Count "#set_default_employee_count" "802746472"
    
    Set_entry_and_roth_values[\"🟰 <em></em><br/>Set entry and roth values"/]:::assignments
    click Set_entry_and_roth_values "#set_entry_and_roth_values" "2516955841"
    
    Set_to_EACA_default[\"🟰 <em></em><br/>Set to EACA default"/]:::assignments
    click Set_to_EACA_default "#set_to_eaca_default" "2918602287"
    
    SO_unbundled[\"🟰 <em></em><br/>SO = unbundled"/]:::assignments
    click SO_unbundled "#so_unbundled" "3714954692"
    
    Auto_Enrollment_Def_Esc_Rate_Check{"🔀 <em></em><br/>Auto Deferral Check"}:::decisions
    click Auto_Enrollment_Def_Esc_Rate_Check "#auto_enrollment_def_esc_rate_check" "2922309281"
    
    Check_if_needs_auto_enrollment_default{"🔀 <em></em><br/>Check if needs auto enrollment default"}:::decisions
    click Check_if_needs_auto_enrollment_default "#check_if_needs_auto_enrollment_default" "3533291285"
    
    Check_if_Simply_Prop{"🔀 <em></em><br/>Check if Simply Prop"}:::decisions
    click Check_if_Simply_Prop "#check_if_simply_prop" "289953130"
    
    Default_Bundled_Field_Updates_Needed{"🔀 <em></em><br/>Default Bundled Field Updates Needed?"}:::decisions
    click Default_Bundled_Field_Updates_Needed "#default_bundled_field_updates_needed" "3892372598"
    
    Deferral_Changes_Check{"🔀 <em></em><br/>Deferral Changes Check"}:::decisions
    click Deferral_Changes_Check "#deferral_changes_check" "362876201"
    
    Effective_Date_Null_Check{"🔀 <em></em><br/>Effective Date Null Check"}:::decisions
    click Effective_Date_Null_Check "#effective_date_null_check" "624775409"
    
    Employee_Null_Check{"🔀 <em></em><br/>Employee Null Check"}:::decisions
    click Employee_Null_Check "#employee_null_check" "1577133741"
    
    Hardships{"🔀 <em></em><br/>Hardships"}:::decisions
    click Hardships "#hardships" "2951042344"
    
    Owner_Validation{"🔀 <em></em><br/>Owner Validation"}:::decisions
    click Owner_Validation "#owner_validation" "3823803878"
    
    Service_Option_Update{"🔀 <em></em><br/>Service Option Update"}:::decisions
    click Service_Option_Update "#service_option_update" "2248607013"
    
    Set_values_using_auto_enrollment_mdt[("🔍 <em></em><br/>Set values using auto enrollment mdt")]:::recordLookups
    click Set_values_using_auto_enrollment_mdt "#set_values_using_auto_enrollment_mdt" "2356931754"
    
    AE_None --> Owner_Validation
    Hardship_no --> Auto_Enrollment_Def_Esc_Rate_Check
    prop_owner_opp_owner --> Check_if_Simply_Prop
    Set_Default_Effective_Date --> END_Set_Default_Effective_Date
    Set_Default_Employee_Count --> Effective_Date_Null_Check
    Set_entry_and_roth_values --> Employee_Null_Check
    Set_to_EACA_default --> Deferral_Changes_Check
    SO_unbundled --> Employee_Null_Check
    Auto_Enrollment_Def_Esc_Rate_Check --> |"No value"| AE_None
    Auto_Enrollment_Def_Esc_Rate_Check --> |"Value present"| Check_if_needs_auto_enrollment_default
    Check_if_needs_auto_enrollment_default --> |"Null Auto Enrollment"| Set_to_EACA_default
    Check_if_needs_auto_enrollment_default --> |"Default Outcome"| Deferral_Changes_Check
    Check_if_Simply_Prop --> |"Is Simply"| Service_Option_Update
    Check_if_Simply_Prop --> |"Default Outcome"| END_Check_if_Simply_Prop
    Default_Bundled_Field_Updates_Needed --> |"Default Stamp Needed"| Set_entry_and_roth_values
    Default_Bundled_Field_Updates_Needed --> |"No Default Stamp"| Employee_Null_Check
    Deferral_Changes_Check --> |"Needs min max"| Set_values_using_auto_enrollment_mdt
    Deferral_Changes_Check --> |"Default Outcome"| Owner_Validation
    Effective_Date_Null_Check --> |"Need dummy effective date"| Set_Default_Effective_Date
    Effective_Date_Null_Check --> |"Default Outcome"| END_Effective_Date_Null_Check
    Employee_Null_Check --> |"Needs dummy employee count"| Set_Default_Employee_Count
    Employee_Null_Check --> |"Default Outcome"| Effective_Date_Null_Check
    Hardships --> |"Null hardships"| Hardship_no
    Hardships --> |"Default Outcome"| Auto_Enrollment_Def_Esc_Rate_Check
    Owner_Validation --> |"Proposal Owner Not Matching"| prop_owner_opp_owner
    Owner_Validation --> |"Default Outcome"| Check_if_Simply_Prop
    Service_Option_Update --> |"Unbundled"| SO_unbundled
    Service_Option_Update --> |"Bundled"| Default_Bundled_Field_Updates_Needed
    Set_values_using_auto_enrollment_mdt --> Owner_Validation
    START -->  Hardships
    END_Set_Default_Effective_Date(( END )):::endClass
    END_Check_if_Simply_Prop(( END )):::endClass
    END_Effective_Date_Null_Check(( END )):::endClass
    
    
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
    |Object|Proposal__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record Before Save|
    |Record Trigger Type| Create And Update|
    |Label|Proposal | Before Update | Service Option Validation|
    |Status|Active|
    |Description|Updated plan effective date placeholder value to be 1 month in the future from proposal creation|
    |Environments|Default|
    |Interview Label|Proposal | Before Update | Service Option Validation {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Hardships](#hardships)|
    |Next Node|[Hardships](#hardships)|
    
    
    #### Filters (logic: **or**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Principal_Id__c| Is Null|<!-- -->|
    |2|Sallus_ID__c| Is Null|<!-- -->|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |simplyProposalStatuses|String|✅|⬜|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |oneMonthFuture|Date|ADDMONTHS({!$Record.CreatedDate},1)|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### AE_None
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|AE = None|
    |Connector|[Owner_Validation](#owner_validation)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Auto_Enrollment__c| Assign|None|
    |$Record.Min_Auto_Deferral_Percentage__c| Assign|<!-- -->|
    |$Record.Max_Auto_Deferral_Percentage__c| Assign|<!-- -->|
    |$Record.Auto_Deferral_Type__c| Assign|<!-- -->|
    
    
    
    
    ### Hardship_no
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Hardship = no|
    |Connector|[Auto_Enrollment_Def_Esc_Rate_Check](#auto_enrollment_def_esc_rate_check)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Hardships__c| Assign|No|
    
    
    
    
    ### prop_owner_opp_owner
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|prop owner = opp owner|
    |Connector|[Check_if_Simply_Prop](#check_if_simply_prop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.OwnerId| Assign|$Record.Opportunity__r.OwnerId|
    
    
    
    
    ### Set_Default_Effective_Date
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Set Default Effective Date|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Plan_Effective_Date__c| Assign|oneMonthFuture|
    
    
    
    
    ### Set_Default_Employee_Count
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Set Default Employee Count|
    |Connector|[Effective_Date_Null_Check](#effective_date_null_check)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Number_of_Employees__c| Assign|500|
    
    
    
    
    ### Set_entry_and_roth_values
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Set entry and roth values|
    |Connector|[Employee_Null_Check](#employee_null_check)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Plan_Entry_Frequency__c| Assign|Immediate|
    |$Record.Roth_Contributions__c| Assign|Yes|
    
    
    
    
    ### Set_to_EACA_default
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Set to EACA default|
    |Connector|[Deferral_Changes_Check](#deferral_changes_check)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Auto_Enrollment__c| Assign|EACA|
    
    
    
    
    ### SO_unbundled
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|SO = unbundled|
    |Connector|[Employee_Null_Check](#employee_null_check)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Service_Option__c| Assign|Simply Retirement Unbundled|
    
    
    
    
    ### Auto_Enrollment_Def_Esc_Rate_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Auto Deferral Check|
    |Description|Is the "Auto Deferral / Escalation" field blank?  If so, set auto enrollment to none and wipe auto deferral fields|
    |Default Connector|[Check_if_needs_auto_enrollment_default](#check_if_needs_auto_enrollment_default)|
    |Default Connector Label|Value present|
    
    
    #### Rule No_value (No value)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[AE_None](#ae_none)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Auto_Enrollment_Deferral_Escalation_Rate__c| Is Blank|✅|
    
    
    
    
    ### Check_if_needs_auto_enrollment_default
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check if needs auto enrollment default|
    |Default Connector|[Deferral_Changes_Check](#deferral_changes_check)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Null_Auto_Enrollment (Null Auto Enrollment)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Set_to_EACA_default](#set_to_eaca_default)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Auto_Enrollment__c| Is Blank|✅|
    
    
    
    
    ### Check_if_Simply_Prop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check if Simply Prop|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Is_Simply (Is Simply)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Service_Option_Update](#service_option_update)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Principal_Id__c| Is Blank|⬜|
    
    
    
    
    ### Default_Bundled_Field_Updates_Needed
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Default Bundled Field Updates Needed?|
    |Description|Ensures that Simply Bundled Proposals have default values for Roth and Plan Entry Freq|
    |Default Connector|[Employee_Null_Check](#employee_null_check)|
    |Default Connector Label|No Default Stamp|
    
    
    #### Rule Default_Stamp_Needed (Default Stamp Needed)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Set_entry_and_roth_values](#set_entry_and_roth_values)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Roth_Contributions__c| Is Null|✅|
    |2|$Record.Plan_Entry_Frequency__c| Is Null|✅|
    |3|$Record.X3_38__c| Not Equal To|OneDigital|
    |4|$Record.X3_38__c| Not Equal To|SRP|
    
    
    
    
    ### Deferral_Changes_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Deferral Changes Check|
    |Description|If the deferral rate was changed or is new, then min and max values need to be set|
    |Default Connector|[Owner_Validation](#owner_validation)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Needs_min_max (Needs min max)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Set_values_using_auto_enrollment_mdt](#set_values_using_auto_enrollment_mdt)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Auto_Enrollment_Deferral_Escalation_Rate__c| Not Equal To|$Record__Prior.Auto_Enrollment_Deferral_Escalation_Rate__c|
    
    
    
    
    ### Effective_Date_Null_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Effective Date Null Check|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Need_dummy_effective_date (Need dummy effective date)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Set_Default_Effective_Date](#set_default_effective_date)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Plan_Effective_Date__c| Is Null|✅|
    
    
    
    
    ### Employee_Null_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Employee Null Check|
    |Default Connector|[Effective_Date_Null_Check](#effective_date_null_check)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Needs_dummy_employee_count (Needs dummy employee count)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Set_Default_Employee_Count](#set_default_employee_count)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Number_of_Employees__c| Is Null|✅|
    
    
    
    
    ### Hardships
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[Hardships](#hardships)|
    |Default Connector|[Auto_Enrollment_Def_Esc_Rate_Check](#auto_enrollment_def_esc_rate_check)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Null_hardships (Null hardships)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Hardship_no](#hardship_no)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Hardships__c| Is Blank|✅|
    
    
    
    
    ### Owner_Validation
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Owner Validation|
    |Default Connector|[Check_if_Simply_Prop](#check_if_simply_prop)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Proposal_Owner_Not_Matching (Proposal Owner Not Matching)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[prop_owner_opp_owner](#prop_owner_opp_owner)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Opportunity__c| Is Null|⬜|
    |2|$Record.Opportunity__r.OwnerId| Not Equal To|$Record.OwnerId|
    
    
    
    
    ### Service_Option_Update
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Service Option Update|
    |Default Connector|[Default_Bundled_Field_Updates_Needed](#default_bundled_field_updates_needed)|
    |Default Connector Label|Bundled|
    
    
    #### Rule Unbundled (Unbundled)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[SO_unbundled](#so_unbundled)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.TPA_Included__c| Equal To|✅|
    
    
    
    
    ### Set_values_using_auto_enrollment_mdt
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Auto_Enrollment_Deferral_Escalation_Rate__mdt|
    |Label|Set values using auto enrollment mdt|
    |Assign Null Values If No Records Found|✅|
    |Output Assignments|- assignToReference: $Record.Auto_Deferral_Type__c<br/>&nbsp;&nbsp;field: Auto_Deferral_Type__c<br/>- assignToReference: $Record.Max_Auto_Deferral_Percentage__c<br/>&nbsp;&nbsp;field: Max_Auto_Deferral_Percentage__c<br/>- assignToReference: $Record.Min_Auto_Deferral_Percentage__c<br/>&nbsp;&nbsp;field: Min_Auto_Deferral_Percentage__c<br/>|
    |Connector|[Owner_Validation](#owner_validation)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Label| Equal To|$Record.Auto_Enrollment_Deferral_Escalation_Rate__c|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

