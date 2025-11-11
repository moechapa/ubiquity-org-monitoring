# Proposal_After_Update_RPC_OOO history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Proposal_After_Update_RPC_OOO-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "3341294232"
    
    Send_Email_Notification("📧 <em></em><br/>Send Email Notification"):::actionCalls
    click Send_Email_Notification "#send_email_notification" "1055136084"
    
    Run_Check{"🔀 <em></em><br/>Run Check"}:::decisions
    click Run_Check "#run_check" "3273832356"
    
    Grab_Designated_Backup[("🔍 <em></em><br/>Grab Designated Backup")]:::recordLookups
    click Grab_Designated_Backup "#grab_designated_backup" "1266830354"
    
    Assign_to_Backup_RPC[("🛠️ <em></em><br/>Assign to Backup RPC")]:::recordUpdates
    click Assign_to_Backup_RPC "#assign_to_backup_rpc" "2237824217"
    
    Send_Email_Notification --> END_Send_Email_Notification
    Run_Check --> |"Run Flow"| Grab_Designated_Backup
    Run_Check --> |"Default Outcome"| END_Run_Check
    Grab_Designated_Backup --> Assign_to_Backup_RPC
    Assign_to_Backup_RPC --> Send_Email_Notification
    START -->  Run_Check
    END_Send_Email_Notification(( END )):::endClass
    END_Run_Check(( END )):::endClass
    
    
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
    |Object|Proposal__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create And Update|
    |Label|Proposal | After Update | RPC OOO|
    |Status|Obsolete|
    |Description|Assigns new partner proposals to backup RPC - updated for Robby summer OOO|
    |Environments|Default|
    |Interview Label|Proposal | After Update | RPC OOO {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Run_Check](#run_check)|
    |Next Node|[Run_Check](#run_check)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|OwnerId| Contains|00500000006vlyn|
    |2|CreatedDate| Greater Than Or Equal To|dateTimeValue: '2023-06-26T05:00:00.000Z'<br/>|
    |3|CreatedDate| Less Than Or Equal To|dateTimeValue: '2023-07-01T01:00:00.000Z'<br/>|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |newOwnerEmail|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |newOwnerFirstName|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |newOwnerId|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |isNew|Boolean|ISNEW()|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Send_Email_Notification
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send Email Notification|
    |Action Type|Email Simple|
    |Action Name|emailSimple|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|emailSimple|
    |Email Body (input)|emailBody|
    |Email Addresses (input)|newOwnerEmail|
    |Sender Type (input)|DefaultWorkflowUser|
    |Email Subject (input)|New Proposal Assigned|
    
    
    ### Run_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Run Check|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Flow_already_ran (Flow already ran!)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Ownership_Override__c| Equal To|✅|
    
    
    
    
    #### Rule Run_Flow (Run Flow)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Grab_Designated_Backup](#grab_designated_backup)|
    |Condition Logic|(1 AND 2 AND 5 AND 6) OR (3 AND 4 AND 8 AND 7)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Flow.CurrentDate| Greater Than Or Equal To|dateValue: '2023-06-13'<br/>|
    |2|$Flow.CurrentDate| Less Than Or Equal To|dateValue: '2023-06-19'<br/>|
    |3|$Flow.CurrentDate| Greater Than Or Equal To|dateValue: '2023-06-26'<br/>|
    |4|$Flow.CurrentDate| Less Than Or Equal To|dateValue: '2023-06-30'<br/>|
    |5|$Record.CreatedDate| Greater Than Or Equal To|dateTimeValue: '2023-06-13T05:00:00.000Z'<br/>|
    |6|$Record.CreatedDate| Less Than Or Equal To|dateTimeValue: '2023-06-20T01:00:00.000Z'<br/>|
    |7|$Record.CreatedDate| Greater Than Or Equal To|dateTimeValue: '2023-06-26T05:00:00.000Z'<br/>|
    |8|$Record.CreatedDate| Less Than Or Equal To|dateTimeValue: '2023-07-01T01:00:00.000Z'<br/>|
    
    
    
    
    ### Grab_Designated_Backup
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|User|
    |Label|Grab Designated Backup|
    |Assign Null Values If No Records Found|⬜|
    |Output Assignments|- assignToReference: newOwnerEmail<br/>&nbsp;&nbsp;field: Email<br/>- assignToReference: newOwnerFirstName<br/>&nbsp;&nbsp;field: FirstName<br/>- assignToReference: newOwnerId<br/>&nbsp;&nbsp;field: Id<br/>|
    |Connector|[Assign_to_Backup_RPC](#assign_to_backup_rpc)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|00500000006olCp|
    
    
    
    
    ### Assign_to_Backup_RPC
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Assign to Backup RPC|
    |Description|Assign to RPC that sales management has designated as backup|
    |Input Reference|$Record|
    |Connector|[Send_Email_Notification](#send_email_notification)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |OwnerId|newOwnerId|
    |Ownership_Override__c|✅|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

