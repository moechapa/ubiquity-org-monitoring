# Opportunity_Closure_Validation history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Opportunity_Closure_Validation-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Screen Flow</b>"]):::startClass
    click START "#general-information" "2228015151"
    
    Add_Fund_List[\"🟰 <em></em><br/>Add Fund List"/]:::assignments
    click Add_Fund_List "#add_fund_list" "3191631581"
    
    Assign_Address[\"🟰 <em></em><br/>Assign Address"/]:::assignments
    click Assign_Address "#assign_address" "937631293"
    
    Assign_Closed_Opportunity_Variables[\"🟰 <em></em><br/>Assign Closed Opportunity Variables"/]:::assignments
    click Assign_Closed_Opportunity_Variables "#assign_closed_opportunity_variables" "336590971"
    
    Assign_Conversion_Type[\"🟰 <em></em><br/>Assign Conversion Type"/]:::assignments
    click Assign_Conversion_Type "#assign_conversion_type" "1744417067"
    
    Assign_Custodian[\"🟰 <em></em><br/>Assign Custodian"/]:::assignments
    click Assign_Custodian "#assign_custodian" "1050409105"
    
    Assign_EIN[\"🟰 <em></em><br/>Assign EIN"/]:::assignments
    click Assign_EIN "#assign_ein" "2374379933"
    
    Assign_Fund_List_Values[\"🟰 <em></em><br/>Assign Fund List Values"/]:::assignments
    click Assign_Fund_List_Values "#assign_fund_list_values" "1530784079"
    
    Assign_Roth[\"🟰 <em></em><br/>Assign Roth"/]:::assignments
    click Assign_Roth "#assign_roth" "4094385029"
    
    Assign_Safe_Harbor[\"🟰 <em></em><br/>Assign Safe Harbor"/]:::assignments
    click Assign_Safe_Harbor "#assign_safe_harbor" "3203104073"
    
    Assign_Upgrade_Effective_Date[\"🟰 <em></em><br/>Assign Upgrade Effective Date"/]:::assignments
    click Assign_Upgrade_Effective_Date "#assign_upgrade_effective_date" "2725566769"
    
    Update_ESA_Fields[\"🟰 <em></em><br/>Update ESA Fields"/]:::assignments
    click Update_ESA_Fields "#update_esa_fields" "3853544637"
    
    Conversion_Type_Entered{"🔀 <em></em><br/>Conversion Type Entered?"}:::decisions
    click Conversion_Type_Entered "#conversion_type_entered" "1430937026"
    
    Custodian_Entered{"🔀 <em></em><br/>Custodian Entered?"}:::decisions
    click Custodian_Entered "#custodian_entered" "936972673"
    
    Custom_Fund_List{"🔀 <em></em><br/>Custom Fund List?"}:::decisions
    click Custom_Fund_List "#custom_fund_list" "2526599640"
    
    Custom_k_Service_Option_Selected{"🔀 <em></em><br/>Custom(k) Service Option Selected"}:::decisions
    click Custom_k_Service_Option_Selected "#custom_k_service_option_selected" "3759892431"
    
    EIN{"🔀 <em></em><br/>EIN?"}:::decisions
    click EIN "#ein" "4032013238"
    
    ESA_Null{"🔀 <em></em><br/>ESA Null?"}:::decisions
    click ESA_Null "#esa_null" "1445281658"
    
    Fund_List_Object_Included{"🔀 <em></em><br/>Fund List Object Included?"}:::decisions
    click Fund_List_Object_Included "#fund_list_object_included" "2722900138"
    
    Is_This_Opp_an_Upgrade{"🔀 <em></em><br/>Is This Opp an Upgrade?"}:::decisions
    click Is_This_Opp_an_Upgrade "#is_this_opp_an_upgrade" "1654882300"
    
    LOI_Completed{"🔀 <em></em><br/>LOI Completed?"}:::decisions
    click LOI_Completed "#loi_completed" "3224305073"
    
    Opportunity_Record_Type{"🔀 <em></em><br/>Opportunity Record Type"}:::decisions
    click Opportunity_Record_Type "#opportunity_record_type" "2832440413"
    
    Roth_Contributions_Entered{"🔀 <em></em><br/>Roth Contributions Entered?"}:::decisions
    click Roth_Contributions_Entered "#roth_contributions_entered" "512307965"
    
    Safe_Harbor_Entered{"🔀 <em></em><br/>Safe Harbor Entered?"}:::decisions
    click Safe_Harbor_Entered "#safe_harbor_entered" "4279721796"
    
    Zip_Code_Entered{"🔀 <em></em><br/>Zip Code Entered?"}:::decisions
    click Zip_Code_Entered "#zip_code_entered" "744553748"
    
    Create_Fund_List_0[("➕ <em></em><br/>Create Fund List")]:::recordCreates
    click Create_Fund_List_0 "#create_fund_list_0" "3499797903"
    
    Get_Account[("🔍 <em></em><br/>Get Account")]:::recordLookups
    click Get_Account "#get_account" "3598002614"
    
    Get_Custom_List[("🔍 <em></em><br/>Get Custom List")]:::recordLookups
    click Get_Custom_List "#get_custom_list" "3119409090"
    
    Get_LOI[("🔍 <em></em><br/>Get LOI")]:::recordLookups
    click Get_LOI "#get_loi" "1327688479"
    
    Get_Opp[("🔍 <em></em><br/>Get Opp")]:::recordLookups
    click Get_Opp "#get_opp" "3415126955"
    
    Update_Account[("🛠️ <em></em><br/>Update Account")]:::recordUpdates
    click Update_Account "#update_account" "2492502219"
    
    Update_Opp[("🛠️ <em></em><br/>Update Opp")]:::recordUpdates
    click Update_Opp "#update_opp" "2189173271"
    
    Account_EIN_Missing(["💻 <em></em><br/>Account EIN Missing"]):::screens
    click Account_EIN_Missing "#account_ein_missing" "3767224474"
    
    Address_Update_Required(["💻 <em></em><br/>Address Update Required"]):::screens
    click Address_Update_Required "#address_update_required" "3438270102"
    
    Close_Opportunity(["💻 <em></em><br/>Close Opportunity"]):::screens
    click Close_Opportunity "#close_opportunity" "1592171367"
    
    Conversion_Validation(["💻 <em></em><br/>Conversion Validation"]):::screens
    click Conversion_Validation "#conversion_validation" "339586949"
    
    Custodian_Validation(["💻 <em></em><br/>Custodian Validation"]):::screens
    click Custodian_Validation "#custodian_validation" "4090474401"
    
    Custom_Fund_List_Creation(["💻 <em></em><br/>Custom Fund List"]):::screens
    click Custom_Fund_List_Creation "#custom_fund_list_creation" "3244916741"
    
    Custom_k_Validation(["💻 <em></em><br/>Custom(k) Validation"]):::screens
    click Custom_k_Validation "#custom_k_validation" "780569165"
    
    Error(["💻 <em></em><br/>Error"]):::screens
    click Error "#error" "3342960857"
    
    LOI_Missing(["💻 <em></em><br/>LOI Missing"]):::screens
    click LOI_Missing "#loi_missing" "623453903"
    
    Roth_Validation(["💻 <em></em><br/>Roth Validation"]):::screens
    click Roth_Validation "#roth_validation" "1254086234"
    
    SH_Validation(["💻 <em></em><br/>Safe Harbor Validation"]):::screens
    click SH_Validation "#sh_validation" "562897884"
    
    Success(["💻 <em></em><br/>Success"]):::screens
    click Success "#success" "1371148206"
    
    Upgrade_Validation(["💻 <em></em><br/>Upgrade Validation"]):::screens
    click Upgrade_Validation "#upgrade_validation" "524371494"
    
    Verify_ESA_Fields(["💻 <em></em><br/>Verify ESA Fields"]):::screens
    click Verify_ESA_Fields "#verify_esa_fields" "3189243643"
    
    Add_Fund_List --> ESA_Null
    Assign_Address --> EIN
    Assign_Closed_Opportunity_Variables --> Custodian_Entered
    Assign_Conversion_Type --> Custom_k_Service_Option_Selected
    Assign_Custodian --> Safe_Harbor_Entered
    Assign_EIN --> Update_Account
    Assign_Fund_List_Values --> Create_Fund_List_0
    Assign_Roth --> Is_This_Opp_an_Upgrade
    Assign_Safe_Harbor --> Roth_Contributions_Entered
    Assign_Upgrade_Effective_Date --> Conversion_Type_Entered
    Update_ESA_Fields --> Custom_Fund_List
    Conversion_Type_Entered --> |"No"| Conversion_Validation
    Conversion_Type_Entered --> |"Yes"| Custom_k_Service_Option_Selected
    Custodian_Entered --> |"No"| Custodian_Validation
    Custodian_Entered --> |"Yes"| Safe_Harbor_Entered
    Custom_Fund_List --> |"Yes"| Get_Custom_List
    Custom_Fund_List --> |"No"| Get_Account
    Custom_k_Service_Option_Selected --> |"Yes"| Custom_k_Validation
    Custom_k_Service_Option_Selected --> |"No"| ESA_Null
    EIN --> |"No"| Account_EIN_Missing
    EIN --> |"Yes"| Opportunity_Record_Type
    ESA_Null --> |"Yes"| Verify_ESA_Fields
    ESA_Null --> |"No"| Custom_Fund_List
    Fund_List_Object_Included --> |"Yes"| Get_Account
    Fund_List_Object_Included --> |"No"| Custom_Fund_List_Creation
    Is_This_Opp_an_Upgrade --> |"Yes"| Upgrade_Validation
    Is_This_Opp_an_Upgrade --> |"No"| Conversion_Type_Entered
    LOI_Completed --> |"LOI Complete"| Update_Account
    LOI_Completed --> |"LOI Incomplete"| LOI_Missing
    Opportunity_Record_Type --> |"Upgrade/Downgrade"| Get_LOI
    Opportunity_Record_Type --> |"Standard"| Update_Account
    Roth_Contributions_Entered --> |"No"| Roth_Validation
    Roth_Contributions_Entered --> |"Yes"| Is_This_Opp_an_Upgrade
    Safe_Harbor_Entered --> |"No"| SH_Validation
    Safe_Harbor_Entered --> |"Yes"| Roth_Contributions_Entered
    Zip_Code_Entered --> |"No"| Address_Update_Required
    Zip_Code_Entered --> |"Yes"| EIN
    Create_Fund_List_0 --> Get_Account
    Get_Account --> Zip_Code_Entered
    Get_Custom_List --> Fund_List_Object_Included
    Get_LOI --> LOI_Completed
    Get_Opp --> Close_Opportunity
    Update_Account --> Update_Opp
    Update_Account -. Fault .->Error
    Update_Opp --> Success
    Update_Opp -. Fault .->Error
    Account_EIN_Missing --> Assign_EIN
    Address_Update_Required --> Assign_Address
    Close_Opportunity --> Assign_Closed_Opportunity_Variables
    Conversion_Validation --> Assign_Conversion_Type
    Custodian_Validation --> Assign_Custodian
    Custom_Fund_List_Creation --> Assign_Fund_List_Values
    Custom_k_Validation --> Add_Fund_List
    Error --> END_Error
    LOI_Missing --> END_LOI_Missing
    Roth_Validation --> Assign_Roth
    SH_Validation --> Assign_Safe_Harbor
    Success --> END_Success
    Upgrade_Validation --> Assign_Upgrade_Effective_Date
    Verify_ESA_Fields --> Update_ESA_Fields
    START -->  Get_Opp
    END_Error(( END )):::endClass
    END_LOI_Missing(( END )):::endClass
    END_Success(( END )):::endClass
    
    
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
    |Label|Opportunity | Closure Validation|
    |Status|Active|
    |Environments|Default|
    |Interview Label|Opportunity | Closure Validation {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Opp](#get_opp)|
    |Next Node|[Get_Opp](#get_opp)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |customFundList|SObject|⬜|✅|✅|Fund_List__c|<!-- -->|
    |dsId|SObject|⬜|✅|✅|dsfs__DocuSign_Status__c|<!-- -->|
    |fundList|SObject|⬜|✅|✅|Fund_List__c|<!-- -->|
    |recordId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |fundName|String|"Custom Fund List - " + {!Get_Opp.Name}|<!-- -->|
    |Today|Date|TODAY()|<!-- -->|
    |zipVal|Boolean|LEN({!Get_Account.BillingPostalCode}) < 5|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Add_Fund_List
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add Fund List|
    |Connector|[ESA_Null](#esa_null)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Get_Opp.Fund_List__c| Assign|Fund_List|
    
    
    
    
    ### Assign_Address
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Address|
    |Connector|[EIN](#ein)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Get_Account.BillingCountry| Assign|Address.country|
    |Get_Account.BillingStateCode| Assign|Address.province|
    |Get_Account.BillingCity| Assign|Address.city|
    |Get_Account.BillingPostalCode| Assign|Address.postalCode|
    |Get_Account.BillingStreet| Assign|Address.street|
    
    
    
    
    ### Assign_Closed_Opportunity_Variables
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Closed Opportunity Variables|
    |Connector|[Custodian_Entered](#custodian_entered)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Get_Opp.IsClosed| Assign|✅|
    |Get_Opp.StageName| Assign|Closed Won|
    |Get_Opp.Probability| Assign|100|
    |Get_Opp.Name| Assign|Opportunity_Name|
    |Get_Opp.CloseDate| Assign|Today|
    |Get_Opp.Product_Type__c| Assign|Product_Detail.topValue|
    |Get_Opp.Service_Option__c| Assign|Product_Detail.middleValue|
    |Get_Opp.LeadSource| Assign|Source_Information.topValue|
    |Get_Opp.LeadSourceDetail__c| Assign|Source_Information.middleValue|
    |Get_Opp.Opportunity_Notes__c| Assign|Comments|
    |Get_Opp.Desired_Plan_Start_Date__c| Assign|Desired_Plan_Start_Date|
    
    
    
    
    ### Assign_Conversion_Type
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Conversion Type|
    |Connector|[Custom_k_Service_Option_Selected](#custom_k_service_option_selected)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Get_Opp.Conversion_Type__c| Assign|Conversion_Type|
    
    
    
    
    ### Assign_Custodian
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Custodian|
    |Connector|[Safe_Harbor_Entered](#safe_harbor_entered)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Get_Opp.Custodian__c| Assign|CustodianPicklist.middleValue|
    |Get_Opp.Safe_Harbor__c| Assign|CustodianPicklist.topValue|
    
    
    
    
    ### Assign_EIN
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign EIN|
    |Connector|[Update_Account](#update_account)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Get_Account.Employer_Identification_Number_EIN__c| Assign|EINentry|
    
    
    
    
    ### Assign_Fund_List_Values
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Fund List Values|
    |Connector|[Create_Fund_List_0](#create_fund_list_0)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |customFundList.Name| Assign|fundName|
    |customFundList.Custodian__c| Assign|Get_Opp.Custodian__c|
    |customFundList.Account__c| Assign|Get_Opp.AccountId|
    |customFundList.Opportunity__c| Assign|Get_Opp.Id|
    |customFundList.Default_Investment__c| Assign|Default_Investment|
    |customFundList.QDIA_Schedule__c| Assign|QDIA_Schedule|
    |customFundList.Upfront_Fees__c| Assign|Upfront_Fees|
    |customFundList.List_of_Funds__c| Assign|List_of_Funds|
    
    
    
    
    ### Assign_Roth
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Roth|
    |Connector|[Is_This_Opp_an_Upgrade](#is_this_opp_an_upgrade)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Get_Opp.Roth__c| Assign|RothPicklist.middleValue|
    |Get_Opp.Safe_Harbor__c| Assign|RothPicklist.topValue|
    
    
    
    
    ### Assign_Safe_Harbor
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Safe Harbor|
    |Connector|[Roth_Contributions_Entered](#roth_contributions_entered)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Get_Opp.Safe_Harbor__c| Assign|SHPicklist.middleValue|
    |Get_Opp.Service_Option__c| Assign|SHPicklist.topValue|
    
    
    
    
    ### Assign_Upgrade_Effective_Date
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Upgrade Effective Date|
    |Connector|[Conversion_Type_Entered](#conversion_type_entered)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Get_Opp.Upgrade_Effective_Date__c| Assign|Upgrade_Effective_Date|
    
    
    
    
    ### Update_ESA_Fields
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Update ESA Fields|
    |Connector|[Custom_Fund_List](#custom_fund_list)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Get_Opp.Advisor_Fees_Paid_from_ESA__c| Assign|Advisor_Fees_Paid_from_ESA|
    |Get_Opp.Participant_Fees_Paid_from_ESA__c| Assign|Participant_Fees_Paid_from_ESA|
    |Get_Opp.Ubiquity_Admin_Fees_Paid_by_ESA__c| Assign|Ubiquity_Admin_Fees_Paid_by_ESA|
    
    
    
    
    ### Conversion_Type_Entered
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Conversion Type Entered?|
    |Default Connector|[Custom_k_Service_Option_Selected](#custom_k_service_option_selected)|
    |Default Connector Label|Yes|
    
    
    #### Rule NoConvert (No)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Conversion_Validation](#conversion_validation)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Opp.Plan_Type__c| Equal To|Conversion Plan|
    |2|Get_Opp.Conversion_Type__c| Is Null|YesCustom|
    
    
    
    
    ### Custodian_Entered
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Custodian Entered?|
    |Default Connector|[Safe_Harbor_Entered](#safe_harbor_entered)|
    |Default Connector Label|Yes|
    
    
    #### Rule NoCustodian (No)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Custodian_Validation](#custodian_validation)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Opp.Product_Type__c| Equal To|401(k)|
    |2|Get_Opp.Custodian__c| Is Null|✅|
    
    
    
    
    ### Custom_Fund_List
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Custom Fund List?|
    |Default Connector|[Get_Account](#get_account)|
    |Default Connector Label|No|
    
    
    #### Rule YesCustomList (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Custom_List](#get_custom_list)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Opp.Fund_List__c| Contains|Custom|
    
    
    
    
    ### Custom_k_Service_Option_Selected
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Custom(k) Service Option Selected|
    |Default Connector|[ESA_Null](#esa_null)|
    |Default Connector Label|No|
    
    
    #### Rule YesCustom (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Custom_k_Validation](#custom_k_validation)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Opp.Service_Option__c| Contains|Custom(k)|
    
    
    
    
    ### EIN
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|EIN?|
    |Default Connector|[Opportunity_Record_Type](#opportunity_record_type)|
    |Default Connector Label|Yes|
    
    
    #### Rule NoEIN (No)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Account_EIN_Missing](#account_ein_missing)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Account.Employer_Identification_Number_EIN__c| Is Null|✅|
    
    
    
    
    ### ESA_Null
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|ESA Null?|
    |Default Connector|[Custom_Fund_List](#custom_fund_list)|
    |Default Connector Label|No|
    
    
    #### Rule YesESANull (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Verify_ESA_Fields](#verify_esa_fields)|
    |Condition Logic|1 AND 2 AND (3 OR 4 OR 5)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Opp.Product_Type__c| Equal To|401(k)|
    |2|Get_Opp.LeadSourceDetail__c| Equal To|JPM|
    |3|Get_Opp.Advisor_Fees_Paid_from_ESA__c| Is Null|YesCustom|
    |4|Get_Opp.Participant_Fees_Paid_from_ESA__c| Is Null|YesCustom|
    |5|Get_Opp.Ubiquity_Admin_Fees_Paid_by_ESA__c| Is Null|YesCustom|
    
    
    
    
    ### Fund_List_Object_Included
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Fund List Object Included?|
    |Default Connector|[Custom_Fund_List_Creation](#custom_fund_list_creation)|
    |Default Connector Label|No|
    
    
    #### Rule YesFundList (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Account](#get_account)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|fundList.Id| Is Null|⬜|
    
    
    
    
    ### Is_This_Opp_an_Upgrade
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Is This Opp an Upgrade?|
    |Default Connector|[Conversion_Type_Entered](#conversion_type_entered)|
    |Default Connector Label|No|
    
    
    #### Rule YesUpgrade (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Upgrade_Validation](#upgrade_validation)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Opp.Product_Type__c| Equal To|Upgrade|
    |2|Get_Opp.Upgrade_Effective_Date__c| Is Null|YesCustom|
    
    
    
    
    ### LOI_Completed
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|LOI Completed?|
    |Default Connector|[LOI_Missing](#loi_missing)|
    |Default Connector Label|LOI Incomplete|
    
    
    #### Rule LOI_Complete (LOI Complete)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Account](#update_account)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|dsId.Id| Is Null|⬜|
    
    
    
    
    ### Opportunity_Record_Type
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Opportunity Record Type|
    |Default Connector|[Update_Account](#update_account)|
    |Default Connector Label|Standard|
    
    
    #### Rule UpgradeDowngrade (Upgrade/Downgrade)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_LOI](#get_loi)|
    |Condition Logic|1 AND (NOT 2)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Opp.RecordTypeId| Equal To|01237000000Xsu6AAC|
    |2|Get_Opp.Service_Option__c| Contains|Single(k)|
    
    
    
    
    ### Roth_Contributions_Entered
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Roth Contributions Entered?|
    |Default Connector|[Is_This_Opp_an_Upgrade](#is_this_opp_an_upgrade)|
    |Default Connector Label|Yes|
    
    
    #### Rule NoRoth (No)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Roth_Validation](#roth_validation)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Opp.Product_Type__c| Equal To|401(k)|
    |2|Get_Opp.Roth__c| Is Null|YesCustom|
    
    
    
    
    ### Safe_Harbor_Entered
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Safe Harbor Entered?|
    |Default Connector|[Roth_Contributions_Entered](#roth_contributions_entered)|
    |Default Connector Label|Yes|
    
    
    #### Rule NoSH (No)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[SH_Validation](#sh_validation)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Opp.Product_Type__c| Equal To|401(k)|
    |2|Get_Opp.Safe_Harbor__c| Is Null|✅|
    
    
    
    
    ### Zip_Code_Entered
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Zip Code Entered?|
    |Default Connector|[EIN](#ein)|
    |Default Connector Label|Yes|
    
    
    #### Rule NoZip (No)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Address_Update_Required](#address_update_required)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|zipVal| Equal To|✅|
    
    
    
    
    ### Create_Fund_List_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Label|Create Fund List|
    |Input Reference|customFundList|
    |Connector|[Get_Account](#get_account)|
    
    
    ### Get_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Account|
    |Label|Get Account|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Zip_Code_Entered](#zip_code_entered)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Opp.AccountId|
    
    
    
    
    ### Get_Custom_List
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Fund_List__c|
    |Label|Get Custom List|
    |Assign Null Values If No Records Found|✅|
    |Output Assignments|assignToReference: fundList.Id<br/>field: Id<br/>|
    |Connector|[Fund_List_Object_Included](#fund_list_object_included)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|RecordTypeId| Equal To|0121G000000RlBiQAK|
    |2|Opportunity__c| Equal To|Get_Opp.Id|
    
    
    
    
    ### Get_LOI
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|dsfs__DocuSign_Status__c|
    |Label|Get LOI|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|dsId|
    |Queried Fields|Id|
    |Connector|[LOI_Completed](#loi_completed)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|dsfs__Opportunity__c| Equal To|Get_Opp.Id|
    |2|dsfs__Envelope_Status__c| Equal To|Completed|
    
    
    
    
    ### Get_Opp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Opportunity|
    |Label|Get Opp|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Close_Opportunity](#close_opportunity)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Update_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Account|
    |Fault Connector|[Error](#error)|
    |Input Reference|[Get_Account](#get_account)|
    |Connector|[Update_Opp](#update_opp)|
    
    
    ### Update_Opp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Opp|
    |Fault Connector|[Error](#error)|
    |Input Reference|[Get_Opp](#get_opp)|
    |Connector|[Success](#success)|
    
    
    ### Account_EIN_Missing
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|Account EIN Missing|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|✅|
    |Show Footer|✅|
    |Show Header|✅|
    |Connector|[Assign_EIN](#assign_ein)|
    
    
    #### EINentry
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Default Value|Get_Account.Employer_Identification_Number_EIN__c|
    |Field Text|[EIN](#ein)|
    |Field Type| Input Field|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    ### Address_Update_Required
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|Address Update Required|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|✅|
    |Show Footer|✅|
    |Show Header|✅|
    |Connector|[Assign_Address](#assign_address)|
    
    
    #### ZipRequired
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p>Zip Code not complete on Account. Please update the address info below before closing this Opportunity.</p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Address
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Extension Name|flowruntime:address|
    |Field Type| Component Instance|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Store Output Automatically|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |City (input)|Get_Account.BillingCity|
    |Input Country Options (input)|Get_Account.BillingCountry|
    |Country (input)|Get_Account.BillingCountry|
    |Postal Code (input)|Get_Account.BillingPostalCode|
    |Input Province Options (input)|Get_Account.BillingStateCode|
    |Province (input)|Get_Account.BillingStateCode|
    |Street (input)|Get_Account.BillingStreet|
    
    
    
    
    ### Close_Opportunity
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|Close Opportunity|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|✅|
    |Show Footer|✅|
    |Show Header|✅|
    |Connector|[Assign_Closed_Opportunity_Variables](#assign_closed_opportunity_variables)|
    
    
    #### Opportunity_Name
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Default Value|Get_Opp.Name|
    |Field Text|Opportunity Name|
    |Field Type| Input Field|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Desired_Plan_Start_Date
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|Date|
    |Default Value|Get_Opp.Desired_Plan_Start_Date__c|
    |Field Text|Desired Plan Start Date|
    |Field Type| Input Field|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Product_Detail
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Extension Name|flowruntime:dependentPicklists|
    |Field Type| Component Instance|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Store Output Automatically|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Dependency Wrapper Api Name (input)|Opportunity|
    |Top Picklist Api Name (input)|Product_Type__c|
    |Middle Picklist Api Name (input)|Service_Option__c|
    |Top Label (input)|Product Type|
    |Top Required (input)|✅|
    |Top Value (input)|Get_Opp.Product_Type__c|
    |Middle Label (input)|Service Option|
    |Middle Value (input)|Get_Opp.Service_Option__c|
    |Middle Required (input)|✅|
    
    
    
    
    #### Source_Information
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Extension Name|flowruntime:dependentPicklists|
    |Field Type| Component Instance|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Store Output Automatically|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Dependency Wrapper Api Name (input)|Opportunity|
    |Top Picklist Api Name (input)|LeadSource|
    |Middle Picklist Api Name (input)|LeadSourceDetail__c|
    |Top Label (input)|Lead Source|
    |Top Required (input)|✅|
    |Top Value (input)|Get_Opp.LeadSource|
    |Middle Label (input)|Lead Source Detail|
    |Middle Required (input)|✅|
    |Middle Value (input)|Get_Opp.LeadSourceDetail__c|
    
    
    
    
    #### Comments
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Default Value|{!Get_Opp.Opportunity_Notes__c}|
    |Field Text|Comments & Notes|
    |Field Type| Large Text Area|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    ### Conversion_Validation
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|Conversion Validation|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|✅|
    |Show Footer|✅|
    |Show Header|✅|
    |Connector|[Assign_Conversion_Type](#assign_conversion_type)|
    
    
    #### Conversion_Type
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|ConversionType|
    |Field Text|Conversion Type|
    |Field Type| Dropdown Box|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    ### Custodian_Validation
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|Custodian Validation|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|✅|
    |Show Footer|✅|
    |Show Header|✅|
    |Connector|[Assign_Custodian](#assign_custodian)|
    
    
    #### CustodianPicklist
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Extension Name|flowruntime:dependentPicklists|
    |Field Type| Component Instance|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Store Output Automatically|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Dependency Wrapper Api Name (input)|Opportunity|
    |Top Picklist Api Name (input)|Service_Option__c|
    |Middle Picklist Api Name (input)|Custodian__c|
    |Top Label (input)|Service Option|
    |Top Required (input)|✅|
    |Top Value (input)|Get_Opp.Service_Option__c|
    |Middle Label (input)|Custodian|
    |Middle Required (input)|✅|
    |Middle Value (input)|Get_Opp.Custodian__c|
    
    
    
    
    ### Custom_Fund_List_Creation
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|Custom Fund List|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|✅|
    |Show Footer|✅|
    |Show Header|✅|
    |Connector|[Assign_Fund_List_Values](#assign_fund_list_values)|
    
    
    #### Default_Investment
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|Default Investment|
    |Field Type| Large Text Area|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Upfront_Fees
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|Upfront Fees|
    |Field Type| Large Text Area|
    |Is Required|⬜|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### QDIA_Schedule
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|QDIA Schedule|
    |Field Type| Large Text Area|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### List_of_Funds
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|List of Funds|
    |Field Type| Large Text Area|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    ### Custom_k_Validation
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|Custom(k) Validation|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|✅|
    |Show Footer|✅|
    |Show Header|✅|
    |Connector|[Add_Fund_List](#add_fund_list)|
    
    
    #### Fund_List
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|- No_Fund_List<br/>- FundListSet<br/>|
    |Default Selected Choice Reference|No_Fund_List|
    |Field Text|Fund List|
    |Field Type| Dropdown Box|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    ### Error
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|[Error](#error)|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|✅|
    |Show Footer|✅|
    |Show Header|✅|
    
    
    #### FaultMessage
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p>{!$Flow.FaultMessage}</p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    ### LOI_Missing
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|LOI Missing|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|✅|
    |Show Footer|✅|
    |Show Header|✅|
    
    
    #### LOIMISSING
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p>Upgrade Opportunities require a signed LOI before Closing. Please use the "Send with DocuSign" button on the Opportunity before moving forward.</p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    ### Roth_Validation
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|Roth Validation|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|✅|
    |Show Footer|✅|
    |Show Header|✅|
    |Connector|[Assign_Roth](#assign_roth)|
    
    
    #### RothPicklist
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Extension Name|flowruntime:dependentPicklists|
    |Field Type| Component Instance|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Store Output Automatically|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Dependency Wrapper Api Name (input)|Opportunity|
    |Top Picklist Api Name (input)|Service_Option__c|
    |Middle Picklist Api Name (input)|Roth__c|
    |Top Label (input)|Service Option|
    |Top Required (input)|✅|
    |Top Value (input)|Get_Opp.Service_Option__c|
    |Middle Label (input)|Roth Contributions|
    |Middle Required (input)|✅|
    |Middle Value (input)|Get_Opp.Roth__c|
    
    
    
    
    ### SH_Validation
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|Safe Harbor Validation|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|✅|
    |Show Footer|✅|
    |Show Header|✅|
    |Connector|[Assign_Safe_Harbor](#assign_safe_harbor)|
    
    
    #### SHPicklist
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Extension Name|flowruntime:dependentPicklists|
    |Field Type| Component Instance|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Store Output Automatically|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Dependency Wrapper Api Name (input)|Opportunity|
    |Top Picklist Api Name (input)|Service_Option__c|
    |Middle Picklist Api Name (input)|Safe_Harbor__c|
    |Top Label (input)|Service Option|
    |Top Required (input)|✅|
    |Top Value (input)|Get_Opp.Service_Option__c|
    |Middle Label (input)|Safe Harbor|
    |Middle Required (input)|✅|
    |Middle Value (input)|Get_Opp.Safe_Harbor__c|
    
    
    
    
    ### Success
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|[Success](#success)|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|✅|
    |Show Footer|✅|
    |Show Header|✅|
    
    
    #### OpportunityClosed
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p>Opportunity Closed Successfully</p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    ### Upgrade_Validation
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|Upgrade Validation|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|✅|
    |Show Footer|✅|
    |Show Header|✅|
    |Connector|[Assign_Upgrade_Effective_Date](#assign_upgrade_effective_date)|
    
    
    #### Upgrade_Effective_Date
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|Date|
    |Default Value|Get_Opp.Upgrade_Effective_Date__c|
    |Field Text|Upgrade Effective Date|
    |Field Type| Input Field|
    |Is Required|⬜|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    ### Verify_ESA_Fields
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|Verify ESA Fields|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|✅|
    |Show Footer|✅|
    |Show Header|✅|
    |Connector|[Update_ESA_Fields](#update_esa_fields)|
    
    
    #### Advisor_Fees_Paid_from_ESA
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|- Please_Select<br/>- AdvisorFeesPaidfromESA<br/>|
    |Default Selected Choice Reference|Please_Select|
    |Field Text|Advisor Fees Paid from ESA|
    |Field Type| Dropdown Box|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Participant_Fees_Paid_from_ESA
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|- Please_Select<br/>- AdvisorFeesPaidfromESA<br/>|
    |Default Selected Choice Reference|Please_Select|
    |Field Text|Participant Fees Paid from ESA|
    |Field Type| Dropdown Box|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Ubiquity_Admin_Fees_Paid_by_ESA
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|- Please_Select<br/>- AdvisorFeesPaidfromESA<br/>|
    |Default Selected Choice Reference|Please_Select|
    |Field Text|Ubiquity Admin Fees Paid by ESA|
    |Field Type| Dropdown Box|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

