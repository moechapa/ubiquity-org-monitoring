# Docusign_Button_Find_A4S history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Docusign_Button_Find_A4S-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Screen Flow</b>"]):::startClass
    click START "#general-information" "698021478"
    
    Add_to_loop_counter[\"🟰 <em></em><br/>Add to loop counter"/]:::assignments
    click Add_to_loop_counter "#add_to_loop_counter" "3637801208"
    
    Assign_Contact_Primary_Email[\"🟰 <em></em><br/>Assign Contact Primary Email"/]:::assignments
    click Assign_Contact_Primary_Email "#assign_contact_primary_email" "2004302201"
    
    Assign_Lead_Primary_Email[\"🟰 <em></em><br/>Assign Lead Primary Email"/]:::assignments
    click Assign_Lead_Primary_Email "#assign_lead_primary_email" "2321441793"
    
    Assign_Secondary_Email_Contact[\"🟰 <em></em><br/>Assign Secondary Email Contact"/]:::assignments
    click Assign_Secondary_Email_Contact "#assign_secondary_email_contact" "1417244225"
    
    assignName[\"🟰 <em></em><br/>assignName"/]:::assignments
    click assignName "#assignname" "350878109"
    
    define_signer_email[\"🟰 <em></em><br/>define signer email"/]:::assignments
    click define_signer_email "#define_signer_email" "1859709614"
    
    Define_Signer_Email_Lead[\"🟰 <em></em><br/>Define Signer Email Lead"/]:::assignments
    click Define_Signer_Email_Lead "#define_signer_email_lead" "1560031802"
    
    Mark_Failed_Document_Search[\"🟰 <em></em><br/>Mark Failed Document Search"/]:::assignments
    click Mark_Failed_Document_Search "#mark_failed_document_search" "2661389768"
    
    Primary_Email[\"🟰 <em></em><br/>Primary Email"/]:::assignments
    click Primary_Email "#primary_email" "2231569964"
    
    Primary_Email_Document[\"🟰 <em></em><br/>Primary Email Document"/]:::assignments
    click Primary_Email_Document "#primary_email_document" "3713436947"
    
    Remove_from_collection[\"🟰 <em></em><br/>Remove from collection"/]:::assignments
    click Remove_from_collection "#remove_from_collection" "1133833017"
    
    Secondary_Email[\"🟰 <em></em><br/>Secondary Email"/]:::assignments
    click Secondary_Email "#secondary_email" "965623514"
    
    Secondary_Email_Document[\"🟰 <em></em><br/>Secondary Email Document"/]:::assignments
    click Secondary_Email_Document "#secondary_email_document" "1926837450"
    
    Set_A4S_email_Primary[\"🟰 <em></em><br/>Set A4S email Primary"/]:::assignments
    click Set_A4S_email_Primary "#set_a4s_email_primary" "4205414046"
    
    Update_Lead_Secondary_Email[\"🟰 <em></em><br/>Update Lead Secondary Email"/]:::assignments
    click Update_Lead_Secondary_Email "#update_lead_secondary_email" "1890198051"
    
    A4S_Chosen_Check{"🔀 <em></em><br/>A4S Chosen Check"}:::decisions
    click A4S_Chosen_Check "#a4s_chosen_check" "1853478772"
    
    Check_if_choice_collection_has_recs{"🔀 <em></em><br/>Check if choice collection has recs"}:::decisions
    click Check_if_choice_collection_has_recs "#check_if_choice_collection_has_recs" "2163153962"
    
    docusign_recs_found_check{"🔀 <em></em><br/>docusign recs found check"}:::decisions
    click docusign_recs_found_check "#docusign_recs_found_check" "175530481"
    
    Does_it_pass_docuspection{"🔀 <em></em><br/>Does it pass docuspection"}:::decisions
    click Does_it_pass_docuspection "#does_it_pass_docuspection" "2292310199"
    
    lead_or_opp_check{"🔀 <em></em><br/>lead or opp check"}:::decisions
    click lead_or_opp_check "#lead_or_opp_check" "1848987979"
    
    Name_or_Email{"🔀 <em></em><br/>Name or Email"}:::decisions
    click Name_or_Email "#name_or_email" "2750945136"
    
    Person_or_Document_Primary_Email{"🔀 <em></em><br/>Person or Document Primary Email"}:::decisions
    click Person_or_Document_Primary_Email "#person_or_document_primary_email" "2836900670"
    
    Secondary_Stamp_Check{"🔀 <em></em><br/>Secondary Stamp Check"}:::decisions
    click Secondary_Stamp_Check "#secondary_stamp_check" "2272277066"
    
    Update_Which_Person_Type{"🔀 <em></em><br/>Update Which Person Type"}:::decisions
    click Update_Which_Person_Type "#update_which_person_type" "3701242130"
    
    docusign_Loop{{"🔁 <em></em><br/>docusign Loop"}}:::loops
    click docusign_Loop "#docusign_loop" "3554036079"
    
    Copy_1_of_Find_Docusign_by_Name[("🔍 <em></em><br/>Copy 1 of Find Docusign by Name")]:::recordLookups
    click Copy_1_of_Find_Docusign_by_Name "#copy_1_of_find_docusign_by_name" "2822532183"
    
    Find_Docusign_by_Name[("🔍 <em></em><br/>Find Docusign by Name")]:::recordLookups
    click Find_Docusign_by_Name "#find_docusign_by_name" "224335112"
    
    Get_Lead[("🔍 <em></em><br/>Get Lead")]:::recordLookups
    click Get_Lead "#get_lead" "606953539"
    
    Get_Opportunity[("🔍 <em></em><br/>Get Opportunity")]:::recordLookups
    click Get_Opportunity "#get_opportunity" "1107935356"
    
    Grab_Associated_Contacts[("🔍 <em></em><br/>Grab Associated Contacts")]:::recordLookups
    click Grab_Associated_Contacts "#grab_associated_contacts" "3656491113"
    
    Grab_Contact[("🔍 <em></em><br/>Grab Contact")]:::recordLookups
    click Grab_Contact "#grab_contact" "2772354738"
    
    Update_A4S[("🛠️ <em></em><br/>Update A4S")]:::recordUpdates
    click Update_A4S "#update_a4s" "2262760070"
    
    Update_Contact_Email[("🛠️ <em></em><br/>Update Contact Email")]:::recordUpdates
    click Update_Contact_Email "#update_contact_email" "3865393463"
    
    Update_Lead_Email[("🛠️ <em></em><br/>Update Lead Email")]:::recordUpdates
    click Update_Lead_Email "#update_lead_email" "751090283"
    
    A4Sselection(["💻 <em></em><br/>A4Sselection"]):::screens
    click A4Sselection "#a4sselection" "1416860217"
    
    associatedContactScreen(["💻 <em></em><br/>associatedContactScreen"]):::screens
    click associatedContactScreen "#associatedcontactscreen" "1867274631"
    
    emailScreen(["💻 <em></em><br/>emailScreen"]):::screens
    click emailScreen "#emailscreen" "1776271824"
    
    initScreen(["💻 <em></em><br/>initScreen"]):::screens
    click initScreen "#initscreen" "1601632710"
    
    Add_to_loop_counter --> Does_it_pass_docuspection
    Assign_Contact_Primary_Email --> Update_Contact_Email
    Assign_Lead_Primary_Email --> Update_Lead_Email
    Assign_Secondary_Email_Contact --> Update_Which_Person_Type
    assignName --> docusign_Loop
    define_signer_email --> Grab_Contact
    Define_Signer_Email_Lead --> emailScreen
    Mark_Failed_Document_Search --> initScreen
    Primary_Email --> Secondary_Email_Document
    Primary_Email_Document --> Secondary_Email
    Remove_from_collection --> docusign_Loop
    Secondary_Email --> Secondary_Stamp_Check
    Secondary_Email_Document --> Secondary_Stamp_Check
    Set_A4S_email_Primary --> Update_A4S
    Update_Lead_Secondary_Email --> Update_Which_Person_Type
    A4S_Chosen_Check --> |"A4S Chosen Opp"| associatedContactScreen
    A4S_Chosen_Check --> |"A4S Chosen Lead"| Define_Signer_Email_Lead
    A4S_Chosen_Check --> |"Default Outcome"| END_A4S_Chosen_Check
    Check_if_choice_collection_has_recs --> |"Docusign filtered"| A4Sselection
    Check_if_choice_collection_has_recs --> |"Default Outcome"| Mark_Failed_Document_Search
    docusign_recs_found_check --> |"Docs Found"| docusign_Loop
    docusign_recs_found_check --> |"Default Outcome"| Mark_Failed_Document_Search
    Does_it_pass_docuspection --> |"Purge"| Remove_from_collection
    Does_it_pass_docuspection --> |"Default Outcome"| assignName
    lead_or_opp_check --> |"This is a lead"| Get_Lead
    lead_or_opp_check --> |"This is an opp"| Get_Opportunity
    lead_or_opp_check --> |"Uh oh"| END_lead_or_opp_check
    Name_or_Email --> |"Search by name"| Find_Docusign_by_Name
    Name_or_Email --> |"Search by email"| Copy_1_of_Find_Docusign_by_Name
    Name_or_Email --> |"Default Outcome"| END_Name_or_Email
    Person_or_Document_Primary_Email --> |"Person"| Primary_Email
    Person_or_Document_Primary_Email --> |"Document"| Primary_Email_Document
    Person_or_Document_Primary_Email --> |"no email selected"| END_Person_or_Document_Primary_Email
    Secondary_Stamp_Check --> |"Secondary Stamp Lead"| Update_Lead_Secondary_Email
    Secondary_Stamp_Check --> |"Secondary Stamp Opp"| Assign_Secondary_Email_Contact
    Secondary_Stamp_Check --> |"Don't assign secondary"| Update_Which_Person_Type
    Update_Which_Person_Type --> |"Update Lead Email 2 Doc"| Assign_Lead_Primary_Email
    Update_Which_Person_Type --> |"Update Contact Email 2 Doc"| Assign_Contact_Primary_Email
    Update_Which_Person_Type --> |"Don't Update Person"| Set_A4S_email_Primary
    docusign_Loop --> |"For Each"|Add_to_loop_counter
    docusign_Loop ---> |"After Last"|Check_if_choice_collection_has_recs
    Copy_1_of_Find_Docusign_by_Name --> docusign_recs_found_check
    Find_Docusign_by_Name --> docusign_recs_found_check
    Get_Lead --> initScreen
    Get_Opportunity --> Grab_Associated_Contacts
    Grab_Associated_Contacts --> initScreen
    Grab_Contact --> emailScreen
    Update_A4S --> END_Update_A4S
    Update_Contact_Email --> Set_A4S_email_Primary
    Update_Lead_Email --> Set_A4S_email_Primary
    A4Sselection --> A4S_Chosen_Check
    associatedContactScreen --> define_signer_email
    emailScreen --> Person_or_Document_Primary_Email
    initScreen --> Name_or_Email
    START -->  lead_or_opp_check
    END_A4S_Chosen_Check(( END )):::endClass
    END_lead_or_opp_check(( END )):::endClass
    END_Name_or_Email(( END )):::endClass
    END_Person_or_Document_Primary_Email(( END )):::endClass
    END_Update_A4S(( END )):::endClass
    
    
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
    |Label|Docusign | Button | Find A4S|
    |Status|⚠️ Draft|
    |Environments|Default|
    |Interview Label|Docusign | Button | Find A4S {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[lead_or_opp_check](#lead_or_opp_check)|
    |Next Node|[lead_or_opp_check](#lead_or_opp_check)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |chosenA4S|SObject|⬜|⬜|⬜|dsfs__DocuSign_Recipient_Status__c|<!-- -->|
    |chosenAC|SObject|⬜|⬜|⬜|Associated_Contact__c|<!-- -->|
    |docusignCollection|SObject|✅|⬜|⬜|dsfs__DocuSign_Recipient_Status__c|<!-- -->|
    |failedDocSearch|Boolean|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |loopCounter|Number|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |primaryEmail|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |recordId|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |secondaryEmail|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |signerEmail|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |singleDocusignChoice|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |LAST30DAYS|Date|TODAY() - 30|<!-- -->|
    |singleDocusignChoiceForm|String|{!docusign_Loop.Name} + ", " + {!docusign_Loop.dsfs__DocuSign_Recipient_Email__c} + ", " + {!docusign_Loop.Document_Name__c}|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Add_to_loop_counter
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add to loop counter|
    |Connector|[Does_it_pass_docuspection](#does_it_pass_docuspection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |loopCounter| Add|1|
    
    
    
    
    ### Assign_Contact_Primary_Email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Contact Primary Email|
    |Connector|[Update_Contact_Email](#update_contact_email)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Grab_Contact.Email| Assign|primaryEmail|
    
    
    
    
    ### Assign_Lead_Primary_Email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Lead Primary Email|
    |Connector|[Update_Lead_Email](#update_lead_email)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Get_Lead.Email| Assign|primaryEmail|
    
    
    
    
    ### Assign_Secondary_Email_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Secondary Email Contact|
    |Connector|[Update_Which_Person_Type](#update_which_person_type)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Grab_Contact.Secondary_Email__c| Assign|secondaryEmail|
    
    
    
    
    ### assignName
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|[assignName](#assignname)|
    |Connector|[docusign_Loop](#docusign_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |docusign_Loop.Name| Assign|singleDocusignChoiceForm|
    
    
    
    
    ### define_signer_email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|define signer email|
    |Connector|[Grab_Contact](#grab_contact)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |signerEmail| Assign|chosenAC.Email__c|
    
    
    
    
    ### Define_Signer_Email_Lead
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Define Signer Email Lead|
    |Connector|[emailScreen](#emailscreen)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |signerEmail| Assign|Get_Lead.Email|
    
    
    
    
    ### Mark_Failed_Document_Search
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Mark Failed Document Search|
    |Connector|isGoTo: true<br/>targetReference: initScreen<br/>|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |failedDocSearch| Assign|✅|
    
    
    
    
    ### Primary_Email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Primary Email|
    |Connector|[Secondary_Email_Document](#secondary_email_document)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |primaryEmail| Assign|signerEmail|
    
    
    
    
    ### Primary_Email_Document
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Primary Email Document|
    |Connector|[Secondary_Email](#secondary_email)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |primaryEmail| Assign|chosenA4S.dsfs__DocuSign_Recipient_Email__c|
    
    
    
    
    ### Remove_from_collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Remove from collection|
    |Connector|[docusign_Loop](#docusign_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |docusignCollection| Remove Position|loopCounter|
    
    
    
    
    ### Secondary_Email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Secondary Email|
    |Connector|[Secondary_Stamp_Check](#secondary_stamp_check)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |secondaryEmail| Assign|signerEmail|
    
    
    
    
    ### Secondary_Email_Document
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Secondary Email Document|
    |Connector|[Secondary_Stamp_Check](#secondary_stamp_check)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |secondaryEmail| Assign|chosenA4S.dsfs__DocuSign_Recipient_Email__c|
    
    
    
    
    ### Set_A4S_email_Primary
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Set A4S email Primary|
    |Connector|[Update_A4S](#update_a4s)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |chosenA4S.dsfs__DocuSign_Recipient_Email__c| Assign|primaryEmail|
    
    
    
    
    ### Update_Lead_Secondary_Email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Update Lead Secondary Email|
    |Connector|[Update_Which_Person_Type](#update_which_person_type)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Get_Lead.Secondary_Email__c| Assign|secondaryEmail|
    
    
    
    
    ### A4S_Chosen_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|A4S Chosen Check|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule A4S_Chosen_Opp (A4S Chosen Opp)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[associatedContactScreen](#associatedcontactscreen)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|chosenA4S.Id| Is Null|⬜|
    |2|This_is_an_opp| Equal To|✅|
    
    
    
    
    #### Rule A4S_Chosen_Lead (A4S Chosen Lead)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Define_Signer_Email_Lead](#define_signer_email_lead)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|chosenA4S.Id| Is Null|⬜|
    |2|This_is_a_lead| Equal To|✅|
    
    
    
    
    ### Check_if_choice_collection_has_recs
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check if choice collection has recs|
    |Default Connector|[Mark_Failed_Document_Search](#mark_failed_document_search)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Docusign_filtered (Docusign filtered)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[A4Sselection](#a4sselection)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|docusignCollection| Is Null|⬜|
    
    
    
    
    ### docusign_recs_found_check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|docusign recs found check|
    |Default Connector|[Mark_Failed_Document_Search](#mark_failed_document_search)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Docs_Found (Docs Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[docusign_Loop](#docusign_loop)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|docusignCollection| Is Null|⬜|
    
    
    
    
    ### Does_it_pass_docuspection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Does it pass docuspection|
    |Default Connector|[assignName](#assignname)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Purge (Purge)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Remove_from_collection](#remove_from_collection)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|docusign_Loop.dsfs__Parent_Status_Record__r.dsfs__Opportunity__c| Is Null|⬜|
    
    
    
    
    ### lead_or_opp_check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|lead or opp check|
    |Default Connector Label|Uh oh|
    
    
    #### Rule This_is_a_lead (This is a lead)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Lead](#get_lead)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|recordId| Starts With|00Q|
    
    
    
    
    #### Rule This_is_an_opp (This is an opp)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Opportunity](#get_opportunity)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|recordId| Starts With|6|
    
    
    
    
    ### Name_or_Email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Name or Email|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Search_by_name (Search by name)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Find_Docusign_by_Name](#find_docusign_by_name)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|searchChoice| Equal To|nameChoice|
    
    
    
    
    #### Rule Search_by_email (Search by email)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Copy_1_of_Find_Docusign_by_Name](#copy_1_of_find_docusign_by_name)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|searchChoice| Equal To|emailChoice|
    
    
    
    
    ### Person_or_Document_Primary_Email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Person or Document Primary Email|
    |Default Connector Label|no email selected|
    
    
    #### Rule Person (Person)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Primary_Email](#primary_email)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Choose_preferred_email| Equal To|Signer|
    
    
    
    
    #### Rule Document (Document)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Primary_Email_Document](#primary_email_document)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Choose_preferred_email| Equal To|Document|
    
    
    
    
    ### Secondary_Stamp_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Secondary Stamp Check|
    |Default Connector|[Update_Which_Person_Type](#update_which_person_type)|
    |Default Connector Label|Don't assign secondary|
    
    
    #### Rule Secondary_Stamp_Lead (Secondary Stamp Lead)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Lead_Secondary_Email](#update_lead_secondary_email)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|This_is_a_lead| Equal To|✅|
    |2|Keep_other_email_as_secondary| Equal To|✅|
    
    
    
    
    #### Rule Secondary_Stamp_Opp (Secondary Stamp Opp)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Secondary_Email_Contact](#assign_secondary_email_contact)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Keep_other_email_as_secondary| Equal To|✅|
    |2|This_is_an_opp| Equal To|✅|
    
    
    
    
    ### Update_Which_Person_Type
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Update Which Person Type|
    |Default Connector|[Set_A4S_email_Primary](#set_a4s_email_primary)|
    |Default Connector Label|Don't Update Person|
    
    
    #### Rule Update_Lead_Email_2_Doc (Update Lead Email 2 Doc)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Lead_Primary_Email](#assign_lead_primary_email)|
    |Condition Logic|1 AND (2 OR 3)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|This_is_a_lead| Equal To|✅|
    |2|Keep_other_email_as_secondary| Equal To|✅|
    |3|Choose_preferred_email| Equal To|Document|
    
    
    
    
    #### Rule Update_Contact_Email_2_Doc (Update Contact Email 2 Doc)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Contact_Primary_Email](#assign_contact_primary_email)|
    |Condition Logic|1 AND (2 OR 3)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|This_is_an_opp| Equal To|✅|
    |2|Keep_other_email_as_secondary| Equal To|✅|
    |3|Choose_preferred_email| Equal To|Document|
    
    
    
    
    ### docusign_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|docusign Loop|
    |Description|makes docusign choices readable + applies filtering|
    |Collection Reference|docusignCollection|
    |Iteration Order|Asc|
    |Next Value Connector|[Add_to_loop_counter](#add_to_loop_counter)|
    |No More Values Connector|[Check_if_choice_collection_has_recs](#check_if_choice_collection_has_recs)|
    
    
    ### Copy_1_of_Find_Docusign_by_Name
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|dsfs__DocuSign_Recipient_Status__c|
    |Label|Copy 1 of Find Docusign by Name|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|docusignCollection|
    |Queried Fields|- Id<br/>- Name<br/>- dsfs__Parent_Status_Record__c<br/>- dsfs__DocuSign_Recipient_Email__c<br/>- Document_Name__c<br/>|
    |Connector|[docusign_recs_found_check](#docusign_recs_found_check)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|dsfs__DocuSign_Recipient_Email__c| Contains|Search_Term|
    |2|Document_Name__c| Contains|Agreement For Services|
    |3|CreatedDate| Greater Than Or Equal To|LAST30DAYS|
    
    
    
    
    ### Find_Docusign_by_Name
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|dsfs__DocuSign_Recipient_Status__c|
    |Label|Find Docusign by Name|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|docusignCollection|
    |Queried Fields|- Id<br/>- Name<br/>- dsfs__Parent_Status_Record__c<br/>- dsfs__DocuSign_Recipient_Email__c<br/>- Document_Name__c<br/>|
    |Connector|[docusign_recs_found_check](#docusign_recs_found_check)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Name| Contains|Search_Term|
    |2|Document_Name__c| Contains|Agreement For Services|
    |3|CreatedDate| Greater Than Or Equal To|LAST30DAYS|
    
    
    
    
    ### Get_Lead
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Lead|
    |Label|Get Lead|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[initScreen](#initscreen)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Get_Opportunity
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Opportunity|
    |Label|Get Opportunity|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Grab_Associated_Contacts](#grab_associated_contacts)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Grab_Associated_Contacts
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Associated_Contact__c|
    |Label|Grab Associated Contacts|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Store Output Automatically|✅|
    |Connector|[initScreen](#initscreen)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Opportunity__c| Equal To|Get_Opportunity.Id|
    
    
    
    
    ### Grab_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Grab Contact|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|- Id<br/>- Secondary_Email__c<br/>- Email<br/>|
    |Store Output Automatically|✅|
    |Connector|[emailScreen](#emailscreen)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|chosenAC.Contact__c|
    
    
    
    
    ### Update_A4S
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update A4S|
    |Input Reference|chosenA4S|
    
    
    ### Update_Contact_Email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Contact Email|
    |Input Reference|[Grab_Contact](#grab_contact)|
    |Connector|[Set_A4S_email_Primary](#set_a4s_email_primary)|
    
    
    ### Update_Lead_Email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Lead Email|
    |Input Reference|[Get_Lead](#get_lead)|
    |Connector|[Set_A4S_email_Primary](#set_a4s_email_primary)|
    
    
    ### A4Sselection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|[A4Sselection](#a4sselection)|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|✅|
    |Show Footer|✅|
    |Show Header|✅|
    |Connector|[A4S_Chosen_Check](#a4s_chosen_check)|
    
    
    #### a4sDataTable
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type Mappings|typeName: T<br/>typeValue: dsfs__DocuSign_Recipient_Status__c<br/>|
    |Extension Name|flowruntime:datatable|
    |Field Type| Component Instance|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Output Parameters|assignToReference: chosenA4S<br/>name: firstSelectedRow<br/>|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Label (input)|Confirm A4S|
    |Selection Mode (input)|SINGLE_SELECT|
    |Min Row Selection (input)|numberValue: 0<br/>|
    |Table Data (input)|docusignCollection|
    |Max Row Selection (input)|1|
    |Columns (input)|[{"apiName":"Name","guid":"column-ae77","editable":false,"hasCustomHeaderLabel":false,"customHeaderLabel":"","wrapText":true,"order":0,"label":"DocuSign Recipient Name","type":"text"},{"apiName":"dsfs__DocuSign_Recipient_Email__c","guid":"column-0b87","editable":false,"hasCustomHeaderLabel":false,"customHeaderLabel":"","wrapText":true,"order":1,"label":"DocuSign Recipient Email","type":"email"},{"apiName":"Document_Name__c","guid":"column-00fa","editable":false,"hasCustomHeaderLabel":false,"customHeaderLabel":"","wrapText":true,"order":2,"label":"Document Name","type":"customRichText"},{"apiName":"dsfs__Date_Sent__c","guid":"column-eddc","editable":false,"hasCustomHeaderLabel":false,"customHeaderLabel":"","wrapText":true,"order":3,"label":"Date Sent","type":"customDateTime"},{"apiName":"dsfs__Date_Signed__c","guid":"column-5ae4","editable":false,"hasCustomHeaderLabel":false,"customHeaderLabel":"","wrapText":true,"order":4,"label":"Date Signed","type":"customDateTime"}]|
    |Should Display Label (input)|✅|
    
    
    
    
    ### associatedContactScreen
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|[associatedContactScreen](#associatedcontactscreen)|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Show Footer|✅|
    |Show Header|✅|
    |Connector|[define_signer_email](#define_signer_email)|
    
    
    #### acEmailText
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p style="text-align: center;"><b style="font-size: 16px;">Please confirm the signer's associated contact</b></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### docInfoText
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p>The A4S was sent to: {!chosenA4S.dsfs__DocuSign_Recipient_Email__c}</p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### associatedContactDataTable
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type Mappings|typeName: T<br/>typeValue: Associated_Contact__c<br/>|
    |Extension Name|flowruntime:datatable|
    |Field Type| Component Instance|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Output Parameters|assignToReference: chosenAC<br/>name: firstSelectedRow<br/>|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Label (input)|Confirm Signer|
    |Selection Mode (input)|SINGLE_SELECT|
    |Min Row Selection (input)|numberValue: 0<br/>|
    |Should Display Label (input)|✅|
    |Table Data (input)|[Grab_Associated_Contacts](#grab_associated_contacts)|
    |Max Row Selection (input)|1|
    |Columns (input)|[{"apiName":"Full_Name__c","guid":"column-487a","editable":false,"hasCustomHeaderLabel":false,"customHeaderLabel":"","wrapText":true,"order":0,"label":"Full Name","type":"customRichText"},{"apiName":"Email__c","guid":"column-6fe3","editable":false,"hasCustomHeaderLabel":false,"customHeaderLabel":"","wrapText":true,"order":1,"label":"Email","type":"customRichText"},{"apiName":"Contact_Role__c","guid":"column-7c2a","editable":false,"hasCustomHeaderLabel":false,"customHeaderLabel":"","wrapText":true,"order":2,"label":"Contact Role","type":"text"}]|
    
    
    
    
    ### emailScreen
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|[emailScreen](#emailscreen)|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Show Footer|✅|
    |Show Header|✅|
    |Connector|[Person_or_Document_Primary_Email](#person_or_document_primary_email)|
    
    
    #### leadEmailDisplayText
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p>Email on lead: {!signerEmail}</p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: This_is_a_lead<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;booleanValue: true<br/>|
    |Parent Field|[emailScreen_Section1_Column1](#emailscreen_section1_column1)|
    
    
    
    
    #### acEmailDisplayText
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p>Email on contact: {!signerEmail}</p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: This_is_an_opp<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;booleanValue: true<br/>|
    |Parent Field|[emailScreen_Section1_Column1](#emailscreen_section1_column1)|
    
    
    
    
    #### emailScreen_Section1_Column1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region|
    |Is Required|⬜|
    |Parent Field|[emailScreen_Section1](#emailscreen_section1)|
    |Width (input)|6|
    
    
    
    
    #### docEmailDisplayText
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p>Email on A4S: {!chosenA4S.dsfs__DocuSign_Recipient_Email__c}</p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[emailScreen_Section1_Column2](#emailscreen_section1_column2)|
    
    
    
    
    #### emailScreen_Section1_Column2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region|
    |Is Required|⬜|
    |Parent Field|[emailScreen_Section1](#emailscreen_section1)|
    |Width (input)|6|
    
    
    
    
    #### emailScreen_Section1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region Container|
    |Is Required|⬜|
    |Region Container Type| Section Without Header|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Choose_preferred_email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|- signerEmailChoice<br/>- documentEmailChoice<br/>|
    |Field Text|Choose preferred email|
    |Field Type| Dropdown Box|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Keep_other_email_as_secondary
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|Boolean|
    |Field Text|Keep other email as secondary|
    |Field Type| Input Field|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    ### initScreen
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|[initScreen](#initscreen)|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|✅|
    |Show Footer|✅|
    |Show Header|✅|
    |Connector|[Name_or_Email](#name_or_email)|
    
    
    #### initText
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p style="text-align: center;"><strong style="font-size: 16px;">A4S Search</strong></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### searchChoice
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|- nameChoice<br/>- emailChoice<br/>|
    |Field Text|Search Item|
    |Field Type| Dropdown Box|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Search_Term
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Field Text|Search Term|
    |Field Type| Input Field|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### failText
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p><span style="color: rgb(255, 0, 0);">No A4S found where {!searchChoice} contains {!Search_Term}</span></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: failedDocSearch<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;booleanValue: true<br/>|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

