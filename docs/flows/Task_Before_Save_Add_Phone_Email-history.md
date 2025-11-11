# Task_Before_Save_Add_Phone_Email history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Task_Before_Save_Add_Phone_Email-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record Before Save</b>"]):::startClass
    click START "#general-information" "423116487"
    
    Assign_Email_And_Phone[\"🟰 <em></em><br/>Assign Email And Phone"/]:::assignments
    click Assign_Email_And_Phone "#assign_email_and_phone" "2477196685"
    
    Lead_vs_Contact_Check{"🔀 <em></em><br/>Lead vs Contact Check"}:::decisions
    click Lead_vs_Contact_Check "#lead_vs_contact_check" "1148661255"
    
    Get_contact[("🔍 <em></em><br/>Get contact")]:::recordLookups
    click Get_contact "#get_contact" "3530802787"
    
    Get_Lead[("🔍 <em></em><br/>Get Lead")]:::recordLookups
    click Get_Lead "#get_lead" "1218048379"
    
    Assign_Email_And_Phone --> END_Assign_Email_And_Phone
    Lead_vs_Contact_Check --> |"Contact"| Get_contact
    Lead_vs_Contact_Check --> |"Lead"| Get_Lead
    Lead_vs_Contact_Check --> |"Default Outcome"| END_Lead_vs_Contact_Check
    Get_contact --> Assign_Email_And_Phone
    Get_Lead --> Assign_Email_And_Phone
    START -->  Lead_vs_Contact_Check
    END_Assign_Email_And_Phone(( END )):::endClass
    END_Lead_vs_Contact_Check(( END )):::endClass
    
    
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
    |Object|Task|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record Before Save|
    |Record Trigger Type| Create And Update|
    |Label|Task | Before Save | Add Phone & Email|
    |Status|Active|
    |Does Require Record Changed To Meet Criteria|✅|
    |Environments|Default|
    |Interview Label|Task | Before Save | Add Phone & Email {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Lead_vs_Contact_Check](#lead_vs_contact_check)|
    |Next Node|[Lead_vs_Contact_Check](#lead_vs_contact_check)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|WhoId| Is Null|<!-- -->|
    |2|Email__c| Is Null|<!-- -->|
    |3|Phone__c| Is Null|<!-- -->|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |whoEmail|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |whoPhone|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Assign_Email_And_Phone
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Email And Phone|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Phone__c| Assign|whoPhone|
    |$Record.Email__c| Assign|whoEmail|
    
    
    
    
    ### Lead_vs_Contact_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Lead vs Contact Check|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Contact (Contact)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_contact](#get_contact)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.WhoId| Starts With|3|
    
    
    
    
    #### Rule Lead (Lead)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Lead](#get_lead)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.WhoId| Starts With|00Q|
    
    
    
    
    ### Get_contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Get contact|
    |Assign Null Values If No Records Found|✅|
    |Output Assignments|- assignToReference: whoEmail<br/>&nbsp;&nbsp;field: Email<br/>- assignToReference: whoPhone<br/>&nbsp;&nbsp;field: Phone<br/>|
    |Connector|[Assign_Email_And_Phone](#assign_email_and_phone)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$Record.WhoId|
    
    
    
    
    ### Get_Lead
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Lead|
    |Label|Get Lead|
    |Assign Null Values If No Records Found|✅|
    |Output Assignments|- assignToReference: whoEmail<br/>&nbsp;&nbsp;field: Email<br/>- assignToReference: whoPhone<br/>&nbsp;&nbsp;field: Phone<br/>|
    |Connector|[Assign_Email_And_Phone](#assign_email_and_phone)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$Record.WhoId|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

