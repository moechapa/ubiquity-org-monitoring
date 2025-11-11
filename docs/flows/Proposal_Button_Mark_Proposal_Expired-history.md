# Proposal_Button_Mark_Proposal_Expired history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Proposal_Button_Mark_Proposal_Expired-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Screen Flow</b>"]):::startClass
    click START "#general-information" "2807355677"
    
    Add_Expiration_Status_Flag[\"🟰 <em></em><br/>Add Expiration Status/Flag"/]:::assignments
    click Add_Expiration_Status_Flag "#add_expiration_status_flag" "2489352481"
    
    Get[("🔍 <em></em><br/>Get")]:::recordLookups
    click Get "#get" "3060632746"
    
    Update[("🛠️ <em></em><br/>Update")]:::recordUpdates
    click Update "#update" "783951013"
    
    Add_Expiration_Status_Flag --> Update
    Get --> Add_Expiration_Status_Flag
    Update --> END_Update
    START -->  Get
    END_Update(( END )):::endClass
    
    
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
    |Process Type| Flow|
    |Label|Proposal | Button | Mark Proposal Expired|
    |Status|Active|
    |Description|Record page button to mark a proposal as expired by setting stage flag and status to "Expired Save/Share" and appending the notes with "Manually marked expired on {Today's Date}|
    |Environments|Default|
    |Interview Label|Proposal | Button | Mark Proposal Expired {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get](#get)|
    |Next Node|[Get](#get)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |Proposal|SObject|⬜|✅|⬜|Proposal__c|<!-- -->|
    |recordId|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |ExpiryNotes|String|"Marked expired on: " + TEXT(TODAY())+ " by " + {!$User.FirstName} + " "+{!$User.LastName}+ BR() +BR() +<br/>{!Proposal.Proposal_Notes__c}|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Add_Expiration_Status_Flag
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add Expiration Status/Flag|
    |Connector|[Update](#update)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Proposal.Status__c| Assign|Expired Save/Share|
    |Proposal.Stage_Flag__c| Assign|Expired Save/Share|
    |Proposal.Proposal_Notes__c| Assign|ExpiryNotes|
    
    
    
    
    ### Get
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Proposal__c|
    |Label|[Get](#get)|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|Proposal|
    |Queried Fields|- Id<br/>- Stage_Flag__c<br/>- Proposal_Notes__c<br/>- Status__c<br/>|
    |Connector|[Add_Expiration_Status_Flag](#add_expiration_status_flag)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Update
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|[Update](#update)|
    |Input Reference|Proposal|
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

