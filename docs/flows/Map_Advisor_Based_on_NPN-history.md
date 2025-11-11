# Map_Advisor_Based_on_NPN history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Map_Advisor_Based_on_NPN-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>"]):::startClass
    click START "#general-information" "93996335"
    
    Convert_Lead("⚙️ <em></em><br/>Convert Lead"):::actionCalls
    click Convert_Lead "#convert_lead" "681437746"
    
    Add_to_Collection[\"🟰 <em></em><br/>Add to Collection"/]:::assignments
    click Add_to_Collection "#add_to_collection" "1651475311"
    
    Assign_New_BU[\"🟰 <em></em><br/>Assign New BU"/]:::assignments
    click Assign_New_BU "#assign_new_bu" "3927885708"
    
    Assign_to_Collection[\"🟰 <em></em><br/>Assign to Collection"/]:::assignments
    click Assign_to_Collection "#assign_to_collection" "1842336708"
    
    Assign_to_Existing_Account[\"🟰 <em></em><br/>Assign to Existing Account"/]:::assignments
    click Assign_to_Existing_Account "#assign_to_existing_account" "1134028865"
    
    Assign_Variables[\"🟰 <em></em><br/>Assign Variables"/]:::assignments
    click Assign_Variables "#assign_variables" "543326971"
    
    Advisor_Employer_or_TPA{"🔀 <em></em><br/>Advisor, Employer or TPA?"}:::decisions
    click Advisor_Employer_or_TPA "#advisor_employer_or_tpa" "715587531"
    
    Does_Advisor_Exist{"🔀 <em></em><br/>Does Advisor Exist?"}:::decisions
    click Does_Advisor_Exist "#does_advisor_exist" "4268867757"
    
    Does_Advisor_Exist_0{"🔀 <em></em><br/>Does Advisor Exist?"}:::decisions
    click Does_Advisor_Exist_0 "#does_advisor_exist_0" "920477231"
    
    Does_Advisor_Exist_0_0{"🔀 <em></em><br/>Does Advisor Exist?"}:::decisions
    click Does_Advisor_Exist_0_0 "#does_advisor_exist_0_0" "4184186101"
    
    Does_Advisor_Exist_0_0_0{"🔀 <em></em><br/>Does Advisor Exist?"}:::decisions
    click Does_Advisor_Exist_0_0_0 "#does_advisor_exist_0_0_0" "496107332"
    
    Does_Advisor_Exist_0_0_0_0{"🔀 <em></em><br/>Does Advisor Exist?"}:::decisions
    click Does_Advisor_Exist_0_0_0_0 "#does_advisor_exist_0_0_0_0" "2918523154"
    
    Existing_Account_Present{"🔀 <em></em><br/>Existing Account Present"}:::decisions
    click Existing_Account_Present "#existing_account_present" "615574691"
    
    Existing_Account_Present_0{"🔀 <em></em><br/>Existing Account Present"}:::decisions
    click Existing_Account_Present_0 "#existing_account_present_0" "794283784"
    
    Leads_To_Update{"🔀 <em></em><br/>Leads To Update"}:::decisions
    click Leads_To_Update "#leads_to_update" "1111753346"
    
    NPN_Present{"🔀 <em></em><br/>NPN Present?"}:::decisions
    click NPN_Present "#npn_present" "1738596336"
    
    NPN_Present_0{"🔀 <em></em><br/>NPN Present?"}:::decisions
    click NPN_Present_0 "#npn_present_0" "1686079880"
    
    Contact_Loop{{"🔁 <em></em><br/>Contact Loop"}}:::loops
    click Contact_Loop "#contact_loop" "2833826499"
    
    Lead_Loop{{"🔁 <em></em><br/>Lead Loop"}}:::loops
    click Lead_Loop "#lead_loop" "991320614"
    
    Create_Task_0[("➕ <em></em><br/>Create Task")]:::recordCreates
    click Create_Task_0 "#create_task_0" "312809265"
    
    Delete_Duplicate_Advisor_Lead[("🗑️ <em></em><br/>Delete Duplicate Advisor Lead")]:::recordDeletes
    click Delete_Duplicate_Advisor_Lead "#delete_duplicate_advisor_lead" "2471818335"
    
    Delete_New_Account[("🗑️ <em></em><br/>Delete New Account")]:::recordDeletes
    click Delete_New_Account "#delete_new_account" "524849126"
    
    Get_Account[("🔍 <em></em><br/>Get Account")]:::recordLookups
    click Get_Account "#get_account" "281036402"
    
    Get_Advisor[("🔍 <em></em><br/>Get Advisor")]:::recordLookups
    click Get_Advisor "#get_advisor" "2103633867"
    
    Get_Advisor_0[("🔍 <em></em><br/>Get Advisor")]:::recordLookups
    click Get_Advisor_0 "#get_advisor_0" "3608184267"
    
    Get_Advisor_0_0[("🔍 <em></em><br/>Get Advisor")]:::recordLookups
    click Get_Advisor_0_0 "#get_advisor_0_0" "1303388359"
    
    Get_Advisor_Outside_BU[("🔍 <em></em><br/>Get Advisor Outside BU")]:::recordLookups
    click Get_Advisor_Outside_BU "#get_advisor_outside_bu" "3983896257"
    
    Get_Advisor_Outside_BU_0[("🔍 <em></em><br/>Get Advisor Outside BU")]:::recordLookups
    click Get_Advisor_Outside_BU_0 "#get_advisor_outside_bu_0" "673851770"
    
    Get_Contact[("🔍 <em></em><br/>Get Contact")]:::recordLookups
    click Get_Contact "#get_contact" "1510477698"
    
    Get_Lead[("🔍 <em></em><br/>Get Lead")]:::recordLookups
    click Get_Lead "#get_lead" "1165863963"
    
    Get_Leads_Missing_Referral_Info[("🔍 <em></em><br/>Get Leads Missing Referral Info")]:::recordLookups
    click Get_Leads_Missing_Referral_Info "#get_leads_missing_referral_info" "2188677513"
    
    Get_New_Account[("🔍 <em></em><br/>Get New Account")]:::recordLookups
    click Get_New_Account "#get_new_account" "154771890"
    
    Get_New_Contact[("🔍 <em></em><br/>Get New Contact")]:::recordLookups
    click Get_New_Contact "#get_new_contact" "3074369013"
    
    Update_Advisor[("🛠️ <em></em><br/>Update Advisor")]:::recordUpdates
    click Update_Advisor "#update_advisor" "1976688216"
    
    Update_Advisor_0[("🛠️ <em></em><br/>Update Advisor")]:::recordUpdates
    click Update_Advisor_0 "#update_advisor_0" "1711284386"
    
    Update_Collection[("🛠️ <em></em><br/>Update Collection")]:::recordUpdates
    click Update_Collection "#update_collection" "2814724820"
    
    Update_Contacts[("🛠️ <em></em><br/>Update Contacts")]:::recordUpdates
    click Update_Contacts "#update_contacts" "2979203660"
    
    Update_Lead[("🛠️ <em></em><br/>Update Lead")]:::recordUpdates
    click Update_Lead "#update_lead" "893060639"
    
    Convert_Lead --> Get_Account
    Add_to_Collection --> Lead_Loop
    Assign_New_BU --> Update_Advisor_0
    Assign_to_Collection --> Contact_Loop
    Assign_to_Existing_Account --> Assign_to_Collection
    Assign_Variables --> Add_to_Collection
    Advisor_Employer_or_TPA --> |"Advisor"| NPN_Present
    Advisor_Employer_or_TPA --> |"TPA"| NPN_Present
    Advisor_Employer_or_TPA --> |"Employer"| Get_Advisor
    Advisor_Employer_or_TPA --> |"N/A"| END_Advisor_Employer_or_TPA
    Does_Advisor_Exist --> |"Yes"| Update_Lead
    Does_Advisor_Exist --> |"No"| Get_Advisor_Outside_BU
    Does_Advisor_Exist_0 --> |"Yes"| Assign_New_BU
    Does_Advisor_Exist_0 --> |"No"| END_Does_Advisor_Exist_0
    Does_Advisor_Exist_0_0 --> |"Yes"| Update_Advisor
    Does_Advisor_Exist_0_0 --> |"No"| Get_Advisor_0_0
    Does_Advisor_Exist_0_0_0 --> |"Yes"| Update_Advisor
    Does_Advisor_Exist_0_0_0 --> |"No"| Convert_Lead
    Does_Advisor_Exist_0_0_0_0 --> |"Yes"| Update_Advisor
    Does_Advisor_Exist_0_0_0_0 --> |"No"| NPN_Present_0
    Existing_Account_Present --> |"Existing Account Found"| Get_New_Account
    Existing_Account_Present --> |"Default Outcome"| Get_New_Contact
    Existing_Account_Present_0 --> |"New Account Found"| Get_Contact
    Existing_Account_Present_0 --> |"Default Outcome"| END_Existing_Account_Present_0
    Leads_To_Update --> |"Leads Found"| Lead_Loop
    Leads_To_Update --> |"Default Outcome"| END_Leads_To_Update
    NPN_Present --> |"Yes"| Get_Advisor_0
    NPN_Present --> |"No"| Get_Advisor_0_0
    NPN_Present_0 --> |"Yes"| Get_Advisor_Outside_BU_0
    NPN_Present_0 --> |"No"| Convert_Lead
    Contact_Loop --> |"For Each"|Assign_to_Existing_Account
    Contact_Loop ---> |"After Last"|Update_Contacts
    Lead_Loop --> |"For Each"|Assign_Variables
    Lead_Loop ---> |"After Last"|Update_Collection
    Create_Task_0 --> END_Create_Task_0
    Delete_Duplicate_Advisor_Lead --> END_Delete_Duplicate_Advisor_Lead
    Delete_New_Account --> Get_New_Contact
    Get_Account --> Existing_Account_Present
    Get_Advisor --> Does_Advisor_Exist
    Get_Advisor_0 --> Does_Advisor_Exist_0_0
    Get_Advisor_0_0 --> Does_Advisor_Exist_0_0_0_0
    Get_Advisor_Outside_BU --> Does_Advisor_Exist_0
    Get_Advisor_Outside_BU_0 --> Does_Advisor_Exist_0_0_0
    Get_Contact --> Contact_Loop
    Get_Lead --> Advisor_Employer_or_TPA
    Get_Leads_Missing_Referral_Info --> Leads_To_Update
    Get_New_Account --> Existing_Account_Present_0
    Get_New_Contact --> Get_Leads_Missing_Referral_Info
    Update_Advisor --> Delete_Duplicate_Advisor_Lead
    Update_Advisor_0 --> Update_Lead
    Update_Collection --> END_Update_Collection
    Update_Contacts --> Delete_New_Account
    Update_Lead --> Create_Task_0
    START -->  Get_Lead
    END_Advisor_Employer_or_TPA(( END )):::endClass
    END_Does_Advisor_Exist_0(( END )):::endClass
    END_Existing_Account_Present_0(( END )):::endClass
    END_Leads_To_Update(( END )):::endClass
    END_Create_Task_0(( END )):::endClass
    END_Delete_Duplicate_Advisor_Lead(( END )):::endClass
    END_Update_Collection(( END )):::endClass
    
    
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
    |Label|Lead | Process | Link Advisor to Client|
    |Status|Active|
    |Description|When a new Simply Lead is created, assess whether to Convert Advisor, or Link Advisor to Employer Lead. Removed NPN Without Advisor email alert from Employer Lead path.|
    |Environments|Default|
    |Interview Label|Map Advisor Based on NPN {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Lead](#get_lead)|
    |Next Node|[Get_Lead](#get_lead)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |Advisor|SObject|⬜|✅|✅|Contact|<!-- -->|
    |contactCollection|SObject|✅|✅|⬜|Contact|<!-- -->|
    |existingAccount|SObject|⬜|✅|⬜|Account|<!-- -->|
    |leadCollection|SObject|✅|✅|⬜|Lead|<!-- -->|
    |newAccount|SObject|⬜|✅|⬜|Account|<!-- -->|
    |newContact|SObject|⬜|✅|⬜|Contact|<!-- -->|
    |recordId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    |refLeads|SObject|✅|✅|⬜|Lead|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |addOne|Number|+ 1|<!-- -->|
    |OneMinuteLater|DateTime|NOW()+ (1/1440)|<!-- -->|
    |today|Date|TODAY()|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Convert_Lead
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Convert Lead|
    |Action Type|Apex|
    |Action Name|[AutoConvertLeadsNoOpp](../apex/AutoConvertLeadsNoOpp.md)|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|AutoConvertLeadsNoOpp|
    | Lead Ids (input)|Get_Lead.Id|
    |Connector|[Get_Account](#get_account)|
    
    
    ### Add_to_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add to Collection|
    |Connector|[Lead_Loop](#lead_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |leadCollection| Add|[Lead_Loop](#lead_loop)|
    
    
    
    
    ### Assign_New_BU
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign New BU|
    |Connector|[Update_Advisor_0](#update_advisor_0)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Advisor.Business_Unit__c| Assign|Get_Lead.Business_Unit__c|
    
    
    
    
    ### Assign_to_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign to Collection|
    |Connector|[Contact_Loop](#contact_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |contactCollection| Add|[Contact_Loop](#contact_loop)|
    
    
    
    
    ### Assign_to_Existing_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign to Existing Account|
    |Connector|[Assign_to_Collection](#assign_to_collection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Contact_Loop.AccountId| Assign|existingAccount.Id|
    
    
    
    
    ### Assign_Variables
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Variables|
    |Connector|[Add_to_Collection](#add_to_collection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Lead_Loop.Associated_Contact__c| Assign|newContact.Id|
    |Lead_Loop.Associated_Contact_Role__c| Assign|Financial Advisor|
    |Lead_Loop.Associated_Partner__c| Assign|newContact.AccountId|
    |Lead_Loop.Associated_Partner_Role__c| Assign|Financial Advisory Firm|
    
    
    
    
    ### Advisor_Employer_or_TPA
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Advisor, Employer or TPA?|
    |Default Connector Label|N/A|
    
    
    #### Rule AdvisorType (Advisor)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[NPN_Present](#npn_present)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Lead.Lead_Type__c| Equal To|Advisor|
    
    
    
    
    #### Rule TPA (TPA)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[NPN_Present](#npn_present)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Lead.Lead_Type__c| Equal To|TPA|
    
    
    
    
    #### Rule Employer (Employer)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Advisor](#get_advisor)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Lead.Lead_Type__c| Equal To|Employer|
    |2|Get_Lead.Referrer_s_Email__c| Is Null|⬜|
    
    
    
    
    ### Does_Advisor_Exist
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Does Advisor Exist?|
    |Default Connector|[Get_Advisor_Outside_BU](#get_advisor_outside_bu)|
    |Default Connector Label|No|
    
    
    #### Rule YesExists (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Lead](#update_lead)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Advisor.Id| Is Null|⬜|
    
    
    
    
    ### Does_Advisor_Exist_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Does Advisor Exist?|
    |Default Connector Label|No|
    
    
    #### Rule YesExists_0 (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_New_BU](#assign_new_bu)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Advisor.Id| Is Null|⬜|
    
    
    
    
    ### Does_Advisor_Exist_0_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Does Advisor Exist?|
    |Default Connector|[Get_Advisor_0_0](#get_advisor_0_0)|
    |Default Connector Label|No|
    
    
    #### Rule YesExists_0_0 (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Advisor](#update_advisor)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Advisor.Id| Is Null|⬜|
    
    
    
    
    ### Does_Advisor_Exist_0_0_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Does Advisor Exist?|
    |Default Connector|[Convert_Lead](#convert_lead)|
    |Default Connector Label|No|
    
    
    #### Rule YesExists_0_0_0 (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Advisor](#update_advisor)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Advisor.Id| Is Null|⬜|
    
    
    
    
    #### Rule NoConvert (Don't Convert)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Advisor.Email| Contains|mailinator|
    |2|Advisor.Id| Is Null|✅|
    
    
    
    
    ### Does_Advisor_Exist_0_0_0_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Does Advisor Exist?|
    |Default Connector|[NPN_Present_0](#npn_present_0)|
    |Default Connector Label|No|
    
    
    #### Rule YesExists_0_0_0_0 (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Advisor](#update_advisor)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Advisor.Id| Is Null|⬜|
    
    
    
    
    ### Existing_Account_Present
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Existing Account Present|
    |Default Connector|[Get_New_Contact](#get_new_contact)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Existing_Account_Found (Existing Account Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_New_Account](#get_new_account)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|existingAccount.Id| Is Null|⬜|
    
    
    
    
    ### Existing_Account_Present_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Existing Account Present|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule New_Account_Found (New Account Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Contact](#get_contact)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|newAccount.Id| Is Null|⬜|
    
    
    
    
    ### Leads_To_Update
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Leads To Update|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Leads_Found (Leads Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Lead_Loop](#lead_loop)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|refLeads| Is Null|⬜|
    
    
    
    
    ### NPN_Present
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|NPN Present?|
    |Default Connector|[Get_Advisor_0_0](#get_advisor_0_0)|
    |Default Connector Label|No|
    
    
    #### Rule YesNPN (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Advisor_0](#get_advisor_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Lead.Advisor_NPN__c| Is Null|⬜|
    
    
    
    
    ### NPN_Present_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|NPN Present?|
    |Default Connector|[Convert_Lead](#convert_lead)|
    |Default Connector Label|No|
    
    
    #### Rule YesNPN_0 (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Advisor_Outside_BU_0](#get_advisor_outside_bu_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Lead.Advisor_NPN__c| Is Null|⬜|
    
    
    
    
    ### Contact_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Contact Loop|
    |Collection Reference|[Get_Contact](#get_contact)|
    |Iteration Order|Asc|
    |Next Value Connector|[Assign_to_Existing_Account](#assign_to_existing_account)|
    |No More Values Connector|[Update_Contacts](#update_contacts)|
    
    
    ### Lead_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Lead Loop|
    |Collection Reference|refLeads|
    |Iteration Order|Asc|
    |Next Value Connector|[Assign_Variables](#assign_variables)|
    |No More Values Connector|[Update_Collection](#update_collection)|
    
    
    ### Create_Task_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Task|
    |Label|Create Task|
    |Store Output Automatically|✅|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |ActivityDate|today|
    |OwnerId|Advisor.OwnerId|
    |Subject|New Simply Employer Lead - Reach Out to Advisor|
    |WhoId|Advisor.Id|
    
    
    
    
    ### Delete_Duplicate_Advisor_Lead
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Delete|
    |Label|Delete Duplicate Advisor Lead|
    |Input Reference|[Get_Lead](#get_lead)|
    
    
    ### Delete_New_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Delete|
    |Label|Delete New Account|
    |Input Reference|newAccount|
    |Connector|[Get_New_Contact](#get_new_contact)|
    
    
    ### Get_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Account|
    |Label|Get Account|
    |Assign Null Values If No Records Found|✅|
    |Output Assignments|- assignToReference: existingAccount.Business_Unit__c<br/>&nbsp;&nbsp;field: Business_Unit__c<br/>- assignToReference: existingAccount.Id<br/>&nbsp;&nbsp;field: Id<br/>- assignToReference: existingAccount.Name<br/>&nbsp;&nbsp;field: Name<br/>|
    |Connector|[Existing_Account_Present](#existing_account_present)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Name| Equal To|Get_Lead.Advisory_Firm__c|
    |2|Business_Unit__c| Equal To|Get_Lead.Business_Unit__c|
    |3|BillingStateCode| Equal To|Get_Lead.StateCode|
    |4|CreatedDate| Less Than|Get_Lead.CreatedDate|
    
    
    
    
    ### Get_Advisor
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Get Advisor|
    |Assign Null Values If No Records Found|✅|
    |Output Assignments|- assignToReference: Advisor.AccountId<br/>&nbsp;&nbsp;field: AccountId<br/>- assignToReference: Advisor.Business_Unit__c<br/>&nbsp;&nbsp;field: Business_Unit__c<br/>- assignToReference: Advisor.Credentialed_Advisor__c<br/>&nbsp;&nbsp;field: Credentialed_Advisor__c<br/>- assignToReference: Advisor.Id<br/>&nbsp;&nbsp;field: Id<br/>- assignToReference: Advisor.OwnerId<br/>&nbsp;&nbsp;field: OwnerId<br/>|
    |Connector|[Does_Advisor_Exist](#does_advisor_exist)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Business_Unit__c| Equal To|Get_Lead.Business_Unit__c|
    |2|Email| Equal To|Get_Lead.Referrer_s_Email__c|
    
    
    
    
    ### Get_Advisor_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Get Advisor|
    |Assign Null Values If No Records Found|✅|
    |Output Assignments|- assignToReference: Advisor.Business_Unit__c<br/>&nbsp;&nbsp;field: Business_Unit__c<br/>- assignToReference: Advisor.Email<br/>&nbsp;&nbsp;field: Email<br/>- assignToReference: Advisor.Id<br/>&nbsp;&nbsp;field: Id<br/>|
    |Connector|[Does_Advisor_Exist_0_0](#does_advisor_exist_0_0)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Business_Unit__c| Equal To|Get_Lead.Business_Unit__c|
    |2|NPN_Number__c| Equal To|Get_Lead.Advisor_NPN__c|
    |3|Email| Equal To|Get_Lead.Email|
    
    
    
    
    ### Get_Advisor_0_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Get Advisor|
    |Assign Null Values If No Records Found|✅|
    |Output Assignments|- assignToReference: Advisor.Business_Unit__c<br/>&nbsp;&nbsp;field: Business_Unit__c<br/>- assignToReference: Advisor.Email<br/>&nbsp;&nbsp;field: Email<br/>- assignToReference: Advisor.Id<br/>&nbsp;&nbsp;field: Id<br/>|
    |Connector|[Does_Advisor_Exist_0_0_0_0](#does_advisor_exist_0_0_0_0)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Business_Unit__c| Equal To|Get_Lead.Business_Unit__c|
    |2|Email| Equal To|Get_Lead.Email|
    
    
    
    
    ### Get_Advisor_Outside_BU
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Get Advisor Outside BU|
    |Assign Null Values If No Records Found|✅|
    |Output Assignments|- assignToReference: Advisor.AccountId<br/>&nbsp;&nbsp;field: AccountId<br/>- assignToReference: Advisor.Business_Unit__c<br/>&nbsp;&nbsp;field: Business_Unit__c<br/>- assignToReference: Advisor.Credentialed_Advisor__c<br/>&nbsp;&nbsp;field: Credentialed_Advisor__c<br/>- assignToReference: Advisor.Id<br/>&nbsp;&nbsp;field: Id<br/>- assignToReference: Advisor.OwnerId<br/>&nbsp;&nbsp;field: OwnerId<br/>|
    |Connector|[Does_Advisor_Exist_0](#does_advisor_exist_0)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Email| Equal To|Get_Lead.Referrer_s_Email__c|
    
    
    
    
    ### Get_Advisor_Outside_BU_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Get Advisor Outside BU|
    |Assign Null Values If No Records Found|✅|
    |Output Assignments|- assignToReference: Advisor.Business_Unit__c<br/>&nbsp;&nbsp;field: Business_Unit__c<br/>- assignToReference: Advisor.Id<br/>&nbsp;&nbsp;field: Id<br/>|
    |Connector|[Does_Advisor_Exist_0_0_0](#does_advisor_exist_0_0_0)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|NPN_Number__c| Equal To|Get_Lead.Advisor_NPN__c|
    
    
    
    
    ### Get_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Get Contact|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Store Output Automatically|✅|
    |Connector|[Contact_Loop](#contact_loop)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|AccountId| Equal To|newAccount.Id|
    
    
    
    
    ### Get_Lead
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Lead|
    |Label|Get Lead|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Advisor_Employer_or_TPA](#advisor_employer_or_tpa)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Get_Leads_Missing_Referral_Info
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Lead|
    |Label|Get Leads Missing Referral Info|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|refLeads|
    |Queried Fields|Id|
    |Connector|[Leads_To_Update](#leads_to_update)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Referrer_s_Email__c| Equal To|newContact.Email|
    |2|Associated_Contact__c| Is Null|<!-- -->|
    |3|Referrer_s_Email__c| Is Null|<!-- -->|
    
    
    
    
    ### Get_New_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Account|
    |Label|Get New Account|
    |Assign Null Values If No Records Found|✅|
    |Output Assignments|assignToReference: newAccount.Id<br/>field: Id<br/>|
    |Connector|[Existing_Account_Present_0](#existing_account_present_0)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Name| Equal To|existingAccount.Name|
    |2|Id| Not Equal To|existingAccount.Id|
    |3|Business_Unit__c| Equal To|existingAccount.Business_Unit__c|
    |4|CreatedDate| Equal To|today|
    
    
    
    
    ### Get_New_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Get New Contact|
    |Assign Null Values If No Records Found|✅|
    |Output Assignments|- assignToReference: newContact.AccountId<br/>&nbsp;&nbsp;field: AccountId<br/>- assignToReference: newContact.Email<br/>&nbsp;&nbsp;field: Email<br/>- assignToReference: newContact.Id<br/>&nbsp;&nbsp;field: Id<br/>|
    |Connector|[Get_Leads_Missing_Referral_Info](#get_leads_missing_referral_info)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Email| Equal To|Get_Lead.Email|
    |2|Role__c| Equal To|Advisor|
    
    
    
    
    ### Update_Advisor
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Contact|
    |Label|Update Advisor|
    |Connector|[Delete_Duplicate_Advisor_Lead](#delete_duplicate_advisor_lead)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Advisor.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Business_Unit__c|Get_Lead.Business_Unit__c|
    |Email|Get_Lead.Email|
    |FirstName|Get_Lead.FirstName|
    |LastName|Get_Lead.LastName|
    |MailingCountry|United States|
    |MailingCountryCode|US|
    |MailingPostalCode|Get_Lead.PostalCode|
    |MailingStateCode|Get_Lead.StateCode|
    |NPN_Number__c|Get_Lead.Advisor_NPN__c|
    |Phone|Get_Lead.Phone|
    |Plan_ID__c|Get_Lead.Plan_ID__c|
    
    
    
    
    ### Update_Advisor_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Advisor|
    |Input Reference|Advisor|
    |Connector|[Update_Lead](#update_lead)|
    
    
    ### Update_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Collection|
    |Input Reference|leadCollection|
    
    
    ### Update_Contacts
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Contacts|
    |Input Reference|contactCollection|
    |Connector|[Delete_New_Account](#delete_new_account)|
    
    
    ### Update_Lead
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Lead|
    |Label|Update Lead|
    |Connector|[Create_Task_0](#create_task_0)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Associated_Contact_Role__c|Financial Advisor|
    |Associated_Contact__c|Advisor.Id|
    |Associated_Partner_Role__c|Financial Advisory Firm|
    |Associated_Partner__c|Advisor.AccountId|
    |Credentialed_Advisor__c|Advisor.Credentialed_Advisor__c|
    |OwnerId|Advisor.OwnerId|
    |Status|Assigned|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

