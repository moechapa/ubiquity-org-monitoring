# Fee_Waiver_After_Update_Approval_Rejection_Steps history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Fee_Waiver_After_Update_Approval_Rejection_Steps-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "3526644106"
    
    Approved_Chatter_Message("⚡ <em></em><br/>Approved Chatter Message"):::actionCalls
    click Approved_Chatter_Message "#approved_chatter_message" "2576930081"
    
    Send_Chatter_to_Alert_of_Rejection("⚡ <em></em><br/>Send Chatter to Alert of Rejection"):::actionCalls
    click Send_Chatter_to_Alert_of_Rejection "#send_chatter_to_alert_of_rejection" "3898532322"
    
    Approved_or_Denied{"🔀 <em></em><br/>Approved or Denied?"}:::decisions
    click Approved_or_Denied "#approved_or_denied" "2725255517"
    
    Create_Case_for_A_F[("➕ <em></em><br/>Create Case for A&F")]:::recordCreates
    click Create_Case_for_A_F "#create_case_for_a_f" "2238612731"
    
    Approved_Chatter_Message --> END_Approved_Chatter_Message
    Send_Chatter_to_Alert_of_Rejection --> END_Send_Chatter_to_Alert_of_Rejection
    Approved_or_Denied --> |"Approved"| Create_Case_for_A_F
    Approved_or_Denied --> |"Denied"| Send_Chatter_to_Alert_of_Rejection
    Create_Case_for_A_F --> Approved_Chatter_Message
    START -->  Approved_or_Denied
    END_Approved_Chatter_Message(( END )):::endClass
    END_Send_Chatter_to_Alert_of_Rejection(( END )):::endClass
    
    
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
    |Object|Fee_Waiver__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Update|
    |Label|Fee Waiver | After Update | Approval/Rejection Steps|
    |Status|Active|
    |Does Require Record Changed To Meet Criteria|✅|
    |Environments|Default|
    |Interview Label|Fee Waiver | After Update | Approval/Rejection Steps {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Approved_or_Denied](#approved_or_denied)|
    |Next Node|[Approved_or_Denied](#approved_or_denied)|
    
    
    #### Filters (logic: **or**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Fee_Waiver_Status__c| Equal To|Approval Granted|
    |2|Fee_Waiver_Status__c| Equal To|Approval Denied|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |linkToRecord|String|LEFT($Api.Partner_Server_URL_260, FIND( '/services', $Api.Partner_Server_URL_260)) & {!$Record.Id}|<!-- -->|
    
    
    ## Text Templates
    
    |Name|Text|Description|
    |:-- |:-- |:--  |
    |afDesc|Hello, a ${!$Record.Amount__c} Fee Waiver Request for {!$Record.Account__r.Name} has been approved. Please create a fee waiver for the client and close this case when the waiver has been applied. Thank you!<br/>Link to Record: {!linkToRecord}<br/>Amount: ${!$Record.Amount__c}<br/>Reason: {!$Record.Reason_for_Fee_Waiver__c}<br/>Type: {!$Record.Refund_Type__c}|<!-- -->|
    |afSubj|Approved Fee Waiver Request for {!$Record.Account__r.Name}|<!-- -->|
    |approvedChatter|Fee waiver approved, child case was created for A&F.|<!-- -->|
    |rejectionChatter|Hello, the ${!$Record.Amount__c} fee waiver request for {!$Record.Account__r.Name} has been denied. Please let the requestor know we will not be processing a fee waiver for them.|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Approved_Chatter_Message
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Approved Chatter Message|
    |Action Type|Chatter Post|
    |Action Name|chatterPost|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|chatterPost|
    |Offset|0|
    |Store Output Automatically|✅|
    |Text (input)|approvedChatter|
    |Subject Name Or Id (input)|$Record.Case__c|
    
    
    ### Send_Chatter_to_Alert_of_Rejection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send Chatter to Alert of Rejection|
    |Action Type|Chatter Post|
    |Action Name|chatterPost|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|chatterPost|
    |Offset|0|
    |Store Output Automatically|✅|
    |Text (input)|rejectionChatter|
    |Subject Name Or Id (input)|$Record.Case__c|
    
    
    ### Approved_or_Denied
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Approved or Denied?|
    |Default Connector|[Send_Chatter_to_Alert_of_Rejection](#send_chatter_to_alert_of_rejection)|
    |Default Connector Label|Denied|
    
    
    #### Rule Approved (Approved)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Create_Case_for_A_F](#create_case_for_a_f)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Fee_Waiver_Status__c| Equal To|Approval Granted|
    
    
    
    
    ### Create_Case_for_A_F
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Create Case for A&F|
    |Store Output Automatically|✅|
    |Connector|[Approved_Chatter_Message](#approved_chatter_message)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|$Record.Account__c|
    |Category__c|Billing, Commissions, and Fees|
    |Department__c|Accounting & Finance|
    |Description|afDesc|
    |OwnerId|00500000006yEak|
    |ParentId|$Record.Case__c|
    |Plan__c|$Record.Case__r.Plan__c|
    |Sender_Role__c|Sponsor|
    |Sub_Category__c|Refund or Waive Request|
    |Subject|afSubj|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

