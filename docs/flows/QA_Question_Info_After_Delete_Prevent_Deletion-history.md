# QA_Question_Info_After_Delete_Prevent_Deletion history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](QA_Question_Info_After_Delete_Prevent_Deletion-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record Before Delete</b>"]):::startClass
    click START "#general-information" "3251609204"
    
    No_delete_info_msg("🚫 <em></em><br/>No delete info msg"):::customErrors
    click No_delete_info_msg "#no_delete_info_msg" "2607594633"
    
    Check_if_design_activated{"🔀 <em></em><br/>Check if design activated"}:::decisions
    click Check_if_design_activated "#check_if_design_activated" "808933563"
    
    No_delete_info_msg --> END_No_delete_info_msg
    Check_if_design_activated --> |"Info protected"| No_delete_info_msg
    Check_if_design_activated --> |"Default Outcome"| END_Check_if_design_activated
    START -->  Check_if_design_activated
    END_No_delete_info_msg(( END )):::endClass
    END_Check_if_design_activated(( END )):::endClass
    
    
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
    |Object|QA_Question_Info__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record Before Delete|
    |Record Trigger Type| Delete|
    |Label|QA Question Info | After Delete | Prevent Deletion|
    |Status|Active|
    |Description|Stops deletion of info that is or once was part of active design.|
    |Environments|Default|
    |Interview Label|QA Question Info | After Delete | Prevent Deletion {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Check_if_design_activated](#check_if_design_activated)|
    |Next Node|[Check_if_design_activated](#check_if_design_activated)|
    
    
    ## Flow Nodes Details
    
    ### No_delete_info_msg
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Custom Error|
    |Label|No delete info msg|
    |Custom Error Messages|errorMessage: QA Design has an activation date!  Cannot delete question info.<br/>isFieldError: false<br/>|
    
    
    ### Check_if_design_activated
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check if design activated|
    |Description|Is the parent design currently active, or active at any point in the past?  Reverse deletion if so|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Info_protected (Info protected)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[No_delete_info_msg](#no_delete_info_msg)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.QA_Design__r.Activation_Date__c| Is Blank|⬜|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

