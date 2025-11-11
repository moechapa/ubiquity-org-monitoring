# Lead_Process_Assign_TPA_Ownership history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Lead_Process_Assign_TPA_Ownership-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>"]):::startClass
    click START "#general-information" "2731563222"
    
    Advisor_Check{"🔀 <em></em><br/>Advisor Check"}:::decisions
    click Advisor_Check "#advisor_check" "1929315799"
    
    TPA_Account{"🔀 <em></em><br/>TPA Account"}:::decisions
    click TPA_Account "#tpa_account" "978715294"
    
    TPA_Contact{"🔀 <em></em><br/>TPA Contact"}:::decisions
    click TPA_Contact "#tpa_contact" "4247849995"
    
    Get_Proposal[("🔍 <em></em><br/>Get Proposal")]:::recordLookups
    click Get_Proposal "#get_proposal" "1513888999"
    
    Update_Account[("🛠️ <em></em><br/>Update Account")]:::recordUpdates
    click Update_Account "#update_account" "3472506500"
    
    Update_Contact[("🛠️ <em></em><br/>Update Contact")]:::recordUpdates
    click Update_Contact "#update_contact" "82718561"
    
    Advisor_Check --> |"Advisor Not Found"| TPA_Contact
    Advisor_Check --> |"Default Outcome"| END_Advisor_Check
    TPA_Account --> |"Account Found"| Update_Account
    TPA_Account --> |"Account Not Found"| END_TPA_Account
    TPA_Contact --> |"Contact Found"| Update_Contact
    TPA_Contact --> |"Contact Not Found"| TPA_Account
    Get_Proposal --> Advisor_Check
    Update_Account --> END_Update_Account
    Update_Contact --> TPA_Account
    START -->  Get_Proposal
    END_Advisor_Check(( END )):::endClass
    END_TPA_Account(( END )):::endClass
    END_Update_Account(( END )):::endClass
    
    
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
    |Label|Lead | Process | Assign TPA Ownership|
    |Status|Obsolete|
    |Interview Label|Lead | Process | Assign TPA Ownership {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Proposal](#get_proposal)|
    |Next Node|[Get_Proposal](#get_proposal)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |email|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |leadType|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |ownerId|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |proposal|SObject|⬜|✅|⬜|Proposal__c|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Advisor_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Advisor Check|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Advisor_Not_Found (Advisor Not Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[TPA_Contact](#tpa_contact)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|proposal.Advisor_Contact__c| Is Null|✅|
    
    
    
    
    ### TPA_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|TPA Account|
    |Default Connector Label|Account Not Found|
    
    
    #### Rule Account_Found (Account Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Account](#update_account)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|proposal.TPA_Account__c| Is Null|⬜|
    
    
    
    
    ### TPA_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|TPA Contact|
    |Default Connector|[TPA_Account](#tpa_account)|
    |Default Connector Label|Contact Not Found|
    
    
    #### Rule Contact_Found (Contact Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Contact](#update_contact)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|proposal.TPA_Contact__c| Is Null|⬜|
    
    
    
    
    ### Get_Proposal
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Proposal__c|
    |Label|Get Proposal|
    |Assign Null Values If No Records Found|✅|
    |Output Assignments|- assignToReference: proposal.Advisor_Contact__c<br/>&nbsp;&nbsp;field: Advisor_Contact__c<br/>- assignToReference: proposal.Id<br/>&nbsp;&nbsp;field: Id<br/>- assignToReference: proposal.OwnerId<br/>&nbsp;&nbsp;field: OwnerId<br/>- assignToReference: proposal.TPA_Account__c<br/>&nbsp;&nbsp;field: TPA_Account__c<br/>- assignToReference: proposal.TPA_Contact__c<br/>&nbsp;&nbsp;field: TPA_Contact__c<br/>|
    |Connector|[Advisor_Check](#advisor_check)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Company_Email__c| Equal To|email|
    
    
    
    
    ### Update_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Account|
    |Label|Update Account|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|proposal.TPA_Account__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |OwnerId|proposal.OwnerId|
    
    
    
    
    ### Update_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Contact|
    |Label|Update Contact|
    |Connector|[TPA_Account](#tpa_account)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|proposal.TPA_Contact__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |OwnerId|ownerId|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

