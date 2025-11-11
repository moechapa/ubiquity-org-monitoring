# Case_After_Trigger_Create_Complaint_Form history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Case_After_Trigger_Create_Complaint_Form-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "731843337"
    
    Send_Alert("📧 <em></em><br/>Send Alert"):::actionCalls
    click Send_Alert "#send_alert" "1773053535"
    
    Found_Existing_Complaint{"🔀 <em></em><br/>Found Existing Complaint"}:::decisions
    click Found_Existing_Complaint "#found_existing_complaint" "573869855"
    
    QA_Exists{"🔀 <em></em><br/>QA Exists"}:::decisions
    click QA_Exists "#qa_exists" "1188889174"
    
    Create_Complaint[("➕ <em></em><br/>Create Complaint")]:::recordCreates
    click Create_Complaint "#create_complaint" "869057626"
    
    Get_Existing_Complaint[("🔍 <em></em><br/>Get Existing Complaint")]:::recordLookups
    click Get_Existing_Complaint "#get_existing_complaint" "2851378655"
    
    Get_Existing_QA[("🔍 <em></em><br/>Get Existing QA")]:::recordLookups
    click Get_Existing_QA "#get_existing_qa" "3390838476"
    
    Create_QA[["🔗 <em>Subflow</em><br/>Create QA"]]:::subflows
    click Create_QA "#create_qa" "974891182"
    
    Send_Alert --> Get_Existing_QA
    Found_Existing_Complaint --> |"No Complaint Exists"| Create_Complaint
    Found_Existing_Complaint --> |"Default Outcome"| END_Found_Existing_Complaint
    QA_Exists --> |"No existing QA"| Create_QA
    QA_Exists --> |"Default Outcome"| END_QA_Exists
    Create_Complaint --> Send_Alert
    Get_Existing_Complaint --> Found_Existing_Complaint
    Get_Existing_QA --> QA_Exists
    START -->  Get_Existing_Complaint
    Create_QA --> END_Create_QA
    END_Found_Existing_Complaint(( END )):::endClass
    END_QA_Exists(( END )):::endClass
    END_Create_QA(( END )):::endClass
    
    
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
    |Object|Case|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create And Update|
    |Label|Case | After Trigger | Create Complaint Form|
    |Status|⚠️ Draft|
    |Does Require Record Changed To Meet Criteria|✅|
    |Description|Added step to auto create QA|
    |Environments|Default|
    |Interview Label|Case | After Trigger | Create Complaint Form {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Existing_Complaint](#get_existing_complaint)|
    |Next Node|[Get_Existing_Complaint](#get_existing_complaint)|
    
    
    #### Filters (logic: **1 AND (2 OR 3)**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Complaint__c| Equal To|✅|
    |2|Complaint_Tier__c| Equal To|Tier 1|
    |3|Complaint_Tier__c| Equal To|Tier 2|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |existingComplaintId|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |existingQaId|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |complaintName|String|LEFT(TEXT({!$Record.Complaint_Tier__c}) + " Complaint from " + {!$Record.Account.Name},80)|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Send_Alert
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send Alert|
    |Action Type|Email Alert|
    |Action Name|Complaint_Form__c.New_Complaint_Form_Created|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Complaint_Form__c.New_Complaint_Form_Created|
    | SObject Row Id (input)|[Create_Complaint](#create_complaint)|
    |Connector|[Get_Existing_QA](#get_existing_qa)|
    
    
    ### Found_Existing_Complaint
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Found Existing Complaint|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule No_Complaint_Exists (No Complaint Exists)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Create_Complaint](#create_complaint)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|existingComplaintId| Is Null|✅|
    
    
    
    
    ### QA_Exists
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|QA Exists|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule No_existing_QA (No existing QA)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Create_QA](#create_qa)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|existingQaId| Is Null|✅|
    
    
    
    
    ### Create_Complaint
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Complaint_Form__c|
    |Label|Create Complaint|
    |Store Output Automatically|✅|
    |Connector|[Send_Alert](#send_alert)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Account__c|$Record.AccountId|
    |Case_Notes__c|$Record.Case_notes_new__c|
    |Case_Owner__c|$Record.OwnerId|
    |Case__c|$Record.Id|
    |Complaint_Tier__c|$Record.Complaint_Tier__c|
    |Manager__c|$Record.Owner:User.ManagerId|
    |Name|complaintName|
    |OwnerId|$Record.Owner:User.ManagerId|
    
    
    
    
    ### Get_Existing_Complaint
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Complaint_Form__c|
    |Label|Get Existing Complaint|
    |Assign Null Values If No Records Found|✅|
    |Output Assignments|assignToReference: existingComplaintId<br/>field: Id<br/>|
    |Connector|[Found_Existing_Complaint](#found_existing_complaint)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Case__c| Equal To|$Record.Id|
    
    
    
    
    ### Get_Existing_QA
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Quality_Assurance_QA__c|
    |Label|Get Existing QA|
    |Assign Null Values If No Records Found|✅|
    |Output Assignments|assignToReference: existingQaId<br/>field: Id<br/>|
    |Connector|[QA_Exists](#qa_exists)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Case__c| Equal To|$Record.Id|
    
    
    
    
    ### Create_QA
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Subflow|
    |Label|Create QA|
    |Flow Name|QA_Button_Create_QA|
    |Store Output Automatically|✅|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |<!-- -->|$Record.Id|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

