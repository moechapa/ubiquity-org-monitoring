# Implementation_After_Save_Update_Task_Ownership history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Implementation_After_Save_Update_Task_Ownership-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "1083298526"
    
    DE_Assignment_Check{"🔀 <em></em><br/>DE Assignment Check"}:::decisions
    click DE_Assignment_Check "#de_assignment_check" "2031962586"
    
    Update_Project_Task_Owner[("🛠️ <em></em><br/>Update Project Task Owner")]:::recordUpdates
    click Update_Project_Task_Owner "#update_project_task_owner" "483004868"
    
    DE_Assignment_Check --> |"Non DE change"| Update_Project_Task_Owner
    DE_Assignment_Check --> |"DE Assignment"| END_DE_Assignment_Check
    Update_Project_Task_Owner --> END_Update_Project_Task_Owner
    START -->  DE_Assignment_Check
    END_DE_Assignment_Check(( END )):::endClass
    END_Update_Project_Task_Owner(( END )):::endClass
    
    
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
    |Record Trigger Type| Update|
    |Label|Implementation | After Save | Update Task Ownership|
    |Status|Active|
    |Description|If the owner of an implementation is changed, updates incomplete and eligible tasks to new owner.|
    |Environments|Default|
    |Interview Label|Implementation | After Save | Update Task Ownership {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[DE_Assignment_Check](#de_assignment_check)|
    |Next Node|[DE_Assignment_Check](#de_assignment_check)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|OwnerId| Is Changed|✅|
    |2|Implementation_Status__c| Not Equal To|Completed|
    |3|OwnerId| Contains|5|
    
    
    ## Flow Nodes Details
    
    ### DE_Assignment_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|DE Assignment Check|
    |Description|This flow's action is typically handled by DE.  DE (for imps at this point in time) follows the pattern of queue -> user.  If a user -> user ownership change occurs on imp, assume this isn't DE.|
    |Default Connector Label|DE Assignment|
    
    
    #### Rule Non_DE_change (Non DE change)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Project_Task_Owner](#update_project_task_owner)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record__Prior.OwnerId| Starts With|5|
    
    
    
    
    ### Update_Project_Task_Owner
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Project Task Owner|
    |Description|Updates the owner for all project tasks that are eligible.|
    |Input Reference|$Record.Implementation_Tasks__r|
    
    
    #### Filters (logic: **(1 OR 2) AND 3 AND 4 AND 5**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Skill__c| Equal To|RM|
    |2|Eligible_for_Reassignment__c| Equal To|✅|
    |3|Status__c| Not Equal To|Declined|
    |4|Status__c| Not Equal To|Not Needed|
    |5|Status__c| Not Equal To|Completed|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Assigned_To__c|$Record.OwnerId|
    |OwnerId|$Record.OwnerId|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

