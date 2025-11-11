# Payroll_Integration_Button_Create_Payroll_Opp_and_Add_On history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Payroll_Integration_Button_Create_Payroll_Opp_and_Add_On-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Screen Flow</b>"]):::startClass
    click START "#general-information" "3829088018"
    
    Send_Initial_Payroll_Integration_Email("📧 <em></em><br/>Send InitialPayroll Integration Email"):::actionCalls
    click Send_Initial_Payroll_Integration_Email "#send_initial_payroll_integration_email" "30627331"
    
    Add_to_Collection[\"🟰 <em></em><br/>Add to Collection"/]:::assignments
    click Add_to_Collection "#add_to_collection" "4057212199"
    
    Assign_Add_On_Values[\"🟰 <em></em><br/>Assign Add On Values"/]:::assignments
    click Assign_Add_On_Values "#assign_add_on_values" "3365058714"
    
    Assign_Advisor_Emails_to_Collection[\"🟰 <em></em><br/>Assign Advisor Emails to Collection"/]:::assignments
    click Assign_Advisor_Emails_to_Collection "#assign_advisor_emails_to_collection" "1208323754"
    
    Assign_Case_Subj_and_Desc[\"🟰 <em></em><br/>Assign Case Subj and Desc"/]:::assignments
    click Assign_Case_Subj_and_Desc "#assign_case_subj_and_desc" "3402430616"
    
    Assign_DI_Service_Option[\"🟰 <em></em><br/>Assign DI Service Option"/]:::assignments
    click Assign_DI_Service_Option "#assign_di_service_option" "1857360911"
    
    Assign_EPS_Service_Option[\"🟰 <em></em><br/>Assign EPS Service Option"/]:::assignments
    click Assign_EPS_Service_Option "#assign_eps_service_option" "982849325"
    
    Assign_Fault_Subj_and_Desc[\"🟰 <em></em><br/>Assign Fault Subj and Desc"/]:::assignments
    click Assign_Fault_Subj_and_Desc "#assign_fault_subj_and_desc" "1069199322"
    
    Assign_Payroll_Provider_Id[\"🟰 <em></em><br/>Assign Payroll Provider Id"/]:::assignments
    click Assign_Payroll_Provider_Id "#assign_payroll_provider_id" "1761508280"
    
    Assign_Sponsor_Id_and_Email[\"🟰 <em></em><br/>Assign Sponsor Id and Email"/]:::assignments
    click Assign_Sponsor_Id_and_Email "#assign_sponsor_id_and_email" "4022025492"
    
    Clone_AC[\"🟰 <em></em><br/>Clone AC"/]:::assignments
    click Clone_AC "#clone_ac" "2419083716"
    
    Copy_1_of_oppAssignment[\"🟰 <em></em><br/>Copy 1 of oppAssignment"/]:::assignments
    click Copy_1_of_oppAssignment "#copy_1_of_oppassignment" "1424494414"
    
    Copy_2_of_Assign_Add_On_Values[\"🟰 <em></em><br/>Copy 2 of Assign Add On Values"/]:::assignments
    click Copy_2_of_Assign_Add_On_Values "#copy_2_of_assign_add_on_values" "3407514491"
    
    Copy_3_of_Assign_Add_On_Values[\"🟰 <em></em><br/>Copy 3 of Assign Add On Values"/]:::assignments
    click Copy_3_of_Assign_Add_On_Values "#copy_3_of_assign_add_on_values" "2994586526"
    
    oppAssignment[\"🟰 <em></em><br/>oppAssignment"/]:::assignments
    click oppAssignment "#oppassignment" "931496070"
    
    Paycor_Paylocity_Template[\"🟰 <em></em><br/>Paycor/Paylocity Template"/]:::assignments
    click Paycor_Paylocity_Template "#paycor_paylocity_template" "523818363"
    
    Set_Gusto_Opp_to_Open[\"🟰 <em></em><br/>Set Gusto Opp to Open"/]:::assignments
    click Set_Gusto_Opp_to_Open "#set_gusto_opp_to_open" "3816079247"
    
    Set_Opp_to_Open[\"🟰 <em></em><br/>Set Opp to Open"/]:::assignments
    click Set_Opp_to_Open "#set_opp_to_open" "4067805179"
    
    Still_Null_Boolean[\"🟰 <em></em><br/>Still Null Boolean"/]:::assignments
    click Still_Null_Boolean "#still_null_boolean" "2247880019"
    
    Advisor_Trustee_or_other_Sponsor{"🔀 <em></em><br/>Advisor, Trustee, or other Sponsor?"}:::decisions
    click Advisor_Trustee_or_other_Sponsor "#advisor_trustee_or_other_sponsor" "2852887638"
    
    Assign_to_Stormy_or_Aaron{"🔀 <em></em><br/>Assign to Stormy or Aaron?"}:::decisions
    click Assign_to_Stormy_or_Aaron "#assign_to_stormy_or_aaron" "3493714166"
    
    Confirm_Sponsor_Found{"🔀 <em></em><br/>Confirm Sponsor Found"}:::decisions
    click Confirm_Sponsor_Found "#confirm_sponsor_found" "2650857700"
    
    Copy_1_of_Payroll_Provider_Present{"🔀 <em></em><br/>Copy 1 of Payroll Provider Present?"}:::decisions
    click Copy_1_of_Payroll_Provider_Present "#copy_1_of_payroll_provider_present" "1152546349"
    
    Copy_2_of_Was_button_used_from_Plan_or_Implementation{"🔀 <em></em><br/>Copy 2 of Was button used from Plan or Implementation"}:::decisions
    click Copy_2_of_Was_button_used_from_Plan_or_Implementation "#copy_2_of_was_button_used_from_plan_or_implementation" "1857512806"
    
    EPS_or_DI{"🔀 <em></em><br/>EPS or DI"}:::decisions
    click EPS_or_DI "#eps_or_di" "3988096902"
    
    Gusto_Skip_Email{"🔀 <em></em><br/>Gusto, Skip Email"}:::decisions
    click Gusto_Skip_Email "#gusto_skip_email" "3838718900"
    
    Integration_Already_Exists{"🔀 <em></em><br/>Integration Already Exists"}:::decisions
    click Integration_Already_Exists "#integration_already_exists" "2413836689"
    
    More_than_one_funding_account{"🔀 <em></em><br/>More than one funding account?"}:::decisions
    click More_than_one_funding_account "#more_than_one_funding_account" "3812479854"
    
    Payroll_Provider{"🔀 <em></em><br/>Payroll Provider"}:::decisions
    click Payroll_Provider "#payroll_provider" "1512657623"
    
    Payroll_Provider_Still_Null{"🔀 <em></em><br/>Payroll Provider Still Null?"}:::decisions
    click Payroll_Provider_Still_Null "#payroll_provider_still_null" "2077555511"
    
    Service_Option_Filled_Out{"🔀 <em></em><br/>Service Option Filled Out?"}:::decisions
    click Service_Option_Filled_Out "#service_option_filled_out" "610070747"
    
    Sponsor{"🔀 <em></em><br/>Sponsor?"}:::decisions
    click Sponsor "#sponsor" "1489768788"
    
    Was_button_used_from_Plan_or_Implementation{"🔀 <em></em><br/>Was button used from Plan or Implementation"}:::decisions
    click Was_button_used_from_Plan_or_Implementation "#was_button_used_from_plan_or_implementation" "1862899816"
    
    AC_Loop{{"🔁 <em></em><br/>AC Loop"}}:::loops
    click AC_Loop "#ac_loop" "3101838955"
    
    Find_1_Sponsor_and_Advisors{{"🔁 <em></em><br/>Find 1 Sponsor and Advisors"}}:::loops
    click Find_1_Sponsor_and_Advisors "#find_1_sponsor_and_advisors" "2222045557"
    
    Create_AC[("➕ <em></em><br/>Create AC")]:::recordCreates
    click Create_AC "#create_ac" "183575943"
    
    Create_Add_On[("➕ <em></em><br/>Create Add-On")]:::recordCreates
    click Create_Add_On "#create_add_on" "65112628"
    
    Create_Case_for_Payroll[("➕ <em></em><br/>Create Case for Payroll")]:::recordCreates
    click Create_Case_for_Payroll "#create_case_for_payroll" "3276962593"
    
    Create_Payroll_Integration_Opp[("➕ <em></em><br/>Create Payroll Integration Opp")]:::recordCreates
    click Create_Payroll_Integration_Opp "#create_payroll_integration_opp" "550271068"
    
    Copy_1_of_Get_Associated_Contacts[("🔍 <em></em><br/>Copy 1 of Get Associated Contacts")]:::recordLookups
    click Copy_1_of_Get_Associated_Contacts "#copy_1_of_get_associated_contacts" "3636782004"
    
    Get_Associated_Contacts[("🔍 <em></em><br/>Get Associated Contacts")]:::recordLookups
    click Get_Associated_Contacts "#get_associated_contacts" "299303307"
    
    Get_Implementation[("🔍 <em></em><br/>Get Implementation")]:::recordLookups
    click Get_Implementation "#get_implementation" "3807139423"
    
    Get_Payroll_Provider[("🔍 <em></em><br/>Get Payroll Provider")]:::recordLookups
    click Get_Payroll_Provider "#get_payroll_provider" "345450281"
    
    Get_Plan[("🔍 <em></em><br/>Get Plan")]:::recordLookups
    click Get_Plan "#get_plan" "5188056"
    
    Update_Payroll_Integration_and_Payroll_Provider_Field_on_Imp[("🛠️ <em></em><br/>Update Payroll Integration and Payroll Provider Field on Imp")]:::recordUpdates
    click Update_Payroll_Integration_and_Payroll_Provider_Field_on_Imp "#update_payroll_integration_and_payroll_provider_field_on_imp" "474666193"
    
    Update_Payroll_Integration_Field_on_Imp[("🛠️ <em></em><br/>Update Payroll Integration Field on Imp")]:::recordUpdates
    click Update_Payroll_Integration_Field_on_Imp "#update_payroll_integration_field_on_imp" "2406319802"
    
    Update_Plan[("🛠️ <em></em><br/>Update Plan")]:::recordUpdates
    click Update_Plan "#update_plan" "2889339112"
    
    AlreadyExists(["💻 <em></em><br/>AlreadyExists"]):::screens
    click AlreadyExists "#alreadyexists" "214350621"
    
    confirmFundingAcctScreen(["💻 <em></em><br/>confirmFundingAcctScreen"]):::screens
    click confirmFundingAcctScreen "#confirmfundingacctscreen" "430699470"
    
    Enter_Payroll_Provider(["💻 <em></em><br/>Enter Payroll Provider"]):::screens
    click Enter_Payroll_Provider "#enter_payroll_provider" "93997192"
    
    noMultiplesScreen(["💻 <em></em><br/>noMultiplesScreen"]):::screens
    click noMultiplesScreen "#nomultiplesscreen" "3460777320"
    
    Payroll_Integration_Submitted_Successfully(["💻 <em></em><br/>Payroll Integration Submitted Successfully"]):::screens
    click Payroll_Integration_Submitted_Successfully "#payroll_integration_submitted_successfully" "4233367877"
    
    Send_Initial_Payroll_Integration_Email --> Payroll_Integration_Submitted_Successfully
    Send_Initial_Payroll_Integration_Email -. Fault .->Assign_Fault_Subj_and_Desc
    Add_to_Collection --> AC_Loop
    Assign_Add_On_Values --> Create_Add_On
    Assign_Advisor_Emails_to_Collection --> Find_1_Sponsor_and_Advisors
    Assign_Case_Subj_and_Desc --> Create_Case_for_Payroll
    Assign_DI_Service_Option --> Payroll_Provider
    Assign_EPS_Service_Option --> Create_Payroll_Integration_Opp
    Assign_Fault_Subj_and_Desc --> Create_Case_for_Payroll
    Assign_Payroll_Provider_Id --> Enter_Payroll_Provider
    Assign_Sponsor_Id_and_Email --> Find_1_Sponsor_and_Advisors
    Clone_AC --> Add_to_Collection
    Copy_1_of_oppAssignment --> Get_Payroll_Provider
    Copy_2_of_Assign_Add_On_Values --> Create_Add_On
    Copy_3_of_Assign_Add_On_Values --> Create_Add_On
    oppAssignment --> Get_Payroll_Provider
    Paycor_Paylocity_Template --> Create_Payroll_Integration_Opp
    Set_Gusto_Opp_to_Open --> Create_Payroll_Integration_Opp
    Set_Opp_to_Open --> Create_Payroll_Integration_Opp
    Still_Null_Boolean --> Enter_Payroll_Provider
    Advisor_Trustee_or_other_Sponsor --> |"AC(s) Found"| Assign_Advisor_Emails_to_Collection
    Advisor_Trustee_or_other_Sponsor --> |"Not a Financial Advisor"| Find_1_Sponsor_and_Advisors
    Assign_to_Stormy_or_Aaron --> |"Aaron"| Assign_Add_On_Values
    Assign_to_Stormy_or_Aaron --> |"Default Outcome"| Copy_3_of_Assign_Add_On_Values
    Confirm_Sponsor_Found --> |"Found Sponsor"| Send_Initial_Payroll_Integration_Email
    Confirm_Sponsor_Found --> |"Default Outcome"| Assign_Case_Subj_and_Desc
    Copy_1_of_Payroll_Provider_Present --> |"Copy 1 of Yes, present"| Update_Payroll_Integration_Field_on_Imp
    Copy_1_of_Payroll_Provider_Present --> |"Default Outcome"| Enter_Payroll_Provider
    Copy_2_of_Was_button_used_from_Plan_or_Implementation --> |"Copy 2 of Plan"| Get_Associated_Contacts
    Copy_2_of_Was_button_used_from_Plan_or_Implementation --> |"Implementation"| Copy_1_of_Get_Associated_Contacts
    EPS_or_DI --> |"Gusto"| Set_Gusto_Opp_to_Open
    EPS_or_DI --> |"EPS"| Assign_EPS_Service_Option
    EPS_or_DI --> |"Direct Integration"| Assign_DI_Service_Option
    EPS_or_DI --> |"Default Outcome"| Set_Opp_to_Open
    Gusto_Skip_Email --> |"Provider is Gusto"| Payroll_Integration_Submitted_Successfully
    Gusto_Skip_Email --> |"Default Outcome"| Find_1_Sponsor_and_Advisors
    Integration_Already_Exists --> |"Integration Already Exists"| AlreadyExists
    Integration_Already_Exists --> |"Default Outcome"| Copy_1_of_Payroll_Provider_Present
    More_than_one_funding_account --> |"Yes, more than one"| noMultiplesScreen
    More_than_one_funding_account --> |"Default Outcome"| Was_button_used_from_Plan_or_Implementation
    Payroll_Provider --> |"Paylocity or Paycor"| Paycor_Paylocity_Template
    Payroll_Provider --> |"Default Outcome"| Create_Payroll_Integration_Opp
    Payroll_Provider_Still_Null --> |"Still Null"| Still_Null_Boolean
    Payroll_Provider_Still_Null --> |"Not Null - Imp"| Update_Payroll_Integration_and_Payroll_Provider_Field_on_Imp
    Payroll_Provider_Still_Null --> |"Not Null - Plan"| Update_Plan
    Payroll_Provider_Still_Null --> |"Default Outcome"| Get_Payroll_Provider
    Service_Option_Filled_Out --> |"Yes, EPS"| Assign_to_Stormy_or_Aaron
    Service_Option_Filled_Out --> |"Yes, DI"| Copy_2_of_Assign_Add_On_Values
    Service_Option_Filled_Out --> |"Unknown"| Payroll_Integration_Submitted_Successfully
    Sponsor --> |"Yes, Sponsor"| Assign_Sponsor_Id_and_Email
    Sponsor --> |"Check for Advisors"| Advisor_Trustee_or_other_Sponsor
    Was_button_used_from_Plan_or_Implementation --> |"Plan"| Get_Plan
    Was_button_used_from_Plan_or_Implementation --> |"Implementation"| Get_Implementation
    AC_Loop --> |"For Each"|Clone_AC
    AC_Loop ---> |"After Last"|Create_AC
    Find_1_Sponsor_and_Advisors --> |"For Each"|Sponsor
    Find_1_Sponsor_and_Advisors ---> |"After Last"|Confirm_Sponsor_Found
    Create_AC --> Service_Option_Filled_Out
    Create_Add_On --> Gusto_Skip_Email
    Create_Case_for_Payroll --> Payroll_Integration_Submitted_Successfully
    Create_Payroll_Integration_Opp --> Copy_2_of_Was_button_used_from_Plan_or_Implementation
    Copy_1_of_Get_Associated_Contacts --> AC_Loop
    Get_Associated_Contacts --> AC_Loop
    Get_Implementation --> Integration_Already_Exists
    Get_Payroll_Provider --> EPS_or_DI
    Get_Plan --> Enter_Payroll_Provider
    Update_Payroll_Integration_and_Payroll_Provider_Field_on_Imp --> oppAssignment
    Update_Payroll_Integration_Field_on_Imp --> Assign_Payroll_Provider_Id
    Update_Plan --> Copy_1_of_oppAssignment
    AlreadyExists --> END_AlreadyExists
    confirmFundingAcctScreen --> More_than_one_funding_account
    Enter_Payroll_Provider --> Payroll_Provider_Still_Null
    noMultiplesScreen --> END_noMultiplesScreen
    Payroll_Integration_Submitted_Successfully --> END_Payroll_Integration_Submitted_Successfully
    START -->  confirmFundingAcctScreen
    END_AlreadyExists(( END )):::endClass
    END_noMultiplesScreen(( END )):::endClass
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
    |Label|Payroll Integration | Button | Create Payroll Opp and Add-On|
    |Status|Active|
    |Environments|Default|
    |Interview Label|Payroll Integration | Button | Create Payroll Opp and Add-On {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[confirmFundingAcctScreen](#confirmfundingacctscreen)|
    |Next Node|[confirmFundingAcctScreen](#confirmfundingacctscreen)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |acCollection|SObject|✅|✅|⬜|Associated_Contact__c|<!-- -->|
    |addOnToCreate|SObject|⬜|✅|⬜|Add_On_Products__c|<!-- -->|
    |advisorEmail|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |betterOppName|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |caseDesc|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |caseSubj|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |emailsToSend|String|✅|✅|⬜|<!-- -->|<!-- -->|
    |existingACs|SObject|✅|✅|⬜|Associated_Contact__c|<!-- -->|
    |newAC|SObject|⬜|✅|⬜|Associated_Contact__c|<!-- -->|
    |payrollOpp|SObject|⬜|✅|⬜|Opportunity|<!-- -->|
    |recordId|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |sponsorEmailForAlert|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |sponsorFound|Boolean|⬜|✅|⬜|<!-- -->|<!-- -->|
    |sponsorIdForAlert|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |stillNull|Boolean|⬜|✅|⬜|<!-- -->|<!-- -->|
    |templateId|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |addOnName|String|TRIM( LEFT(  {!payrollOpp.Name}, 80))|<!-- -->|
    |closeDate|Date|Today()|<!-- -->|
    |oppNameFormatted|String|TRIM( LEFT(  {!betterOppName}, 80))|<!-- -->|
    
    
    ## Text Templates
    
    |Name|Text|Description|
    |:-- |:-- |:--  |
    |desc|No plan sponsor was found when searching the payroll integration opportunity. Please create associated contact record for plan sponsor and link it to the opportunity, then send the Initial Email manually. Once the associated contact record is created and linked, the subsequent emails will send automatically.|<!-- -->|
    |directIntegrationOppName|Direct Integration - {!betterOppName}|<!-- -->|
    |faultDesc|There was an error when the automation tried to send the initial payroll integration email. Please manually send the initial email to: {!emailsToSend}.|<!-- -->|
    |faultSubj|Error Sending Initial Email for: {!oppNameFormatted}|<!-- -->|
    |gustoOppName|{!betterOppName} - Gusto|<!-- -->|
    |impName|{!Get_Implementation.Name} - New Integration Request|<!-- -->|
    |planName|{!Get_Plan.Name} - New Integration Request|<!-- -->|
    |subject|No Sponsor Found for Email Alerts for {!oppNameFormatted}|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Send_Initial_Payroll_Integration_Email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send InitialPayroll Integration Email|
    |Action Type|Email Simple|
    |Action Name|emailSimple|
    |Fault Connector|[Assign_Fault_Subj_and_Desc](#assign_fault_subj_and_desc)|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|emailSimple|
    |Offset|0|
    |Email Addresses Array (input)|emailsToSend|
    |Sender Type (input)|OrgWideEmailAddress|
    |Sender Address (input)|ubiquitypayroll@myubiquity.com|
    |Related Record Id (input)|addOnToCreate.Id|
    |Recipient Id (input)|sponsorIdForAlert|
    |Log Email On Send (input)|✅|
    |Email Template Id (input)|templateId|
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
    
    
    
    
    ### Assign_Add_On_Values
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Add On Values|
    |Connector|[Create_Add_On](#create_add_on)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |addOnToCreate.Account__c| Assign|payrollOpp.AccountId|
    |addOnToCreate.Last_Stage_Change__c| Assign|$Flow.CurrentDate|
    |addOnToCreate.Opportunity__c| Assign|payrollOpp.Id|
    |addOnToCreate.Plan__c| Assign|payrollOpp.Plan__c|
    |addOnToCreate.Name| Assign|oppNameFormatted|
    |addOnToCreate.OwnerId| Assign|00537000002STLD|
    |addOnToCreate.Product_Stage__c| Assign|Pending Provider Access|
    |addOnToCreate.Service_Option__c| Assign|payrollOpp.Service_Option__c|
    |addOnToCreate.RecordTypeId| Assign|01237000000N0q6AAC|
    |addOnToCreate.Product_Status__c| Assign|New|
    |addOnToCreate.Opportunity_Notes__c| Assign|newOppNotes|
    |addOnToCreate.Team_Member__c| Assign|Aaron Fekete|
    
    
    
    
    ### Assign_Advisor_Emails_to_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Advisor Emails to Collection|
    |Connector|[Find_1_Sponsor_and_Advisors](#find_1_sponsor_and_advisors)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |emailsToSend| Add|Find_1_Sponsor_and_Advisors.Useable_Email__c|
    
    
    
    
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
    |Connector|[Payroll_Provider](#payroll_provider)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |payrollOpp.Service_Option__c| Assign|Direct Integration|
    |templateId| Assign|00XUo000001Osmf|
    |betterOppName| Assign|directIntegrationOppName|
    |payrollOpp.Name| Assign|oppNameFormatted|
    
    
    
    
    ### Assign_EPS_Service_Option
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign EPS Service Option|
    |Connector|[Create_Payroll_Integration_Opp](#create_payroll_integration_opp)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |payrollOpp.Service_Option__c| Assign|Enhanced Payroll Service|
    |templateId| Assign|00X1G000000q2vl|
    
    
    
    
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
    
    
    
    
    ### Assign_Payroll_Provider_Id
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Payroll Provider Id|
    |Connector|[Enter_Payroll_Provider](#enter_payroll_provider)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |newPayrollProvider.recordId| Assign|Get_Implementation.Products_Services__c|
    
    
    
    
    ### Assign_Sponsor_Id_and_Email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Sponsor Id and Email|
    |Connector|[Find_1_Sponsor_and_Advisors](#find_1_sponsor_and_advisors)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |emailsToSend| Add|Find_1_Sponsor_and_Advisors.Useable_Email__c|
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
    |newAC.Opportunity__c| Assign|payrollOpp.Id|
    |newAC.Primary__c| Assign|AC_Loop.Primary__c|
    |newAC.Useable_Email__c| Assign|AC_Loop.Email__c|
    
    
    
    
    ### Copy_1_of_oppAssignment
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Copy 1 of oppAssignment|
    |Connector|[Get_Payroll_Provider](#get_payroll_provider)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |payrollOpp.OwnerId| Assign|00537000002STLD|
    |payrollOpp.AccountId| Assign|Get_Plan.Account_Id__c|
    |payrollOpp.Plan__c| Assign|Get_Plan.Id|
    |payrollOpp.LeadSource| Assign|Get_Plan.Opportunity__r.LeadSource|
    |payrollOpp.LeadSourceDetail__c| Assign|Get_Plan.Opportunity__r.LeadSourceDetail__c|
    |payrollOpp.Product_Type__c| Assign|Add-On Product|
    |payrollOpp.Business_Unit__c| Assign|Get_Implementation.Business_Unit__c|
    |payrollOpp.CloseDate| Assign|closeDate|
    |payrollOpp.Opportunity_Notes__c| Assign|newOppNotes|
    |betterOppName| Assign|planName|
    |payrollOpp.StageName| Assign|Closed Won|
    |payrollOpp.RecordTypeId| Assign|01237000000N0d7AAC|
    |payrollOpp.Implementation__c| Assign|Get_Plan.Implementation__c|
    |payrollOpp.Payroll_Provider__c| Assign|newPayrollProvider.recordId|
    |payrollOpp.Opportunity_Notes__c| Assign|newOppNotes|
    |payrollOpp.Name| Assign|oppNameFormatted|
    
    
    
    
    ### Copy_2_of_Assign_Add_On_Values
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Copy 2 of Assign Add On Values|
    |Connector|isGoTo: true<br/>targetReference: Create_Add_On<br/>|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |addOnToCreate.Account__c| Assign|payrollOpp.AccountId|
    |addOnToCreate.Last_Stage_Change__c| Assign|$Flow.CurrentDate|
    |addOnToCreate.Opportunity__c| Assign|payrollOpp.Id|
    |addOnToCreate.Plan__c| Assign|payrollOpp.Plan__c|
    |addOnToCreate.Name| Assign|oppNameFormatted|
    |addOnToCreate.OwnerId| Assign|00537000002STLD|
    |addOnToCreate.Product_Stage__c| Assign|Awaiting Response|
    |addOnToCreate.Service_Option__c| Assign|payrollOpp.Service_Option__c|
    |addOnToCreate.RecordTypeId| Assign|012Uo000001cqZhIAI|
    |addOnToCreate.Product_Status__c| Assign|New|
    |addOnToCreate.Opportunity_Notes__c| Assign|newOppNotes|
    
    
    
    
    ### Copy_3_of_Assign_Add_On_Values
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Copy 3 of Assign Add On Values|
    |Connector|[Create_Add_On](#create_add_on)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |addOnToCreate.Account__c| Assign|payrollOpp.AccountId|
    |addOnToCreate.Last_Stage_Change__c| Assign|$Flow.CurrentDate|
    |addOnToCreate.Opportunity__c| Assign|payrollOpp.Id|
    |addOnToCreate.Plan__c| Assign|payrollOpp.Plan__c|
    |addOnToCreate.Name| Assign|oppNameFormatted|
    |addOnToCreate.OwnerId| Assign|00537000002STLD|
    |addOnToCreate.Product_Stage__c| Assign|Pending Provider Access|
    |addOnToCreate.Service_Option__c| Assign|payrollOpp.Service_Option__c|
    |addOnToCreate.RecordTypeId| Assign|01237000000N0q6AAC|
    |addOnToCreate.Product_Status__c| Assign|New|
    |addOnToCreate.Opportunity_Notes__c| Assign|newOppNotes|
    |addOnToCreate.Team_Member__c| Assign|Stormy Bearry|
    
    
    
    
    ### oppAssignment
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|[oppAssignment](#oppassignment)|
    |Connector|[Get_Payroll_Provider](#get_payroll_provider)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |payrollOpp.OwnerId| Assign|00537000002STLD|
    |payrollOpp.AccountId| Assign|Get_Implementation.Account__c|
    |payrollOpp.Plan__c| Assign|Get_Implementation.Plan__c|
    |payrollOpp.LeadSource| Assign|Get_Implementation.Opportunity_Name__r.LeadSource|
    |payrollOpp.LeadSourceDetail__c| Assign|Get_Implementation.Opportunity_Name__r.LeadSourceDetail__c|
    |payrollOpp.Product_Type__c| Assign|Add-On Product|
    |payrollOpp.Business_Unit__c| Assign|Get_Implementation.Business_Unit__c|
    |payrollOpp.CloseDate| Assign|closeDate|
    |payrollOpp.Opportunity_Notes__c| Assign|newOppNotes|
    |betterOppName| Assign|impName|
    |payrollOpp.StageName| Assign|Closed Won|
    |payrollOpp.RecordTypeId| Assign|01237000000N0d7AAC|
    |payrollOpp.Implementation__c| Assign|Get_Implementation.Id|
    |payrollOpp.Payroll_Provider__c| Assign|newPayrollProvider.recordId|
    |payrollOpp.Opportunity_Notes__c| Assign|newOppNotes|
    |payrollOpp.Name| Assign|oppNameFormatted|
    
    
    
    
    ### Paycor_Paylocity_Template
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Paycor/Paylocity Template|
    |Connector|[Create_Payroll_Integration_Opp](#create_payroll_integration_opp)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |templateId| Assign|00XUo000001OrCH|
    
    
    
    
    ### Set_Gusto_Opp_to_Open
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Set Gusto Opp to Open|
    |Description|If Service Option is Gusto, set Opp to open so Payroll team can add the right Payroll Provider and Service Option and send the Initial Email. When they close opp, different flow will create add on.|
    |Connector|[Create_Payroll_Integration_Opp](#create_payroll_integration_opp)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |payrollOpp.Payroll_Provider__c| Assign|Get_Payroll_Provider.Id|
    |payrollOpp.Service_Option__c| Assign|Enhanced Payroll Service|
    |betterOppName| Assign|gustoOppName|
    |payrollOpp.Name| Assign|oppNameFormatted|
    
    
    
    
    ### Set_Opp_to_Open
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Set Opp to Open|
    |Description|If Service Option isn't specified, set Opp to open so Payroll team can add the right Payroll Provider and Service Option and send the Initial Email. When they close opp, different flow will create add on.|
    |Connector|[Create_Payroll_Integration_Opp](#create_payroll_integration_opp)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |payrollOpp.StageName| Assign|New Integration Request|
    
    
    
    
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
    |Connector|[Assign_Advisor_Emails_to_Collection](#assign_advisor_emails_to_collection)|
    |Condition Logic|2 AND ( 1 OR 3 OR 4)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Find_1_Sponsor_and_Advisors.Contact_Role__c| Equal To|Financial Advisor|
    |2|Find_1_Sponsor_and_Advisors.Useable_Email__c| Is Blank|⬜|
    |3|Find_1_Sponsor_and_Advisors.Contact_Role__c| Contains|[Sponsor](#sponsor)|
    |4|Find_1_Sponsor_and_Advisors.Contact_Role__c| Contains|Trustee|
    
    
    
    
    ### Assign_to_Stormy_or_Aaron
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Assign to Stormy or Aaron?|
    |Default Connector|[Copy_3_of_Assign_Add_On_Values](#copy_3_of_assign_add_on_values)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Aaron (Aaron)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Add_On_Values](#assign_add_on_values)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Payroll_Provider.Name| Equal To|ADP Run|
    |2|Get_Payroll_Provider.Name| Contains|Quickbooks|
    |3|Get_Payroll_Provider.Name| Equal To|Gusto|
    
    
    
    
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
    |Connector|[Send_Initial_Payroll_Integration_Email](#send_initial_payroll_integration_email)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|sponsorFound| Equal To|✅|
    
    
    
    
    ### Copy_1_of_Payroll_Provider_Present
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Copy 1 of Payroll Provider Present?|
    |Description|If the Onboarding team has already entered the Payroll Provider, update the payroll integration field and pre-populate the lookup in the next screen.|
    |Default Connector|[Enter_Payroll_Provider](#enter_payroll_provider)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Copy_1_of_Yes_present (Copy 1 of Yes, present)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Payroll_Integration_Field_on_Imp](#update_payroll_integration_field_on_imp)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Implementation.Products_Services__c| Is Null|⬜|
    |2|recordId| Starts With|a2R|
    
    
    
    
    ### Copy_2_of_Was_button_used_from_Plan_or_Implementation
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Copy 2 of Was button used from Plan or Implementation|
    |Default Connector|[Copy_1_of_Get_Associated_Contacts](#copy_1_of_get_associated_contacts)|
    |Default Connector Label|Implementation|
    
    
    #### Rule Copy_2_of_Plan (Copy 2 of Plan)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Associated_Contacts](#get_associated_contacts)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|recordId| Starts With|a2o|
    
    
    
    
    ### EPS_or_DI
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|EPS or DI|
    |Default Connector|[Set_Opp_to_Open](#set_opp_to_open)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Gusto (Gusto)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Set_Gusto_Opp_to_Open](#set_gusto_opp_to_open)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Payroll_Provider.Name| Equal To|Gusto|
    
    
    
    
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
    
    
    
    
    ### Gusto_Skip_Email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Gusto, Skip Email|
    |Default Connector|[Find_1_Sponsor_and_Advisors](#find_1_sponsor_and_advisors)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Provider_is_Gusto (Provider is Gusto)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Payroll_Integration_Submitted_Successfully](#payroll_integration_submitted_successfully)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Payroll_Provider.Name| Contains|Gusto|
    |2|Get_Payroll_Provider.Opportunity_Type__c| Equal To|EPS|
    
    
    
    
    ### Integration_Already_Exists
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Integration Already Exists|
    |Default Connector|[Copy_1_of_Payroll_Provider_Present](#copy_1_of_payroll_provider_present)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Integration_Already_Exists1 (Integration Already Exists)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[AlreadyExists](#alreadyexists)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Implementation.Payroll_Integration__c| Equal To|Yes|
    
    
    
    
    ### More_than_one_funding_account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|More than one funding account?|
    |Default Connector|[Was_button_used_from_Plan_or_Implementation](#was_button_used_from_plan_or_implementation)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes_more_than_one (Yes, more than one)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[noMultiplesScreen](#nomultiplesscreen)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Multiple_Funding_Accounts| Equal To|yes|
    
    
    
    
    ### Payroll_Provider
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Payroll Provider|
    |Default Connector|[Create_Payroll_Integration_Opp](#create_payroll_integration_opp)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Paylocity_or_Paycor (Paylocity or Paycor)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Paycor_Paylocity_Template](#paycor_paylocity_template)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Payroll_Provider.Name| Contains|Paylocity|
    |2|Get_Payroll_Provider.Name| Contains|Paycor|
    
    
    
    
    ### Payroll_Provider_Still_Null
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Payroll Provider Still Null?|
    |Default Connector|[Get_Payroll_Provider](#get_payroll_provider)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Still_Null (Still Null)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Still_Null_Boolean](#still_null_boolean)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|newPayrollProvider.recordId| Is Null|✅|
    
    
    
    
    #### Rule Not_Null_Imp (Not Null - Imp)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Payroll_Integration_and_Payroll_Provider_Field_on_Imp](#update_payroll_integration_and_payroll_provider_field_on_imp)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|recordId| Starts With|a2R|
    |2|newPayrollProvider.recordId| Is Null|⬜|
    
    
    
    
    #### Rule Not_Null_Plan (Not Null - Plan)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Plan](#update_plan)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|newPayrollProvider.recordId| Is Null|⬜|
    |2|recordId| Starts With|a2o|
    
    
    
    
    ### Service_Option_Filled_Out
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Service Option Filled Out?|
    |Description|If we don't know the service option, don't create the add-on record.|
    |Default Connector|[Payroll_Integration_Submitted_Successfully](#payroll_integration_submitted_successfully)|
    |Default Connector Label|Unknown|
    
    
    #### Rule Yes_EPS (Yes, EPS)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_to_Stormy_or_Aaron](#assign_to_stormy_or_aaron)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Payroll_Provider.Opportunity_Type__c| Equal To|EPS|
    
    
    
    
    #### Rule Yes_DI (Yes, DI)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Copy_2_of_Assign_Add_On_Values](#copy_2_of_assign_add_on_values)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Payroll_Provider.Opportunity_Type__c| Equal To|Direct Integration|
    
    
    
    
    ### Sponsor
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Sponsor?|
    |Description|Find the first sponsor. Needed to provide 1 Id for the email action. The rest of the sponsors/advisors/Trustees will be added to the email collection later in the loop.|
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
    
    
    
    
    ### Was_button_used_from_Plan_or_Implementation
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Was button used from Plan or Implementation|
    |Default Connector|[Get_Implementation](#get_implementation)|
    |Default Connector Label|Implementation|
    
    
    #### Rule Plan (Plan)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Plan](#get_plan)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|recordId| Starts With|a2o|
    
    
    
    
    ### AC_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|AC Loop|
    |Collection Reference|existingACs|
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
    
    
    ### Create_AC
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Label|Create AC|
    |Input Reference|acCollection|
    |Connector|[Service_Option_Filled_Out](#service_option_filled_out)|
    
    
    ### Create_Add_On
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Label|Create Add-On|
    |Input Reference|addOnToCreate|
    |Connector|[Gusto_Skip_Email](#gusto_skip_email)|
    
    
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
    |AccountId|payrollOpp.AccountId|
    |Department__c|Payroll|
    |Description|caseDesc|
    |OwnerId|00537000002STLD|
    |Plan__c|payrollOpp.Plan__c|
    |Sender_Role__c|[Sponsor](#sponsor)|
    |Subject|caseSubj|
    
    
    
    
    ### Create_Payroll_Integration_Opp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Label|Create Payroll Integration Opp|
    |Input Reference|payrollOpp|
    |Connector|[Copy_2_of_Was_button_used_from_Plan_or_Implementation](#copy_2_of_was_button_used_from_plan_or_implementation)|
    
    
    ### Copy_1_of_Get_Associated_Contacts
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Associated_Contact__c|
    |Label|Copy 1 of Get Associated Contacts|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|existingACs|
    |Queried Fields|- Id<br/>- Account__c<br/>- Contact__c<br/>- Contact_Role__c<br/>- Business_Unit__c<br/>- Opportunity__c<br/>- Primary__c<br/>- Useable_Email__c<br/>- Email__c<br/>|
    |Connector|[AC_Loop](#ac_loop)|
    
    
    #### Filters (logic: **or**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Implementation__c| Equal To|recordId|
    
    
    
    
    ### Get_Associated_Contacts
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Associated_Contact__c|
    |Label|Get Associated Contacts|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|existingACs|
    |Queried Fields|- Id<br/>- Account__c<br/>- Contact__c<br/>- Contact_Role__c<br/>- Business_Unit__c<br/>- Opportunity__c<br/>- Primary__c<br/>- Useable_Email__c<br/>- Email__c<br/>|
    |Connector|[AC_Loop](#ac_loop)|
    
    
    #### Filters (logic: **or**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Plan__c| Equal To|recordId|
    
    
    
    
    ### Get_Implementation
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Implementation__c|
    |Label|Get Implementation|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Integration_Already_Exists](#integration_already_exists)|
    
    
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
    |Connector|[EPS_or_DI](#eps_or_di)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|newPayrollProvider.recordId|
    
    
    
    
    ### Get_Plan
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Plan__c|
    |Label|Get Plan|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Enter_Payroll_Provider](#enter_payroll_provider)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Update_Payroll_Integration_and_Payroll_Provider_Field_on_Imp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Implementation__c|
    |Label|Update Payroll Integration and Payroll Provider Field on Imp|
    |Connector|[oppAssignment](#oppassignment)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Implementation.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Payroll_Integration__c|Yes|
    |Products_Services__c|newPayrollProvider.recordId|
    
    
    
    
    ### Update_Payroll_Integration_Field_on_Imp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Implementation__c|
    |Label|Update Payroll Integration Field on Imp|
    |Connector|[Assign_Payroll_Provider_Id](#assign_payroll_provider_id)|
    
    
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
    |Connector|[Copy_1_of_oppAssignment](#copy_1_of_oppassignment)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Plan.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Products_Services__c|newPayrollProvider.recordId|
    
    
    
    
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
    
    
    #### Copy_1_of_Copy_1_of_Exists
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p style="text-align: center;"><strong style="font-size: 18px; color: rgb(7, 86, 67);">A payroll integration opportunity already exists for this plan.</strong></p>|
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
    |Connector|[More_than_one_funding_account](#more_than_one_funding_account)|
    
    
    #### fundAcctDisplay
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p style="text-align: center;"><strong style="color: rgb(7, 86, 67); background-color: rgb(255, 255, 255); font-size: 18px;"><u>Does the client want to use multiple funding accounts?</u></strong></p>|
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
    |Field Text|<p style="text-align: center;"><strong style="color: rgb(7, 86, 67); font-size: 18px;"><u>Please choose a payroll provider before requesting integration.</u></strong></p><p style="text-align: center;"><br></p><p style="text-align: center;"><strong style="color: rgb(7, 86, 67); font-size: 18px;">If you do not see the correct Payroll Provider listed, please select "Other" and indicate provider in Notes section. </strong></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### errorMessage
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p style="text-align: center;"><strong style="font-size: 16px; color: rgb(231, 17, 17);">You must enter a payroll provider to proceed.</strong></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: stillNull<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;booleanValue: true<br/>|
    
    
    
    
    #### newPayrollProvider
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Extension Name|flowruntime:lookup|
    |Field Type| Component Instance|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Store Output Automatically|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Label (input)|Payroll Provider|
    |Field Api Name (input)|Products_Services__c|
    |Object Api Name (input)|Implementation__c|
    |Record Id (input)|Get_Implementation.Products_Services__c|
    
    
    
    
    #### newOppNotes
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|Notes|
    |Field Type| Large Text Area|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    ### noMultiplesScreen
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|[noMultiplesScreen](#nomultiplesscreen)|
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
    |Field Text|<p style="text-align: center;"><strong style="font-size: 18px; color: rgb(7, 86, 67);">Your Payroll Integration request for {!Get_Implementation.Account__r.Name} has been submitted successfully. Please reach out to the Payroll team for further updates.</strong></p><p><br></p><p><br></p><p style="text-align: center;"><strong style="font-size: 18px; color: rgb(7, 86, 67);"><u>Please Click "Finish" to Exit</u></strong></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

