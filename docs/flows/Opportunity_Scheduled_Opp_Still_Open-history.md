# Opportunity_Scheduled_Opp_Still_Open history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Opportunity_Scheduled_Opp_Still_Open-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Scheduled</b>"]):::startClass
    click START "#general-information" "471113964"
    
    Email_Owner("📧 <em></em><br/>Email Owner"):::actionCalls
    click Email_Owner "#email_owner" "2927010631"
    
    Last_Touch_Check{"🔀 <em></em><br/>Last Touch Check"}:::decisions
    click Last_Touch_Check "#last_touch_check" "3581285839"
    
    Email_Owner --> END_Email_Owner
    Last_Touch_Check --> |"Last Touch 48 Hours"| Email_Owner
    Last_Touch_Check --> |"Default Outcome"| END_Last_Touch_Check
    START -->  Last_Touch_Check
    END_Email_Owner(( END )):::endClass
    END_Last_Touch_Check(( END )):::endClass
    
    
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
    |Object|Opportunity|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Scheduled|
    |Label|Opportunity | Scheduled | Opp Still Open|
    |Status|Active|
    |Interview Label|Opportunity | Scheduled | Follow Up if Opp is Not Closed {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Last_Touch_Check](#last_touch_check)|
    |Next Node|[Last_Touch_Check](#last_touch_check)|
    
    
    #### Schedules
    
    |Frequency|Start Date|Start Time|
    |:-- |:--:|:--: |
    |Daily|Feb 24, 2022|07:00|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|StageName| Equal To|Pending Signature|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |oppId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    |oppOwner|String|⬜|✅|✅|<!-- -->|<!-- -->|
    |recordId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    |taskId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |twoDaysAgo|Date|TODAY() - 2|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Email_Owner
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Email Owner|
    |Action Type|Email Alert|
    |Action Name|Opportunity.Opportunity_Still_Open|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Opportunity.Opportunity_Still_Open|
    | SObject Row Id (input)|oppId|
    
    
    ### Last_Touch_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Last Touch Check|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Last_Touch_48_Hours (Last Touch 48 Hours)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Email_Owner](#email_owner)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.LastModifiedDate| Equal To|twoDaysAgo|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

