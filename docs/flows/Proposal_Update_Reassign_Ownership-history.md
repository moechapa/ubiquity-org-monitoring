# Proposal_Update_Reassign_Ownership history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Proposal_Update_Reassign_Ownership-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "1787528137"
    
    Is_owner_an_RPC{"🔀 <em></em><br/>Is owner an RPC?"}:::decisions
    click Is_owner_an_RPC "#is_owner_an_rpc" "726133817"
    
    TPA_Account_Present{"🔀 <em></em><br/>TPA Account Present"}:::decisions
    click TPA_Account_Present "#tpa_account_present" "2453834461"
    
    TPA_Contact_Present{"🔀 <em></em><br/>TPA Contact Present"}:::decisions
    click TPA_Contact_Present "#tpa_contact_present" "90340747"
    
    Update_TPA_Account[("🛠️ <em></em><br/>Update TPA Account")]:::recordUpdates
    click Update_TPA_Account "#update_tpa_account" "4200448833"
    
    Update_TPA_Contact[("🛠️ <em></em><br/>Update TPA Contact")]:::recordUpdates
    click Update_TPA_Contact "#update_tpa_contact" "2065388766"
    
    Is_owner_an_RPC --> |"Yes owner RPC"| TPA_Contact_Present
    Is_owner_an_RPC --> |"Default Outcome"| END_Is_owner_an_RPC
    TPA_Account_Present --> |"Account needing update found"| Update_TPA_Account
    TPA_Account_Present --> |"Default Outcome"| END_TPA_Account_Present
    TPA_Contact_Present --> |"Contact Present Needs Update"| Update_TPA_Contact
    TPA_Contact_Present --> |"Default Outcome"| TPA_Account_Present
    Update_TPA_Account --> END_Update_TPA_Account
    Update_TPA_Contact --> TPA_Account_Present
    START -->  Is_owner_an_RPC
    END_Is_owner_an_RPC(( END )):::endClass
    END_TPA_Account_Present(( END )):::endClass
    END_Update_TPA_Account(( END )):::endClass
    
    
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
    |Object|Proposal__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create And Update|
    |Label|Proposal | Update | Reassign TPA Ownership|
    |Status|Active|
    |Description|Updated to replace "Lead | Process | Assign TPA Ownership" - now updates account owner to proposal owner IF no advisor is present and the proposal owner is an RPC<br/><br/>Sets TPA owner as proposal owner when attached to one.|
    |Environments|Default|
    |Interview Label|Proposal | Update | Reassign Ownership {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Is_owner_an_RPC](#is_owner_an_rpc)|
    |Next Node|[Is_owner_an_RPC](#is_owner_an_rpc)|
    
    
    #### Filters (logic: **1 AND (2 OR 3)**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|OwnerId| Is Changed|✅|
    |2|TPA_Contact__c| Is Null|<!-- -->|
    |3|TPA_Account__c| Is Null|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Is_owner_an_RPC
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Is owner an RPC?|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes_owner_RPC (Yes owner RPC)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[TPA_Contact_Present](#tpa_contact_present)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Owner:User.UserRole.Name| Contains|Retirement Plan Consultant|
    |2|$Record.Split_Opp__c| Equal To|⬜|
    
    
    
    
    ### TPA_Account_Present
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|TPA Account Present|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Account_needing_update_found (Account needing update found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_TPA_Account](#update_tpa_account)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.TPA_Account__c| Is Null|⬜|
    |2|$Record.TPA_Account__r.OwnerId| Not Equal To|$Record.OwnerId|
    |3|$Record.Advisor_Contact__c| Is Null|✅|
    
    
    
    
    ### TPA_Contact_Present
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|TPA Contact Present|
    |Default Connector|[TPA_Account_Present](#tpa_account_present)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Contact_Present_Needs_Update (Contact Present Needs Update)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_TPA_Contact](#update_tpa_contact)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.TPA_Contact__c| Is Null|⬜|
    |2|$Record.TPA_Contact__r.OwnerId| Not Equal To|$Record.OwnerId|
    
    
    
    
    ### Update_TPA_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Account|
    |Label|Update TPA Account|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$Record.TPA_Account__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |OwnerId|$Record.OwnerId|
    
    
    
    
    ### Update_TPA_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Contact|
    |Label|Update TPA Contact|
    |Connector|[TPA_Account_Present](#tpa_account_present)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$Record.TPA_Contact__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |OwnerId|$Record.OwnerId|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

