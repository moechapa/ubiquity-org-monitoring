# Contact_Button_Create_Advisor_Sourced_Lead_Activity history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Contact_Button_Create_Advisor_Sourced_Lead_Activity-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>"]):::startClass
    click START "#general-information" "4260750396"
    
    Assign_Id[\"🟰 <em></em><br/>Assign Id"/]:::assignments
    click Assign_Id "#assign_id" "1265348388"
    
    Assign_to_Collection[\"🟰 <em></em><br/>Assign to Collection"/]:::assignments
    click Assign_to_Collection "#assign_to_collection" "1360141134"
    
    Task_Variables[\"🟰 <em></em><br/>Task Variables"/]:::assignments
    click Task_Variables "#task_variables" "590858453"
    
    Loop_through_Leads{{"🔁 <em></em><br/>Loop through Leads"}}:::loops
    click Loop_through_Leads "#loop_through_leads" "3744405293"
    
    Create_Tasks[("➕ <em></em><br/>Create Tasks")]:::recordCreates
    click Create_Tasks "#create_tasks" "1813031395"
    
    Assign_Id --> Task_Variables
    Assign_to_Collection --> Loop_through_Leads
    Task_Variables --> Assign_to_Collection
    Loop_through_Leads --> |"For Each"|Assign_Id
    Loop_through_Leads ---> |"After Last"|Create_Tasks
    Create_Tasks --> END_Create_Tasks
    START -->  Loop_through_Leads
    END_Create_Tasks(( END )):::endClass
    
    
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
    |Process Type| Auto Launched Flow|
    |Label|Contact | Button | Create Advisor-Sourced Lead Activity|
    |Status|Active|
    |Interview Label|Contact | Button | Create Advisor-Sourced Lead Activity {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Loop_through_Leads](#loop_through_leads)|
    |Next Node|[Loop_through_Leads](#loop_through_leads)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |advisorLeadTask|SObject|⬜|✅|⬜|Task|<!-- -->|
    |advisorLeadTasks|SObject|✅|✅|⬜|Task|<!-- -->|
    |ids|String|✅|✅|⬜|<!-- -->|<!-- -->|
    |recordId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |today|Date|TODAY()|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Assign_Id
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Id|
    |Connector|[Task_Variables](#task_variables)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |advisorLeadTask.WhoId| Assign|[Loop_through_Leads](#loop_through_leads)|
    
    
    
    
    ### Assign_to_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign to Collection|
    |Connector|[Loop_through_Leads](#loop_through_leads)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |advisorLeadTasks| Add|advisorLeadTask|
    
    
    
    
    ### Task_Variables
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Task Variables|
    |Connector|[Assign_to_Collection](#assign_to_collection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |advisorLeadTask.Subject| Assign|Check In w/ Advisor|
    |advisorLeadTask.ActivityDate| Assign|today|
    |advisorLeadTask.Status| Assign|Completed|
    
    
    
    
    ### Loop_through_Leads
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Loop through Leads|
    |Collection Reference|ids|
    |Iteration Order|Asc|
    |Next Value Connector|[Assign_Id](#assign_id)|
    |No More Values Connector|[Create_Tasks](#create_tasks)|
    
    
    ### Create_Tasks
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Label|Create Tasks|
    |Input Reference|advisorLeadTasks|
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

