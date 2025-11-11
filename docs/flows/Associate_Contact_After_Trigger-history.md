# Associate_Contact_After_Trigger history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Associate_Contact_After_Trigger-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "3281491458"
    
    Imp_Present{"🔀 <em></em><br/>Imp Present"}:::decisions
    click Imp_Present "#imp_present" "2019765065"
    
    Owner_Is_Person{"🔀 <em></em><br/>Imp Owner Is Person"}:::decisions
    click Owner_Is_Person "#owner_is_person" "1203220588"
    
    Plan_Inactive{"🔀 <em></em><br/>Plan Inactive?"}:::decisions
    click Plan_Inactive "#plan_inactive" "4240745091"
    
    Update_Account_Partner_Client_Status{"🔀 <em></em><br/>Update Account Partner Client Status"}:::decisions
    click Update_Account_Partner_Client_Status "#update_account_partner_client_status" "292494864"
    
    Update_Advisor_Interest{"🔀 <em></em><br/>Update Advisor Interest"}:::decisions
    click Update_Advisor_Interest "#update_advisor_interest" "1710921104"
    
    Update_Contact_Partner_Client_Status{"🔀 <em></em><br/>Update Contact Partner Client Status"}:::decisions
    click Update_Contact_Partner_Client_Status "#update_contact_partner_client_status" "1610820076"
    
    Update_Account_Partner_Client_Status1[("🛠️ <em></em><br/>Update Account Partner Client Status")]:::recordUpdates
    click Update_Account_Partner_Client_Status1 "#update_account_partner_client_status1" "2017374543"
    
    Update_Advisor_Contact_Record[("🛠️ <em></em><br/>Update Advisor Contact Record")]:::recordUpdates
    click Update_Advisor_Contact_Record "#update_advisor_contact_record" "2246221287"
    
    Update_Contact_Current_Client[("🛠️ <em></em><br/>Update Contact.Current_Client")]:::recordUpdates
    click Update_Contact_Current_Client "#update_contact_current_client" "3269725438"
    
    Update_Contact_Partner_Status[("🛠️ <em></em><br/>Update Contact Partner Status")]:::recordUpdates
    click Update_Contact_Partner_Status "#update_contact_partner_status" "2588496181"
    
    Update_Imp_User_Field_on_Contact[("🛠️ <em></em><br/>Update Imp User Field on Contact")]:::recordUpdates
    click Update_Imp_User_Field_on_Contact "#update_imp_user_field_on_contact" "2178191351"
    
    Update_Partner_Client_Status_Flow[["🔗 <em>Subflow</em><br/>Update Partner Client Status Flow"]]:::subflows
    click Update_Partner_Client_Status_Flow "#update_partner_client_status_flow" "3438205112"
    
    Imp_Present --> |"Yes"| Update_Contact_Current_Client
    Imp_Present --> |"No"| Owner_Is_Person
    Owner_Is_Person --> |"Yes"| Update_Imp_User_Field_on_Contact
    Owner_Is_Person --> |"Default Outcome"| END_Owner_Is_Person
    Plan_Inactive --> |"Yes"| Update_Partner_Client_Status_Flow
    Plan_Inactive --> |"Default Outcome"| Update_Advisor_Interest
    Update_Account_Partner_Client_Status --> |"Yes"| Update_Account_Partner_Client_Status1
    Update_Account_Partner_Client_Status --> |"Default Outcome"| Imp_Present
    Update_Advisor_Interest --> |"Yes"| Update_Advisor_Contact_Record
    Update_Advisor_Interest --> |"No"| Update_Contact_Partner_Client_Status
    Update_Contact_Partner_Client_Status --> |"Yes"| Update_Contact_Partner_Status
    Update_Contact_Partner_Client_Status --> |"No"| Update_Account_Partner_Client_Status
    Update_Account_Partner_Client_Status1 --> Imp_Present
    Update_Advisor_Contact_Record --> Update_Contact_Partner_Client_Status
    Update_Contact_Current_Client --> Owner_Is_Person
    Update_Contact_Partner_Status --> Update_Account_Partner_Client_Status
    Update_Imp_User_Field_on_Contact --> END_Update_Imp_User_Field_on_Contact
    START -->  Plan_Inactive
    Update_Partner_Client_Status_Flow --> END_Update_Partner_Client_Status_Flow
    END_Owner_Is_Person(( END )):::endClass
    END_Update_Imp_User_Field_on_Contact(( END )):::endClass
    END_Update_Partner_Client_Status_Flow(( END )):::endClass
    
    
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
    |Object|Associated_Contact__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create And Update|
    |Label|Associate Contact | After Trigger | Update Related Contact|
    |Status|Active|
    |Description|Removed "update contact links" portion of flow.  Was causing issues AND all those links are useless now anyway soo|
    |Environments|Default|
    |Interview Label|Associate Contact | After Trigger | {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Plan_Inactive](#plan_inactive)|
    |Next Node|[Plan_Inactive](#plan_inactive)|
    
    
    ## Flow Nodes Details
    
    ### Imp_Present
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Imp Present|
    |Default Connector|[Owner_Is_Person](#owner_is_person)|
    |Default Connector Label|No|
    
    
    #### Rule Yes4 (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[Update_Contact_Current_Client](#update_contact_current_client)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Implementation__c| Is Null|⬜|
    |2|$Record.Contact__r.Current_Client__c| Is Null|✅|
    
    
    
    
    ### Owner_Is_Person
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Imp Owner Is Person|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes6 (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Imp_User_Field_on_Contact](#update_imp_user_field_on_contact)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Implementation__c| Is Null|⬜|
    |2|$Record.Implementation__r.OwnerId| Starts With|5|
    
    
    
    
    ### Plan_Inactive
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Plan Inactive?|
    |Default Connector|[Update_Advisor_Interest](#update_advisor_interest)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes3 (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[Update_Partner_Client_Status_Flow](#update_partner_client_status_flow)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Partner_Client_Status__c| Equal To|Past Client(s)|
    |2|$Record.Plan_Status__c| Not Equal To|Implementation in Progress|
    
    
    
    
    ### Update_Account_Partner_Client_Status
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Update Account Partner Client Status|
    |Default Connector|[Imp_Present](#imp_present)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes2 (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Account_Partner_Client_Status1](#update_account_partner_client_status1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Partner_Client_Status__c| Equal To|Active Client(s)|
    |2|$Record.Account__r.Channel__c| Equal To|Advisors|
    |3|$Record.Account__r.Partner_Client_Status__c| Not Equal To|Active Client(s)|
    
    
    
    
    ### Update_Advisor_Interest
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Update Advisor Interest|
    |Default Connector|[Update_Contact_Partner_Client_Status](#update_contact_partner_client_status)|
    |Default Connector Label|No|
    
    
    #### Rule Yes (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Advisor_Contact_Record](#update_advisor_contact_record)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Contact_Role__c| Equal To|Financial Advisor|
    |2|$Record.Implementation__c| Is Null|⬜|
    |3|$Record.Contact__r.Advisor_Interest__c| Not Equal To|Actively Referring|
    
    
    
    
    ### Update_Contact_Partner_Client_Status
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Update Contact Partner Client Status|
    |Default Connector|[Update_Account_Partner_Client_Status](#update_account_partner_client_status)|
    |Default Connector Label|No|
    
    
    #### Rule Yes1 (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Contact_Partner_Status](#update_contact_partner_status)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Partner_Client_Status__c| Equal To|Active Client(s)|
    |2|$Record.Contact__r.Role__c| Equal To|Advisor|
    |3|$Record.Contact__r.Partner_Client_Status__c| Not Equal To|Active Client(s)|
    
    
    
    
    ### Update_Account_Partner_Client_Status1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Account|
    |Label|Update Account Partner Client Status|
    |Connector|[Imp_Present](#imp_present)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$Record.Account__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Partner_Client_Status__c|Active Client(s)|
    
    
    
    
    ### Update_Advisor_Contact_Record
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Contact|
    |Label|Update Advisor Contact Record|
    |Connector|[Update_Contact_Partner_Client_Status](#update_contact_partner_client_status)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$Record.Contact__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Advisor_Interest__c|Actively Referring|
    
    
    
    
    ### Update_Contact_Current_Client
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Contact|
    |Label|Update Contact.Current_Client|
    |Connector|[Owner_Is_Person](#owner_is_person)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$Record.Contact__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Current_Client__c|$Record.Implementation__r.Account__r.Name|
    
    
    
    
    ### Update_Contact_Partner_Status
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Contact|
    |Label|Update Contact Partner Status|
    |Connector|[Update_Account_Partner_Client_Status](#update_account_partner_client_status)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$Record.Contact__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Partner_Client_Status__c|Active Client(s)|
    
    
    
    
    ### Update_Imp_User_Field_on_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Contact|
    |Label|Update Imp User Field on Contact|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$Record.Contact__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Implementations_User__c|$Record.Implementation__r.OwnerId|
    
    
    
    
    ### Update_Partner_Client_Status_Flow
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Subflow|
    |Label|Update Partner Client Status Flow|
    |Flow Name|Update_Partner_Client_Status|
    |Store Output Automatically|✅|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |<!-- -->|$Record.Plan__c|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

