# Account_Button_Create_Account_Screen history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Account_Button_Create_Account_Screen-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Screen Flow</b>"]):::startClass
    click START "#general-information" "154624682"
    
    Assign_Record_Type[\"🟰 <em></em><br/>Assign Record Type"/]:::assignments
    click Assign_Record_Type "#assign_record_type" "1067424047"
    
    Create_Account[("➕ <em></em><br/>Create Account")]:::recordCreates
    click Create_Account "#create_account" "1760197687"
    
    acctDetailsScreen(["💻 <em></em><br/>acctDetailsScreen"]):::screens
    click acctDetailsScreen "#acctdetailsscreen" "585250250"
    
    acctTypeQuestions(["💻 <em></em><br/>acctTypeQuestions"]):::screens
    click acctTypeQuestions "#accttypequestions" "4102293834"
    
    Assign_Record_Type --> Create_Account
    Create_Account --> END_Create_Account
    acctDetailsScreen --> Assign_Record_Type
    acctTypeQuestions --> acctDetailsScreen
    START -->  acctTypeQuestions
    END_Create_Account(( END )):::endClass
    
    
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
    |Label|Account | Button | Create Account Screen|
    |Status|⚠️ Draft|
    |Environments|Default|
    |Interview Label|Account | Button | Create Account Screen {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[acctTypeQuestions](#accttypequestions)|
    |Next Node|[acctTypeQuestions](#accttypequestions)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |acctToCreate|SObject|⬜|✅|⬜|Account|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Assign_Record_Type
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Record Type|
    |Connector|[Create_Account](#create_account)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |acctToCreate.RecordTypeId| Assign|01200000000CeSi|
    
    
    
    
    ### Create_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Label|Create Account|
    |Input Reference|acctToCreate|
    
    
    ### acctDetailsScreen
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|[acctDetailsScreen](#acctdetailsscreen)|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Next Or Finish Button Label|Create Account|
    |Show Footer|✅|
    |Show Header|⬜|
    |Connector|[Assign_Record_Type](#assign_record_type)|
    
    
    #### acctDetails
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p style="text-align: center;"><strong style="font-size: 18px;">Account Details</strong></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### acctToCreate.Name
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Name|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section1_Column1](#acctdetailsscreen_section1_column1)|
    
    
    
    
    #### acctToCreate.Employer_Identification_Number_EIN__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Employer_Identification_Number_EIN__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section1_Column1](#acctdetailsscreen_section1_column1)|
    
    
    
    
    #### acctToCreate.ParentId
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.ParentId|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section1_Column1](#acctdetailsscreen_section1_column1)|
    
    
    
    
    #### acctToCreate.Connected_Partner_Rep__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Connected_Partner_Rep__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section1_Column1](#acctdetailsscreen_section1_column1)|
    
    
    
    
    #### acctToCreate.Brand__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Brand__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section1_Column1](#acctdetailsscreen_section1_column1)|
    
    
    
    
    #### acctToCreate.Phone
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Phone|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section1_Column1](#acctdetailsscreen_section1_column1)|
    
    
    
    
    #### acctToCreate.Client_Support_Teams__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Client_Support_Teams__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section1_Column1](#acctdetailsscreen_section1_column1)|
    
    
    
    
    #### acctToCreate.Controlled_Affiliated_Group__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Controlled_Affiliated_Group__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section1_Column1](#acctdetailsscreen_section1_column1)|
    
    
    
    
    #### acctToCreate.Linked_Company__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Linked_Company__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section1_Column1](#acctdetailsscreen_section1_column1)|
    
    
    
    
    #### acctToCreate.Business_Start_Date__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Business_Start_Date__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section1_Column1](#acctdetailsscreen_section1_column1)|
    
    
    
    
    #### acctToCreate.ParentId
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.ParentId|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section1_Column1](#acctdetailsscreen_section1_column1)|
    
    
    
    
    #### acctDetailsScreen_Section1_Column1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region|
    |Is Required|⬜|
    |Parent Field|[acctDetailsScreen_Section1](#acctdetailsscreen_section1)|
    |Width (input)|6|
    
    
    
    
    #### acctToCreate.Connected_Partner__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Connected_Partner__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section1_Column2](#acctdetailsscreen_section1_column2)|
    
    
    
    
    #### acctToCreate.Type
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Type|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section1_Column2](#acctdetailsscreen_section1_column2)|
    
    
    
    
    #### acctToCreate.Business_Entity__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Business_Entity__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section1_Column2](#acctdetailsscreen_section1_column2)|
    
    
    
    
    #### acctToCreate.BillingAddress
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.BillingAddress|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section1_Column2](#acctdetailsscreen_section1_column2)|
    
    
    
    
    #### acctToCreate.Campaign_code__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Campaign_code__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section1_Column2](#acctdetailsscreen_section1_column2)|
    
    
    
    
    #### acctToCreate.NAICS_Code__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.NAICS_Code__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section1_Column2](#acctdetailsscreen_section1_column2)|
    
    
    
    
    #### acctToCreate.NAICS_Description__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.NAICS_Description__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section1_Column2](#acctdetailsscreen_section1_column2)|
    
    
    
    
    #### acctToCreate.Notes__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Notes__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section1_Column2](#acctdetailsscreen_section1_column2)|
    
    
    
    
    #### acctDetailsScreen_Section1_Column2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region|
    |Is Required|⬜|
    |Parent Field|[acctDetailsScreen_Section1](#acctdetailsscreen_section1)|
    |Width (input)|6|
    
    
    
    
    #### acctDetailsScreen_Section1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region Container|
    |Is Required|⬜|
    |Region Container Type| Section Without Header|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### clientDetails
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p style="text-align: center;"><strong style="font-size: 18px;">Client Details</strong></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: acctToCreate.Client__c<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;booleanValue: true<br/>|
    
    
    
    
    #### acctToCreate.NumberOfEmployees
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.NumberOfEmployees|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section2_Column1](#acctdetailsscreen_section2_column1)|
    
    
    
    
    #### acctToCreate.X3_16__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.X3_16__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section2_Column1](#acctdetailsscreen_section2_column1)|
    
    
    
    
    #### acctToCreate.Price_Book__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Price_Book__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section2_Column1](#acctdetailsscreen_section2_column1)|
    
    
    
    
    #### acctToCreate.AccountNumber
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.AccountNumber|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section2_Column1](#acctdetailsscreen_section2_column1)|
    
    
    
    
    #### acctToCreate.X3_38__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.X3_38__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section2_Column1](#acctdetailsscreen_section2_column1)|
    
    
    
    
    #### acctDetailsScreen_Section2_Column1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region|
    |Is Required|⬜|
    |Parent Field|[acctDetailsScreen_Section2](#acctdetailsscreen_section2)|
    |Width (input)|6|
    
    
    
    
    #### acctToCreate.Count_of_Employees_Census__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Count_of_Employees_Census__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section2_Column2](#acctdetailsscreen_section2_column2)|
    
    
    
    
    #### acctToCreate.Business_Unit__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Business_Unit__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section2_Column2](#acctdetailsscreen_section2_column2)|
    
    
    
    
    #### acctToCreate.Billing_Status__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Billing_Status__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section2_Column2](#acctdetailsscreen_section2_column2)|
    
    
    
    
    #### acctToCreate.X1st_Invoice_Date__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.X1st_Invoice_Date__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section2_Column2](#acctdetailsscreen_section2_column2)|
    
    
    
    
    #### acctDetailsScreen_Section2_Column2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region|
    |Is Required|⬜|
    |Parent Field|[acctDetailsScreen_Section2](#acctdetailsscreen_section2)|
    |Width (input)|6|
    
    
    
    
    #### acctDetailsScreen_Section2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region Container|
    |Is Required|⬜|
    |Region Container Type| Section Without Header|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: acctToCreate.Client__c<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;booleanValue: true<br/>|
    
    
    
    
    #### partnerDetails
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p style="text-align: center;"><strong style="font-size: 18px;">Partner Details</strong></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: acctToCreate.Partner__c<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;booleanValue: true<br/>|
    
    
    
    
    #### acctToCreate.Type
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Type|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section3_Column1](#acctdetailsscreen_section3_column1)|
    
    
    
    
    #### acctToCreate.Partnership_Type__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Partnership_Type__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section3_Column1](#acctdetailsscreen_section3_column1)|
    
    
    
    
    #### acctToCreate.Forecast_Channel__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Forecast_Channel__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section3_Column1](#acctdetailsscreen_section3_column1)|
    
    
    
    
    #### acctToCreate.Motivation_to_Partner_with_Ubiquity__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Motivation_to_Partner_with_Ubiquity__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section3_Column1](#acctdetailsscreen_section3_column1)|
    
    
    
    
    #### acctToCreate.Price_Book__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Price_Book__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section3_Column1](#acctdetailsscreen_section3_column1)|
    
    
    
    
    #### acctToCreate.CRD_Number__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.CRD_Number__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section3_Column1](#acctdetailsscreen_section3_column1)|
    
    
    
    
    #### acctToCreate.Integration_Type__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Integration_Type__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section3_Column1](#acctdetailsscreen_section3_column1)|
    
    
    
    
    #### acctDetailsScreen_Section3_Column1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region|
    |Is Required|⬜|
    |Parent Field|[acctDetailsScreen_Section3](#acctdetailsscreen_section3)|
    |Width (input)|6|
    
    
    
    
    #### acctToCreate.Major_Partner__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Major_Partner__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section3_Column2](#acctdetailsscreen_section3_column2)|
    
    
    
    
    #### acctToCreate.Channel__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Channel__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section3_Column2](#acctdetailsscreen_section3_column2)|
    
    
    
    
    #### acctToCreate.Partner_Status__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Partner_Status__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section3_Column2](#acctdetailsscreen_section3_column2)|
    
    
    
    
    #### acctToCreate.Partner_Client_Status__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Partner_Client_Status__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section3_Column2](#acctdetailsscreen_section3_column2)|
    
    
    
    
    #### acctToCreate.Advisory_Firm__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Advisory_Firm__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section3_Column2](#acctdetailsscreen_section3_column2)|
    
    
    
    
    #### acctToCreate.Business_Industry__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Business_Industry__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section3_Column2](#acctdetailsscreen_section3_column2)|
    
    
    
    
    #### acctToCreate.Connected_Partner__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Connected_Partner__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section3_Column2](#acctdetailsscreen_section3_column2)|
    
    
    
    
    #### acctToCreate.Business_Unit__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Business_Unit__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section3_Column2](#acctdetailsscreen_section3_column2)|
    
    
    
    
    #### acctToCreate.Payroll_partner_notes__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Payroll_partner_notes__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section3_Column2](#acctdetailsscreen_section3_column2)|
    
    
    
    
    #### acctToCreate.Sales_Notes__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Sales_Notes__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section3_Column2](#acctdetailsscreen_section3_column2)|
    
    
    
    
    #### acctDetailsScreen_Section3_Column2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region|
    |Is Required|⬜|
    |Parent Field|[acctDetailsScreen_Section3](#acctdetailsscreen_section3)|
    |Width (input)|6|
    
    
    
    
    #### acctDetailsScreen_Section3
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region Container|
    |Is Required|⬜|
    |Region Container Type| Section Without Header|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: acctToCreate.Partner__c<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;booleanValue: true<br/>|
    
    
    
    
    #### vendorDisplay
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p style="text-align: center;"><strong style="font-size: 18px;">Vendor Details</strong></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: acctToCreate.Vendor__c<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;booleanValue: true<br/>|
    
    
    
    
    #### acctToCreate.Vendor_Type__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Vendor_Type__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section4_Column1](#acctdetailsscreen_section4_column1)|
    
    
    
    
    #### acctToCreate.Vendor_Risk__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Vendor_Risk__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section4_Column1](#acctdetailsscreen_section4_column1)|
    
    
    
    
    #### acctDetailsScreen_Section4_Column1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region|
    |Is Required|⬜|
    |Parent Field|[acctDetailsScreen_Section4](#acctdetailsscreen_section4)|
    |Width (input)|6|
    
    
    
    
    #### acctToCreate.Vendor_Status__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Vendor_Status__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section4_Column2](#acctdetailsscreen_section4_column2)|
    
    
    
    
    #### acctToCreate.Vendor_Tier__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Vendor_Tier__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section4_Column2](#acctdetailsscreen_section4_column2)|
    
    
    
    
    #### acctDetailsScreen_Section4_Column2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region|
    |Is Required|⬜|
    |Parent Field|[acctDetailsScreen_Section4](#acctdetailsscreen_section4)|
    |Width (input)|6|
    
    
    
    
    #### acctDetailsScreen_Section4
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region Container|
    |Is Required|⬜|
    |Region Container Type| Section Without Header|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: acctToCreate.Vendor__c<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;booleanValue: true<br/>|
    
    
    
    
    #### competitorDisplay
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p style="text-align: center;"><strong style="font-size: 18px;">Competitor Details</strong></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: acctToCreate.Competitor__c<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;booleanValue: true<br/>|
    
    
    
    
    #### acctToCreate.Competitive_Threat_Level__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Competitive_Threat_Level__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section5_Column1](#acctdetailsscreen_section5_column1)|
    
    
    
    
    #### acctToCreate.Competitive_Summary__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Competitive_Summary__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section5_Column1](#acctdetailsscreen_section5_column1)|
    
    
    
    
    #### acctToCreate.Custodian__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Custodian__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section5_Column1](#acctdetailsscreen_section5_column1)|
    
    
    
    
    #### acctToCreate.Asset_Manager__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Asset_Manager__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section5_Column1](#acctdetailsscreen_section5_column1)|
    
    
    
    
    #### acctToCreate.Current_Google_Review_Rating__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Current_Google_Review_Rating__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section5_Column1](#acctdetailsscreen_section5_column1)|
    
    
    
    
    #### acctToCreate.Target_Market__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Target_Market__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section5_Column1](#acctdetailsscreen_section5_column1)|
    
    
    
    
    #### acctToCreate.Investment_selection__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Investment_selection__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section5_Column1](#acctdetailsscreen_section5_column1)|
    
    
    
    
    #### acctToCreate.Sales_Notes__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Sales_Notes__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section5_Column1](#acctdetailsscreen_section5_column1)|
    
    
    
    
    #### acctDetailsScreen_Section5_Column1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region|
    |Is Required|⬜|
    |Parent Field|[acctDetailsScreen_Section5](#acctdetailsscreen_section5)|
    |Width (input)|6|
    
    
    
    
    #### acctToCreate.Motivation_to_Partner_with_Ubiquity__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Motivation_to_Partner_with_Ubiquity__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section5_Column2](#acctdetailsscreen_section5_column2)|
    
    
    
    
    #### acctToCreate.Products_Offered__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Products_Offered__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section5_Column2](#acctdetailsscreen_section5_column2)|
    
    
    
    
    #### acctToCreate.Record_Keeping_System__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Record_Keeping_System__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section5_Column2](#acctdetailsscreen_section5_column2)|
    
    
    
    
    #### acctToCreate.X3_16__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.X3_16__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section5_Column2](#acctdetailsscreen_section5_column2)|
    
    
    
    
    #### acctToCreate.X3_38__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.X3_38__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section5_Column2](#acctdetailsscreen_section5_column2)|
    
    
    
    
    #### acctToCreate.Integrated_Payroll__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Integrated_Payroll__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section5_Column2](#acctdetailsscreen_section5_column2)|
    
    
    
    
    #### acctToCreate.Asset_Fee_Amount__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Asset_Fee_Amount__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section5_Column2](#acctdetailsscreen_section5_column2)|
    
    
    
    
    #### acctToCreate.Asset_Based_Fees__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Asset_Based_Fees__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section5_Column2](#acctdetailsscreen_section5_column2)|
    
    
    
    
    #### acctToCreate.Fee_Notes__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Fee_Notes__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section5_Column2](#acctdetailsscreen_section5_column2)|
    
    
    
    
    #### acctToCreate.Date_last_shopped__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Date_last_shopped__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section5_Column2](#acctdetailsscreen_section5_column2)|
    
    
    
    
    #### acctToCreate.Last_Shopped_By__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Last_Shopped_By__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section5_Column2](#acctdetailsscreen_section5_column2)|
    
    
    
    
    #### acctToCreate.Price_Book__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Price_Book__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctDetailsScreen_Section5_Column2](#acctdetailsscreen_section5_column2)|
    
    
    
    
    #### acctDetailsScreen_Section5_Column2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region|
    |Is Required|⬜|
    |Parent Field|[acctDetailsScreen_Section5](#acctdetailsscreen_section5)|
    |Width (input)|6|
    
    
    
    
    #### acctDetailsScreen_Section5
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region Container|
    |Is Required|⬜|
    |Region Container Type| Section Without Header|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: acctToCreate.Competitor__c<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;booleanValue: true<br/>|
    
    
    
    
    ### acctTypeQuestions
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|[acctTypeQuestions](#accttypequestions)|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Show Footer|✅|
    |Show Header|⬜|
    |Connector|[acctDetailsScreen](#acctdetailsscreen)|
    
    
    #### acctTypeDisplay
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p style="text-align: center;"><strong style="font-size: 16px;">What type of account is it? (Select all that apply)</strong></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### acctToCreate.Client__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Client__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctTypeQuestions_Section1_Column1](#accttypequestions_section1_column1)|
    
    
    
    
    #### acctTypeQuestions_Section1_Column1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region|
    |Is Required|⬜|
    |Parent Field|[acctTypeQuestions_Section1](#accttypequestions_section1)|
    |Width (input)|3|
    
    
    
    
    #### acctToCreate.Partner__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Partner__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctTypeQuestions_Section1_Column2](#accttypequestions_section1_column2)|
    
    
    
    
    #### acctTypeQuestions_Section1_Column2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region|
    |Is Required|⬜|
    |Parent Field|[acctTypeQuestions_Section1](#accttypequestions_section1)|
    |Width (input)|3|
    
    
    
    
    #### acctToCreate.Competitor__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Competitor__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctTypeQuestions_Section1_Column3](#accttypequestions_section1_column3)|
    
    
    
    
    #### acctTypeQuestions_Section1_Column3
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region|
    |Is Required|⬜|
    |Parent Field|[acctTypeQuestions_Section1](#accttypequestions_section1)|
    |Width (input)|3|
    
    
    
    
    #### acctToCreate.Vendor__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|acctToCreate.Vendor__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[acctTypeQuestions_Section1_Column4](#accttypequestions_section1_column4)|
    
    
    
    
    #### acctTypeQuestions_Section1_Column4
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region|
    |Is Required|⬜|
    |Parent Field|[acctTypeQuestions_Section1](#accttypequestions_section1)|
    |Width (input)|3|
    
    
    
    
    #### acctTypeQuestions_Section1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region Container|
    |Is Required|⬜|
    |Region Container Type| Section Without Header|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

