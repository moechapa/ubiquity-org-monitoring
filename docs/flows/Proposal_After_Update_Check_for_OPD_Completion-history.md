# Proposal_After_Update_Check_for_OPD_Completion history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Proposal_After_Update_Check_for_OPD_Completion-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "4170827027"
    
    Connected_Partner{"🔀 <em></em><br/>Connected Partner"}:::decisions
    click Connected_Partner "#connected_partner" "1495122790"
    
    OPD_Completion{"🔀 <em></em><br/>OPD Completion"}:::decisions
    click OPD_Completion "#opd_completion" "1411497283"
    
    OPD_Completion_0{"🔀 <em></em><br/>OPD Completion"}:::decisions
    click OPD_Completion_0 "#opd_completion_0" "3109967764"
    
    Update_OPD_Status[("🛠️ <em></em><br/>Update OPD Status")]:::recordUpdates
    click Update_OPD_Status "#update_opd_status" "3729055964"
    
    Update_Opportunity[("🛠️ <em></em><br/>Update Opportunity")]:::recordUpdates
    click Update_Opportunity "#update_opportunity" "121952051"
    
    Connected_Partner --> |"Schwab"| OPD_Completion_0
    Connected_Partner --> |"No Schwab"| OPD_Completion
    OPD_Completion --> |"OPD Complete"| Update_OPD_Status
    OPD_Completion --> |"OPD Incomplete"| END_OPD_Completion
    OPD_Completion_0 --> |"OPD Complete"| Update_OPD_Status
    OPD_Completion_0 --> |"OPD Incomplete"| END_OPD_Completion_0
    Update_OPD_Status --> Update_Opportunity
    Update_Opportunity --> END_Update_Opportunity
    START -->  Connected_Partner
    END_OPD_Completion(( END )):::endClass
    END_OPD_Completion_0(( END )):::endClass
    END_Update_Opportunity(( END )):::endClass
    
    
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
    |Label|Proposal | After Update | Check for OPD Completion|
    |Status|Active|
    |Environments|Default|
    |Interview Label|Proposal | After Update | Check for OPD Completion {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Connected_Partner](#connected_partner)|
    |Next Node|[Connected_Partner](#connected_partner)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|RecordTypeId| Equal To|0121G000000AjeLQAS|
    
    
    ## Flow Nodes Details
    
    ### Connected_Partner
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Connected Partner|
    |Default Connector|[OPD_Completion](#opd_completion)|
    |Default Connector Label|No Schwab|
    
    
    #### Rule Schwab (Schwab)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[OPD_Completion_0](#opd_completion_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Opportunity__r.Connected_Partner__c| Contains|Schwab|
    
    
    
    
    ### OPD_Completion
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|OPD Completion|
    |Default Connector Label|OPD Incomplete|
    
    
    #### Rule OPD_Complete (OPD Complete)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_OPD_Status](#update_opd_status)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Current_Recent_SIMPLE_Plan__c| Is Null|⬜|
    |2|$Record.Previously_Sponsored_401_k_Plan__c| Is Null|⬜|
    |3|$Record.Current_Sponsor_of_Other_Plans__c| Is Null|⬜|
    
    
    
    
    ### OPD_Completion_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|OPD Completion|
    |Default Connector Label|OPD Incomplete|
    
    
    #### Rule OPD_Complete_0 (OPD Complete)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_OPD_Status](#update_opd_status)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Current_Recent_SIMPLE_Plan__c| Is Null|⬜|
    |2|$Record.Previously_Sponsored_401_k_Plan__c| Is Null|⬜|
    |3|$Record.Current_Sponsor_of_Other_Plans__c| Is Null|⬜|
    |4|$Record.Any_Current_Legal_Proceedings__c| Is Null|⬜|
    
    
    
    
    ### Update_OPD_Status
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update OPD Status|
    |Input Reference|$Record|
    |Connector|[Update_Opportunity](#update_opportunity)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |OPD_Status__c|Completed|
    
    
    
    
    ### Update_Opportunity
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Opportunity|
    |Label|Update Opportunity|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$Record.Opportunity__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |OPD_Complete__c|✅|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

