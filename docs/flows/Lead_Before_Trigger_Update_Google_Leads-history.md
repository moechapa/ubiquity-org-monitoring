# Lead_Before_Trigger_Update_Google_Leads history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Lead_Before_Trigger_Update_Google_Leads-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record Before Save</b>"]):::startClass
    click START "#general-information" "3737919416"
    
    Assign_New_LS_and_LSD[\"🟰 <em></em><br/>Assign New LS and LSD"/]:::assignments
    click Assign_New_LS_and_LSD "#assign_new_ls_and_lsd" "3415781848"
    
    Assign_New_LS_and_LSD --> END_Assign_New_LS_and_LSD
    START -->  Assign_New_LS_and_LSD
    END_Assign_New_LS_and_LSD(( END )):::endClass
    
    
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
    |Trigger Type| Record Before Save|
    |Record Trigger Type| Update|
    |Label|Lead | Before Trigger | Update Google Leads|
    |Status|Active|
    |Does Require Record Changed To Meet Criteria|✅|
    |Description|Updated flow to only overwrite Organic or blank LS|
    |Environments|Default|
    |Interview Label|Lead | Before Trigger | Update Google Leads {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Assign_New_LS_and_LSD](#assign_new_ls_and_lsd)|
    |Next Node|[Assign_New_LS_and_LSD](#assign_new_ls_and_lsd)|
    
    
    #### Filters (logic: **1 AND (2 OR 3 OR 4)**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|gaconnector_GCLID__c| Is Null|<!-- -->|
    |2|LeadSource| Equal To|Organic Search|
    |3|LeadSource| Equal To|Organic Social|
    |4|LeadSource| Is Null|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Assign_New_LS_and_LSD
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign New LS and LSD|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.LeadSource| Assign|Paid Ads|
    |$Record.LeadSourceDetail__c| Assign|Google Ads|
    |$Record.Method_of_First_Contact__c| Assign|Recommendation Engine|
    |$Record.Product_Type__c| Assign|$Record.Product_Type_Recommendation__c|
    |$Record.Service_Option__c| Assign|$Record.Service_Option_Recommendation__c|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

