# Messaging_Route_Route_to_CO_Queue history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Messaging_Route_Route_to_CO_Queue-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START"]):::startClass
    click START "#general-information" "221740624"
    
    Add_Imp_Plan_and_Acct("⚡ <em></em><br/>Add Imp, Plan, and Acct"):::actionCalls
    click Add_Imp_Plan_and_Acct "#add_imp_plan_and_acct" "941106813"
    
    Copy_1_of_Copy_1_of_Route_Work("⚡ <em></em><br/>Copy 1 of Copy 1 of Route Work"):::actionCalls
    click Copy_1_of_Copy_1_of_Route_Work "#copy_1_of_copy_1_of_route_work" "476299059"
    
    Copy_1_of_Route_Work("⚡ <em></em><br/>Copy 1 of Route Work"):::actionCalls
    click Copy_1_of_Route_Work "#copy_1_of_route_work" "1071072886"
    
    Contact_Found{"🔀 <em></em><br/>Contact Found"}:::decisions
    click Contact_Found "#contact_found" "3765469263"
    
    Imp_Found{"🔀 <em></em><br/>Imp Found"}:::decisions
    click Imp_Found "#imp_found" "2438219417"
    
    Get_Contact[("🔍 <em></em><br/>Get Contact")]:::recordLookups
    click Get_Contact "#get_contact" "905834308"
    
    Get_Imp[("🔍 <em></em><br/>Get Imp")]:::recordLookups
    click Get_Imp "#get_imp" "2670190594"
    
    Get_Message_Session[("🔍 <em></em><br/>Get Message Session")]:::recordLookups
    click Get_Message_Session "#get_message_session" "1430572450"
    
    Copy_2_of_Update_Prior_to_Route[("🛠️ <em></em><br/>Copy 2 of Update Prior to Route")]:::recordUpdates
    click Copy_2_of_Update_Prior_to_Route "#copy_2_of_update_prior_to_route" "2908276942"
    
    Update_Message_User_w_Contact[("🛠️ <em></em><br/>Update Message User w/ Contact")]:::recordUpdates
    click Update_Message_User_w_Contact "#update_message_user_w_contact" "3645611332"
    
    Update_Prior_to_Route[("🛠️ <em></em><br/>Update Prior to Route")]:::recordUpdates
    click Update_Prior_to_Route "#update_prior_to_route" "2538210308"
    
    Add_Imp_Plan_and_Acct --> Copy_1_of_Copy_1_of_Route_Work
    Copy_1_of_Copy_1_of_Route_Work --> END_Copy_1_of_Copy_1_of_Route_Work
    Copy_1_of_Route_Work --> END_Copy_1_of_Route_Work
    Contact_Found --> |"Found"| Update_Message_User_w_Contact
    Contact_Found --> |"Default Outcome"| Update_Prior_to_Route
    Imp_Found --> |"Yes Imp Found"| Copy_2_of_Update_Prior_to_Route
    Imp_Found --> |"Default Outcome"| Update_Prior_to_Route
    Get_Contact --> Contact_Found
    Get_Imp --> Imp_Found
    Get_Message_Session --> Get_Contact
    Copy_2_of_Update_Prior_to_Route --> Add_Imp_Plan_and_Acct
    Update_Message_User_w_Contact --> Get_Imp
    Update_Prior_to_Route --> Copy_1_of_Route_Work
    START -->  Get_Message_Session
    END_Copy_1_of_Copy_1_of_Route_Work(( END )):::endClass
    END_Copy_1_of_Route_Work(( END )):::endClass
    
    
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
    |Label|Messaging | Route | Route to CO Queue|
    |Status|Active|
    |Description|Adding "Company" and "What can we help you?" variables for Pre-Chat Form Capture|
    |Environments|Default|
    |Interview Label|Messaging | Route | Route to CO Queue {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Message_Session](#get_message_session)|
    |Next Node|[Get_Message_Session](#get_message_session)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |Company|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |Email|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |First_Name|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |Last_Name|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |pop|String|✅|✅|✅|<!-- -->|<!-- -->|
    |recordId|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |relatedImp|SObject|⬜|✅|✅|Implementation__c|<!-- -->|
    |screenPop|SObject|✅|✅|✅|PendingServiceRoutingInteractionInfo|<!-- -->|
    |Subject|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Add_Imp_Plan_and_Acct
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Add Imp, Plan, and Acct|
    |Action Type|Add Screen Pop|
    |Action Name|addScreenPop|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|addScreenPop|
    |Offset|0|
    |Output Parameters|assignToReference: screenPop<br/>name: routingInteractionInfoList<br/>|
    |Screen Pop (input)|[{"id":"d9d7761f","targetObjectId":"{!relatedImp.Id}","isFocused":false},{"id":"f62033c7","targetObjectId":"{!Get_Contact.AccountId}","isFocused":false}]|
    |Pending Service Routing Interaction Info Input List (input)|screenPop|
    |Connector|[Copy_1_of_Copy_1_of_Route_Work](#copy_1_of_copy_1_of_route_work)|
    
    
    ### Copy_1_of_Copy_1_of_Route_Work
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Copy 1 of Copy 1 of Route Work|
    |Action Type|Route Work|
    |Action Name|routeWork|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|routeWork|
    |Offset|0|
    |Record Id (input)|recordId|
    |Psr Interaction Info (input)|screenPop|
    |Service Channel Id (input)|0N9Ho000000DFI0KAO|
    |Service Channel Label (input)|Messaging|
    |Service Channel Dev Name (input)|sfdc_livemessage|
    |Routing Type (input)|QueueBased|
    |Routing Config Id (input)|<!-- -->|
    |Routing Config Label (input)|<!-- -->|
    |Queue Id (input)|00GHo000001cKgcMAE|
    |Agent Id (input)|<!-- -->|
    |Agent Label (input)|<!-- -->|
    |Queue Label (input)|Omni Client Onboarding|
    |Skill Option (input)|<!-- -->|
    |Skill Requirements Resource Item (input)|<!-- -->|
    |Bot Id (input)|<!-- -->|
    |Bot Label (input)|<!-- -->|
    
    
    ### Copy_1_of_Route_Work
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Copy 1 of Route Work|
    |Action Type|Route Work|
    |Action Name|routeWork|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|routeWork|
    |Offset|0|
    |Record Id (input)|recordId|
    |Service Channel Id (input)|0N9Ho000000DFI0KAO|
    |Service Channel Label (input)|Messaging|
    |Service Channel Dev Name (input)|sfdc_livemessage|
    |Routing Type (input)|QueueBased|
    |Routing Config Id (input)|<!-- -->|
    |Routing Config Label (input)|<!-- -->|
    |Queue Id (input)|00GHo000001cKgcMAE|
    |Agent Id (input)|<!-- -->|
    |Agent Label (input)|<!-- -->|
    |Queue Label (input)|Omni Client Onboarding|
    |Skill Option (input)|<!-- -->|
    |Skill Requirements Resource Item (input)|<!-- -->|
    |Bot Id (input)|<!-- -->|
    |Bot Label (input)|<!-- -->|
    |Copilot Id (input)|<!-- -->|
    |Copilot Label (input)|<!-- -->|
    
    
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
    
    
    
    
    ### Imp_Found
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Imp Found|
    |Default Connector|[Update_Prior_to_Route](#update_prior_to_route)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes_Imp_Found (Yes Imp Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Copy_2_of_Update_Prior_to_Route](#copy_2_of_update_prior_to_route)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|relatedImp.Id| Is Null|⬜|
    
    
    
    
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
    
    
    
    
    ### Get_Imp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Implementation__c|
    |Label|Get Imp|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|relatedImp|
    |Queried Fields|Id|
    |Connector|[Imp_Found](#imp_found)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Account__c| Equal To|Get_Contact.AccountId|
    
    
    
    
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
    
    
    
    
    ### Copy_2_of_Update_Prior_to_Route
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|MessagingSession|
    |Label|Copy 2 of Update Prior to Route|
    |Connector|[Add_Imp_Plan_and_Acct](#add_imp_plan_and_acct)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Company__c|Company|
    |Department__c|Client Onboarding|
    |Email__c|Email|
    |First_Name__c|First_Name|
    |Last_Name__c|Last_Name|
    |Subject__c|Subject|
    
    
    
    
    ### Update_Message_User_w_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|MessagingEndUser|
    |Label|Update Message User w/ Contact|
    |Connector|[Get_Imp](#get_imp)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Message_Session.MessagingEndUserId|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |ContactId|Get_Contact.Id|
    |Name|Get_Contact.Full_Name__c|
    
    
    
    
    ### Update_Prior_to_Route
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|MessagingSession|
    |Label|Update Prior to Route|
    |Connector|[Copy_1_of_Route_Work](#copy_1_of_route_work)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Company__c|Company|
    |Department__c|Client Onboarding|
    |Email__c|Email|
    |First_Name__c|First_Name|
    |Last_Name__c|Last_Name|
    |Subject__c|Subject|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

