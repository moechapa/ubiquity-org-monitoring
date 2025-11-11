# Plan_Button_Create_Payroll_Integration_Opp history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Plan_Button_Create_Payroll_Integration_Opp-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Screen Flow</b>"]):::startClass
    click START "#general-information" "1047357890"
    
    Send_Initial_Payroll_Integration_Email("📧 <em></em><br/>Send Initial Payroll Integration Email"):::actionCalls
    click Send_Initial_Payroll_Integration_Email "#send_initial_payroll_integration_email" "3623312693"
    
    Add_to_Collection[\"🟰 <em></em><br/>Add to Collection"/]:::assignments
    click Add_to_Collection "#add_to_collection" "4057212199"
    
    Assign_DI_Service_Option[\"🟰 <em></em><br/>Assign DI Service Option"/]:::assignments
    click Assign_DI_Service_Option "#assign_di_service_option" "4213252629"
    
    Assign_Emails[\"🟰 <em></em><br/>Assign Emails"/]:::assignments
    click Assign_Emails "#assign_emails" "3014612549"
    
    Assign_EPS_Service_Option[\"🟰 <em></em><br/>Assign EPS Service Option"/]:::assignments
    click Assign_EPS_Service_Option "#assign_eps_service_option" "2967848628"
    
    Assign_Fault_Case_Subj_and_Desc[\"🟰 <em></em><br/>Assign Fault Case Subj and Desc"/]:::assignments
    click Assign_Fault_Case_Subj_and_Desc "#assign_fault_case_subj_and_desc" "949918357"
    
    Assign_Sponsor_Email[\"🟰 <em></em><br/>Assign Sponsor Email"/]:::assignments
    click Assign_Sponsor_Email "#assign_sponsor_email" "4154807278"
    
    Assign_Sponsor_Email_to_Collection[\"🟰 <em></em><br/>Assign Sponsor Email to Collection"/]:::assignments
    click Assign_Sponsor_Email_to_Collection "#assign_sponsor_email_to_collection" "749070494"
    
    Assign_to_Email_Collection[\"🟰 <em></em><br/>Assign to Email Collection"/]:::assignments
    click Assign_to_Email_Collection "#assign_to_email_collection" "2218092378"
    
    Case_Subject_and_Description[\"🟰 <em></em><br/>Case Subject and Description"/]:::assignments
    click Case_Subject_and_Description "#case_subject_and_description" "3099399939"
    
    Clone_AC[\"🟰 <em></em><br/>Clone AC"/]:::assignments
    click Clone_AC "#clone_ac" "3355801305"
    
    Copy_2_of_Add_to_Collection[\"🟰 <em></em><br/>Copy 2 of Add to Collection"/]:::assignments
    click Copy_2_of_Add_to_Collection "#copy_2_of_add_to_collection" "2382551624"
    
    Copy_2_of_Clone_AC[\"🟰 <em></em><br/>Copy 2 of Clone AC"/]:::assignments
    click Copy_2_of_Clone_AC "#copy_2_of_clone_ac" "3138690828"
    
    oppAssignment[\"🟰 <em></em><br/>oppAssignment"/]:::assignments
    click oppAssignment "#oppassignment" "2366317049"
    
    Still_Null_Boolean[\"🟰 <em></em><br/>Still Null Boolean"/]:::assignments
    click Still_Null_Boolean "#still_null_boolean" "2247880019"
    
    Advisor_Trustees_or_Additional_Sponsors{"🔀 <em></em><br/>Advisor, Trustees or Additional Sponsors?"}:::decisions
    click Advisor_Trustees_or_Additional_Sponsors "#advisor_trustees_or_additional_sponsors" "124546716"
    
    Backup_Contact_Selected{"🔀 <em></em><br/>Backup Contact Selected?"}:::decisions
    click Backup_Contact_Selected "#backup_contact_selected" "4045787551"
    
    Confirm_Sponsor_Found{"🔀 <em></em><br/>Confirm Sponsor Found"}:::decisions
    click Confirm_Sponsor_Found "#confirm_sponsor_found" "4082720009"
    
    EPS_Opp{"🔀 <em></em><br/>EPS Opp?"}:::decisions
    click EPS_Opp "#eps_opp" "833620476"
    
    EPS_or_DI{"🔀 <em></em><br/>EPS or DI"}:::decisions
    click EPS_or_DI "#eps_or_di" "1114379083"
    
    Gusto{"🔀 <em></em><br/>Gusto?"}:::decisions
    click Gusto "#gusto" "3575082721"
    
    Multiple_Funding_Accounts{"🔀 <em></em><br/>Multiple Funding Accounts?"}:::decisions
    click Multiple_Funding_Accounts "#multiple_funding_accounts" "4285928343"
    
    Payroll_Provider_Still_Null{"🔀 <em></em><br/>Payroll Provider Still Null?"}:::decisions
    click Payroll_Provider_Still_Null "#payroll_provider_still_null" "3483825372"
    
    Sponsor{"🔀 <em></em><br/>Sponsor?"}:::decisions
    click Sponsor "#sponsor" "2383453429"
    
    AC_Loop{{"🔁 <em></em><br/>AC Loop"}}:::loops
    click AC_Loop "#ac_loop" "2842315323"
    
    backupLoop{{"🔁 <em></em><br/>backupLoop"}}:::loops
    click backupLoop "#backuploop" "4102177579"
    
    Find_Sponsor_and_Advisors{{"🔁 <em></em><br/>Find Sponsor and Advisors"}}:::loops
    click Find_Sponsor_and_Advisors "#find_sponsor_and_advisors" "3070404579"
    
    Copy_1_of_Create_Case_for_Payroll[("➕ <em></em><br/>Copy 1 of Create Case for Payroll")]:::recordCreates
    click Copy_1_of_Create_Case_for_Payroll "#copy_1_of_create_case_for_payroll" "207107190"
    
    Create_AC[("➕ <em></em><br/>Create AC")]:::recordCreates
    click Create_AC "#create_ac" "3756479451"
    
    Create_Add_On_Opp[("➕ <em></em><br/>Create Add On Opp")]:::recordCreates
    click Create_Add_On_Opp "#create_add_on_opp" "3887822620"
    
    Create_Case_for_Payroll[("➕ <em></em><br/>Create Case for Payroll")]:::recordCreates
    click Create_Case_for_Payroll "#create_case_for_payroll" "2313633526"
    
    Get_Associated_Contacts[("🔍 <em></em><br/>Get Associated Contacts")]:::recordLookups
    click Get_Associated_Contacts "#get_associated_contacts" "3091133987"
    
    Get_Contacts[("🔍 <em></em><br/>Get Contacts")]:::recordLookups
    click Get_Contacts "#get_contacts" "1323167601"
    
    Get_Payroll_Provider[("🔍 <em></em><br/>Get Payroll Provider")]:::recordLookups
    click Get_Payroll_Provider "#get_payroll_provider" "1381864794"
    
    Get_Plan[("🔍 <em></em><br/>Get Plan")]:::recordLookups
    click Get_Plan "#get_plan" "1111851245"
    
    Update_Payroll_Provider_on_Plan[("🛠️ <em></em><br/>Update Payroll Provider on Plan")]:::recordUpdates
    click Update_Payroll_Provider_on_Plan "#update_payroll_provider_on_plan" "4178592131"
    
    Confirm_AC_Records_to_Create(["💻 <em></em><br/>Confirm AC Records to Create"]):::screens
    click Confirm_AC_Records_to_Create "#confirm_ac_records_to_create" "1216367925"
    
    confirmFundingAcctScreen(["💻 <em></em><br/>confirmFundingAcctScreen"]):::screens
    click confirmFundingAcctScreen "#confirmfundingacctscreen" "2367586059"
    
    Enter_Payroll_Provider(["💻 <em></em><br/>Enter Payroll Provider"]):::screens
    click Enter_Payroll_Provider "#enter_payroll_provider" "3937771892"
    
    noMultipleFundingAccts(["💻 <em></em><br/>noMultipleFundingAccts"]):::screens
    click noMultipleFundingAccts "#nomultiplefundingaccts" "1066234645"
    
    Payroll_Integration_Submitted_Successfully(["💻 <em></em><br/>Payroll Integration Submitted Successfully"]):::screens
    click Payroll_Integration_Submitted_Successfully "#payroll_integration_submitted_successfully" "2593820883"
    
    Send_Initial_Payroll_Integration_Email --> Payroll_Integration_Submitted_Successfully
    Send_Initial_Payroll_Integration_Email -. Fault .->Assign_Fault_Case_Subj_and_Desc
    Add_to_Collection --> AC_Loop
    Assign_DI_Service_Option --> Create_Add_On_Opp
    Assign_Emails --> Assign_to_Email_Collection
    Assign_EPS_Service_Option --> Create_Add_On_Opp
    Assign_Fault_Case_Subj_and_Desc --> Create_Case_for_Payroll
    Assign_Sponsor_Email --> Find_Sponsor_and_Advisors
    Assign_Sponsor_Email_to_Collection --> Send_Initial_Payroll_Integration_Email
    Assign_to_Email_Collection --> Find_Sponsor_and_Advisors
    Case_Subject_and_Description --> Create_Case_for_Payroll
    Clone_AC --> Add_to_Collection
    Copy_2_of_Add_to_Collection --> backupLoop
    Copy_2_of_Clone_AC --> Copy_2_of_Add_to_Collection
    oppAssignment --> EPS_or_DI
    Still_Null_Boolean --> Enter_Payroll_Provider
    Advisor_Trustees_or_Additional_Sponsors --> |"Advisor(s), Trustee(s), or Sponsor(s) Found"| Assign_Emails
    Advisor_Trustees_or_Additional_Sponsors --> |"Default Outcome"| Find_Sponsor_and_Advisors
    Backup_Contact_Selected --> |"Yes, Contact Selected"| backupLoop
    Backup_Contact_Selected --> |"Default Outcome"| Create_AC
    Confirm_Sponsor_Found --> |"Found Sponsor"| Assign_Sponsor_Email_to_Collection
    Confirm_Sponsor_Found --> |"No Sponsor AC Record Found"| Case_Subject_and_Description
    EPS_Opp --> |"Yes, EPS"| Find_Sponsor_and_Advisors
    EPS_Opp --> |"Not EPS or Unknown"| Gusto
    EPS_or_DI --> |"EPS"| Assign_EPS_Service_Option
    EPS_or_DI --> |"Direct Integration"| Assign_DI_Service_Option
    EPS_or_DI --> |"Default Outcome"| Create_Add_On_Opp
    Gusto --> |"Yes, Gusto"| Copy_1_of_Create_Case_for_Payroll
    Gusto --> |"Default Outcome"| Payroll_Integration_Submitted_Successfully
    Multiple_Funding_Accounts --> |"Yes"| noMultipleFundingAccts
    Multiple_Funding_Accounts --> |"Default Outcome"| Enter_Payroll_Provider
    Payroll_Provider_Still_Null --> |"Still Null"| Still_Null_Boolean
    Payroll_Provider_Still_Null --> |"Default Outcome"| oppAssignment
    Sponsor --> |"Sponsor Found"| Assign_Sponsor_Email
    Sponsor --> |"Check for Advisors and Other Sponsors"| Advisor_Trustees_or_Additional_Sponsors
    AC_Loop --> |"For Each"|Clone_AC
    AC_Loop ---> |"After Last"|Backup_Contact_Selected
    backupLoop --> |"For Each"|Copy_2_of_Clone_AC
    backupLoop ---> |"After Last"|Create_AC
    Find_Sponsor_and_Advisors --> |"For Each"|Sponsor
    Find_Sponsor_and_Advisors ---> |"After Last"|Confirm_Sponsor_Found
    Copy_1_of_Create_Case_for_Payroll --> Payroll_Integration_Submitted_Successfully
    Create_AC --> EPS_Opp
    Create_Add_On_Opp --> Update_Payroll_Provider_on_Plan
    Create_Case_for_Payroll --> Payroll_Integration_Submitted_Successfully
    Get_Associated_Contacts --> Get_Contacts
    Get_Contacts --> Confirm_AC_Records_to_Create
    Get_Payroll_Provider --> Payroll_Provider_Still_Null
    Get_Plan --> confirmFundingAcctScreen
    Update_Payroll_Provider_on_Plan --> Get_Associated_Contacts
    Confirm_AC_Records_to_Create --> AC_Loop
    confirmFundingAcctScreen --> Multiple_Funding_Accounts
    Enter_Payroll_Provider --> Get_Payroll_Provider
    noMultipleFundingAccts --> END_noMultipleFundingAccts
    Payroll_Integration_Submitted_Successfully --> END_Payroll_Integration_Submitted_Successfully
    START -->  Get_Plan
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
    |Label|Plan | Button | Create Payroll Integration Opp|
    |Status|⚠️ Draft|
    |Environments|Default|
    |Interview Label|Plan | Button | Create Add-On Opp {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Plan](#get_plan)|
    |Next Node|[Get_Plan](#get_plan)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |acCollection|SObject|✅|✅|⬜|Associated_Contact__c|<!-- -->|
    |acFromScreen|SObject|⬜|✅|⬜|Associated_Contact__c|<!-- -->|
    |additionalEmails|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |addOnOpp|SObject|⬜|✅|⬜|Opportunity|<!-- -->|
    |backupContacts|SObject|✅|✅|⬜|Contact|<!-- -->|
    |caseDesc|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |caseSubject|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |contactFromScreen|SObject|⬜|✅|⬜|Contact|<!-- -->|
    |emailsToSend|String|✅|✅|⬜|<!-- -->|<!-- -->|
    |newAC|SObject|⬜|✅|⬜|Associated_Contact__c|<!-- -->|
    |newContactId|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |recordId|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |sponsorEmailforAlert|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |sponsorFound|Boolean|⬜|✅|⬜|<!-- -->|<!-- -->|
    |sponsorIdForAlert|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |stillNull|Boolean|⬜|✅|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |closeDate|Date|Today()+7|<!-- -->|
    |oppName|String|{!Get_Plan.Name} + " – New Integration Request"|<!-- -->|
    |test|String|{!emailsToSend}|<!-- -->|
    
    
    ## Text Templates
    
    |Name|Text|Description|
    |:-- |:-- |:--  |
    |desc|No plan sponsor was found when searching the payroll integration opportunity. Please create associated contact record for plan sponsor and link it to the opportunity, then send the Initial Email manually. Once the associated contact record is created and linked, the subsequent emails will send automatically.|<!-- -->|
    |faultDesc|There was an error when the automation tried to send the initial payroll integration email. Please manually send the initial email to: {!emailsToSend}.|<!-- -->|
    |faultSubj|Error Sending Initial EPS Email for: {!Get_Plan.Account__r.Name}|<!-- -->|
    |gustoCaseDesc|New Gusto integration requested. No initial email was auto-sent, please follow up manually.|<!-- -->|
    |gustoCaseSubj|New Gusto Integration Requested|<!-- -->|
    |subject|No Sponsor Found for Email Alerts for {!Get_Plan.Account__r.Name}|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Send_Initial_Payroll_Integration_Email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send Initial Payroll Integration Email|
    |Action Type|Email Simple|
    |Action Name|emailSimple|
    |Fault Connector|[Assign_Fault_Case_Subj_and_Desc](#assign_fault_case_subj_and_desc)|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|emailSimple|
    |Offset|0|
    |Email Addresses Array (input)|emailsToSend|
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
    |Connector|[Assign_to_Email_Collection](#assign_to_email_collection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |additionalEmails| Assign|Find_Sponsor_and_Advisors.Useable_Email__c|
    
    
    
    
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
    
    
    
    
    ### Assign_Fault_Case_Subj_and_Desc
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Fault Case Subj and Desc|
    |Connector|isGoTo: true<br/>targetReference: Create_Case_for_Payroll<br/>|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |caseDesc| Assign|faultDesc|
    |caseSubject| Assign|faultSubj|
    
    
    
    
    ### Assign_Sponsor_Email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Sponsor Email|
    |Connector|[Find_Sponsor_and_Advisors](#find_sponsor_and_advisors)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |sponsorEmailforAlert| Assign|Find_Sponsor_and_Advisors.Useable_Email__c|
    |sponsorIdForAlert| Assign|Find_Sponsor_and_Advisors.Contact__r.Id|
    |sponsorFound| Assign|✅|
    
    
    
    
    ### Assign_Sponsor_Email_to_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Sponsor Email to Collection|
    |Connector|[Send_Initial_Payroll_Integration_Email](#send_initial_payroll_integration_email)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |emailsToSend| Add|sponsorEmailforAlert|
    
    
    
    
    ### Assign_to_Email_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign to Email Collection|
    |Connector|[Find_Sponsor_and_Advisors](#find_sponsor_and_advisors)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |emailsToSend| Add|additionalEmails|
    
    
    
    
    ### Case_Subject_and_Description
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Case Subject and Description|
    |Connector|[Create_Case_for_Payroll](#create_case_for_payroll)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |caseSubject| Assign|subject|
    |caseDesc| Assign|desc|
    
    
    
    
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
    |newAC.Useable_Email__c| Assign|AC_Loop.Email__c|
    
    
    
    
    ### Copy_2_of_Add_to_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Copy 2 of Add to Collection|
    |Connector|[backupLoop](#backuploop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |acCollection| Add|newAC|
    
    
    
    
    ### Copy_2_of_Clone_AC
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Copy 2 of Clone AC|
    |Connector|[Copy_2_of_Add_to_Collection](#copy_2_of_add_to_collection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |newAC.Account__c| Assign|backupLoop.AccountId|
    |newAC.Contact__c| Assign|backupLoop.Id|
    |newAC.Contact_Role__c| Assign|backupLoop.Role__c|
    |newAC.Business_Unit__c| Assign|backupLoop.Business_Unit__c|
    |newAC.Opportunity__c| Assign|addOnOpp.Id|
    |newAC.Useable_Email__c| Assign|backupLoop.Email|
    
    
    
    
    ### oppAssignment
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|[oppAssignment](#oppassignment)|
    |Description|Worried about getting Lead Source and Lead Source Detail from the Imp if the Plan is old. Test it|
    |Connector|[EPS_or_DI](#eps_or_di)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |addOnOpp.OwnerId| Assign|00537000002STLD|
    |addOnOpp.AccountId| Assign|Get_Plan.Account__c|
    |addOnOpp.Plan__c| Assign|Get_Plan.Id|
    |addOnOpp.LeadSource| Assign|Get_Plan.Lead_Source__c|
    |addOnOpp.LeadSourceDetail__c| Assign|Get_Plan.LeadSourceDetail__c|
    |addOnOpp.Product_Type__c| Assign|Add-On Product|
    |addOnOpp.Business_Unit__c| Assign|Get_Plan.Business_Unit__c|
    |addOnOpp.CloseDate| Assign|closeDate|
    |addOnOpp.Name| Assign|oppName|
    |addOnOpp.StageName| Assign|New Integration Request|
    |addOnOpp.RecordTypeId| Assign|01237000000N0d7AAC|
    |addOnOpp.Payroll_Provider__c| Assign|payrollProvider.recordId|
    
    
    
    
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
    
    
    
    
    ### Advisor_Trustees_or_Additional_Sponsors
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Advisor, Trustees or Additional Sponsors?|
    |Default Connector|[Find_Sponsor_and_Advisors](#find_sponsor_and_advisors)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Advisor_s_Trustee_s_or_Sponsor_s_Found (Advisor(s), Trustee(s), or Sponsor(s) Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Emails](#assign_emails)|
    |Condition Logic|2 AND (1 OR 3 OR 4 OR 5)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Find_Sponsor_and_Advisors.Contact_Role__c| Equal To|Financial Advisor|
    |2|Find_Sponsor_and_Advisors.Useable_Email__c| Is Blank|⬜|
    |3|Find_Sponsor_and_Advisors.Contact_Role__c| Contains|[Sponsor](#sponsor)|
    |4|Find_Sponsor_and_Advisors.Contact_Role__c| Equal To|Authorized Buyer|
    |5|Find_Sponsor_and_Advisors.Contact_Role__c| Contains|Trustee|
    
    
    
    
    ### Backup_Contact_Selected
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Backup Contact Selected?|
    |Default Connector|[Create_AC](#create_ac)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes_Contact_Selected (Yes, Contact Selected)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[backupLoop](#backuploop)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|backupContactTable.selectedRows| Is Empty|⬜|
    
    
    
    
    ### Confirm_Sponsor_Found
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Confirm Sponsor Found|
    |Default Connector|[Case_Subject_and_Description](#case_subject_and_description)|
    |Default Connector Label|No Sponsor AC Record Found|
    
    
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
    |Connector|[Find_Sponsor_and_Advisors](#find_sponsor_and_advisors)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Payroll_Provider.Opportunity_Type__c| Equal To|EPS|
    |2|payrollProvider.recordName| Not Equal To|[Gusto](#gusto)|
    
    
    
    
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
    |1|Get_Payroll_Provider.Opportunity_Type__c| Equal To|Direct Integration|
    
    
    
    
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
    |1|payrollProvider.recordName| Contains|[Gusto](#gusto)|
    
    
    
    
    ### Multiple_Funding_Accounts
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Multiple Funding Accounts?|
    |Default Connector|[Enter_Payroll_Provider](#enter_payroll_provider)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes_Multiple (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[noMultipleFundingAccts](#nomultiplefundingaccts)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|fundingAcctPicklist| Equal To|yes|
    
    
    
    
    ### Payroll_Provider_Still_Null
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Payroll Provider Still Null?|
    |Default Connector|[oppAssignment](#oppassignment)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Still_Null (Still Null)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Still_Null_Boolean](#still_null_boolean)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|payrollProvider.recordId| Is Null|✅|
    
    
    
    
    ### Sponsor
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Sponsor?|
    |Default Connector|[Advisor_Trustees_or_Additional_Sponsors](#advisor_trustees_or_additional_sponsors)|
    |Default Connector Label|Check for Advisors and Other Sponsors|
    
    
    #### Rule Sponsor_Found (Sponsor Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Sponsor_Email](#assign_sponsor_email)|
    |Condition Logic|(1 OR 2) AND 3 AND 4|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Find_Sponsor_and_Advisors.Contact_Role__c| Contains|[Sponsor](#sponsor)|
    |2|Find_Sponsor_and_Advisors.Contact_Role__c| Equal To|Authorized Buyer|
    |3|Find_Sponsor_and_Advisors.Useable_Email__c| Is Blank|⬜|
    |4|sponsorFound| Equal To|⬜|
    
    
    
    
    ### AC_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|AC Loop|
    |Collection Reference|acsToCreate.selectedRows|
    |Iteration Order|Asc|
    |Next Value Connector|[Clone_AC](#clone_ac)|
    |No More Values Connector|[Backup_Contact_Selected](#backup_contact_selected)|
    
    
    ### backupLoop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|[backupLoop](#backuploop)|
    |Collection Reference|backupContactTable.selectedRows|
    |Iteration Order|Asc|
    |Next Value Connector|[Copy_2_of_Clone_AC](#copy_2_of_clone_ac)|
    |No More Values Connector|[Create_AC](#create_ac)|
    
    
    ### Find_Sponsor_and_Advisors
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Find Sponsor and Advisors|
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
    |AccountId|Get_Plan.Account__c|
    |Department__c|Payroll|
    |Description|gustoCaseDesc|
    |Opportunity__c|addOnOpp.Id|
    |OwnerId|00537000002STLD|
    |Plan__c|Get_Plan.Id|
    |Sender_Role__c|[Sponsor](#sponsor)|
    |Subject|gustoCaseSubj|
    |Team_Member__c|Aaron Fekete|
    
    
    
    
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
    |Connector|[Update_Payroll_Provider_on_Plan](#update_payroll_provider_on_plan)|
    
    
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
    |AccountId|Get_Plan.Account__c|
    |Department__c|Payroll|
    |Description|caseDesc|
    |OwnerId|00537000002STLD|
    |Plan__c|Get_Plan.Id|
    |Sender_Role__c|[Sponsor](#sponsor)|
    |Subject|caseSubject|
    
    
    
    
    ### Get_Associated_Contacts
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Associated_Contact__c|
    |Label|Get Associated Contacts|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Store Output Automatically|✅|
    |Connector|[Get_Contacts](#get_contacts)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Plan__c| Equal To|Get_Plan.Id|
    
    
    
    
    ### Get_Contacts
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Get Contacts|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|backupContacts|
    |Queried Fields|- Id<br/>- Role__c<br/>- Email<br/>- AccountId<br/>- Name<br/>|
    |Connector|[Confirm_AC_Records_to_Create](#confirm_ac_records_to_create)|
    
    
    #### Filters (logic: **1 AND 5 AND (2 OR 3 OR 4)**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|AccountId| Equal To|Get_Plan.Account__c|
    |2|Role__c| Contains|[Sponsor](#sponsor)|
    |3|Role__c| Contains|Trustee|
    |4|Role__c| Contains|Advisor|
    |5|Email| Is Null|<!-- -->|
    
    
    
    
    ### Get_Payroll_Provider
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Products_Services__c|
    |Label|Get Payroll Provider|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Payroll_Provider_Still_Null](#payroll_provider_still_null)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|payrollProvider.recordId|
    
    
    
    
    ### Get_Plan
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Plan__c|
    |Label|Get Plan|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[confirmFundingAcctScreen](#confirmfundingacctscreen)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Update_Payroll_Provider_on_Plan
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Plan__c|
    |Label|Update Payroll Provider on Plan|
    |Connector|[Get_Associated_Contacts](#get_associated_contacts)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Plan.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Products_Services__c|payrollProvider.recordId|
    
    
    
    
    ### Confirm_AC_Records_to_Create
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|Confirm AC Records to Create|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Next Or Finish Button Label|Next|
    |Show Footer|✅|
    |Show Header|⬜|
    |Connector|[AC_Loop](#ac_loop)|
    
    
    #### confirmACChoices
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p style="text-align: center;"><strong style="font-size: 18px;">Please select the sponsor(s) and advisor(s) you want linked to the new opportunity:</strong></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### gustoWarning
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p style="text-align: center;"><strong style="font-size: 18px; color: rgb(224, 14, 14);"><u>If the Payroll Provider is Gusto, the person setting up the integration must be the same person registered with Gusto</u></strong></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Get_Payroll_Provider.Name<br/>&nbsp;&nbsp;operator: Contains<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;stringValue: Gusto<br/>|
    
    
    
    
    #### acsToCreate
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type Mappings|typeName: T<br/>typeValue: Associated_Contact__c<br/>|
    |Extension Name|flowruntime:datatable|
    |Field Type| Component Instance|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Store Output Automatically|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Label (input)|Data Table|
    |Selection Mode (input)|MULTI_SELECT|
    |Min Row Selection (input)|numberValue: 0<br/>|
    |Table Data (input)|[Get_Associated_Contacts](#get_associated_contacts)|
    |Columns (input)|[{"apiName":"Full_Name__c","guid":"column-fd5d","editable":false,"hasCustomHeaderLabel":false,"customHeaderLabel":"","wrapText":true,"order":0,"label":"Full Name","type":"customRichText"},{"apiName":"Contact_Role__c","guid":"column-8cb6","editable":false,"hasCustomHeaderLabel":false,"customHeaderLabel":"","wrapText":true,"order":1,"label":"Contact Role","type":"text"},{"apiName":"Useable_Email__c","guid":"column-9c39","editable":false,"hasCustomHeaderLabel":false,"customHeaderLabel":"","wrapText":true,"order":2,"label":"Useable Email","type":"email"}]|
    
    
    
    
    #### paradigmLink
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p style="text-align: center;"><strong style="font-size: 16px;">Link to Plan in Paradigm:</strong></p><p style="text-align: center;"><br></p><p style="text-align: center;"><a href="{!Get_Plan.Paradigm_Plan_Link__c}" rel="noopener noreferrer" target="_blank">{!Get_Plan.Paradigm_Plan_Link__c}</a></p><p style="text-align: center;"><br></p><p style="text-align: center;"><br></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### The_person_I_want_to_send_to_isn_t_listed
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|Boolean|
    |Field Text|The person I want to choose isn't listed|
    |Field Type| Input Field|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### showCreateContactMessage
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p style="text-align: center;"><strong style="font-size: 16px;">Are they listed here?</strong></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: The_person_I_want_to_send_to_isn_t_listed<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;booleanValue: true<br/>|
    
    
    
    
    #### backupContactTable
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type Mappings|typeName: T<br/>typeValue: Contact<br/>|
    |Extension Name|flowruntime:datatable|
    |Field Type| Component Instance|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Store Output Automatically|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: The_person_I_want_to_send_to_isn_t_listed<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;booleanValue: true<br/>|
    |Label (input)|Data Table|
    |Selection Mode (input)|MULTI_SELECT|
    |Min Row Selection (input)|numberValue: 0<br/>|
    |Table Data (input)|backupContacts|
    |Columns (input)|[{"apiName":"Name","guid":"column-1abb","editable":false,"hasCustomHeaderLabel":false,"customHeaderLabel":"","wrapText":true,"order":0,"label":"Full Name","type":"text"},{"apiName":"Role__c","guid":"column-03ef","editable":false,"hasCustomHeaderLabel":false,"customHeaderLabel":"","wrapText":true,"order":1,"label":"Contact Role","type":"text"},{"apiName":"Email","guid":"column-d3f8","editable":false,"hasCustomHeaderLabel":false,"customHeaderLabel":"","wrapText":true,"order":2,"label":"Email","type":"email"}]|
    
    
    
    
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
    |Connector|[Multiple_Funding_Accounts](#multiple_funding_accounts)|
    
    
    #### fundAcctDisplay
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p style="text-align: center;"><strong style="font-size: 18px;"><u>Does the client want to use multiple funding accounts?</u></strong></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### fundingAcctPicklist
    
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
    |Connector|[Get_Payroll_Provider](#get_payroll_provider)|
    
    
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
    
    
    
    
    #### payrollProvider
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Extension Name|flowruntime:lookup|
    |Field Type| Component Instance|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Store Output Automatically|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Field Api Name (input)|Payroll_Provider__c|
    |Label (input)|Payroll Provider|
    |Object Api Name (input)|Opportunity|
    
    
    
    
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
    |Field Text|<p style="text-align: center;"><strong style="font-size: 18px; color: rgb(255, 3, 3);">We are not able to support payroll integration with multiple funding accounts.</strong></p><p style="text-align: center;"><br></p><p style="text-align: center;"><strong style="font-size: 18px; color: rgb(255, 3, 3);">Please let the client know we will not be able to set up payroll integration.</strong></p>|
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
    |Field Text|<p style="text-align: center;"><span style="font-size: 16px;">Your Payroll Integration request for </span><span style="font-size: 16px; background-color: rgb(255, 255, 255); color: rgb(68, 68, 68);">{!Get_Plan.Name}</span><span style="font-size: 16px;"> has been submitted successfully. Please reach out to the Payroll team for further updates.</span></p><p><br></p><p><br></p><p style="text-align: center;"><strong style="font-size: 18px; color: rgb(68, 43, 221);">Please Click "Finish" to Exit</strong></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

