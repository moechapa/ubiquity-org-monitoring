# Case_After_Trigger_Associate_related_Messaging_Session history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Case_After_Trigger_Associate_related_Messaging_Session-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "429669982"
    
    Created_by_Agentforce{"🔀 <em></em><br/>Created by Agentforce?"}:::decisions
    click Created_by_Agentforce "#created_by_agentforce" "1559666247"
    
    Messaging_Session_found{"🔀 <em></em><br/>Messaging Session found?"}:::decisions
    click Messaging_Session_found "#messaging_session_found" "1948370267"
    
    Get_Einstein_Service_User[("🔍 <em></em><br/>Get Einstein Service User")]:::recordLookups
    click Get_Einstein_Service_User "#get_einstein_service_user" "4174107899"
    
    Get_Related_Messaging_Session[("🔍 <em></em><br/>Get Related Messaging Session")]:::recordLookups
    click Get_Related_Messaging_Session "#get_related_messaging_session" "626885079"
    
    Stamp_MS_with_related_Case[("🛠️ <em></em><br/>Stamp MS with related Case")]:::recordUpdates
    click Stamp_MS_with_related_Case "#stamp_ms_with_related_case" "4215014081"
    
    Created_by_Agentforce --> |"Yes"| Get_Related_Messaging_Session
    Created_by_Agentforce --> |"Default Outcome"| END_Created_by_Agentforce
    Messaging_Session_found --> |"Found"| Stamp_MS_with_related_Case
    Messaging_Session_found --> |"Default Outcome"| END_Messaging_Session_found
    Get_Einstein_Service_User --> Created_by_Agentforce
    Get_Related_Messaging_Session --> Messaging_Session_found
    Stamp_MS_with_related_Case --> END_Stamp_MS_with_related_Case
    START -->  Get_Einstein_Service_User
    END_Created_by_Agentforce(( END )):::endClass
    END_Messaging_Session_found(( END )):::endClass
    END_Stamp_MS_with_related_Case(( END )):::endClass
    
    
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
    |Object|Case|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create|
    |Label|Case | After Trigger | Associate related Messaging Session|
    |Status|Active|
    |Environments|Default|
    |Interview Label|Case | After Trigger | Associate related Messaging Session {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Einstein_Service_User](#get_einstein_service_user)|
    |Next Node|[Get_Einstein_Service_User](#get_einstein_service_user)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|ContactId| Is Null|<!-- -->|
    |2|ContactId| Not Equal To|003Ho00001egBZOIA2|
    |3|Origin| Equal To|Chat|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |CaseCreatedDate|Date|DATEVALUE({!$Record.CreatedDate})|<!-- -->|
    |MessagingSessionCreatedDate|Date|DATEVALUE({!Get_Related_Messaging_Session.CreatedDate})|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Created_by_Agentforce
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Created by Agentforce?|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Related_Messaging_Session](#get_related_messaging_session)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.CreatedById| Equal To|Get_Einstein_Service_User.Id|
    
    
    
    
    ### Messaging_Session_found
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Messaging Session found?|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Found (Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Stamp_MS_with_related_Case](#stamp_ms_with_related_case)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Related_Messaging_Session.Id| Is Blank|⬜|
    
    
    
    
    ### Get_Einstein_Service_User
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|User|
    |Label|Get Einstein Service User|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Created_by_Agentforce](#created_by_agentforce)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Name| Equal To|EinsteinServiceAgent User|
    
    
    
    
    ### Get_Related_Messaging_Session
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|MessagingSession|
    |Label|Get Related Messaging Session|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Sort Field|CreatedDate|
    |Sort Order|Desc|
    |Store Output Automatically|✅|
    |Connector|[Messaging_Session_found](#messaging_session_found)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Email__c| Equal To|$Record.Contact.Email|
    
    
    
    
    ### Stamp_MS_with_related_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|MessagingSession|
    |Label|Stamp MS with related Case|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Related_Messaging_Session.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |CaseId|$Record.Id|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

