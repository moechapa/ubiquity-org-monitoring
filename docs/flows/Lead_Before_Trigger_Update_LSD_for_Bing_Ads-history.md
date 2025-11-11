# Lead_Before_Trigger_Update_LSD_for_Bing_Ads history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Lead_Before_Trigger_Update_LSD_for_Bing_Ads-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "240563032"
    
    Lead_Source_Blank{"🔀 <em></em><br/>Lead Source Blank?"}:::decisions
    click Lead_Source_Blank "#lead_source_blank" "1778930217"
    
    Set_Lead_Source[("🛠️ <em></em><br/>Set Lead Source")]:::recordUpdates
    click Set_Lead_Source "#set_lead_source" "2679177660"
    
    Update_Lead_Source_and_LSD[("🛠️ <em></em><br/>Update Lead Source and LSD")]:::recordUpdates
    click Update_Lead_Source_and_LSD "#update_lead_source_and_lsd" "1972332651"
    
    Lead_Source_Blank --> |"Blank Lead Source"| Update_Lead_Source_and_LSD
    Lead_Source_Blank --> |"Default Outcome"| Set_Lead_Source
    Set_Lead_Source --> END_Set_Lead_Source
    Update_Lead_Source_and_LSD --> END_Update_Lead_Source_and_LSD
    START -->  Lead_Source_Blank
    END_Set_Lead_Source(( END )):::endClass
    END_Update_Lead_Source_and_LSD(( END )):::endClass
    
    
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
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create And Update|
    |Label|Lead | After Trigger | Update LSD for Bing Ads|
    |Status|Active|
    |Does Require Record Changed To Meet Criteria|✅|
    |Description|When MSCLID has a value, set the Lead Source to "direct" and Lead Source Detail to "Microsoft Bing Ads".|
    |Environments|Default|
    |Interview Label|Lead | Before Trigger | Update LSD for Bing Ads {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Lead_Source_Blank](#lead_source_blank)|
    |Next Node|[Lead_Source_Blank](#lead_source_blank)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|MSCLKID__c| Is Null|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Lead_Source_Blank
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Lead Source Blank?|
    |Default Connector|[Set_Lead_Source](#set_lead_source)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Blank_Lead_Source (Blank Lead Source)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Lead_Source_and_LSD](#update_lead_source_and_lsd)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.LeadSource| Is Null|✅|
    
    
    
    
    ### Set_Lead_Source
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Set Lead Source|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |LeadSourceDetail__c|Microsoft Bing Ads|
    
    
    
    
    ### Update_Lead_Source_and_LSD
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Lead Source and LSD|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |LeadSource|Direct|
    |LeadSourceDetail__c|Microsoft Bing Ads|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

