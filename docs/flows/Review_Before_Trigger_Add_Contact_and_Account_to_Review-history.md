# Review_Before_Trigger_Add_Contact_and_Account_to_Review history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Review_Before_Trigger_Add_Contact_and_Account_to_Review-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record Before Save</b>"]):::startClass
    click START "#general-information" "2232969387"
    
    Add_Contact_and_Account_to_Review[\"🟰 <em></em><br/>Add Contact and Account to Review"/]:::assignments
    click Add_Contact_and_Account_to_Review "#add_contact_and_account_to_review" "3812423864"
    
    Is_Contact_Related{"🔀 <em></em><br/>Is Contact related?"}:::decisions
    click Is_Contact_Related "#is_contact_related" "2911608120"
    
    Find_Contact[("🔍 <em></em><br/>Find Contact")]:::recordLookups
    click Find_Contact "#find_contact" "423234394"
    
    Add_Contact_and_Account_to_Review --> END_Add_Contact_and_Account_to_Review
    Is_Contact_Related --> |"No, not related"| Find_Contact
    Is_Contact_Related --> |"Yes, related"| END_Is_Contact_Related
    Find_Contact --> Add_Contact_and_Account_to_Review
    START -->  Is_Contact_Related
    END_Add_Contact_and_Account_to_Review(( END )):::endClass
    END_Is_Contact_Related(( END )):::endClass
    
    
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
    |Object|Reviews__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record Before Save|
    |Record Trigger Type| Create|
    |Label|Review | Before Trigger | Add Contact and Account to Review|
    |Status|Active|
    |Description|When Review record is created and Email is not blank, find the contact that matches based on Email and add them and their account to the Review record.|
    |Environments|Default|
    |Interview Label|Review | Before Trigger | Add Contact and Account to Review {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Is_Contact_Related](#is_contact_related)|
    |Next Node|[Is_Contact_Related](#is_contact_related)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Email__c| Is Null|<!-- -->|
    |2|Reviewer_Contact__c| Is Null|<!-- -->|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |foundContact|SObject|⬜|⬜|⬜|Contact|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Add_Contact_and_Account_to_Review
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add Contact and Account to Review|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Reviewer_Contact__c| Assign|foundContact.Id|
    |$Record.Account__c| Assign|foundContact.AccountId|
    
    
    
    
    ### Is_Contact_Related
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Is Contact related?|
    |Default Connector Label|Yes, related|
    
    
    #### Rule No_not_linked (No, not related)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Find_Contact](#find_contact)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Reviewer_Contact__c| Is Null|✅|
    
    
    
    
    ### Find_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Find Contact|
    |Assign Null Values If No Records Found|⬜|
    |Output Reference|foundContact|
    |Queried Fields|- Id<br/>- Email<br/>- Secondary_Email__c<br/>- AccountId<br/>|
    |Connector|[Add_Contact_and_Account_to_Review](#add_contact_and_account_to_review)|
    
    
    #### Filters (logic: **or**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Email| Equal To|$Record.Email__c|
    |2|Secondary_Email__c| Equal To|$Record.Email__c|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

