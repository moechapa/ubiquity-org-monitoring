# Plan_After_Update_Plan_Exceptions_Box history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Plan_After_Update_Plan_Exceptions_Box-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record Before Save</b>"]):::startClass
    click START "#general-information" "2509805017"
    
    What_Changed_with_Field{"🔀 <em></em><br/>What Changed with Field"}:::decisions
    click What_Changed_with_Field "#what_changed_with_field" "2230848933"
    
    Check_Box[("🛠️ <em></em><br/>Check Box")]:::recordUpdates
    click Check_Box "#check_box" "3944174144"
    
    Uncheck_Box[("🛠️ <em></em><br/>Uncheck Box")]:::recordUpdates
    click Uncheck_Box "#uncheck_box" "2286332810"
    
    What_Changed_with_Field --> |"First Exception Added"| Check_Box
    What_Changed_with_Field --> |"All Exceptions Removed"| Uncheck_Box
    What_Changed_with_Field --> |"Default Outcome"| END_What_Changed_with_Field
    Check_Box --> END_Check_Box
    Uncheck_Box --> END_Uncheck_Box
    START -->  What_Changed_with_Field
    END_What_Changed_with_Field(( END )):::endClass
    END_Check_Box(( END )):::endClass
    END_Uncheck_Box(( END )):::endClass
    
    
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
    |Object|Plan__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record Before Save|
    |Record Trigger Type| Update|
    |Label|Plan | After Update | Plan Exceptions Box|
    |Status|Active|
    |Environments|Default|
    |Interview Label|Plan | After Update | Plan Exceptions Box {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[What_Changed_with_Field](#what_changed_with_field)|
    |Next Node|[What_Changed_with_Field](#what_changed_with_field)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Plan_Exceptions__c| Is Changed|✅|
    
    
    ## Flow Nodes Details
    
    ### What_Changed_with_Field
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|What Changed with Field|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Exception_Added (First Exception Added)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Check_Box](#check_box)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Plan_Exceptions__c| Is Blank|⬜|
    |2|$Record.Has_Exceptions__c| Not Equal To|✅|
    
    
    
    
    #### Rule All_Exceptions_Removed (All Exceptions Removed)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Uncheck_Box](#uncheck_box)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Plan_Exceptions__c| Is Blank|✅|
    
    
    
    
    ### Check_Box
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Check Box|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Has_Exceptions__c|✅|
    
    
    
    
    ### Uncheck_Box
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Uncheck Box|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Has_Exceptions__c|⬜|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

