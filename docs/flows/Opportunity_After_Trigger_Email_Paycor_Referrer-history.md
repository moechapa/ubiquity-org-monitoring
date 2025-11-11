# Opportunity_After_Trigger_Email_Paycor_Referrer history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Opportunity_After_Trigger_Email_Paycor_Referrer-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "2526654184"
    
    Email_Referrer("📧 <em></em><br/>Email Referrer"):::actionCalls
    click Email_Referrer "#email_referrer" "2948829420"
    
    Closed_Date{"🔀 <em></em><br/>Closed Date"}:::decisions
    click Closed_Date "#closed_date" "2497871322"
    
    Email_Referrer --> END_Email_Referrer
    Closed_Date --> |"Closed Today"| Email_Referrer
    Closed_Date --> |"Default Outcome"| END_Closed_Date
    START -->  Closed_Date
    END_Email_Referrer(( END )):::endClass
    END_Closed_Date(( END )):::endClass
    
    
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
    |Label|Opportunity | After Trigger | Email Paycor Referrer|
    |Status|Active|
    |Does Require Record Changed To Meet Criteria|✅|
    |Interview Label|Opportunity | After Trigger | Email Paycor Referrer {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Closed_Date](#closed_date)|
    |Next Node|[Closed_Date](#closed_date)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|StageName| Equal To|Closed Won|
    |2|LeadSourceDetail__c| Equal To|Paycor|
    |3|Referrer_s_Email__c| Is Null|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |today|Date|TODAY()|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Email_Referrer
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Email Referrer|
    |Action Type|Email Alert|
    |Action Name|Opportunity.Paycor_Plan_Purchase_Confirmation|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Opportunity.Paycor_Plan_Purchase_Confirmation|
    | SObject Row Id (input)|$Record.Id|
    
    
    ### Closed_Date
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Closed Date|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Closed_Today (Closed Today)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Email_Referrer](#email_referrer)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.CloseDate| Equal To|today|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

