# Case_After_Save_CE_to_Ops_Transfer history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Case_After_Save_CE_to_Ops_Transfer-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "3743452941"
    
    Post_email_failure_msg("⚡ <em></em><br/>Post email failure msg"):::actionCalls
    click Post_email_failure_msg "#post_email_failure_msg" "3119433224"
    
    Post_UAT_Message("⚡ <em></em><br/>Post UAT Message"):::actionCalls
    click Post_UAT_Message "#post_uat_message" "4029973186"
    
    Send_Transfer_Email("📧 <em></em><br/>Send Transfer Email"):::actionCalls
    click Send_Transfer_Email "#send_transfer_email" "2712568437"
    
    Sandbox_Check{"🔀 <em></em><br/>Sandbox Check"}:::decisions
    click Sandbox_Check "#sandbox_check" "2830784051"
    
    Get_Template[("🔍 <em></em><br/>Get Template")]:::recordLookups
    click Get_Template "#get_template" "3918646552"
    
    Transfer_Incomplete_Calculations[("🛠️ <em></em><br/>Transfer Incomplete Calculations")]:::recordUpdates
    click Transfer_Incomplete_Calculations "#transfer_incomplete_calculations" "3812087423"
    
    Post_email_failure_msg --> Transfer_Incomplete_Calculations
    Post_UAT_Message --> Transfer_Incomplete_Calculations
    Send_Transfer_Email --> Transfer_Incomplete_Calculations
    Send_Transfer_Email -. Fault .->Sandbox_Check
    Sandbox_Check --> |"UAT"| Post_UAT_Message
    Sandbox_Check --> |"Error Message"| Post_email_failure_msg
    Get_Template --> Send_Transfer_Email
    Transfer_Incomplete_Calculations --> END_Transfer_Incomplete_Calculations
    START -->  Get_Template
    END_Transfer_Incomplete_Calculations(( END )):::endClass
    
    
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
    |Record Trigger Type| Update|
    |Label|Case | After Save | CE to Ops Transfer|
    |Status|Active|
    |Filter Formula|{!$Record.Case_Team_New__c} = 'Compliance' && {!$Record__Prior.Case_Team_New__c} = 'Client Support'|
    |Description|Sends email alert to case contact when case is transferred from CE to back office team with an SLA update.|
    |Environments|Default|
    |Interview Label|Case | After Save | CE to PC&R Transfer {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Template](#get_template)|
    |Next Node|[Get_Template](#get_template)|
    
    
    ## Text Templates
    
    |Name|Text|Description|
    |:-- |:-- |:--  |
    |errorPostBody|Failed to send email to case contact on transfer.<br/>Error Message: {!$Flow.FaultMessage}|<!-- -->|
    |uatPostBody|Cannot send outbound email from sandbox/UAT.  Please see below samples and verify accuracy:<br/>"Hello {!$Record.Contact.FirstName}"<br/>"Within {!$Record.Expected_Days_to_Close__c} business days"<br/>"no later than {!$Record.Goal_Close_Formatted__c}"|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Post_email_failure_msg
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Post email failure msg|
    |Action Type|Chatter Post|
    |Action Name|chatterPost|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|chatterPost|
    |Offset|0|
    |Store Output Automatically|✅|
    |Text (input)|errorPostBody|
    |Subject Name Or Id (input)|$Record.Id|
    |Connector|isGoTo: true<br/>targetReference: Transfer_Incomplete_Calculations<br/>|
    
    
    ### Post_UAT_Message
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Post UAT Message|
    |Action Type|Chatter Post|
    |Action Name|chatterPost|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|chatterPost|
    |Offset|0|
    |Store Output Automatically|✅|
    |Text (input)|uatPostBody|
    |Subject Name Or Id (input)|$Record.Id|
    |Connector|isGoTo: true<br/>targetReference: Transfer_Incomplete_Calculations<br/>|
    
    
    ### Send_Transfer_Email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send Transfer Email|
    |Action Type|Email Simple|
    |Action Name|emailSimple|
    |Fault Connector|[Sandbox_Check](#sandbox_check)|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|emailSimple|
    |Offset|0|
    |Version String|1.0.1|
    |Sender Type (input)|OrgWideEmailAddress|
    |Sender Address (input)|support@myubiquity.com|
    |Use Email Template (input)|True|
    |Email Template Id (input)|Get_Template.Id|
    |Recipient Id (input)|$Record.ContactId|
    |Related Record Id (input)|$Record.Id|
    |Log Email On Send (input)|✅|
    |Add Threading Token To Body (input)|✅|
    |Connector|[Transfer_Incomplete_Calculations](#transfer_incomplete_calculations)|
    
    
    ### Sandbox_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Sandbox Check|
    |Default Connector|[Post_email_failure_msg](#post_email_failure_msg)|
    |Default Connector Label|Error Message|
    
    
    #### Rule UAT (UAT)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Post_UAT_Message](#post_uat_message)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Api.Partner_Server_URL_340| Contains|sandbox|
    
    
    
    
    ### Get_Template
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|EmailTemplate|
    |Label|Get Template|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|Id|
    |Store Output Automatically|✅|
    |Connector|[Send_Transfer_Email](#send_transfer_email)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|DeveloperName| Equal To|Ops_Transfer_External|
    
    
    
    
    ### Transfer_Incomplete_Calculations
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Transfer Incomplete Calculations|
    |Input Reference|$Record.Calculations__r|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Status__c| Not Equal To|Delivered|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |OwnerId|$Record.OwnerId|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

