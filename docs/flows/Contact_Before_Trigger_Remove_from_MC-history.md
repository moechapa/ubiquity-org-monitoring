# Contact_Before_Trigger_Remove_from_MC history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Contact_Before_Trigger_Remove_from_MC-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record Before Save</b>"]):::startClass
    click START "#general-information" "3109164265"
    
    Add_to_MC_or_Remove_from_MC{"🔀 <em></em><br/>Add to MC or Remove from MC"}:::decisions
    click Add_to_MC_or_Remove_from_MC "#add_to_mc_or_remove_from_mc" "2793318883"
    
    Add_to_MC[("🛠️ <em></em><br/>Add to MC")]:::recordUpdates
    click Add_to_MC "#add_to_mc" "2669062764"
    
    Remove_from_MC[("🛠️ <em></em><br/>Remove from MC")]:::recordUpdates
    click Remove_from_MC "#remove_from_mc" "1071539509"
    
    Add_to_MC_or_Remove_from_MC --> |"Add to MC"| Add_to_MC
    Add_to_MC_or_Remove_from_MC --> |"Default Outcome"| Remove_from_MC
    Add_to_MC --> END_Add_to_MC
    Remove_from_MC --> END_Remove_from_MC
    START -->  Add_to_MC_or_Remove_from_MC
    END_Add_to_MC(( END )):::endClass
    END_Remove_from_MC(( END )):::endClass
    
    
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
    |Object|Contact|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record Before Save|
    |Record Trigger Type| Create And Update|
    |Label|Contact | Before Trigger | Remove from MC|
    |Status|Active|
    |Filter Formula|ISCHANGED({!$Record.Email}) ||<br/>ISCHANGED({!$Record.Role__c}) ||<br/>ISNEW()|
    |Description|Exclude contacts from MC when they're missing an email, role, or role = saver|
    |Environments|Default|
    |Interview Label|Contact | Before Trigger | Remove from MC {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Add_to_MC_or_Remove_from_MC](#add_to_mc_or_remove_from_mc)|
    |Next Node|[Add_to_MC_or_Remove_from_MC](#add_to_mc_or_remove_from_mc)|
    
    
    ## Flow Nodes Details
    
    ### Add_to_MC_or_Remove_from_MC
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Add to MC or Remove from MC|
    |Default Connector|[Remove_from_MC](#remove_from_mc)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Add_to_MCDecision (Add to MC)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Add_to_MC](#add_to_mc)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Email| Is Blank|⬜|
    |2|$Record.Role__c| Not Equal To|Saver|
    |3|$Record.Role__c| Is Blank|⬜|
    
    
    
    
    ### Add_to_MC
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Add to MC|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |MC_Removal__c|⬜|
    
    
    
    
    ### Remove_from_MC
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Remove from MC|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |MC_Removal__c|✅|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

