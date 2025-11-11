# Case_Button_New_Complaint_Form history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Case_Button_New_Complaint_Form-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Screen Flow</b>"]):::startClass
    click START "#general-information" "3800717664"
    
    Email_Manager("📧 <em></em><br/>Email Manager"):::actionCalls
    click Email_Manager "#email_manager" "192965277"
    
    Complaint_Tier{"🔀 <em></em><br/>Complaint Tier"}:::decisions
    click Complaint_Tier "#complaint_tier" "3655315292"
    
    Create_Complaint[("➕ <em></em><br/>Create Complaint")]:::recordCreates
    click Create_Complaint "#create_complaint" "164705472"
    
    Get_Case[("🔍 <em></em><br/>Get Case")]:::recordLookups
    click Get_Case "#get_case" "1863404432"
    
    New_Complaint_Form(["💻 <em></em><br/>New Complaint Form"]):::screens
    click New_Complaint_Form "#new_complaint_form" "1193084611"
    
    Email_Manager --> END_Email_Manager
    Complaint_Tier --> |"Tier 1/2"| Email_Manager
    Complaint_Tier --> |"Default Outcome"| END_Complaint_Tier
    Create_Complaint --> Complaint_Tier
    Get_Case --> New_Complaint_Form
    New_Complaint_Form --> Create_Complaint
    START -->  Get_Case
    END_Email_Manager(( END )):::endClass
    END_Complaint_Tier(( END )):::endClass
    
    
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
    |Label|Case | Button | New Complaint Form|
    |Status|Active|
    |Description|Button on case record page to create new complaint form|
    |Environments|Default|
    |Interview Label|Case | Button | New Complaint Form {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Case](#get_case)|
    |Next Node|[Get_Case](#get_case)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |newComplaint|SObject|⬜|✅|⬜|Complaint_Form__c|<!-- -->|
    |recordId|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |complaintName|String|{!complaintTier} + " Complaint from " + {!Get_Case.Account.Name} + " - " + TEXT(DATEVALUE({!newComplaint.CreatedDate}))|<!-- -->|
    |complaintTier|String|IF(ISPICKVAL({!newComplaint.Complaint_Tier__c}, "Tier 1"), "Tier 1", <br/>IF(ISPICKVAL({!newComplaint.Complaint_Tier__c}, "Tier 2"), "Tier 2", <br/>IF(ISPICKVAL({!newComplaint.Complaint_Tier__c}, "Tier 3"), "Tier 3", "Tier 4")))|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Email_Manager
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Email Manager|
    |Action Type|Email Alert|
    |Action Name|Complaint_Form__c.New_Complaint_Form_Created|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Complaint_Form__c.New_Complaint_Form_Created|
    | SObject Row Id (input)|newComplaint.Id|
    
    
    ### Complaint_Tier
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Complaint Tier|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Tier_1_2 (Tier 1/2)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Email_Manager](#email_manager)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|newComplaint.Complaint_Tier__c| Equal To|Tier 1|
    |2|newComplaint.Complaint_Tier__c| Equal To|Tier 2|
    
    
    
    
    ### Create_Complaint
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Complaint_Form__c|
    |Label|Create Complaint|
    |Store Output Automatically|✅|
    |Connector|[Complaint_Tier](#complaint_tier)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Account__c|Get_Case.AccountId|
    |Case_Notes__c|Get_Case.Case_notes_new__c|
    |Case_Owner__c|Get_Case.OwnerId|
    |Case__c|Get_Case.Id|
    |Complaint_Notes__c|newComplaint.Complaint_Notes__c|
    |Complaint_Tier__c|newComplaint.Complaint_Tier__c|
    |Complaint_Type__c|newComplaint.Complaint_Type__c|
    |Date_Resolved__c|newComplaint.Date_Resolved__c|
    |Manager_Reviewed__c|newComplaint.Manager_Reviewed__c|
    |Manager__c|Get_Case.Owner:User.ManagerId|
    |Name|complaintName|
    |Resolved__c|newComplaint.Resolved__c|
    
    
    
    
    ### Get_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Case|
    |Label|Get Case|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[New_Complaint_Form](#new_complaint_form)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### New_Complaint_Form
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|New Complaint Form|
    |Allow Back|⬜|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Next Or Finish Button Label|Create Complaint Form|
    |Show Footer|✅|
    |Show Header|⬜|
    |Connector|[Create_Complaint](#create_complaint)|
    
    
    #### newComplaint.Name
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|newComplaint.Name|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[New_Complaint_Form_Section1_Column1](#new_complaint_form_section1_column1)|
    
    
    
    
    #### newComplaint.Complaint_Notes__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|newComplaint.Complaint_Notes__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[New_Complaint_Form_Section1_Column1](#new_complaint_form_section1_column1)|
    
    
    
    
    #### New_Complaint_Form_Section1_Column1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region|
    |Is Required|⬜|
    |Parent Field|[New_Complaint_Form_Section1](#new_complaint_form_section1)|
    |Width (input)|6|
    
    
    
    
    #### newComplaint.Complaint_Tier__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|newComplaint.Complaint_Tier__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[New_Complaint_Form_Section1_Column2](#new_complaint_form_section1_column2)|
    
    
    
    
    #### newComplaint.Complaint_Type__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|newComplaint.Complaint_Type__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[New_Complaint_Form_Section1_Column2](#new_complaint_form_section1_column2)|
    
    
    
    
    #### newComplaint.Manager_Reviewed__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|newComplaint.Manager_Reviewed__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[New_Complaint_Form_Section1_Column2](#new_complaint_form_section1_column2)|
    
    
    
    
    #### newComplaint.Resolved__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|newComplaint.Resolved__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[New_Complaint_Form_Section1_Column2](#new_complaint_form_section1_column2)|
    
    
    
    
    #### newComplaint.Date_Resolved__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|newComplaint.Date_Resolved__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[New_Complaint_Form_Section1_Column2](#new_complaint_form_section1_column2)|
    
    
    
    
    #### New_Complaint_Form_Section1_Column2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region|
    |Is Required|⬜|
    |Parent Field|[New_Complaint_Form_Section1](#new_complaint_form_section1)|
    |Width (input)|6|
    
    
    
    
    #### New_Complaint_Form_Section1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region Container|
    |Is Required|⬜|
    |Region Container Type| Section Without Header|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

