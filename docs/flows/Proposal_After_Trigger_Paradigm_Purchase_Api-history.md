# Proposal_After_Trigger_Paradigm_Purchase_Api history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Proposal_After_Trigger_Paradigm_Purchase_Api-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record Before Save</b>"]):::startClass
    click START "#general-information" "3353190650"
    
    Assign_Conversion_Needed_true[\"🟰 <em></em><br/>Assign Conversion Needed = true"/]:::assignments
    click Assign_Conversion_Needed_true "#assign_conversion_needed_true" "2112337600"
    
    Assign_Default_Fields[\"🟰 <em></em><br/>Assign Default Fields"/]:::assignments
    click Assign_Default_Fields "#assign_default_fields" "3206823060"
    
    Assign_Generic_Values[\"🟰 <em></em><br/>Assign Generic Values"/]:::assignments
    click Assign_Generic_Values "#assign_generic_values" "3861525350"
    
    Assign_Plan_Name[\"🟰 <em></em><br/>Assign Plan Name"/]:::assignments
    click Assign_Plan_Name "#assign_plan_name" "2323386643"
    
    Assign_Portfolio_Code[\"🟰 <em></em><br/>Assign Portfolio Code"/]:::assignments
    click Assign_Portfolio_Code "#assign_portfolio_code" "1370901962"
    
    Assign_Product_and_Portfolio_Code[\"🟰 <em></em><br/>Assign Product and Portfolio Code"/]:::assignments
    click Assign_Product_and_Portfolio_Code "#assign_product_and_portfolio_code" "38695598"
    
    Default_Eligibility_Age[\"🟰 <em></em><br/>Default Eligibility Age"/]:::assignments
    click Default_Eligibility_Age "#default_eligibility_age" "2771810097"
    
    Map_Default_Fields[\"🟰 <em></em><br/>Assign Default Fields"/]:::assignments
    click Map_Default_Fields "#map_default_fields" "3883603897"
    
    Update_Fin_Advisor[\"🟰 <em></em><br/>Update Fin Advisor"/]:::assignments
    click Update_Fin_Advisor "#update_fin_advisor" "799169328"
    
    Update_Sponsor_Info1[\"🟰 <em></em><br/>Update Sponsor Info"/]:::assignments
    click Update_Sponsor_Info1 "#update_sponsor_info1" "4143212828"
    
    Update_TPA[\"🟰 <em></em><br/>Update TPA"/]:::assignments
    click Update_TPA "#update_tpa" "753237577"
    
    Acc_Opp_AC_Present{"🔀 <em></em><br/>Acc, Opp, AC Present?"}:::decisions
    click Acc_Opp_AC_Present "#acc_opp_ac_present" "3637574534"
    
    Associated_Contact_Present{"🔀 <em></em><br/>Associated Contact Present?"}:::decisions
    click Associated_Contact_Present "#associated_contact_present" "3211237235"
    
    Contact_Role{"🔀 <em></em><br/>Contact Role?"}:::decisions
    click Contact_Role "#contact_role" "1110144325"
    
    Conversion_Plan{"🔀 <em></em><br/>Conversion Plan?"}:::decisions
    click Conversion_Plan "#conversion_plan" "1169024046"
    
    Custodian_3_38_and_Fund_List_Present{"🔀 <em></em><br/>Custodian, 3/38, and Fund List Present?"}:::decisions
    click Custodian_3_38_and_Fund_List_Present "#custodian_3_38_and_fund_list_present" "559767565"
    
    Eligibility_Age_is_Blank{"🔀 <em></em><br/>Eligibility Age is Populated?"}:::decisions
    click Eligibility_Age_is_Blank "#eligibility_age_is_blank" "3049553607"
    
    Is_Plan_Name_null{"🔀 <em></em><br/>Is Plan  Name null?"}:::decisions
    click Is_Plan_Name_null "#is_plan_name_null" "3395242625"
    
    MML_Proposal{"🔀 <em></em><br/>MML Proposal?"}:::decisions
    click MML_Proposal "#mml_proposal" "4105684318"
    
    Plan_Type{"🔀 <em></em><br/>Plan Type?"}:::decisions
    click Plan_Type "#plan_type" "2082539104"
    
    Service_Option_and_Custodian_Present{"🔀 <em></em><br/>Service Option and Custodian Present?"}:::decisions
    click Service_Option_and_Custodian_Present "#service_option_and_custodian_present" "2216254446"
    
    Loop_Thru_AC{{"🔁 <em></em><br/>Loop Thru AC"}}:::loops
    click Loop_Thru_AC "#loop_thru_ac" "690956975"
    
    Account[("🔍 <em></em><br/>Account")]:::recordLookups
    click Account "#account" "1670883688"
    
    Associated_Contact[("🔍 <em></em><br/>Associated Contact")]:::recordLookups
    click Associated_Contact "#associated_contact" "1773223359"
    
    Find_Partner_Proposal_User[("🔍 <em></em><br/>Find Partner Proposal User")]:::recordLookups
    click Find_Partner_Proposal_User "#find_partner_proposal_user" "3266435899"
    
    Get_Advisor_Account[("🔍 <em></em><br/>Get Advisor Account")]:::recordLookups
    click Get_Advisor_Account "#get_advisor_account" "432590343"
    
    Get_Advisor_Contact[("🔍 <em></em><br/>Get Advisor Contact")]:::recordLookups
    click Get_Advisor_Contact "#get_advisor_contact" "4102116556"
    
    Get_PortfolioCode[("🔍 <em></em><br/>Get PortfolioCode")]:::recordLookups
    click Get_PortfolioCode "#get_portfoliocode" "2819073815"
    
    Get_Product_Codes[("🔍 <em></em><br/>Get Product Codes")]:::recordLookups
    click Get_Product_Codes "#get_product_codes" "3215391614"
    
    Opportunity[("🔍 <em></em><br/>Opportunity")]:::recordLookups
    click Opportunity "#opportunity" "1262376989"
    
    Assign_Conversion_Needed_true --> Associated_Contact_Present
    Assign_Default_Fields --> Service_Option_and_Custodian_Present
    Assign_Generic_Values --> Service_Option_and_Custodian_Present
    Assign_Plan_Name --> Associated_Contact_Present
    Assign_Portfolio_Code --> Plan_Type
    Assign_Product_and_Portfolio_Code --> Custodian_3_38_and_Fund_List_Present
    Default_Eligibility_Age --> Service_Option_and_Custodian_Present
    Map_Default_Fields --> Eligibility_Age_is_Blank
    Update_Fin_Advisor --> Loop_Thru_AC
    Update_Sponsor_Info1 --> Loop_Thru_AC
    Update_TPA --> Loop_Thru_AC
    Acc_Opp_AC_Present --> |"Present"| Account
    Acc_Opp_AC_Present --> |"Default Outcome"| MML_Proposal
    Associated_Contact_Present --> |"Yes"| Loop_Thru_AC
    Associated_Contact_Present --> |"Default Outcome"| END_Associated_Contact_Present
    Contact_Role --> |"Sponsor"| Update_Sponsor_Info1
    Contact_Role --> |"FInancial Advisor"| Update_Fin_Advisor
    Contact_Role --> |"TPA"| Update_TPA
    Contact_Role --> |"Default Outcome"| Loop_Thru_AC
    Conversion_Plan --> |"Conversion"| Assign_Conversion_Needed_true
    Conversion_Plan --> |"Default Outcome"| Associated_Contact_Present
    Custodian_3_38_and_Fund_List_Present --> |"Present"| Get_PortfolioCode
    Custodian_3_38_and_Fund_List_Present --> |"Default Outcome"| Plan_Type
    Eligibility_Age_is_Blank --> |"Blank"| Default_Eligibility_Age
    Eligibility_Age_is_Blank --> |"Default Outcome"| Service_Option_and_Custodian_Present
    Is_Plan_Name_null --> |"Null"| Assign_Plan_Name
    Is_Plan_Name_null --> |"Default Outcome"| Associated_Contact_Present
    MML_Proposal --> |"MML"| Get_Advisor_Account
    MML_Proposal --> |"General Jotform"| Find_Partner_Proposal_User
    MML_Proposal --> |"Internal"| Map_Default_Fields
    MML_Proposal --> |"Default Outcome"| Service_Option_and_Custodian_Present
    Plan_Type --> |"New Plan"| Is_Plan_Name_null
    Plan_Type --> |"Conversion/Upgrade"| Conversion_Plan
    Plan_Type --> |"Default Outcome"| Associated_Contact_Present
    Service_Option_and_Custodian_Present --> |"Present"| Get_Product_Codes
    Service_Option_and_Custodian_Present --> |"Default Outcome"| Custodian_3_38_and_Fund_List_Present
    Loop_Thru_AC --> |"For Each"|Contact_Role
    Loop_Thru_AC ---> |"After Last"|END
    Account --> Opportunity
    Associated_Contact --> MML_Proposal
    Find_Partner_Proposal_User --> Assign_Generic_Values
    Get_Advisor_Account --> Get_Advisor_Contact
    Get_Advisor_Contact --> Assign_Default_Fields
    Get_PortfolioCode --> Assign_Portfolio_Code
    Get_Product_Codes --> Assign_Product_and_Portfolio_Code
    Opportunity --> Associated_Contact
    START -->  Acc_Opp_AC_Present
    END_Associated_Contact_Present(( END )):::endClass
    
    
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
    |Record Trigger Type| Create|
    |Label|Proposal |  Before Trigger | Paradigm Purchase Api|
    |Status|Active|
    |Description|Removed Auto_Enrollment_Deferral_Escalation_Rate__c references|
    |Environments|Default|
    |Interview Label|Proposal |  Trigger After | {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Acc_Opp_AC_Present](#acc_opp_ac_present)|
    |Next Node|[Acc_Opp_AC_Present](#acc_opp_ac_present)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|RecordTypeId| Equal To|0121G000000AjeLQAS|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |PlanName|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |autoDeferralType|String|IF(<br/>   {!$Record.Auto_Deferral_Type__c} = "Flat", <br/>        "FLAT",  <br/>    IF(<br/>        {!$Record.Auto_Deferral_Type__c} = "Escalating", <br/>        "ESCALATING", <br/>        null<br/>    )<br/>)|<!-- -->|
    |autoDeferralTypeInternal|String|IF(<br/>    ISBLANK({!$Record.Min_Auto_Deferral_Percentage__c}),<br/>    NULL,<br/>    IF(<br/>        NOT(ISBLANK({!$Record.Max_Auto_Deferral_Percentage__c})),<br/>        IF(<br/>           {!$Record.Min_Auto_Deferral_Percentage__c} <>{!$Record.Max_Auto_Deferral_Percentage__c},<br/>            "ESCALATING",<br/>            "FLAT"<br/>        ),<br/>        NULL<br/>    )<br/>)|Will be used to populate Auto_Deferral_Type__c for internal OPD proposals.|
    |SafeHarborMatchDeterminationPeriod|String|IF(<br/>    NOT(<br/>        ISPICKVAL({!$Record.Safe_Harbor__c}, "None") || <br/>        ISPICKVAL({!$Record.Safe_Harbor__c}, "No") || <br/>        ISPICKVAL({!$Record.Safe_Harbor__c}, "Yes")<br/>    ),<br/>    CASE(<br/>        {!$Record.Safe_Harbor__c},<br/>        "3% Non-Elective Contribution (NEC)", "Annual",<br/>        "3% QACA non-elective", "Annual",<br/>        "Per Pay Period" <br/>    ),<br/>    NULL <br/>)|<!-- -->|
    |yearAutoDeferralIncreseInternal|Number|IF(<br/>    AND(<br/>        NOT(ISBLANK({!$Record.Min_Auto_Deferral_Percentage__c})),<br/>        {!$Record.Min_Auto_Deferral_Percentage__c} <> {!$Record.Max_Auto_Deferral_Percentage__c}<br/>    ),<br/>    1,<br/>    NULL<br/>)|<!-- -->|
    |yearlyAutoDeferralPercentageIncrease|Number|IF(<br/>    OR(<br/>        ISBLANK({!$Record.Auto_Deferral_Type__c}), <br/>        {!$Record.Auto_Deferral_Type__c} = "Flat"<br/>    ), <br/>    null, <br/>    1<br/>)|<!-- -->|
    
    
    ## Constants
    
    |Name|Data Type|Value|Description|
    |:-- |:--:|:--:|:--  |
    |doNotUse|Boolean|<!-- -->|Just to trigger change for dev pipeline|
    
    
    ## Flow Nodes Details
    
    ### Assign_Conversion_Needed_true
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Conversion Needed = true|
    |Connector|[Associated_Contact_Present](#associated_contact_present)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Conversion_Needed__c| Assign|✅|
    
    
    
    
    ### Assign_Default_Fields
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Default Fields|
    |Connector|[Service_Option_and_Custodian_Present](#service_option_and_custodian_present)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Auto_Deferral_Type__c| Assign|autoDeferralType|
    |$Record.Product_Type__c| Assign|401(k)|
    |$Record.Service_Option__c| Assign|Custom(k) MML|
    |$Record.Custodian__c| Assign|MG Trust Company, LLC.|
    |$Record.Fund_List__c| Assign|MML|
    |$Record.Firm_Name__c| Assign|First Financial Group - PA|
    |$Record.Yearly_Auto_Deferral_Percentage_Increase__c| Assign|yearlyAutoDeferralPercentageIncrease|
    |$Record.OwnerId| Assign|Get_Advisor_Account.OwnerId|
    |$Record.Referrer_Email__c| Assign|jmnovak@financialguide.com|
    |$Record.Advisor_Account__c| Assign|Get_Advisor_Account.Id|
    |$Record.Advisor_Contact__c| Assign|Get_Advisor_Contact.Id|
    |$Record.Brokerage_Accounts_PCRA__c| Assign|No|
    |$Record.X3_38__c| Assign|MML|
    |$Record.Safe_Harbor_Match_Determination_Period__c| Assign|SafeHarborMatchDeterminationPeriod|
    |$Record.Financial_Professional_Email__c| Assign|jmnovak@financialguide.com|
    
    
    
    
    ### Assign_Generic_Values
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Generic Values|
    |Connector|[Service_Option_and_Custodian_Present](#service_option_and_custodian_present)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Auto_Deferral_Type__c| Assign|autoDeferralType|
    |$Record.Safe_Harbor_Match_Determination_Period__c| Assign|SafeHarborMatchDeterminationPeriod|
    |$Record.Yearly_Auto_Deferral_Percentage_Increase__c| Assign|yearlyAutoDeferralPercentageIncrease|
    
    
    
    
    ### Assign_Plan_Name
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Plan Name|
    |Connector|[Associated_Contact_Present](#associated_contact_present)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Plan_Name__c| Assign|PlanName|
    
    
    
    
    ### Assign_Portfolio_Code
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Portfolio Code|
    |Connector|[Plan_Type](#plan_type)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Portfolio_Code__c| Assign|Get_PortfolioCode.Label|
    
    
    
    
    ### Assign_Product_and_Portfolio_Code
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Product and Portfolio Code|
    |Connector|[Custodian_3_38_and_Fund_List_Present](#custodian_3_38_and_fund_list_present)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Product_Code__c| Assign|Get_Product_Codes.Label|
    
    
    
    
    ### Default_Eligibility_Age
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Default Eligibility Age|
    |Connector|[Service_Option_and_Custodian_Present](#service_option_and_custodian_present)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Eligibility_Age__c| Assign|21|
    
    
    
    
    ### Map_Default_Fields
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Default Fields|
    |Connector|[Eligibility_Age_is_Blank](#eligibility_age_is_blank)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Client_Company_Name__c| Assign|Account.Name|
    |$Record.Company_State__c| Assign|Opportunity.Billing_State__c|
    |$Record.Number_of_Employees__c| Assign|Opportunity.Number_of_Employees__c|
    |$Record.Status__c| Assign|Created|
    |$Record.Auto_Deferral_Type__c| Assign|autoDeferralTypeInternal|
    |$Record.Yearly_Auto_Deferral_Percentage_Increase__c| Assign|yearAutoDeferralIncreseInternal|
    
    
    
    
    ### Update_Fin_Advisor
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Update Fin Advisor|
    |Connector|[Loop_Thru_AC](#loop_thru_ac)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Advisor_CRD__c| Assign|Loop_Thru_AC.Contact__r.CRD_Number__c|
    |$Record.Advisor_NPN__c| Assign|Loop_Thru_AC.Contact__r.NPN_Number__c|
    
    
    
    
    ### Update_Sponsor_Info1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Update Sponsor Info|
    |Connector|[Loop_Thru_AC](#loop_thru_ac)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Company_Contact_First_Name__c| Assign|Loop_Thru_AC.Contact__r.FirstName|
    |$Record.Company_Contact_Last_Name__c| Assign|Loop_Thru_AC.Contact__r.LastName|
    |$Record.Contact_Phone_Number__c| Assign|Loop_Thru_AC.Contact__r.Phone|
    |$Record.Company_Email__c| Assign|Loop_Thru_AC.Contact__r.Email|
    
    
    
    
    ### Update_TPA
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Update TPA|
    |Connector|[Loop_Thru_AC](#loop_thru_ac)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.TPA_EIN__c| Assign|Loop_Thru_AC.Account__r.Employer_Identification_Number_EIN__c|
    
    
    
    
    ### Acc_Opp_AC_Present
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Acc, Opp, AC Present?|
    |Description|Does this Proposal have related Account, Opportunity, and Associated Contact|
    |Default Connector|[MML_Proposal](#mml_proposal)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Present (Present)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Account](#account)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Opportunity__r.AccountId| Is Null|⬜|
    |2|$Record.Opportunity__c| Is Null|⬜|
    
    
    
    
    ### Associated_Contact_Present
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Associated Contact Present?|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Loop_Thru_AC](#loop_thru_ac)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|[Associated_Contact](#associated_contact)| Is Null|⬜|
    
    
    
    
    ### Contact_Role
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Contact Role?|
    |Default Connector|[Loop_Thru_AC](#loop_thru_ac)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Sponsor (Sponsor)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Sponsor_Info1](#update_sponsor_info1)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Loop_Thru_AC.Contact_Role__c| Contains|Plan Sponsor|
    |2|Loop_Thru_AC.Contact_Role__c| Equal To|Authorized Buyer|
    
    
    
    
    #### Rule FInancial_Advisor (FInancial Advisor)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Fin_Advisor](#update_fin_advisor)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Loop_Thru_AC.Contact_Role__c| Equal To|Financial Advisor|
    
    
    
    
    #### Rule TPA (TPA)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_TPA](#update_tpa)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Loop_Thru_AC.Contact_Role__c| Contains|TPA|
    
    
    
    
    ### Conversion_Plan
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Conversion Plan?|
    |Default Connector|[Associated_Contact_Present](#associated_contact_present)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Conversion (Conversion)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Conversion_Needed_true](#assign_conversion_needed_true)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Plan_Type__c| Equal To|Conversion Plan|
    
    
    
    
    ### Custodian_3_38_and_Fund_List_Present
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Custodian, 3/38, and Fund List Present?|
    |Default Connector|[Plan_Type](#plan_type)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Present_Custodian (Present)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_PortfolioCode](#get_portfoliocode)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Custodian__c| Is Null|⬜|
    |2|$Record.X3_38__c| Is Null|⬜|
    |3|$Record.Fund_List__c| Is Null|⬜|
    
    
    
    
    ### Eligibility_Age_is_Blank
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Eligibility Age is Populated?|
    |Default Connector|[Service_Option_and_Custodian_Present](#service_option_and_custodian_present)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Blank (Blank)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Default_Eligibility_Age](#default_eligibility_age)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Eligibility_Age__c| Is Blank|✅|
    
    
    
    
    ### Is_Plan_Name_null
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Is Plan  Name null?|
    |Default Connector|[Associated_Contact_Present](#associated_contact_present)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Null (Null)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Plan_Name](#assign_plan_name)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Plan_Name__c| Is Null|✅|
    
    
    
    
    ### MML_Proposal
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|MML Proposal?|
    |Default Connector|[Service_Option_and_Custodian_Present](#service_option_and_custodian_present)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule MML (MML)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Advisor_Account](#get_advisor_account)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Lead_Source__c| Equal To|MML|
    |2|$Record.Lead_Source_Detail__c| Equal To|MML|
    
    
    
    
    #### Rule General_Jotform (General Jotform)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Find_Partner_Proposal_User](#find_partner_proposal_user)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.MML_Form_Values__c| Is Blank|⬜|
    |2|$Record.Lead_Source__c| Not Equal To|MML|
    
    
    
    
    #### Rule Internal (Internal)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Map_Default_Fields](#map_default_fields)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Lead_Source__c| Not Equal To|MML|
    
    
    
    
    ### Plan_Type
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Plan Type?|
    |Default Connector|[Associated_Contact_Present](#associated_contact_present)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule New_Plan (New Plan)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Is_Plan_Name_null](#is_plan_name_null)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Plan_Type__c| Equal To|New Plan|
    
    
    
    
    #### Rule Conversion_Upgrade (Conversion/Upgrade)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Conversion_Plan](#conversion_plan)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Plan_Type__c| Equal To|Conversion Plan|
    |2|$Record.Plan_Type__c| Equal To|Upgrade|
    
    
    
    
    ### Service_Option_and_Custodian_Present
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Service Option and Custodian Present?|
    |Description|Does this Proposal have Service Option, Custodian, Fund List, and 3(38) populated to assign Product Code and Portfolio Code?|
    |Default Connector|[Custodian_3_38_and_Fund_List_Present](#custodian_3_38_and_fund_list_present)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes_Present (Present)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Product_Codes](#get_product_codes)|
    |Condition Logic|1 AND 2|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Service_Option__c| Is Null|⬜|
    |2|$Record.Custodian__c| Is Null|⬜|
    
    
    
    
    ### Loop_Thru_AC
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Loop Thru AC|
    |Collection Reference|[Associated_Contact](#associated_contact)|
    |Iteration Order|Asc|
    |Next Value Connector|[Contact_Role](#contact_role)|
    
    
    ### Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|[Account](#account)|
    |Label|[Account](#account)|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Opportunity](#opportunity)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$Record.Opportunity__r.AccountId|
    
    
    
    
    ### Associated_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Associated_Contact__c|
    |Label|Associated Contact|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Store Output Automatically|✅|
    |Connector|[MML_Proposal](#mml_proposal)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Opportunity__c| Equal To|$Record.Opportunity__c|
    
    
    
    
    ### Find_Partner_Proposal_User
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Group|
    |Label|Find Partner Proposal User|
    |Assign Null Values If No Records Found|⬜|
    |Output Assignments|assignToReference: $Record.OwnerId<br/>field: Id<br/>|
    |Connector|[Assign_Generic_Values](#assign_generic_values)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Name| Equal To|Partner Proposal|
    
    
    
    
    ### Get_Advisor_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|[Account](#account)|
    |Label|Get Advisor Account|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Get_Advisor_Contact](#get_advisor_contact)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Name| Equal To|First Financial Group - PA|
    
    
    
    
    ### Get_Advisor_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Get Advisor Contact|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Assign_Default_Fields](#assign_default_fields)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Name| Equal To|John Novak|
    |2|Email| Equal To|jmnovak@financialguide.com|
    
    
    
    
    ### Get_PortfolioCode
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Portfolio_Code__mdt|
    |Label|Get PortfolioCode|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Assign_Portfolio_Code](#assign_portfolio_code)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Custodian__c| Equal To|$Record.Custodian__c|
    |2|X3_38_Asset_Manager__c| Equal To|$Record.X3_38__c|
    |3|Fund_List__c| Equal To|$Record.Fund_List__c|
    
    
    
    
    ### Get_Product_Codes
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|ProductCode__mdt|
    |Label|Get Product Codes|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Assign_Product_and_Portfolio_Code](#assign_product_and_portfolio_code)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Service_Option__c| Equal To|$Record.Service_Option__c|
    |2|Custodian__c| Equal To|$Record.Custodian__c|
    |3|isActive__c| Equal To|✅|
    
    
    
    
    ### Opportunity
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|[Opportunity](#opportunity)|
    |Label|[Opportunity](#opportunity)|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Associated_Contact](#associated_contact)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$Record.Opportunity__c|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

