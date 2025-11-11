# Lead_Before_Save_Sync_Employee_Count history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Lead_Before_Save_Sync_Employee_Count-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record Before Save</b>"]):::startClass
    click START "#general-information" "4068403775"
    
    Assign_count_from_proposal_to_lead[\"🟰 <em></em><br/>Assign count from proposal to lead"/]:::assignments
    click Assign_count_from_proposal_to_lead "#assign_count_from_proposal_to_lead" "4222109250"
    
    Prop_employee_count_check{"🔀 <em></em><br/>Prop employee count check"}:::decisions
    click Prop_employee_count_check "#prop_employee_count_check" "365077848"
    
    Find_proposal[("🔍 <em></em><br/>Find proposal")]:::recordLookups
    click Find_proposal "#find_proposal" "1867700777"
    
    Assign_count_from_proposal_to_lead --> END_Assign_count_from_proposal_to_lead
    Prop_employee_count_check --> |"Employee count not null"| Assign_count_from_proposal_to_lead
    Prop_employee_count_check --> |"Default Outcome"| END_Prop_employee_count_check
    Find_proposal --> Prop_employee_count_check
    START -->  Find_proposal
    END_Assign_count_from_proposal_to_lead(( END )):::endClass
    END_Prop_employee_count_check(( END )):::endClass
    
    
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
    |Record Trigger Type| Update|
    |Label|Lead | Before Save | Sync Employee Count|
    |Status|Active|
    |Does Require Record Changed To Meet Criteria|✅|
    |Description|Created for simply proposals.  Syncs employee count from proposal to lead at the moment of conversion.|
    |Environments|Default|
    |Interview Label|Lead | Before Save | Sync Employee Count {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Find_proposal](#find_proposal)|
    |Next Node|[Find_proposal](#find_proposal)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|IsConverted| Equal To|✅|
    |2|Business_Unit__c| Equal To|Simply Retirement|
    |3|Lead_Type__c| Equal To|Employer|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |propEmployeeCount|Number|⬜|⬜|⬜|<!-- -->|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Assign_count_from_proposal_to_lead
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign count from proposal to lead|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.NumberOfEmployees| Assign|propEmployeeCount|
    
    
    
    
    ### Prop_employee_count_check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Prop employee count check|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Employee_count_not_null (Employee count not null)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_count_from_proposal_to_lead](#assign_count_from_proposal_to_lead)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|propEmployeeCount| Is Null|⬜|
    
    
    
    
    ### Find_proposal
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Proposal__c|
    |Label|Find proposal|
    |Assign Null Values If No Records Found|✅|
    |Output Assignments|assignToReference: propEmployeeCount<br/>field: Number_of_Employees__c<br/>|
    |Sort Field|CreatedDate|
    |Sort Order|Desc|
    |Connector|[Prop_employee_count_check](#prop_employee_count_check)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Company_Email__c| Equal To|$Record.Email|
    |2|Status__c| Equal To|Submitted for Purchase|
    |3|Company_Email__c| Is Null|<!-- -->|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

