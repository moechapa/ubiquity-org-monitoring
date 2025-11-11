# Plan_Button_Downgrade_Plan history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Plan_Button_Downgrade_Plan-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Screen Flow</b>"]):::startClass
    click START "#general-information" "1637652057"
    
    Is_there_an_employee_referrer_0{"🔀 <em></em><br/>Is there an employee referrer?"}:::decisions
    click Is_there_an_employee_referrer_0 "#is_there_an_employee_referrer_0" "562868200"
    
    Is_there_an_employee_referrer_0_0{"🔀 <em></em><br/>Is there an employee referrer?"}:::decisions
    click Is_there_an_employee_referrer_0_0 "#is_there_an_employee_referrer_0_0" "1015706497"
    
    Is_there_an_Opp_associated_with_this_Plan{"🔀 <em></em><br/>Is there an Opp associated with this Plan?"}:::decisions
    click Is_there_an_Opp_associated_with_this_Plan "#is_there_an_opp_associated_with_this_plan" "4141590729"
    
    Product_Change_or_Downgrade{"🔀 <em></em><br/>Product Change or Downgrade"}:::decisions
    click Product_Change_or_Downgrade "#product_change_or_downgrade" "1689544873"
    
    Service_Option_Validation{"🔀 <em></em><br/>Service Option Validation"}:::decisions
    click Service_Option_Validation "#service_option_validation" "1416612662"
    
    Simply_Unbundled{"🔀 <em></em><br/>Simply Unbundled?"}:::decisions
    click Simply_Unbundled "#simply_unbundled" "2505683783"
    
    Single_k_Plus{"🔀 <em></em><br/>Single(k) Plus?"}:::decisions
    click Single_k_Plus "#single_k_plus" "3341320192"
    
    Create_Case_for_Onboarding[("➕ <em></em><br/>Create Case for Onboarding")]:::recordCreates
    click Create_Case_for_Onboarding "#create_case_for_onboarding" "2338106883"
    
    Create_Case_for_Onboarding_0[("➕ <em></em><br/>Create Case for Onboarding")]:::recordCreates
    click Create_Case_for_Onboarding_0 "#create_case_for_onboarding_0" "4201552065"
    
    Create_Opp_0[("➕ <em></em><br/>Create Opp")]:::recordCreates
    click Create_Opp_0 "#create_opp_0" "661945449"
    
    Create_Opp_0_0[("➕ <em></em><br/>Create Opp")]:::recordCreates
    click Create_Opp_0_0 "#create_opp_0_0" "897309227"
    
    Create_Referrer_0[("➕ <em></em><br/>Create Referrer")]:::recordCreates
    click Create_Referrer_0 "#create_referrer_0" "4045087245"
    
    Create_Referrer_0_0[("➕ <em></em><br/>Create Referrer")]:::recordCreates
    click Create_Referrer_0_0 "#create_referrer_0_0" "119017577"
    
    Create_Transitions_Case[("➕ <em></em><br/>Create Transitions Case")]:::recordCreates
    click Create_Transitions_Case "#create_transitions_case" "3053688257"
    
    Get_Account[("🔍 <em></em><br/>Get Account")]:::recordLookups
    click Get_Account "#get_account" "3401011096"
    
    Get_Opp[("🔍 <em></em><br/>Get Opp")]:::recordLookups
    click Get_Opp "#get_opp" "2415414358"
    
    Get_Opp_Owner[("🔍 <em></em><br/>Get Opp Owner")]:::recordLookups
    click Get_Opp_Owner "#get_opp_owner" "119314561"
    
    Get_Plan[("🔍 <em></em><br/>Get Plan")]:::recordLookups
    click Get_Plan "#get_plan" "2566862321"
    
    Get_User[("🔍 <em></em><br/>Get User")]:::recordLookups
    click Get_User "#get_user" "3892203511"
    
    Create_New_Upgrade_Opportunity(["💻 <em></em><br/>Create New Upgrade Opportunity"]):::screens
    click Create_New_Upgrade_Opportunity "#create_new_upgrade_opportunity" "2203416847"
    
    Service_Option_Required(["💻 <em></em><br/>Service Option Required"]):::screens
    click Service_Option_Required "#service_option_required" "1791630776"
    
    Upgrade_Successfully_Created(["💻 <em></em><br/>Upgrade Successfully Created"]):::screens
    click Upgrade_Successfully_Created "#upgrade_successfully_created" "2272263536"
    
    Upgrade_Successfully_Created_0(["💻 <em></em><br/>Upgrade Successfully Created"]):::screens
    click Upgrade_Successfully_Created_0 "#upgrade_successfully_created_0" "1186746916"
    
    Is_there_an_employee_referrer_0 --> |"Yes"| Create_Referrer_0
    Is_there_an_employee_referrer_0 --> |"No"| Simply_Unbundled
    Is_there_an_employee_referrer_0_0 --> |"Yes"| Create_Referrer_0_0
    Is_there_an_employee_referrer_0_0 --> |"No"| Upgrade_Successfully_Created_0
    Is_there_an_Opp_associated_with_this_Plan --> |"Yes"| Get_Opp_Owner
    Is_there_an_Opp_associated_with_this_Plan --> |"No"| Create_New_Upgrade_Opportunity
    Product_Change_or_Downgrade --> |"Product Change"| Create_Opp_0_0
    Product_Change_or_Downgrade --> |"Downgrade"| Create_Opp_0
    Service_Option_Validation --> |"No Service Option Selected"| Service_Option_Required
    Service_Option_Validation --> |"Default Outcome"| Product_Change_or_Downgrade
    Simply_Unbundled --> |"Yes, Unbundled"| Create_Case_for_Onboarding_0
    Simply_Unbundled --> |"Default Outcome"| Upgrade_Successfully_Created
    Single_k_Plus --> |"Single(k) Plus Opp"| Create_Case_for_Onboarding
    Single_k_Plus --> |"Default Outcome"| END_Single_k_Plus
    Create_Case_for_Onboarding --> END_Create_Case_for_Onboarding
    Create_Case_for_Onboarding_0 --> Upgrade_Successfully_Created
    Create_Opp_0 --> Is_there_an_employee_referrer_0
    Create_Opp_0_0 --> Is_there_an_employee_referrer_0_0
    Create_Referrer_0 --> Simply_Unbundled
    Create_Referrer_0_0 --> Upgrade_Successfully_Created_0
    Create_Transitions_Case --> Single_k_Plus
    Get_Account --> Get_Opp
    Get_Opp --> Is_there_an_Opp_associated_with_this_Plan
    Get_Opp_Owner --> Create_New_Upgrade_Opportunity
    Get_Plan --> Get_Account
    Get_User --> Get_Plan
    Create_New_Upgrade_Opportunity --> Service_Option_Validation
    Service_Option_Required --> END_Service_Option_Required
    Upgrade_Successfully_Created --> END_Upgrade_Successfully_Created
    Upgrade_Successfully_Created_0 --> Create_Transitions_Case
    START -->  Get_User
    END_Single_k_Plus(( END )):::endClass
    END_Create_Case_for_Onboarding(( END )):::endClass
    END_Service_Option_Required(( END )):::endClass
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
    |Label|Plan | Button | Downgrade Plan|
    |Status|Active|
    |Environments|Default|
    |Interview Label|Plan | Button | Downgrade Plan {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_User](#get_user)|
    |Next Node|[Get_User](#get_user)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |getOpp|SObject|⬜|✅|✅|Opportunity|<!-- -->|
    |ownerId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    |recordId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    |userId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |CloseDate|Date|TODAY()+90|<!-- -->|
    
    
    ## Text Templates
    
    |Name|Text|Description|
    |:-- |:-- |:--  |
    |singleKPlusDesc|<p>A new product change Single(k) Plus opportunity has been created for {!Get_Account.Name}.</p>|<!-- -->|
    |transitionCaseDescription|<p>A new single(k) product change opportunity was created for {!Get_Account.Name}. </p>|<!-- -->|
    |unbundledDesc|<p><span style="background-color: rgb(255, 255, 255); color: rgb(68, 68, 68);">A new downgrade Simply Unbundled opportunity has been created for {!Get_Account.Name}.</span></p>|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Is_there_an_employee_referrer_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Is there an employee referrer?|
    |Default Connector|[Simply_Unbundled](#simply_unbundled)|
    |Default Connector Label|No|
    
    
    #### Rule YesRef_0 (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Create_Referrer_0](#create_referrer_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|EmployeeReferrer.recordId| Is Null|⬜|
    
    
    
    
    ### Is_there_an_employee_referrer_0_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Is there an employee referrer?|
    |Default Connector|[Upgrade_Successfully_Created_0](#upgrade_successfully_created_0)|
    |Default Connector Label|No|
    
    
    #### Rule Yes1 (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Create_Referrer_0_0](#create_referrer_0_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|EmployeeReferrer.recordId| Is Null|⬜|
    
    
    
    
    ### Is_there_an_Opp_associated_with_this_Plan
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Is there an Opp associated with this Plan?|
    |Default Connector|[Create_New_Upgrade_Opportunity](#create_new_upgrade_opportunity)|
    |Default Connector Label|No|
    
    
    #### Rule YesOpp (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Opp_Owner](#get_opp_owner)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|getOpp.Id| Is Null|⬜|
    
    
    
    
    ### Product_Change_or_Downgrade
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Product Change or Downgrade|
    |Description|If switching to single(k) or single(k) plus - Product Switch, otherwise it is a Downgrade.|
    |Default Connector|[Create_Opp_0](#create_opp_0)|
    |Default Connector Label|Downgrade|
    
    
    #### Rule Product_Change (Product Change)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Create_Opp_0_0](#create_opp_0_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Type| Equal To|productChange|
    
    
    
    
    ### Service_Option_Validation
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Service Option Validation|
    |Default Connector|[Product_Change_or_Downgrade](#product_change_or_downgrade)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule No_Service_Option_Selected (No Service Option Selected)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Service_Option_Required](#service_option_required)|
    |Condition Logic|(1 OR 2) and 3|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Service_Option_Screen| Is Null|✅|
    |2|Service_Option_Screen| Equal To|None|
    |3|Type| Not Equal To|productChange|
    
    
    
    
    ### Simply_Unbundled
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Simply Unbundled?|
    |Default Connector|[Upgrade_Successfully_Created](#upgrade_successfully_created)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes_Unbundled (Yes, Unbundled)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Create_Case_for_Onboarding_0](#create_case_for_onboarding_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Service_Option_Screen| Equal To|Simply_Retirement_Unbundled|
    
    
    
    
    ### Single_k_Plus
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Single(k) Plus?|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Single_k_Plus_Opp (Single(k) Plus Opp)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Create_Case_for_Onboarding](#create_case_for_onboarding)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Single_k_Service_Option| Equal To|singleKPlus|
    
    
    
    
    ### Create_Case_for_Onboarding
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Create Case for Onboarding|
    |Store Output Automatically|✅|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|Get_Account.Id|
    |ContactId|Contact.recordId|
    |Department__c|Client Onboarding|
    |Description|singleKPlusDesc|
    |OwnerId|00G37000000PDff|
    |Plan__c|Get_Plan.Id|
    |RecordTypeId|01237000000Xu9bAAC|
    |Subject|New Single(K) Plus Product Change Opportunity Created|
    
    
    
    
    ### Create_Case_for_Onboarding_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Create Case for Onboarding|
    |Store Output Automatically|✅|
    |Connector|[Upgrade_Successfully_Created](#upgrade_successfully_created)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|Get_Account.Id|
    |ContactId|Contact.recordId|
    |Department__c|Client Onboarding|
    |Description|unbundledDesc|
    |OwnerId|00G37000000PDff|
    |Plan__c|Get_Plan.Id|
    |RecordTypeId|01237000000Xu9bAAC|
    |Subject|New Simply Unbundled Opportunity Created|
    
    
    
    
    ### Create_Opp_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Opportunity|
    |Label|Create Opp|
    |Store Output Automatically|✅|
    |Connector|[Is_there_an_employee_referrer_0](#is_there_an_employee_referrer_0)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|Get_Plan.Account__c|
    |Associated_Contact_Role__c|Plan Sponsor & Trustee|
    |Associated_Contact__c|Contact.recordId|
    |CloseDate|CloseDate|
    |Custodian__c|getOpp.Custodian__c|
    |Employee_Referrer__c|userId|
    |LeadSource|Direct Referral|
    |LeadSourceDetail__c|Ubiquity Employee|
    |Name|{!Get_Plan.Account__r.Name}-Downgrade|
    |Opportunity_Notes__c|Notes|
    |OwnerId|$User.Id|
    |Plan_Type__c|Downgrade|
    |Plan__c|Get_Plan.Id|
    |Previous_Service_Option__c|Get_Plan.Service_Option__c|
    |Product_Type__c|Downgrade|
    |RecordTypeId|0121G000000RlMbQAK|
    |Service_Option__c|Service_Option_Screen|
    |StageName|Quote Sent|
    
    
    
    
    ### Create_Opp_0_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Opportunity|
    |Label|Create Opp|
    |Store Output Automatically|✅|
    |Connector|[Is_there_an_employee_referrer_0_0](#is_there_an_employee_referrer_0_0)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|Get_Plan.Account__c|
    |Associated_Contact_Role__c|Plan Sponsor & Trustee|
    |Associated_Contact__c|Contact.recordId|
    |CloseDate|CloseDate|
    |Custodian__c|getOpp.Custodian__c|
    |Employee_Referrer__c|userId|
    |LeadSource|Direct Referral|
    |LeadSourceDetail__c|Ubiquity Employee|
    |Name|{!Get_Plan.Account__r.Name}-Product Change|
    |Opportunity_Notes__c|Notes|
    |OwnerId|$User.Id|
    |Plan_Type__c|Product Changes|
    |Plan_Upgrade__c|✅|
    |Plan__c|Get_Plan.Id|
    |Previous_Service_Option__c|Get_Plan.Service_Option__c|
    |Product_Type__c|Product Change|
    |RecordTypeId|0121G000000RlMbQAK|
    |Service_Option__c|Service_Option_Screen|
    |StageName|Quote Sent|
    
    
    
    
    ### Create_Referrer_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Associated_Contact__c|
    |Label|Create Referrer|
    |Store Output Automatically|✅|
    |Connector|[Simply_Unbundled](#simply_unbundled)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Contact_Role__c|Referrer|
    |Contact__c|EmployeeReferrer.recordId|
    |Opportunity__c|[Create_Opp_0](#create_opp_0)|
    
    
    
    
    ### Create_Referrer_0_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Associated_Contact__c|
    |Label|Create Referrer|
    |Store Output Automatically|✅|
    |Connector|[Upgrade_Successfully_Created_0](#upgrade_successfully_created_0)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Contact_Role__c|Referrer|
    |Contact__c|EmployeeReferrer.recordId|
    |Opportunity__c|[Create_Opp_0](#create_opp_0)|
    
    
    
    
    ### Create_Transitions_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Create Transitions Case|
    |Store Output Automatically|✅|
    |Connector|[Single_k_Plus](#single_k_plus)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|Get_Account.Id|
    |ContactId|Contact.recordId|
    |Department__c|Transitions|
    |Description|transitionCaseDescription|
    |OwnerId|00500000006xUkf|
    |Plan__c|Get_Plan.Id|
    |RecordTypeId|01237000000XwY4AAK|
    |Subject|New Single(k) Product Change Opportunity Created|
    
    
    
    
    ### Get_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Account|
    |Label|Get Account|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Get_Opp](#get_opp)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Plan.Account__c|
    
    
    
    
    ### Get_Opp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Opportunity|
    |Label|Get Opp|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|getOpp|
    |Queried Fields|- Id<br/>- OwnerId<br/>- Custodian__c<br/>|
    |Connector|[Is_there_an_Opp_associated_with_this_Plan](#is_there_an_opp_associated_with_this_plan)|
    
    
    #### Filters (logic: **1 AND (2 OR 3)**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|AccountId| Equal To|Get_Plan.Account__c|
    |2|Product_Type__c| Contains|Get_Plan.Product_Type1__c|
    |3|Product_Type__c| Contains|Upgrade|
    
    
    
    
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
    |1|Id| Equal To|getOpp.OwnerId|
    
    
    
    
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
    
    
    
    
    ### Create_New_Upgrade_Opportunity
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|Create New Upgrade Opportunity|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|✅|
    |Show Footer|✅|
    |Show Header|⬜|
    |Connector|[Service_Option_Validation](#service_option_validation)|
    
    
    #### title
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p style="text-align: center;"><span style="font-size: 20px;">Downgrade Plan</span></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### EmployeeReferrer
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Extension Name|flowruntime:lookup|
    |Field Type| Component Instance|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Store Output Automatically|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
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
    |Label (input)|Company Contact|
    |Object Api Name (input)|Opportunity|
    |Required (input)|✅|
    
    
    
    
    #### Type
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|- Downgrade<br/>- productChange<br/>|
    |Field Text|Type|
    |Field Type| Dropdown Box|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Service_Option_Screen
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|- None<br/>- SaverK<br/>- CustomK<br/>- ReserveK<br/>- Simply_Retirement_Bundled<br/>- Simply_Retirement_Unbundled<br/>- RKO<br/>|
    |Field Text|Service Option|
    |Field Type| Dropdown Box|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Type<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;elementReference: Downgrade<br/>|
    
    
    
    
    #### Single_k_Service_Option
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|- singleK<br/>- singleKPlus<br/>- megaRoth<br/>|
    |Field Text|Single(k) Service Option|
    |Field Type| Dropdown Box|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Type<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;elementReference: productChange<br/>|
    
    
    
    
    #### Notes
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|Notes|
    |Field Type| Large Text Area|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    ### Service_Option_Required
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|Service Option Required|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Show Footer|✅|
    |Show Header|⬜|
    
    
    #### chooseServiceOption
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p style="text-align: center;"><strong style="font-size: 16px;">A service option is required, please click the Previous button to return to the last screen and select a service option.</strong></p>|
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
    |Show Header|⬜|
    
    
    #### Success
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p style="text-align: center;"><strong>The Downgrade Opportunity has been created successfully and assigned to you.</strong></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    ### Upgrade_Successfully_Created_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|Upgrade Successfully Created|
    |Allow Back|⬜|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Show Footer|✅|
    |Show Header|⬜|
    |Connector|[Create_Transitions_Case](#create_transitions_case)|
    
    
    #### Success_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p style="text-align: center;"><strong>The Product Change Opportunity has been created successfully and assigned to you.</strong></p><p><br></p><p><br></p><p style="text-align: center;"><strong style="color: rgb(30, 17, 215); font-size: 18px;">Please tell the client to set up a new Single(k) account in PRKS.</strong></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

