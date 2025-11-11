# Associated_Contact_Process_Update_Pardot_Sender_Info history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Associated_Contact_Process_Update_Pardot_Sender_Info-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>"]):::startClass
    click START "#general-information" "684974181"
    
    Assign_Contact_Values[\"🟰 <em></em><br/>Assign Contact Values"/]:::assignments
    click Assign_Contact_Values "#assign_contact_values" "205745929"
    
    User_or_Queue{"🔀 <em></em><br/>User or Queue"}:::decisions
    click User_or_Queue "#user_or_queue" "2994553256"
    
    Get_Owner[("🔍 <em></em><br/>Get Owner")]:::recordLookups
    click Get_Owner "#get_owner" "72901344"
    
    Update_Contact[("🛠️ <em></em><br/>Update Contact")]:::recordUpdates
    click Update_Contact "#update_contact" "1744227661"
    
    Assign_Contact_Values --> Update_Contact
    User_or_Queue --> |"User is Owner"| Get_Owner
    User_or_Queue --> |"Default Outcome"| END_User_or_Queue
    Get_Owner --> Assign_Contact_Values
    Update_Contact --> END_Update_Contact
    START -->  User_or_Queue
    END_User_or_Queue(( END )):::endClass
    END_Update_Contact(( END )):::endClass
    
    
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
    |Label|Associated Contact | Process | Update Pardot Sender Info|
    |Status|Obsolete|
    |Interview Label|Associated Contact | Process | Update Pardot Sender Info {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[User_or_Queue](#user_or_queue)|
    |Next Node|[User_or_Queue](#user_or_queue)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |contactId|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |recordId|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |relatedContact|SObject|⬜|✅|⬜|Contact|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |ownerFullName|String|{!Get_Owner.FirstName} + " " + {!Get_Owner.LastName}|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Assign_Contact_Values
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Contact Values|
    |Connector|[Update_Contact](#update_contact)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |relatedContact.Id| Assign|contactId|
    |relatedContact.Pardot_Sender_Name__c| Assign|ownerFullName|
    |relatedContact.Pardot_Sender_Title__c| Assign|Get_Owner.Title|
    |relatedContact.Pardot_Sender_Phone__c| Assign|Get_Owner.Phone|
    |relatedContact.Pardot_Sender_Calendly_Link__c| Assign|Get_Owner.Calendly_Intro_Plan_Design__c|
    
    
    
    
    ### User_or_Queue
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|User or Queue|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule User_is_Owner (User is Owner)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Owner](#get_owner)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|recordId| Starts With|5|
    
    
    
    
    ### Get_Owner
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|User|
    |Label|Get Owner|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Assign_Contact_Values](#assign_contact_values)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Update_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Contact|
    |Input Reference|relatedContact|
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

