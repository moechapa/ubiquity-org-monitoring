# Opportunity_After_Save_Calculations history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Opportunity_After_Save_Calculations-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "1982318292"
    
    Check_for_Changes{"🔀 <em></em><br/>Check for Changes"}:::decisions
    click Check_for_Changes "#check_for_changes" "532331889"
    
    Update_Opp[("🛠️ <em></em><br/>Update Opp")]:::recordUpdates
    click Update_Opp "#update_opp" "4271068742"
    
    Run_Calc[["🔗 <em>Subflow</em><br/>Run Calc"]]:::subflows
    click Run_Calc "#run_calc" "4198540852"
    
    Check_for_Changes --> |"Needs Update"| Update_Opp
    Check_for_Changes --> |"Default Outcome"| END_Check_for_Changes
    Update_Opp --> END_Update_Opp
    START -->  Run_Calc
    Run_Calc --> Check_for_Changes
    END_Check_for_Changes(( END )):::endClass
    END_Update_Opp(( END )):::endClass
    
    
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
    |Object|Opportunity|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create And Update|
    |Label|Opportunity | After Save | Calculations|
    |Status|Active|
    |Filter Formula|ISCHANGED({!$Record.Amount}) || ISNEW() || ISBLANK({!$Record.Commissionable_Amount_Editable__c})|
    |Description|Runs calculations that have to be done after save.  Primarily for commission<br/><br/>Added run for when commissionable is blank|
    |Environments|Default|
    |Interview Label|Opportunity | After Save | Calculations {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Run_Calc](#run_calc)|
    |Next Node|[Run_Calc](#run_calc)|
    
    
    ## Flow Nodes Details
    
    ### Check_for_Changes
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check for Changes|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Needs_Update (Needs Update)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Opp](#update_opp)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Commissionable_Amount_Editable__c| Not Equal To|Run_Calc.comm|
    |2|$Record.Discount__c| Not Equal To|Run_Calc.disc|
    
    
    
    
    ### Update_Opp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Opp|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Commissionable_Amount_Editable__c|Run_Calc.comm|
    |Discount__c|Run_Calc.disc|
    
    
    
    
    ### Run_Calc
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Subflow|
    |Label|Run Calc|
    |Description|Calculates commission and discount on opp|
    |Flow Name|Opportunity_Autolaunched_Calculate_Commission|
    |Store Output Automatically|✅|
    |Connector|[Check_for_Changes](#check_for_changes)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |<!-- -->|$Record|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

