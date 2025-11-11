# Project_Task_Before_Trigger_Mark_Duplicate_Tasks_Not_Needed history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Project_Task_Before_Trigger_Mark_Duplicate_Tasks_Not_Needed-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record Before Save</b>"]):::startClass
    click START "#general-information" "1416825199"
    
    Task_Exists{"🔀 <em></em><br/>Task Exists?"}:::decisions
    click Task_Exists "#task_exists" "2815792283"
    
    Get_Existing_Project_Tasks[("🔍 <em></em><br/>Get Existing Project Tasks")]:::recordLookups
    click Get_Existing_Project_Tasks "#get_existing_project_tasks" "4077866953"
    
    Not_Needed[("🛠️ <em></em><br/>Not Needed")]:::recordUpdates
    click Not_Needed "#not_needed" "993147826"
    
    Task_Exists --> |"Duplicate task exists"| Not_Needed
    Task_Exists --> |"Default Outcome"| END_Task_Exists
    Get_Existing_Project_Tasks --> Task_Exists
    Not_Needed --> END_Not_Needed
    START -->  Get_Existing_Project_Tasks
    END_Task_Exists(( END )):::endClass
    END_Not_Needed(( END )):::endClass
    
    
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
    |Trigger Type| Record Before Save|
    |Record Trigger Type| Create|
    |Label|Project Task | Before Trigger | Mark Duplicate Tasks- Not Needed|
    |Status|⚠️ Draft|
    |Environments|Default|
    |Interview Label|Project Task | Before Trigger | Mark Duplicate Tasks- Not Needed {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Existing_Project_Tasks](#get_existing_project_tasks)|
    |Next Node|[Get_Existing_Project_Tasks](#get_existing_project_tasks)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|CreatedById| Equal To|00537000004K1JOAA0|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |ExistingDuplicateTasks|SObject|⬜|✅|⬜|Project_Task__c|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Task_Exists
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Task Exists?|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Duplicate_task_exists (Duplicate task exists)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Not_Needed](#not_needed)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|ExistingDuplicateTasks.Id| Is Null|⬜|
    
    
    
    
    ### Get_Existing_Project_Tasks
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Project_Task__c|
    |Label|Get Existing Project Tasks|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|ExistingDuplicateTasks|
    |Queried Fields|- Id<br/>- Name<br/>- Opportunity__c<br/>- Add_On_Product__c<br/>|
    |Connector|[Task_Exists](#task_exists)|
    
    
    #### Filters (logic: **(1 OR 2) AND 3**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Add_On_Product__c| Equal To|$Record.Add_On_Product__r.Id|
    |2|Opportunity__c| Equal To|$Record.Opportunity__r.Id|
    |3|Name| Equal To|$Record.Name|
    
    
    
    
    ### Not_Needed
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Not Needed|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Status__c|Not Needed|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

