# Proposal_Button_Generate_Simply_Lead history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Proposal_Button_Generate_Simply_Lead-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Screen Flow</b>"]):::startClass
    click START "#general-information" "269014252"
    
    Redirect_to_new_lead("⚡ <em></em><br/>Redirect to new lead"):::actionCalls
    click Redirect_to_new_lead "#redirect_to_new_lead" "4222962676"
    
    Copy_1_of_Define_New_Lead[\"🟰 <em></em><br/>Copy 1 of Define New Lead"/]:::assignments
    click Copy_1_of_Define_New_Lead "#copy_1_of_define_new_lead" "2672531772"
    
    Define_New_Lead[\"🟰 <em></em><br/>Define New Lead"/]:::assignments
    click Define_New_Lead "#define_new_lead" "4260605153"
    
    Dupe_Lead_Found_Check{"🔀 <em></em><br/>Dupe Lead Found Check"}:::decisions
    click Dupe_Lead_Found_Check "#dupe_lead_found_check" "1818900629"
    
    Proposal_Type{"🔀 <em></em><br/>Proposal Type"}:::decisions
    click Proposal_Type "#proposal_type" "2828901302"
    
    Create_New_Lead[("➕ <em></em><br/>Create New Lead")]:::recordCreates
    click Create_New_Lead "#create_new_lead" "2435978475"
    
    Find_Dupe_Lead[("🔍 <em></em><br/>Find Dupe Lead")]:::recordLookups
    click Find_Dupe_Lead "#find_dupe_lead" "1545964219"
    
    Grab_Proposal[("🔍 <em></em><br/>Grab Proposal")]:::recordLookups
    click Grab_Proposal "#grab_proposal" "1596366522"
    
    dupeScreen(["💻 <em></em><br/>dupeScreen"]):::screens
    click dupeScreen "#dupescreen" "1880869816"
    
    Screen1(["💻 <em></em><br/>Screen1"]):::screens
    click Screen1 "#screen1" "3975770734"
    
    Assign_ubiquity_employer_values[["🔗 <em>Subflow</em><br/>Assign ubiquity employer values"]]:::subflows
    click Assign_ubiquity_employer_values "#assign_ubiquity_employer_values" "257276594"
    
    Redirect_to_new_lead --> END_Redirect_to_new_lead
    Copy_1_of_Define_New_Lead --> Find_Dupe_Lead
    Define_New_Lead --> Find_Dupe_Lead
    Dupe_Lead_Found_Check --> |"Dupe detected"| dupeScreen
    Dupe_Lead_Found_Check --> |"Default Outcome"| Screen1
    Proposal_Type --> |"Simply"| Define_New_Lead
    Proposal_Type --> |"Sallus"| Copy_1_of_Define_New_Lead
    Proposal_Type --> |"Ubiquity"| Assign_ubiquity_employer_values
    Proposal_Type --> |"Default Outcome"| Find_Dupe_Lead
    Create_New_Lead --> Redirect_to_new_lead
    Find_Dupe_Lead --> Dupe_Lead_Found_Check
    Grab_Proposal --> Proposal_Type
    dupeScreen --> END_dupeScreen
    Screen1 --> Create_New_Lead
    START -->  Grab_Proposal
    Assign_ubiquity_employer_values --> Find_Dupe_Lead
    END_Redirect_to_new_lead(( END )):::endClass
    END_dupeScreen(( END )):::endClass
    
    
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
    |Label|Proposal | Button | Generate Employer Lead|
    |Status|Active|
    |Description|Adding Min and Max Auto Deferral Perecentage. Moe 04.09.25|
    |Environments|Default|
    |Interview Label|Proposal | Button | Generate Simply Lead {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Grab_Proposal](#grab_proposal)|
    |Next Node|[Grab_Proposal](#grab_proposal)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |dupeLead|SObject|⬜|⬜|⬜|Lead|<!-- -->|
    |newLead|SObject|⬜|⬜|⬜|Lead|<!-- -->|
    |newLeadConvert|Boolean|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |recordId|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |referrerFirst|String|IF(TEXT({!Grab_Proposal.Referrer_Type__c})="TPA",{!Grab_Proposal.TPA_Contact__r.FirstName},<br/>IF(TEXT({!Grab_Proposal.Referrer_Type__c})="Advisor",{!Grab_Proposal.Advisor_Contact__r.FirstName},""))|<!-- -->|
    |referrerLast|String|IF(TEXT({!Grab_Proposal.Referrer_Type__c})="TPA",{!Grab_Proposal.TPA_Contact__r.LastName},<br/>IF(TEXT({!Grab_Proposal.Referrer_Type__c})="Advisor",{!Grab_Proposal.Advisor_Contact__r.LastName},""))|<!-- -->|
    |stateCode2Name|String|CASE({!Grab_Proposal.Company_State__c},<br/>'AL','Alabama',<br/>'AK','Alaska',<br/>'AZ','Arizona',<br/>'AR','Arkansas',<br/>'CA','California',<br/>'CO','Colorado',<br/>'CT','Connecticut',<br/>'DE','Delaware',<br/>'FL','Florida',<br/>'GA','Georgia',<br/>'HI','Hawaii',<br/>'ID','Idaho',<br/>'IL','Illinois',<br/>'IN','Indiana',<br/>'IA','Iowa',<br/>'KS','Kansas',<br/>'KY','Kentucky',<br/>'LA','Louisiana',<br/>'ME','Maine',<br/>'MD','Maryland',<br/>'MA','Massachusetts',<br/>'MI','Michigan',<br/>'MN','Minnesota',<br/>'MS','Mississippi',<br/>'MO','Missouri',<br/>'MT','Montana',<br/>'NE','Nebraska',<br/>'NV','Nevada',<br/>'NH','New Hampshire',<br/>'NJ','New Jersey',<br/>'NM','New Mexico',<br/>'NY','New York',<br/>'NC','North Carolina',<br/>'ND','North Dakota',<br/>'OH','Ohio',<br/>'OK','Oklahoma',<br/>'OR','Oregon',<br/>'PA','Pennsylvania',<br/>'RI','Rhode Island',<br/>'SC','South Carolina',<br/>'SD','South Dakota',<br/>'TN','Tennessee',<br/>'TX','Texas',<br/>'UT','Utah',<br/>'VT','Vermont',<br/>'VA','Virginia',<br/>'WA','Washington',<br/>'WV','West Virginia',<br/>'WI','Wisconsin',<br/>'WY','Wyoming',<br/>'Other')|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Redirect_to_new_lead
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Redirect to new lead|
    |Action Type|Component|
    |Action Name|ecflc:flowIdRedirect|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|ecflc:flowIdRedirect|
    |Offset|0|
    |Store Output Automatically|✅|
    |Record Id (input)|newLead.Id|
    
    
    ### Copy_1_of_Define_New_Lead
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Copy 1 of Define New Lead|
    |Connector|[Find_Dupe_Lead](#find_dupe_lead)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |newLead.Connected_Partner__c| Assign|Sallus|
    |newLead.Stage_Flag__c| Assign|Grab_Proposal.Stage_Flag__c|
    |newLead.Lead_Type__c| Assign|Employer|
    |newLead.Status| Assign|Assigned|
    |newLead.OwnerId| Assign|Grab_Proposal.OwnerId|
    |newLead.FirstName| Assign|Grab_Proposal.Company_Contact_First_Name__c|
    |newLead.LastName| Assign|Grab_Proposal.Company_Contact_Last_Name__c|
    |newLead.Email| Assign|Grab_Proposal.Company_Email__c|
    |newLead.Title| Assign|Grab_Proposal.Contact_Job_Title__c|
    |newLead.Phone| Assign|Grab_Proposal.Contact_Phone_Number__c|
    |newLead.Company| Assign|Grab_Proposal.Client_Company_Name__c|
    |newLead.NumberOfEmployees| Assign|Grab_Proposal.Number_of_Employees__c|
    |newLead.Company_FEIN__c| Assign|Grab_Proposal.Company_EIN__c|
    |newLead.State| Assign|stateCode2Name|
    |newLead.Country| Assign|United States|
    |newLead.PostalCode| Assign|Grab_Proposal.Company_Zip_Code__c|
    |newLead.Product_Type__c| Assign|Grab_Proposal.Product_Type__c|
    |newLead.Plan_Type__c| Assign|Grab_Proposal.Plan_Type__c|
    |newLead.Service_Option__c| Assign|Grab_Proposal.Service_Option__c|
    |newLead.Safe_Harbor__c| Assign|Grab_Proposal.Safe_Harbor__c|
    |newLead.Discretionary_Match_Formula_Notes__c| Assign|Grab_Proposal.Discretionary_Match_Formula_Notes__c|
    |newLead.Plan_Eligibility__c| Assign|Grab_Proposal.Plan_Eligibility__c|
    |newLead.Current_Plan__c| Assign|Not Comfortable Answering|
    |newLead.LeadSource| Assign|Sallus|
    |newLead.LeadSourceDetail__c| Assign|Grab_Proposal.X3_38__c|
    |newLead.Referrer_s_Email__c| Assign|Grab_Proposal.Referrer_Email__c|
    |newLead.ReferralInfo__c| Assign|Grab_Proposal.Financial_Professional_First_Name__c|
    |newLead.Referral_Info_Last_Name__c| Assign|Grab_Proposal.Financial_Professional_Last_Name__c|
    |newLead.Lead_Origin__c| Assign|Ubiquity Generated|
    |newLead.Method_of_First_Contact__c| Assign|Partner Referral|
    |newLead.Associated_Contact__c| Assign|Grab_Proposal.Advisor_Contact__c|
    |newLead.Associated_Contact_Role__c| Assign|Financial Advisor|
    |newLead.Advisor_Name__c| Assign|Grab_Proposal.Advisor_Contact__r.Name|
    |newLead.Advisor_Phone__c| Assign|Grab_Proposal.Advisor_Contact__r.Phone|
    |newLead.Advisor_NPN__c| Assign|Grab_Proposal.Advisor_Contact__r.NPN_Number__c|
    |newLead.Advisor_State__c| Assign|Grab_Proposal.Financial_Professional_State__c|
    |newLead.Associated_Partner__c| Assign|Grab_Proposal.Advisor_Account__c|
    |newLead.Associated_Partner_Role__c| Assign|Financial Advisory Firm|
    |newLead.Credentialed_Advisor__c| Assign|Grab_Proposal.Credentialed_Advisor__c|
    |newLead.RecordTypeId| Assign|012000000000n0kAAA|
    |newLead.Business_Unit__c| Assign|Ubiquity|
    
    
    
    
    ### Define_New_Lead
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Define New Lead|
    |Connector|[Find_Dupe_Lead](#find_dupe_lead)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |newLead.Connected_Partner__c| Assign|Simply Retirement|
    |newLead.Stage_Flag__c| Assign|Grab_Proposal.Stage_Flag__c|
    |newLead.Lead_Type__c| Assign|Employer|
    |newLead.Status| Assign|Assigned|
    |newLead.OwnerId| Assign|Grab_Proposal.OwnerId|
    |newLead.FirstName| Assign|Grab_Proposal.Company_Contact_First_Name__c|
    |newLead.LastName| Assign|Grab_Proposal.Company_Contact_Last_Name__c|
    |newLead.Email| Assign|Grab_Proposal.Company_Email__c|
    |newLead.Title| Assign|Grab_Proposal.Contact_Job_Title__c|
    |newLead.Phone| Assign|Grab_Proposal.Contact_Phone_Number__c|
    |newLead.Company| Assign|Grab_Proposal.Client_Company_Name__c|
    |newLead.NumberOfEmployees| Assign|Grab_Proposal.Number_of_Employees__c|
    |newLead.Company_FEIN__c| Assign|Grab_Proposal.Company_EIN__c|
    |newLead.State| Assign|stateCode2Name|
    |newLead.Country| Assign|United States|
    |newLead.PostalCode| Assign|Grab_Proposal.Company_Zip_Code__c|
    |newLead.Product_Type__c| Assign|Grab_Proposal.Product_Type__c|
    |newLead.Plan_Type__c| Assign|Grab_Proposal.Plan_Type__c|
    |newLead.Service_Option__c| Assign|Grab_Proposal.Service_Option__c|
    |newLead.Safe_Harbor__c| Assign|Grab_Proposal.Safe_Harbor__c|
    |newLead.Discretionary_Match_Formula_Notes__c| Assign|Grab_Proposal.Discretionary_Match_Formula_Notes__c|
    |newLead.Plan_Eligibility__c| Assign|Grab_Proposal.Plan_Eligibility__c|
    |newLead.Current_Plan__c| Assign|Not Comfortable Answering|
    |newLead.X3_38__c| Assign|Grab_Proposal.X3_38__c|
    |newLead.LeadSource| Assign|Simply Retirement|
    |newLead.LeadSourceDetail__c| Assign|Simply Advisor|
    |newLead.How_did_you_hear_about_Ubiquity__c| Assign|Simply Retirement|
    |newLead.Referrer_s_Email__c| Assign|Grab_Proposal.Referrer_Email__c|
    |newLead.ReferralInfo__c| Assign|Grab_Proposal.Financial_Professional_First_Name__c|
    |newLead.Referral_Info_Last_Name__c| Assign|Grab_Proposal.Financial_Professional_Last_Name__c|
    |newLead.Lead_Origin__c| Assign|Ubiquity Generated|
    |newLead.Method_of_First_Contact__c| Assign|Partner Referral|
    |newLead.Associated_Contact__c| Assign|Grab_Proposal.Advisor_Contact__c|
    |newLead.Associated_Contact_Role__c| Assign|Financial Advisor|
    |newLead.Advisor_Name__c| Assign|Grab_Proposal.Advisor_Contact__r.Name|
    |newLead.Advisor_Phone__c| Assign|Grab_Proposal.Advisor_Contact__r.Phone|
    |newLead.Advisor_NPN__c| Assign|Grab_Proposal.Advisor_Contact__r.NPN_Number__c|
    |newLead.Advisor_State__c| Assign|Grab_Proposal.Financial_Professional_State__c|
    |newLead.Associated_Partner__c| Assign|Grab_Proposal.Advisor_Account__c|
    |newLead.Associated_Partner_Role__c| Assign|Financial Advisory Firm|
    |newLead.Credentialed_Advisor__c| Assign|Grab_Proposal.Credentialed_Advisor__c|
    |newLead.RecordTypeId| Assign|012000000000n0kAAA|
    |newLead.Territory__c| Assign|Major Partner|
    |newLead.Business_Unit__c| Assign|Simply Retirement|
    |newLead.Advisory_Firm__c| Assign|Grab_Proposal.Firm_Name__c|
    |newLead.Advisor_Broker_Dealer__c| Assign|Grab_Proposal.Advisor_Broker_Dealer__c|
    |newLead.Parent_Broker_Dealer__c| Assign|Grab_Proposal.Advisor_Broker_Dealer__c|
    |newLead.Business_Industry__c| Assign|Not Yet Known|
    |newLead.Auto_Enrollment__c| Assign|Grab_Proposal.Auto_Enrollment__c|
    |newLead.Contribution_Type__c| Assign|Grab_Proposal.Employer_Contribution_Type__c|
    |newLead.minimumAutoDeferralPercentage__c| Assign|Grab_Proposal.Min_Auto_Deferral_Percentage__c|
    |newLead.maxAutoDeferralPercentage__c| Assign|Grab_Proposal.Max_Auto_Deferral_Percentage__c|
    
    
    
    
    ### Dupe_Lead_Found_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Dupe Lead Found Check|
    |Default Connector|[Screen1](#screen1)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Dupe_detected (Dupe detected)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[dupeScreen](#dupescreen)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|dupeLead.Id| Is Null|⬜|
    
    
    
    
    ### Proposal_Type
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Proposal Type|
    |Default Connector|[Find_Dupe_Lead](#find_dupe_lead)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Simply (Simply)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Define_New_Lead](#define_new_lead)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Grab_Proposal.RecordType.Name| Contains|Simply|
    
    
    
    
    #### Rule Sallus (Sallus)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Copy_1_of_Define_New_Lead](#copy_1_of_define_new_lead)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Grab_Proposal.RecordType.Name| Contains|Sallus|
    
    
    
    
    #### Rule Ubiquity (Ubiquity)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_ubiquity_employer_values](#assign_ubiquity_employer_values)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Grab_Proposal.RecordType.Name| Contains|OPD|
    
    
    
    
    ### Create_New_Lead
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Label|Create New Lead|
    |Input Reference|newLead|
    |Connector|[Redirect_to_new_lead](#redirect_to_new_lead)|
    
    
    ### Find_Dupe_Lead
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Lead|
    |Label|Find Dupe Lead|
    |Assign Null Values If No Records Found|⬜|
    |Output Reference|dupeLead|
    |Queried Fields|- Id<br/>- Name<br/>- Email<br/>- Phone<br/>- LeadID__c<br/>|
    |Connector|[Dupe_Lead_Found_Check](#dupe_lead_found_check)|
    
    
    #### Filters (logic: **(1 and 3) or (2 and 4)**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Email| Equal To|newLead.Email|
    |2|Phone| Equal To|newLead.Phone|
    |3|Email| Is Null|<!-- -->|
    |4|Phone| Is Null|<!-- -->|
    
    
    
    
    ### Grab_Proposal
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Proposal__c|
    |Label|Grab Proposal|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Proposal_Type](#proposal_type)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### dupeScreen
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|[dupeScreen](#dupescreen)|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|✅|
    |Show Footer|✅|
    |Show Header|✅|
    
    
    #### dupeFoundText
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p style="text-align: center;"><strong style="font-size: 16px;">Lead Creation Cancelled</strong></p><p style="text-align: center;"><br></p><p><span style="font-size: 12px;">This proposal appears to already have a lead:</span></p><p><br></p><p><span style="font-size: 12px;">{!dupeLead.Name}</span></p><p><span style="font-size: 12px;">{!dupeLead.Email}</span></p><p><span style="font-size: 12px;">{!dupeLead.Phone}</span></p><p><br></p><p><span style="font-size: 12px;">Click </span><a href="https://myubiquity.lightning.force.com/lightning/r/Lead/{!dupeLead.LeadID__c}/view" rel="noopener noreferrer" target="_blank" style="font-size: 12px;">here</a><span style="font-size: 12px;"> to view</span></p><p><br></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    ### Screen1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|[Screen1](#screen1)|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|✅|
    |Show Footer|✅|
    |Show Header|✅|
    |Connector|[Create_New_Lead](#create_new_lead)|
    
    
    #### screen1Header
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p style="text-align: center;"><strong style="font-size: 16px;">Please review lead info:</strong></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### newLeadInfo
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<ul><li><span style="font-size: 16px;">{!newLead.FirstName} </span><span style="font-size: 16px; color: rgb(68, 68, 68); background-color: rgb(255, 255, 255);">{!newLead.LastName}</span></li><li><span style="font-size: 16px;">{!newLead.Company}</span></li><li><span style="font-size: 16px;">{!newLead.Phone}</span></li><li><span style="font-size: 16px;">{!newLead.Email}</span></li></ul>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[Screen1_Section1_Column1](#screen1_section1_column1)|
    
    
    
    
    #### Screen1_Section1_Column1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region|
    |Is Required|⬜|
    |Parent Field|[Screen1_Section1](#screen1_section1)|
    |Width (input)|12|
    
    
    
    
    #### Screen1_Section1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region Container|
    |Is Required|⬜|
    |Region Container Type| Section Without Header|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    ### Assign_ubiquity_employer_values
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Subflow|
    |Label|Assign ubiquity employer values|
    |Flow Name|Proposal_Autolaunched_Assign_Lead_Values_From_Proposal|
    |Output Assignments|assignToReference: newLead<br/>name: newLead<br/>|
    |Connector|[Find_Dupe_Lead](#find_dupe_lead)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |<!-- -->|Grab_Proposal.OwnerId|
    |<!-- -->|Ubiquity Employer|
    |<!-- -->|[Grab_Proposal](#grab_proposal)|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

