# Implementation_After_Trigger_Single_k_Alert history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Implementation_After_Trigger_Single_k_Alert-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "1259812053"
    
    Send_Alert_to_Owner("📧 <em></em><br/>Send Alert to Owner"):::actionCalls
    click Send_Alert_to_Owner "#send_alert_to_owner" "207851075"
    
    Create_New_Imp_Case[("➕ <em></em><br/>Create New Imp Case")]:::recordCreates
    click Create_New_Imp_Case "#create_new_imp_case" "144247985"
    
    Send_Alert_to_Owner --> END_Send_Alert_to_Owner
    Create_New_Imp_Case --> Send_Alert_to_Owner
    START -->  Create_New_Imp_Case
    END_Send_Alert_to_Owner(( END )):::endClass
    
    
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
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create|
    |Label|Implementation | After Trigger | Single(k)+ Alert|
    |Status|Obsolete|
    |Environments|Default|
    |Interview Label|Implementations | After Trigger | Single(k)+ Alert {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Create_New_Imp_Case](#create_new_imp_case)|
    |Next Node|[Create_New_Imp_Case](#create_new_imp_case)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Service_Option__c| Equal To|Single(k) Plus|
    
    
    ## Flow Nodes Details
    
    ### Send_Alert_to_Owner
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send Alert to Owner|
    |Action Type|Email Alert|
    |Action Name|Implementation__c.New_Single_k_Plus_Implementation_Created|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Implementation__c.New_Single_k_Plus_Implementation_Created|
    | SObject Row Id (input)|$Record.Id|
    
    
    ### Create_New_Imp_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Create New Imp Case|
    |Store Output Automatically|✅|
    |Connector|[Send_Alert_to_Owner](#send_alert_to_owner)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|$Record.Account__c|
    |Case_Source__c|Internal|
    |Category__c|Plan Review|
    |Description|Check Implementation record for details and next steps|
    |Implementation__c|$Record.Id|
    |OwnerId|00G00000006sDWf|
    |Plan__c|$Record.Plan__c|
    |Priority|Medium|
    |RecordTypeId|012370000005thqAAA|
    |Status|Assigned|
    |Subject|Alert: New Implementation Created|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

