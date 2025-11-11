# Contact_Button_Create_Lead history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Contact_Button_Create_Lead-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Screen Flow</b>"]):::startClass
    click START "#general-information" "2661506066"
    
    Assign_Connected_Partner[\"🟰 <em></em><br/>Assign Connected Partner"/]:::assignments
    click Assign_Connected_Partner "#assign_connected_partner" "676474687"
    
    Assign_Default_Lead_Source_Info[\"🟰 <em></em><br/>Assign Default Lead Source Info"/]:::assignments
    click Assign_Default_Lead_Source_Info "#assign_default_lead_source_info" "1887812420"
    
    Assign_Lead_Values[\"🟰 <em></em><br/>Assign Lead Values"/]:::assignments
    click Assign_Lead_Values "#assign_lead_values" "910989506"
    
    Lead_Source_Detail_Schwab{"🔀 <em></em><br/>Lead Source Detail = Schwab"}:::decisions
    click Lead_Source_Detail_Schwab "#lead_source_detail_schwab" "4253426069"
    
    Owned_by_a_Different_User{"🔀 <em></em><br/>Owned by a Different User?"}:::decisions
    click Owned_by_a_Different_User "#owned_by_a_different_user" "2697965773"
    
    Create_Advisor_Sourced_Lead[("➕ <em></em><br/>Create Advisor Sourced Lead")]:::recordCreates
    click Create_Advisor_Sourced_Lead "#create_advisor_sourced_lead" "2290081141"
    
    Get_Advisor_Contact[("🔍 <em></em><br/>Get Advisor Contact")]:::recordLookups
    click Get_Advisor_Contact "#get_advisor_contact" "1116583397"
    
    Get_Advisor_Firm[("🔍 <em></em><br/>Get Advisor Firm")]:::recordLookups
    click Get_Advisor_Firm "#get_advisor_firm" "1106974376"
    
    Add_Conected_Partner(["💻 <em></em><br/>Add Conected Partner"]):::screens
    click Add_Conected_Partner "#add_conected_partner" "3745928516"
    
    New_Advisor_Lead(["💻 <em></em><br/>New Advisor Lead"]):::screens
    click New_Advisor_Lead "#new_advisor_lead" "1761128503"
    
    Owner_Not_Set(["💻 <em></em><br/>Owner Not Set"]):::screens
    click Owner_Not_Set "#owner_not_set" "352342226"
    
    Assign_Connected_Partner --> Assign_Lead_Values
    Assign_Default_Lead_Source_Info --> New_Advisor_Lead
    Assign_Lead_Values --> Create_Advisor_Sourced_Lead
    Lead_Source_Detail_Schwab --> |"Yes"| Add_Conected_Partner
    Lead_Source_Detail_Schwab --> |"None"| Assign_Lead_Values
    Owned_by_a_Different_User --> |"No"| Assign_Default_Lead_Source_Info
    Owned_by_a_Different_User --> |"Yes"| Owner_Not_Set
    Create_Advisor_Sourced_Lead --> END_Create_Advisor_Sourced_Lead
    Get_Advisor_Contact --> Get_Advisor_Firm
    Get_Advisor_Firm --> Owned_by_a_Different_User
    Add_Conected_Partner --> Assign_Connected_Partner
    New_Advisor_Lead --> Lead_Source_Detail_Schwab
    Owner_Not_Set --> END_Owner_Not_Set
    START -->  Get_Advisor_Contact
    END_Create_Advisor_Sourced_Lead(( END )):::endClass
    END_Owner_Not_Set(( END )):::endClass
    
    
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
    |Label|Contact | Button | Create Lead|
    |Status|Active|
    |Description|Defaults Referral info for Advisor Leads. Added criteria to allow sales coordinator use the button.|
    |Environments|Default|
    |Interview Label|Contact | Button | Create Lead {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Advisor_Contact](#get_advisor_contact)|
    |Next Node|[Get_Advisor_Contact](#get_advisor_contact)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |leadId|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |newLead|SObject|⬜|✅|✅|Lead|<!-- -->|
    |recordId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Assign_Connected_Partner
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Connected Partner|
    |Connector|[Assign_Lead_Values](#assign_lead_values)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |newLead.Connected_Partner__c| Assign|ConnectedPartner.recordId|
    
    
    
    
    ### Assign_Default_Lead_Source_Info
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Default Lead Source Info|
    |Connector|[New_Advisor_Lead](#new_advisor_lead)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |newLead.LeadSource| Assign|Partner Referral|
    |newLead.LeadSourceDetail__c| Assign|Advisor|
    
    
    
    
    ### Assign_Lead_Values
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Lead Values|
    |Connector|[Create_Advisor_Sourced_Lead](#create_advisor_sourced_lead)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |newLead.FirstName| Assign|First_Name|
    |newLead.LastName| Assign|Last_Name|
    |newLead.Email| Assign|Email|
    |newLead.Phone| Assign|Phone|
    |newLead.Company| Assign|Company|
    |newLead.Street| Assign|Address.street|
    |newLead.City| Assign|Address.city|
    |newLead.State| Assign|Address.province|
    |newLead.PostalCode| Assign|Address.postalCode|
    |newLead.Country| Assign|Address.country|
    |newLead.Associated_Contact__c| Assign|Get_Advisor_Contact.Id|
    |newLead.Associated_Contact_Role__c| Assign|Financial Advisor|
    |newLead.Associated_Partner__c| Assign|Get_Advisor_Firm.Id|
    |newLead.Associated_Partner_Role__c| Assign|Financial Advisory Firm|
    |newLead.Lead_Type__c| Assign|Employer|
    |newLead.LeadSource| Assign|LeadSourceInfo.topValue|
    |newLead.LeadSourceDetail__c| Assign|LeadSourceInfo.middleValue|
    |newLead.How_did_you_hear_about_Ubiquity__c| Assign|Financial Advisor|
    |newLead.Business_Unit__c| Assign|Get_Advisor_Contact.Business_Unit__c|
    |newLead.Title| Assign|Title|
    |newLead.NumberOfEmployees| Assign|Number_of_Employees|
    |newLead.Business_Industry__c| Assign|Business_Industry|
    |newLead.Product_Type__c| Assign|Product_Information.topValue|
    |newLead.Service_Option__c| Assign|Product_Information.middleValue|
    |newLead.OwnerId| Assign|Get_Advisor_Contact.OwnerId|
    |newLead.Method_of_First_Contact__c| Assign|Partner Referral|
    |newLead.Plan_Type__c| Assign|PlanType|
    
    
    
    
    ### Lead_Source_Detail_Schwab
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Lead Source Detail = Schwab|
    |Default Connector|[Assign_Lead_Values](#assign_lead_values)|
    |Default Connector Label|None|
    
    
    #### Rule YesSchwab (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Add_Conected_Partner](#add_conected_partner)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|LeadSourceInfo.middleValue| Contains|Schwab|
    
    
    
    
    ### Owned_by_a_Different_User
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Owned by a Different User?|
    |Default Connector|[Owner_Not_Set](#owner_not_set)|
    |Default Connector Label|Yes|
    
    
    #### Rule NoCorrect (No)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Default_Lead_Source_Info](#assign_default_lead_source_info)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Advisor_Contact.OwnerId| Contains|$User.Id|
    |2|$UserRole.Name| Equal To|SDR|
    
    
    
    
    ### Create_Advisor_Sourced_Lead
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Label|Create Advisor Sourced Lead|
    |Input Reference|newLead|
    
    
    ### Get_Advisor_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Get Advisor Contact|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Get_Advisor_Firm](#get_advisor_firm)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Get_Advisor_Firm
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Account|
    |Label|Get Advisor Firm|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Owned_by_a_Different_User](#owned_by_a_different_user)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Advisor_Contact.AccountId|
    
    
    
    
    ### Add_Conected_Partner
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|Add Conected Partner|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|✅|
    |Show Footer|✅|
    |Show Header|✅|
    |Connector|[Assign_Connected_Partner](#assign_connected_partner)|
    
    
    #### ConnectedPartner
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Extension Name|flowruntime:lookup|
    |Field Type| Component Instance|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Store Output Automatically|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Field Api Name (input)|Connected_Partner_Rep__c|
    |Label (input)|Connected Partner|
    |Object Api Name (input)|Lead|
    |Required (input)|✅|
    
    
    
    
    ### New_Advisor_Lead
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|New Advisor Lead|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|✅|
    |Show Footer|✅|
    |Show Header|✅|
    |Connector|[Lead_Source_Detail_Schwab](#lead_source_detail_schwab)|
    
    
    #### First_Name
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Default Value|Get_Advisor_Contact.FirstName|
    |Field Text|First Name|
    |Field Type| Input Field|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Last_Name
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Default Value|Get_Advisor_Contact.LastName|
    |Field Text|Last Name|
    |Field Type| Input Field|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Title
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Field Text|Title|
    |Field Type| Input Field|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Default Value|Get_Advisor_Contact.Email|
    |Field Text|Email|
    |Field Type| Input Field|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Phone
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Default Value|Get_Advisor_Contact.Phone|
    |Field Text|Phone|
    |Field Type| Input Field|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Company
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Default Value|Get_Advisor_Firm.Name|
    |Field Text|Company|
    |Field Type| Input Field|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
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
    |Country (input)|United States|
    
    
    
    
    #### Number_of_Employees
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|Number|
    |Field Text|Number of Employees|
    |Field Type| Input Field|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Scale|0|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Business_Industry
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|- NotYetKnown<br/>- BusinessIndustry<br/>|
    |Default Selected Choice Reference|NotYetKnown|
    |Field Text|Business Industry|
    |Field Type| Dropdown Box|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Plan_Type
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|PlanType|
    |Field Text|Plan Type|
    |Field Type| Dropdown Box|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Product_Information
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Extension Name|flowruntime:dependentPicklists|
    |Field Type| Component Instance|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Store Output Automatically|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Dependency Wrapper Api Name (input)|Lead|
    |Top Picklist Api Name (input)|Product_Type__c|
    |Middle Picklist Api Name (input)|Service_Option__c|
    |Top Label (input)|Product Type|
    |Top Required (input)|✅|
    |Middle Label (input)|Service Option|
    
    
    
    
    #### LeadSourceInfo
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Extension Name|flowruntime:dependentPicklists|
    |Field Type| Component Instance|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Store Output Automatically|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Dependency Wrapper Api Name (input)|Lead|
    |Top Picklist Api Name (input)|LeadSource|
    |Middle Picklist Api Name (input)|LeadSourceDetail__c|
    |Top Label (input)|Lead Source|
    |Top Required (input)|✅|
    |Top Value (input)|newLead.LeadSource|
    |Middle Label (input)|Lead Source Detail|
    |Middle Required (input)|✅|
    |Middle Value (input)|newLead.LeadSourceDetail__c|
    
    
    
    
    ### Owner_Not_Set
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|Owner Not Set|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|✅|
    |Show Footer|✅|
    |Show Header|✅|
    
    
    #### OwnerNotSet
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p>{!Get_Advisor_Contact.Full_Name__c} is not assigned to you. Please update this Advisor's Contact Record to continue.</p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

