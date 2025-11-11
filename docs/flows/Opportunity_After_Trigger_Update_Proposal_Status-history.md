# Opportunity_After_Trigger_Update_Proposal_Status history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Opportunity_After_Trigger_Update_Proposal_Status-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "1131379829"
    
    Proposal_Found{"🔀 <em></em><br/>Proposal Found and OPD?"}:::decisions
    click Proposal_Found "#proposal_found" "1444064284"
    
    Get_Proposal[("🔍 <em></em><br/>Get Proposal")]:::recordLookups
    click Get_Proposal "#get_proposal" "569910270"
    
    Update_Proposal[("🛠️ <em></em><br/>Update Proposal")]:::recordUpdates
    click Update_Proposal "#update_proposal" "1762029472"
    
    Proposal_Found --> |"Yes"| Update_Proposal
    Proposal_Found --> |"Default Outcome"| END_Proposal_Found
    Get_Proposal --> Proposal_Found
    Update_Proposal --> END_Update_Proposal
    START -->  Get_Proposal
    END_Proposal_Found(( END )):::endClass
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
    |Object|Opportunity|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create And Update|
    |Label|Opportunity | After Trigger | Update Proposal Status|
    |Status|Active|
    |Description|Updates proposal status after Opportunity is Closed Won|
    |Environments|Default|
    |Interview Label|Opportunity | After Trigger | Update Proposal Status {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Proposal](#get_proposal)|
    |Next Node|[Get_Proposal](#get_proposal)|
    
    
    #### Filters (logic: **1 AND 2 AND 3 AND 4 AND 5**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|StageName| Is Changed|✅|
    |2|StageName| Equal To|Closed Won|
    |3|Service_Option__c| Not Equal To|Simply Retirement|
    |4|Service_Option__c| Not Equal To|Simply Retirement Bundled|
    |5|Service_Option__c| Not Equal To|Simply Retirement Unbundled|
    
    
    ## Flow Nodes Details
    
    ### Proposal_Found
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Proposal Found and OPD?|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Proposal](#update_proposal)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Proposal.Id| Is Blank|⬜|
    |2|Get_Proposal.RecordTypeId| Equal To|0121G000000AjeLQAS|
    
    
    
    
    ### Get_Proposal
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Proposal__c|
    |Label|Get Proposal|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Sort Field|CreatedDate|
    |Sort Order|Desc|
    |Store Output Automatically|✅|
    |Connector|[Proposal_Found](#proposal_found)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Opportunity__c| Equal To|$Record.Id|
    
    
    
    
    ### Update_Proposal
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Proposal__c|
    |Label|Update Proposal|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Opportunity__c| Equal To|$Record.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Status__c|Purchased|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

