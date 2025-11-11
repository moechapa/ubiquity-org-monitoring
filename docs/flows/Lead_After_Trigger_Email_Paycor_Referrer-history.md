# Lead_After_Trigger_Email_Paycor_Referrer history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Lead_After_Trigger_Email_Paycor_Referrer-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "604159503"
    
    Email_Mylo_Referrer("📧 <em></em><br/>Email Mylo Referrer"):::actionCalls
    click Email_Mylo_Referrer "#email_mylo_referrer" "1154806847"
    
    Email_Referrer("📧 <em></em><br/>Email Referrer"):::actionCalls
    click Email_Referrer "#email_referrer" "3101951564"
    
    Referrer_Check{"🔀 <em></em><br/>Referrer Check"}:::decisions
    click Referrer_Check "#referrer_check" "3699219676"
    
    Create_Reach_Out_Task[("➕ <em></em><br/>Create Reach Out Task")]:::recordCreates
    click Create_Reach_Out_Task "#create_reach_out_task" "1470029107"
    
    Email_Mylo_Referrer --> Create_Reach_Out_Task
    Email_Referrer --> END_Email_Referrer
    Referrer_Check --> |"Mylo"| Email_Mylo_Referrer
    Referrer_Check --> |"Paycor"| Email_Referrer
    Referrer_Check --> |"Default Outcome"| END_Referrer_Check
    Create_Reach_Out_Task --> END_Create_Reach_Out_Task
    START -->  Referrer_Check
    END_Email_Referrer(( END )):::endClass
    END_Referrer_Check(( END )):::endClass
    END_Create_Reach_Out_Task(( END )):::endClass
    
    
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
    |Label|Lead | After Trigger | Email Referrer|
    |Status|Active|
    |Does Require Record Changed To Meet Criteria|✅|
    |Description|Changed start conditions to be CONTAINS mylo or paycor - not equal|
    |Environments|Default|
    |Interview Label|Lead | After Trigger | Email Paycor Referrer {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Referrer_Check](#referrer_check)|
    |Next Node|[Referrer_Check](#referrer_check)|
    
    
    #### Filters (logic: **1 AND 2 AND (3 OR 4)**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|OwnerId| Starts With|5|
    |2|Status| Equal To|Assigned|
    |3|LeadSourceDetail__c| Contains|Paycor|
    |4|LeadSourceDetail__c| Contains|Mylo|
    
    
    ## Flow Nodes Details
    
    ### Email_Mylo_Referrer
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Email Mylo Referrer|
    |Action Type|Email Alert|
    |Action Name|Lead.Mylo_Lead_Assignment_Confirmation|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Lead.Mylo_Lead_Assignment_Confirmation|
    | SObject Row Id (input)|$Record.Id|
    |Connector|[Create_Reach_Out_Task](#create_reach_out_task)|
    
    
    ### Email_Referrer
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Email Referrer|
    |Action Type|Email Alert|
    |Action Name|Lead.Paycor_Lead_Assignment_Confirmation|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Lead.Paycor_Lead_Assignment_Confirmation|
    | SObject Row Id (input)|$Record.Id|
    
    
    ### Referrer_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Referrer Check|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Mylo (Mylo)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Email_Mylo_Referrer](#email_mylo_referrer)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.LeadSourceDetail__c| Contains|Mylo|
    
    
    
    
    #### Rule Paycor (Paycor)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Email_Referrer](#email_referrer)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.LeadSourceDetail__c| Equal To|Paycor|
    
    
    
    
    ### Create_Reach_Out_Task
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Task|
    |Label|Create Reach Out Task|
    |Store Output Automatically|✅|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |ActivityDate|$Record.CreatedDate|
    |OwnerId|$Record.OwnerId|
    |Priority|Normal|
    |Status|Not Started|
    |Subject|Call New Lead|
    |Type|Outbound Call|
    |WhoId|$Record.Id|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

