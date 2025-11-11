# Plan_Asset_After_Create_Update_Related_Plan_Billable_Headcount history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Plan_Asset_After_Create_Update_Related_Plan_Billable_Headcount-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "4211508419"
    
    Update_Billable_Headcount_and_Assets_on_Plan[("🛠️ <em></em><br/>Update Billable Headcount and Assets on Plan`")]:::recordUpdates
    click Update_Billable_Headcount_and_Assets_on_Plan "#update_billable_headcount_and_assets_on_plan" "368293898"
    
    Update_Billable_Headcount_and_Assets_on_Plan --> END_Update_Billable_Headcount_and_Assets_on_Plan
    START -->  Update_Billable_Headcount_and_Assets_on_Plan
    END_Update_Billable_Headcount_and_Assets_on_Plan(( END )):::endClass
    
    
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
    |Object|Plan_Assets__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create|
    |Label|Plan Asset | After Create | Update Related Plan Billable Headcount|
    |Status|Active|
    |Description|When the Plan Asset record is created, stamp the Plan Billable Headcount field on the related plan.|
    |Environments|Default|
    |Interview Label|Plan Asset | After Create | Update Related Plan Billable Headcount {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Update_Billable_Headcount_and_Assets_on_Plan](#update_billable_headcount_and_assets_on_plan)|
    |Next Node|[Update_Billable_Headcount_and_Assets_on_Plan](#update_billable_headcount_and_assets_on_plan)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Plan__c| Is Null|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Update_Billable_Headcount_and_Assets_on_Plan
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Billable Headcount and Assets on Plan`|
    |Input Reference|$Record.Plan__r|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Plan_Assets__c|$Record.Plan_Assets__c|
    |Plan_Billable_Headcount__c|$Record.Plan_Billable_Headcount__c|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

