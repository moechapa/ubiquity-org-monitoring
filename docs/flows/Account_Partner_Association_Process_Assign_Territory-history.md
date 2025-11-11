# Account_Partner_Association_Process_Assign_Territory history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Account_Partner_Association_Process_Assign_Territory-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>"]):::startClass
    click START "#general-information" "520931586"
    
    Add_Territory[\"🟰 <em></em><br/>Add Territory"/]:::assignments
    click Add_Territory "#add_territory" "3380432366"
    
    Add_Territory_0[\"🟰 <em></em><br/>Add Territory"/]:::assignments
    click Add_Territory_0 "#add_territory_0" "3409517227"
    
    Add_to_Collections[\"🟰 <em></em><br/>Add to Collections"/]:::assignments
    click Add_to_Collections "#add_to_collections" "2252736664"
    
    Add_to_Collections_0[\"🟰 <em></em><br/>Add to Collections"/]:::assignments
    click Add_to_Collections_0 "#add_to_collections_0" "1251169117"
    
    Contact_Territory_Assignment[\"🟰 <em></em><br/>Contact Territory Assignment"/]:::assignments
    click Contact_Territory_Assignment "#contact_territory_assignment" "1406950046"
    
    Contact_Territory_Assignment_0[\"🟰 <em></em><br/>Contact Territory Assignment"/]:::assignments
    click Contact_Territory_Assignment_0 "#contact_territory_assignment_0" "2128733527"
    
    Contacts_Exist{"🔀 <em></em><br/>Contacts Exist?"}:::decisions
    click Contacts_Exist "#contacts_exist" "628307374"
    
    Leads_Exist{"🔀 <em></em><br/>Leads Exist?"}:::decisions
    click Leads_Exist "#leads_exist" "625994619"
    
    Leads_Exist_0{"🔀 <em></em><br/>Leads Exist?"}:::decisions
    click Leads_Exist_0 "#leads_exist_0" "289787550"
    
    Major_Partner_Associated{"🔀 <em></em><br/>Major Partner Associated"}:::decisions
    click Major_Partner_Associated "#major_partner_associated" "1727453249"
    
    Contact_Loop{{"🔁 <em></em><br/>Contact Loop"}}:::loops
    click Contact_Loop "#contact_loop" "3865007421"
    
    Lead_Loop{{"🔁 <em></em><br/>Lead Loop"}}:::loops
    click Lead_Loop "#lead_loop" "2448593963"
    
    Get_Account_Partner_Association[("🔍 <em></em><br/>Get Account Partner Association")]:::recordLookups
    click Get_Account_Partner_Association "#get_account_partner_association" "1970211718"
    
    Get_Contacts[("🔍 <em></em><br/>Get Contacts")]:::recordLookups
    click Get_Contacts "#get_contacts" "2797389057"
    
    Get_Leads[("🔍 <em></em><br/>Get Leads")]:::recordLookups
    click Get_Leads "#get_leads" "1641678870"
    
    Update_Contacts[("🛠️ <em></em><br/>Update Contacts")]:::recordUpdates
    click Update_Contacts "#update_contacts" "1030683061"
    
    Update_Leads[("🛠️ <em></em><br/>Update Leads")]:::recordUpdates
    click Update_Leads "#update_leads" "880976102"
    
    Add_Territory --> Get_Contacts
    Add_Territory_0 --> Get_Contacts
    Add_to_Collections --> Lead_Loop
    Add_to_Collections_0 --> Get_Leads
    Contact_Territory_Assignment --> Add_to_Collections_0
    Contact_Territory_Assignment_0 --> Add_to_Collections
    Contacts_Exist --> |"Yes"| Contact_Loop
    Contacts_Exist --> |"No"| END_Contacts_Exist
    Leads_Exist --> |"Yes"| Lead_Loop
    Leads_Exist --> |"No"| Contact_Loop
    Leads_Exist_0 --> |"Yes"| Update_Leads
    Leads_Exist_0 --> |"No"| END_Leads_Exist_0
    Major_Partner_Associated --> |"Schwab"| Add_Territory
    Major_Partner_Associated --> |"Major Partner"| Add_Territory_0
    Major_Partner_Associated --> |"Standard"| END_Major_Partner_Associated
    Contact_Loop --> |"For Each"|Contact_Territory_Assignment
    Contact_Loop ---> |"After Last"|Update_Contacts
    Lead_Loop --> |"For Each"|Contact_Territory_Assignment_0
    Lead_Loop ---> |"After Last"|Contact_Loop
    Get_Account_Partner_Association --> Major_Partner_Associated
    Get_Contacts --> Contacts_Exist
    Get_Leads --> Leads_Exist
    Update_Contacts --> Leads_Exist_0
    Update_Leads --> END_Update_Leads
    START -->  Get_Account_Partner_Association
    END_Contacts_Exist(( END )):::endClass
    END_Leads_Exist_0(( END )):::endClass
    END_Major_Partner_Associated(( END )):::endClass
    END_Update_Leads(( END )):::endClass
    
    
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
    |Label|Account Partner Association | Process | Assign Territory|
    |Status|Active|
    |Interview Label|Account Partner Association | Process | Assign Territory {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Account_Partner_Association](#get_account_partner_association)|
    |Next Node|[Get_Account_Partner_Association](#get_account_partner_association)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |contactCollection|SObject|✅|✅|✅|Contact|<!-- -->|
    |leadCollection|SObject|✅|✅|✅|Lead|<!-- -->|
    |recordId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    |Territory|String|⬜|✅|✅|<!-- -->|<!-- -->|
    |updateContacts|SObject|✅|✅|✅|Contact|<!-- -->|
    |updateLeads|SObject|✅|✅|✅|Lead|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Add_Territory
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add Territory|
    |Connector|[Get_Contacts](#get_contacts)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Territory| Assign|Schwab|
    
    
    
    
    ### Add_Territory_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add Territory|
    |Connector|[Get_Contacts](#get_contacts)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Territory| Assign|Major Partner|
    
    
    
    
    ### Add_to_Collections
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add to Collections|
    |Connector|[Lead_Loop](#lead_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |updateLeads| Add|[Lead_Loop](#lead_loop)|
    
    
    
    
    ### Add_to_Collections_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add to Collections|
    |Connector|[Get_Leads](#get_leads)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |updateContacts| Add|[Contact_Loop](#contact_loop)|
    
    
    
    
    ### Contact_Territory_Assignment
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Contact Territory Assignment|
    |Connector|[Add_to_Collections_0](#add_to_collections_0)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Contact_Loop.Territory__c| Assign|Territory|
    |Contact_Loop.n2de__DE_Status__c| Assign|Waiting|
    |Contact_Loop.OwnerId| Assign|00500000006xUkg|
    
    
    
    
    ### Contact_Territory_Assignment_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Contact Territory Assignment|
    |Connector|[Add_to_Collections](#add_to_collections)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Lead_Loop.Territory__c| Assign|Territory|
    |Lead_Loop.n2de__DE_Status__c| Assign|<!-- -->|
    |Lead_Loop.OwnerId| Assign|00500000006xUkg|
    
    
    
    
    ### Contacts_Exist
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Contacts Exist?|
    |Default Connector Label|No|
    
    
    #### Rule YesContacts (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Contact_Loop](#contact_loop)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|contactCollection| Is Null|⬜|
    
    
    
    
    ### Leads_Exist
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Leads Exist?|
    |Default Connector|[Contact_Loop](#contact_loop)|
    |Default Connector Label|No|
    
    
    #### Rule YesLeads (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Lead_Loop](#lead_loop)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|leadCollection| Is Null|⬜|
    
    
    
    
    ### Leads_Exist_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Leads Exist?|
    |Default Connector Label|No|
    
    
    #### Rule YesLeads_0 (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Leads](#update_leads)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|updateLeads| Is Null|⬜|
    
    
    
    
    ### Major_Partner_Associated
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Major Partner Associated|
    |Default Connector Label|Standard|
    
    
    #### Rule Schwab (Schwab)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Add_Territory](#add_territory)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Account_Partner_Association.Partner_Competitor__r.Name| Contains|Schwab|
    
    
    
    
    #### Rule Major_Partner (Major Partner)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Add_Territory_0](#add_territory_0)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Account_Partner_Association.Partner_Competitor__r.Name| Contains|JP|
    |2|Get_Account_Partner_Association.Partner_Competitor__r.Name| Contains|Principal|
    
    
    
    
    ### Contact_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Contact Loop|
    |Collection Reference|contactCollection|
    |Iteration Order|Asc|
    |Next Value Connector|[Contact_Territory_Assignment](#contact_territory_assignment)|
    |No More Values Connector|[Update_Contacts](#update_contacts)|
    
    
    ### Lead_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Lead Loop|
    |Collection Reference|leadCollection|
    |Iteration Order|Asc|
    |Next Value Connector|[Contact_Territory_Assignment_0](#contact_territory_assignment_0)|
    |No More Values Connector|[Contact_Loop](#contact_loop)|
    
    
    ### Get_Account_Partner_Association
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Partner_Partner_Association__c|
    |Label|Get Account Partner Association|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Major_Partner_Associated](#major_partner_associated)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Get_Contacts
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Get Contacts|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|contactCollection|
    |Queried Fields|Id|
    |Connector|[Contacts_Exist](#contacts_exist)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|AccountId| Equal To|Get_Account_Partner_Association.Partner__c|
    |2|RecordTypeId| Equal To|0121G000000bptXQAQ|
    |3|Territory__c| Not Equal To|Territory|
    
    
    
    
    ### Get_Leads
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Lead|
    |Label|Get Leads|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|leadCollection|
    |Queried Fields|Id|
    |Connector|[Leads_Exist](#leads_exist)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Associated_Contact__c| Equal To|Contact_Loop.Id|
    |2|Status| Not Equal To|Qualified|
    |3|Status| Not Equal To|Unable to Qualify|
    |4|Status| Not Equal To|Unqualified|
    
    
    
    
    ### Update_Contacts
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Contacts|
    |Input Reference|updateContacts|
    |Connector|[Leads_Exist_0](#leads_exist_0)|
    
    
    ### Update_Leads
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Leads|
    |Input Reference|updateLeads|
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

