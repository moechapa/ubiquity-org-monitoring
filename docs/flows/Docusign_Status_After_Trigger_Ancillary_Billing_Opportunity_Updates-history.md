# Docusign_Status_After_Trigger_Ancillary_Billing_Opportunity_Updates history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Docusign_Status_After_Trigger_Ancillary_Billing_Opportunity_Updates-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "368894122"
    
    Docusign_Envelope_Status{"🔀 <em></em><br/>Docusign Envelope Status"}:::decisions
    click Docusign_Envelope_Status "#docusign_envelope_status" "1295938909"
    
    Opp_Stage_Docusign_Complete[("🛠️ <em></em><br/>Opp Stage = Docusign Complete")]:::recordUpdates
    click Opp_Stage_Docusign_Complete "#opp_stage_docusign_complete" "305939541"
    
    Opp_Stage_Pending_Signature[("🛠️ <em></em><br/>Opp Stage = Pending Signature")]:::recordUpdates
    click Opp_Stage_Pending_Signature "#opp_stage_pending_signature" "1432018179"
    
    Docusign_Envelope_Status --> |"Docusign Sent"| Opp_Stage_Pending_Signature
    Docusign_Envelope_Status --> |"Docusign Complete"| Opp_Stage_Docusign_Complete
    Docusign_Envelope_Status --> |"Default Outcome"| END_Docusign_Envelope_Status
    Opp_Stage_Docusign_Complete --> END_Opp_Stage_Docusign_Complete
    Opp_Stage_Pending_Signature --> END_Opp_Stage_Pending_Signature
    START -->  Docusign_Envelope_Status
    END_Docusign_Envelope_Status(( END )):::endClass
    END_Opp_Stage_Docusign_Complete(( END )):::endClass
    END_Opp_Stage_Pending_Signature(( END )):::endClass
    
    
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
    |Object|dsfs__DocuSign_Status__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create And Update|
    |Label|Docusign Status | After Trigger | Ancillary Billing Opportunity Updates|
    |Status|Active|
    |Interview Label|Docusign Status | After Trigger | Ancillary Billing Opportunity Updates {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Docusign_Envelope_Status](#docusign_envelope_status)|
    |Next Node|[Docusign_Envelope_Status](#docusign_envelope_status)|
    
    
    ## Flow Nodes Details
    
    ### Docusign_Envelope_Status
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Docusign Envelope Status|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Docusign_Sent (Docusign Sent)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[Opp_Stage_Pending_Signature](#opp_stage_pending_signature)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.dsfs__Envelope_Status__c| Equal To|Sent|
    |2|$Record.dsfs__Opportunity__c| Is Null|⬜|
    |3|$Record.dsfs__Opportunity__r.Type| Contains|Ancillary Billing|
    
    
    
    
    #### Rule Docusign_Complete (Docusign Complete)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Opp_Stage_Docusign_Complete](#opp_stage_docusign_complete)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.dsfs__Envelope_Status__c| Equal To|Completed|
    |2|$Record.dsfs__Opportunity__c| Is Null|⬜|
    |3|$Record.dsfs__Envelope_Status__c| Is Changed|✅|
    |4|$Record.dsfs__Opportunity__r.Type| Contains|Ancillary Billing|
    
    
    
    
    ### Opp_Stage_Docusign_Complete
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Opportunity|
    |Label|Opp Stage = Docusign Complete|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$Record.dsfs__Opportunity__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |StageName|Docusign Complete|
    
    
    
    
    ### Opp_Stage_Pending_Signature
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Opportunity|
    |Label|Opp Stage = Pending Signature|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$Record.dsfs__Opportunity__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |StageName|Pending Signature|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

