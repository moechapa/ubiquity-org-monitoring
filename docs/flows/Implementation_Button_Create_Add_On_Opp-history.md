# Implementation_Button_Create_Add_On_Opp history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Implementation_Button_Create_Add_On_Opp-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Screen Flow</b>"]):::startClass
    click START "#general-information" "1037144164"
    
    Send_Initial_Payroll_Integration_Email("📧 <em></em><br/>Send Initial Payroll Integration Email"):::actionCalls
    click Send_Initial_Payroll_Integration_Email "#send_initial_payroll_integration_email" "3588402690"
    
    Add_to_Collection[\"🟰 <em></em><br/>Add to Collection"/]:::assignments
    click Add_to_Collection "#add_to_collection" "4057212199"
    
    Assign_Advisor_Emails_to_Collection[\"🟰 <em></em><br/>Assign Advisor Emails to Collection"/]:::assignments
    click Assign_Advisor_Emails_to_Collection "#assign_advisor_emails_to_collection" "3253585876"
    
    Assign_Case_Subj_and_Desc[\"🟰 <em></em><br/>Assign Case Subj and Desc"/]:::assignments
    click Assign_Case_Subj_and_Desc "#assign_case_subj_and_desc" "3402430616"
    
    Assign_DI_Service_Option[\"🟰 <em></em><br/>Assign DI Service Option"/]:::assignments
    click Assign_DI_Service_Option "#assign_di_service_option" "4213252629"
    
    Assign_Emails[\"🟰 <em></em><br/>Assign Emails"/]:::assignments
    click Assign_Emails "#assign_emails" "2303158930"
    
    Assign_EPS_Service_Option[\"🟰 <em></em><br/>Assign EPS Service Option"/]:::assignments
    click Assign_EPS_Service_Option "#assign_eps_service_option" "2967848628"
    
    Assign_Fault_Subj_and_Desc[\"🟰 <em></em><br/>Assign Fault Subj and Desc"/]:::assignments
    click Assign_Fault_Subj_and_Desc "#assign_fault_subj_and_desc" "1069199322"
    
    Assign_Sponsor_Email_to_Collection[\"🟰 <em></em><br/>Assign Sponsor Email to Collection"/]:::assignments
    click Assign_Sponsor_Email_to_Collection "#assign_sponsor_email_to_collection" "3391711694"
    
    Assign_Sponsor_Id_and_Email[\"🟰 <em></em><br/>Assign Sponsor Id and Email"/]:::assignments
    click Assign_Sponsor_Id_and_Email "#assign_sponsor_id_and_email" "1514692154"
    
    Clone_AC[\"🟰 <em></em><br/>Clone AC"/]:::assignments
    click Clone_AC "#clone_ac" "2583239614"
    
    oppAssignment[\"🟰 <em></em><br/>oppAssignment"/]:::assignments
    click oppAssignment "#oppassignment" "3539178961"
    
    Still_Null_Boolean[\"🟰 <em></em><br/>Still Null Boolean"/]:::assignments
    click Still_Null_Boolean "#still_null_boolean" "2247880019"
    
    Advisor_Trustee_or_other_Sponsor{"🔀 <em></em><br/>Advisor, Trustee, or other Sponsor?"}:::decisions
    click Advisor_Trustee_or_other_Sponsor "#advisor_trustee_or_other_sponsor" "2866760274"
    
    Confirm_Sponsor_Found{"🔀 <em></em><br/>Confirm Sponsor Found"}:::decisions
    click Confirm_Sponsor_Found "#confirm_sponsor_found" "805797151"
    
    EPS_Opp{"🔀 <em></em><br/>EPS Opp?"}:::decisions
    click EPS_Opp "#eps_opp" "361876303"
    
    EPS_or_DI{"🔀 <em></em><br/>EPS or DI"}:::decisions
    click EPS_or_DI "#eps_or_di" "4063800293"
    
    Gusto{"🔀 <em></em><br/>Gusto?"}:::decisions
    click Gusto "#gusto" "2588382018"
    
    Integration_Already_Exists{"🔀 <em></em><br/>Integration Already Exists"}:::decisions
    click Integration_Already_Exists "#integration_already_exists" "29893134"
    
    Multiple_Funding_Accounts_Decision{"🔀 <em></em><br/>Multiple Funding Accounts Decision"}:::decisions
    click Multiple_Funding_Accounts_Decision "#multiple_funding_accounts_decision" "4060997289"
    
    Payroll_Provider_Present{"🔀 <em></em><br/>Payroll Provider Present?"}:::decisions
    click Payroll_Provider_Present "#payroll_provider_present" "2425987474"
    
    Payroll_Provider_Still_Null{"🔀 <em></em><br/>Payroll Provider Still Null?"}:::decisions
    click Payroll_Provider_Still_Null "#payroll_provider_still_null" "3732925462"
    
    Sponsor{"🔀 <em></em><br/>Sponsor?"}:::decisions
    click Sponsor "#sponsor" "2874305152"
    
    AC_Loop{{"🔁 <em></em><br/>AC Loop"}}:::loops
    click AC_Loop "#ac_loop" "3330560283"
    
    Find_1_Sponsor_and_Advisors{{"🔁 <em></em><br/>Find 1 Sponsor and Advisors"}}:::loops
    click Find_1_Sponsor_and_Advisors "#find_1_sponsor_and_advisors" "2222045557"
    
    Copy_1_of_Create_Case_for_Payroll[("➕ <em></em><br/>Copy 1 of Create Case for Payroll")]:::recordCreates
    click Copy_1_of_Create_Case_for_Payroll "#copy_1_of_create_case_for_payroll" "2809949997"
    
    Create_AC[("➕ <em></em><br/>Create AC")]:::recordCreates
    click Create_AC "#create_ac" "3756479451"
    
    Create_Add_On_Opp[("➕ <em></em><br/>Create Add On Opp")]:::recordCreates
    click Create_Add_On_Opp "#create_add_on_opp" "2455615272"
    
    Create_Case_for_Payroll[("➕ <em></em><br/>Create Case for Payroll")]:::recordCreates
    click Create_Case_for_Payroll "#create_case_for_payroll" "3670014248"
    
    Get_Associated_Contacts[("🔍 <em></em><br/>Get Associated Contacts")]:::recordLookups
    click Get_Associated_Contacts "#get_associated_contacts" "1580999879"
    
    Get_Implementation[("🔍 <em></em><br/>Get Implementation")]:::recordLookups
    click Get_Implementation "#get_implementation" "47857136"
    
    Get_Payroll_Provider[("🔍 <em></em><br/>Get Payroll Provider")]:::recordLookups
    click Get_Payroll_Provider "#get_payroll_provider" "1990075592"
    
    Copy_1_of_Update_Payroll_Integration_and_Payroll_Provider_Field_on_Imp[("🛠️ <em></em><br/>Copy 1 of Update Payroll Integration and Payroll Provider Field on Imp")]:::recordUpdates
    click Copy_1_of_Update_Payroll_Integration_and_Payroll_Provider_Field_on_Imp "#copy_1_of_update_payroll_integration_and_payroll_provider_field_on_imp" "3795065986"
    
    Update_Payroll_Integration_Field_on_Imp[("🛠️ <em></em><br/>Update Payroll Integration Field on Imp")]:::recordUpdates
    click Update_Payroll_Integration_Field_on_Imp "#update_payroll_integration_field_on_imp" "2547610188"
    
    Update_Plan[("🛠️ <em></em><br/>Update Plan")]:::recordUpdates
    click Update_Plan "#update_plan" "3475402355"
    
    AlreadyExists(["💻 <em></em><br/>AlreadyExists"]):::screens
    click AlreadyExists "#alreadyexists" "2558873687"
    
    confirmFundingAcctScreen(["💻 <em></em><br/>confirmFundingAcctScreen"]):::screens
    click confirmFundingAcctScreen "#confirmfundingacctscreen" "2564355693"
    
    Enter_Payroll_Provider(["💻 <em></em><br/>Enter Payroll Provider"]):::screens
    click Enter_Payroll_Provider "#enter_payroll_provider" "2900496201"
    
    noMultipleFundingAccts(["💻 <em></em><br/>noMultipleFundingAccts"]):::screens
    click noMultipleFundingAccts "#nomultiplefundingaccts" "647936540"
    
    Payroll_Integration_Submitted_Successfully(["💻 <em></em><br/>Payroll Integration Submitted Successfully"]):::screens
    click Payroll_Integration_Submitted_Successfully "#payroll_integration_submitted_successfully" "813004118"
    
    Send_Initial_Payroll_Integration_Email --> Payroll_Integration_Submitted_Successfully
    Send_Initial_Payroll_Integration_Email -. Fault .->Assign_Fault_Subj_and_Desc
    Add_to_Collection --> AC_Loop
    Assign_Advisor_Emails_to_Collection --> Find_1_Sponsor_and_Advisors
    Assign_Case_Subj_and_Desc --> Create_Case_for_Payroll
    Assign_DI_Service_Option --> Create_Add_On_Opp
    Assign_Emails --> Assign_Advisor_Emails_to_Collection
    Assign_EPS_Service_Option --> Create_Add_On_Opp
    Assign_Fault_Subj_and_Desc --> Create_Case_for_Payroll
    Assign_Sponsor_Email_to_Collection --> Send_Initial_Payroll_Integration_Email
    Assign_Sponsor_Id_and_Email --> Find_1_Sponsor_and_Advisors
    Clone_AC --> Add_to_Collection
    oppAssignment --> EPS_or_DI
    Still_Null_Boolean --> Enter_Payroll_Provider
    Advisor_Trustee_or_other_Sponsor --> |"AC(s) Found"| Assign_Emails
    Advisor_Trustee_or_other_Sponsor --> |"Not a Financial Advisor"| Find_1_Sponsor_and_Advisors
    Confirm_Sponsor_Found --> |"Found Sponsor"| Assign_Sponsor_Email_to_Collection
    Confirm_Sponsor_Found --> |"Default Outcome"| Assign_Case_Subj_and_Desc
    EPS_Opp --> |"Yes, EPS"| Find_1_Sponsor_and_Advisors
    EPS_Opp --> |"Not EPS or Unknown"| Gusto
    EPS_or_DI --> |"EPS"| Assign_EPS_Service_Option
    EPS_or_DI --> |"Direct Integration"| Assign_DI_Service_Option
    EPS_or_DI --> |"Default Outcome"| Create_Add_On_Opp
    Gusto --> |"Yes, Gusto"| Copy_1_of_Create_Case_for_Payroll
    Gusto --> |"Default Outcome"| Payroll_Integration_Submitted_Successfully
    Integration_Already_Exists --> |"Integration Already Exists"| AlreadyExists
    Integration_Already_Exists --> |"Default Outcome"| Payroll_Provider_Present
    Multiple_Funding_Accounts_Decision --> |"Yes, Multiple"| noMultipleFundingAccts
    Multiple_Funding_Accounts_Decision --> |"Default Outcome"| Integration_Already_Exists
    Payroll_Provider_Present --> |"Yes, present"| Update_Payroll_Integration_Field_on_Imp
    Payroll_Provider_Present --> |"Default Outcome"| Enter_Payroll_Provider
    Payroll_Provider_Still_Null --> |"Still Null"| Still_Null_Boolean
    Payroll_Provider_Still_Null --> |"Default Outcome"| Copy_1_of_Update_Payroll_Integration_and_Payroll_Provider_Field_on_Imp
    Sponsor --> |"Yes, Sponsor"| Assign_Sponsor_Id_and_Email
    Sponsor --> |"Check for Advisors"| Advisor_Trustee_or_other_Sponsor
    AC_Loop --> |"For Each"|Clone_AC
    AC_Loop ---> |"After Last"|Create_AC
    Find_1_Sponsor_and_Advisors --> |"For Each"|Sponsor
    Find_1_Sponsor_and_Advisors ---> |"After Last"|Confirm_Sponsor_Found
    Copy_1_of_Create_Case_for_Payroll --> Payroll_Integration_Submitted_Successfully
    Create_AC --> EPS_Opp
    Create_Add_On_Opp --> Get_Associated_Contacts
    Create_Case_for_Payroll --> Payroll_Integration_Submitted_Successfully
    Get_Associated_Contacts --> AC_Loop
    Get_Implementation --> confirmFundingAcctScreen
    Get_Payroll_Provider --> Update_Plan
    Copy_1_of_Update_Payroll_Integration_and_Payroll_Provider_Field_on_Imp --> Get_Payroll_Provider
    Update_Payroll_Integration_Field_on_Imp --> Get_Payroll_Provider
    Update_Plan --> oppAssignment
    AlreadyExists --> END_AlreadyExists
    confirmFundingAcctScreen --> Multiple_Funding_Accounts_Decision
    Enter_Payroll_Provider --> Payroll_Provider_Still_Null
    noMultipleFundingAccts --> END_noMultipleFundingAccts
    Payroll_Integration_Submitted_Successfully --> END_Payroll_Integration_Submitted_Successfully
    START -->  Get_Implementation
    END_AlreadyExists(( END )):::endClass
    END_noMultipleFundingAccts(( END )):::endClass
    END_Payroll_Integration_Submitted_Successfully(( END )):::endClass
    
    
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
    |Label|Implementation | Button | Create Add-On Opp|
    |Status|⚠️ Draft|
    |Description|This step no longer triggers the Implementation | After Update | Create Add-On Opp flow, it creates the Opp and AC again and updates the Payroll Provider on the created Opp. It also sends the initial EPS email- 7/8/24 JI <br/>Added step at the end to update the initiating Imp.Payroll_Integration field to "Yes". Removed create Opp and AC elements, this button now triggers Implementation | After Update | Create Add-On Opp|
    |Environments|Default|
    |Interview Label|Implementation | After Update | Create Add-On Opp {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Implementation](#get_implementation)|
    |Next Node|[Get_Implementation](#get_implementation)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |acCollection|SObject|✅|✅|⬜|Associated_Contact__c|<!-- -->|
    |addOnOpp|SObject|⬜|✅|⬜|Opportunity|<!-- -->|
    |advisorEmail|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |caseDesc|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |caseSubj|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |emailsToSend|String|✅|✅|⬜|<!-- -->|<!-- -->|
    |newAC|SObject|⬜|✅|⬜|Associated_Contact__c|<!-- -->|
    |recordId|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |sponsorEmailForAlert|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |sponsorFound|Boolean|⬜|✅|⬜|<!-- -->|<!-- -->|
    |sponsorIdForAlert|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |stillNull|Boolean|⬜|✅|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |closeDate|Date|Today()+7|<!-- -->|
    |oppName|String|{!Get_Implementation.Name} + " – New Integration Request"|<!-- -->|
    
    
    ## Text Templates
    
    |Name|Text|Description|
    |:-- |:-- |:--  |
    |desc|No plan sponsor was found when searching the payroll integration opportunity. Please create associated contact record for plan sponsor and link it to the opportunity, then send the Initial Email manually. Once the associated contact record is created and linked, the subsequent emails will send automatically.|<!-- -->|
    |faultDesc|There was an error when the automation tried to send the initial payroll integration email. Please manually send the initial email to: {!emailsToSend}.|<!-- -->|
    |faultSubj|Error Sending Initial EPS Email for: {!Get_Implementation.Account__r.Name}|<!-- -->|
    |gustoCaseDesc|A new Gusto integration was requested. No initial email was auto-sent, please follow up manually.|<!-- -->|
    |gustoCaseSubj|New Gust Integration Request|<!-- -->|
    |subject|No Sponsor Found for Email Alerts for {!Get_Implementation.Account__r.Name}|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Send_Initial_Payroll_Integration_Email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send Initial Payroll Integration Email|
    |Action Type|Email Simple|
    |Action Name|emailSimple|
    |Fault Connector|[Assign_Fault_Subj_and_Desc](#assign_fault_subj_and_desc)|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|emailSimple|
    |Offset|0|
    |Email Addresses Array (input)|emailsToSend|
    |Sender Type (input)|OrgWideEmailAddress|
    |Sender Address (input)|ubiquitypayroll@myubiquity.com|
    |Related Record Id (input)|addOnOpp.Id|
    |Recipient Id (input)|sponsorIdForAlert|
    |Log Email On Send (input)|✅|
    |Email Template Id (input)|00XUo000000wQ3l|
    |Connector|[Payroll_Integration_Submitted_Successfully](#payroll_integration_submitted_successfully)|
    
    
    ### Add_to_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add to Collection|
    |Connector|[AC_Loop](#ac_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |acCollection| Add|newAC|
    
    
    
    
    ### Assign_Advisor_Emails_to_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Advisor Emails to Collection|
    |Connector|[Find_1_Sponsor_and_Advisors](#find_1_sponsor_and_advisors)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |emailsToSend| Add|advisorEmail|
    
    
    
    
    ### Assign_Case_Subj_and_Desc
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Case Subj and Desc|
    |Connector|[Create_Case_for_Payroll](#create_case_for_payroll)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |caseDesc| Assign|desc|
    |caseSubj| Assign|subject|
    
    
    
    
    ### Assign_DI_Service_Option
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign DI Service Option|
    |Connector|[Create_Add_On_Opp](#create_add_on_opp)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |addOnOpp.Service_Option__c| Assign|Direct Integration|
    
    
    
    
    ### Assign_Emails
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Emails|
    |Connector|[Assign_Advisor_Emails_to_Collection](#assign_advisor_emails_to_collection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |advisorEmail| Assign|Find_1_Sponsor_and_Advisors.Useable_Email__c|
    
    
    
    
    ### Assign_EPS_Service_Option
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign EPS Service Option|
    |Connector|[Create_Add_On_Opp](#create_add_on_opp)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |addOnOpp.Service_Option__c| Assign|Enhanced Payroll Service|
    
    
    
    
    ### Assign_Fault_Subj_and_Desc
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Fault Subj and Desc|
    |Connector|isGoTo: true<br/>targetReference: Create_Case_for_Payroll<br/>|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |caseSubj| Assign|faultSubj|
    |caseDesc| Assign|faultDesc|
    
    
    
    
    ### Assign_Sponsor_Email_to_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Sponsor Email to Collection|
    |Connector|[Send_Initial_Payroll_Integration_Email](#send_initial_payroll_integration_email)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |emailsToSend| Add|sponsorEmailForAlert|
    
    
    
    
    ### Assign_Sponsor_Id_and_Email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Sponsor Id and Email|
    |Connector|[Find_1_Sponsor_and_Advisors](#find_1_sponsor_and_advisors)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |sponsorEmailForAlert| Assign|Find_1_Sponsor_and_Advisors.Useable_Email__c|
    |sponsorIdForAlert| Assign|Find_1_Sponsor_and_Advisors.Contact__r.Id|
    |sponsorFound| Assign|✅|
    
    
    
    
    ### Clone_AC
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Clone AC|
    |Connector|[Add_to_Collection](#add_to_collection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |newAC.Account__c| Assign|AC_Loop.Account__c|
    |newAC.Contact__c| Assign|AC_Loop.Contact__c|
    |newAC.Contact_Role__c| Assign|AC_Loop.Contact_Role__c|
    |newAC.Business_Unit__c| Assign|AC_Loop.Business_Unit__c|
    |newAC.Opportunity__c| Assign|addOnOpp.Id|
    |newAC.Primary__c| Assign|AC_Loop.Primary__c|
    |newAC.Useable_Email__c| Assign|AC_Loop.Email__c|
    
    
    
    
    ### oppAssignment
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|[oppAssignment](#oppassignment)|
    |Connector|[EPS_or_DI](#eps_or_di)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |addOnOpp.OwnerId| Assign|00537000002STLD|
    |addOnOpp.AccountId| Assign|Get_Implementation.Account__c|
    |addOnOpp.Plan__c| Assign|Get_Implementation.Plan__c|
    |addOnOpp.LeadSource| Assign|Get_Implementation.Opportunity_Name__r.LeadSource|
    |addOnOpp.LeadSourceDetail__c| Assign|Get_Implementation.Opportunity_Name__r.LeadSourceDetail__c|
    |addOnOpp.Product_Type__c| Assign|Add-On Product|
    |addOnOpp.Business_Unit__c| Assign|Get_Implementation.Business_Unit__c|
    |addOnOpp.CloseDate| Assign|closeDate|
    |addOnOpp.Opportunity_Notes__c| Assign|Get_Implementation.Opportunity_Notes__c|
    |addOnOpp.Name| Assign|oppName|
    |addOnOpp.StageName| Assign|New Integration Request|
    |addOnOpp.RecordTypeId| Assign|01237000000N0d7AAC|
    |addOnOpp.Implementation__c| Assign|Get_Implementation.Id|
    |addOnOpp.Payroll_Provider__c| Assign|Get_Implementation.Products_Services__c|
    
    
    
    
    ### Still_Null_Boolean
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Still Null Boolean|
    |Connector|isGoTo: true<br/>targetReference: Enter_Payroll_Provider<br/>|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |stillNull| Assign|✅|
    
    
    
    
    ### Advisor_Trustee_or_other_Sponsor
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Advisor, Trustee, or other Sponsor?|
    |Default Connector|[Find_1_Sponsor_and_Advisors](#find_1_sponsor_and_advisors)|
    |Default Connector Label|Not a Financial Advisor|
    
    
    #### Rule AC_s_Found (AC(s) Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Emails](#assign_emails)|
    |Condition Logic|2 AND ( 1 OR 3 OR 4)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Find_1_Sponsor_and_Advisors.Contact_Role__c| Equal To|Financial Advisor|
    |2|Find_1_Sponsor_and_Advisors.Useable_Email__c| Is Blank|⬜|
    |3|Find_1_Sponsor_and_Advisors.Contact_Role__c| Contains|[Sponsor](#sponsor)|
    |4|Find_1_Sponsor_and_Advisors.Contact_Role__c| Contains|Trustee|
    
    
    
    
    ### Confirm_Sponsor_Found
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Confirm Sponsor Found|
    |Default Connector|[Assign_Case_Subj_and_Desc](#assign_case_subj_and_desc)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Found_Sponsor (Found Sponsor)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Sponsor_Email_to_Collection](#assign_sponsor_email_to_collection)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|sponsorFound| Equal To|✅|
    
    
    
    
    ### EPS_Opp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|EPS Opp?|
    |Default Connector|[Gusto](#gusto)|
    |Default Connector Label|Not EPS or Unknown|
    
    
    #### Rule Yes_EPS (Yes, EPS)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Find_1_Sponsor_and_Advisors](#find_1_sponsor_and_advisors)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Payroll_Provider.Opportunity_Type__c| Equal To|EPS|
    |2|Get_Payroll_Provider.Name| Not Equal To|[Gusto](#gusto)|
    
    
    
    
    ### EPS_or_DI
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|EPS or DI|
    |Default Connector|[Create_Add_On_Opp](#create_add_on_opp)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule EPS (EPS)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_EPS_Service_Option](#assign_eps_service_option)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Payroll_Provider.Opportunity_Type__c| Equal To|EPS|
    
    
    
    
    #### Rule Direct_Integration (Direct Integration)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_DI_Service_Option](#assign_di_service_option)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Implementation.Products_Services__r.Opportunity_Type__c| Equal To|Direct Integration|
    
    
    
    
    ### Gusto
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Gusto?|
    |Default Connector|[Payroll_Integration_Submitted_Successfully](#payroll_integration_submitted_successfully)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes_Gusto (Yes, Gusto)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Copy_1_of_Create_Case_for_Payroll](#copy_1_of_create_case_for_payroll)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Payroll_Provider.Name| Equal To|[Gusto](#gusto)|
    
    
    
    
    ### Integration_Already_Exists
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Integration Already Exists|
    |Default Connector|[Payroll_Provider_Present](#payroll_provider_present)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Integration_Already_Exists1 (Integration Already Exists)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[AlreadyExists](#alreadyexists)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Implementation.Payroll_Integration__c| Equal To|Yes|
    
    
    
    
    ### Multiple_Funding_Accounts_Decision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Multiple Funding Accounts Decision|
    |Default Connector|[Integration_Already_Exists](#integration_already_exists)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes_Multiple (Yes, Multiple)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[noMultipleFundingAccts](#nomultiplefundingaccts)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Multiple_Funding_Accounts| Equal To|yes|
    
    
    
    
    ### Payroll_Provider_Present
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Payroll Provider Present?|
    |Default Connector|[Enter_Payroll_Provider](#enter_payroll_provider)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes_present (Yes, present)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Payroll_Integration_Field_on_Imp](#update_payroll_integration_field_on_imp)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Implementation.Products_Services__c| Is Null|⬜|
    
    
    
    
    ### Payroll_Provider_Still_Null
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Payroll Provider Still Null?|
    |Default Connector|[Copy_1_of_Update_Payroll_Integration_and_Payroll_Provider_Field_on_Imp](#copy_1_of_update_payroll_integration_and_payroll_provider_field_on_imp)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Still_Null (Still Null)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Still_Null_Boolean](#still_null_boolean)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Implementation.Products_Services__c| Is Null|✅|
    
    
    
    
    ### Sponsor
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Sponsor?|
    |Default Connector|[Advisor_Trustee_or_other_Sponsor](#advisor_trustee_or_other_sponsor)|
    |Default Connector Label|Check for Advisors|
    
    
    #### Rule Yes_Sponsor (Yes, Sponsor)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Sponsor_Id_and_Email](#assign_sponsor_id_and_email)|
    |Condition Logic|(1 OR 2) AND 3 AND 4|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Find_1_Sponsor_and_Advisors.Contact_Role__c| Contains|[Sponsor](#sponsor)|
    |2|Find_1_Sponsor_and_Advisors.Contact_Role__c| Equal To|Authorized Buyer|
    |3|Find_1_Sponsor_and_Advisors.Useable_Email__c| Is Blank|⬜|
    |4|sponsorFound| Equal To|⬜|
    
    
    
    
    ### AC_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|AC Loop|
    |Collection Reference|[Get_Associated_Contacts](#get_associated_contacts)|
    |Iteration Order|Asc|
    |Next Value Connector|[Clone_AC](#clone_ac)|
    |No More Values Connector|[Create_AC](#create_ac)|
    
    
    ### Find_1_Sponsor_and_Advisors
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Find 1 Sponsor and Advisors|
    |Collection Reference|acCollection|
    |Iteration Order|Asc|
    |Next Value Connector|[Sponsor](#sponsor)|
    |No More Values Connector|[Confirm_Sponsor_Found](#confirm_sponsor_found)|
    
    
    ### Copy_1_of_Create_Case_for_Payroll
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Copy 1 of Create Case for Payroll|
    |Store Output Automatically|✅|
    |Connector|[Payroll_Integration_Submitted_Successfully](#payroll_integration_submitted_successfully)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|Get_Implementation.Account__c|
    |Department__c|Payroll|
    |Description|gustoCaseDesc|
    |OwnerId|00537000002STLD|
    |Plan__c|Get_Implementation.Plan__c|
    |Sender_Role__c|[Sponsor](#sponsor)|
    |Subject|gustoCaseSubj|
    
    
    
    
    ### Create_AC
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Label|Create AC|
    |Input Reference|acCollection|
    |Connector|[EPS_Opp](#eps_opp)|
    
    
    ### Create_Add_On_Opp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Label|Create Add On Opp|
    |Input Reference|addOnOpp|
    |Connector|[Get_Associated_Contacts](#get_associated_contacts)|
    
    
    ### Create_Case_for_Payroll
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Create Case for Payroll|
    |Store Output Automatically|✅|
    |Connector|[Payroll_Integration_Submitted_Successfully](#payroll_integration_submitted_successfully)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|Get_Implementation.Account__c|
    |Department__c|Payroll|
    |Description|caseDesc|
    |OwnerId|00537000002STLD|
    |Plan__c|Get_Implementation.Plan__c|
    |Sender_Role__c|[Sponsor](#sponsor)|
    |Subject|caseSubj|
    
    
    
    
    ### Get_Associated_Contacts
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Associated_Contact__c|
    |Label|Get Associated Contacts|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Store Output Automatically|✅|
    |Connector|[AC_Loop](#ac_loop)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Implementation__c| Equal To|Get_Implementation.Id|
    
    
    
    
    ### Get_Implementation
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Implementation__c|
    |Label|Get Implementation|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[confirmFundingAcctScreen](#confirmfundingacctscreen)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Get_Payroll_Provider
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Products_Services__c|
    |Label|Get Payroll Provider|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Update_Plan](#update_plan)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Implementation.Products_Services__c|
    
    
    
    
    ### Copy_1_of_Update_Payroll_Integration_and_Payroll_Provider_Field_on_Imp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Implementation__c|
    |Label|Copy 1 of Update Payroll Integration and Payroll Provider Field on Imp|
    |Connector|[Get_Payroll_Provider](#get_payroll_provider)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Implementation.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Payroll_Integration__c|Yes|
    |Products_Services__c|Get_Implementation.Products_Services__c|
    
    
    
    
    ### Update_Payroll_Integration_Field_on_Imp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Implementation__c|
    |Label|Update Payroll Integration Field on Imp|
    |Connector|[Get_Payroll_Provider](#get_payroll_provider)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Implementation.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Payroll_Integration__c|Yes|
    
    
    
    
    ### Update_Plan
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Plan__c|
    |Label|Update Plan|
    |Connector|[oppAssignment](#oppassignment)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Implementation.Plan__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Products_Services__c|Get_Implementation.Products_Services__c|
    
    
    
    
    ### AlreadyExists
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|[AlreadyExists](#alreadyexists)|
    |Allow Back|⬜|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Next Or Finish Button Label|Confirm|
    |Show Footer|✅|
    |Show Header|⬜|
    
    
    #### Exists
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p style="text-align: center;">A payroll integration opportunity already exists for this plan. </p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    ### confirmFundingAcctScreen
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|[confirmFundingAcctScreen](#confirmfundingacctscreen)|
    |Allow Back|⬜|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Next Or Finish Button Label|Next|
    |Show Footer|✅|
    |Show Header|⬜|
    |Connector|[Multiple_Funding_Accounts_Decision](#multiple_funding_accounts_decision)|
    
    
    #### fundAcctDisplay
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p style="text-align: center;"><strong style="font-size: 18px; background-color: rgb(255, 255, 255);"><u>Does the client want to use multiple funding accounts?</u></strong></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Multiple_Funding_Accounts
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|- 'yes'<br/>- 'no'<br/>|
    |Field Text|Multiple Funding Accounts?|
    |Field Type| Dropdown Box|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    ### Enter_Payroll_Provider
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|Enter Payroll Provider|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|✅|
    |Show Footer|✅|
    |Show Header|⬜|
    |Connector|[Payroll_Provider_Still_Null](#payroll_provider_still_null)|
    
    
    #### payrollProviderDisplay
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p style="text-align: center;"><strong style="font-size: 16px;"><u>Please choose a payroll provider before requesting integration.</u></strong></p><p style="text-align: center;"><br></p><p style="text-align: center;"><strong style="font-size: 14px;">If you do not see the correct Payroll Provider, reach out to the Payroll team to add the new Payroll Provider.</strong></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### errorMessage
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p style="text-align: center;"><strong style="font-size: 16px; color: rgb(231, 17, 17);">You must enter a payroll provider to proceed.</strong></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: stillNull<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;booleanValue: true<br/>|
    
    
    
    
    #### Get_Implementation.Products_Services__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|Get_Implementation.Products_Services__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    ### noMultipleFundingAccts
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|[noMultipleFundingAccts](#nomultiplefundingaccts)|
    |Allow Back|⬜|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Next Or Finish Button Label|Exit|
    |Show Footer|✅|
    |Show Header|⬜|
    
    
    #### noMultipleFundingDisplay
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p style="text-align: center;"><strong style="font-size: 18px; color: rgb(255, 3, 3);">We are not able to support payroll integration with multiple funding accounts.</strong></p><p style="text-align: center;"><br></p><p style="text-align: center;"><strong style="font-size: 18px; color: rgb(255, 3, 3);">Please let the client know we will not be able to set up payroll integration.</strong></p><p style="text-align: center;"><br></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    ### Payroll_Integration_Submitted_Successfully
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|Payroll Integration Submitted Successfully|
    |Allow Back|⬜|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Next Or Finish Button Label|Finish|
    |Show Footer|✅|
    |Show Header|⬜|
    
    
    #### ConfirmationMessage
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p>Your Payroll Integration request for {!Get_Implementation.Account__r.Name} has been submitted successfully. Please reach out to the Payroll team for further updates.</p><p><br></p><p><br></p><p style="text-align: center;"><strong style="font-size: 18px; color: rgb(55, 53, 205);"><u>Please Click "Finish" to Exit</u></strong></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

