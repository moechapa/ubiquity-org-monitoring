# Opportunity_Screen_Approval_Helper history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Opportunity_Screen_Approval_Helper-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Screen Flow</b>"]):::startClass
    click START "#general-information" "3245842856"
    
    Add_Contacts_to_Expected[\"🟰 <em></em><br/>Add Contacts to Expected"/]:::assignments
    click Add_Contacts_to_Expected "#add_contacts_to_expected" "2778155722"
    
    add_opp_c_to_collection[\"🟰 <em></em><br/>add opp c to collection"/]:::assignments
    click add_opp_c_to_collection "#add_opp_c_to_collection" "104334955"
    
    add_opp_p_to_collection[\"🟰 <em></em><br/>add opp p to collection"/]:::assignments
    click add_opp_p_to_collection "#add_opp_p_to_collection" "589643588"
    
    Add_selection_to_creation_list[\"🟰 <em></em><br/>Add selection to creation list"/]:::assignments
    click Add_selection_to_creation_list "#add_selection_to_creation_list" "462411541"
    
    Add_to_new_AC_collection[\"🟰 <em></em><br/>Add to new AC collection"/]:::assignments
    click Add_to_new_AC_collection "#add_to_new_ac_collection" "2420861043"
    
    addToNewPartnerCollection[\"🟰 <em></em><br/>addToNewPartnerCollection"/]:::assignments
    click addToNewPartnerCollection "#addtonewpartnercollection" "1792727998"
    
    Assign_Advisor_AC_Role[\"🟰 <em></em><br/>Assign Advisor AC Role"/]:::assignments
    click Assign_Advisor_AC_Role "#assign_advisor_ac_role" "305007954"
    
    Assign_Advisor_Partner_Role[\"🟰 <em></em><br/>Assign Advisor Partner Role"/]:::assignments
    click Assign_Advisor_Partner_Role "#assign_advisor_partner_role" "2627924141"
    
    Assign_New_Associated_Contact_Values[\"🟰 <em></em><br/>Assign New Associated Contact Values"/]:::assignments
    click Assign_New_Associated_Contact_Values "#assign_new_associated_contact_values" "3408789815"
    
    Assign_Referrer_AC_Role[\"🟰 <em></em><br/>Assign Referrer AC Role"/]:::assignments
    click Assign_Referrer_AC_Role "#assign_referrer_ac_role" "677570538"
    
    Assign_Referrer_Role[\"🟰 <em></em><br/>Assign Referrer Role"/]:::assignments
    click Assign_Referrer_Role "#assign_referrer_role" "3503090811"
    
    Assign_reset[\"🟰 <em></em><br/>Assign reset"/]:::assignments
    click Assign_reset "#assign_reset" "734083811"
    
    Assign_TPA_AC_Role[\"🟰 <em></em><br/>Assign TPA AC Role"/]:::assignments
    click Assign_TPA_AC_Role "#assign_tpa_ac_role" "2763134099"
    
    Assign_TPA_Partner_Role[\"🟰 <em></em><br/>Assign TPA Partner Role"/]:::assignments
    click Assign_TPA_Partner_Role "#assign_tpa_partner_role" "2032498048"
    
    Copy_1_of_Assign_New_Associated_Contact_Values[\"🟰 <em></em><br/>Copy 1 of Assign New Associated Contact Values"/]:::assignments
    click Copy_1_of_Assign_New_Associated_Contact_Values "#copy_1_of_assign_new_associated_contact_values" "1714702723"
    
    Mark_Association_check_as_done[\"🟰 <em></em><br/>Mark Association check as done"/]:::assignments
    click Mark_Association_check_as_done "#mark_association_check_as_done" "2150875873"
    
    Mark_PB_check_as_done[\"🟰 <em></em><br/>Mark PB check as done"/]:::assignments
    click Mark_PB_check_as_done "#mark_pb_check_as_done" "3852013490"
    
    Mark_prop_check_as_done[\"🟰 <em></em><br/>Mark prop check as done"/]:::assignments
    click Mark_prop_check_as_done "#mark_prop_check_as_done" "3113289463"
    
    Remove_existing_from_expected_junc[\"🟰 <em></em><br/>Remove existing from expected junc"/]:::assignments
    click Remove_existing_from_expected_junc "#remove_existing_from_expected_junc" "392700796"
    
    Uncheck_missing_buyer[\"🟰 <em></em><br/>Uncheck missing buyer"/]:::assignments
    click Uncheck_missing_buyer "#uncheck_missing_buyer" "399536571"
    
    Zero_out_selected_rows[\"🟰 <em></em><br/>Zero out selected rows"/]:::assignments
    click Zero_out_selected_rows "#zero_out_selected_rows" "3088917764"
    
    Filter_selections_for_expected_prod{{"🔽 <em>Collection Filter</em><br/>Filter selections for expected prod"}}:::collectionProcessors
    click Filter_selections_for_expected_prod "#filter_selections_for_expected_prod" "2813631765"
    
    acc_contacts_found_check{"🔀 <em></em><br/>acc contacts found check"}:::decisions
    click acc_contacts_found_check "#acc_contacts_found_check" "3891329997"
    
    Association_Generation_Needed_Check{"🔀 <em></em><br/>Association Generation Needed Check"}:::decisions
    click Association_Generation_Needed_Check "#association_generation_needed_check" "639152220"
    
    Buyer_Found_Check{"🔀 <em></em><br/>Buyer Found Check"}:::decisions
    click Buyer_Found_Check "#buyer_found_check" "2000521801"
    
    Check_associated_contacts{"🔀 <em></em><br/>Check associated contacts"}:::decisions
    click Check_associated_contacts "#check_associated_contacts" "1740895504"
    
    Check_associated_partners{"🔀 <em></em><br/>Check associated partners"}:::decisions
    click Check_associated_partners "#check_associated_partners" "2748906402"
    
    Check_if_ass_done_label_needed{"🔀 <em></em><br/>Check if ass done label needed"}:::decisions
    click Check_if_ass_done_label_needed "#check_if_ass_done_label_needed" "148179880"
    
    Check_if_expected_prod_selected{"🔀 <em></em><br/>Check if expected prod selected"}:::decisions
    click Check_if_expected_prod_selected "#check_if_expected_prod_selected" "3961898533"
    
    Check_if_flow_should_end{"🔀 <em></em><br/>Check if flow should end"}:::decisions
    click Check_if_flow_should_end "#check_if_flow_should_end" "118935366"
    
    Check_if_have_AC_to_insert{"🔀 <em></em><br/>Check if have AC to insert"}:::decisions
    click Check_if_have_AC_to_insert "#check_if_have_ac_to_insert" "1054059342"
    
    Check_if_have_AP_to_insert{"🔀 <em></em><br/>Check if have AP to insert"}:::decisions
    click Check_if_have_AP_to_insert "#check_if_have_ap_to_insert" "3451802362"
    
    Check_if_new_buyer_ac_selected{"🔀 <em></em><br/>Check if new buyer ac selected"}:::decisions
    click Check_if_new_buyer_ac_selected "#check_if_new_buyer_ac_selected" "2290276972"
    
    Check_if_PB_Change_Needed{"🔀 <em></em><br/>Check if PB Change Needed"}:::decisions
    click Check_if_PB_Change_Needed "#check_if_pb_change_needed" "127520298"
    
    Check_if_PB_check_done_label_needed{"🔀 <em></em><br/>Check if PB check done label needed"}:::decisions
    click Check_if_PB_check_done_label_needed "#check_if_pb_check_done_label_needed" "3728966443"
    
    Check_if_products_match_expected{"🔀 <em></em><br/>Check if products match expected"}:::decisions
    click Check_if_products_match_expected "#check_if_products_match_expected" "2295377042"
    
    Check_if_products_to_add{"🔀 <em></em><br/>Check if products to add"}:::decisions
    click Check_if_products_to_add "#check_if_products_to_add" "2940739791"
    
    Check_if_products_to_remove{"🔀 <em></em><br/>Check if products to remove"}:::decisions
    click Check_if_products_to_remove "#check_if_products_to_remove" "720836113"
    
    Check_if_prop_done_label_needed{"🔀 <em></em><br/>Check if prop done label needed"}:::decisions
    click Check_if_prop_done_label_needed "#check_if_prop_done_label_needed" "1632095308"
    
    Check_Opp_field_for_assoc_contact{"🔀 <em></em><br/>Check Opp field for assoc contact"}:::decisions
    click Check_Opp_field_for_assoc_contact "#check_opp_field_for_assoc_contact" "4020412308"
    
    Check_Opp_field_for_assoc_part{"🔀 <em></em><br/>Check Opp field for assoc part"}:::decisions
    click Check_Opp_field_for_assoc_part "#check_opp_field_for_assoc_part" "1862025886"
    
    Check_prop_count{"🔀 <em></em><br/>Check prop count"}:::decisions
    click Check_prop_count "#check_prop_count" "282868484"
    
    Choose_Check_to_Run{"🔀 <em></em><br/>Choose Check to Run"}:::decisions
    click Choose_Check_to_Run "#choose_check_to_run" "332191264"
    
    Ignore_vs_Reset_Check{"🔀 <em></em><br/>Ignore vs Reset Check"}:::decisions
    click Ignore_vs_Reset_Check "#ignore_vs_reset_check" "1645281359"
    
    Opp_Found_Check{"🔀 <em></em><br/>Opp Found Check"}:::decisions
    click Opp_Found_Check "#opp_found_check" "3065882383"
    
    Partner_Type_Check{"🔀 <em></em><br/>Partner Type Check"}:::decisions
    click Partner_Type_Check "#partner_type_check" "571319935"
    
    Possible_Buyer_Check{"🔀 <em></em><br/>Possible Buyer Check"}:::decisions
    click Possible_Buyer_Check "#possible_buyer_check" "3346675148"
    
    proposal_check_advisor{"🔀 <em></em><br/>proposal check advisor"}:::decisions
    click proposal_check_advisor "#proposal_check_advisor" "3883708283"
    
    proposal_check_tpa{"🔀 <em></em><br/>proposal check tpa"}:::decisions
    click proposal_check_tpa "#proposal_check_tpa" "373951264"
    
    Proposal_Present_Check{"🔀 <em></em><br/>Proposal Present Check"}:::decisions
    click Proposal_Present_Check "#proposal_present_check" "849697776"
    
    Render_Flow_Check{"🔀 <em></em><br/>Render Flow Check"}:::decisions
    click Render_Flow_Check "#render_flow_check" "75445770"
    
    Role_Split{"🔀 <em></em><br/>Role Split"}:::decisions
    click Role_Split "#role_split" "1897211871"
    
    AC_Buyer_Loop{{"🔁 <em></em><br/>AC Buyer Loop"}}:::loops
    click AC_Buyer_Loop "#ac_buyer_loop" "1455208403"
    
    Assoc_Contact_Generation_Loop{{"🔁 <em></em><br/>Assoc Contact Generation Loop"}}:::loops
    click Assoc_Contact_Generation_Loop "#assoc_contact_generation_loop" "486715123"
    
    New_Opp_Prod_Loop{{"🔁 <em></em><br/>New Opp Prod Loop"}}:::loops
    click New_Opp_Prod_Loop "#new_opp_prod_loop" "2780715317"
    
    Partner_Generation_Loop{{"🔁 <em></em><br/>Partner Generation Loop"}}:::loops
    click Partner_Generation_Loop "#partner_generation_loop" "3368126990"
    
    Create_buyer_AC[("➕ <em></em><br/>Create buyer AC")]:::recordCreates
    click Create_buyer_AC "#create_buyer_ac" "3414791453"
    
    Create_selected_opp_prods[("➕ <em></em><br/>Create selected opp prods")]:::recordCreates
    click Create_selected_opp_prods "#create_selected_opp_prods" "2430676424"
    
    Insert_new_AC[("➕ <em></em><br/>Insert new AC")]:::recordCreates
    click Insert_new_AC "#insert_new_ac" "888106777"
    
    Insert_new_AP[("➕ <em></em><br/>Insert new AP")]:::recordCreates
    click Insert_new_AP "#insert_new_ap" "1875423589"
    
    Delete_selected_opp_products[("🗑️ <em></em><br/>Delete selected opp products")]:::recordDeletes
    click Delete_selected_opp_products "#delete_selected_opp_products" "4056892017"
    
    Get_acc_contacts[("🔍 <em></em><br/>Get acc contacts")]:::recordLookups
    click Get_acc_contacts "#get_acc_contacts" "1205075817"
    
    Get_Approval[("🔍 <em></em><br/>Get Approval")]:::recordLookups
    click Get_Approval "#get_approval" "3091979633"
    
    Get_Approval_Step[("🔍 <em></em><br/>Get Approval Step")]:::recordLookups
    click Get_Approval_Step "#get_approval_step" "3574835231"
    
    Get_Associated_Contacts[("🔍 <em></em><br/>Get Associated Contacts")]:::recordLookups
    click Get_Associated_Contacts "#get_associated_contacts" "2865119142"
    
    Get_Associated_Partners[("🔍 <em></em><br/>Get Associated Partners")]:::recordLookups
    click Get_Associated_Partners "#get_associated_partners" "473057670"
    
    Get_existing_opp_products[("🔍 <em></em><br/>Get existing opp products")]:::recordLookups
    click Get_existing_opp_products "#get_existing_opp_products" "1779929573"
    
    Get_Expected_Accounts[("🔍 <em></em><br/>Get Expected Accounts")]:::recordLookups
    click Get_Expected_Accounts "#get_expected_accounts" "1616245708"
    
    Get_Expected_Contacts[("🔍 <em></em><br/>Get Expected Contacts")]:::recordLookups
    click Get_Expected_Contacts "#get_expected_contacts" "395831324"
    
    get_plan[("🔍 <em></em><br/>get plan")]:::recordLookups
    click get_plan "#get_plan" "1867951548"
    
    Get_potential_products[("🔍 <em></em><br/>Get potential products")]:::recordLookups
    click Get_potential_products "#get_potential_products" "2339317935"
    
    Get_Pricebook[("🔍 <em></em><br/>Get Pricebook")]:::recordLookups
    click Get_Pricebook "#get_pricebook" "3820752585"
    
    Get_Proposal[("🔍 <em></em><br/>Get Proposal")]:::recordLookups
    click Get_Proposal "#get_proposal" "374654592"
    
    Retrieve_Opp[("🔍 <em></em><br/>Retrieve Opp")]:::recordLookups
    click Retrieve_Opp "#retrieve_opp" "610485820"
    
    Commit_Update[("🛠️ <em></em><br/>Commit Update")]:::recordUpdates
    click Commit_Update "#commit_update" "630750994"
    
    initScreen(["💻 <em></em><br/>initScreen"]):::screens
    click initScreen "#initscreen" "454691638"
    
    juncMissingScreen(["💻 <em></em><br/>juncMissingScreen"]):::screens
    click juncMissingScreen "#juncmissingscreen" "1208008203"
    
    missingProposalScreen(["💻 <em></em><br/>missingProposalScreen"]):::screens
    click missingProposalScreen "#missingproposalscreen" "2177107404"
    
    noAccContactScreen(["💻 <em></em><br/>noAccContactScreen"]):::screens
    click noAccContactScreen "#noacccontactscreen" "3106205026"
    
    nothingHere(["💻 <em></em><br/>nothingHere"]):::screens
    click nothingHere "#nothinghere" "1496929235"
    
    pbScreen(["💻 <em></em><br/>pbScreen"]):::screens
    click pbScreen "#pbscreen" "1640736416"
    
    pickBuyerScreen(["💻 <em></em><br/>pickBuyerScreen"]):::screens
    click pickBuyerScreen "#pickbuyerscreen" "1734662862"
    
    prodComparisonScreen(["💻 <em></em><br/>prodComparisonScreen"]):::screens
    click prodComparisonScreen "#prodcomparisonscreen" "709551430"
    
    propScreen(["💻 <em></em><br/>propScreen"]):::screens
    click propScreen "#propscreen" "2873601606"
    
    Check_Opp_Pricebook[["🔗 <em>Subflow</em><br/>Check Opp Pricebook"]]:::subflows
    click Check_Opp_Pricebook "#check_opp_pricebook" "609259793"
    
    Check_Opp_Products[["🔗 <em>Subflow</em><br/>Check Opp Products"]]:::subflows
    click Check_Opp_Products "#check_opp_products" "830019823"
    
    Build_Associated_Account_Id_Collection{{"♻️ <em></em><br/>Build Associated Account Id Collection"}}:::transforms
    click Build_Associated_Account_Id_Collection "#build_associated_account_id_collection" "1662594446"
    
    Build_Associated_Contact_Id_Collection{{"♻️ <em></em><br/>Build Associated Contact Id Collection"}}:::transforms
    click Build_Associated_Contact_Id_Collection "#build_associated_contact_id_collection" "1023303689"
    
    Existing_product_ids{{"♻️ <em></em><br/>Existing product ids"}}:::transforms
    click Existing_product_ids "#existing_product_ids" "903593037"
    
    potential_product_ids{{"♻️ <em></em><br/>potential product ids"}}:::transforms
    click potential_product_ids "#potential_product_ids" "2509353199"
    
    Add_Contacts_to_Expected --> Remove_existing_from_expected_junc
    add_opp_c_to_collection --> Check_Opp_field_for_assoc_part
    add_opp_p_to_collection --> Proposal_Present_Check
    Add_selection_to_creation_list --> New_Opp_Prod_Loop
    Add_to_new_AC_collection --> Assoc_Contact_Generation_Loop
    addToNewPartnerCollection --> Partner_Generation_Loop
    Assign_Advisor_AC_Role --> Add_to_new_AC_collection
    Assign_Advisor_Partner_Role --> addToNewPartnerCollection
    Assign_New_Associated_Contact_Values --> Role_Split
    Assign_Referrer_AC_Role --> Add_to_new_AC_collection
    Assign_Referrer_Role --> addToNewPartnerCollection
    Assign_reset --> Commit_Update
    Assign_TPA_AC_Role --> Add_to_new_AC_collection
    Assign_TPA_Partner_Role --> addToNewPartnerCollection
    Copy_1_of_Assign_New_Associated_Contact_Values --> Partner_Type_Check
    Mark_Association_check_as_done --> Check_if_flow_should_end
    Mark_PB_check_as_done --> Check_if_flow_should_end
    Mark_prop_check_as_done --> Check_if_flow_should_end
    Remove_existing_from_expected_junc --> Check_associated_contacts
    Uncheck_missing_buyer --> AC_Buyer_Loop
    Zero_out_selected_rows --> prodComparisonScreen
    Filter_selections_for_expected_prod --> Check_if_expected_prod_selected
    acc_contacts_found_check --> |"Yummers"| pickBuyerScreen
    acc_contacts_found_check --> |"Default Outcome"| noAccContactScreen
    Association_Generation_Needed_Check --> |"Needs junct creation"| juncMissingScreen
    Association_Generation_Needed_Check --> |"Default Outcome"| AC_Buyer_Loop
    Buyer_Found_Check --> |"No buyer identified"| Get_acc_contacts
    Buyer_Found_Check --> |"Default Outcome"| Check_if_ass_done_label_needed
    Check_associated_contacts --> |"contact missing"| Get_Expected_Contacts
    Check_associated_contacts --> |"Default Outcome"| Check_associated_partners
    Check_associated_partners --> |"partner missing"| Get_Expected_Accounts
    Check_associated_partners --> |"Default Outcome"| Association_Generation_Needed_Check
    Check_if_ass_done_label_needed --> |"needs association choice label"| Mark_Association_check_as_done
    Check_if_ass_done_label_needed --> |"Default Outcome"| Check_if_flow_should_end
    Check_if_expected_prod_selected --> |"This prod was selected"| Add_selection_to_creation_list
    Check_if_expected_prod_selected --> |"Default Outcome"| New_Opp_Prod_Loop
    Check_if_flow_should_end --> |"Default Outcome"| initScreen
    Check_if_have_AC_to_insert --> |"Needs AC insert"| Insert_new_AC
    Check_if_have_AC_to_insert --> |"Default Outcome"| Check_if_have_AP_to_insert
    Check_if_have_AP_to_insert --> |"Needs AP insert"| Insert_new_AP
    Check_if_have_AP_to_insert --> |"Default Outcome"| AC_Buyer_Loop
    Check_if_new_buyer_ac_selected --> |"Buyer ac selected"| Create_buyer_AC
    Check_if_new_buyer_ac_selected --> |"Default Outcome"| Check_if_ass_done_label_needed
    Check_if_PB_Change_Needed --> |"Needs PB Change"| pbScreen
    Check_if_PB_Change_Needed --> |"Default Outcome"| Check_Opp_Products
    Check_if_PB_check_done_label_needed --> |"Needs PB label"| Mark_PB_check_as_done
    Check_if_PB_check_done_label_needed --> |"Default Outcome"| Check_if_flow_should_end
    Check_if_products_match_expected --> |"Products match expectation"| Check_if_products_to_remove
    Check_if_products_match_expected --> |"uh oh"| Get_potential_products
    Check_if_products_to_add --> |"New prods found"| New_Opp_Prod_Loop
    Check_if_products_to_add --> |"Default Outcome"| Check_if_PB_check_done_label_needed
    Check_if_products_to_remove --> |"Rejected prods found"| Delete_selected_opp_products
    Check_if_products_to_remove --> |"Default Outcome"| Check_if_products_to_add
    Check_if_prop_done_label_needed --> |"Needs prop choice label"| Mark_prop_check_as_done
    Check_if_prop_done_label_needed --> |"Default Outcome"| Check_if_flow_should_end
    Check_Opp_field_for_assoc_contact --> |"Contact on opp"| add_opp_c_to_collection
    Check_Opp_field_for_assoc_contact --> |"Default Outcome"| Check_Opp_field_for_assoc_part
    Check_Opp_field_for_assoc_part --> |"Partner on opp"| add_opp_p_to_collection
    Check_Opp_field_for_assoc_part --> |"Default Outcome"| Proposal_Present_Check
    Check_prop_count --> |"One or more props found"| proposal_check_advisor
    Check_prop_count --> |"Missing Proposal"| missingProposalScreen
    Choose_Check_to_Run --> |"Proposal Check"| Check_prop_count
    Choose_Check_to_Run --> |"Associated Contact Check"| Check_Opp_field_for_assoc_contact
    Choose_Check_to_Run --> |"Price Prod Check"| Check_Opp_Pricebook
    Ignore_vs_Reset_Check --> |"Reset Pricebook Selected"| Assign_reset
    Ignore_vs_Reset_Check --> |"Pricebook Ignored"| Check_Opp_Products
    Opp_Found_Check --> |"Opp Present"| Get_Associated_Contacts
    Opp_Found_Check --> |"Default Outcome"| END_Opp_Found_Check
    Partner_Type_Check --> |"TPA Partner"| Assign_TPA_Partner_Role
    Partner_Type_Check --> |"Advisor Partner"| Assign_Advisor_Partner_Role
    Partner_Type_Check --> |"Generic Referrer"| Assign_Referrer_Role
    Possible_Buyer_Check --> |"Potential Buyer"| Uncheck_missing_buyer
    Possible_Buyer_Check --> |"Default Outcome"| AC_Buyer_Loop
    proposal_check_advisor --> |"Has Advisor Linked"| proposal_check_tpa
    proposal_check_advisor --> |"Expected advisor missing"| proposal_check_tpa
    proposal_check_advisor --> |"Default Outcome"| proposal_check_tpa
    proposal_check_tpa --> |"Has TPA linked"| propScreen
    proposal_check_tpa --> |"expected tpa missing"| propScreen
    proposal_check_tpa --> |"Default Outcome"| propScreen
    Proposal_Present_Check --> |"Proposal associated w opp"| Add_Contacts_to_Expected
    Proposal_Present_Check --> |"Default Outcome"| Remove_existing_from_expected_junc
    Render_Flow_Check --> |"Viewer Is Potential Approver"| Get_Pricebook
    Render_Flow_Check --> |"Don't Render"| nothingHere
    Role_Split --> |"Needs Advisor Role"| Assign_Advisor_AC_Role
    Role_Split --> |"Needs TPA Role"| Assign_TPA_AC_Role
    Role_Split --> |"Generic Referrer"| Assign_Referrer_AC_Role
    AC_Buyer_Loop --> |"For Each"|Possible_Buyer_Check
    AC_Buyer_Loop ---> |"After Last"|Buyer_Found_Check
    Assoc_Contact_Generation_Loop --> |"For Each"|Assign_New_Associated_Contact_Values
    Assoc_Contact_Generation_Loop ---> |"After Last"|Partner_Generation_Loop
    New_Opp_Prod_Loop --> |"For Each"|Filter_selections_for_expected_prod
    New_Opp_Prod_Loop ---> |"After Last"|Create_selected_opp_prods
    Partner_Generation_Loop --> |"For Each"|Copy_1_of_Assign_New_Associated_Contact_Values
    Partner_Generation_Loop ---> |"After Last"|Check_if_have_AC_to_insert
    Create_buyer_AC --> Check_if_ass_done_label_needed
    Create_selected_opp_prods --> Check_if_PB_check_done_label_needed
    Insert_new_AC --> Check_if_have_AP_to_insert
    Insert_new_AP --> AC_Buyer_Loop
    Delete_selected_opp_products --> Check_if_products_to_add
    Get_acc_contacts --> acc_contacts_found_check
    Get_Approval --> Get_Approval_Step
    Get_Approval_Step --> Render_Flow_Check
    Get_Associated_Contacts --> Build_Associated_Contact_Id_Collection
    Get_Associated_Partners --> Build_Associated_Account_Id_Collection
    Get_existing_opp_products --> Existing_product_ids
    Get_Expected_Accounts --> Association_Generation_Needed_Check
    Get_Expected_Contacts --> Check_associated_partners
    get_plan --> Opp_Found_Check
    Get_potential_products --> Zero_out_selected_rows
    Get_Pricebook --> get_plan
    Get_Proposal --> initScreen
    Retrieve_Opp --> Get_Approval
    Commit_Update --> Check_if_PB_check_done_label_needed
    initScreen --> Choose_Check_to_Run
    juncMissingScreen --> Assoc_Contact_Generation_Loop
    missingProposalScreen --> Check_if_prop_done_label_needed
    noAccContactScreen --> Check_if_ass_done_label_needed
    nothingHere --> END_nothingHere
    pbScreen --> Ignore_vs_Reset_Check
    pickBuyerScreen --> Check_if_new_buyer_ac_selected
    prodComparisonScreen --> Check_if_products_to_remove
    propScreen --> Check_if_prop_done_label_needed
    START -->  Retrieve_Opp
    Check_Opp_Pricebook --> Check_if_PB_Change_Needed
    Check_Opp_Products --> potential_product_ids
    Build_Associated_Account_Id_Collection --> Get_Proposal
    Build_Associated_Contact_Id_Collection --> Get_Associated_Partners
    Existing_product_ids --> Check_if_products_match_expected
    potential_product_ids --> Get_existing_opp_products
    END_Opp_Found_Check(( END )):::endClass
    END_nothingHere(( END )):::endClass
    
    
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
    |Label|Opportunity | Screen | Approval Helper|
    |Status|⚠️ Draft|
    |Environments|Default|
    |Interview Label|Opportunity | Screen | Approval Helper {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Retrieve_Opp](#retrieve_opp)|
    |Next Node|[Retrieve_Opp](#retrieve_opp)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |ac2Insert|SObject|✅|⬜|⬜|Associated_Contact__c|<!-- -->|
    |accountContacts|SObject|✅|⬜|⬜|Contact|<!-- -->|
    |assConChoiceLabel|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |assContactVar|SObject|⬜|⬜|⬜|Associated_Contact__c|for assembling expected|
    |associatedContacts|SObject|✅|⬜|⬜|Associated_Contact__c|<!-- -->|
    |associatedPartners|SObject|✅|⬜|⬜|Associated_Partner__c|<!-- -->|
    |assPartnerVar|SObject|⬜|⬜|⬜|Associated_Partner__c|for assembling expected|
    |currentItem_Collection_Filter_1|SObject|⬜|⬜|⬜|Product2|<!-- -->|
    |expectedAssociatedAccountIds|String|✅|⬜|⬜|<!-- -->|<!-- -->|
    |expectedAssociatedContactIds|String|✅|⬜|⬜|<!-- -->|Contact Ids|
    |invoiceLineItems|SObject|✅|⬜|⬜|Invoice_Line_Items__c|<!-- -->|
    |j_missingAc|Boolean|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |j_missingAP|Boolean|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |missingBuyer|Boolean|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |oppProducts2Create|SObject|✅|⬜|⬜|OpportunityLineItem|<!-- -->|
    |oppRecord|SObject|⬜|⬜|⬜|Opportunity|<!-- -->|
    |partnersToInsert|SObject|✅|⬜|⬜|Associated_Partner__c|<!-- -->|
    |priceProdChoiceLabel|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |propCount|Number|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |proposalChoiceLabel|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |proposals|SObject|✅|⬜|⬜|Proposal__c|<!-- -->|
    |recordId|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |beefyUserId|String|CASESAFEID({!$User.Id})|Id converted to 18 characters|
    |paradigmInvoiceLink|String|{!get_plan.Paradigm_Company_Link__c} + "/invoice-history"|quick link to invoices in paradigm for this company|
    |proposalLink|String|LEFT({!$Api.Partner_Server_URL_340}, FIND( '/services', {!$Api.Partner_Server_URL_340}))+"lightning/r/Proposal__c/"+{!Get_Proposal.Id}+"/view"|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Add_Contacts_to_Expected
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add Contacts to Expected|
    |Connector|[Remove_existing_from_expected_junc](#remove_existing_from_expected_junc)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |expectedAssociatedContactIds| Add|Get_Proposal.Advisor_Contact__c|
    |expectedAssociatedAccountIds| Add|Get_Proposal.Advisor_Account__c|
    |expectedAssociatedContactIds| Add|Get_Proposal.TPA_Contact__c|
    |expectedAssociatedAccountIds| Add|Get_Proposal.TPA_Account__c|
    
    
    
    
    ### add_opp_c_to_collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|add opp c to collection|
    |Connector|[Check_Opp_field_for_assoc_part](#check_opp_field_for_assoc_part)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |expectedAssociatedContactIds| Add|oppRecord.Associated_Contact__c|
    
    
    
    
    ### add_opp_p_to_collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|add opp p to collection|
    |Connector|[Proposal_Present_Check](#proposal_present_check)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |expectedAssociatedAccountIds| Add|oppRecord.Associated_Partner__c|
    
    
    
    
    ### Add_selection_to_creation_list
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add selection to creation list|
    |Connector|[New_Opp_Prod_Loop](#new_opp_prod_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |oppProducts2Create| Add|[New_Opp_Prod_Loop](#new_opp_prod_loop)|
    
    
    
    
    ### Add_to_new_AC_collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add to new AC collection|
    |Connector|[Assoc_Contact_Generation_Loop](#assoc_contact_generation_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |ac2Insert| Add|assContactVar|
    |assContactVar| Assign|<!-- -->|
    
    
    
    
    ### addToNewPartnerCollection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|[addToNewPartnerCollection](#addtonewpartnercollection)|
    |Connector|[Partner_Generation_Loop](#partner_generation_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |partnersToInsert| Add|assPartnerVar|
    |assPartnerVar| Assign|<!-- -->|
    
    
    
    
    ### Assign_Advisor_AC_Role
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Advisor AC Role|
    |Connector|[Add_to_new_AC_collection](#add_to_new_ac_collection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |assContactVar.Contact_Role__c| Assign|Financial Advisor|
    
    
    
    
    ### Assign_Advisor_Partner_Role
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Advisor Partner Role|
    |Connector|[addToNewPartnerCollection](#addtonewpartnercollection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |assPartnerVar.Partner_Role__c| Assign|Financial Advisory Firm|
    
    
    
    
    ### Assign_New_Associated_Contact_Values
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign New Associated Contact Values|
    |Connector|[Role_Split](#role_split)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |assContactVar.Contact__c| Assign|Assoc_Contact_Generation_Loop.Id|
    |assContactVar.Account__c| Assign|Assoc_Contact_Generation_Loop.AccountId|
    |assContactVar.Business_Unit__c| Assign|oppRecord.Business_Unit__c|
    |assContactVar.Opportunity__c| Assign|oppRecord.Id|
    |assContactVar.Plan__c| Assign|get_plan.Id|
    |assContactVar.Implementation__c| Assign|get_plan.Implementation__c|
    
    
    
    
    ### Assign_Referrer_AC_Role
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Referrer AC Role|
    |Connector|[Add_to_new_AC_collection](#add_to_new_ac_collection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |assContactVar.Contact_Role__c| Assign|Referrer|
    
    
    
    
    ### Assign_Referrer_Role
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Referrer Role|
    |Connector|[addToNewPartnerCollection](#addtonewpartnercollection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |assPartnerVar.Partner_Role__c| Assign|Referring Partner|
    
    
    
    
    ### Assign_reset
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign reset|
    |Connector|[Commit_Update](#commit_update)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |oppRecord.Reset_Products__c| Assign|✅|
    
    
    
    
    ### Assign_TPA_AC_Role
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign TPA AC Role|
    |Connector|[Add_to_new_AC_collection](#add_to_new_ac_collection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |assContactVar.Contact_Role__c| Assign|TPA - Sales|
    
    
    
    
    ### Assign_TPA_Partner_Role
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign TPA Partner Role|
    |Connector|[addToNewPartnerCollection](#addtonewpartnercollection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |assPartnerVar.Partner_Role__c| Assign|TPA|
    
    
    
    
    ### Copy_1_of_Assign_New_Associated_Contact_Values
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Copy 1 of Assign New Associated Contact Values|
    |Connector|[Partner_Type_Check](#partner_type_check)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |assPartnerVar.Account__c| Assign|Partner_Generation_Loop.Id|
    |assPartnerVar.Opportunity__c| Assign|oppRecord.Id|
    
    
    
    
    ### Mark_Association_check_as_done
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Mark Association check as done|
    |Connector|[Check_if_flow_should_end](#check_if_flow_should_end)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |assConChoiceLabel| Add|(DONE)|
    
    
    
    
    ### Mark_PB_check_as_done
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Mark PB check as done|
    |Connector|[Check_if_flow_should_end](#check_if_flow_should_end)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |priceProdChoiceLabel| Add|(DONE)|
    
    
    
    
    ### Mark_prop_check_as_done
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Mark prop check as done|
    |Connector|[Check_if_flow_should_end](#check_if_flow_should_end)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |proposalChoiceLabel| Add|(DONE)|
    
    
    
    
    ### Remove_existing_from_expected_junc
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Remove existing from expected junc|
    |Description|Also removes null :^)|
    |Connector|[Check_associated_contacts](#check_associated_contacts)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |expectedAssociatedContactIds| Remove All|[Build_Associated_Contact_Id_Collection](#build_associated_contact_id_collection)|
    |expectedAssociatedAccountIds| Remove All|[Build_Associated_Account_Id_Collection](#build_associated_account_id_collection)|
    |expectedAssociatedAccountIds| Remove All|<!-- -->|
    |expectedAssociatedContactIds| Remove All|<!-- -->|
    
    
    
    
    ### Uncheck_missing_buyer
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Uncheck missing buyer|
    |Connector|[AC_Buyer_Loop](#ac_buyer_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |missingBuyer| Assign|⬜|
    
    
    
    
    ### Zero_out_selected_rows
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Zero out selected rows|
    |Description|To refresh values|
    |Connector|[prodComparisonScreen](#prodcomparisonscreen)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |currentProductTable.selectedRows| Assign|<!-- -->|
    |expectedProductTable.selectedRows| Assign|<!-- -->|
    
    
    
    
    ### Filter_selections_for_expected_prod
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Collection Processor|
    |Label|Filter selections for expected prod|
    |Element Subtype|FilterCollectionProcessor|
    |Assign Next Value To Reference|currentItem_Collection_Filter_1|
    |Collection Processor Type|FilterCollectionProcessor|
    |Collection Reference|expectedProductTable.selectedRows|
    |Connector|[Check_if_expected_prod_selected](#check_if_expected_prod_selected)|
    |Condition Logic|and|
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|currentItem_Collection_Filter_1.Id| Equal To|New_Opp_Prod_Loop.Product2Id|
    
    
    
    
    ### acc_contacts_found_check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|acc contacts found check|
    |Default Connector|[noAccContactScreen](#noacccontactscreen)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yummers (Yummers)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[pickBuyerScreen](#pickbuyerscreen)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|accountContacts| Is Empty|⬜|
    
    
    
    
    ### Association_Generation_Needed_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Association Generation Needed Check|
    |Default Connector|[AC_Buyer_Loop](#ac_buyer_loop)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Needs_junct_creation (Needs junct creation)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[juncMissingScreen](#juncmissingscreen)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|contact_missing| Equal To|✅|
    |2|partner_missing| Equal To|✅|
    
    
    
    
    ### Buyer_Found_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Buyer Found Check|
    |Default Connector|[Check_if_ass_done_label_needed](#check_if_ass_done_label_needed)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule No_buyer_identified (No buyer identified)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_acc_contacts](#get_acc_contacts)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|missingBuyer| Equal To|✅|
    
    
    
    
    ### Check_associated_contacts
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check associated contacts|
    |Default Connector|[Check_associated_partners](#check_associated_partners)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule contact_missing (contact missing)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Expected_Contacts](#get_expected_contacts)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|expectedAssociatedContactIds| Is Empty|⬜|
    
    
    
    
    ### Check_associated_partners
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check associated partners|
    |Default Connector|[Association_Generation_Needed_Check](#association_generation_needed_check)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule partner_missing (partner missing)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Expected_Accounts](#get_expected_accounts)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|expectedAssociatedAccountIds| Is Empty|⬜|
    
    
    
    
    ### Check_if_ass_done_label_needed
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check if ass done label needed|
    |Default Connector|[Check_if_flow_should_end](#check_if_flow_should_end)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule needs_association_choice_label (needs association choice label)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Mark_Association_check_as_done](#mark_association_check_as_done)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|[Mark_Association_check_as_done](#mark_association_check_as_done)| Was Visited|⬜|
    
    
    
    
    ### Check_if_expected_prod_selected
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check if expected prod selected|
    |Default Connector|[New_Opp_Prod_Loop](#new_opp_prod_loop)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule This_prod_was_selected (This prod was selected)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Add_selection_to_creation_list](#add_selection_to_creation_list)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|[Filter_selections_for_expected_prod](#filter_selections_for_expected_prod)| Is Empty|⬜|
    
    
    
    
    ### Check_if_flow_should_end
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check if flow should end|
    |Default Connector|isGoTo: true<br/>targetReference: initScreen<br/>|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule All_3_checks_ran (All 3 checks ran)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|[Mark_Association_check_as_done](#mark_association_check_as_done)| Was Visited|✅|
    |2|[Mark_PB_check_as_done](#mark_pb_check_as_done)| Was Visited|✅|
    |3|[Mark_prop_check_as_done](#mark_prop_check_as_done)| Was Visited|✅|
    
    
    
    
    ### Check_if_have_AC_to_insert
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check if have AC to insert|
    |Default Connector|[Check_if_have_AP_to_insert](#check_if_have_ap_to_insert)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Needs_AC_insert (Needs AC insert)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Insert_new_AC](#insert_new_ac)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|ac2Insert| Is Empty|⬜|
    
    
    
    
    ### Check_if_have_AP_to_insert
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check if have AP to insert|
    |Default Connector|[AC_Buyer_Loop](#ac_buyer_loop)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Needs_AP_insert (Needs AP insert)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Insert_new_AP](#insert_new_ap)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|partnersToInsert| Is Empty|⬜|
    
    
    
    
    ### Check_if_new_buyer_ac_selected
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check if new buyer ac selected|
    |Default Connector|[Check_if_ass_done_label_needed](#check_if_ass_done_label_needed)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Buyer_ac_selected (Buyer ac selected)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Create_buyer_AC](#create_buyer_ac)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|accContactTable.firstSelectedRow| Is Blank|⬜|
    
    
    
    
    ### Check_if_PB_Change_Needed
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check if PB Change Needed|
    |Default Connector|[Check_Opp_Products](#check_opp_products)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Needs_PB_Change (Needs PB Change)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[pbScreen](#pbscreen)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Check_Opp_Pricebook.needPriceBookChange| Equal To|✅|
    
    
    
    
    ### Check_if_PB_check_done_label_needed
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check if PB check done label needed|
    |Default Connector|[Check_if_flow_should_end](#check_if_flow_should_end)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Needs_PB_label (Needs PB label)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Mark_PB_check_as_done](#mark_pb_check_as_done)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|[Mark_PB_check_as_done](#mark_pb_check_as_done)| Was Visited|⬜|
    
    
    
    
    ### Check_if_products_match_expected
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check if products match expected|
    |Default Connector|[Get_potential_products](#get_potential_products)|
    |Default Connector Label|uh oh|
    
    
    #### Rule Products_match_expectation (Products match expectation)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Check_if_products_to_remove](#check_if_products_to_remove)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|[Existing_product_ids](#existing_product_ids)| Equal To|[potential_product_ids](#potential_product_ids)|
    
    
    
    
    ### Check_if_products_to_add
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check if products to add|
    |Default Connector|[Check_if_PB_check_done_label_needed](#check_if_pb_check_done_label_needed)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule New_prods_found (New prods found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[New_Opp_Prod_Loop](#new_opp_prod_loop)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|expectedProductTable.selectedRows| Is Empty|⬜|
    
    
    
    
    ### Check_if_products_to_remove
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check if products to remove|
    |Default Connector|[Check_if_products_to_add](#check_if_products_to_add)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Rejected_prods_found (Rejected prods found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Delete_selected_opp_products](#delete_selected_opp_products)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|currentProductTable.selectedRows| Is Empty|⬜|
    
    
    
    
    ### Check_if_prop_done_label_needed
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check if prop done label needed|
    |Default Connector|[Check_if_flow_should_end](#check_if_flow_should_end)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Needs_prop_choice_label (Needs prop choice label)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Mark_prop_check_as_done](#mark_prop_check_as_done)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|[Mark_prop_check_as_done](#mark_prop_check_as_done)| Was Visited|⬜|
    
    
    
    
    ### Check_Opp_field_for_assoc_contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check Opp field for assoc contact|
    |Default Connector|[Check_Opp_field_for_assoc_part](#check_opp_field_for_assoc_part)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Contact_on_opp (Contact on opp)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[add_opp_c_to_collection](#add_opp_c_to_collection)|
    |Condition Logic|1 AND NOT 2|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|oppRecord.Associated_Contact__c| Is Blank|⬜|
    |2|expectedAssociatedContactIds| Contains|oppRecord.Associated_Contact__c|
    
    
    
    
    ### Check_Opp_field_for_assoc_part
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check Opp field for assoc part|
    |Default Connector|[Proposal_Present_Check](#proposal_present_check)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Partner_on_opp (Partner on opp)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[add_opp_p_to_collection](#add_opp_p_to_collection)|
    |Condition Logic|1 AND NOT 2|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|oppRecord.Associated_Partner__c| Is Blank|⬜|
    |2|expectedAssociatedAccountIds| Contains|oppRecord.Associated_Partner__c|
    
    
    
    
    ### Check_prop_count
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check prop count|
    |Default Connector|[missingProposalScreen](#missingproposalscreen)|
    |Default Connector Label|Missing Proposal|
    
    
    #### Rule One_or_more_props_found (One or more props found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[proposal_check_advisor](#proposal_check_advisor)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|[Get_Proposal](#get_proposal)| Is Null|⬜|
    
    
    
    
    ### Choose_Check_to_Run
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Choose Check to Run|
    |Default Connector|[Check_Opp_Pricebook](#check_opp_pricebook)|
    |Default Connector Label|Price Prod Check|
    
    
    #### Rule Proposal_Check (Proposal Check)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Check_prop_count](#check_prop_count)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Select_check_to_run| Equal To|proposalChoice|
    
    
    
    
    #### Rule Associated_Contact_Check (Associated Contact Check)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Check_Opp_field_for_assoc_contact](#check_opp_field_for_assoc_contact)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Select_check_to_run| Equal To|assConChoice|
    
    
    
    
    ### Ignore_vs_Reset_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Ignore vs Reset Check|
    |Default Connector|[Check_Opp_Products](#check_opp_products)|
    |Default Connector Label|Pricebook Ignored|
    
    
    #### Rule Reset_Pricebook_Selected (Reset Pricebook Selected)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_reset](#assign_reset)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|pbScreenCustomNav.value| Equal To|Reset Pricebook|
    
    
    
    
    ### Opp_Found_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Opp Found Check|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Opp_Present (Opp Present)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Associated_Contacts](#get_associated_contacts)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|oppRecord| Is Null|⬜|
    
    
    
    
    ### Partner_Type_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Partner Type Check|
    |Default Connector|[Assign_Referrer_Role](#assign_referrer_role)|
    |Default Connector Label|Generic Referrer|
    
    
    #### Rule TPA_Partner (TPA Partner)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_TPA_Partner_Role](#assign_tpa_partner_role)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Partner_Generation_Loop.Type| Equal To|TPA|
    |2|Partner_Generation_Loop.Channel__c| Equal To|TPA|
    
    
    
    
    #### Rule Advisor_Partner (Advisor Partner)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Advisor_Partner_Role](#assign_advisor_partner_role)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Partner_Generation_Loop.Type| Contains|Advisor|
    |2|Partner_Generation_Loop.Channel__c| Equal To|Advisors|
    
    
    
    
    ### Possible_Buyer_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Possible Buyer Check|
    |Default Connector|[AC_Buyer_Loop](#ac_buyer_loop)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Potential_Buyer (Potential Buyer)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Uncheck_missing_buyer](#uncheck_missing_buyer)|
    |Condition Logic|(1 OR 2 OR 3) AND 4|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|AC_Buyer_Loop.Contact_Role__c| Contains|Buyer|
    |2|AC_Buyer_Loop.Contact_Role__c| Contains|Trustee|
    |3|AC_Buyer_Loop.Contact_Role__c| Contains|Sponsor|
    |4|AC_Buyer_Loop.Account__c| Equal To|oppRecord.AccountId|
    
    
    
    
    ### proposal_check_advisor
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|proposal check advisor|
    |Default Connector|[proposal_check_tpa](#proposal_check_tpa)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Has_Advisor_Linked (Has Advisor Linked)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[proposal_check_tpa](#proposal_check_tpa)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Proposal.Advisor_Contact__c| Is Blank|⬜|
    
    
    
    
    #### Rule Expected_advisor_missing (Expected advisor missing)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[proposal_check_tpa](#proposal_check_tpa)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Proposal.Advisor_Contact__c| Is Blank|✅|
    |2|Get_Proposal.Financial_Professional_Email__c| Is Blank|⬜|
    
    
    
    
    ### proposal_check_tpa
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|proposal check tpa|
    |Default Connector|[propScreen](#propscreen)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Has_TPA_linked (Has TPA linked)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[propScreen](#propscreen)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Proposal.TPA_Contact__c| Is Blank|⬜|
    
    
    
    
    #### Rule expected_tpa_missing (expected tpa missing)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[propScreen](#propscreen)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Proposal.TPA_Contact__c| Is Blank|✅|
    |2|Get_Proposal.TPA_Sales_Email__c| Is Blank|⬜|
    
    
    
    
    ### Proposal_Present_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Proposal Present Check|
    |Default Connector|[Remove_existing_from_expected_junc](#remove_existing_from_expected_junc)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Proposal_associated_w_opp (Proposal associated w opp)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Add_Contacts_to_Expected](#add_contacts_to_expected)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|[Get_Proposal](#get_proposal)| Is Null|⬜|
    
    
    
    
    ### Render_Flow_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Render Flow Check|
    |Default Connector|[nothingHere](#nothinghere)|
    |Default Connector Label|Don't Render|
    
    
    #### Rule Viewer_Is_Potential_Approver (Viewer Is Potential Approver)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Pricebook](#get_pricebook)|
    |Condition Logic|1 AND (2 OR 3)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|[Get_Approval_Step](#get_approval_step)| Is Null|⬜|
    |2|beefyUserId| Equal To|Get_Approval_Step.ActorId|
    |3|beefyUserId| Equal To|Get_Approval_Step.Actor:User.ManagerId|
    
    
    
    
    ### Role_Split
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Role Split|
    |Default Connector|[Assign_Referrer_AC_Role](#assign_referrer_ac_role)|
    |Default Connector Label|Generic Referrer|
    
    
    #### Rule Needs_Advisor_Role (Needs Advisor Role)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Advisor_AC_Role](#assign_advisor_ac_role)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Assoc_Contact_Generation_Loop.Role__c| Contains|Advisor|
    
    
    
    
    #### Rule Needs_TPA_Role (Needs TPA Role)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_TPA_AC_Role](#assign_tpa_ac_role)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Assoc_Contact_Generation_Loop.Role__c| Contains|TPA|
    
    
    
    
    ### AC_Buyer_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|AC Buyer Loop|
    |Description|Loop through AC's and try to find who buyin|
    |Collection Reference|associatedContacts|
    |Iteration Order|Asc|
    |Next Value Connector|[Possible_Buyer_Check](#possible_buyer_check)|
    |No More Values Connector|[Buyer_Found_Check](#buyer_found_check)|
    
    
    ### Assoc_Contact_Generation_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Assoc Contact Generation Loop|
    |Collection Reference|[Get_Expected_Contacts](#get_expected_contacts)|
    |Iteration Order|Asc|
    |Next Value Connector|[Assign_New_Associated_Contact_Values](#assign_new_associated_contact_values)|
    |No More Values Connector|[Partner_Generation_Loop](#partner_generation_loop)|
    
    
    ### New_Opp_Prod_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|New Opp Prod Loop|
    |Description|Filtering out selections|
    |Collection Reference|Check_Opp_Products.newOppProducts|
    |Iteration Order|Asc|
    |Next Value Connector|[Filter_selections_for_expected_prod](#filter_selections_for_expected_prod)|
    |No More Values Connector|[Create_selected_opp_prods](#create_selected_opp_prods)|
    
    
    ### Partner_Generation_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Partner Generation Loop|
    |Collection Reference|[Get_Expected_Accounts](#get_expected_accounts)|
    |Iteration Order|Asc|
    |Next Value Connector|[Copy_1_of_Assign_New_Associated_Contact_Values](#copy_1_of_assign_new_associated_contact_values)|
    |No More Values Connector|[Check_if_have_AC_to_insert](#check_if_have_ac_to_insert)|
    
    
    ### Create_buyer_AC
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Associated_Contact__c|
    |Label|Create buyer AC|
    |Store Output Automatically|✅|
    |Connector|[Check_if_ass_done_label_needed](#check_if_ass_done_label_needed)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Account__c|accContactTable.firstSelectedRow.AccountId|
    |Business_Unit__c|oppRecord.Business_Unit__c|
    |Contact_Role__c|Authorized Buyer|
    |Contact__c|accContactTable.firstSelectedRow.Id|
    |Implementation__c|get_plan.Implementation__c|
    |Opportunity__c|recordId|
    |Plan__c|get_plan.Id|
    
    
    
    
    ### Create_selected_opp_prods
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Label|Create selected opp prods|
    |Input Reference|oppProducts2Create|
    |Connector|[Check_if_PB_check_done_label_needed](#check_if_pb_check_done_label_needed)|
    
    
    ### Insert_new_AC
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Label|Insert new AC|
    |Input Reference|ac2Insert|
    |Connector|[Check_if_have_AP_to_insert](#check_if_have_ap_to_insert)|
    
    
    ### Insert_new_AP
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Label|Insert new AP|
    |Input Reference|partnersToInsert|
    |Connector|[AC_Buyer_Loop](#ac_buyer_loop)|
    
    
    ### Delete_selected_opp_products
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Delete|
    |Label|Delete selected opp products|
    |Input Reference|currentProductTable.selectedRows|
    |Connector|[Check_if_products_to_add](#check_if_products_to_add)|
    
    
    ### Get_acc_contacts
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Get acc contacts|
    |Assign Null Values If No Records Found|⬜|
    |Output Reference|accountContacts|
    |Queried Fields|- Id<br/>- FirstName<br/>- LastName<br/>- Name<br/>- Email<br/>- Role__c<br/>- Title<br/>- AccountId<br/>|
    |Connector|[acc_contacts_found_check](#acc_contacts_found_check)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|AccountId| Equal To|oppRecord.AccountId|
    
    
    
    
    ### Get_Approval
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|ProcessInstance|
    |Label|Get Approval|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Get_Approval_Step](#get_approval_step)|
    
    
    #### Filters (logic: **1 AND NOT (2 OR 3 OR 4)**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|TargetObjectId| Equal To|oppRecord.Id|
    |2|Status| Equal To|Approved|
    |3|Status| Equal To|Rejected|
    |4|Status| Equal To|Removed|
    
    
    
    
    ### Get_Approval_Step
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|ProcessInstanceWorkitem|
    |Label|Get Approval Step|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Sort Field|CreatedDate|
    |Sort Order|Desc|
    |Store Output Automatically|✅|
    |Connector|[Render_Flow_Check](#render_flow_check)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|ProcessInstanceId| Equal To|Get_Approval.Id|
    
    
    
    
    ### Get_Associated_Contacts
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Associated_Contact__c|
    |Label|Get Associated Contacts|
    |Assign Null Values If No Records Found|⬜|
    |Output Reference|associatedContacts|
    |Queried Fields|- Id<br/>- Contact__c<br/>- Account__c<br/>- Contact_Role__c<br/>|
    |Connector|[Build_Associated_Contact_Id_Collection](#build_associated_contact_id_collection)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Opportunity__c| Equal To|oppRecord.Id|
    
    
    
    
    ### Get_Associated_Partners
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Associated_Partner__c|
    |Label|Get Associated Partners|
    |Assign Null Values If No Records Found|⬜|
    |Output Reference|associatedPartners|
    |Queried Fields|- Id<br/>- Account__c<br/>- Channel__c<br/>- Partner_Role__c<br/>|
    |Connector|[Build_Associated_Account_Id_Collection](#build_associated_account_id_collection)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Opportunity__c| Equal To|oppRecord.Id|
    
    
    
    
    ### Get_existing_opp_products
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|OpportunityLineItem|
    |Label|Get existing opp products|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Queried Fields|- Id<br/>- Product2Id<br/>- Product_Name__c<br/>|
    |Store Output Automatically|✅|
    |Connector|[Existing_product_ids](#existing_product_ids)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|OpportunityId| Equal To|oppRecord.Id|
    
    
    
    
    ### Get_Expected_Accounts
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Account|
    |Label|Get Expected Accounts|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Store Output Automatically|✅|
    |Connector|[Association_Generation_Needed_Check](#association_generation_needed_check)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| In|expectedAssociatedAccountIds|
    
    
    
    
    ### Get_Expected_Contacts
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Get Expected Contacts|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Store Output Automatically|✅|
    |Connector|[Check_associated_partners](#check_associated_partners)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| In|expectedAssociatedContactIds|
    
    
    
    
    ### get_plan
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Plan__c|
    |Label|get plan|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Opp_Found_Check](#opp_found_check)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Opportunity__c| Equal To|oppRecord.Id|
    
    
    
    
    ### Get_potential_products
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Product2|
    |Label|Get potential products|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Queried Fields|- Id<br/>- Name<br/>|
    |Store Output Automatically|✅|
    |Connector|[Zero_out_selected_rows](#zero_out_selected_rows)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| In|[potential_product_ids](#potential_product_ids)|
    
    
    
    
    ### Get_Pricebook
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Pricebook2|
    |Label|Get Pricebook|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[get_plan](#get_plan)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|oppRecord.Pricebook2Id|
    
    
    
    
    ### Get_Proposal
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Proposal__c|
    |Label|Get Proposal|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Sort Field|CreatedDate|
    |Sort Order|Desc|
    |Store Output Automatically|✅|
    |Connector|[initScreen](#initscreen)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Opportunity__c| Equal To|oppRecord.Id|
    
    
    
    
    ### Retrieve_Opp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Opportunity|
    |Label|Retrieve Opp|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|oppRecord|
    |Queried Fields|- Id<br/>- Amount<br/>- Commissionable_Amount_Editable__c<br/>- LeadSource<br/>- LeadSourceDetail__c<br/>- Pricebook2Id<br/>- OwnerId<br/>- AccountId<br/>- Service_Option__c<br/>- Plan_Type__c<br/>- Product_Type__c<br/>- Type<br/>- Business_Unit__c<br/>- Associated_Contact__c<br/>- Associated_Partner__c<br/>- Number_of_Employees__c<br/>- Previous_Service_Option__c<br/>- Profit_Sharing__c<br/>|
    |Connector|[Get_Approval](#get_approval)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Commit_Update
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Commit Update|
    |Input Reference|oppRecord|
    |Connector|isGoTo: true<br/>targetReference: Check_if_PB_check_done_label_needed<br/>|
    
    
    ### initScreen
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|[initScreen](#initscreen)|
    |Allow Back|⬜|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Show Footer|✅|
    |Show Header|⬜|
    |Connector|[Choose_Check_to_Run](#choose_check_to_run)|
    
    
    #### initText
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p style="text-align: center;"><strong style="font-size: 20px;">Opportunity Approval Wizard</strong></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Select_check_to_run
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|- proposalChoice<br/>- priceProdChoice<br/>- assConChoice<br/>|
    |Field Text|Select check to run|
    |Field Type| Radio Buttons|
    |Inputs On Next Nav To Assoc Scrn| Reset Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### paradigmLink
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p><a href="{!paradigmInvoiceLink}" rel="noopener noreferrer" target="_blank">Click here</a> to manually check invoices in Paradigm for discounts.</p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    ### juncMissingScreen
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|[juncMissingScreen](#juncmissingscreen)|
    |Allow Back|⬜|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Next Or Finish Button Label|Generate Missing Associations|
    |Show Footer|✅|
    |Show Header|⬜|
    |Connector|[Assoc_Contact_Generation_Loop](#assoc_contact_generation_loop)|
    
    
    #### juncMissingText
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p><strong style="font-size: 20px;">Missing Associations</strong></p><p><br></p><p><span style="font-size: 16px;">One or more expected associated records are absent from the opportunity.  Proceed to generate them automatically.</span></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### missingContactTable
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type Mappings|typeName: T<br/>typeValue: Contact<br/>|
    |Extension Name|flowruntime:datatable|
    |Field Type| Component Instance|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Store Output Automatically|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: contact_missing<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;booleanValue: true<br/>|
    |Label (input)|Missing Associated Contacts|
    |Selection Mode (input)|NO_SELECTION|
    |Min Row Selection (input)|numberValue: 0<br/>|
    |Table Data (input)|[Get_Expected_Contacts](#get_expected_contacts)|
    |Max Row Selection (input)|numberValue: 0<br/>|
    |Columns (input)|[{"apiName":"Name","guid":"column-7992","editable":false,"hasCustomHeaderLabel":false,"customHeaderLabel":"","wrapText":true,"order":0,"label":"Full Name","type":"text"},{"apiName":"Email","guid":"column-dac2","editable":false,"hasCustomHeaderLabel":false,"customHeaderLabel":"","wrapText":true,"order":1,"label":"Email","type":"email"},{"apiName":"Account_Name__c","guid":"column-6eec","editable":false,"hasCustomHeaderLabel":false,"customHeaderLabel":"","wrapText":true,"order":2,"label":"Account Name","type":"customRichText"}]|
    |Should Display Label (input)|✅|
    
    
    
    
    #### missingAccountTable
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type Mappings|typeName: T<br/>typeValue: Account<br/>|
    |Extension Name|flowruntime:datatable|
    |Field Type| Component Instance|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Store Output Automatically|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: partner_missing<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;booleanValue: true<br/>|
    |Label (input)|Missing Associated Partners|
    |Selection Mode (input)|NO_SELECTION|
    |Min Row Selection (input)|numberValue: 0<br/>|
    |Table Data (input)|[Get_Expected_Accounts](#get_expected_accounts)|
    |Max Row Selection (input)|numberValue: 0<br/>|
    |Columns (input)|[{"apiName":"Name","guid":"column-d5fe","editable":false,"hasCustomHeaderLabel":false,"customHeaderLabel":"","wrapText":true,"order":0,"label":"Account Name","type":"text"}]|
    |Should Display Label (input)|✅|
    
    
    
    
    ### missingProposalScreen
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|[missingProposalScreen](#missingproposalscreen)|
    |Allow Back|✅|
    |Allow Finish|⬜|
    |Allow Pause|⬜|
    |Show Footer|✅|
    |Show Header|⬜|
    |Connector|[Check_if_prop_done_label_needed](#check_if_prop_done_label_needed)|
    
    
    #### missingProposalText
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p>No proposal attached to opportunity!  To run a proposal check, first attach a proposal.</p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    ### noAccContactScreen
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|[noAccContactScreen](#noacccontactscreen)|
    |Allow Back|⬜|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Show Footer|✅|
    |Show Header|⬜|
    |Connector|[Check_if_ass_done_label_needed](#check_if_ass_done_label_needed)|
    
    
    #### noAccContactText
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p><strong style="font-size: 20px;">Missing Purchasing Contact</strong></p><p><br></p><p><span style="color: rgb(234, 0, 30);">Failed to find potential buyer contacts on account.  There must be a "Buyer," "Trustee," or "Sponsor" role contact on the account.</span></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    ### nothingHere
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|[nothingHere](#nothinghere)|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|✅|
    |Show Footer|⬜|
    |Show Header|⬜|
    
    
    ### pbScreen
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|[pbScreen](#pbscreen)|
    |Allow Back|⬜|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Next Or Finish Button Label|Update Pricebook|
    |Show Footer|⬜|
    |Show Header|⬜|
    |Connector|[Ignore_vs_Reset_Check](#ignore_vs_reset_check)|
    
    
    #### pbText
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p><strong style="font-size: 20px;">Pricebook Mismatch</strong></p><p><br></p><p><span style="font-size: 16px;">Pricebook doesn't match what's expected!</span></p><p><br></p><p><span style="font-size: 16px;">Expected: {!Check_Opp_Pricebook.newPB.Name}</span></p><p><span style="font-size: 16px;">Current: {!Get_Pricebook.Name}</span></p><p><span style="font-size: 16px;">Reason for change: {!Check_Opp_Pricebook.reasonText}</span></p><p><br></p><p><strong style="font-size: 16px;">Updating pricebook will also reset products.  Note any discounts or adjustments you want to preserve!</strong></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### pbScreenCustomNav
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Extension Name|c:fsc_flowButtonBar|
    |Field Type| Component Instance|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Store Output Automatically|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Alignment (input)|right|
    |Orientation (input)|horizontal|
    |Show Lines (input)|above|
    |Action Mode (input)|navigation|
    |Buttons (input)|[{"label":"Ignore","value":"Ignore","iconPosition":"left","variant":"destructive","index":0},{"label":"Reset Pricebook","value":"Reset Pricebook","iconPosition":"left","variant":"brand","index":1}]|
    
    
    
    
    ### pickBuyerScreen
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|[pickBuyerScreen](#pickbuyerscreen)|
    |Allow Back|⬜|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Next Or Finish Button Label|Generate Buyer Associated Contact|
    |Show Footer|✅|
    |Show Header|⬜|
    |Connector|[Check_if_new_buyer_ac_selected](#check_if_new_buyer_ac_selected)|
    
    
    #### pickBuyerText
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p><strong style="font-size: 20px; background-color: rgb(255, 255, 255); color: rgb(68, 68, 68);">Missing purchasing contact</strong></p><p><br></p><p><span style="font-size: 16px;">Opportunity is missing an associated contact for the buyer!  Please select the primary purchasing contact from below.</span></p><p><br></p><p><span style="font-size: 16px;">If none of these contacts are the buyer, one must be manually created before proceeding.</span></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### accContactTable
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type Mappings|typeName: T<br/>typeValue: Contact<br/>|
    |Extension Name|flowruntime:datatable|
    |Field Type| Component Instance|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Store Output Automatically|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Label (input)|Account Contacts|
    |Selection Mode (input)|SINGLE_SELECT|
    |Min Row Selection (input)|1|
    |Should Display Label (input)|✅|
    |Table Data (input)|accountContacts|
    |Max Row Selection (input)|1|
    |Columns (input)|[{"apiName":"Name","guid":"column-df0a","editable":false,"hasCustomHeaderLabel":false,"customHeaderLabel":"","wrapText":true,"order":0,"label":"Full Name","type":"text"},{"apiName":"Email","guid":"column-ef89","editable":false,"hasCustomHeaderLabel":false,"customHeaderLabel":"","wrapText":true,"order":1,"label":"Email","type":"email"},{"apiName":"Role__c","guid":"column-d3ca","editable":false,"hasCustomHeaderLabel":false,"customHeaderLabel":"","wrapText":true,"order":2,"label":"Contact Role","type":"text"},{"apiName":"Title","guid":"column-fe25","editable":false,"hasCustomHeaderLabel":false,"customHeaderLabel":"","wrapText":true,"order":3,"label":"Title","type":"text"}]|
    
    
    
    
    ### prodComparisonScreen
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|[prodComparisonScreen](#prodcomparisonscreen)|
    |Allow Back|⬜|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Show Footer|✅|
    |Show Header|✅|
    |Connector|[Check_if_products_to_remove](#check_if_products_to_remove)|
    
    
    #### prodComparisonText
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p>Opportunity products don't match what's expected!  Optionally, choose existing products to remove and/or expected products to add</p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### currentProductTable
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type Mappings|typeName: T<br/>typeValue: OpportunityLineItem<br/>|
    |Extension Name|flowruntime:datatable|
    |Field Type| Component Instance|
    |Inputs On Next Nav To Assoc Scrn| Reset Values|
    |Is Required|✅|
    |Store Output Automatically|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[prodComparisonScreen_Section1_Column1](#prodcomparisonscreen_section1_column1)|
    |Label (input)|Current, select to remove|
    |Selection Mode (input)|MULTI_SELECT|
    |Min Row Selection (input)|numberValue: 0<br/>|
    |Should Display Label (input)|✅|
    |Table Data (input)|[Get_existing_opp_products](#get_existing_opp_products)|
    |Columns (input)|[{"apiName":"Product_Name__c","guid":"column-679c","editable":false,"hasCustomHeaderLabel":false,"customHeaderLabel":"","wrapText":true,"order":0,"label":"Product Name","type":"customRichText"}]|
    
    
    
    
    #### prodComparisonScreen_Section1_Column1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region|
    |Is Required|⬜|
    |Parent Field|[prodComparisonScreen_Section1](#prodcomparisonscreen_section1)|
    |Width (input)|6|
    
    
    
    
    #### expectedProductTable
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type Mappings|typeName: T<br/>typeValue: Product2<br/>|
    |Extension Name|flowruntime:datatable|
    |Field Type| Component Instance|
    |Inputs On Next Nav To Assoc Scrn| Reset Values|
    |Is Required|✅|
    |Store Output Automatically|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[prodComparisonScreen_Section1_Column2](#prodcomparisonscreen_section1_column2)|
    |Label (input)|Expected, select to add|
    |Selection Mode (input)|MULTI_SELECT|
    |Min Row Selection (input)|numberValue: 0<br/>|
    |Should Display Label (input)|✅|
    |Table Data (input)|[Get_potential_products](#get_potential_products)|
    |Columns (input)|[{"apiName":"Name","guid":"column-fd51","editable":false,"hasCustomHeaderLabel":false,"customHeaderLabel":"","wrapText":true,"order":0,"label":"Product Name","type":"text"}]|
    
    
    
    
    #### prodComparisonScreen_Section1_Column2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region|
    |Is Required|⬜|
    |Parent Field|[prodComparisonScreen_Section1](#prodcomparisonscreen_section1)|
    |Width (input)|6|
    
    
    
    
    #### prodComparisonScreen_Section1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region Container|
    |Is Required|⬜|
    |Region Container Type| Section Without Header|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    ### propScreen
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|[propScreen](#propscreen)|
    |Allow Back|⬜|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Show Footer|✅|
    |Show Header|⬜|
    |Connector|[Check_if_prop_done_label_needed](#check_if_prop_done_label_needed)|
    
    
    #### propScreenHeader
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p><strong style="font-size: 20px;">Proposal Summary - {!Get_Proposal.Name}</strong></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### companyText
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<ul><li><span style="font-size: 16px;">Company contact name: {!Get_Proposal.Company_Contact_First_Name__c} {!Get_Proposal.Company_Contact_Last_Name__c}</span></li><li><span style="font-size: 16px;">Account name: {!oppRecord.Account.Name}</span></li><li><span style="font-size: 16px;">Company name on proposal: {!Get_Proposal.Client_Company_Name__c}</span></li></ul>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[Company_Info_Column1](#company_info_column1)|
    
    
    
    
    #### Company_Info_Column1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region|
    |Is Required|⬜|
    |Parent Field|[Company_Info](#company_info)|
    |Width (input)|12|
    
    
    
    
    #### Company_Info
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|Company Info:|
    |Field Type| Region Container|
    |Is Required|⬜|
    |Region Container Type| Section With Header|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### advisorText
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<ul><li><span style="font-size: 16px;">Contact name: {!Get_Proposal.Advisor_Contact__r.Full_Name__c}</span></li><li><span style="font-size: 16px;">Account name: {!Get_Proposal.Advisor_Account__r.Name}</span></li><li><span style="font-size: 16px;">Firm name on proposal: {!Get_Proposal.Firm_Name__c}</span></li></ul>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Has_Advisor_Linked<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;booleanValue: true<br/>|
    |Parent Field|[Advisor_Info_Column1](#advisor_info_column1)|
    
    
    
    
    #### missingAdvisorText
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p><span style="color: rgb(234, 0, 30); font-size: 16px;">Missing advisor on proposal!</span></p><ul><li><span style="color: rgb(234, 0, 30); font-size: 16px;">Expected contact name: {!Get_Proposal.Financial_Professional_First_Name__c} {!Get_Proposal.Financial_Professional_Last_Name__c}</span></li><li><span style="color: rgb(234, 0, 30); font-size: 16px;">Expected account name: {!Get_Proposal.Firm_Name__c}</span></li></ul>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Expected_advisor_missing<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;booleanValue: true<br/>|
    |Parent Field|[Advisor_Info_Column1](#advisor_info_column1)|
    
    
    
    
    #### Advisor_Info_Column1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region|
    |Is Required|⬜|
    |Parent Field|[Advisor_Info](#advisor_info)|
    |Width (input)|12|
    
    
    
    
    #### Advisor_Info
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|Advisor Info:|
    |Field Type| Region Container|
    |Is Required|⬜|
    |Region Container Type| Section With Header|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: or<br/>conditions:<br/>&nbsp;&nbsp;- leftValueReference: Expected_advisor_missing<br/>&nbsp;&nbsp;&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;booleanValue: true<br/>&nbsp;&nbsp;- leftValueReference: Has_Advisor_Linked<br/>&nbsp;&nbsp;&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;booleanValue: true<br/>|
    
    
    
    
    #### tpaText
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<ul><li><span style="font-size: 16px;">Contact name: {!Get_Proposal.TPA_Contact__r.Full_Name__c}</span></li><li><span style="font-size: 16px;">Account name: {!Get_Proposal.TPA_Account__r.Name}</span></li><li><span style="font-size: 16px;">Firm name on proposal: {!Get_Proposal.TPA_Firm_Name__c}</span></li></ul>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Has_TPA_linked<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;booleanValue: true<br/>|
    |Parent Field|[TPA_Info_Column1](#tpa_info_column1)|
    
    
    
    
    #### missingTpaText
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p><span style="color: rgb(234, 0, 30); font-size: 16px;">Missing TPA on proposal!</span></p><ul><li><span style="color: rgb(234, 0, 30); font-size: 16px;">Expected contact name: {!Get_Proposal.TPA_Sales_First_Name__c} {!Get_Proposal.TPA_Sales_Last_Name__c}</span></li><li><span style="color: rgb(234, 0, 30); font-size: 16px;">Expected account name: {!Get_Proposal.TPA_Firm_Name__c}</span></li></ul>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: expected_tpa_missing<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;booleanValue: true<br/>|
    |Parent Field|[TPA_Info_Column1](#tpa_info_column1)|
    
    
    
    
    #### TPA_Info_Column1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region|
    |Is Required|⬜|
    |Parent Field|[TPA_Info](#tpa_info)|
    |Width (input)|12|
    
    
    
    
    #### TPA_Info
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|TPA Info:|
    |Field Type| Region Container|
    |Is Required|⬜|
    |Region Container Type| Section With Header|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: or<br/>conditions:<br/>&nbsp;&nbsp;- leftValueReference: expected_tpa_missing<br/>&nbsp;&nbsp;&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;booleanValue: true<br/>&nbsp;&nbsp;- leftValueReference: Has_TPA_linked<br/>&nbsp;&nbsp;&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;booleanValue: true<br/>|
    
    
    
    
    #### proposalLinkText
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p><span style="font-size: 16px;">Link to proposal: </span><a href="{!proposalLink}" rel="noopener noreferrer" target="_blank" style="font-size: 16px;">{!Get_Proposal.Name}</a></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### alertBizIntText
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p><span style="color: rgb(234, 0, 30); font-size: 16px;">Please alert BI for advisor/TPA correction before approval</span></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: or<br/>conditions:<br/>&nbsp;&nbsp;- leftValueReference: Expected_advisor_missing<br/>&nbsp;&nbsp;&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;booleanValue: true<br/>&nbsp;&nbsp;- leftValueReference: expected_tpa_missing<br/>&nbsp;&nbsp;&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;booleanValue: true<br/>|
    
    
    
    
    ### Check_Opp_Pricebook
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Subflow|
    |Label|Check Opp Pricebook|
    |Flow Name|Opportunity_Autolaunched_Pricebook_Check|
    |Store Output Automatically|✅|
    |Connector|[Check_if_PB_Change_Needed](#check_if_pb_change_needed)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |<!-- -->|[Get_Pricebook](#get_pricebook)|
    |<!-- -->|oppRecord|
    
    
    
    
    ### Check_Opp_Products
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Subflow|
    |Label|Check Opp Products|
    |Flow Name|Opportunity_Autolaunched_Product_Check|
    |Store Output Automatically|✅|
    |Connector|[potential_product_ids](#potential_product_ids)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |<!-- -->|[Get_Pricebook](#get_pricebook)|
    |<!-- -->|oppRecord|
    
    
    
    
    ### Build_Associated_Account_Id_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Transform|
    |Label|Build Associated Account Id Collection|
    |Data Type|String|
    |Is Collection|✅|
    |Scale|0|
    |Store Output Automatically|✅|
    |Connector|[Get_Proposal](#get_proposal)|
    
    
    #### Transform actions
    
    |Transform Type|Value|Output Field Api Name|
    |:-- |:--:|:--  |
    |Map|associatedPartners[$EachItem].Account__c|<!-- -->|
    
    
    
    
    ### Build_Associated_Contact_Id_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Transform|
    |Label|Build Associated Contact Id Collection|
    |Data Type|String|
    |Is Collection|✅|
    |Scale|0|
    |Store Output Automatically|✅|
    |Connector|[Get_Associated_Partners](#get_associated_partners)|
    
    
    #### Transform actions
    
    |Transform Type|Value|Output Field Api Name|
    |:-- |:--:|:--  |
    |Map|associatedContacts[$EachItem].Contact__c|<!-- -->|
    
    
    
    
    ### Existing_product_ids
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Transform|
    |Label|Existing product ids|
    |Data Type|String|
    |Is Collection|✅|
    |Scale|0|
    |Store Output Automatically|✅|
    |Connector|[Check_if_products_match_expected](#check_if_products_match_expected)|
    
    
    #### Transform actions
    
    |Transform Type|Value|Output Field Api Name|
    |:-- |:--:|:--  |
    |Map|Get_existing_opp_products[$EachItem].Product2Id|<!-- -->|
    
    
    
    
    ### potential_product_ids
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Transform|
    |Label|potential product ids|
    |Data Type|String|
    |Is Collection|✅|
    |Scale|0|
    |Store Output Automatically|✅|
    |Connector|[Get_existing_opp_products](#get_existing_opp_products)|
    
    
    #### Transform actions
    
    |Transform Type|Value|Output Field Api Name|
    |:-- |:--:|:--  |
    |Map|Check_Opp_Products.newOppProducts[$EachItem].Product2Id|<!-- -->|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

