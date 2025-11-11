# Implementation_Before_Trigger_Update_Credentialed_Advisor history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Implementation_Before_Trigger_Update_Credentialed_Advisor-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record Before Save</b>"]):::startClass
    click START "#general-information" "2745289159"
    
    Simply_Advisor_Changed_to_Green{"🔀 <em></em><br/>Simply Advisor Changed to Green"}:::decisions
    click Simply_Advisor_Changed_to_Green "#simply_advisor_changed_to_green" "752521063"
    
    Change_Credentialed_Advisor_to_True[("🛠️ <em></em><br/>Change Credentialed Advisor to True")]:::recordUpdates
    click Change_Credentialed_Advisor_to_True "#change_credentialed_advisor_to_true" "3432108738"
    
    Simply_Advisor_Changed_to_Green --> |"Yes"| Change_Credentialed_Advisor_to_True
    Simply_Advisor_Changed_to_Green --> |"Default Outcome"| END_Simply_Advisor_Changed_to_Green
    Change_Credentialed_Advisor_to_True --> END_Change_Credentialed_Advisor_to_True
    START -->  Simply_Advisor_Changed_to_Green
    END_Simply_Advisor_Changed_to_Green(( END )):::endClass
    END_Change_Credentialed_Advisor_to_True(( END )):::endClass
    
    
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
    |Trigger Type| Record Before Save|
    |Record Trigger Type| Update|
    |Label|Implementation | Before Trigger | Update Credentialed Advisor|
    |Status|Active|
    |Description|If the Simply Credential Advisor is changed to "Green", change the Credentialed Advisor field to "TRUE".|
    |Interview Label|Implementation | Before Trigger | Update Credentialed Advisor {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Simply_Advisor_Changed_to_Green](#simply_advisor_changed_to_green)|
    |Next Node|[Simply_Advisor_Changed_to_Green](#simply_advisor_changed_to_green)|
    
    
    #### Filters (logic: **(1 OR 2) AND 3**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Credentialed_Advisor__c| Equal To|⬜|
    |2|Credentialed_Advisor__c| Is Null|<!-- -->|
    |3|Simply_Credentialed_Advisor__c| Is Changed|✅|
    
    
    ## Flow Nodes Details
    
    ### Simply_Advisor_Changed_to_Green
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Simply Advisor Changed to Green|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Change_Credentialed_Advisor_to_True](#change_credentialed_advisor_to_true)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Simply_Credentialed_Advisor__c| Equal To|Green|
    
    
    
    
    ### Change_Credentialed_Advisor_to_True
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Change Credentialed Advisor to True|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Credentialed_Advisor__c|✅|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

