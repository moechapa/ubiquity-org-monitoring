# Transition_After_Trigger_Remove_Contacts_from_MC history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Transition_After_Trigger_Remove_Contacts_from_MC-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "4069707747"
    
    addToCollection[\"🟰 <em></em><br/>addToCollection"/]:::assignments
    click addToCollection "#addtocollection" "2720983416"
    
    assignToRemoval[\"🟰 <em></em><br/>assignToRemoval"/]:::assignments
    click assignToRemoval "#assigntoremoval" "1681116801"
    
    contactsFound{"🔀 <em></em><br/>contactsFound"}:::decisions
    click contactsFound "#contactsfound" "4168578027"
    
    removeContactsLoop{{"🔁 <em></em><br/>removeContactsLoop"}}:::loops
    click removeContactsLoop "#removecontactsloop" "2633909540"
    
    Get_Account[("🔍 <em></em><br/>Get Account")]:::recordLookups
    click Get_Account "#get_account" "1841790024"
    
    Get_Contacts[("🔍 <em></em><br/>Get Contacts")]:::recordLookups
    click Get_Contacts "#get_contacts" "29144662"
    
    updateMCRemoval[("🛠️ <em></em><br/>updateMCRemoval")]:::recordUpdates
    click updateMCRemoval "#updatemcremoval" "249389447"
    
    addToCollection --> removeContactsLoop
    assignToRemoval --> addToCollection
    contactsFound --> |"Yes"| removeContactsLoop
    contactsFound --> |"Default Outcome"| END_contactsFound
    removeContactsLoop --> |"For Each"|assignToRemoval
    removeContactsLoop ---> |"After Last"|updateMCRemoval
    Get_Account --> Get_Contacts
    Get_Contacts --> contactsFound
    updateMCRemoval --> END_updateMCRemoval
    START -->  Get_Account
    END_contactsFound(( END )):::endClass
    END_updateMCRemoval(( END )):::endClass
    
    
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
    |Object|Transition__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create And Update|
    |Label|Transition | After Trigger | Remove Contacts from MC|
    |Status|⚠️ Draft|
    |Description|When Transition Complete is entered, find contacts on account and set MC Removal to "True"|
    |Environments|Default|
    |Interview Label|Transition | After Trigger | Remove Contacts from MC {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Account](#get_account)|
    |Next Node|[Get_Account](#get_account)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Transition_Complete__c| Is Null|<!-- -->|
    |2|Transition_Complete__c| Is Changed|✅|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |contactsToRemove|SObject|✅|✅|⬜|Contact|<!-- -->|
    |getContacts|SObject|✅|✅|⬜|Contact|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### addToCollection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|[addToCollection](#addtocollection)|
    |Connector|[removeContactsLoop](#removecontactsloop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |contactsToRemove| Add|[removeContactsLoop](#removecontactsloop)|
    
    
    
    
    ### assignToRemoval
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|[assignToRemoval](#assigntoremoval)|
    |Connector|[addToCollection](#addtocollection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |removeContactsLoop.MC_Removal__c| Assign|✅|
    
    
    
    
    ### contactsFound
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[contactsFound](#contactsfound)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[removeContactsLoop](#removecontactsloop)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|getContacts| Is Null|⬜|
    
    
    
    
    ### removeContactsLoop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|[removeContactsLoop](#removecontactsloop)|
    |Collection Reference|getContacts|
    |Iteration Order|Asc|
    |Next Value Connector|[assignToRemoval](#assigntoremoval)|
    |No More Values Connector|[updateMCRemoval](#updatemcremoval)|
    
    
    ### Get_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Account|
    |Label|Get Account|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|Id|
    |Store Output Automatically|✅|
    |Connector|[Get_Contacts](#get_contacts)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$Record.Account__c|
    
    
    
    
    ### Get_Contacts
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Get Contacts|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|getContacts|
    |Queried Fields|- Id<br/>- MC_Removal__c<br/>|
    |Connector|[contactsFound](#contactsfound)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|AccountId| Equal To|Get_Account.Id|
    |2|MC_Removal__c| Equal To|⬜|
    
    
    
    
    ### updateMCRemoval
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|[updateMCRemoval](#updatemcremoval)|
    |Input Reference|contactsToRemove|
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

