# Contact_After_Insert_Create_Message_User_for_SMS history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Contact_After_Insert_Create_Message_User_for_SMS-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "635691580"
    
    assignFormattedPhone[\"🟰 <em></em><br/>assignFormattedPhone"/]:::assignments
    click assignFormattedPhone "#assignformattedphone" "2800455687"
    
    Dupe_MS_User_Record_Found{"🔀 <em></em><br/>Dupe MS User Record Found"}:::decisions
    click Dupe_MS_User_Record_Found "#dupe_ms_user_record_found" "1422203097"
    
    Is_Number_Valid{"🔀 <em></em><br/>Is Number Valid"}:::decisions
    click Is_Number_Valid "#is_number_valid" "100746873"
    
    Create_MS_User[("➕ <em></em><br/>Create MS User")]:::recordCreates
    click Create_MS_User "#create_ms_user" "1308834944"
    
    Check_for_Existing_Messaging_User_for_CO_Channel[("🔍 <em></em><br/>Check for Existing Messaging User for CO Channel")]:::recordLookups
    click Check_for_Existing_Messaging_User_for_CO_Channel "#check_for_existing_messaging_user_for_co_channel" "102728169"
    
    assignFormattedPhone --> Check_for_Existing_Messaging_User_for_CO_Channel
    Dupe_MS_User_Record_Found --> |"Default Outcome"| Create_MS_User
    Is_Number_Valid --> |"Yes, Valid"| assignFormattedPhone
    Is_Number_Valid --> |"Default Outcome"| END_Is_Number_Valid
    Create_MS_User --> END_Create_MS_User
    Check_for_Existing_Messaging_User_for_CO_Channel --> Dupe_MS_User_Record_Found
    START -->  Is_Number_Valid
    END_Is_Number_Valid(( END )):::endClass
    END_Create_MS_User(( END )):::endClass
    
    
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
    |Object|Contact|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create And Update|
    |Label|Contact | After Insert/Update | Create Message User for SMS|
    |Status|Obsolete|
    |Filter Formula|{!$Record.RecordTypeId} != "01237000000TgxQAAS"<br/>&&<br/>((ISNEW() && NOT(ISBLANK({!$Record.MobilePhone})))<br/>||<br/>(ISCHANGED({!$Record.MobilePhone}) && NOT(ISBLANK({!$Record.MobilePhone})) && {!$Record.MobilePhone} != {!$Record__Prior.MobilePhone}))|
    |Description|Delete after|
    |Environments|Default|
    |Interview Label|Contact | After Insert | Create Message User for SMS {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Is_Number_Valid](#is_number_valid)|
    |Next Node|[Is_Number_Valid](#is_number_valid)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |dupeMessageUser|SObject|⬜|✅|⬜|MessagingEndUser|<!-- -->|
    |platformKey|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |checkForValidNumber|Boolean|ISNUMBER({!formattedPhone})|<!-- -->|
    |formattedPhone|String|RIGHT(SUBSTITUTE(SUBSTITUTE(SUBSTITUTE(SUBSTITUTE(SUBSTITUTE({!$Record.MobilePhone}, " ", ""), "+", ""), "-", ""), ")", ""), "(", ""),10)|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### assignFormattedPhone
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|[assignFormattedPhone](#assignformattedphone)|
    |Connector|[Check_for_Existing_Messaging_User_for_CO_Channel](#check_for_existing_messaging_user_for_co_channel)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |platformKey| Add|formattedPhone|
    
    
    
    
    ### Dupe_MS_User_Record_Found
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Dupe MS User Record Found|
    |Default Connector|[Create_MS_User](#create_ms_user)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes_Dupe_Found (Yes, Dupe Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|dupeMessageUser.Id| Is Null|⬜|
    
    
    
    
    ### Is_Number_Valid
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Is Number Valid|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes_Valid (Yes, Valid)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[assignFormattedPhone](#assignformattedphone)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|checkForValidNumber| Equal To|✅|
    |2|formattedPhone| Is Null|⬜|
    
    
    
    
    ### Create_MS_User
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|MessagingEndUser|
    |Label|Create MS User|
    |Store Output Automatically|✅|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |ContactId|$Record.Id|
    |IsoCountryCode|US|
    |MessageType|Text|
    |MessagingChannelId|0MjHo000000PCQzKAO|
    |MessagingConsentStatus|ImplicitlyOptedIn|
    |MessagingPlatformKey|platformKey|
    |Name|$Record.Full_Name__c|
    
    
    
    
    ### Check_for_Existing_Messaging_User_for_CO_Channel
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|MessagingEndUser|
    |Label|Check for Existing Messaging User for CO Channel|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|dupeMessageUser|
    |Queried Fields|Id|
    |Connector|[Dupe_MS_User_Record_Found](#dupe_ms_user_record_found)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|MessagingChannelId| Equal To|0MjHo000000PCQyKAO|
    |2|MessagingPlatformKey| Equal To|platformKey|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

