# Opportunity_After_Update_DocuSign_Complete_for_Ancillary_Billing history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Opportunity_After_Update_DocuSign_Complete_for_Ancillary_Billing-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "1456936309"
    
    Ancillary_Billing_Flat_Fee_Docusign_Complete("📧 <em></em><br/>Opportunity.Ancillary_Billing_Flat_Fee_Docusign_Complete"):::actionCalls
    click Ancillary_Billing_Flat_Fee_Docusign_Complete "#ancillary_billing_flat_fee_docusign_complete" "2284741708"
    
    Hourly_Fee_Email_Alert("📧 <em></em><br/>Hourly Fee Email Alert"):::actionCalls
    click Hourly_Fee_Email_Alert "#hourly_fee_email_alert" "2976814709"
    
    Flat_Fee_or_Hourly{"🔀 <em></em><br/>Flat Fee or Hourly?"}:::decisions
    click Flat_Fee_or_Hourly "#flat_fee_or_hourly" "3655644192"
    
    Ancillary_Billing_Flat_Fee_Docusign_Complete --> END_Ancillary_Billing_Flat_Fee_Docusign_Complete
    Hourly_Fee_Email_Alert --> END_Hourly_Fee_Email_Alert
    Flat_Fee_or_Hourly --> |"Flat Fee"| Ancillary_Billing_Flat_Fee_Docusign_Complete
    Flat_Fee_or_Hourly --> |"Hourly"| Hourly_Fee_Email_Alert
    Flat_Fee_or_Hourly --> |"Default Outcome"| END_Flat_Fee_or_Hourly
    START -->  Flat_Fee_or_Hourly
    END_Ancillary_Billing_Flat_Fee_Docusign_Complete(( END )):::endClass
    END_Hourly_Fee_Email_Alert(( END )):::endClass
    END_Flat_Fee_or_Hourly(( END )):::endClass
    
    
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
    |Record Trigger Type| Update|
    |Label|Opportunity | After Update | DocuSign Complete for Ancillary Billing|
    |Status|Active|
    |Does Require Record Changed To Meet Criteria|✅|
    |Description|When an Ancillary Billing opp's stage is set to DocuSign Complete, send the appropriate email alert.|
    |Environments|Default|
    |Interview Label|Opportunity | After Update | DocuSign Complete for Ancillary Billing {!$Flow.CurrentDateTime}|
    |Migrated From Workflow Rule Name|AncillBillFlatFee|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    |Connector|[Flat_Fee_or_Hourly](#flat_fee_or_hourly)|
    |Next Node|[Flat_Fee_or_Hourly](#flat_fee_or_hourly)|
    
    
    #### Filters (logic: **(1 OR 2) AND 3**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|RecordTypeId| Equal To|0121G000000g1YIQAY|
    |2|RecordTypeId| Equal To|01237000000RiRoAAK|
    |3|StageName| Equal To|Docusign Complete|
    
    
    ## Flow Nodes Details
    
    ### Ancillary_Billing_Flat_Fee_Docusign_Complete
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Opportunity.Ancillary_Billing_Flat_Fee_Docusign_Complete|
    |Action Type|Email Alert|
    |Action Name|Opportunity.Ancillary_Billing_Flat_Fee_Docusign_Complete|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Opportunity.Ancillary_Billing_Flat_Fee_Docusign_Complete|
    |Offset|0|
    | SObject Row Id (input)|$Record.Id|
    
    
    ### Hourly_Fee_Email_Alert
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Hourly Fee Email Alert|
    |Action Type|Email Alert|
    |Action Name|Opportunity.Ancillary_Billing_Hourly_Fee_Docusign_Complete|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Opportunity.Ancillary_Billing_Hourly_Fee_Docusign_Complete|
    |Offset|0|
    | SObject Row Id (input)|$Record.Id|
    
    
    ### Flat_Fee_or_Hourly
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Flat Fee or Hourly?|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Flat_Fee (Flat Fee)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Ancillary_Billing_Flat_Fee_Docusign_Complete](#ancillary_billing_flat_fee_docusign_complete)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.RecordTypeId| Equal To|0121G000000g1YIQAY|
    
    
    
    
    #### Rule Hourly (Hourly)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Hourly_Fee_Email_Alert](#hourly_fee_email_alert)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.RecordTypeId| Equal To|01237000000RiRoAAK|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

