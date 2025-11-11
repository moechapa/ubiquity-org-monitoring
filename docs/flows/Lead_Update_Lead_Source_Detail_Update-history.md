# Lead_Update_Lead_Source_Detail_Update history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Lead_Update_Lead_Source_Detail_Update-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record Before Save</b>"]):::startClass
    click START "#general-information" "3116409614"
    
    Lead_Source_Evaluation{"🔀 <em></em><br/>Lead Source Evaluation"}:::decisions
    click Lead_Source_Evaluation "#lead_source_evaluation" "1627226908"
    
    LSD_Assignment{"🔀 <em></em><br/>LSD Assignment"}:::decisions
    click LSD_Assignment "#lsd_assignment" "1167338350"
    
    Proposal_Query_Successful{"🔀 <em></em><br/>Proposal Query Successful"}:::decisions
    click Proposal_Query_Successful "#proposal_query_successful" "1592808790"
    
    TPA_Check{"🔀 <em></em><br/>TPA Check"}:::decisions
    click TPA_Check "#tpa_check" "2265415389"
    
    Get_Proposal[("🔍 <em></em><br/>Get Proposal")]:::recordLookups
    click Get_Proposal "#get_proposal" "4142652236"
    
    Update_Lead_Source_Detail[("🛠️ <em></em><br/>Update Lead Source Detail")]:::recordUpdates
    click Update_Lead_Source_Detail "#update_lead_source_detail" "2227650423"
    
    Update_Lead_Source_Detail_0[("🛠️ <em></em><br/>Update Lead Source Detail")]:::recordUpdates
    click Update_Lead_Source_Detail_0 "#update_lead_source_detail_0" "3570448936"
    
    Update_Lead_Source_Detail_00[("🛠️ <em></em><br/>Update Lead Source Detail")]:::recordUpdates
    click Update_Lead_Source_Detail_00 "#update_lead_source_detail_00" "838980967"
    
    Update_Lead_Source_Detail_0_0[("🛠️ <em></em><br/>Update Lead Source Detail")]:::recordUpdates
    click Update_Lead_Source_Detail_0_0 "#update_lead_source_detail_0_0" "2461985458"
    
    Update_Service_Option[("🛠️ <em></em><br/>Update Service Option")]:::recordUpdates
    click Update_Service_Option "#update_service_option" "3531747540"
    
    Lead_Source_Evaluation --> |"Simply Advisor Sourced (Bundled)"| Update_Lead_Source_Detail
    Lead_Source_Evaluation --> |"Simply Advisor Sourced (Unbundled)"| Update_Lead_Source_Detail_0
    Lead_Source_Evaluation --> |"Simply TPA Sourced (Unbundled)"| Update_Lead_Source_Detail_0_0
    Lead_Source_Evaluation --> |"Default Outcome"| END_Lead_Source_Evaluation
    LSD_Assignment --> |"Simply Advisor LSD"| Update_Lead_Source_Detail_00
    LSD_Assignment --> |"Default Outcome"| TPA_Check
    Proposal_Query_Successful --> |"Proposal Found"| Lead_Source_Evaluation
    Proposal_Query_Successful --> |"Proposal Not Found"| END_Proposal_Query_Successful
    TPA_Check --> |"TPA Involved"| Update_Service_Option
    TPA_Check --> |"Default Outcome"| Get_Proposal
    Get_Proposal --> Proposal_Query_Successful
    Update_Lead_Source_Detail --> END_Update_Lead_Source_Detail
    Update_Lead_Source_Detail_0 --> END_Update_Lead_Source_Detail_0
    Update_Lead_Source_Detail_00 --> TPA_Check
    Update_Lead_Source_Detail_0_0 --> END_Update_Lead_Source_Detail_0_0
    Update_Service_Option --> Get_Proposal
    START -->  LSD_Assignment
    END_Lead_Source_Evaluation(( END )):::endClass
    END_Proposal_Query_Successful(( END )):::endClass
    END_Update_Lead_Source_Detail(( END )):::endClass
    END_Update_Lead_Source_Detail_0(( END )):::endClass
    END_Update_Lead_Source_Detail_0_0(( END )):::endClass
    
    
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
    |Object|Lead|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record Before Save|
    |Record Trigger Type| Create And Update|
    |Label|Lead | Update | Lead Source Detail Update|
    |Status|Obsolete|
    |Does Require Record Changed To Meet Criteria|✅|
    |Interview Label|Lead | Update | Lead Source Detail Update {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[LSD_Assignment](#lsd_assignment)|
    |Next Node|[LSD_Assignment](#lsd_assignment)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|LeadSource| Equal To|Simply Retirement|
    |2|Lead_Type__c| Equal To|Employer|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |proposal|SObject|⬜|✅|⬜|Proposal__c|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Lead_Source_Evaluation
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Lead Source Evaluation|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Simply_Advisor_Sourced_Bundled (Simply Advisor Sourced (Bundled))
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Lead_Source_Detail](#update_lead_source_detail)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|proposal.Referrer_Type__c| Equal To|Advisor|
    |2|proposal.TPA_EIN__c| Is Null|✅|
    
    
    
    
    #### Rule Simply_Advisor_Sourced_Unbundled (Simply Advisor Sourced (Unbundled))
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Lead_Source_Detail_0](#update_lead_source_detail_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|proposal.Referrer_Type__c| Equal To|Advisor|
    |2|proposal.TPA_EIN__c| Is Null|⬜|
    
    
    
    
    #### Rule Simply_TPA_Sourced_Unbundled (Simply TPA Sourced (Unbundled))
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Lead_Source_Detail_0_0](#update_lead_source_detail_0_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|proposal.Referrer_Type__c| Equal To|TPA|
    
    
    
    
    ### LSD_Assignment
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|LSD Assignment|
    |Default Connector|[TPA_Check](#tpa_check)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Simply_Advisor_LSD (Simply Advisor LSD)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Lead_Source_Detail_00](#update_lead_source_detail_00)|
    |Condition Logic|(1 AND 2) OR (2 AND 3)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Referrer_s_Email__c| Is Null|⬜|
    |2|$Record.LeadSourceDetail__c| Equal To|Simply Direct|
    |3|$Record.Advisory_Firm__c| Is Null|⬜|
    
    
    
    
    ### Proposal_Query_Successful
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Proposal Query Successful|
    |Default Connector Label|Proposal Not Found|
    
    
    #### Rule Proposal_Found (Proposal Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Lead_Source_Evaluation](#lead_source_evaluation)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|proposal.Id| Is Null|⬜|
    
    
    
    
    ### TPA_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|TPA Check|
    |Default Connector|[Get_Proposal](#get_proposal)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule TPA_Involved (TPA Involved)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Service_Option](#update_service_option)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Plan_ID__c| Contains|third-party-administrator|
    |2|$Record.Service_Option__c| Not Equal To|Simply Retirement Unbundled|
    
    
    
    
    ### Get_Proposal
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Proposal__c|
    |Label|Get Proposal|
    |Assign Null Values If No Records Found|✅|
    |Output Assignments|- assignToReference: proposal.Id<br/>&nbsp;&nbsp;field: Id<br/>- assignToReference: proposal.Referrer_Type__c<br/>&nbsp;&nbsp;field: Referrer_Type__c<br/>- assignToReference: proposal.TPA_EIN__c<br/>&nbsp;&nbsp;field: TPA_EIN__c<br/>|
    |Connector|[Proposal_Query_Successful](#proposal_query_successful)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Company_Email__c| Equal To|$Record.Email|
    
    
    
    
    ### Update_Lead_Source_Detail
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Lead Source Detail|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |LeadSourceDetail__c|Simply Advisor|
    |Service_Option__c|Simply Retirement Bundled|
    
    
    
    
    ### Update_Lead_Source_Detail_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Lead Source Detail|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |LeadSourceDetail__c|Simply Advisor|
    |Service_Option__c|Simply Retirement Unbundled|
    
    
    
    
    ### Update_Lead_Source_Detail_00
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Lead Source Detail|
    |Input Reference|$Record|
    |Connector|[TPA_Check](#tpa_check)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |LeadSourceDetail__c|Simply Advisor|
    
    
    
    
    ### Update_Lead_Source_Detail_0_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Lead Source Detail|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |LeadSourceDetail__c|Simply TPA|
    |Service_Option__c|Simply Retirement Unbundled|
    
    
    
    
    ### Update_Service_Option
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Service Option|
    |Input Reference|$Record|
    |Connector|[Get_Proposal](#get_proposal)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Service_Option__c|Simply Retirement Unbundled|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

