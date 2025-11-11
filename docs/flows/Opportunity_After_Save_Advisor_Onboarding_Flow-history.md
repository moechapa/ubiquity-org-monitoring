# Opportunity_After_Save_Advisor_Onboarding_Flow history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Opportunity_After_Save_Advisor_Onboarding_Flow-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "1056711960"
    
    Add_to_Update_Collection[\"🟰 <em></em><br/>Add to Update Collection"/]:::assignments
    click Add_to_Update_Collection "#add_to_update_collection" "3777425757"
    
    Assign_Contact_Id[\"🟰 <em></em><br/>Assign Contact Id"/]:::assignments
    click Assign_Contact_Id "#assign_contact_id" "1011531239"
    
    Assign_Onboarding_Status[\"🟰 <em></em><br/>Assign Onboarding Status"/]:::assignments
    click Assign_Onboarding_Status "#assign_onboarding_status" "1807665550"
    
    Assign_to_Collection_of_Contact_Ids[\"🟰 <em></em><br/>Assign to Collection of Contact Ids"/]:::assignments
    click Assign_to_Collection_of_Contact_Ids "#assign_to_collection_of_contact_ids" "1387902342"
    
    ACs_Found{"🔀 <em></em><br/>ACs Found?"}:::decisions
    click ACs_Found "#acs_found" "2357320194"
    
    Contacts_Found{"🔀 <em></em><br/>Contacts Found"}:::decisions
    click Contacts_Found "#contacts_found" "4014801701"
    
    Onboarding_Status_Check{"🔀 <em></em><br/>Onboarding Status Check?"}:::decisions
    click Onboarding_Status_Check "#onboarding_status_check" "1869643122"
    
    AC_Loop{{"🔁 <em></em><br/>AC Loop"}}:::loops
    click AC_Loop "#ac_loop" "2764819618"
    
    Contact_Loop{{"🔁 <em></em><br/>Contact Loop"}}:::loops
    click Contact_Loop "#contact_loop" "457362014"
    
    Get_ACs[("🔍 <em></em><br/>Get ACs")]:::recordLookups
    click Get_ACs "#get_acs" "308989898"
    
    Get_Contacts[("🔍 <em></em><br/>Get Contacts")]:::recordLookups
    click Get_Contacts "#get_contacts" "1166884915"
    
    Update_Advisor_Contacts[("🛠️ <em></em><br/>Update Advisor Contacts")]:::recordUpdates
    click Update_Advisor_Contacts "#update_advisor_contacts" "502334436"
    
    Add_to_Update_Collection --> Contact_Loop
    Assign_Contact_Id --> Assign_to_Collection_of_Contact_Ids
    Assign_Onboarding_Status --> Add_to_Update_Collection
    Assign_to_Collection_of_Contact_Ids --> AC_Loop
    ACs_Found --> |"Yes, Found"| AC_Loop
    ACs_Found --> |"Default Outcome"| END_ACs_Found
    Contacts_Found --> |"Yes, Contacts Found"| Contact_Loop
    Contacts_Found --> |"Default Outcome"| END_Contacts_Found
    Onboarding_Status_Check --> |"Not in Onboarding"| Assign_Onboarding_Status
    Onboarding_Status_Check --> |"Default Outcome"| Contact_Loop
    AC_Loop --> |"For Each"|Assign_Contact_Id
    AC_Loop ---> |"After Last"|Get_Contacts
    Contact_Loop --> |"For Each"|Onboarding_Status_Check
    Contact_Loop ---> |"After Last"|Update_Advisor_Contacts
    Get_ACs --> ACs_Found
    Get_Contacts --> Contacts_Found
    Update_Advisor_Contacts --> END_Update_Advisor_Contacts
    START -->  Get_ACs
    END_ACs_Found(( END )):::endClass
    END_Contacts_Found(( END )):::endClass
    END_Update_Advisor_Contacts(( END )):::endClass
    
    
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
    |Object|Opportunity|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Update|
    |Label|Opportunity | After Save | Advisor Onboarding Flow|
    |Status|⚠️ Draft|
    |Does Require Record Changed To Meet Criteria|✅|
    |Environments|Default|
    |Interview Label|Opportunity | After Save | Advisor Onboarding Flow {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_ACs](#get_acs)|
    |Next Node|[Get_ACs](#get_acs)|
    
    
    #### Filters (logic: **(1 OR 2 OR 3) AND 4**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Product_Type__c| Equal To|401(k)|
    |2|Product_Type__c| Equal To|PEP|
    |3|Service_Option__c| Equal To|Single(k) Plus|
    |4|StageName| Equal To|Closed Won|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |acsToCheck|SObject|✅|✅|⬜|Associated_Contact__c|<!-- -->|
    |contactId|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |contactIds|String|✅|✅|⬜|<!-- -->|<!-- -->|
    |contactsToCheck|SObject|✅|✅|⬜|Contact|<!-- -->|
    |contactsToUpdate|SObject|✅|✅|⬜|Contact|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Add_to_Update_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add to Update Collection|
    |Connector|[Contact_Loop](#contact_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |contactsToUpdate| Add|[Contact_Loop](#contact_loop)|
    
    
    
    
    ### Assign_Contact_Id
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Contact Id|
    |Connector|[Assign_to_Collection_of_Contact_Ids](#assign_to_collection_of_contact_ids)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |contactId| Assign|AC_Loop.Contact__c|
    
    
    
    
    ### Assign_Onboarding_Status
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Onboarding Status|
    |Connector|[Add_to_Update_Collection](#add_to_update_collection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Contact_Loop.Advisor_Onboarding_Status__c| Assign|In Progress|
    
    
    
    
    ### Assign_to_Collection_of_Contact_Ids
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign to Collection of Contact Ids|
    |Connector|[AC_Loop](#ac_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |contactIds| Add|contactId|
    
    
    
    
    ### ACs_Found
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|ACs Found?|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes_Found (Yes, Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[AC_Loop](#ac_loop)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|acsToCheck| Is Empty|⬜|
    
    
    
    
    ### Contacts_Found
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Contacts Found|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes_Contacts_Found (Yes, Contacts Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Contact_Loop](#contact_loop)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|contactsToCheck| Is Empty|⬜|
    
    
    
    
    ### Onboarding_Status_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Onboarding Status Check?|
    |Default Connector|[Contact_Loop](#contact_loop)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Not_in_Onboarding (Not in Onboarding)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Onboarding_Status](#assign_onboarding_status)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Contact_Loop.Advisor_Onboarding_Status__c| Not Equal To|In Progress|
    |2|Contact_Loop.Advisor_Onboarding_Status__c| Not Equal To|Onboarding Complete|
    |3|Contact_Loop.Advisor_Onboarding_Status__c| Not Equal To|Opt Out|
    
    
    
    
    ### AC_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|AC Loop|
    |Collection Reference|acsToCheck|
    |Iteration Order|Asc|
    |Next Value Connector|[Assign_Contact_Id](#assign_contact_id)|
    |No More Values Connector|[Get_Contacts](#get_contacts)|
    
    
    ### Contact_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Contact Loop|
    |Collection Reference|contactsToCheck|
    |Iteration Order|Asc|
    |Next Value Connector|[Onboarding_Status_Check](#onboarding_status_check)|
    |No More Values Connector|[Update_Advisor_Contacts](#update_advisor_contacts)|
    
    
    ### Get_ACs
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Associated_Contact__c|
    |Label|Get ACs|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|acsToCheck|
    |Queried Fields|- Id<br/>- Contact_Role__c<br/>- Contact__c<br/>|
    |Connector|[ACs_Found](#acs_found)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Opportunity__c| Equal To|$Record.Id|
    |2|Contact_Role__c| Equal To|Financial Advisor|
    
    
    
    
    ### Get_Contacts
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Get Contacts|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|contactsToCheck|
    |Queried Fields|- Id<br/>- Advisor_Onboarding_Status__c<br/>|
    |Connector|[Contacts_Found](#contacts_found)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| In|contactIds|
    
    
    
    
    ### Update_Advisor_Contacts
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Advisor Contacts|
    |Input Reference|contactsToUpdate|
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

