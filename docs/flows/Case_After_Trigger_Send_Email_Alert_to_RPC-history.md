# Case_After_Trigger_Send_Email_Alert_to_RPC history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Case_After_Trigger_Send_Email_Alert_to_RPC-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "623283535"
    
    Send_RPC_Alert("📧 <em></em><br/>Send RPC Alert"):::actionCalls
    click Send_RPC_Alert "#send_rpc_alert" "1739314216"
    
    Owner_is_RPC{"🔀 <em></em><br/>Owner is RPC"}:::decisions
    click Owner_is_RPC "#owner_is_rpc" "3856293094"
    
    Send_RPC_Alert --> END_Send_RPC_Alert
    Owner_is_RPC --> |"Yes"| Send_RPC_Alert
    Owner_is_RPC --> |"Default Outcome"| END_Owner_is_RPC
    START -->  Owner_is_RPC
    END_Send_RPC_Alert(( END )):::endClass
    END_Owner_is_RPC(( END )):::endClass
    
    
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
    |Label|Case | After Trigger | Send JIRA Comment Email Alert to RPC|
    |Status|Obsolete|
    |Environments|Default|
    |Interview Label|Case | After Trigger | Send Email Alert to RPC {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Owner_is_RPC](#owner_is_rpc)|
    |Next Node|[Owner_is_RPC](#owner_is_rpc)|
    
    
    #### Filters (logic: **(1 OR 2) AND 3**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Status| Equal To|New JIRA Comment|
    |2|Status| Equal To|Child Case Resolved|
    |3|Status| Is Changed|✅|
    
    
    ## Flow Nodes Details
    
    ### Send_RPC_Alert
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send RPC Alert|
    |Action Type|Email Alert|
    |Action Name|Case.New_JIRA_Comment_RPCs|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Case.New_JIRA_Comment_RPCs|
    | SObject Row Id (input)|$Record.Id|
    
    
    ### Owner_is_RPC
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Owner is RPC|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Send_RPC_Alert](#send_rpc_alert)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Owner:User.UserRole.Name| Equal To|Retirement Plan Consultant|
    |2|$Record.Owner:User.IsActive| Equal To|✅|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

