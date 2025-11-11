# Account_After_Trigger_Master_Flow history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Account_After_Trigger_Master_Flow-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "1501356087"
    
    Add_to_Contact_Collection[\"🟰 <em></em><br/>Add to Contact Collection"/]:::assignments
    click Add_to_Contact_Collection "#add_to_contact_collection" "578303323"
    
    Add_to_Proposal_Collection[\"🟰 <em></em><br/>Add to Proposal Collection"/]:::assignments
    click Add_to_Proposal_Collection "#add_to_proposal_collection" "148730255"
    
    Assign_to_Existing_Account[\"🟰 <em></em><br/>Assign to Existing Account"/]:::assignments
    click Assign_to_Existing_Account "#assign_to_existing_account" "1591657462"
    
    Reassign_Account[\"🟰 <em></em><br/>Reassign Account"/]:::assignments
    click Reassign_Account "#reassign_account" "2336691106"
    
    Broker_CRD{"🔀 <em></em><br/>Broker CRD"}:::decisions
    click Broker_CRD "#broker_crd" "500157152"
    
    Contact_Query_Validation{"🔀 <em></em><br/>Contact Query Validation"}:::decisions
    click Contact_Query_Validation "#contact_query_validation" "1475541243"
    
    Proposal_Query_Validation{"🔀 <em></em><br/>Proposal Query Validation"}:::decisions
    click Proposal_Query_Validation "#proposal_query_validation" "3226409339"
    
    Query_Validation{"🔀 <em></em><br/>Query Validation"}:::decisions
    click Query_Validation "#query_validation" "3622249771"
    
    TPA_Account_Validation{"🔀 <em></em><br/>TPA Account Validation"}:::decisions
    click TPA_Account_Validation "#tpa_account_validation" "2611320902"
    
    TPA_Query_Validation{"🔀 <em></em><br/>TPA Query Validation"}:::decisions
    click TPA_Query_Validation "#tpa_query_validation" "3313532731"
    
    Contact_Loop{{"🔁 <em></em><br/>Contact Loop"}}:::loops
    click Contact_Loop "#contact_loop" "1555179717"
    
    Proposal_Loop{{"🔁 <em></em><br/>Proposal Loop"}}:::loops
    click Proposal_Loop "#proposal_loop" "2026025528"
    
    Delete_Account[("🗑️ <em></em><br/>Delete Account")]:::recordDeletes
    click Delete_Account "#delete_account" "4078952999"
    
    Get_Broker_Account[("🔍 <em></em><br/>Get Broker Account")]:::recordLookups
    click Get_Broker_Account "#get_broker_account" "3859168210"
    
    Get_Contacts[("🔍 <em></em><br/>Get Contacts")]:::recordLookups
    click Get_Contacts "#get_contacts" "616942569"
    
    Get_Existing_TPA_Account[("🔍 <em></em><br/>Get Existing TPA Account")]:::recordLookups
    click Get_Existing_TPA_Account "#get_existing_tpa_account" "1569825351"
    
    Get_Proposals[("🔍 <em></em><br/>Get Proposals")]:::recordLookups
    click Get_Proposals "#get_proposals" "2174528315"
    
    Update_Account[("🛠️ <em></em><br/>Update Account")]:::recordUpdates
    click Update_Account "#update_account" "4242596387"
    
    Update_Contacts[("🛠️ <em></em><br/>Update Contacts")]:::recordUpdates
    click Update_Contacts "#update_contacts" "4252475720"
    
    Update_Proposals[("🛠️ <em></em><br/>Update Proposals")]:::recordUpdates
    click Update_Proposals "#update_proposals" "1061852947"
    
    Add_to_Contact_Collection --> Contact_Loop
    Add_to_Proposal_Collection --> Proposal_Loop
    Assign_to_Existing_Account --> Add_to_Proposal_Collection
    Reassign_Account --> Add_to_Contact_Collection
    Broker_CRD --> |"Broker CRD Present"| Get_Broker_Account
    Broker_CRD --> |"No Broker CRD Change"| TPA_Account_Validation
    Contact_Query_Validation --> |"Contacts Found"| Contact_Loop
    Contact_Query_Validation --> |"Contacts Not Found"| END_Contact_Query_Validation
    Proposal_Query_Validation --> |"Proposals Found"| Proposal_Loop
    Proposal_Query_Validation --> |"Proposals Not Found"| END_Proposal_Query_Validation
    Query_Validation --> |"Account Found"| Update_Account
    Query_Validation --> |"Account Not Found"| TPA_Account_Validation
    TPA_Account_Validation --> |"EIN Changed"| Get_Existing_TPA_Account
    TPA_Account_Validation --> |"EIN Not Changed"| END_TPA_Account_Validation
    TPA_Query_Validation --> |"TPA Account Found"| Get_Contacts
    TPA_Query_Validation --> |"Account Not Found"| END_TPA_Query_Validation
    Contact_Loop --> |"For Each"|Reassign_Account
    Contact_Loop ---> |"After Last"|Update_Contacts
    Proposal_Loop --> |"For Each"|Assign_to_Existing_Account
    Proposal_Loop ---> |"After Last"|Update_Proposals
    Delete_Account --> END_Delete_Account
    Get_Broker_Account --> Query_Validation
    Get_Contacts --> Contact_Query_Validation
    Get_Existing_TPA_Account --> TPA_Query_Validation
    Get_Proposals --> Proposal_Query_Validation
    Update_Account --> TPA_Account_Validation
    Update_Contacts --> Get_Proposals
    Update_Proposals --> Delete_Account
    START -->  Broker_CRD
    END_Contact_Query_Validation(( END )):::endClass
    END_Proposal_Query_Validation(( END )):::endClass
    END_TPA_Account_Validation(( END )):::endClass
    END_TPA_Query_Validation(( END )):::endClass
    END_Delete_Account(( END )):::endClass
    
    
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
    |Object|Account|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create And Update|
    |Label|Account | After Trigger | Master Flow|
    |Status|Active|
    |Interview Label|Account | After Trigger | Master Flow {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Broker_CRD](#broker_crd)|
    |Next Node|[Broker_CRD](#broker_crd)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |advisorBroker|SObject|⬜|✅|⬜|Account|<!-- -->|
    |contactCollection|SObject|✅|✅|⬜|Contact|<!-- -->|
    |existingContacts|SObject|✅|✅|⬜|Contact|<!-- -->|
    |existingProposals|SObject|✅|✅|⬜|Proposal__c|<!-- -->|
    |existingTPA|SObject|⬜|✅|⬜|Account|<!-- -->|
    |proposalCollection|SObject|✅|✅|⬜|Proposal__c|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Add_to_Contact_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add to Contact Collection|
    |Connector|[Contact_Loop](#contact_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |contactCollection| Add|[Contact_Loop](#contact_loop)|
    
    
    
    
    ### Add_to_Proposal_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add to Proposal Collection|
    |Connector|[Proposal_Loop](#proposal_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |proposalCollection| Add|[Proposal_Loop](#proposal_loop)|
    
    
    
    
    ### Assign_to_Existing_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign to Existing Account|
    |Connector|[Add_to_Proposal_Collection](#add_to_proposal_collection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Proposal_Loop.TPA_Account__c| Assign|existingTPA.Id|
    
    
    
    
    ### Reassign_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Reassign Account|
    |Connector|[Add_to_Contact_Collection](#add_to_contact_collection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Contact_Loop.AccountId| Assign|existingTPA.Id|
    
    
    
    
    ### Broker_CRD
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Broker CRD|
    |Default Connector|[TPA_Account_Validation](#tpa_account_validation)|
    |Default Connector Label|No Broker CRD Change|
    
    
    #### Rule Broker_CRD_Present (Broker CRD Present)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Broker_Account](#get_broker_account)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Broker_CRD__c| Is Null|⬜|
    |2|$Record__Prior.Broker_CRD__c| Is Null|✅|
    |3|$Record.Channel__c| Equal To|Advisors|
    
    
    
    
    ### Contact_Query_Validation
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Contact Query Validation|
    |Default Connector Label|Contacts Not Found|
    
    
    #### Rule Contacts_Found (Contacts Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Contact_Loop](#contact_loop)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|existingContacts| Is Null|⬜|
    
    
    
    
    ### Proposal_Query_Validation
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Proposal Query Validation|
    |Default Connector Label|Proposals Not Found|
    
    
    #### Rule Proposals_Found (Proposals Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Proposal_Loop](#proposal_loop)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|existingProposals| Is Null|⬜|
    
    
    
    
    ### Query_Validation
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Query Validation|
    |Default Connector|[TPA_Account_Validation](#tpa_account_validation)|
    |Default Connector Label|Account Not Found|
    
    
    #### Rule Account_Found (Account Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Account](#update_account)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|advisorBroker.Id| Is Null|⬜|
    
    
    
    
    ### TPA_Account_Validation
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|TPA Account Validation|
    |Default Connector Label|EIN Not Changed|
    
    
    #### Rule EIN_Changed (EIN Changed)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Existing_TPA_Account](#get_existing_tpa_account)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Employer_Identification_Number_EIN__c| Is Null|⬜|
    |2|$Record__Prior.Employer_Identification_Number_EIN__c| Is Null|✅|
    |3|$Record.Channel__c| Equal To|TPA|
    
    
    
    
    ### TPA_Query_Validation
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|TPA Query Validation|
    |Default Connector Label|Account Not Found|
    
    
    #### Rule TPA_Account_Found (TPA Account Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Contacts](#get_contacts)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|existingTPA.Id| Is Null|⬜|
    
    
    
    
    ### Contact_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Contact Loop|
    |Collection Reference|existingContacts|
    |Iteration Order|Asc|
    |Next Value Connector|[Reassign_Account](#reassign_account)|
    |No More Values Connector|[Update_Contacts](#update_contacts)|
    
    
    ### Proposal_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Proposal Loop|
    |Collection Reference|existingProposals|
    |Iteration Order|Asc|
    |Next Value Connector|[Assign_to_Existing_Account](#assign_to_existing_account)|
    |No More Values Connector|[Update_Proposals](#update_proposals)|
    
    
    ### Delete_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Delete|
    |Label|Delete Account|
    |Input Reference|$Record|
    
    
    ### Get_Broker_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Account|
    |Label|Get Broker Account|
    |Assign Null Values If No Records Found|✅|
    |Output Assignments|assignToReference: advisorBroker.Id<br/>field: Id<br/>|
    |Connector|[Query_Validation](#query_validation)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|CRD_Number__c| Equal To|$Record.Broker_CRD__c|
    
    
    
    
    ### Get_Contacts
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Get Contacts|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|existingContacts|
    |Queried Fields|Id|
    |Connector|[Contact_Query_Validation](#contact_query_validation)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|AccountId| Equal To|$Record.Id|
    
    
    
    
    ### Get_Existing_TPA_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Account|
    |Label|Get Existing TPA Account|
    |Assign Null Values If No Records Found|✅|
    |Output Assignments|assignToReference: existingTPA.Id<br/>field: Id<br/>|
    |Connector|[TPA_Query_Validation](#tpa_query_validation)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Employer_Identification_Number_EIN__c| Equal To|$Record.Employer_Identification_Number_EIN__c|
    |2|Id| Not Equal To|$Record.Id|
    
    
    
    
    ### Get_Proposals
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Proposal__c|
    |Label|Get Proposals|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|existingProposals|
    |Queried Fields|Id|
    |Connector|[Proposal_Query_Validation](#proposal_query_validation)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|TPA_Account__c| Equal To|$Record.Id|
    
    
    
    
    ### Update_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Account|
    |Input Reference|$Record|
    |Connector|[TPA_Account_Validation](#tpa_account_validation)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |ParentId|advisorBroker.Id|
    
    
    
    
    ### Update_Contacts
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Contacts|
    |Input Reference|contactCollection|
    |Connector|[Get_Proposals](#get_proposals)|
    
    
    ### Update_Proposals
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Proposals|
    |Input Reference|proposalCollection|
    |Connector|[Delete_Account](#delete_account)|
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

