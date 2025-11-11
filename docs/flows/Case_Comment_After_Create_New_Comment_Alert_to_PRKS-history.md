# Case_Comment_After_Create_New_Comment_Alert_to_PRKS history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Case_Comment_After_Create_New_Comment_Alert_to_PRKS-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "3023939589"
    
    Send_Alert_to_PRKS("📧 <em></em><br/>Send Alert to PRKS"):::actionCalls
    click Send_Alert_to_PRKS "#send_alert_to_prks" "800351108"
    
    Case_Found{"🔀 <em></em><br/>Case Found?"}:::decisions
    click Case_Found "#case_found" "1683990028"
    
    Get_Case[("🔍 <em></em><br/>Get Case")]:::recordLookups
    click Get_Case "#get_case" "229680491"
    
    Update_Public_Box[("🛠️ <em></em><br/>Update Public Box")]:::recordUpdates
    click Update_Public_Box "#update_public_box" "362904174"
    
    Send_Alert_to_PRKS --> END_Send_Alert_to_PRKS
    Case_Found --> |"Case Found"| Update_Public_Box
    Case_Found --> |"Default Outcome"| END_Case_Found
    Get_Case --> Case_Found
    Update_Public_Box --> Send_Alert_to_PRKS
    START -->  Get_Case
    END_Send_Alert_to_PRKS(( END )):::endClass
    END_Case_Found(( END )):::endClass
    
    
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
    |Record Trigger Type| Create|
    |Label|Case Comment | After Create | New Comment Alert to PRKS|
    |Status|Active|
    |Environments|Default|
    |Interview Label|Case Comment | After Create | New Comment Alert to PRKS {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Case](#get_case)|
    |Next Node|[Get_Case](#get_case)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |jiraCase|SObject|⬜|✅|⬜|Case|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Send_Alert_to_PRKS
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send Alert to PRKS|
    |Action Type|Email Alert|
    |Action Name|CaseComment.Case_Comment_Notification|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|CaseComment.Case_Comment_Notification|
    |Offset|0|
    | SObject Row Id (input)|$Record.Id|
    
    
    ### Case_Found
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Case Found?|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Case_found1 (Case Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Public_Box](#update_public_box)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|jiraCase.Id| Is Blank|⬜|
    
    
    
    
    ### Get_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Case|
    |Label|Get Case|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|jiraCase|
    |Queried Fields|- Id<br/>- JIRA_Ticket_Owner__c<br/>- JIRA_Ticket_Number__c<br/>- CaseNumber<br/>- Case_Owner_Name__c<br/>- OwnerId<br/>- Ubiquity_Admin__c<br/>|
    |Connector|[Case_Found](#case_found)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$Record.ParentId|
    |2|Case_Owner_Name__c| Contains|PRKS|
    |3|JIRA_Ticket_Number__c| Is Null|<!-- -->|
    
    
    
    
    ### Update_Public_Box
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Public Box|
    |Input Reference|$Record|
    |Connector|[Send_Alert_to_PRKS](#send_alert_to_prks)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |IsPublished|✅|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

