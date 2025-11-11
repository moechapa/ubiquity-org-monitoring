# Messaging_Route_Route_to_Test_Bot history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Messaging_Route_Route_to_Test_Bot-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START"]):::startClass
    click START "#general-information" "3413198371"
    
    RoutingAction("⚡ <em></em><br/>Route to UBQT PW"):::actionCalls
    click RoutingAction "#routingaction" "1920574598"
    
    Contact_Found{"🔀 <em></em><br/>Contact Found?"}:::decisions
    click Contact_Found "#contact_found" "1580758982"
    
    Get_Contact[("🔍 <em></em><br/>Get Contact")]:::recordLookups
    click Get_Contact "#get_contact" "905834308"
    
    Get_Message_Session[("🔍 <em></em><br/>Get Message Session")]:::recordLookups
    click Get_Message_Session "#get_message_session" "1430572450"
    
    Update_Message_Session[("🛠️ <em></em><br/>Update Message Session")]:::recordUpdates
    click Update_Message_Session "#update_message_session" "2218048505"
    
    Update_Message_User[("🛠️ <em></em><br/>Update Message User")]:::recordUpdates
    click Update_Message_User "#update_message_user" "3316637663"
    
    RoutingAction --> END_RoutingAction
    Contact_Found --> |"Yes"| Update_Message_User
    Contact_Found --> |"Default Outcome"| Update_Message_Session
    Get_Contact --> Contact_Found
    Get_Message_Session --> Get_Contact
    Update_Message_Session --> RoutingAction
    Update_Message_User --> Update_Message_Session
    START -->  Get_Message_Session
    END_RoutingAction(( END )):::endClass
    
    
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
    |Process Type| Routing Flow|
    |Label|Messaging | Route | Route to Test Bot|
    |Status|Active|
    |Environments|Default|
    |Interview Label|Messaging | Route | Route to Test Bot {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Message_Session](#get_message_session)|
    |Next Node|[Get_Message_Session](#get_message_session)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |Email|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |FirstName|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |LastName|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |numberOfAgents|Number|⬜|✅|⬜|<!-- -->|<!-- -->|
    |recordId|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### RoutingAction
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Route to UBQT PW|
    |Action Type|Route Work|
    |Action Name|routeWork|
    |Description|Routes all messages to your enhanced bot.|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|routeWork|
    |Offset|0|
    |Record Id (input)|recordId|
    |Service Channel Id (input)|0N9Ho000000DFI0KAO|
    |Service Channel Label (input)|Messaging|
    |Service Channel Dev Name (input)|sfdc_livemessage|
    |Routing Type (input)|Bot|
    |Routing Config Id (input)|<!-- -->|
    |Routing Config Label (input)|<!-- -->|
    |Queue Id (input)|00GHo000001bnnbMAA|
    |Agent Id (input)|<!-- -->|
    |Agent Label (input)|<!-- -->|
    |Queue Label (input)|Omni Support|
    |Skill Option (input)|<!-- -->|
    |Skill Requirements Resource Item (input)|<!-- -->|
    |Bot Id (input)|0XxUo00000002wHKAQ|
    |Bot Label (input)|Jake Test|
    |Copilot Id (input)|<!-- -->|
    |Copilot Label (input)|<!-- -->|
    
    
    ### Contact_Found
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Contact Found?|
    |Default Connector|[Update_Message_Session](#update_message_session)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Message_User](#update_message_user)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Contact.Id| Is Null|⬜|
    
    
    
    
    ### Get_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Get Contact|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Contact_Found](#contact_found)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Email| Equal To|Email|
    |2|Email| Is Null|<!-- -->|
    
    
    
    
    ### Get_Message_Session
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|MessagingSession|
    |Label|Get Message Session|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Get_Contact](#get_contact)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Update_Message_Session
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|MessagingSession|
    |Label|Update Message Session|
    |Connector|[RoutingAction](#routingaction)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Message_Session.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Email__c|Email|
    |First_Name__c|FirstName|
    |Last_Name__c|LastName|
    
    
    
    
    ### Update_Message_User
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|MessagingEndUser|
    |Label|Update Message User|
    |Connector|[Update_Message_Session](#update_message_session)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Message_Session.MessagingEndUserId|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|Get_Contact.AccountId|
    |ContactId|Get_Contact.Id|
    |Name|Get_Contact.Name|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

