# Proposal_Scheduled_Simply_Proposal_Closed_Lost history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Proposal_Scheduled_Simply_Proposal_Closed_Lost-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Scheduled</b>"]):::startClass
    click START "#general-information" "2254850930"
    
    Mark_Closed_Lost[\"🟰 <em></em><br/>Mark Closed Lost"/]:::assignments
    click Mark_Closed_Lost "#mark_closed_lost" "240818851"
    
    Expired_Eligibility{"🔀 <em></em><br/>Expired Eligibility"}:::decisions
    click Expired_Eligibility "#expired_eligibility" "1816251799"
    
    Update_Proposal[("🛠️ <em></em><br/>Update Proposal")]:::recordUpdates
    click Update_Proposal "#update_proposal" "772895119"
    
    Mark_Closed_Lost --> Update_Proposal
    Expired_Eligibility --> |"Eligible"| Mark_Closed_Lost
    Expired_Eligibility --> |"Ineligble"| END_Expired_Eligibility
    Update_Proposal --> END_Update_Proposal
    START -->  Expired_Eligibility
    END_Expired_Eligibility(( END )):::endClass
    END_Update_Proposal(( END )):::endClass
    
    
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
    |Trigger Type| Scheduled|
    |Label|Proposal | Scheduled | Simply Proposal Closed Lost|
    |Status|Obsolete|
    |Description|Fixed entry conditions and eligibility decision|
    |Environments|Default|
    |Interview Label|Proposal | Scheduled | Simply Proposal Closed Lost {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Expired_Eligibility](#expired_eligibility)|
    |Next Node|[Expired_Eligibility](#expired_eligibility)|
    
    
    #### Schedules
    
    |Frequency|Start Date|Start Time|
    |:-- |:--:|:--: |
    |Daily|Apr 21, 2022|03:00|
    
    
    #### Filters (logic: **1 AND (2 OR 3 OR 4 OR 5) AND 6**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Principal_Id__c| Is Null|<!-- -->|
    |2|Principal_Opportunity_Stage__c| Equal To|Qualification|
    |3|Principal_Opportunity_Stage__c| Equal To|Proposal / Price Quote|
    |4|Principal_Opportunity_Stage__c| Equal To|Presentation|
    |5|Principal_Opportunity_Stage__c| Equal To|Pending|
    |6|Principal_Opportunity_Id__c| Is Null|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |expiryNotes|String|"Automatically expired on: " + TEXT(TODAY())+ BR() +BR() +<br/>{!$Record.Proposal_Notes__c}|Adds record of auto expiration to proposal notes|
    |sixtyDaysAgo|Date|TODAY()-60|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Mark_Closed_Lost
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Mark Closed Lost|
    |Connector|[Update_Proposal](#update_proposal)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Status__c| Assign|Expired Save/Share|
    |$Record.Principal_Opportunity_Stage__c| Assign|Closed Lost|
    |$Record.Principal_Opportunity_Closed_Lost_Reason__c| Assign|Unknown|
    |$Record.Stage_Flag__c| Assign|Expired Save/Share|
    |$Record.Proposal_Notes__c| Assign|expiryNotes|
    
    
    
    
    ### Expired_Eligibility
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Expired Eligibility|
    |Default Connector Label|Ineligble|
    
    
    #### Rule Eligible (Eligible)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Mark_Closed_Lost](#mark_closed_lost)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.CreatedDate| Less Than Or Equal To|sixtyDaysAgo|
    
    
    
    
    ### Update_Proposal
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Proposal|
    |Input Reference|$Record|
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

