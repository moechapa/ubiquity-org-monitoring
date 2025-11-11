# Messaging_Route_Route_SMS_to_CO_Queue history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Messaging_Route_Route_SMS_to_CO_Queue-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START"]):::startClass
    click START "#general-information" "1926028757"
    
    Copy_1_of_Route_Work("⚡ <em></em><br/>Copy 1 of Route Work"):::actionCalls
    click Copy_1_of_Route_Work "#copy_1_of_route_work" "2306580139"
    
    Default("⚡ <em></em><br/>Default"):::actionCalls
    click Default "#default" "1954545262"
    
    Route_Work("⚡ <em></em><br/>Route Work"):::actionCalls
    click Route_Work "#route_work" "3904382061"
    
    Contact_Found{"🔀 <em></em><br/>Contact Found"}:::decisions
    click Contact_Found "#contact_found" "3765469263"
    
    Prechat_Role{"🔀 <em></em><br/>Prechat Role"}:::decisions
    click Prechat_Role "#prechat_role" "3652726210"
    
    Get_Contact[("🔍 <em></em><br/>Get Contact")]:::recordLookups
    click Get_Contact "#get_contact" "905834308"
    
    Get_Message_Session[("🔍 <em></em><br/>Get Message Session")]:::recordLookups
    click Get_Message_Session "#get_message_session" "1430572450"
    
    Update_Message_User_w_Contact[("🛠️ <em></em><br/>Update Message User w/ Contact")]:::recordUpdates
    click Update_Message_User_w_Contact "#update_message_user_w_contact" "1957021309"
    
    Update_Prior_to_Route[("🛠️ <em></em><br/>Update Prior to Route")]:::recordUpdates
    click Update_Prior_to_Route "#update_prior_to_route" "191451214"
    
    Copy_1_of_Route_Work --> END_Copy_1_of_Route_Work
    Default --> END_Default
    Route_Work --> END_Route_Work
    Contact_Found --> |"Found"| Update_Message_User_w_Contact
    Contact_Found --> |"Default Outcome"| Update_Prior_to_Route
    Prechat_Role --> |"Advisor"| Route_Work
    Prechat_Role --> |"Employee"| Default
    Prechat_Role --> |"Default Outcome"| Copy_1_of_Route_Work
    Get_Contact --> Contact_Found
    Get_Message_Session --> Get_Contact
    Update_Message_User_w_Contact --> Update_Prior_to_Route
    Update_Prior_to_Route --> Prechat_Role
    START -->  Get_Message_Session
    END_Copy_1_of_Route_Work(( END )):::endClass
    END_Default(( END )):::endClass
    END_Route_Work(( END )):::endClass
    
    
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
    |Label|Messaging | Route | Route SMS to CO Queue|
    |Status|⚠️ Draft|
    |Environments|[Default](#default)|
    |Interview Label|Messaging | Route | Route SMS to CO Queue {!$Flow.CurrentDateTime}|
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
    |Omni_Role|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |recordId|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |Subject|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Copy_1_of_Route_Work
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Copy 1 of Route Work|
    |Action Type|Route Work|
    |Action Name|routeWork|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|routeWork|
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
    |Bot Id (input)|0XxHo000000PUTsKAO|
    |Bot Label (input)|Ubot Employer Chat - Omni|
    
    
    ### Default
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|[Default](#default)|
    |Action Type|Route Work|
    |Action Name|routeWork|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|routeWork|
    |Record Id (input)|recordId|
    |Service Channel Id (input)|0N9Ho000000DFI0KAO|
    |Service Channel Label (input)|Messaging|
    |Service Channel Dev Name (input)|sfdc_livemessage|
    |Routing Type (input)|Bot|
    |Routing Config Id (input)|<!-- -->|
    |Routing Config Label (input)|<!-- -->|
    |Queue Id (input)|00GHo000001bnsIMAQ|
    |Agent Id (input)|<!-- -->|
    |Agent Label (input)|<!-- -->|
    |Queue Label (input)|Omni Saver|
    |Skill Option (input)|<!-- -->|
    |Skill Requirements Resource Item (input)|<!-- -->|
    |Bot Id (input)|0XxHo000000PTrFKAW|
    |Bot Label (input)|Ubot Employee Chat - Omni|
    
    
    ### Route_Work
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Route Work|
    |Action Type|Route Work|
    |Action Name|routeWork|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|routeWork|
    |Record Id (input)|recordId|
    |Service Channel Id (input)|0N9Ho000000DFI0KAO|
    |Service Channel Label (input)|Messaging|
    |Service Channel Dev Name (input)|sfdc_livemessage|
    |Routing Type (input)|Bot|
    |Routing Config Id (input)|<!-- -->|
    |Routing Config Label (input)|<!-- -->|
    |Queue Id (input)|00GHo000001brMbMAI|
    |Agent Id (input)|<!-- -->|
    |Agent Label (input)|<!-- -->|
    |Queue Label (input)|Omni Advisor|
    |Skill Option (input)|<!-- -->|
    |Skill Requirements Resource Item (input)|<!-- -->|
    |Bot Id (input)|0XxHo000000PUTsKAO|
    |Bot Label (input)|Ubot Virtual Assistant|
    
    
    ### Contact_Found
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Contact Found|
    |Default Connector|[Update_Prior_to_Route](#update_prior_to_route)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Found (Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Message_User_w_Contact](#update_message_user_w_contact)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Contact.Id| Is Null|⬜|
    
    
    
    
    ### Prechat_Role
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Prechat Role|
    |Default Connector|[Copy_1_of_Route_Work](#copy_1_of_route_work)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Advisor (Advisor)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Route_Work](#route_work)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Omni_Role| Equal To|Advisor|
    |2|Omni_Role| Equal To|TPA|
    
    
    
    
    #### Rule Employee (Employee)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Default](#default)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Omni_Role| Contains|Employee|
    
    
    
    
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
    
    
    
    
    ### Update_Message_User_w_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|MessagingEndUser|
    |Label|Update Message User w/ Contact|
    |Connector|[Update_Prior_to_Route](#update_prior_to_route)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Message_Session.MessagingEndUserId|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|Get_Contact.AccountId|
    |ContactId|Get_Contact.Id|
    |Name|Get_Contact.Full_Name__c|
    
    
    
    
    ### Update_Prior_to_Route
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|MessagingSession|
    |Label|Update Prior to Route|
    |Connector|[Prechat_Role](#prechat_role)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Email__c|Email|
    |First_Name__c|FirstName|
    |Last_Name__c|LastName|
    |Omni_Role__c|Omni_Role|
    |Subject__c|Subject|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

