# Implementation_After_Trigger_Update_Proposal_Upon_Completion history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Implementation_After_Trigger_Update_Proposal_Upon_Completion-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "336256302"
    
    Copy_1_of_Assign_Closed_Lost_Stage[\"🟰 <em></em><br/>Copy 1 of Assign Closed Lost Stage"/]:::assignments
    click Copy_1_of_Assign_Closed_Lost_Stage "#copy_1_of_assign_closed_lost_stage" "1787080204"
    
    Copy_1_of_Assign_Closed_Won_Stage[\"🟰 <em></em><br/>Copy 1 of Assign Closed Won Stage"/]:::assignments
    click Copy_1_of_Assign_Closed_Won_Stage "#copy_1_of_assign_closed_won_stage" "1076172652"
    
    Copy_1_of_Assign_Effective_Date[\"🟰 <em></em><br/>Copy 1 of Assign Effective Date"/]:::assignments
    click Copy_1_of_Assign_Effective_Date "#copy_1_of_assign_effective_date" "4014906500"
    
    Copy_1_of_Effective_Date_Check{"🔀 <em></em><br/>Copy 1 of Effective Date Check"}:::decisions
    click Copy_1_of_Effective_Date_Check "#copy_1_of_effective_date_check" "957028231"
    
    Copy_1_of_Query_Validation{"🔀 <em></em><br/>Copy 1 of Query Validation"}:::decisions
    click Copy_1_of_Query_Validation "#copy_1_of_query_validation" "2097462172"
    
    Copy_1_of_Get_Proposal[("🔍 <em></em><br/>Copy 1 of Get Proposal")]:::recordLookups
    click Copy_1_of_Get_Proposal "#copy_1_of_get_proposal" "2817434757"
    
    Copy_1_of_Update_Proposal[("🛠️ <em></em><br/>Copy 1 of Update Proposal")]:::recordUpdates
    click Copy_1_of_Update_Proposal "#copy_1_of_update_proposal" "3635117882"
    
    Copy_1_of_Assign_Closed_Lost_Stage --> Copy_1_of_Update_Proposal
    Copy_1_of_Assign_Closed_Won_Stage --> Copy_1_of_Effective_Date_Check
    Copy_1_of_Assign_Effective_Date --> Copy_1_of_Update_Proposal
    Copy_1_of_Effective_Date_Check --> |"Copy 1 of Effective Date Needs Updating"| Copy_1_of_Assign_Effective_Date
    Copy_1_of_Effective_Date_Check --> |"Default Outcome"| Copy_1_of_Update_Proposal
    Copy_1_of_Query_Validation --> |"Copy 1 of Proposal Found, Closed Won"| Copy_1_of_Assign_Closed_Won_Stage
    Copy_1_of_Query_Validation --> |"Copy 1 of Proposal Found, No Start"| Copy_1_of_Assign_Closed_Lost_Stage
    Copy_1_of_Query_Validation --> |"Proposal Not Found"| END_Copy_1_of_Query_Validation
    Copy_1_of_Get_Proposal --> Copy_1_of_Query_Validation
    Copy_1_of_Update_Proposal --> END_Copy_1_of_Update_Proposal
    START -->  Copy_1_of_Get_Proposal
    END_Copy_1_of_Query_Validation(( END )):::endClass
    END_Copy_1_of_Update_Proposal(( END )):::endClass
    
    
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
    |Object|Implementation__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create And Update|
    |Label|Implementation | After Trigger | Update Proposal Upon Completion|
    |Status|Obsolete|
    |Does Require Record Changed To Meet Criteria|✅|
    |Description|Changed effective date update to only fire after imp is completed|
    |Environments|Default|
    |Interview Label|Implementation | After Trigger | Update Proposal Upon Completion {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Copy_1_of_Get_Proposal](#copy_1_of_get_proposal)|
    |Next Node|[Copy_1_of_Get_Proposal](#copy_1_of_get_proposal)|
    
    
    #### Filters (logic: **(1 OR 2) AND 3**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Implementation_Status__c| Equal To|Completed|
    |2|Implementation_Status__c| Equal To|No Start|
    |3|Business_Unit__c| Equal To|Simply Retirement|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |proposal|SObject|⬜|✅|⬜|Proposal__c|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Copy_1_of_Assign_Closed_Lost_Stage
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Copy 1 of Assign Closed Lost Stage|
    |Connector|[Copy_1_of_Update_Proposal](#copy_1_of_update_proposal)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |proposal.Principal_Opportunity_Stage__c| Assign|Closed Lost|
    |proposal.Principal_Opportunity_Closed_Lost_Reason__c| Assign|Case Not Taken|
    
    
    
    
    ### Copy_1_of_Assign_Closed_Won_Stage
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Copy 1 of Assign Closed Won Stage|
    |Connector|[Copy_1_of_Effective_Date_Check](#copy_1_of_effective_date_check)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |proposal.Principal_Opportunity_Stage__c| Assign|Closed Won|
    
    
    
    
    ### Copy_1_of_Assign_Effective_Date
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Copy 1 of Assign Effective Date|
    |Connector|[Copy_1_of_Update_Proposal](#copy_1_of_update_proposal)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |proposal.Plan_Effective_Date__c| Assign|$Record.Ubiquity_Plan_Effective_Date__c|
    
    
    
    
    ### Copy_1_of_Effective_Date_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Copy 1 of Effective Date Check|
    |Default Connector|[Copy_1_of_Update_Proposal](#copy_1_of_update_proposal)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Copy_1_of_Effective_Date_Needs_Updating (Copy 1 of Effective Date Needs Updating)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Copy_1_of_Assign_Effective_Date](#copy_1_of_assign_effective_date)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Ubiquity_Plan_Effective_Date__c| Not Equal To|proposal.Plan_Effective_Date__c|
    |2|$Record.Ubiquity_Plan_Effective_Date__c| Is Null|⬜|
    
    
    
    
    ### Copy_1_of_Query_Validation
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Copy 1 of Query Validation|
    |Default Connector Label|Proposal Not Found|
    
    
    #### Rule Copy_1_of_Proposal_Found_Closed_Won (Copy 1 of Proposal Found, Closed Won)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Copy_1_of_Assign_Closed_Won_Stage](#copy_1_of_assign_closed_won_stage)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|proposal.Id| Is Null|⬜|
    |2|$Record.Implementation_Status__c| Equal To|Completed|
    
    
    
    
    #### Rule Copy_1_of_Proposal_Found_No_Start (Copy 1 of Proposal Found, No Start)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Copy_1_of_Assign_Closed_Lost_Stage](#copy_1_of_assign_closed_lost_stage)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|proposal.Id| Is Null|⬜|
    |2|$Record.Implementation_Status__c| Equal To|No Start|
    
    
    
    
    ### Copy_1_of_Get_Proposal
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Proposal__c|
    |Label|Copy 1 of Get Proposal|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|proposal|
    |Queried Fields|- Id<br/>- Plan_Effective_Date__c<br/>|
    |Connector|[Copy_1_of_Query_Validation](#copy_1_of_query_validation)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Opportunity__c| Equal To|$Record.Opportunity_Name__c|
    
    
    
    
    ### Copy_1_of_Update_Proposal
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Copy 1 of Update Proposal|
    |Input Reference|proposal|
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

