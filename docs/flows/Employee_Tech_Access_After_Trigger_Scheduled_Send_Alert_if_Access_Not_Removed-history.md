# Employee_Tech_Access_After_Trigger_Scheduled_Send_Alert_if_Access_Not_Removed history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Employee_Tech_Access_After_Trigger_Scheduled_Send_Alert_if_Access_Not_Removed-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "205110188"
    
    Send_ANYR_Alert("📧 <em></em><br/>Send ANYR Alert"):::actionCalls
    click Send_ANYR_Alert "#send_anyr_alert" "3620033108"
    
    Send_Kotapay_Removal("📧 <em></em><br/>Send Kotapay Removal"):::actionCalls
    click Send_Kotapay_Removal "#send_kotapay_removal" "612111130"
    
    Access_Removed_Still_Blank{"🔀 <em></em><br/>Access Removed Still Blank?"}:::decisions
    click Access_Removed_Still_Blank "#access_removed_still_blank" "704119335"
    
    Kotapay{"🔀 <em></em><br/>Kotapay?"}:::decisions
    click Kotapay "#kotapay" "4043428280"
    
    Send_ANYR_Alert --> END_Send_ANYR_Alert
    Send_Kotapay_Removal --> END_Send_Kotapay_Removal
    Access_Removed_Still_Blank --> |"Still Blank"| Send_ANYR_Alert
    Access_Removed_Still_Blank --> |"Default Outcome"| END_Access_Removed_Still_Blank
    Kotapay --> |"Yes"| Send_Kotapay_Removal
    Kotapay --> |"Default Outcome"| END_Kotapay
    START --> |"Run Immediately"| Kotapay
    START --> |"Access Not Yet Removed Check"| Access_Removed_Still_Blank
    END_Send_ANYR_Alert(( END )):::endClass
    END_Send_Kotapay_Removal(( END )):::endClass
    END_Access_Removed_Still_Blank(( END )):::endClass
    END_Kotapay(( END )):::endClass
    
    
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
    |Object|Employee_Technology_Access__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create And Update|
    |Label|Employee Tech Access | After Trigger, Scheduled | Send Alert if Access Not Removed|
    |Status|Active|
    |Does Require Record Changed To Meet Criteria|✅|
    |Description|After 6 hours, if Access_Removed_Date is NULL, send alert to Requested_by and Compliance|
    |Environments|Default|
    |Interview Label|Employee Tech Access | After Trigger, Scheduled | Send Alert if Access Not Removed {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Kotapay](#kotapay)|
    |Next Node|[Kotapay](#kotapay)|
    
    
    #### Scheduled Paths
    
    |Label|Name|Offset Number|Offset Unit|Record Field|Time Source|Connector|
    |:-- |:-- |:-- |:-- |:-- |:-- |:--  |
    |Access Not Yet Removed Check|Access_Not_Yet_Removed_Check|6|Hours|LastModifiedDate|RecordField|[Access_Removed_Still_Blank](#access_removed_still_blank)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Access_Removed_Requested__c| Is Null|<!-- -->|
    |2|Access_Removed_Date__c| Is Null|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |now|DateTime|NOW()|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Send_ANYR_Alert
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send ANYR Alert|
    |Action Type|Email Alert|
    |Action Name|Employee_Technology_Access__c.ETA_Access_Not_Yet_Removed|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Employee_Technology_Access__c.ETA_Access_Not_Yet_Removed|
    | SObject Row Id (input)|$Record.Id|
    
    
    ### Send_Kotapay_Removal
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send Kotapay Removal|
    |Action Type|Email Alert|
    |Action Name|Employee_Technology_Access__c.HR_Kotapay_Access_Removal_Request|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Employee_Technology_Access__c.HR_Kotapay_Access_Removal_Request|
    | SObject Row Id (input)|$Record.Id|
    
    
    ### Access_Removed_Still_Blank
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Access Removed Still Blank?|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Still_Blank (Still Blank)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Send_ANYR_Alert](#send_anyr_alert)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Access_Removed_Date__c| Is Null|✅|
    
    
    
    
    ### Kotapay
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Kotapay?|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Send_Kotapay_Removal](#send_kotapay_removal)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Product_Name__c| Equal To|[Kotapay](#kotapay)|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

