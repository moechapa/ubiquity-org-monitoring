# Opportunity_Button_New_OPD_Flow history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Opportunity_Button_New_OPD_Flow-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Screen Flow</b>"]):::startClass
    click START "#general-information" "3867802888"
    
    Go_to_Opp("⚡ <em></em><br/>Go to Opp"):::actionCalls
    click Go_to_Opp "#go_to_opp" "3782740475"
    
    Assign_Min_and_Max_Rates[\"🟰 <em></em><br/>Assign Min and Max Rates"/]:::assignments
    click Assign_Min_and_Max_Rates "#assign_min_and_max_rates" "1850870925"
    
    Copy_1_of_Validation_Error_Message[\"🟰 <em></em><br/>Copy 1 of Validation Error Message"/]:::assignments
    click Copy_1_of_Validation_Error_Message "#copy_1_of_validation_error_message" "3281983139"
    
    Validation_Error_Message[\"🟰 <em></em><br/>Validation Error Message"/]:::assignments
    click Validation_Error_Message "#validation_error_message" "551312391"
    
    Create_OPD[("➕ <em></em><br/>Create OPD")]:::recordCreates
    click Create_OPD "#create_opd" "2366820839"
    
    Get_Opp[("🔍 <em></em><br/>Get Opp")]:::recordLookups
    click Get_Opp "#get_opp" "2266107189"
    
    Update_Num_of_Employees_on_Account[("🛠️ <em></em><br/>Update Num of Employees on Account")]:::recordUpdates
    click Update_Num_of_Employees_on_Account "#update_num_of_employees_on_account" "1650098152"
    
    Update_Opp[("🛠️ <em></em><br/>Update Opp")]:::recordUpdates
    click Update_Opp "#update_opp" "4059895610"
    
    New_OPD(["💻 <em></em><br/>New OPD"]):::screens
    click New_OPD "#new_opd" "3082012570"
    
    Go_to_Opp --> END_Go_to_Opp
    Assign_Min_and_Max_Rates --> Create_OPD
    Copy_1_of_Validation_Error_Message --> New_OPD
    Validation_Error_Message --> New_OPD
    Create_OPD --> Go_to_Opp
    Create_OPD -. Fault .->Validation_Error_Message
    Get_Opp --> New_OPD
    Update_Num_of_Employees_on_Account --> Update_Opp
    Update_Opp --> Assign_Min_and_Max_Rates
    Update_Opp -. Fault .->Copy_1_of_Validation_Error_Message
    New_OPD --> Update_Num_of_Employees_on_Account
    START -->  Get_Opp
    END_Go_to_Opp(( END )):::endClass
    
    
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
    |Label|Opportunity | Button | New OPD Flow|
    |Status|Active|
    |Environments|Default|
    |Interview Label|Opportunity | Button | New OPD Flow {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Opp](#get_opp)|
    |Next Node|[Get_Opp](#get_opp)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |hitValidationError|Boolean|⬜|✅|⬜|<!-- -->|<!-- -->|
    |proposalMaxRate|Number|⬜|✅|⬜|<!-- -->|<!-- -->|
    |proposalMinRate|Number|⬜|✅|⬜|<!-- -->|<!-- -->|
    |recordId|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |initDefRate|String|IF({!Escalation_Type} = 'Flat' , {!Flat_Deferral_Rate}, {!Initial_Deferral_Rate})|<!-- -->|
    |maxDefRate|String|IF({!Escalation_Type} = 'Flat' , {!Flat_Deferral_Rate}, {!Maximum_Deferral_Rate})|<!-- -->|
    |proposalEscalatingType|String|CASE(<br/>    {!Escalation_Type},<br/>    "Flat", "FLAT", <br/>    "Auto-Escalate", "ESCALATING", <br/>    "", "None",<br/>    "None"<br/>)|<!-- -->|
    |proposalMaxRateFormula|Number|VALUE({!maxDefRate})|<!-- -->|
    |proposalMinRateFormula|Number|VALUE({!initDefRate})|<!-- -->|
    |validationMessage|String|IF(FIND("FIELD_CUSTOM_VALIDATION_EXCEPTION:", {!$Flow.FaultMessage}) != 0,<br/>(MID({!$Flow.FaultMessage},<br/>FIND("FIELD_CUSTOM_VALIDATION_EXCEPTION:", {!$Flow.FaultMessage})+34,<br/>FIND("You can look up ExceptionCode values",{!$Flow.FaultMessage})-34-FIND("FIELD_CUSTOM_VALIDATION_EXCEPTION:", {!$Flow.FaultMessage}))),<br/>{!$Flow.FaultMessage})|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Go_to_Opp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Go to Opp|
    |Action Type|Component|
    |Action Name|ecflc:flowIdRedirect|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|ecflc:flowIdRedirect|
    |Offset|0|
    |Store Output Automatically|✅|
    |Record Id (input)|Get_Opp.Id|
    
    
    ### Assign_Min_and_Max_Rates
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Min and Max Rates|
    |Connector|[Create_OPD](#create_opd)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |proposalMinRate| Assign|proposalMinRateFormula|
    |proposalMaxRate| Assign|proposalMaxRateFormula|
    
    
    
    
    ### Copy_1_of_Validation_Error_Message
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Copy 1 of Validation Error Message|
    |Connector|isGoTo: true<br/>targetReference: New_OPD<br/>|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |hitValidationError| Assign|✅|
    
    
    
    
    ### Validation_Error_Message
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Validation Error Message|
    |Connector|isGoTo: true<br/>targetReference: New_OPD<br/>|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |hitValidationError| Assign|✅|
    
    
    
    
    ### Create_OPD
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Proposal__c|
    |Label|Create OPD|
    |Fault Connector|[Validation_Error_Message](#validation_error_message)|
    |Store Output Automatically|✅|
    |Connector|[Go_to_Opp](#go_to_opp)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Any_Current_Legal_Proceedings__c|Does_the_Company_have_any_current_legal_proceedings|
    |Auto_Deferral_Type__c|proposalEscalatingType|
    |Auto_Enrollment__c|Get_Opp.AutoEnrollment__c|
    |Brokerage_Accounts_PCRA__c|Get_Opp.Brokerage_Accounts_PCRA__c|
    |Controlled_Affiliated_Group_Company_Name__c|If_Yes_Provide_the_Company_Name|
    |Current_Recent_SIMPLE_Plan__c|Current_Recent_SIMPLE_Plan|
    |Current_Sponsor_of_Other_Plans__c|Do_You_Currently_Sponsor_any_other_retirement_Plans|
    |Custodian__c|Get_Opp.Custodian__c|
    |Discretionary_Match__c|Get_Opp.Discretionary_Match__c|
    |Eligibility_Age__c|Get_Opp.Eligibility_Age__c|
    |Fund_List__c|Get_Opp.Fund_List__c|
    |Government_Entity__c|Government_Entity|
    |Grandfather_Date__c|Grandfather_Date|
    |Hardships__c|Get_Opp.Hardships__c|
    |Include_Company_in_UBQT_Plan__c|Include_Company_in_UBQT_Plan|
    |Legal_Proceeding_Explanation__c|Legal_Proceeding_Explanation|
    |Loans__c|Get_Opp.Loans__c|
    |Longer_than_12_Months_with_Zero_Assets__c|Longer_than_12_Months_with_Zero_Assets|
    |Max_Auto_Deferral_Percentage__c|proposalMaxRate|
    |Min_Auto_Deferral_Percentage__c|proposalMinRate|
    |OPD_Notes__c|Get_Opp.Opportunity_Notes__c|
    |OPD_Status__c|Created|
    |Opportunity__c|Get_Opp.Id|
    |Original_Effective_Date__c|Get_Opp.Previous_Plan_Effective_Date__c|
    |Part_of_Controlled_or_Affiliated_Group__c|Part_of_Controlled_or_Affiliated_Group|
    |Plan_Effective_Date__c|Get_Opp.Desired_Plan_Start_Date__c|
    |Plan_Eligibility__c|Get_Opp.Plan_Eligibility__c|
    |Plan_Entry_Frequency__c|Get_Opp.Plan_Entry_Frequency__c|
    |Plan_Type__c|Get_Opp.Plan_Type__c|
    |Previously_Sponsored_401_k_Plan__c|Previously_Sponsored_401_k_Plan|
    |Product_Type__c|Get_Opp.Product_Type__c|
    |Profit_Sharing_Match_Vesting_Schedule__c|Get_Opp.Profit_Sharing_Match_Vesting_Schedule__c|
    |Profit_Sharing__c|Get_Opp.Profit_Sharing__c|
    |Publicly_Traded__c|Publicly_Traded|
    |QACA_Safe_Harbor_Vesting_Schedule__c|Get_Opp.QACA_Safe_Harbor_Vesting_Schedule__c|
    |RecordTypeId|0121G000000AjeLQAS|
    |Restatement_Date__c|Get_Opp.Restatement_Date__c|
    |Roth_Contributions__c|Get_Opp.Roth__c|
    |Safe_Harbor_Match_Determination_Period__c|Get_Opp.Safe_Harbor_Match_Determination_Period__c|
    |Safe_Harbor__c|Get_Opp.Safe_Harbor__c|
    |Service_Option__c|Get_Opp.Service_Option__c|
    |Type_of_Current_Legal_Proceedings__c|If_Yes_which_of_the_following|
    |X3_38__c|Get_Opp.X3_38__c|
    
    
    
    
    ### Get_Opp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Opportunity|
    |Label|Get Opp|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[New_OPD](#new_opd)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Update_Num_of_Employees_on_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Account|
    |Label|Update Num of Employees on Account|
    |Connector|[Update_Opp](#update_opp)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Opp.AccountId|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Business_Start_Date__c|Business_Start_Date|
    |NumberOfEmployees|Number_of_Employees|
    
    
    
    
    ### Update_Opp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Opportunity|
    |Label|Update Opp|
    |Fault Connector|[Copy_1_of_Validation_Error_Message](#copy_1_of_validation_error_message)|
    |Connector|[Assign_Min_and_Max_Rates](#assign_min_and_max_rates)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Opp.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AutoEnrollment__c|Get_Opp.AutoEnrollment__c|
    |Auto_Enroll_Escalation_Type__c|Escalation_Type|
    |Brokerage_Accounts_PCRA__c|Get_Opp.Brokerage_Accounts_PCRA__c|
    |Conversion_Type__c|Get_Opp.Conversion_Type__c|
    |Custodian__c|Get_Opp.Custodian__c|
    |Desired_Plan_Start_Date__c|Get_Opp.Desired_Plan_Start_Date__c|
    |Discretionary_Match__c|Get_Opp.Discretionary_Match__c|
    |Eligibility_Age__c|Get_Opp.Eligibility_Age__c|
    |Fund_List__c|Get_Opp.Fund_List__c|
    |Hardships__c|Get_Opp.Hardships__c|
    |Initial_Deferral_Rate__c|initDefRate|
    |Loans__c|Get_Opp.Loans__c|
    |Maximum_Deferral_Rate__c|maxDefRate|
    |Opportunity_Notes__c|Get_Opp.Opportunity_Notes__c|
    |Plan_Eligibility__c|Get_Opp.Plan_Eligibility__c|
    |Plan_Entry_Frequency__c|Get_Opp.Plan_Entry_Frequency__c|
    |Plan_Type__c|Get_Opp.Plan_Type__c|
    |Previous_Plan_Effective_Date__c|Get_Opp.Previous_Plan_Effective_Date__c|
    |Product_Type__c|Get_Opp.Product_Type__c|
    |Profit_Sharing_Match_Vesting_Schedule__c|Get_Opp.Profit_Sharing_Match_Vesting_Schedule__c|
    |Profit_Sharing__c|Get_Opp.Profit_Sharing__c|
    |QACA_Safe_Harbor_Vesting_Schedule__c|Get_Opp.QACA_Safe_Harbor_Vesting_Schedule__c|
    |Reset_Products__c|✅|
    |Roth__c|Get_Opp.Roth__c|
    |Safe_Harbor_Match_Determination_Period__c|Get_Opp.Safe_Harbor_Match_Determination_Period__c|
    |Safe_Harbor__c|Get_Opp.Safe_Harbor__c|
    |Service_Option__c|Get_Opp.Service_Option__c|
    |X3_38__c|Get_Opp.X3_38__c|
    
    
    
    
    ### New_OPD
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|New OPD|
    |Allow Back|⬜|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Next Or Finish Button Label|Create OPD|
    |Show Footer|✅|
    |Show Header|⬜|
    |Connector|[Update_Num_of_Employees_on_Account](#update_num_of_employees_on_account)|
    
    
    #### qacaMismatchWarning
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p>{!$Label.FlowStyles_ErrorNotification}</p><p>{!validationMessage}</p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: hitValidationError<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;booleanValue: true<br/>|
    
    
    
    
    #### Confirmdisplay
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p style="text-align: center;"><strong>Confirm Plan Provisions</strong></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Get_Opp.Product_Type__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|Get_Opp.Product_Type__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[New_OPD_Section1_Column1](#new_opd_section1_column1)|
    
    
    
    
    #### Get_Opp.Plan_Eligibility__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|Get_Opp.Plan_Eligibility__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[New_OPD_Section1_Column1](#new_opd_section1_column1)|
    
    
    
    
    #### Get_Opp.Plan_Entry_Frequency__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|Get_Opp.Plan_Entry_Frequency__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[New_OPD_Section1_Column1](#new_opd_section1_column1)|
    
    
    
    
    #### Get_Opp.Profit_Sharing__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|Get_Opp.Profit_Sharing__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[New_OPD_Section1_Column1](#new_opd_section1_column1)|
    
    
    
    
    #### Get_Opp.Safe_Harbor__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|Get_Opp.Safe_Harbor__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[New_OPD_Section1_Column1](#new_opd_section1_column1)|
    
    
    
    
    #### Get_Opp.QACA_Safe_Harbor_Vesting_Schedule__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|Get_Opp.QACA_Safe_Harbor_Vesting_Schedule__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[New_OPD_Section1_Column1](#new_opd_section1_column1)|
    
    
    
    
    #### Get_Opp.Loans__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|Get_Opp.Loans__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[New_OPD_Section1_Column1](#new_opd_section1_column1)|
    
    
    
    
    #### Get_Opp.Custodian__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|Get_Opp.Custodian__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[New_OPD_Section1_Column1](#new_opd_section1_column1)|
    
    
    
    
    #### Get_Opp.Discretionary_Match__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|Get_Opp.Discretionary_Match__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[New_OPD_Section1_Column1](#new_opd_section1_column1)|
    
    
    
    
    #### Get_Opp.Desired_Plan_Start_Date__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|Get_Opp.Desired_Plan_Start_Date__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[New_OPD_Section1_Column1](#new_opd_section1_column1)|
    
    
    
    
    #### Get_Opp.Previous_Plan_Effective_Date__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|Get_Opp.Previous_Plan_Effective_Date__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Get_Opp.Plan_Type__c<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;stringValue: Conversion Plan<br/>|
    |Parent Field|[New_OPD_Section1_Column1](#new_opd_section1_column1)|
    
    
    
    
    #### Get_Opp.Restatement_Date__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|Get_Opp.Restatement_Date__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Get_Opp.Plan_Type__c<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;stringValue: Conversion Plan<br/>|
    |Parent Field|[New_OPD_Section1_Column1](#new_opd_section1_column1)|
    
    
    
    
    #### New_OPD_Section1_Column1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region|
    |Is Required|⬜|
    |Parent Field|[New_OPD_Section1](#new_opd_section1)|
    |Width (input)|6|
    
    
    
    
    #### Get_Opp.Plan_Type__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|Get_Opp.Plan_Type__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[New_OPD_Section1_Column2](#new_opd_section1_column2)|
    
    
    
    
    #### Get_Opp.Conversion_Type__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|Get_Opp.Conversion_Type__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Get_Opp.Plan_Type__c<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;stringValue: Conversion Plan<br/>|
    |Parent Field|[New_OPD_Section1_Column2](#new_opd_section1_column2)|
    
    
    
    
    #### Get_Opp.Service_Option__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|Get_Opp.Service_Option__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[New_OPD_Section1_Column2](#new_opd_section1_column2)|
    
    
    
    
    #### Get_Opp.Eligibility_Age__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|Get_Opp.Eligibility_Age__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[New_OPD_Section1_Column2](#new_opd_section1_column2)|
    
    
    
    
    #### Get_Opp.Roth__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|Get_Opp.Roth__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[New_OPD_Section1_Column2](#new_opd_section1_column2)|
    
    
    
    
    #### Get_Opp.Profit_Sharing_Match_Vesting_Schedule__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|Get_Opp.Profit_Sharing_Match_Vesting_Schedule__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[New_OPD_Section1_Column2](#new_opd_section1_column2)|
    
    
    
    
    #### Get_Opp.Safe_Harbor_Match_Determination_Period__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|Get_Opp.Safe_Harbor_Match_Determination_Period__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[New_OPD_Section1_Column2](#new_opd_section1_column2)|
    
    
    
    
    #### Get_Opp.Hardships__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|Get_Opp.Hardships__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[New_OPD_Section1_Column2](#new_opd_section1_column2)|
    
    
    
    
    #### Get_Opp.Brokerage_Accounts_PCRA__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|Get_Opp.Brokerage_Accounts_PCRA__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[New_OPD_Section1_Column2](#new_opd_section1_column2)|
    
    
    
    
    #### Get_Opp.Fund_List__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|Get_Opp.Fund_List__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[New_OPD_Section1_Column2](#new_opd_section1_column2)|
    
    
    
    
    #### Get_Opp.X3_38__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|Get_Opp.X3_38__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[New_OPD_Section1_Column2](#new_opd_section1_column2)|
    
    
    
    
    #### New_OPD_Section1_Column2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region|
    |Is Required|⬜|
    |Parent Field|[New_OPD_Section1](#new_opd_section1)|
    |Width (input)|6|
    
    
    
    
    #### New_OPD_Section1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region Container|
    |Is Required|⬜|
    |Region Container Type| Section Without Header|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### autoEnrollment
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p style="text-align: center;"><strong>Auto-Enrollment</strong></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Get_Opp.AutoEnrollment__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|Get_Opp.AutoEnrollment__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[New_OPD_Section2_Column1](#new_opd_section2_column1)|
    
    
    
    
    #### Escalation_Type
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|- escalating<br/>- flat<br/>|
    |Field Text|Escalation Type|
    |Field Type| Dropdown Box|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[New_OPD_Section2_Column1](#new_opd_section2_column1)|
    
    
    
    
    #### New_OPD_Section2_Column1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region|
    |Is Required|⬜|
    |Parent Field|[New_OPD_Section2](#new_opd_section2)|
    |Width (input)|6|
    
    
    
    
    #### Initial_Deferral_Rate
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|initialDefRateChoices|
    |Field Text|Initial Deferral Rate|
    |Field Type| Dropdown Box|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Escalation_Type<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;elementReference: escalating<br/>|
    |Parent Field|[New_OPD_Section2_Column2](#new_opd_section2_column2)|
    
    
    
    
    #### Maximum_Deferral_Rate
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|maxDefRateChoices|
    |Field Text|Maximum Deferral Rate|
    |Field Type| Dropdown Box|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Escalation_Type<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;elementReference: escalating<br/>|
    |Parent Field|[New_OPD_Section2_Column2](#new_opd_section2_column2)|
    
    
    
    
    #### Flat_Deferral_Rate
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|maxDefRateChoices|
    |Field Text|Flat Deferral Rate|
    |Field Type| Dropdown Box|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Escalation_Type<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;elementReference: flat<br/>|
    |Parent Field|[New_OPD_Section2_Column2](#new_opd_section2_column2)|
    
    
    
    
    #### New_OPD_Section2_Column2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region|
    |Is Required|⬜|
    |Parent Field|[New_OPD_Section2](#new_opd_section2)|
    |Width (input)|6|
    
    
    
    
    #### New_OPD_Section2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region Container|
    |Is Required|⬜|
    |Region Container Type| Section Without Header|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### secureActDisplay
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p style="text-align: center;"><strong>Secure Act Questions</strong></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Business_Start_Date
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|Date|
    |Field Text|Business Start Date|
    |Field Type| Input Field|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[New_OPD_Section3_Column1](#new_opd_section3_column1)|
    
    
    
    
    #### New_OPD_Section3_Column1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region|
    |Is Required|⬜|
    |Parent Field|[New_OPD_Section3](#new_opd_section3)|
    |Width (input)|6|
    
    
    
    
    #### Number_of_Employees
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|Number|
    |Default Value|Get_Opp.Number_of_Employees__c|
    |Field Text|Number of Employees|
    |Field Type| Input Field|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Scale|0|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[New_OPD_Section3_Column2](#new_opd_section3_column2)|
    
    
    
    
    #### New_OPD_Section3_Column2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region|
    |Is Required|⬜|
    |Parent Field|[New_OPD_Section3](#new_opd_section3)|
    |Width (input)|6|
    
    
    
    
    #### New_OPD_Section3
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region Container|
    |Is Required|⬜|
    |Region Container Type| Section Without Header|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### New_OPD_Section4_Column1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region|
    |Is Required|⬜|
    |Parent Field|[New_OPD_Section4](#new_opd_section4)|
    |Width (input)|12|
    
    
    
    
    #### New_OPD_Section4
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region Container|
    |Is Required|⬜|
    |Region Container Type| Section Without Header|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Current_Recent_SIMPLE_Plan
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|CurrentSIMPLE|
    |Default Value|No|
    |Field Text|Have you had a SIMPLE Plan this calendar year?|
    |Field Type| Dropdown Box|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[New_OPD_Section5_Column1](#new_opd_section5_column1)|
    
    
    
    
    #### Previously_Sponsored_401_k_Plan
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|Previous401Sponsor|
    |Default Value|No|
    |Field Text|Have you previously sponsored 401(k) plan?|
    |Field Type| Dropdown Box|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[New_OPD_Section5_Column1](#new_opd_section5_column1)|
    
    
    
    
    #### Longer_than_12_Months_with_Zero_Assets
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|TwelveMonthsZeroAssets|
    |Field Text|If Yes, has it been longer than 12 months with zero assets|
    |Field Type| Dropdown Box|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[New_OPD_Section5_Column1](#new_opd_section5_column1)|
    
    
    
    
    #### Grandfather_Date
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|Date|
    |Field Text|Grandfather Date|
    |Field Type| Input Field|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[New_OPD_Section5_Column1](#new_opd_section5_column1)|
    
    
    
    
    #### New_OPD_Section5_Column1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region|
    |Is Required|⬜|
    |Parent Field|[New_OPD_Section5](#new_opd_section5)|
    |Width (input)|6|
    
    
    
    
    #### Do_You_Currently_Sponsor_any_other_retirement_Plans
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|CurrentSponsorOtherPlans|
    |Default Value|No|
    |Field Text|Do you currently sponsor any other retirement plans?|
    |Field Type| Dropdown Box|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[New_OPD_Section5_Column2](#new_opd_section5_column2)|
    
    
    
    
    #### Part_of_Controlled_or_Affiliated_Group
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|ControlledAffiliatedGroup|
    |Default Value|No|
    |Field Text|If Yes, is that plan a part of controlled or affiliated group|
    |Field Type| Dropdown Box|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[New_OPD_Section5_Column2](#new_opd_section5_column2)|
    
    
    
    
    #### Include_Company_in_UBQT_Plan
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|IncludeinUBQTPlan|
    |Field Text|Will you include that company in Ubiquity Plan?|
    |Field Type| Dropdown Box|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[New_OPD_Section5_Column2](#new_opd_section5_column2)|
    
    
    
    
    #### If_Yes_Provide_the_Company_Name
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Field Text|If Yes, provide the company name|
    |Field Type| Input Field|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[New_OPD_Section5_Column2](#new_opd_section5_column2)|
    
    
    
    
    #### Publicly_Traded
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|Public|
    |Default Value|No|
    |Field Text|Publicly Traded?|
    |Field Type| Dropdown Box|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Get_Opp.Account.Connected_Partner__c<br/>&nbsp;&nbsp;operator: Contains<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;stringValue: Schwab<br/>|
    |Parent Field|[New_OPD_Section5_Column2](#new_opd_section5_column2)|
    
    
    
    
    #### Government_Entity
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|Government|
    |Default Value|No|
    |Field Text|Government Entity?|
    |Field Type| Dropdown Box|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Get_Opp.Account.Connected_Partner__c<br/>&nbsp;&nbsp;operator: Contains<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;stringValue: Schwab<br/>|
    |Parent Field|[New_OPD_Section5_Column2](#new_opd_section5_column2)|
    
    
    
    
    #### Does_the_Company_have_any_current_legal_proceedings
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|CurrentLegalProceedings|
    |Default Value|No|
    |Field Text|Does the company have any current legal proceedings?|
    |Field Type| Dropdown Box|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Get_Opp.Account.Connected_Partner__c<br/>&nbsp;&nbsp;operator: Contains<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;stringValue: Schwab<br/>|
    |Parent Field|[New_OPD_Section5_Column2](#new_opd_section5_column2)|
    
    
    
    
    #### If_Yes_which_of_the_following
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|FollowingLegalProceeding|
    |Field Text|If Yes, which of the following?|
    |Field Type| Dropdown Box|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Get_Opp.Account.Connected_Partner__c<br/>&nbsp;&nbsp;operator: Contains<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;stringValue: Schwab<br/>|
    |Parent Field|[New_OPD_Section5_Column2](#new_opd_section5_column2)|
    
    
    
    
    #### Legal_Proceeding_Explanation
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|Legal Proceeding Explanation|
    |Field Type| Large Text Area|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Get_Opp.Account.Connected_Partner__c<br/>&nbsp;&nbsp;operator: Contains<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;stringValue: Schwab<br/>|
    |Parent Field|[New_OPD_Section5_Column2](#new_opd_section5_column2)|
    
    
    
    
    #### New_OPD_Section5_Column2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region|
    |Is Required|⬜|
    |Parent Field|[New_OPD_Section5](#new_opd_section5)|
    |Width (input)|6|
    
    
    
    
    #### New_OPD_Section5
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region Container|
    |Is Required|⬜|
    |Region Container Type| Section Without Header|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Get_Opp.Opportunity_Notes__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|Get_Opp.Opportunity_Notes__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

