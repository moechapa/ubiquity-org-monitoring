# Docusign_Process_Map_After_Signing history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Docusign_Process_Map_After_Signing-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>"]):::startClass
    click START "#general-information" "3685324265"
    
    Alert_BI("📧 <em></em><br/>Alert BI"):::actionCalls
    click Alert_BI "#alert_bi" "2056602798"
    
    Convert_Lead("⚙️ <em></em><br/>Convert Lead"):::actionCalls
    click Convert_Lead "#convert_lead" "1776014649"
    
    Assign_Related_Records[\"🟰 <em></em><br/>Assign Related Records"/]:::assignments
    click Assign_Related_Records "#assign_related_records" "4076268034"
    
    Assign_to_Collection[\"🟰 <em></em><br/>Assign to Collection"/]:::assignments
    click Assign_to_Collection "#assign_to_collection" "1715518392"
    
    Update_Number_of_Employees[\"🟰 <em></em><br/>Update Number of Employees"/]:::assignments
    click Update_Number_of_Employees "#update_number_of_employees" "354160118"
    
    Does_Association_Exist{"🔀 <em></em><br/>Does Association Exist?"}:::decisions
    click Does_Association_Exist "#does_association_exist" "3822923714"
    
    Does_Contact_Exist{"🔀 <em></em><br/>Does Contact Exist?"}:::decisions
    click Does_Contact_Exist "#does_contact_exist" "2730666876"
    
    Does_Contact_Exist_0{"🔀 <em></em><br/>Does Contact Exist?"}:::decisions
    click Does_Contact_Exist_0 "#does_contact_exist_0" "1064049396"
    
    Does_Duplicate_Exist{"🔀 <em></em><br/>Does Duplicate Exist?"}:::decisions
    click Does_Duplicate_Exist "#does_duplicate_exist" "3935352886"
    
    Does_Lead_Exist{"🔀 <em></em><br/>Does Lead Exist?"}:::decisions
    click Does_Lead_Exist "#does_lead_exist" "564728937"
    
    Does_Lead_Exist_0{"🔀 <em></em><br/>Does Lead Exist?"}:::decisions
    click Does_Lead_Exist_0 "#does_lead_exist_0" "504871954"
    
    Does_Opp_Exist{"🔀 <em></em><br/>Does Opp Exist?"}:::decisions
    click Does_Opp_Exist "#does_opp_exist" "1235833997"
    
    Does_Opp_Owner_Exist{"🔀 <em></em><br/>Does Opp Exist?"}:::decisions
    click Does_Opp_Owner_Exist "#does_opp_owner_exist" "1258555248"
    
    Is_DocuSign_Related_Objects_Already_Completed{"🔀 <em></em><br/>Is DocuSign Related Objects Already Completed?"}:::decisions
    click Is_DocuSign_Related_Objects_Already_Completed "#is_docusign_related_objects_already_completed" "3653993596"
    
    Is_Lead_Owned_by_User{"🔀 <em></em><br/>Is Lead Owned by User?"}:::decisions
    click Is_Lead_Owned_by_User "#is_lead_owned_by_user" "1644226183"
    
    Is_this_an_A4S{"🔀 <em></em><br/>Is this an A4S?"}:::decisions
    click Is_this_an_A4S "#is_this_an_a4s" "3519398268"
    
    Null_Collection{"🔀 <em></em><br/>Null Collection?"}:::decisions
    click Null_Collection "#null_collection" "529778701"
    
    Should_Recipient_Be_Excluded_0{"🔀 <em></em><br/>Should Recipient Be Excluded?"}:::decisions
    click Should_Recipient_Be_Excluded_0 "#should_recipient_be_excluded_0" "3020098272"
    
    X401_k_or_Single_k{"🔀 <em></em><br/>401(k) or Single(k)?"}:::decisions
    click X401_k_or_Single_k "#x401_k_or_single_k" "1392107962"
    
    Document_Loop{{"🔁 <em></em><br/>Document Loop"}}:::loops
    click Document_Loop "#document_loop" "2190096544"
    
    Create_Association[("➕ <em></em><br/>Create Association")]:::recordCreates
    click Create_Association "#create_association" "2898759135"
    
    Delete_Duplicate_Account[("🗑️ <em></em><br/>Delete Duplicate Account")]:::recordDeletes
    click Delete_Duplicate_Account "#delete_duplicate_account" "4198953293"
    
    Check_Account[("🔍 <em></em><br/>Check Account")]:::recordLookups
    click Check_Account "#check_account" "2816851879"
    
    Get_Account[("🔍 <em></em><br/>Get Account")]:::recordLookups
    click Get_Account "#get_account" "18716542"
    
    Get_Account_For_Junction[("🔍 <em></em><br/>Get Account")]:::recordLookups
    click Get_Account_For_Junction "#get_account_for_junction" "4165071714"
    
    Get_Association[("🔍 <em></em><br/>Get Association")]:::recordLookups
    click Get_Association "#get_association" "1536415054"
    
    Get_Contact[("🔍 <em></em><br/>Get Contact")]:::recordLookups
    click Get_Contact "#get_contact" "2470929518"
    
    Get_Contact_0[("🔍 <em></em><br/>Get Contact")]:::recordLookups
    click Get_Contact_0 "#get_contact_0" "1147132838"
    
    Get_Converted_Contact[("🔍 <em></em><br/>Get Converted Contact")]:::recordLookups
    click Get_Converted_Contact "#get_converted_contact" "3452931920"
    
    Get_Converted_Lead[("🔍 <em></em><br/>Get Converted Lead")]:::recordLookups
    click Get_Converted_Lead "#get_converted_lead" "1957469753"
    
    Get_Converted_Opp[("🔍 <em></em><br/>Get Converted Opp")]:::recordLookups
    click Get_Converted_Opp "#get_converted_opp" "1429564330"
    
    Get_Docusign_Recipient_Status[("🔍 <em></em><br/>Get Docusign Recipient Status")]:::recordLookups
    click Get_Docusign_Recipient_Status "#get_docusign_recipient_status" "3459091327"
    
    Get_Docusign_Status_Doc[("🔍 <em></em><br/>Get Docusign Status Doc")]:::recordLookups
    click Get_Docusign_Status_Doc "#get_docusign_status_doc" "3058072276"
    
    Get_Duplicate_Account[("🔍 <em></em><br/>Get Duplicate Account")]:::recordLookups
    click Get_Duplicate_Account "#get_duplicate_account" "3142058250"
    
    Get_Lead[("🔍 <em></em><br/>Get Lead")]:::recordLookups
    click Get_Lead "#get_lead" "2308531658"
    
    Get_Lead_0[("🔍 <em></em><br/>Get Lead")]:::recordLookups
    click Get_Lead_0 "#get_lead_0" "841216926"
    
    Get_New_Association[("🔍 <em></em><br/>Get New Association")]:::recordLookups
    click Get_New_Association "#get_new_association" "2290172469"
    
    Get_Opportunity[("🔍 <em></em><br/>Get Opportunity")]:::recordLookups
    click Get_Opportunity "#get_opportunity" "1245557437"
    
    Get_Opportunity_Owner[("🔍 <em></em><br/>Get Opportunity Owner")]:::recordLookups
    click Get_Opportunity_Owner "#get_opportunity_owner" "4068183429"
    
    Get_Related_Documents[("🔍 <em></em><br/>Get Related Documents")]:::recordLookups
    click Get_Related_Documents "#get_related_documents" "384763973"
    
    Close_Opp[("🛠️ <em></em><br/>Close Opp")]:::recordUpdates
    click Close_Opp "#close_opp" "3714561014"
    
    Update_Account[("🛠️ <em></em><br/>Update Account")]:::recordUpdates
    click Update_Account "#update_account" "517503068"
    
    Update_Association[("🛠️ <em></em><br/>Update Association")]:::recordUpdates
    click Update_Association "#update_association" "3902600365"
    
    Update_Collection[("🛠️ <em></em><br/>Update Collection")]:::recordUpdates
    click Update_Collection "#update_collection" "1093636323"
    
    Update_Contact[("🛠️ <em></em><br/>Update Contact")]:::recordUpdates
    click Update_Contact "#update_contact" "2485855747"
    
    Update_DocuSign_Status[("🛠️ <em></em><br/>Update DocuSign Status")]:::recordUpdates
    click Update_DocuSign_Status "#update_docusign_status" "3701122460"
    
    Update_Opp[("🛠️ <em></em><br/>Update Opp")]:::recordUpdates
    click Update_Opp "#update_opp" "2065845807"
    
    Update_Opp_Again[("🛠️ <em></em><br/>Update Opp Again")]:::recordUpdates
    click Update_Opp_Again "#update_opp_again" "3857834502"
    
    X401_k_Check[("🛠️ <em></em><br/>401(k)")]:::recordUpdates
    click X401_k_Check "#x401_k_check" "4160344091"
    
    XSingle_k_Check_0[("🛠️ <em></em><br/>Single(k)")]:::recordUpdates
    click XSingle_k_Check_0 "#xsingle_k_check_0" "161152501"
    
    Alert_BI --> END_Alert_BI
    Convert_Lead --> Get_Converted_Lead
    Assign_Related_Records --> Assign_to_Collection
    Assign_to_Collection --> Document_Loop
    Update_Number_of_Employees --> Update_Account
    Does_Association_Exist --> |"Association Exists"| Get_Opportunity_Owner
    Does_Association_Exist --> |"No"| Get_Account_For_Junction
    Does_Contact_Exist --> |"Yes"| Get_Association
    Does_Contact_Exist --> |"No"| Get_Lead
    Does_Contact_Exist_0 --> |"Yes"| Get_Association
    Does_Contact_Exist_0 --> |"No"| Get_Lead_0
    Does_Duplicate_Exist --> |"Yes"| Update_Number_of_Employees
    Does_Duplicate_Exist --> |"No"| Get_Contact
    Does_Lead_Exist --> |"Yes"| Is_Lead_Owned_by_User
    Does_Lead_Exist --> |"No"| Get_Contact_0
    Does_Lead_Exist_0 --> |"Yes"| Is_Lead_Owned_by_User
    Does_Lead_Exist_0 --> |"No"| Alert_BI
    Does_Opp_Exist --> |"Opp Exists"| Create_Association
    Does_Opp_Exist --> |"No"| END_Does_Opp_Exist
    Does_Opp_Owner_Exist --> |"Yes"| Is_DocuSign_Related_Objects_Already_Completed
    Does_Opp_Owner_Exist --> |"No"| Alert_BI
    Is_DocuSign_Related_Objects_Already_Completed --> |"No"| Check_Account
    Is_Lead_Owned_by_User --> |"Yes"| Convert_Lead
    Is_Lead_Owned_by_User --> |"No"| Alert_BI
    Is_this_an_A4S --> |"Yes"| Get_Contact
    Is_this_an_A4S --> |"No"| END_Is_this_an_A4S
    Null_Collection --> |"No"| Document_Loop
    Should_Recipient_Be_Excluded_0 --> |"No"| Get_Docusign_Status_Doc
    X401_k_or_Single_k --> |"401(k)"| X401_k_Check
    X401_k_or_Single_k --> |"Single(k)"| XSingle_k_Check_0
    X401_k_or_Single_k --> |"Default Outcome"| END_X401_k_or_Single_k
    Document_Loop --> |"For Each"|Assign_Related_Records
    Document_Loop ---> |"After Last"|Update_Collection
    Create_Association --> Get_Association
    Delete_Duplicate_Account --> Get_New_Association
    Check_Account --> Update_DocuSign_Status
    Get_Account --> Get_Duplicate_Account
    Get_Account_For_Junction --> Get_Opportunity
    Get_Association --> Does_Association_Exist
    Get_Contact --> Does_Contact_Exist
    Get_Contact_0 --> Does_Contact_Exist_0
    Get_Converted_Contact --> Update_Contact
    Get_Converted_Lead --> Get_Account
    Get_Converted_Opp --> X401_k_or_Single_k
    Get_Docusign_Recipient_Status --> Should_Recipient_Be_Excluded_0
    Get_Docusign_Status_Doc --> Is_this_an_A4S
    Get_Duplicate_Account --> Get_Converted_Opp
    Get_Lead --> Does_Lead_Exist
    Get_Lead_0 --> Does_Lead_Exist_0
    Get_New_Association --> Update_Association
    Get_Opportunity --> Does_Opp_Exist
    Get_Opportunity_Owner --> Does_Opp_Owner_Exist
    Get_Related_Documents --> Null_Collection
    Close_Opp --> END_Close_Opp
    Update_Account --> Update_Opp
    Update_Association --> Get_Contact
    Update_Collection --> Close_Opp
    Update_Contact --> Delete_Duplicate_Account
    Update_DocuSign_Status --> Update_Opp_Again
    Update_Opp --> Get_Converted_Contact
    Update_Opp_Again --> Get_Related_Documents
    X401_k_Check --> Does_Duplicate_Exist
    XSingle_k_Check_0 --> Does_Duplicate_Exist
    START -->  Get_Docusign_Recipient_Status
    END_Alert_BI(( END )):::endClass
    END_Does_Opp_Exist(( END )):::endClass
    END_Is_this_an_A4S(( END )):::endClass
    END_X401_k_or_Single_k(( END )):::endClass
    END_Close_Opp(( END )):::endClass
    
    
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
    |Process Type| Auto Launched Flow|
    |Label|Docusign | Process | Map After Signing|
    |Status|⚠️ Draft|
    |Description|To be used as a precautionary flow if docusign record is created after the would-be associated records. ***TEST VERSION***|
    |Environments|Default|
    |Interview Label|Docusign | Process | Map After Signing {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Docusign_Recipient_Status](#get_docusign_recipient_status)|
    |Next Node|[Get_Docusign_Recipient_Status](#get_docusign_recipient_status)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |documentCollection|SObject|✅|✅|✅|dsfs__DocuSign_Status__c|<!-- -->|
    |documentLoop|SObject|✅|✅|✅|dsfs__DocuSign_Status__c|<!-- -->|
    |DocuSignStatus|SObject|⬜|✅|✅|dsfs__DocuSign_Status__c|<!-- -->|
    |ExistingAccount|SObject|⬜|✅|✅|Account|<!-- -->|
    |leadId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    |OppOwner|SObject|⬜|✅|✅|Opportunity|<!-- -->|
    |ownerId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    |RecentOpp|SObject|⬜|✅|✅|Opportunity|<!-- -->|
    |recordId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    |RelatedAssociation|SObject|⬜|✅|✅|Associated_Contact__c|<!-- -->|
    |RelevantContact|SObject|⬜|✅|✅|Contact|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |today|Date|TODAY()|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Alert_BI
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Alert BI|
    |Action Type|Email Alert|
    |Action Name|dsfs__DocuSign_Recipient_Status__c.DocuSign_Status_Not_Updated_w_Associations|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|dsfs__DocuSign_Recipient_Status__c.DocuSign_Status_Not_Updated_w_Associations|
    | SObject Row Id (input)|Get_Docusign_Recipient_Status.Id|
    
    
    ### Convert_Lead
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Convert Lead|
    |Action Type|Apex|
    |Action Name|[AutoConvertLeads](../apex/AutoConvertLeads.md)|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|AutoConvertLeads|
    | Lead Ids (input)|leadId|
    |Connector|[Get_Converted_Lead](#get_converted_lead)|
    
    
    ### Assign_Related_Records
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Related Records|
    |Connector|[Assign_to_Collection](#assign_to_collection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Document_Loop.Implementation__c| Assign|RelatedAssociation.Implementation__c|
    |Document_Loop.dsfs__Opportunity__c| Assign|RelatedAssociation.Opportunity__c|
    |Document_Loop.Opportunity_Owner__c| Assign|OppOwner.OwnerId|
    |Document_Loop.dsfs__Company__c| Assign|RelatedAssociation.Account__c|
    |Document_Loop.dsfs__Contact__c| Assign|RelatedAssociation.Contact__c|
    
    
    
    
    ### Assign_to_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign to Collection|
    |Connector|[Document_Loop](#document_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |documentCollection| Add|[Document_Loop](#document_loop)|
    
    
    
    
    ### Update_Number_of_Employees
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Update Number of Employees|
    |Connector|[Update_Account](#update_account)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |ExistingAccount.NumberOfEmployees| Assign|Get_Account.NumberOfEmployees|
    
    
    
    
    ### Does_Association_Exist
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Does Association Exist?|
    |Default Connector|[Get_Account_For_Junction](#get_account_for_junction)|
    |Default Connector Label|No|
    
    
    #### Rule Association_Exists (Association Exists)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Opportunity_Owner](#get_opportunity_owner)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|RelatedAssociation.Contact__c| Is Null|⬜|
    
    
    
    
    ### Does_Contact_Exist
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Does Contact Exist?|
    |Default Connector|[Get_Lead](#get_lead)|
    |Default Connector Label|No|
    
    
    #### Rule YesContact (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Association](#get_association)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|RelevantContact| Is Null|⬜|
    
    
    
    
    ### Does_Contact_Exist_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Does Contact Exist?|
    |Default Connector|[Get_Lead_0](#get_lead_0)|
    |Default Connector Label|No|
    
    
    #### Rule YesContact_0 (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Association](#get_association)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|RelevantContact.Id| Is Null|⬜|
    
    
    
    
    ### Does_Duplicate_Exist
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Does Duplicate Exist?|
    |Default Connector|[Get_Contact](#get_contact)|
    |Default Connector Label|No|
    
    
    #### Rule YesDupeExists (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Number_of_Employees](#update_number_of_employees)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|ExistingAccount| Is Null|⬜|
    
    
    
    
    ### Does_Lead_Exist
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Does Lead Exist?|
    |Default Connector|[Get_Contact_0](#get_contact_0)|
    |Default Connector Label|No|
    
    
    #### Rule YesLead (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Is_Lead_Owned_by_User](#is_lead_owned_by_user)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|leadId| Is Null|⬜|
    
    
    
    
    ### Does_Lead_Exist_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Does Lead Exist?|
    |Default Connector|[Alert_BI](#alert_bi)|
    |Default Connector Label|No|
    
    
    #### Rule YesLead_0 (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Is_Lead_Owned_by_User](#is_lead_owned_by_user)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|leadId| Is Null|⬜|
    
    
    
    
    ### Does_Opp_Exist
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Does Opp Exist?|
    |Default Connector Label|No|
    
    
    #### Rule Opp_Exists (Opp Exists)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Create_Association](#create_association)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|RecentOpp.Id| Is Null|⬜|
    
    
    
    
    ### Does_Opp_Owner_Exist
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Does Opp Exist?|
    |Default Connector|[Alert_BI](#alert_bi)|
    |Default Connector Label|No|
    
    
    #### Rule YesExists (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Is_DocuSign_Related_Objects_Already_Completed](#is_docusign_related_objects_already_completed)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|OppOwner.Id| Is Null|⬜|
    
    
    
    
    ### Is_DocuSign_Related_Objects_Already_Completed
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Is DocuSign Related Objects Already Completed?|
    |Default Connector|[Check_Account](#check_account)|
    |Default Connector Label|No|
    
    
    #### Rule YesCompleted (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|DocuSignStatus.dsfs__Opportunity__c| Is Null|⬜|
    
    
    
    
    ### Is_Lead_Owned_by_User
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Is Lead Owned by User?|
    |Default Connector|[Alert_BI](#alert_bi)|
    |Default Connector Label|No|
    
    
    #### Rule YesOwned (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Convert_Lead](#convert_lead)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|ownerId| Not Equal To|3D00G37000000ksAD|
    
    
    
    
    ### Is_this_an_A4S
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Is this an A4S?|
    |Default Connector Label|No|
    
    
    #### Rule Yes (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Contact](#get_contact)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|DocuSignStatus.dsfs__Subject__c| Contains|Agreement for Services|
    
    
    
    
    ### Null_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Null Collection?|
    |Default Connector|[Document_Loop](#document_loop)|
    |Default Connector Label|No|
    
    
    #### Rule YesNull (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|documentLoop| Is Null|✅|
    
    
    
    
    ### Should_Recipient_Be_Excluded_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Should Recipient Be Excluded?|
    |Default Connector|[Get_Docusign_Status_Doc](#get_docusign_status_doc)|
    |Default Connector Label|No|
    
    
    #### Rule Yes_0 (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Docusign_Recipient_Status.dsfs__DocuSign_Recipient_Email__c| Contains|@myubiquity.com|
    |2|Get_Docusign_Recipient_Status.dsfs__DocuSign_Recipient_Email__c| Contains|@broadridge.com|
    |3|Get_Docusign_Recipient_Status.dsfs__DocuSign_Recipient_Email__c| Contains|@theonline401k.com|
    
    
    
    
    ### X401_k_or_Single_k
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|401(k) or Single(k)?|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule X401_k (401(k))
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[X401_k_Check](#x401_k_check)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Converted_Opp.Product_Type__c| Equal To|401(k)|
    
    
    
    
    #### Rule Single_k (Single(k))
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[XSingle_k_Check_0](#xsingle_k_check_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Converted_Opp.Product_Type__c| Equal To|Single(k)|
    
    
    
    
    ### Document_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Document Loop|
    |Collection Reference|documentLoop|
    |Iteration Order|Asc|
    |Next Value Connector|[Assign_Related_Records](#assign_related_records)|
    |No More Values Connector|[Update_Collection](#update_collection)|
    
    
    ### Create_Association
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Associated_Contact__c|
    |Label|Create Association|
    |Store Output Automatically|✅|
    |Connector|[Get_Association](#get_association)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Account__c|Get_Account_For_Junction.Id|
    |Contact_Role__c|Plan Sponsor|
    |Contact__c|RelevantContact.Id|
    |Opportunity__c|RecentOpp.Id|
    
    
    
    
    ### Delete_Duplicate_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Delete|
    |Label|Delete Duplicate Account|
    |Input Reference|[Get_Account](#get_account)|
    |Connector|[Get_New_Association](#get_new_association)|
    
    
    ### Check_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Account|
    |Label|Check Account|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Update_DocuSign_Status](#update_docusign_status)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|RelatedAssociation.Account__c|
    
    
    
    
    ### Get_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Account|
    |Label|Get Account|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|- Id<br/>- Name<br/>- NumberOfEmployees<br/>|
    |Store Output Automatically|✅|
    |Connector|[Get_Duplicate_Account](#get_duplicate_account)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Converted_Lead.ConvertedAccountId|
    
    
    
    
    ### Get_Account_For_Junction
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Account|
    |Label|Get Account|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|- Id<br/>- Name<br/>|
    |Store Output Automatically|✅|
    |Connector|[Get_Opportunity](#get_opportunity)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|RelevantContact.AccountId|
    
    
    
    
    ### Get_Association
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Associated_Contact__c|
    |Label|Get Association|
    |Assign Null Values If No Records Found|✅|
    |Output Assignments|- assignToReference: RelatedAssociation.Account__c<br/>&nbsp;&nbsp;field: Account__c<br/>- assignToReference: RelatedAssociation.Contact__c<br/>&nbsp;&nbsp;field: Contact__c<br/>- assignToReference: RelatedAssociation.Id<br/>&nbsp;&nbsp;field: Id<br/>- assignToReference: RelatedAssociation.Implementation__c<br/>&nbsp;&nbsp;field: Implementation__c<br/>- assignToReference: RelatedAssociation.Opportunity__c<br/>&nbsp;&nbsp;field: Opportunity__c<br/>|
    |Connector|[Does_Association_Exist](#does_association_exist)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Contact__c| Equal To|RelevantContact.Id|
    
    
    
    
    ### Get_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Get Contact|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|RelevantContact|
    |Queried Fields|- Id<br/>- Email<br/>- AccountId<br/>|
    |Connector|[Does_Contact_Exist](#does_contact_exist)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Email| Equal To|Get_Docusign_Recipient_Status.dsfs__DocuSign_Recipient_Email__c|
    
    
    
    
    ### Get_Contact_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Get Contact|
    |Assign Null Values If No Records Found|✅|
    |Output Assignments|- assignToReference: RelevantContact.AccountId<br/>&nbsp;&nbsp;field: AccountId<br/>- assignToReference: RelevantContact.Email<br/>&nbsp;&nbsp;field: Email<br/>- assignToReference: RelevantContact.Name<br/>&nbsp;&nbsp;field: Full_Name__c<br/>- assignToReference: RelevantContact.Id<br/>&nbsp;&nbsp;field: Id<br/>|
    |Connector|[Does_Contact_Exist_0](#does_contact_exist_0)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Name| Equal To|Get_Docusign_Recipient_Status.Name|
    
    
    
    
    ### Get_Converted_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Get Converted Contact|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|- Id<br/>- AccountId<br/>|
    |Store Output Automatically|✅|
    |Connector|[Update_Contact](#update_contact)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Converted_Lead.ConvertedContactId|
    
    
    
    
    ### Get_Converted_Lead
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Lead|
    |Label|Get Converted Lead|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|- Id<br/>- ConvertedAccountId<br/>- ConvertedOpportunityId<br/>- ConvertedContactId<br/>|
    |Store Output Automatically|✅|
    |Connector|[Get_Account](#get_account)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Email| Equal To|Get_Docusign_Recipient_Status.dsfs__DocuSign_Recipient_Email__c|
    
    
    
    
    ### Get_Converted_Opp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Opportunity|
    |Label|Get Converted Opp|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|- Id<br/>- AccountId<br/>- RecordTypeId<br/>- Product_Type__c<br/>|
    |Store Output Automatically|✅|
    |Connector|[X401_k_or_Single_k](#x401_k_or_single_k)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Converted_Lead.ConvertedOpportunityId|
    
    
    
    
    ### Get_Docusign_Recipient_Status
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|dsfs__DocuSign_Recipient_Status__c|
    |Label|Get Docusign Recipient Status|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|- Id<br/>- dsfs__DocuSign_Recipient_Email__c<br/>- dsfs__Envelope_Id__c<br/>- Name<br/>|
    |Store Output Automatically|✅|
    |Connector|[Should_Recipient_Be_Excluded_0](#should_recipient_be_excluded_0)|
    
    
    #### Filters (logic: **1**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|dsfs__Parent_Status_Record__c| Equal To|recordId|
    
    
    
    
    ### Get_Docusign_Status_Doc
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|dsfs__DocuSign_Status__c|
    |Label|Get Docusign Status Doc|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|DocuSignStatus|
    |Queried Fields|- Id<br/>- dsfs__Subject__c<br/>- dsfs__Opportunity__c<br/>|
    |Connector|[Is_this_an_A4S](#is_this_an_a4s)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|dsfs__DocuSign_Envelope_ID__c| Equal To|Get_Docusign_Recipient_Status.dsfs__Envelope_Id__c|
    
    
    
    
    ### Get_Duplicate_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Account|
    |Label|Get Duplicate Account|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|ExistingAccount|
    |Queried Fields|- Id<br/>- Name<br/>|
    |Connector|[Get_Converted_Opp](#get_converted_opp)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Not Equal To|Get_Account.Id|
    |2|Name| Equal To|Get_Account.Name|
    
    
    
    
    ### Get_Lead
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Lead|
    |Label|Get Lead|
    |Assign Null Values If No Records Found|✅|
    |Output Assignments|- assignToReference: leadId<br/>&nbsp;&nbsp;field: Id<br/>- assignToReference: ownerId<br/>&nbsp;&nbsp;field: OwnerId<br/>|
    |Connector|[Does_Lead_Exist](#does_lead_exist)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Email| Equal To|Get_Docusign_Recipient_Status.dsfs__DocuSign_Recipient_Email__c|
    |2|IsConverted| Equal To|⬜|
    
    
    
    
    ### Get_Lead_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Lead|
    |Label|Get Lead|
    |Assign Null Values If No Records Found|✅|
    |Output Assignments|- assignToReference: leadId<br/>&nbsp;&nbsp;field: Id<br/>- assignToReference: ownerId<br/>&nbsp;&nbsp;field: OwnerId<br/>|
    |Connector|[Does_Lead_Exist_0](#does_lead_exist_0)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|IsConverted| Equal To|⬜|
    |2|Name| Equal To|Get_Docusign_Recipient_Status.Name|
    
    
    
    
    ### Get_New_Association
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Associated_Contact__c|
    |Label|Get New Association|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|- Id<br/>- Account__c<br/>|
    |Store Output Automatically|✅|
    |Connector|[Update_Association](#update_association)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Contact__c| Equal To|Get_Converted_Contact.Id|
    
    
    
    
    ### Get_Opportunity
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Opportunity|
    |Label|Get Opportunity|
    |Assign Null Values If No Records Found|✅|
    |Output Assignments|assignToReference: RecentOpp.Id<br/>field: Id<br/>|
    |Sort Field|CreatedDate|
    |Sort Order|Desc|
    |Connector|[Does_Opp_Exist](#does_opp_exist)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|AccountId| Equal To|Get_Account_For_Junction.Id|
    |2|StageName| Not Equal To|Closed Won|
    |3|StageName| Not Equal To|Closed Lost|
    
    
    
    
    ### Get_Opportunity_Owner
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Opportunity|
    |Label|Get Opportunity Owner|
    |Assign Null Values If No Records Found|⬜|
    |Output Assignments|- assignToReference: OppOwner.Id<br/>&nbsp;&nbsp;field: Id<br/>- assignToReference: OppOwner.OwnerId<br/>&nbsp;&nbsp;field: OwnerId<br/>- assignToReference: OppOwner.Service_Option__c<br/>&nbsp;&nbsp;field: Service_Option__c<br/>|
    |Connector|[Does_Opp_Owner_Exist](#does_opp_owner_exist)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|RelatedAssociation.Opportunity__c|
    
    
    
    
    ### Get_Related_Documents
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|dsfs__DocuSign_Status__c|
    |Label|Get Related Documents|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|documentLoop|
    |Queried Fields|Id|
    |Connector|[Null_Collection](#null_collection)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|dsfs__Subject__c| Contains|Check_Account.Name|
    
    
    
    
    ### Close_Opp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Opportunity|
    |Label|Close Opp|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|OppOwner.Id|
    |2|Service_Option__c| Equal To|Simply Retirement|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Agreement_for_Services_A4S__c|✅|
    |CloseDate|today|
    |Desired_Plan_Start_Date__c|today|
    |StageName|Closed Won|
    
    
    
    
    ### Update_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Account|
    |Input Reference|ExistingAccount|
    |Connector|[Update_Opp](#update_opp)|
    
    
    ### Update_Association
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Associated_Contact__c|
    |Label|Update Association|
    |Connector|[Get_Contact](#get_contact)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_New_Association.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Account__c|ExistingAccount.Id|
    
    
    
    
    ### Update_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Collection|
    |Input Reference|documentCollection|
    |Connector|[Close_Opp](#close_opp)|
    
    
    ### Update_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Contact|
    |Label|Update Contact|
    |Connector|[Delete_Duplicate_Account](#delete_duplicate_account)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Converted_Contact.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|ExistingAccount.Id|
    
    
    
    
    ### Update_DocuSign_Status
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|dsfs__DocuSign_Status__c|
    |Label|Update DocuSign Status|
    |Connector|[Update_Opp_Again](#update_opp_again)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|DocuSignStatus.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Implementation__c|RelatedAssociation.Implementation__c|
    |Opportunity_Owner__c|OppOwner.OwnerId|
    |dsfs__Company__c|RelatedAssociation.Account__c|
    |dsfs__Contact__c|RelevantContact.Id|
    |dsfs__Opportunity__c|RelatedAssociation.Opportunity__c|
    
    
    
    
    ### Update_Opp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Opportunity|
    |Label|Update Opp|
    |Connector|[Get_Converted_Contact](#get_converted_contact)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Converted_Opp.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|ExistingAccount.Id|
    
    
    
    
    ### Update_Opp_Again
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Opportunity|
    |Label|Update Opp Again|
    |Connector|[Get_Related_Documents](#get_related_documents)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|OppOwner.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |A4S_Document__c|DocuSignStatus.Id|
    
    
    
    
    ### X401_k_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Opportunity|
    |Label|401(k)|
    |Connector|[Does_Duplicate_Exist](#does_duplicate_exist)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Converted_Opp.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |RecordTypeId|012000000000myoAAA|
    
    
    
    
    ### XSingle_k_Check_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Opportunity|
    |Label|Single(k)|
    |Connector|[Does_Duplicate_Exist](#does_duplicate_exist)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Converted_Opp.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |RecordTypeId|012000000000mxgAAA|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

