# Opportunity_Before_Update_Add_On_Product_Stage_Updates history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Opportunity_Before_Update_Add_On_Product_Stage_Updates-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record Before Save</b>"]):::startClass
    click START "#general-information" "2666103015"
    
    Assign_401_k_Record_Type[\"🟰 <em></em><br/>Assign 401(k) Record Type"/]:::assignments
    click Assign_401_k_Record_Type "#assign_401_k_record_type" "1672922026"
    
    Assign_Single_k_Record_Type[\"🟰 <em></em><br/>Assign Single(k) Record Type"/]:::assignments
    click Assign_Single_k_Record_Type "#assign_single_k_record_type" "2560826280"
    
    Define_401k_id[\"🟰 <em></em><br/>Define 401k id"/]:::assignments
    click Define_401k_id "#define_401k_id" "2408122794"
    
    Define_ancillary_flat_id[\"🟰 <em></em><br/>Define ancillary flat id"/]:::assignments
    click Define_ancillary_flat_id "#define_ancillary_flat_id" "963453383"
    
    Define_ancillary_hourly_id[\"🟰 <em></em><br/>Define ancillary hourly id"/]:::assignments
    click Define_ancillary_hourly_id "#define_ancillary_hourly_id" "115507439"
    
    Define_EPS_Id[\"🟰 <em></em><br/>Define EPS Id"/]:::assignments
    click Define_EPS_Id "#define_eps_id" "3463621151"
    
    Define_Singlek_id[\"🟰 <em></em><br/>Define Singlek id"/]:::assignments
    click Define_Singlek_id "#define_singlek_id" "3174783491"
    
    Update_Stage1[\"🟰 <em></em><br/>Update Stage"/]:::assignments
    click Update_Stage1 "#update_stage1" "2150162749"
    
    Introduction_Email_Sent{"🔀 <em></em><br/>Intro Email Sent?"}:::decisions
    click Introduction_Email_Sent "#introduction_email_sent" "1314481199"
    
    Product_Type_401_k{"🔀 <em></em><br/>Product Type = 401(k) ?"}:::decisions
    click Product_Type_401_k "#product_type_401_k" "3910366256"
    
    Product_Type_Single_k{"🔀 <em></em><br/>Product Type = Single(k) ?"}:::decisions
    click Product_Type_Single_k "#product_type_single_k" "3290419010"
    
    Which_recordType_am_I{"🔀 <em></em><br/>Which recordType am I"}:::decisions
    click Which_recordType_am_I "#which_recordtype_am_i" "3414209671"
    
    Record_Type_Loop{{"🔁 <em></em><br/>Record Type Loop"}}:::loops
    click Record_Type_Loop "#record_type_loop" "4115195360"
    
    Get_Relevant_Recordtypes[("🔍 <em></em><br/>Get Relevant Recordtypes")]:::recordLookups
    click Get_Relevant_Recordtypes "#get_relevant_recordtypes" "1607893066"
    
    Assign_401_k_Record_Type --> END_Assign_401_k_Record_Type
    Assign_Single_k_Record_Type --> END_Assign_Single_k_Record_Type
    Define_401k_id --> Record_Type_Loop
    Define_ancillary_flat_id --> Record_Type_Loop
    Define_ancillary_hourly_id --> Record_Type_Loop
    Define_EPS_Id --> Record_Type_Loop
    Define_Singlek_id --> Record_Type_Loop
    Update_Stage1 --> END_Update_Stage1
    Introduction_Email_Sent --> |"Yes"| Update_Stage1
    Introduction_Email_Sent --> |"Default Outcome"| END_Introduction_Email_Sent
    Product_Type_401_k --> |"Yes"| Assign_401_k_Record_Type
    Product_Type_401_k --> |"Default Outcome"| Product_Type_Single_k
    Product_Type_Single_k --> |"Yes"| Assign_Single_k_Record_Type
    Product_Type_Single_k --> |"Default Outcome"| Introduction_Email_Sent
    Which_recordType_am_I --> |"I am singleK"| Define_Singlek_id
    Which_recordType_am_I --> |"I am ancillary flat"| Define_ancillary_flat_id
    Which_recordType_am_I --> |"I am ancillary hourly"| Define_ancillary_hourly_id
    Which_recordType_am_I --> |"I am 401k"| Define_401k_id
    Which_recordType_am_I --> |"I am EPS"| Define_EPS_Id
    Which_recordType_am_I --> |"Default Outcome"| Record_Type_Loop
    Record_Type_Loop --> |"For Each"|Which_recordType_am_I
    Record_Type_Loop ---> |"After Last"|Product_Type_401_k
    Get_Relevant_Recordtypes --> Record_Type_Loop
    START -->  Get_Relevant_Recordtypes
    END_Assign_401_k_Record_Type(( END )):::endClass
    END_Assign_Single_k_Record_Type(( END )):::endClass
    END_Update_Stage1(( END )):::endClass
    END_Introduction_Email_Sent(( END )):::endClass
    
    
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
    |Trigger Type| Record Before Save|
    |Record Trigger Type| Create And Update|
    |Label|Opportunity | Before Update | Assign RecordType defaults and Add-On Product Stage Updates|
    |Status|Active|
    |Filter Formula|ISNEW() || ISCHANGED({!$Record.Product_Type__c}) || ISCHANGED({!$Record.Introduction_Email_Sent__c})|
    |Description|Optimization, updated with entry gate and reduced soql queries from 5 to 1|
    |Environments|Default|
    |Interview Label|Opportunity | Before Update | Add-On Product Stage Updates {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Relevant_Recordtypes](#get_relevant_recordtypes)|
    |Next Node|[Get_Relevant_Recordtypes](#get_relevant_recordtypes)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |ancillaryFlatId|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |ancillaryHourlyId|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |currentItem_Filter_collection_to_401k_record_type|SObject|⬜|⬜|⬜|RecordType|<!-- -->|
    |currentItem_Filter_collection_to_single_k_record_type|SObject|⬜|⬜|⬜|RecordType|<!-- -->|
    |epsId|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |fourOhOneKayId|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |singlekId|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Assign_401_k_Record_Type
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign 401(k) Record Type|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.RecordTypeId| Assign|fourOhOneKayId|
    
    
    
    
    ### Assign_Single_k_Record_Type
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Single(k) Record Type|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.RecordTypeId| Assign|singlekId|
    
    
    
    
    ### Define_401k_id
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Define 401k id|
    |Connector|[Record_Type_Loop](#record_type_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |fourOhOneKayId| Assign|Record_Type_Loop.Id|
    
    
    
    
    ### Define_ancillary_flat_id
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Define ancillary flat id|
    |Connector|[Record_Type_Loop](#record_type_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |ancillaryFlatId| Assign|Record_Type_Loop.Id|
    
    
    
    
    ### Define_ancillary_hourly_id
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Define ancillary hourly id|
    |Connector|[Record_Type_Loop](#record_type_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |ancillaryHourlyId| Assign|Record_Type_Loop.Id|
    
    
    
    
    ### Define_EPS_Id
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Define EPS Id|
    |Connector|[Record_Type_Loop](#record_type_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |epsId| Assign|Record_Type_Loop.Id|
    
    
    
    
    ### Define_Singlek_id
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Define Singlek id|
    |Connector|[Record_Type_Loop](#record_type_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |singlekId| Assign|Record_Type_Loop.Id|
    
    
    
    
    ### Update_Stage1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Update Stage|
    |Description|Stage = In Progress|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.StageName| Assign|In Progress|
    
    
    
    
    ### Introduction_Email_Sent
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Intro Email Sent?|
    |Description|Is Enhanced Payroll Services Product and Introduction email sent?|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Stage1](#update_stage1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record__Prior.Introduction_Email_Sent__c| Is Null|✅|
    |2|$Record.Introduction_Email_Sent__c| Is Null|⬜|
    |3|$Record.RecordTypeId| Equal To|epsId|
    
    
    
    
    ### Product_Type_401_k
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Product Type = 401(k) ?|
    |Description|Is product type = 401(k) and Record Type not equal to Ancillary Billing Flat Fee or Ancillary Billing Hourly Estimate|
    |Default Connector|[Product_Type_Single_k](#product_type_single_k)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes401k (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_401_k_Record_Type](#assign_401_k_record_type)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Product_Type__c| Equal To|401(k)|
    |2|$Record.RecordTypeId| Not Equal To|ancillaryFlatId|
    |3|$Record.RecordTypeId| Not Equal To|ancillaryHourlyId|
    
    
    
    
    ### Product_Type_Single_k
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Product Type = Single(k) ?|
    |Description|Is product type = Single(k)|
    |Default Connector|[Introduction_Email_Sent](#introduction_email_sent)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule YesSinglek (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Single_k_Record_Type](#assign_single_k_record_type)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Product_Type__c| Equal To|Single(k)|
    
    
    
    
    ### Which_recordType_am_I
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Which recordType am I|
    |Description|Introspection|
    |Default Connector|[Record_Type_Loop](#record_type_loop)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule I_am_singleK (I am singleK)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Define_Singlek_id](#define_singlek_id)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Record_Type_Loop.DeveloperName| Equal To|Single_k|
    
    
    
    
    #### Rule I_am_ancillary_flat (I am ancillary flat)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Define_ancillary_flat_id](#define_ancillary_flat_id)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Record_Type_Loop.DeveloperName| Equal To|Ancillary_Billing_Flat_FEe|
    
    
    
    
    #### Rule I_am_ancillary_hourly (I am ancillary hourly)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Define_ancillary_hourly_id](#define_ancillary_hourly_id)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Record_Type_Loop.DeveloperName| Equal To|Ancillary_Billing_Hourly_Estimate|
    
    
    
    
    #### Rule I_am_401k (I am 401k)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Define_401k_id](#define_401k_id)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Record_Type_Loop.DeveloperName| Equal To|X401_k|
    
    
    
    
    #### Rule I_am_EPS (I am EPS)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Define_EPS_Id](#define_eps_id)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Record_Type_Loop.DeveloperName| Equal To|Enhanced_Payroll_Services_Product|
    
    
    
    
    ### Record_Type_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Record Type Loop|
    |Collection Reference|[Get_Relevant_Recordtypes](#get_relevant_recordtypes)|
    |Iteration Order|Asc|
    |Next Value Connector|[Which_recordType_am_I](#which_recordtype_am_i)|
    |No More Values Connector|[Product_Type_401_k](#product_type_401_k)|
    
    
    ### Get_Relevant_Recordtypes
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|RecordType|
    |Label|Get Relevant Recordtypes|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Queried Fields|- Id<br/>- DeveloperName<br/>|
    |Store Output Automatically|✅|
    |Connector|[Record_Type_Loop](#record_type_loop)|
    
    
    #### Filters (logic: **1 AND (2 OR 3 OR 4 OR 5 OR 6)**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|SobjectType| Equal To|Opportunity|
    |2|DeveloperName| Equal To|Enhanced_Payroll_Services_Product|
    |3|DeveloperName| Equal To|Ancillary_Billing_Flat_FEe|
    |4|DeveloperName| Equal To|Ancillary_Billing_Hourly_Estimate|
    |5|DeveloperName| Equal To|X401_k|
    |6|DeveloperName| Equal To|Single_k|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

