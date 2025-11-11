# DocuSign_Recipient_After_Trigger_Associate_Key_Records history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](DocuSign_Recipient_After_Trigger_Associate_Key_Records-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "2095484171"
    
    Alert_BI_and_Owner_to_Closure_Failure("📧 <em></em><br/>Alert BI and Owner to Closure Failure"):::actionCalls
    click Alert_BI_and_Owner_to_Closure_Failure "#alert_bi_and_owner_to_closure_failure" "1345840999"
    
    Alert_BI_and_Owner_to_Conversion_Failure("📧 <em></em><br/>Alert BI and Owner to Conversion Failure"):::actionCalls
    click Alert_BI_and_Owner_to_Conversion_Failure "#alert_bi_and_owner_to_conversion_failure" "2076011815"
    
    Convert_Lead("⚙️ <em></em><br/>Convert Lead"):::actionCalls
    click Convert_Lead "#convert_lead" "1681383376"
    
    Assign_MML_provisions[\"🟰 <em></em><br/>Assign MML provisions"/]:::assignments
    click Assign_MML_provisions "#assign_mml_provisions" "1191085873"
    
    Assign_New_Values[\"🟰 <em></em><br/>Assign New DocuSign Values"/]:::assignments
    click Assign_New_Values "#assign_new_values" "1851443362"
    
    Assign_New_Values_0[\"🟰 <em></em><br/>Assign New DocuSign Values"/]:::assignments
    click Assign_New_Values_0 "#assign_new_values_0" "1018667577"
    
    Assign_Opp_Values[\"🟰 <em></em><br/>Assign Opp Values"/]:::assignments
    click Assign_Opp_Values "#assign_opp_values" "925937652"
    
    Assign_Opp_Values_0[\"🟰 <em></em><br/>Assign Opp Values"/]:::assignments
    click Assign_Opp_Values_0 "#assign_opp_values_0" "2728489223"
    
    Assign_Opp_Values_0_0[\"🟰 <em></em><br/>Assign Opp Values"/]:::assignments
    click Assign_Opp_Values_0_0 "#assign_opp_values_0_0" "2954285759"
    
    Assign_Provisions[\"🟰 <em></em><br/>Assign Provisions"/]:::assignments
    click Assign_Provisions "#assign_provisions" "1372379907"
    
    Assign_Provisions_0[\"🟰 <em></em><br/>Assign Provisions"/]:::assignments
    click Assign_Provisions_0 "#assign_provisions_0" "4008862877"
    
    Assign_Standard_Auto_Escalation[\"🟰 <em></em><br/>Assign Standard Auto Escalation"/]:::assignments
    click Assign_Standard_Auto_Escalation "#assign_standard_auto_escalation" "2518752333"
    
    Assign_to_Collection[\"🟰 <em></em><br/>Assign to Collection"/]:::assignments
    click Assign_to_Collection "#assign_to_collection" "2686760005"
    
    Assign_to_Collection_0[\"🟰 <em></em><br/>Assign to Collection"/]:::assignments
    click Assign_to_Collection_0 "#assign_to_collection_0" "2167432235"
    
    Close_Loop[\"🟰 <em></em><br/>Close Loop"/]:::assignments
    click Close_Loop "#close_loop" "1153780711"
    
    DocuSign_Status_Updates[\"🟰 <em></em><br/>DocuSign Status Updates"/]:::assignments
    click DocuSign_Status_Updates "#docusign_status_updates" "1908890502"
    
    DocuSign_Status_Updates_0[\"🟰 <em></em><br/>DocuSign Status Updates"/]:::assignments
    click DocuSign_Status_Updates_0 "#docusign_status_updates_0" "1234542286"
    
    Mark_Account_for_Deletion[\"🟰 <em></em><br/>Mark Account for Deletion"/]:::assignments
    click Mark_Account_for_Deletion "#mark_account_for_deletion" "3896005173"
    
    Simply_Conversion_Opp_Fields[\"🟰 <em></em><br/>Simply Conversion Opp Fields"/]:::assignments
    click Simply_Conversion_Opp_Fields "#simply_conversion_opp_fields" "2724303280"
    
    Update_Account_Values[\"🟰 <em></em><br/>Update Account Values"/]:::assignments
    click Update_Account_Values "#update_account_values" "388037633"
    
    A4S_Already_Signed{"🔀 <em></em><br/>A4S Already Signed?"}:::decisions
    click A4S_Already_Signed "#a4s_already_signed" "65448551"
    
    AC_Found_Decision{"🔀 <em></em><br/>AC Found?"}:::decisions
    click AC_Found_Decision "#ac_found_decision" "999647898"
    
    Collection_Null{"🔀 <em></em><br/>Collection Null?"}:::decisions
    click Collection_Null "#collection_null" "1230762605"
    
    Collection_Null_0{"🔀 <em></em><br/>Collection Null?"}:::decisions
    click Collection_Null_0 "#collection_null_0" "2454233098"
    
    Doc_Already_Signed{"🔀 <em></em><br/>Doc Already Signed?"}:::decisions
    click Doc_Already_Signed "#doc_already_signed" "3197776395"
    
    Doc_Type{"🔀 <em></em><br/>Doc Type"}:::decisions
    click Doc_Type "#doc_type" "3046005425"
    
    Doc_Type_Signed{"🔀 <em></em><br/>Doc Type Signed"}:::decisions
    click Doc_Type_Signed "#doc_type_signed" "1213443538"
    
    Duplicate_Found{"🔀 <em></em><br/>Duplicate Found?"}:::decisions
    click Duplicate_Found "#duplicate_found" "640403523"
    
    Duplicate_Found_0{"🔀 <em></em><br/>Duplicate Found?"}:::decisions
    click Duplicate_Found_0 "#duplicate_found_0" "1072351572"
    
    Duplicate_Found_0_0{"🔀 <em></em><br/>Duplicate Found?"}:::decisions
    click Duplicate_Found_0_0 "#duplicate_found_0_0" "338549918"
    
    Duplicate_Found_0_0_0_0{"🔀 <em></em><br/>Duplicate Found?"}:::decisions
    click Duplicate_Found_0_0_0_0 "#duplicate_found_0_0_0_0" "420932250"
    
    Is_this_an_a4s{"🔀 <em></em><br/>Is this an a4s"}:::decisions
    click Is_this_an_a4s "#is_this_an_a4s" "2526880813"
    
    Lead_Found_Decision{"🔀 <em></em><br/>Lead Found?"}:::decisions
    click Lead_Found_Decision "#lead_found_decision" "1700977978"
    
    Lead_Unqualified{"🔀 <em></em><br/>Lead Unqualified?"}:::decisions
    click Lead_Unqualified "#lead_unqualified" "3166105605"
    
    Loop_Validation{"🔀 <em></em><br/>Loop Validation"}:::decisions
    click Loop_Validation "#loop_validation" "3249163091"
    
    Mapped_Records_Present{"🔀 <em></em><br/>Mapped Records Present"}:::decisions
    click Mapped_Records_Present "#mapped_records_present" "4237775096"
    
    MML{"🔀 <em></em><br/>MML?"}:::decisions
    click MML "#mml" "1156169779"
    
    Part_of_Current_Package{"🔀 <em></em><br/>Part of Current Package"}:::decisions
    click Part_of_Current_Package "#part_of_current_package" "3953565030"
    
    Part_of_Current_Package_0{"🔀 <em></em><br/>Part of Current Package"}:::decisions
    click Part_of_Current_Package_0 "#part_of_current_package_0" "388069499"
    
    Proposal_Found{"🔀 <em></em><br/>Proposal Found"}:::decisions
    click Proposal_Found "#proposal_found" "1111237220"
    
    Provision_Correction{"🔀 <em></em><br/>Provision Correction"}:::decisions
    click Provision_Correction "#provision_correction" "1834610674"
    
    Record_Ready_to_Update{"🔀 <em></em><br/>Record Ready to Update"}:::decisions
    click Record_Ready_to_Update "#record_ready_to_update" "3732182398"
    
    Simply_Conversion_Update_Check{"🔀 <em></em><br/>Simply Conversion Update Check"}:::decisions
    click Simply_Conversion_Update_Check "#simply_conversion_update_check" "869868748"
    
    Status_Collection_Null{"🔀 <em></em><br/>Status Collection Null?"}:::decisions
    click Status_Collection_Null "#status_collection_null" "2600157000"
    
    Status_Collection_Null_0{"🔀 <em></em><br/>Status Collection Null?"}:::decisions
    click Status_Collection_Null_0 "#status_collection_null_0" "1149319684"
    
    DocuSign_Loop{{"🔁 <em></em><br/>DocuSign Loop"}}:::loops
    click DocuSign_Loop "#docusign_loop" "3594689592"
    
    DocuSign_Loop_0{{"🔁 <em></em><br/>DocuSign Loop"}}:::loops
    click DocuSign_Loop_0 "#docusign_loop_0" "1240405949"
    
    Delete_Account[("🗑️ <em></em><br/>Delete Account")]:::recordDeletes
    click Delete_Account "#delete_account" "1799974476"
    
    Delete_Account_0[("🗑️ <em></em><br/>Delete Account")]:::recordDeletes
    click Delete_Account_0 "#delete_account_0" "4151539946"
    
    Check_for_Duplicate_Account[("🔍 <em></em><br/>Check for Duplicate Account")]:::recordLookups
    click Check_for_Duplicate_Account "#check_for_duplicate_account" "371615552"
    
    Find_Proposal[("🔍 <em></em><br/>Find Proposal")]:::recordLookups
    click Find_Proposal "#find_proposal" "2888770198"
    
    Find_Proposal_From_Partner_Form[("🔍 <em></em><br/>Find Proposal From Partner Form")]:::recordLookups
    click Find_Proposal_From_Partner_Form "#find_proposal_from_partner_form" "2873075413"
    
    Get_AC[("🔍 <em></em><br/>Get AC")]:::recordLookups
    click Get_AC "#get_ac" "3231435947"
    
    Get_AC_0[("🔍 <em></em><br/>Get AC")]:::recordLookups
    click Get_AC_0 "#get_ac_0" "2277289979"
    
    Get_AC_0_0[("🔍 <em></em><br/>Get AC")]:::recordLookups
    click Get_AC_0_0 "#get_ac_0_0" "3198867688"
    
    Get_DocuSign_Collection[("🔍 <em></em><br/>Get DocuSign Collection")]:::recordLookups
    click Get_DocuSign_Collection "#get_docusign_collection" "122879457"
    
    Get_DocuSign_Collection_0[("🔍 <em></em><br/>Get DocuSign Collection")]:::recordLookups
    click Get_DocuSign_Collection_0 "#get_docusign_collection_0" "186969924"
    
    Get_Lead[("🔍 <em></em><br/>Get Lead")]:::recordLookups
    click Get_Lead "#get_lead" "3152934695"
    
    Close_Opp[("🛠️ <em></em><br/>Close Opp")]:::recordUpdates
    click Close_Opp "#close_opp" "3580402869"
    
    Move_Lead_to_Working[("🛠️ <em></em><br/>Move Lead to Working")]:::recordUpdates
    click Move_Lead_to_Working "#move_lead_to_working" "2380836356"
    
    Move_Opp_to_Pending_Signature[("🛠️ <em></em><br/>Move Opp to Pending Signature")]:::recordUpdates
    click Move_Opp_to_Pending_Signature "#move_opp_to_pending_signature" "2879695450"
    
    Update_AC[("🛠️ <em></em><br/>Update AC")]:::recordUpdates
    click Update_AC "#update_ac" "1218712294"
    
    Update_AC_0[("🛠️ <em></em><br/>Update AC")]:::recordUpdates
    click Update_AC_0 "#update_ac_0" "1388026503"
    
    Update_Account[("🛠️ <em></em><br/>Update Account")]:::recordUpdates
    click Update_Account "#update_account" "1822623844"
    
    Update_Account_0[("🛠️ <em></em><br/>Update Account")]:::recordUpdates
    click Update_Account_0 "#update_account_0" "3513155915"
    
    Update_Contact[("🛠️ <em></em><br/>Update Contact")]:::recordUpdates
    click Update_Contact "#update_contact" "1740437309"
    
    Update_Contact_0[("🛠️ <em></em><br/>Update Contact")]:::recordUpdates
    click Update_Contact_0 "#update_contact_0" "2489656234"
    
    Update_DocuSign[("🛠️ <em></em><br/>Update DocuSign")]:::recordUpdates
    click Update_DocuSign "#update_docusign" "1918433526"
    
    Update_DocuSign_0[("🛠️ <em></em><br/>Update DocuSign")]:::recordUpdates
    click Update_DocuSign_0 "#update_docusign_0" "1970062720"
    
    Update_Docusign_Status[("🛠️ <em></em><br/>Update Docusign Status")]:::recordUpdates
    click Update_Docusign_Status "#update_docusign_status" "3952001603"
    
    Update_Imp_Adoption[("🛠️ <em></em><br/>Update Imp, Adoption")]:::recordUpdates
    click Update_Imp_Adoption "#update_imp_adoption" "3068368746"
    
    Update_Imp_Loan_Policy[("🛠️ <em></em><br/>Update Imp, Loan Policy")]:::recordUpdates
    click Update_Imp_Loan_Policy "#update_imp_loan_policy" "1252632828"
    
    Update_Opp[("🛠️ <em></em><br/>Update Opp")]:::recordUpdates
    click Update_Opp "#update_opp" "792459080"
    
    Update_Related_Records[("🛠️ <em></em><br/>Update Related Records")]:::recordUpdates
    click Update_Related_Records "#update_related_records" "1317965997"
    
    Update_Related_Records_0[("🛠️ <em></em><br/>Update Related Records")]:::recordUpdates
    click Update_Related_Records_0 "#update_related_records_0" "4237154051"
    
    Alert_BI_and_Owner_to_Closure_Failure --> END_Alert_BI_and_Owner_to_Closure_Failure
    Alert_BI_and_Owner_to_Conversion_Failure --> END_Alert_BI_and_Owner_to_Conversion_Failure
    Convert_Lead --> Get_AC
    Convert_Lead -. Fault .->Alert_BI_and_Owner_to_Conversion_Failure
    Assign_MML_provisions --> Assign_Provisions
    Assign_New_Values --> Doc_Type
    Assign_New_Values_0 --> Doc_Type
    Assign_Opp_Values --> Close_Opp
    Assign_Opp_Values_0 --> Assign_New_Values
    Assign_Opp_Values_0_0 --> Move_Opp_to_Pending_Signature
    Assign_Provisions --> Simply_Conversion_Update_Check
    Assign_Provisions_0 --> A4S_Already_Signed
    Assign_Standard_Auto_Escalation --> Assign_Provisions
    Assign_to_Collection --> DocuSign_Loop
    Assign_to_Collection_0 --> DocuSign_Loop_0
    Close_Loop --> Get_Lead
    DocuSign_Status_Updates --> Assign_to_Collection
    DocuSign_Status_Updates_0 --> Assign_to_Collection_0
    Mark_Account_for_Deletion --> Update_Account_Values
    Simply_Conversion_Opp_Fields --> A4S_Already_Signed
    Update_Account_Values --> Assign_Opp_Values_0
    A4S_Already_Signed --> |"A4S Signed"| Assign_Opp_Values
    A4S_Already_Signed --> |"A4S Not Signed"| Assign_Opp_Values_0_0
    A4S_Already_Signed --> |"Default"| END_A4S_Already_Signed
    AC_Found_Decision --> |"AC Found"| Check_for_Duplicate_Account
    AC_Found_Decision --> |"AC Not Found"| Loop_Validation
    Collection_Null --> |"No"| DocuSign_Loop
    Collection_Null --> |"Yes"| END_Collection_Null
    Collection_Null_0 --> |"No"| DocuSign_Loop_0
    Collection_Null_0 --> |"Yes"| END_Collection_Null_0
    Doc_Already_Signed --> |"Signed"| Doc_Type_Signed
    Doc_Already_Signed --> |"Not Signed"| Duplicate_Found_0_0_0_0
    Doc_Already_Signed --> |"Default"| END_Doc_Already_Signed
    Doc_Type --> |"FIRST FINANCIAL CHANGE ME"| Find_Proposal_From_Partner_Form
    Doc_Type --> |"Simply A4S/Sallus PEP"| Find_Proposal
    Doc_Type --> |"Post-Sale Docs Signed"| Doc_Already_Signed
    Doc_Type --> |"Ubiquity Self Service"| A4S_Already_Signed
    Doc_Type --> |"Ubiquity A4S"| Update_Docusign_Status
    Doc_Type --> |"Default Outcome"| END_Doc_Type
    Doc_Type_Signed --> |"Adoption"| Update_Imp_Adoption
    Doc_Type_Signed --> |"Trust"| Update_Imp_Loan_Policy
    Doc_Type_Signed --> |"Default Outcome"| END_Doc_Type_Signed
    Duplicate_Found --> |"Duplicate Account Found"| Mark_Account_for_Deletion
    Duplicate_Found --> |"No Duplicates Found"| Assign_New_Values
    Duplicate_Found_0 --> |"Duplicate Account Found"| Update_Opp
    Duplicate_Found_0 --> |"No Duplicates Found"| Record_Ready_to_Update
    Duplicate_Found_0_0 --> |"Duplicate Account Found"| Update_Contact
    Duplicate_Found_0_0 --> |"No Duplicates Found"| Update_DocuSign
    Duplicate_Found_0_0_0_0 --> |"Duplicate Account Found"| Update_Contact_0
    Duplicate_Found_0_0_0_0 --> |"No Duplicates Found"| Update_DocuSign_0
    Is_this_an_a4s --> |"A4S document in flow"| Convert_Lead
    Is_this_an_a4s --> |"non a4s"| Get_AC
    Lead_Found_Decision --> |"Lead Found"| Lead_Unqualified
    Lead_Found_Decision --> |"Lead Not Found"| Get_AC
    Lead_Unqualified --> |"Unqualified"| Move_Lead_to_Working
    Lead_Unqualified --> |"Working"| Is_this_an_a4s
    Loop_Validation --> |"Equals 0"| Close_Loop
    Loop_Validation --> |"A4S Not Signed"| END_Loop_Validation
    Mapped_Records_Present --> |"Yes"| Get_AC_0
    Mapped_Records_Present --> |"No"| Get_AC_0_0
    MML --> |"Yes"| Assign_MML_provisions
    MML --> |"Default Outcome"| Assign_Standard_Auto_Escalation
    Part_of_Current_Package --> |"Current Package"| DocuSign_Status_Updates
    Part_of_Current_Package --> |"Obsolete"| END_Part_of_Current_Package
    Part_of_Current_Package_0 --> |"Current Package"| DocuSign_Status_Updates_0
    Part_of_Current_Package_0 --> |"Obsolete"| END_Part_of_Current_Package_0
    Proposal_Found --> |"Proposal Present"| Provision_Correction
    Proposal_Found --> |"Proposal Not Found"| A4S_Already_Signed
    Provision_Correction --> |"Needs Sallus Correction"| Assign_Provisions_0
    Provision_Correction --> |"Default Outcome"| MML
    Record_Ready_to_Update --> |"Update Record"| Update_DocuSign
    Record_Ready_to_Update --> |"Default Outcome"| END_Record_Ready_to_Update
    Simply_Conversion_Update_Check --> |"Conv Update Needed"| Simply_Conversion_Opp_Fields
    Simply_Conversion_Update_Check --> |"Default Outcome"| A4S_Already_Signed
    Status_Collection_Null --> |"No"| Update_Related_Records
    Status_Collection_Null --> |"Yes"| END_Status_Collection_Null
    Status_Collection_Null_0 --> |"No"| Update_Related_Records_0
    Status_Collection_Null_0 --> |"Yes"| END_Status_Collection_Null_0
    DocuSign_Loop --> |"For Each"|Part_of_Current_Package
    DocuSign_Loop ---> |"After Last"|Status_Collection_Null
    DocuSign_Loop_0 --> |"For Each"|Part_of_Current_Package_0
    DocuSign_Loop_0 ---> |"After Last"|Status_Collection_Null_0
    Delete_Account --> Update_DocuSign
    Delete_Account_0 --> Update_DocuSign_0
    Check_for_Duplicate_Account --> Duplicate_Found
    Find_Proposal --> Proposal_Found
    Find_Proposal_From_Partner_Form --> Proposal_Found
    Get_AC --> AC_Found_Decision
    Get_AC_0 --> Assign_New_Values_0
    Get_AC_0_0 --> AC_Found_Decision
    Get_DocuSign_Collection --> Collection_Null
    Get_DocuSign_Collection_0 --> Collection_Null_0
    Get_Lead --> Lead_Found_Decision
    Close_Opp --> Duplicate_Found_0_0
    Close_Opp -. Fault .->Alert_BI_and_Owner_to_Closure_Failure
    Move_Lead_to_Working --> Is_this_an_a4s
    Move_Opp_to_Pending_Signature --> Duplicate_Found_0
    Update_AC --> Update_Account
    Update_AC_0 --> Update_Account_0
    Update_Account --> Delete_Account
    Update_Account_0 --> Delete_Account_0
    Update_Contact --> Update_AC
    Update_Contact_0 --> Update_AC_0
    Update_DocuSign --> Get_DocuSign_Collection
    Update_DocuSign_0 --> Get_DocuSign_Collection_0
    Update_Docusign_Status --> Get_DocuSign_Collection
    Update_Imp_Adoption --> Duplicate_Found_0_0_0_0
    Update_Imp_Adoption -. Fault .->Duplicate_Found_0_0_0_0
    Update_Imp_Loan_Policy --> Duplicate_Found_0_0_0_0
    Update_Imp_Loan_Policy -. Fault .->Duplicate_Found_0_0_0_0
    Update_Opp --> Update_Contact
    Update_Related_Records --> END_Update_Related_Records
    Update_Related_Records_0 --> END_Update_Related_Records_0
    START -->  Mapped_Records_Present
    END_Alert_BI_and_Owner_to_Closure_Failure(( END )):::endClass
    END_Alert_BI_and_Owner_to_Conversion_Failure(( END )):::endClass
    END_A4S_Already_Signed(( END )):::endClass
    END_Collection_Null(( END )):::endClass
    END_Collection_Null_0(( END )):::endClass
    END_Doc_Already_Signed(( END )):::endClass
    END_Doc_Type(( END )):::endClass
    END_Doc_Type_Signed(( END )):::endClass
    END_Loop_Validation(( END )):::endClass
    END_Part_of_Current_Package(( END )):::endClass
    END_Part_of_Current_Package_0(( END )):::endClass
    END_Record_Ready_to_Update(( END )):::endClass
    END_Status_Collection_Null(( END )):::endClass
    END_Status_Collection_Null_0(( END )):::endClass
    END_Update_Related_Records(( END )):::endClass
    END_Update_Related_Records_0(( END )):::endClass
    
    
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
    |Object|dsfs__DocuSign_Recipient_Status__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create And Update|
    |Label|DocuSign Recipient | After Trigger | Associate Key Records|
    |Status|Active|
    |Description|Updated to add error handling to lead conversions + opp closure.  Emails owner of errored record + BI to resolve.|
    |Environments|Default|
    |Interview Label|DocuSign Recipient | After Trigger | Associate Key Records {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Mapped_Records_Present](#mapped_records_present)|
    |Next Node|[Mapped_Records_Present](#mapped_records_present)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|dsfs__DocuSign_Recipient_Email__c| Is Null|<!-- -->|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |associatedContact|SObject|⬜|✅|⬜|Associated_Contact__c|<!-- -->|
    |contact|SObject|⬜|✅|⬜|Contact|<!-- -->|
    |docSubject|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |docType|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |docuSignStatus|SObject|⬜|✅|⬜|dsfs__DocuSign_Status__c|<!-- -->|
    |duplicateAccount|SObject|⬜|✅|⬜|Account|<!-- -->|
    |loopValidation|Number|⬜|✅|⬜|<!-- -->|<!-- -->|
    |obsoleteAccount|SObject|⬜|✅|⬜|Account|<!-- -->|
    |opp|SObject|⬜|✅|⬜|Opportunity|<!-- -->|
    |proposal|SObject|⬜|✅|⬜|Proposal__c|<!-- -->|
    |recipientCollection|SObject|✅|✅|⬜|dsfs__DocuSign_Recipient_Status__c|<!-- -->|
    |recordId|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |relatedStatus|SObject|⬜|✅|⬜|dsfs__DocuSign_Status__c|<!-- -->|
    |relatedStatusCollection|SObject|✅|✅|⬜|dsfs__DocuSign_Status__c|<!-- -->|
    |relevantLead|SObject|⬜|✅|⬜|Lead|<!-- -->|
    |soqlCollection|SObject|✅|✅|⬜|dsfs__DocuSign_Status__c|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |AutoEnrollEscalationTypeStandard|String|IF(<br/>CONTAINS(TEXT({!proposal.Auto_Enrollment_Deferral_Escalation_Rate__c}),"Auto"),"Auto-Escalate",<br/>  IF(<br/>  CONTAINS(TEXT({!proposal.Auto_Enrollment_Deferral_Escalation_Rate__c}),"Flat"),"Flat","None")<br/>)|<!-- -->|
    |AutoEnrollEscallationTypeMML|String|CASE(<br/>     {!proposal.Auto_Deferral_Type__c},<br/>    "FLAT", "Flat", <br/>    "ESCALATING", "Auto-Escalate", <br/>    "", "None",<br/>    "None"<br/>)|<!-- -->|
    |campaignCodeForm|String|IF(ISBLANK({!$Record.dsfs__Parent_Status_Record__r.dsfs__Opportunity__r.Campaign_Code__c}),<br/>IF(ISBLANK({!associatedContact.Opportunity__r.Campaign_Code__c}),"",{!associatedContact.Opportunity__r.Campaign_Code__c}),<br/>{!$Record.dsfs__Parent_Status_Record__r.dsfs__Opportunity__r.Campaign_Code__c})|<!-- -->|
    |dateSigned|Date|DATEVALUE({!$Record.dsfs__Date_Signed__c})|<!-- -->|
    |docusignLink|String|LEFT({!$Api.Partner_Server_URL_340}, FIND( '/services', {!$Api.Partner_Server_URL_340}))+"lightning/r/dsfs__Docusign_Recipient_Status__c/"+{!$Record.Id}+"/view"|<!-- -->|
    |leadLink|String|LEFT({!$Api.Partner_Server_URL_340}, FIND( '/services', {!$Api.Partner_Server_URL_340}))+"lightning/r/Lead/"+{!relevantLead.Id}+"/view"|<!-- -->|
    |oppLink|String|LEFT({!$Api.Partner_Server_URL_340}, FIND( '/services', {!$Api.Partner_Server_URL_340}))+"lightning/r/Opportunity/"+{!opp.Id}+"/view"|<!-- -->|
    |OppNotesPayrollProvider|String|IF(ISBLANK({!opp.Opportunity_Notes__c}), <br/>"%%Payroll Provider%% " & {!proposal.Payroll_Provider__c}, <br/>{!opp.Opportunity_Notes__c} & BR() & "%%Payroll Provider%% " & {!proposal.Payroll_Provider__c} <br/>)|Adds Proposal's Payroll Provider to the Opportunity Notes.|
    |sentWindow|DateTime|NOW()-(50*(1/1440))|<!-- -->|
    |today|Date|TODAY()|<!-- -->|
    
    
    ## Constants
    
    |Name|Data Type|Value|Description|
    |:-- |:--:|:--:|:--  |
    |doNotUse|Boolean|<!-- -->|Just to trigger change for dev pipeline|
    
    
    ## Text Templates
    
    |Name|Text|Description|
    |:-- |:-- |:--  |
    |leadErrorEmailBody|<p><span style="font-size: 14px;">Hello,</span></p><p><span style="font-size: 14px;">The agreement for services document was received for {!relevantLead.Name}. However, the lead's auto conversion </span><strong style="font-size: 14px;">failed</strong><span style="font-size: 14px;">. Please take action based on the error message below to resolve.</span></p><p><span style="font-size: 14px;">{!$Flow.FaultMessage}</span></p><p><span style="font-size: 14px;">Link to lead: {!leadLink}</span></p><p><span style="font-size: 14px;">Link to docusign recipient status: {!docusignLink}</span></p><p><span style="font-size: 14px;">__</span></p>|<!-- -->|
    |oppErrorEmailBody|<p><span style="font-size: 14px;">Hello,</span></p><p><span style="font-size: 14px;">The signed agreement for services document was received for {!opp.Name}. However, the opportunity's auto closure </span><strong style="font-size: 14px;">failed</strong><span style="font-size: 14px;">. Please take action based on the error message below to resolve.</span></p><p><span style="font-size: 14px;">{!$Flow.FaultMessage}</span></p><p><span style="font-size: 14px;">Link to opportunity: {!oppLink}</span></p><p><span style="font-size: 14px;">Link to docusign recipient status: {!docusignLink}</span></p><p><span style="font-size: 14px;">__</span></p>|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Alert_BI_and_Owner_to_Closure_Failure
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Alert BI and Owner to Closure Failure|
    |Action Type|Email Simple|
    |Action Name|emailSimple|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|emailSimple|
    |Offset|0|
    |Email Addresses (input)|bi@myubiquity.com,{!associatedContact.Opportunity__r.Owner.Email}|
    |Sender Type (input)|OrgWideEmailAddress|
    |Sender Address (input)|dontrespond@myubiquity.com|
    |Email Subject (input)|Opportunity auto close error: {!opp.Name}|
    |Email Body (input)|oppErrorEmailBody|
    |Send Rich Body (input)|✅|
    
    
    ### Alert_BI_and_Owner_to_Conversion_Failure
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Alert BI and Owner to Conversion Failure|
    |Action Type|Email Simple|
    |Action Name|emailSimple|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|emailSimple|
    |Offset|0|
    |Email Addresses (input)|bi@myubiquity.com,{!relevantLead.Owner:User.Email}|
    |Sender Type (input)|OrgWideEmailAddress|
    |Sender Address (input)|dontrespond@myubiquity.com|
    |Email Subject (input)|Lead conversion error: {!relevantLead.Name}|
    |Email Body (input)|leadErrorEmailBody|
    |Send Rich Body (input)|✅|
    
    
    ### Convert_Lead
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Convert Lead|
    |Action Type|Apex|
    |Action Name|[AutoConvertLeads](../apex/AutoConvertLeads.md)|
    |Fault Connector|[Alert_BI_and_Owner_to_Conversion_Failure](#alert_bi_and_owner_to_conversion_failure)|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|AutoConvertLeads|
    |Offset|0|
    | Lead Ids (input)|relevantLead.Id|
    |Connector|[Get_AC](#get_ac)|
    
    
    ### Assign_MML_provisions
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign MML provisions|
    |Connector|[Assign_Provisions](#assign_provisions)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |opp.Opportunity_Notes__c| Assign|OppNotesPayrollProvider|
    |opp.Auto_Enroll_Escalation_Type__c| Assign|AutoEnrollEscallationTypeMML|
    
    
    
    
    ### Assign_New_Values
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign New DocuSign Values|
    |Connector|[Doc_Type](#doc_type)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |docuSignStatus.Id| Assign|$Record.dsfs__Parent_Status_Record__c|
    |docuSignStatus.dsfs__Opportunity__c| Assign|associatedContact.Opportunity__c|
    |docuSignStatus.dsfs__Company__c| Assign|associatedContact.Account__c|
    |docuSignStatus.dsfs__Contact__c| Assign|associatedContact.Contact__c|
    |docuSignStatus.Implementation__c| Assign|associatedContact.Implementation__c|
    
    
    
    
    ### Assign_New_Values_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign New DocuSign Values|
    |Connector|[Doc_Type](#doc_type)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |docuSignStatus.Id| Assign|$Record.dsfs__Parent_Status_Record__c|
    |docuSignStatus.dsfs__Opportunity__c| Assign|associatedContact.Opportunity__c|
    |docuSignStatus.dsfs__Company__c| Assign|associatedContact.Account__c|
    |docuSignStatus.dsfs__Contact__c| Assign|associatedContact.Contact__c|
    |docuSignStatus.Implementation__c| Assign|associatedContact.Implementation__c|
    
    
    
    
    ### Assign_Opp_Values
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Opp Values|
    |Connector|[Close_Opp](#close_opp)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |opp.Id| Assign|associatedContact.Opportunity__c|
    |opp.StageName| Assign|Closed Won|
    |opp.CloseDate| Assign|today|
    |opp.A4S_Document__c| Assign|$Record.dsfs__Parent_Status_Record__c|
    |opp.Desired_Plan_Start_Date__c| Assign|today|
    |opp.Agreement_for_Services_A4S__c| Assign|✅|
    |opp.Custodian__c| Assign|MG Trust Company, LLC.|
    |opp.Name| Assign|associatedContact.Opportunity__r.Name|
    
    
    
    
    ### Assign_Opp_Values_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Opp Values|
    |Connector|[Assign_New_Values](#assign_new_values)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |opp.Id| Assign|associatedContact.Opportunity__c|
    |opp.AccountId| Assign|duplicateAccount.Id|
    |associatedContact.Account__c| Assign|duplicateAccount.Id|
    |contact.AccountId| Assign|duplicateAccount.Id|
    |contact.Id| Assign|associatedContact.Contact__c|
    
    
    
    
    ### Assign_Opp_Values_0_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Opp Values|
    |Connector|[Move_Opp_to_Pending_Signature](#move_opp_to_pending_signature)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |opp.Id| Assign|associatedContact.Opportunity__c|
    |opp.StageName| Assign|Pending Signature|
    
    
    
    
    ### Assign_Provisions
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Provisions|
    |Connector|[Simply_Conversion_Update_Check](#simply_conversion_update_check)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |opp.Product_Type__c| Assign|proposal.Product_Type__c|
    |opp.Plan_Type__c| Assign|proposal.Plan_Type__c|
    |opp.Service_Option__c| Assign|proposal.Service_Option__c|
    |opp.Safe_Harbor__c| Assign|proposal.Safe_Harbor__c|
    |opp.Safe_Harbor_Match_Determination_Period__c| Assign|proposal.Safe_Harbor_Match_Determination_Period__c|
    |opp.AutoEnrollment__c| Assign|proposal.Auto_Enrollment__c|
    |opp.QACA_Safe_Harbor_Vesting_Schedule__c| Assign|proposal.QACA_Safe_Harbor_Vesting_Schedule__c|
    |opp.Roth__c| Assign|proposal.Roth_Contributions__c|
    |opp.Profit_Sharing__c| Assign|proposal.Profit_Sharing__c|
    |opp.Profit_Sharing_Match_Vesting_Schedule__c| Assign|proposal.Profit_Sharing_Match_Vesting_Schedule__c|
    |opp.Sponsor_to_Pay_Participant_Fees__c| Assign|proposal.Participant_Fee_Payment__c|
    |opp.Custodian__c| Assign|proposal.Custodian__c|
    |opp.Fund_List__c| Assign|proposal.Fund_List__c|
    |opp.X3_38__c| Assign|proposal.X3_38__c|
    |opp.Brokerage_Accounts_PCRA__c| Assign|proposal.Brokerage_Accounts_PCRA__c|
    |opp.Loans__c| Assign|proposal.Loans__c|
    |opp.Hardships__c| Assign|proposal.Hardships__c|
    |opp.Eligibility_Age__c| Assign|proposal.Eligibility_Age__c|
    |opp.Plan_Eligibility__c| Assign|proposal.Plan_Eligibility__c|
    |opp.Plan_Entry_Frequency__c| Assign|proposal.Plan_Entry_Frequency__c|
    |opp.Deferral_Change_Frequency__c| Assign|proposal.Deferral_Change_Frequency__c|
    |opp.Discretionary_Match__c| Assign|proposal.Discretionary_Match__c|
    |opp.Discretionary_Match_Notes__c| Assign|proposal.Discretionary_Match_Formula_Notes__c|
    |opp.Initial_Deferral_Rate__c| Assign|proposal.Min_Auto_Deferral_Percentage__c|
    |opp.Maximum_Deferral_Rate__c| Assign|proposal.Max_Auto_Deferral_Percentage__c|
    |opp.Previous_Plan_Effective_Date__c| Assign|proposal.Original_Effective_Date__c|
    |opp.Restatement_Date__c| Assign|proposal.Restatement_Date__c|
    |opp.Plan_Number__c| Assign|proposal.Plan_Number__c|
    |opp.Auto_Enroll_Escalation_Type__c| Assign|AutoEnrollEscallationTypeMML|
    
    
    
    
    ### Assign_Provisions_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Provisions|
    |Connector|isGoTo: true<br/>targetReference: A4S_Already_Signed<br/>|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |opp.Product_Type__c| Assign|PEP|
    |opp.Plan_Type__c| Assign|proposal.Plan_Type__c|
    |opp.Service_Option__c| Assign|proposal.Service_Option__c|
    |opp.Safe_Harbor__c| Assign|proposal.Safe_Harbor__c|
    |opp.Safe_Harbor_Match_Determination_Period__c| Assign|proposal.Safe_Harbor_Match_Determination_Period__c|
    |opp.AutoEnrollment__c| Assign|proposal.Auto_Enrollment__c|
    |opp.QACA_Safe_Harbor_Vesting_Schedule__c| Assign|proposal.QACA_Safe_Harbor_Vesting_Schedule__c|
    |opp.Roth__c| Assign|proposal.Roth_Contributions__c|
    |opp.Profit_Sharing__c| Assign|proposal.Profit_Sharing__c|
    |opp.Sponsor_to_Pay_Participant_Fees__c| Assign|proposal.Participant_Fee_Payment__c|
    |opp.Custodian__c| Assign|proposal.Custodian__c|
    |opp.Fund_List__c| Assign|proposal.Fund_List__c|
    |opp.X3_38__c| Assign|proposal.Fund_List__c|
    |opp.Brokerage_Accounts_PCRA__c| Assign|No|
    |opp.Loans__c| Assign|proposal.Loans__c|
    |opp.Hardships__c| Assign|proposal.Hardships__c|
    |opp.Eligibility_Age__c| Assign|proposal.Eligibility_Age__c|
    |opp.Plan_Eligibility__c| Assign|proposal.Plan_Eligibility__c|
    |opp.Plan_Entry_Frequency__c| Assign|proposal.Plan_Entry_Frequency__c|
    |opp.Deferral_Change_Frequency__c| Assign|proposal.Deferral_Change_Frequency__c|
    |opp.Discretionary_Match__c| Assign|proposal.Discretionary_Match__c|
    |opp.Discretionary_Match_Notes__c| Assign|proposal.Discretionary_Match_Formula_Notes__c|
    |opp.Auto_Enroll_Escalation_Type__c| Assign|AutoEnrollEscallationTypeMML|
    |opp.Initial_Deferral_Rate__c| Assign|proposal.Min_Auto_Deferral_Percentage__c|
    |opp.Maximum_Deferral_Rate__c| Assign|proposal.Max_Auto_Deferral_Percentage__c|
    
    
    
    
    ### Assign_Standard_Auto_Escalation
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Standard Auto Escalation|
    |Connector|[Assign_Provisions](#assign_provisions)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |opp.Auto_Enroll_Escalation_Type__c| Assign|AutoEnrollEscalationTypeStandard|
    
    
    
    
    ### Assign_to_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign to Collection|
    |Connector|[DocuSign_Loop](#docusign_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |relatedStatusCollection| Add|relatedStatus|
    
    
    
    
    ### Assign_to_Collection_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign to Collection|
    |Connector|[DocuSign_Loop_0](#docusign_loop_0)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |relatedStatusCollection| Add|relatedStatus|
    
    
    
    
    ### Close_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Close Loop|
    |Connector|[Get_Lead](#get_lead)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |loopValidation| Add|1|
    
    
    
    
    ### DocuSign_Status_Updates
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|DocuSign Status Updates|
    |Connector|[Assign_to_Collection](#assign_to_collection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |relatedStatus.Id| Assign|DocuSign_Loop.dsfs__Parent_Status_Record__c|
    |relatedStatus.dsfs__Opportunity__c| Assign|associatedContact.Opportunity__c|
    |relatedStatus.dsfs__Company__c| Assign|associatedContact.Account__c|
    |relatedStatus.dsfs__Contact__c| Assign|associatedContact.Contact__c|
    
    
    
    
    ### DocuSign_Status_Updates_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|DocuSign Status Updates|
    |Connector|[Assign_to_Collection_0](#assign_to_collection_0)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |relatedStatus.Id| Assign|DocuSign_Loop.dsfs__Parent_Status_Record__c|
    |relatedStatus.dsfs__Opportunity__c| Assign|associatedContact.Opportunity__c|
    |relatedStatus.dsfs__Company__c| Assign|associatedContact.Account__c|
    |relatedStatus.dsfs__Contact__c| Assign|associatedContact.Contact__c|
    |relatedStatus.Implementation__c| Assign|associatedContact.Implementation__c|
    
    
    
    
    ### Mark_Account_for_Deletion
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Mark Account for Deletion|
    |Connector|[Update_Account_Values](#update_account_values)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |obsoleteAccount.Id| Assign|associatedContact.Account__c|
    
    
    
    
    ### Simply_Conversion_Opp_Fields
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Simply Conversion Opp Fields|
    |Connector|isGoTo: true<br/>targetReference: A4S_Already_Signed<br/>|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |opp.Conversion_Type__c| Assign|Standard 401(k) Plan|
    |opp.Plan_Type__c| Assign|Conversion Plan|
    
    
    
    
    ### Update_Account_Values
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Update Account Values|
    |Connector|[Assign_Opp_Values_0](#assign_opp_values_0)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |duplicateAccount.NumberOfEmployees| Assign|associatedContact.Account__r.NumberOfEmployees|
    |duplicateAccount.BillingState| Assign|associatedContact.Account__r.BillingState|
    
    
    
    
    ### A4S_Already_Signed
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|A4S Already Signed?|
    |Default Connector Label|Default|
    
    
    #### Rule A4S_Signed (A4S Signed)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Opp_Values](#assign_opp_values)|
    |Condition Logic|1 AND (2 OR 3 OR 4 OR 5 OR 6)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.dsfs__Date_Signed__c| Is Null|⬜|
    |2|associatedContact.Business_Unit__c| Equal To|Simply Retirement|
    |3|associatedContact.Lead_Source_Detail__c| Equal To|Sallus|
    |4|associatedContact.Lead_Source__c| Equal To|Sallus|
    |5|Ubiquity_Self_Service| Equal To|✅|
    |6|FIRST_FINANCIAL_CHANGE_ME| Equal To|✅|
    
    
    
    
    #### Rule A4S_Not_Signed (A4S Not Signed)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Opp_Values_0_0](#assign_opp_values_0_0)|
    |Condition Logic|1 AND (2 OR 4 OR 5 OR 6) AND 3|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.dsfs__Date_Signed__c| Is Null|✅|
    |2|associatedContact.Business_Unit__c| Equal To|Simply Retirement|
    |3|associatedContact.Opportunity__r.StageName| Not Equal To|Closed Won|
    |4|associatedContact.Lead_Source_Detail__c| Equal To|Sallus|
    |5|associatedContact.Lead_Source__c| Equal To|Sallus|
    |6|Ubiquity_Self_Service| Equal To|✅|
    
    
    
    
    ### AC_Found_Decision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|AC Found?|
    |Default Connector|[Loop_Validation](#loop_validation)|
    |Default Connector Label|AC Not Found|
    
    
    #### Rule AC_Found (AC Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Check_for_Duplicate_Account](#check_for_duplicate_account)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|associatedContact.Id| Is Null|⬜|
    
    
    
    
    ### Collection_Null
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Collection Null?|
    |Default Connector Label|Yes|
    
    
    #### Rule No (No)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[DocuSign_Loop](#docusign_loop)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|recipientCollection| Is Null|⬜|
    
    
    
    
    ### Collection_Null_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Collection Null?|
    |Default Connector Label|Yes|
    
    
    #### Rule No_0 (No)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[DocuSign_Loop_0](#docusign_loop_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|recipientCollection| Is Null|⬜|
    
    
    
    
    ### Doc_Already_Signed
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Doc Already Signed?|
    |Default Connector Label|Default|
    
    
    #### Rule Signed (Signed)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Doc_Type_Signed](#doc_type_signed)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.dsfs__Date_Signed__c| Is Null|⬜|
    
    
    
    
    #### Rule Not_Signed (Not Signed)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Duplicate_Found_0_0_0_0](#duplicate_found_0_0_0_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.dsfs__Date_Signed__c| Is Null|✅|
    
    
    
    
    ### Doc_Type
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Doc Type|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule FIRST_FINANCIAL_CHANGE_ME (FIRST FINANCIAL CHANGE ME)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Find_Proposal_From_Partner_Form](#find_proposal_from_partner_form)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|associatedContact.Opportunity__r.Associated_Partner__r.Name| Equal To|First Financial Group - PA|
    |2|associatedContact.Opportunity__r.StageName| Not Equal To|Closed Won|
    |3|associatedContact.Opportunity__r.Agreement_for_Services_A4S__c| Equal To|⬜|
    |4|$Record.Document_Name__c| Contains|Agreement for Services|
    
    
    
    
    #### Rule Simply_A4S_Sallus_PEP (Simply A4S/Sallus PEP)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Find_Proposal](#find_proposal)|
    |Condition Logic|(1 AND 2 AND 4) OR (3 AND 4)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.dsfs__Parent_Status_Record__r.dsfs__Subject__c| Contains|Agreement for Services|
    |2|associatedContact.Business_Unit__c| Equal To|Simply Retirement|
    |3|$Record.dsfs__Parent_Status_Record__r.dsfs__Subject__c| Contains|Sallus PEP Agreement|
    |4|associatedContact.Opportunity__r.StageName| Not Equal To|Closed Won|
    
    
    
    
    #### Rule Post_Sale_Docs_Signed (Post-Sale Docs Signed)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Doc_Already_Signed](#doc_already_signed)|
    |Condition Logic|1 AND (2 OR 3 OR 4 OR 5)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|associatedContact.Implementation__c| Is Null|⬜|
    |2|$Record.dsfs__Parent_Status_Record__r.dsfs__Subject__c| Contains|Adoption Agreement|
    |3|$Record.dsfs__Parent_Status_Record__r.dsfs__Subject__c| Contains|Loan Policy Statement|
    |4|$Record.dsfs__Parent_Status_Record__r.dsfs__Subject__c| Contains|Joinder|
    |5|$Record.dsfs__Parent_Status_Record__r.dsfs__Subject__c| Contains|Wilshire|
    
    
    
    
    #### Rule Ubiquity_Self_Service (Ubiquity Self Service)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[A4S_Already_Signed](#a4s_already_signed)|
    |Condition Logic|(1 OR 2 OR 3 OR 4) AND 5 AND 6 AND 7|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|associatedContact.Opportunity__r.Campaign_Code__c| Equal To|Single(k) Long|
    |2|associatedContact.Opportunity__r.Campaign_Code__c| Equal To|Single(k) Short|
    |3|associatedContact.Opportunity__r.Campaign_Code__c| Equal To|Single(k) Plus Long|
    |4|associatedContact.Opportunity__r.Campaign_Code__c| Equal To|Single(k) Plus Short|
    |5|associatedContact.Opportunity__r.StageName| Not Equal To|Closed Won|
    |6|associatedContact.Opportunity__r.Agreement_for_Services_A4S__c| Equal To|⬜|
    |7|$Record.dsfs__Parent_Status_Record__r.dsfs__Subject__c| Contains|Agreement for Services|
    
    
    
    
    #### Rule Ubiquity_A4S (Ubiquity A4S)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Docusign_Status](#update_docusign_status)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.dsfs__Parent_Status_Record__r.dsfs__Subject__c| Contains|Agreement For Services|
    |2|associatedContact.Business_Unit__c| Equal To|Ubiquity|
    |3|associatedContact.Opportunity__r.StageName| Not Equal To|Closed Won|
    |4|associatedContact.Opportunity__r.Agreement_for_Services_A4S__c| Equal To|⬜|
    
    
    
    
    ### Doc_Type_Signed
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Doc Type Signed|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Adoption (Adoption)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Imp_Adoption](#update_imp_adoption)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.dsfs__Parent_Status_Record__r.dsfs__Subject__c| Contains|Adoption Agreement|
    |2|$Record.dsfs__Parent_Status_Record__r.dsfs__Subject__c| Contains|Joinder|
    |3|$Record.dsfs__Parent_Status_Record__r.dsfs__Subject__c| Contains|Wilshire|
    
    
    
    
    #### Rule Trust (Trust)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Imp_Loan_Policy](#update_imp_loan_policy)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.dsfs__Parent_Status_Record__r.dsfs__Subject__c| Contains|Loan Policy Statement|
    
    
    
    
    ### Duplicate_Found
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Duplicate Found?|
    |Default Connector|[Assign_New_Values](#assign_new_values)|
    |Default Connector Label|No Duplicates Found|
    
    
    #### Rule Duplicate_Account_Found (Duplicate Account Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Mark_Account_for_Deletion](#mark_account_for_deletion)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|duplicateAccount.Id| Is Null|⬜|
    
    
    
    
    ### Duplicate_Found_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Duplicate Found?|
    |Default Connector|[Record_Ready_to_Update](#record_ready_to_update)|
    |Default Connector Label|No Duplicates Found|
    
    
    #### Rule Duplicate_Account_Found_0 (Duplicate Account Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Opp](#update_opp)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|duplicateAccount.Id| Is Null|⬜|
    
    
    
    
    ### Duplicate_Found_0_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Duplicate Found?|
    |Default Connector|[Update_DocuSign](#update_docusign)|
    |Default Connector Label|No Duplicates Found|
    
    
    #### Rule Duplicate_Account_Found_0_0 (Duplicate Account Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|isGoTo: true<br/>targetReference: Update_Contact<br/>|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|duplicateAccount.Id| Is Null|⬜|
    
    
    
    
    ### Duplicate_Found_0_0_0_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Duplicate Found?|
    |Default Connector|[Update_DocuSign_0](#update_docusign_0)|
    |Default Connector Label|No Duplicates Found|
    
    
    #### Rule Duplicate_Account_Found_0_0_0_0 (Duplicate Account Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Contact_0](#update_contact_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|duplicateAccount.Id| Is Null|⬜|
    
    
    
    
    ### Is_this_an_a4s
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Is this an a4s|
    |Default Connector|[Get_AC](#get_ac)|
    |Default Connector Label|non a4s|
    
    
    #### Rule A4S_document_in_flow (A4S document in flow)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Convert_Lead](#convert_lead)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Document_Name__c| Contains|Agreement for services|
    |2|$Record.Document_Name__c| Contains|Sallus PEP Agreement|
    
    
    
    
    ### Lead_Found_Decision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Lead Found?|
    |Default Connector|[Get_AC](#get_ac)|
    |Default Connector Label|Lead Not Found|
    
    
    #### Rule Lead_Found (Lead Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Lead_Unqualified](#lead_unqualified)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|relevantLead.Id| Is Null|⬜|
    |2|relevantLead.OwnerId| Starts With|5|
    
    
    
    
    ### Lead_Unqualified
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Lead Unqualified?|
    |Default Connector|[Is_this_an_a4s](#is_this_an_a4s)|
    |Default Connector Label|Working|
    
    
    #### Rule Unqualified (Unqualified)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Move_Lead_to_Working](#move_lead_to_working)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|relevantLead.Status| Equal To|Unable to Qualify|
    |2|relevantLead.Status| Equal To|Unqualified|
    
    
    
    
    ### Loop_Validation
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Loop Validation|
    |Default Connector Label|A4S Not Signed|
    
    
    #### Rule Equals_0 (Equals 0)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Close_Loop](#close_loop)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|loopValidation| Equal To|numberValue: 0<br/>|
    
    
    
    
    ### Mapped_Records_Present
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Mapped Records Present|
    |Default Connector|[Get_AC_0_0](#get_ac_0_0)|
    |Default Connector Label|No|
    
    
    #### Rule Yes (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_AC_0](#get_ac_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.dsfs__Parent_Status_Record__r.dsfs__Opportunity__c| Is Null|⬜|
    
    
    
    
    ### MML
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|MML?|
    |Default Connector|[Assign_Standard_Auto_Escalation](#assign_standard_auto_escalation)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes_MML (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_MML_provisions](#assign_mml_provisions)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|proposal.Service_Option__c| Equal To|Custom(k) MML|
    
    
    
    
    ### Part_of_Current_Package
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Part of Current Package|
    |Default Connector Label|Obsolete|
    
    
    #### Rule Current_Package (Current Package)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[DocuSign_Status_Updates](#docusign_status_updates)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|DocuSign_Loop.dsfs__Date_Sent__c| Greater Than Or Equal To|sentWindow|
    |2|DocuSign_Loop.Opportunity__c| Is Null|✅|
    
    
    
    
    ### Part_of_Current_Package_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Part of Current Package|
    |Default Connector Label|Obsolete|
    
    
    #### Rule Current_Package_0 (Current Package)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[DocuSign_Status_Updates_0](#docusign_status_updates_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|DocuSign_Loop.dsfs__Date_Sent__c| Greater Than Or Equal To|sentWindow|
    |2|DocuSign_Loop.Opportunity__c| Is Null|✅|
    
    
    
    
    ### Proposal_Found
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Proposal Found|
    |Default Connector|isGoTo: true<br/>targetReference: A4S_Already_Signed<br/>|
    |Default Connector Label|Proposal Not Found|
    
    
    #### Rule Proposal_Present (Proposal Present)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Provision_Correction](#provision_correction)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|proposal.Id| Is Null|⬜|
    
    
    
    
    ### Provision_Correction
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Provision Correction|
    |Default Connector|[MML](#mml)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Needs_Sallus_Correction (Needs Sallus Correction)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Provisions_0](#assign_provisions_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|proposal.RecordTypeId| Equal To|0121G000000RlhjQAC|
    
    
    
    
    ### Record_Ready_to_Update
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Record Ready to Update|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Update_Record (Update Record)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_DocuSign](#update_docusign)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|docuSignStatus.Id| Is Null|⬜|
    
    
    
    
    ### Simply_Conversion_Update_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Simply Conversion Update Check|
    |Default Connector|isGoTo: true<br/>targetReference: A4S_Already_Signed<br/>|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Conv_Update_Needed (Conv Update Needed)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Simply_Conversion_Opp_Fields](#simply_conversion_opp_fields)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|proposal.Plan_Type__c| Equal To|Conversion Plan|
    |2|proposal.Service_Option__c| Contains|Simply Retirement|
    
    
    
    
    ### Status_Collection_Null
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Status Collection Null?|
    |Default Connector Label|Yes|
    
    
    #### Rule NoNull (No)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Related_Records](#update_related_records)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|relatedStatusCollection| Is Null|⬜|
    
    
    
    
    ### Status_Collection_Null_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Status Collection Null?|
    |Default Connector Label|Yes|
    
    
    #### Rule NoNull_0 (No)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Related_Records_0](#update_related_records_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|relatedStatusCollection| Is Null|⬜|
    
    
    
    
    ### DocuSign_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|DocuSign Loop|
    |Collection Reference|recipientCollection|
    |Iteration Order|Asc|
    |Next Value Connector|[Part_of_Current_Package](#part_of_current_package)|
    |No More Values Connector|[Status_Collection_Null](#status_collection_null)|
    
    
    ### DocuSign_Loop_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|DocuSign Loop|
    |Collection Reference|recipientCollection|
    |Iteration Order|Asc|
    |Next Value Connector|[Part_of_Current_Package_0](#part_of_current_package_0)|
    |No More Values Connector|[Status_Collection_Null_0](#status_collection_null_0)|
    
    
    ### Delete_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Delete|
    |Label|Delete Account|
    |Input Reference|obsoleteAccount|
    |Connector|[Update_DocuSign](#update_docusign)|
    
    
    ### Delete_Account_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Delete|
    |Label|Delete Account|
    |Input Reference|obsoleteAccount|
    |Connector|[Update_DocuSign_0](#update_docusign_0)|
    
    
    ### Check_for_Duplicate_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Account|
    |Label|Check for Duplicate Account|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|duplicateAccount|
    |Queried Fields|- Id<br/>- NumberOfEmployees<br/>|
    |Connector|[Duplicate_Found](#duplicate_found)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Not Equal To|associatedContact.Account__c|
    |2|Name| Equal To|associatedContact.Account__r.Name|
    |3|CreatedDate| Less Than Or Equal To|associatedContact.CreatedDate|
    
    
    
    
    ### Find_Proposal
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Proposal__c|
    |Label|Find Proposal|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|proposal|
    |Queried Fields|- Id<br/>- Advisor_Account__c<br/>- Advisor_Broker_Dealer__c<br/>- Advisor_Compensation_Amount__c<br/>- Advisor_Compensation_Mode__c<br/>- Advisor_Contact__c<br/>- Advisor_CRD__c<br/>- Advisor_Email__c<br/>- Advisor_NPN__c<br/>- Advisor_Zip_Code__c<br/>- Annual_Base_Fee__c<br/>- Annual_Per_Head_Fee__c<br/>- Auto_Enrollment__c<br/>- Auto_Enrollment_Deferral_Escalation_Rate__c<br/>- Brokerage_Accounts_PCRA__c<br/>- Client_Company_Name__c<br/>- Company_Contact_First_Name__c<br/>- Company_Contact_Last_Name__c<br/>- Company_EIN__c<br/>- Company_Email__c<br/>- Company_State__c<br/>- Company_Zip_Code__c<br/>- Company_Zip_Postal_Code__c<br/>- ConnectionReceivedId<br/>- ConnectionSentId<br/>- Contact_Job_Title__c<br/>- Contact_Phone_Number__c<br/>- CreatedById<br/>- CreatedDate<br/>- Custodian__c<br/>- Deferral_Change_Frequency__c<br/>- Discretionary_Match__c<br/>- Discretionary_Match_Formula_Notes__c<br/>- Eligibility_Age__c<br/>- Employee_Loan_Availability__c<br/>- Employee_Match__c<br/>- Employer_Contribution__c<br/>- Employer_Contribution_Formula__c<br/>- Employer_Contribution_Type__c<br/>- Estimated_Annual_Payroll__c<br/>- Financial_Professional_Email__c<br/>- Financial_Professional_Fees__c<br/>- Financial_Professional_First_Name__c<br/>- Financial_Professional_Last_Name__c<br/>- Firm_Name__c<br/>- Fund_List__c<br/>- Hardships__c<br/>- Loans__c<br/>- Name<br/>- Number_of_Employees__c<br/>- Number_of_Non_Owner_Employees__c<br/>- Opportunity__c<br/>- OwnerId<br/>- Plan_Eligibility__c<br/>- Participant_Fee_Payment__c<br/>- Plan_ID__c<br/>- Profit_Sharing_Match_Vesting_Schedule__c<br/>- QACA_Safe_Harbor_Vesting_Schedule__c<br/>- RecordTypeId<br/>- Referrer_Email__c<br/>- Referrer_Type__c<br/>- Roth_Contributions__c<br/>- Profit_Sharing__c<br/>- Safe_Harbor__c<br/>- Sallus_ID__c<br/>- Service_Option__c<br/>- Stage_Flag__c<br/>- Status__c<br/>- Product_Type__c<br/>- TPA_Account__c<br/>- TPA_Contact__c<br/>- TPA_Included__c<br/>- X3_38__c<br/>- TPA_Sales_First_Name__c<br/>- TPA_Setup_Fee__c<br/>- TPA_EIN__c<br/>- TPA_Sales_Last_Name__c<br/>- Plan_Type__c<br/>- Plan_Entry_Frequency__c<br/>- Principal_Id__c<br/>- Safe_Harbor_Match_Determination_Period__c<br/>- Auto_Deferral_Type__c<br/>- Restatement_Date__c<br/>- Plan_Number__c<br/>- Max_Auto_Deferral_Percentage__c<br/>- Min_Auto_Deferral_Percentage__c<br/>- Previous_Plan_Effective_Date__c<br/>- Original_Effective_Date__c<br/>- Payroll_Provider__c<br/>|
    |Sort Field|CreatedDate|
    |Sort Order|Desc|
    |Connector|isGoTo: true<br/>targetReference: Proposal_Found<br/>|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Company_Email__c| Equal To|associatedContact.Email__c|
    |2|Company_Email__c| Is Null|<!-- -->|
    |3|Status__c| Equal To|Submitted for Purchase|
    |4|Stage_Flag__c| Not Equal To|Quick Quote|
    
    
    
    
    ### Find_Proposal_From_Partner_Form
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Proposal__c|
    |Label|Find Proposal From Partner Form|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|proposal|
    |Queried Fields|- Id<br/>- Advisor_Account__c<br/>- Advisor_Broker_Dealer__c<br/>- Advisor_Compensation_Amount__c<br/>- Advisor_Compensation_Mode__c<br/>- Advisor_Contact__c<br/>- Advisor_CRD__c<br/>- Advisor_Email__c<br/>- Advisor_NPN__c<br/>- Advisor_Zip_Code__c<br/>- Annual_Base_Fee__c<br/>- Annual_Per_Head_Fee__c<br/>- Auto_Enrollment__c<br/>- Auto_Enrollment_Deferral_Escalation_Rate__c<br/>- Brokerage_Accounts_PCRA__c<br/>- Client_Company_Name__c<br/>- Company_Contact_First_Name__c<br/>- Company_Contact_Last_Name__c<br/>- Company_EIN__c<br/>- Company_Email__c<br/>- Company_State__c<br/>- Company_Zip_Code__c<br/>- Company_Zip_Postal_Code__c<br/>- ConnectionReceivedId<br/>- ConnectionSentId<br/>- Contact_Job_Title__c<br/>- Contact_Phone_Number__c<br/>- CreatedById<br/>- CreatedDate<br/>- Custodian__c<br/>- Deferral_Change_Frequency__c<br/>- Discretionary_Match__c<br/>- Discretionary_Match_Formula_Notes__c<br/>- Eligibility_Age__c<br/>- Employee_Loan_Availability__c<br/>- Employee_Match__c<br/>- Employer_Contribution__c<br/>- Employer_Contribution_Formula__c<br/>- Employer_Contribution_Type__c<br/>- Estimated_Annual_Payroll__c<br/>- Financial_Professional_Email__c<br/>- Financial_Professional_Fees__c<br/>- Financial_Professional_First_Name__c<br/>- Financial_Professional_Last_Name__c<br/>- Firm_Name__c<br/>- Fund_List__c<br/>- Hardships__c<br/>- Loans__c<br/>- Name<br/>- Number_of_Employees__c<br/>- Number_of_Non_Owner_Employees__c<br/>- Opportunity__c<br/>- OwnerId<br/>- Plan_Eligibility__c<br/>- Participant_Fee_Payment__c<br/>- Plan_ID__c<br/>- Profit_Sharing_Match_Vesting_Schedule__c<br/>- QACA_Safe_Harbor_Vesting_Schedule__c<br/>- RecordTypeId<br/>- Referrer_Email__c<br/>- Referrer_Type__c<br/>- Roth_Contributions__c<br/>- Profit_Sharing__c<br/>- Safe_Harbor__c<br/>- Sallus_ID__c<br/>- Service_Option__c<br/>- Stage_Flag__c<br/>- Status__c<br/>- Product_Type__c<br/>- TPA_Account__c<br/>- TPA_Contact__c<br/>- TPA_Included__c<br/>- X3_38__c<br/>- TPA_Sales_First_Name__c<br/>- TPA_Setup_Fee__c<br/>- TPA_EIN__c<br/>- TPA_Sales_Last_Name__c<br/>- Plan_Type__c<br/>- Plan_Entry_Frequency__c<br/>- Principal_Id__c<br/>- Safe_Harbor_Match_Determination_Period__c<br/>- Auto_Deferral_Type__c<br/>- Min_Auto_Deferral_Percentage__c<br/>- Max_Auto_Deferral_Percentage__c<br/>- Original_Effective_Date__c<br/>- Restatement_Date__c<br/>- Plan_Number__c<br/>- Payroll_Provider__c<br/>|
    |Sort Field|CreatedDate|
    |Sort Order|Desc|
    |Connector|[Proposal_Found](#proposal_found)|
    
    
    #### Filters (logic: **((1 AND 2) OR (3 AND 4)) AND (5 OR 6)**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Company_Email__c| Equal To|associatedContact.Email__c|
    |2|Company_Email__c| Is Null|<!-- -->|
    |3|Referrer_Email__c| Equal To|associatedContact.Email__c|
    |4|Referrer_Email__c| Is Null|<!-- -->|
    |5|Paradigm_Purchase_Link__c| Is Null|<!-- -->|
    |6|isCalloutTriggered__c| Equal To|✅|
    
    
    
    
    ### Get_AC
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Associated_Contact__c|
    |Label|Get AC|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|associatedContact|
    |Queried Fields|- Id<br/>- Account__c<br/>- CreatedDate<br/>- Opportunity__c<br/>- Contact__c<br/>- Business_Unit__c<br/>- Email__c<br/>- Lead_Source_Detail__c<br/>- Implementation__c<br/>- Plan__c<br/>- Lead_Source__c<br/>|
    |Sort Field|CreatedDate|
    |Sort Order|Desc|
    |Connector|isGoTo: true<br/>targetReference: AC_Found_Decision<br/>|
    
    
    #### Filters (logic: **1 AND (2 OR 3)**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Email__c| Equal To|$Record.dsfs__DocuSign_Recipient_Email__c|
    |2|Opportunity_Stage__c| Not Equal To|Closed Won|
    |3|Implementation__c| Is Null|<!-- -->|
    
    
    
    
    ### Get_AC_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Associated_Contact__c|
    |Label|Get AC|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|associatedContact|
    |Queried Fields|- Id<br/>- Account__c<br/>- CreatedDate<br/>- Opportunity__c<br/>- Contact__c<br/>- Business_Unit__c<br/>- Email__c<br/>- Lead_Source_Detail__c<br/>- Implementation__c<br/>- Lead_Source__c<br/>|
    |Sort Field|CreatedDate|
    |Sort Order|Desc|
    |Connector|[Assign_New_Values_0](#assign_new_values_0)|
    
    
    #### Filters (logic: **((1 AND 2) OR (1 AND 3)) AND 4**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Email__c| Equal To|$Record.dsfs__DocuSign_Recipient_Email__c|
    |2|Opportunity_Stage__c| Not Equal To|Closed Won|
    |3|Implementation__c| Is Null|<!-- -->|
    |4|Opportunity__c| Equal To|$Record.dsfs__Parent_Status_Record__r.dsfs__Opportunity__c|
    
    
    
    
    ### Get_AC_0_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Associated_Contact__c|
    |Label|Get AC|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|associatedContact|
    |Queried Fields|- Id<br/>- Account__c<br/>- CreatedDate<br/>- Opportunity__c<br/>- Contact__c<br/>- Business_Unit__c<br/>- Email__c<br/>- Lead_Source_Detail__c<br/>- Implementation__c<br/>- Plan__c<br/>- Lead_Source__c<br/>|
    |Sort Field|CreatedDate|
    |Sort Order|Desc|
    |Connector|[AC_Found_Decision](#ac_found_decision)|
    
    
    #### Filters (logic: **1 AND (2 OR 3)**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Email__c| Equal To|$Record.dsfs__DocuSign_Recipient_Email__c|
    |2|Opportunity_Stage__c| Not Equal To|Closed Won|
    |3|Implementation__c| Is Null|<!-- -->|
    
    
    
    
    ### Get_DocuSign_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|dsfs__DocuSign_Recipient_Status__c|
    |Label|Get DocuSign Collection|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|recipientCollection|
    |Queried Fields|- Id<br/>- dsfs__Parent_Status_Record__c<br/>- dsfs__Date_Sent__c<br/>- Opportunity__c<br/>|
    |Connector|[Collection_Null](#collection_null)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|dsfs__DocuSign_Recipient_Email__c| Equal To|$Record.dsfs__DocuSign_Recipient_Email__c|
    |2|Id| Not Equal To|recordId|
    
    
    
    
    ### Get_DocuSign_Collection_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|dsfs__DocuSign_Recipient_Status__c|
    |Label|Get DocuSign Collection|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|recipientCollection|
    |Queried Fields|- Id<br/>- dsfs__Parent_Status_Record__c<br/>- dsfs__Date_Sent__c<br/>- Opportunity__c<br/>|
    |Connector|[Collection_Null_0](#collection_null_0)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|dsfs__DocuSign_Recipient_Email__c| Equal To|$Record.dsfs__DocuSign_Recipient_Email__c|
    |2|Id| Not Equal To|recordId|
    
    
    
    
    ### Get_Lead
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Lead|
    |Label|Get Lead|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|relevantLead|
    |Queried Fields|- Id<br/>- Status<br/>- Unqualified_Reason__c<br/>- OwnerId<br/>- Name<br/>|
    |Sort Field|CreatedDate|
    |Sort Order|Desc|
    |Connector|[Lead_Found_Decision](#lead_found_decision)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Email| Equal To|$Record.dsfs__DocuSign_Recipient_Email__c|
    |2|Status| Not Equal To|Qualified|
    |3|IsConverted| Equal To|⬜|
    
    
    
    
    ### Close_Opp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Close Opp|
    |Fault Connector|[Alert_BI_and_Owner_to_Closure_Failure](#alert_bi_and_owner_to_closure_failure)|
    |Input Reference|opp|
    |Connector|[Duplicate_Found_0_0](#duplicate_found_0_0)|
    
    
    ### Move_Lead_to_Working
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Lead|
    |Label|Move Lead to Working|
    |Connector|[Is_this_an_a4s](#is_this_an_a4s)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|relevantLead.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Status|Working|
    |Unqualified_Reason__c|stringValue: ''<br/>|
    
    
    
    
    ### Move_Opp_to_Pending_Signature
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Move Opp to Pending Signature|
    |Input Reference|opp|
    |Connector|[Duplicate_Found_0](#duplicate_found_0)|
    
    
    ### Update_AC
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update AC|
    |Input Reference|associatedContact|
    |Connector|[Update_Account](#update_account)|
    
    
    ### Update_AC_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update AC|
    |Input Reference|associatedContact|
    |Connector|[Update_Account_0](#update_account_0)|
    
    
    ### Update_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Account|
    |Input Reference|duplicateAccount|
    |Connector|[Delete_Account](#delete_account)|
    
    
    ### Update_Account_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Account|
    |Input Reference|duplicateAccount|
    |Connector|[Delete_Account_0](#delete_account_0)|
    
    
    ### Update_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Contact|
    |Input Reference|contact|
    |Connector|[Update_AC](#update_ac)|
    
    
    ### Update_Contact_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Contact|
    |Input Reference|contact|
    |Connector|[Update_AC_0](#update_ac_0)|
    
    
    ### Update_DocuSign
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update DocuSign|
    |Input Reference|docuSignStatus|
    |Connector|[Get_DocuSign_Collection](#get_docusign_collection)|
    
    
    ### Update_DocuSign_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update DocuSign|
    |Input Reference|docuSignStatus|
    |Connector|[Get_DocuSign_Collection_0](#get_docusign_collection_0)|
    
    
    ### Update_Docusign_Status
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Docusign Status|
    |Input Reference|docuSignStatus|
    |Connector|[Get_DocuSign_Collection](#get_docusign_collection)|
    
    
    ### Update_Imp_Adoption
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Implementation__c|
    |Label|Update Imp, Adoption|
    |Fault Connector|isGoTo: true<br/>targetReference: Duplicate_Found_0_0_0_0<br/>|
    |Connector|[Duplicate_Found_0_0_0_0](#duplicate_found_0_0_0_0)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$Record.dsfs__Parent_Status_Record__r.Implementation__c|
    |2|Implementation_Status__c| Not Equal To|Completed|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Adoption_Agreement__c|✅|
    |Ubiquity_Plan_Documents_Signed__c|dateSigned|
    
    
    
    
    ### Update_Imp_Loan_Policy
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Implementation__c|
    |Label|Update Imp, Loan Policy|
    |Fault Connector|isGoTo: true<br/>targetReference: Duplicate_Found_0_0_0_0<br/>|
    |Connector|[Duplicate_Found_0_0_0_0](#duplicate_found_0_0_0_0)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$Record.dsfs__Parent_Status_Record__r.Implementation__c|
    |2|Implementation_Status__c| Not Equal To|Completed|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Loan_Policy__c|✅|
    |Ubiquity_Plan_Documents_Signed__c|dateSigned|
    
    
    
    
    ### Update_Opp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Opp|
    |Input Reference|opp|
    |Connector|[Update_Contact](#update_contact)|
    
    
    ### Update_Related_Records
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Related Records|
    |Input Reference|relatedStatusCollection|
    
    
    ### Update_Related_Records_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Related Records|
    |Input Reference|relatedStatusCollection|
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

