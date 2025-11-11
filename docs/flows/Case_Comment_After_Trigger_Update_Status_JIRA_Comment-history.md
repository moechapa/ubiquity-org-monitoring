# Case_Comment_After_Trigger_Update_Status_JIRA_Comment history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Case_Comment_After_Trigger_Update_Status_JIRA_Comment-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "1082080828"
    
    Send_Notification_to_PRKS("📧 <em></em><br/>Send Notification to PRKS"):::actionCalls
    click Send_Notification_to_PRKS "#send_notification_to_prks" "4040976351"
    
    Assign_New_Status[\"🟰 <em></em><br/>Assign New Status"/]:::assignments
    click Assign_New_Status "#assign_new_status" "305078126"
    
    Assign_reopened_status[\"🟰 <em></em><br/>Assign reopened status"/]:::assignments
    click Assign_reopened_status "#assign_reopened_status" "2100879371"
    
    Case_is_resolved_check{"🔀 <em></em><br/>Case is resolved check"}:::decisions
    click Case_is_resolved_check "#case_is_resolved_check" "886984336"
    
    Is_this_a_JIRA_case{"🔀 <em></em><br/>Is this a JIRA case?"}:::decisions
    click Is_this_a_JIRA_case "#is_this_a_jira_case" "3285084601"
    
    Grab_Parent_Case[("🔍 <em></em><br/>Grab Parent Case")]:::recordLookups
    click Grab_Parent_Case "#grab_parent_case" "2397356433"
    
    Commit_Status_Change[("🛠️ <em></em><br/>Commit Status Change")]:::recordUpdates
    click Commit_Status_Change "#commit_status_change" "3212866356"
    
    Send_Notification_to_PRKS --> END_Send_Notification_to_PRKS
    Assign_New_Status --> Commit_Status_Change
    Assign_reopened_status --> Assign_New_Status
    Case_is_resolved_check --> |"Case is resolved"| Assign_reopened_status
    Case_is_resolved_check --> |"Default Outcome"| Assign_New_Status
    Is_this_a_JIRA_case --> |"Yes"| Case_is_resolved_check
    Is_this_a_JIRA_case --> |"No"| END_Is_this_a_JIRA_case
    Grab_Parent_Case --> Is_this_a_JIRA_case
    Commit_Status_Change --> Send_Notification_to_PRKS
    START -->  Grab_Parent_Case
    END_Send_Notification_to_PRKS(( END )):::endClass
    END_Is_this_a_JIRA_case(( END )):::endClass
    
    
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
    |Object|CaseComment|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create And Update|
    |Label|Case Comment | After Trigger | Update Status JIRA Comment|
    |Status|⚠️ Draft|
    |Does Require Record Changed To Meet Criteria|✅|
    |Description|Updated to include sending alerts to PRKS and update case status when submitter comments on jira case|
    |Environments|Default|
    |Interview Label|Case Comment | After Trigger | {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Grab_Parent_Case](#grab_parent_case)|
    |Next Node|[Grab_Parent_Case](#grab_parent_case)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|IsPublished| Equal To|✅|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |ParentCase|SObject|⬜|⬜|⬜|Case|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Send_Notification_to_PRKS
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send Notification to PRKS|
    |Action Type|Email Alert|
    |Action Name|CaseComment.Case_Comment_Notification_3|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|CaseComment.Case_Comment_Notification_3|
    | SObject Row Id (input)|$Record.Id|
    
    
    ### Assign_New_Status
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign New Status|
    |Connector|[Commit_Status_Change](#commit_status_change)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |ParentCase.Status| Assign|JIRA Comment Sent|
    
    
    
    
    ### Assign_reopened_status
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign reopened status|
    |Connector|[Assign_New_Status](#assign_new_status)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |ParentCase.JIRA_Status__c| Assign|Reopened|
    
    
    
    
    ### Case_is_resolved_check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Case is resolved check|
    |Default Connector|[Assign_New_Status](#assign_new_status)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Case_is_resolved (Case is resolved)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_reopened_status](#assign_reopened_status)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|ParentCase.Status| Equal To|Resolved|
    
    
    
    
    ### Is_this_a_JIRA_case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Is this a JIRA case?|
    |Default Connector Label|No|
    
    
    #### Rule Yes (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Case_is_resolved_check](#case_is_resolved_check)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Parent.RecordTypeId| Equal To|01237000000EyimAAC|
    
    
    
    
    ### Grab_Parent_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Case|
    |Label|Grab Parent Case|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|ParentCase|
    |Queried Fields|- Id<br/>- Status<br/>- RecordTypeId<br/>- JIRA_Status__c<br/>|
    |Connector|[Is_this_a_JIRA_case](#is_this_a_jira_case)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$Record.ParentId|
    
    
    
    
    ### Commit_Status_Change
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Commit Status Change|
    |Input Reference|ParentCase|
    |Connector|[Send_Notification_to_PRKS](#send_notification_to_prks)|
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

