# Project_Tasks_After_Trigger_Update_Imp_Steps history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Project_Tasks_After_Trigger_Update_Imp_Steps-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "1699226495"
    
    Assign_Census_Stage_Step[\"🟰 <em></em><br/>Assign Census Stage & Step"/]:::assignments
    click Assign_Census_Stage_Step "#assign_census_stage_step" "1352263350"
    
    Assign_Funding_Stage_Step[\"🟰 <em></em><br/>Assign Funding Stage & Step"/]:::assignments
    click Assign_Funding_Stage_Step "#assign_funding_stage_step" "3636227848"
    
    Call_Completed_w_o_Checkbox{"🔀 <em></em><br/>Call Completed w/o Checkbox"}:::decisions
    click Call_Completed_w_o_Checkbox "#call_completed_w_o_checkbox" "87636114"
    
    Update_Imp_Stage_0[("🛠️ <em></em><br/>Update Imp Stage")]:::recordUpdates
    click Update_Imp_Stage_0 "#update_imp_stage_0" "1747065051"
    
    Assign_Census_Stage_Step --> Update_Imp_Stage_0
    Assign_Funding_Stage_Step --> Update_Imp_Stage_0
    Call_Completed_w_o_Checkbox --> |"Intro Completed"| Assign_Census_Stage_Step
    Call_Completed_w_o_Checkbox --> |"Census Completed"| Assign_Funding_Stage_Step
    Call_Completed_w_o_Checkbox --> |"Default Outcome"| END_Call_Completed_w_o_Checkbox
    Update_Imp_Stage_0 --> END_Update_Imp_Stage_0
    START --> |"Run Immediately"| Call_Completed_w_o_Checkbox
    END_Call_Completed_w_o_Checkbox(( END )):::endClass
    END_Update_Imp_Stage_0(( END )):::endClass
    
    
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
    |Object|Project_Task__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create And Update|
    |Label|Project Tasks | After Trigger | Update Imp Steps|
    |Status|Active|
    |Does Require Record Changed To Meet Criteria|✅|
    |Environments|Default|
    |Interview Label|Project Tasks | After Trigger | Update Imp Steps {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    
    
    #### Scheduled Paths
    
    |Label|Name|Offset Number|Offset Unit|Record Field|Time Source|Connector|
    |:-- |:-- |:-- |:-- |:-- |:-- |:--  |
    |<!-- -->|<!-- -->|<!-- -->|<!-- -->|<!-- -->|<!-- -->|[Call_Completed_w_o_Checkbox](#call_completed_w_o_checkbox)|
    
    
    #### Filters (logic: **(1 OR 2 OR 3) AND 4**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Project_Deliverable__c| Contains|Introductory Call|
    |2|Project_Deliverable__c| Contains|Census Call|
    |3|Project_Deliverable__c| Contains|Funding & Final Call|
    |4|Status__c| Equal To|Completed|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |impStage|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |impStep|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |Now|DateTime|NOW()|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Assign_Census_Stage_Step
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Census Stage & Step|
    |Connector|[Update_Imp_Stage_0](#update_imp_stage_0)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |impStage| Assign|Census|
    |impStep| Assign|Add Your Employees|
    
    
    
    
    ### Assign_Funding_Stage_Step
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Funding Stage & Step|
    |Connector|[Update_Imp_Stage_0](#update_imp_stage_0)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |impStage| Assign|Funding|
    |impStep| Assign|Funding & Review|
    
    
    
    
    ### Call_Completed_w_o_Checkbox
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Call Completed w/o Checkbox|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Intro_Completed (Intro Completed)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Census_Stage_Step](#assign_census_stage_step)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Project_Deliverable__c| Contains|Introductory Call|
    |2|$Record.Implementation__r.Intro_Call_Complete__c| Equal To|⬜|
    |3|$Record.Status__c| Equal To|Completed|
    
    
    
    
    #### Rule Census_Completed (Census Completed)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Funding_Stage_Step](#assign_funding_stage_step)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Project_Deliverable__c| Contains|Census Call|
    |2|$Record.Status__c| Equal To|Completed|
    |3|$Record.Implementation__r.Census_Call_Complete__c| Equal To|⬜|
    
    
    
    
    #### Rule Funding_Call_Completed (Funding Call Completed)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Project_Deliverable__c| Contains|Funding & Final Call|
    |2|$Record.Status__c| Equal To|Completed|
    |3|$Record.Implementation__r.Funding_Call_Complete__c| Equal To|⬜|
    
    
    
    
    ### Update_Imp_Stage_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Implementation__c|
    |Label|Update Imp Stage|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$Record.Implementation__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Implementation_Stage__c|impStage|
    |Implementation_Steps__c|impStep|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

