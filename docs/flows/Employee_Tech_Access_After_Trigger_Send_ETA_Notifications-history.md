# Employee_Tech_Access_After_Trigger_Send_ETA_Notifications history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Employee_Tech_Access_After_Trigger_Send_ETA_Notifications-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "2467378414"
    
    Copy_1_of_Send_Email("📧 <em></em><br/>Copy 1 of Send Email"):::actionCalls
    click Copy_1_of_Send_Email "#copy_1_of_send_email" "3427707687"
    
    myRule_10_A1("📧 <em></em><br/>Salesforce Access Owner Alert"):::actionCalls
    click myRule_10_A1 "#myrule_10_a1" "93244754"
    
    myRule_12_A1("📧 <em></em><br/>BI Owner Removal Alert"):::actionCalls
    click myRule_12_A1 "#myrule_12_a1" "2162695075"
    
    myRule_21_A1("📧 <em></em><br/>Employee Tech Access Removal Request"):::actionCalls
    click myRule_21_A1 "#myrule_21_a1" "116250897"
    
    myRule_24_A1("📧 <em></em><br/>Send Email Alert"):::actionCalls
    click myRule_24_A1 "#myrule_24_a1" "191363049"
    
    myRule_3_A1("⚡ <em></em><br/>Submit"):::actionCalls
    click myRule_3_A1 "#myrule_3_a1" "3941647896"
    
    myRule_5_A1("📧 <em></em><br/>Send Alert"):::actionCalls
    click myRule_5_A1 "#myrule_5_a1" "1366082212"
    
    myRule_8_A1("📧 <em></em><br/>Standard Ubiquity Package Alert"):::actionCalls
    click myRule_8_A1 "#myrule_8_a1" "840520952"
    
    Schwab_Matrix_Access_Requested_Email_Alert("📧 <em></em><br/>Schwab/Matrix Access Requested Email Alert"):::actionCalls
    click Schwab_Matrix_Access_Requested_Email_Alert "#schwab_matrix_access_requested_email_alert" "190120692"
    
    Schwab_Matrix_Removal_Alert("📧 <em></em><br/>Schwab/Matrix Removal Alert"):::actionCalls
    click Schwab_Matrix_Removal_Alert "#schwab_matrix_removal_alert" "4068696820"
    
    myRule_1{"🔀 <em></em><br/>Security Admin Request Submitted"}:::decisions
    click myRule_1 "#myrule_1" "931450703"
    
    myRule_10{"🔀 <em></em><br/>Business Intelligence Owner Request"}:::decisions
    click myRule_10 "#myrule_10" "1116470325"
    
    myRule_12{"🔀 <em></em><br/>Business Intelligence Owner Removal Request"}:::decisions
    click myRule_12 "#myrule_12" "2997234806"
    
    myRule_15{"🔀 <em></em><br/>Update Product Success Product Owner"}:::decisions
    click myRule_15 "#myrule_15" "3811259465"
    
    myRule_18{"🔀 <em></em><br/>Update BI Product Owner"}:::decisions
    click myRule_18 "#myrule_18" "243533905"
    
    myRule_21{"🔀 <em></em><br/>Standard Package Removal"}:::decisions
    click myRule_21 "#myrule_21" "1582879825"
    
    myRule_24{"🔀 <em></em><br/>LMS Access Requested"}:::decisions
    click myRule_24 "#myrule_24" "2924852934"
    
    myRule_3{"🔀 <em></em><br/>Product Success Access Owner Alert"}:::decisions
    click myRule_3 "#myrule_3" "1357619818"
    
    myRule_5{"🔀 <em></em><br/>Product Success Removal Owner Alert"}:::decisions
    click myRule_5 "#myrule_5" "1670180280"
    
    myRule_8{"🔀 <em></em><br/>Standard Ubiquity Package Requested"}:::decisions
    click myRule_8 "#myrule_8" "1163104948"
    
    Schwab_Or_Matrix_Access_Requested{"🔀 <em></em><br/>Schwab Or Matrix Access Requested?"}:::decisions
    click Schwab_Or_Matrix_Access_Requested "#schwab_or_matrix_access_requested" "3510254100"
    
    Schwab_Or_Matrix_Removal{"🔀 <em></em><br/>Schwab Or Matrix Removal"}:::decisions
    click Schwab_Or_Matrix_Removal "#schwab_or_matrix_removal" "3591479243"
    
    myRule_15_A1[("🛠️ <em></em><br/>Update Technology Owner")]:::recordUpdates
    click myRule_15_A1 "#myrule_15_a1" "956573081"
    
    myRule_18_A1[("🛠️ <em></em><br/>Update Owner to BI")]:::recordUpdates
    click myRule_18_A1 "#myrule_18_a1" "3153051993"
    
    Copy_1_of_Send_Email --> END_Copy_1_of_Send_Email
    myRule_10_A1 --> END_myRule_10_A1
    myRule_12_A1 --> END_myRule_12_A1
    myRule_21_A1 --> END_myRule_21_A1
    myRule_24_A1 --> END_myRule_24_A1
    myRule_3_A1 --> END_myRule_3_A1
    myRule_5_A1 --> END_myRule_5_A1
    myRule_8_A1 --> END_myRule_8_A1
    Schwab_Matrix_Access_Requested_Email_Alert --> END_Schwab_Matrix_Access_Requested_Email_Alert
    Schwab_Matrix_Removal_Alert --> END_Schwab_Matrix_Removal_Alert
    myRule_1 --> |"TRUE_Security Admin Request Submitted"| Copy_1_of_Send_Email
    myRule_1 --> |"FALSE_Security Admin Request Submitted"| myRule_3
    myRule_10 --> |"TRUE_Business Intelligence Owner Request"| myRule_10_A1
    myRule_10 --> |"FALSE_Business Intelligence Owner Request"| myRule_12
    myRule_12 --> |"TRUE_Business Intelligence Owner Removal Request"| myRule_12_A1
    myRule_12 --> |"FALSE_Business Intelligence Owner Removal Request"| myRule_15
    myRule_15 --> |"TRUE_Update Product Success Product Owner"| myRule_15_A1
    myRule_15 --> |"FALSE_Update Product Success Product Owner"| myRule_18
    myRule_18 --> |"TRUE_Update BI Product Owner"| myRule_18_A1
    myRule_18 --> |"FALSE_Update BI Product Owner"| myRule_21
    myRule_21 --> |"TRUE_Standard Package Removal"| myRule_21_A1
    myRule_21 --> |"FALSE_Standard Package Removal"| myRule_24
    myRule_24 --> |"TRUE_LMS Access Requested"| myRule_24_A1
    myRule_24 --> |"FALSE_LMS Access Requested"| END_myRule_24
    myRule_3 --> |"TRUE_Product Success Access Owner Alert"| myRule_3_A1
    myRule_3 --> |"FALSE_Product Success Access Owner Alert"| myRule_5
    myRule_5 --> |"TRUE_Product Success Removal Owner Alert"| myRule_5_A1
    myRule_5 --> |"FALSE_Product Success Removal Owner Alert"| myRule_8
    myRule_8 --> |"TRUE_Standard Ubiquity Package Requested"| myRule_8_A1
    myRule_8 --> |"FALSE_Standard Ubiquity Package Requested"| myRule_10
    Schwab_Or_Matrix_Access_Requested --> |"Outcome 1 of Schwab Or Matrix Access Requested?"| Schwab_Matrix_Access_Requested_Email_Alert
    Schwab_Or_Matrix_Access_Requested --> |"Default Outcome"| Schwab_Or_Matrix_Removal
    Schwab_Or_Matrix_Removal --> |"Yes, Remove Schwab/Matrix"| Schwab_Matrix_Removal_Alert
    Schwab_Or_Matrix_Removal --> |"Default Outcome"| myRule_1
    myRule_15_A1 --> END_myRule_15_A1
    myRule_18_A1 --> END_myRule_18_A1
    START -->  Schwab_Or_Matrix_Access_Requested
    END_Copy_1_of_Send_Email(( END )):::endClass
    END_myRule_10_A1(( END )):::endClass
    END_myRule_12_A1(( END )):::endClass
    END_myRule_21_A1(( END )):::endClass
    END_myRule_24_A1(( END )):::endClass
    END_myRule_3_A1(( END )):::endClass
    END_myRule_5_A1(( END )):::endClass
    END_myRule_8_A1(( END )):::endClass
    END_Schwab_Matrix_Access_Requested_Email_Alert(( END )):::endClass
    END_Schwab_Matrix_Removal_Alert(( END )):::endClass
    END_myRule_24(( END )):::endClass
    END_myRule_15_A1(( END )):::endClass
    END_myRule_18_A1(( END )):::endClass
    
    
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
    |Object|Employee_Technology_Access__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create And Update|
    |Label|Employee Tech Access | After Trigger | Send ETA Notifications|
    |Status|Active|
    |Environments|Default|
    |Interview Label|Employee Tech Access | After Trigger | Send ETA Notifications {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    |Connector|[Schwab_Or_Matrix_Access_Requested](#schwab_or_matrix_access_requested)|
    |Next Node|[Schwab_Or_Matrix_Access_Requested](#schwab_or_matrix_access_requested)|
    
    
    ## Flow Nodes Details
    
    ### Copy_1_of_Send_Email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Copy 1 of Send Email|
    |Action Type|Email Alert|
    |Action Name|Employee_Technology_Access__c.HR_Security_Technology_Access_Request|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Employee_Technology_Access__c.HR_Security_Technology_Access_Request|
    |Offset|0|
    | SObject Row Id (input)|$Record.Id|
    
    
    ### myRule_10_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Salesforce Access Owner Alert|
    |Action Type|Email Alert|
    |Action Name|Employee_Technology_Access__c.HR_Salesforce_Technology_Access_Request|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Employee_Technology_Access__c.HR_Salesforce_Technology_Access_Request|
    |Offset|0|
    | SObject Row Id (input)|$Record.Id|
    
    
    ### myRule_12_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|BI Owner Removal Alert|
    |Action Type|Email Alert|
    |Action Name|Employee_Technology_Access__c.HR_BI_Access_Removal_Request|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Employee_Technology_Access__c.HR_BI_Access_Removal_Request|
    |Offset|0|
    | SObject Row Id (input)|$Record.Id|
    
    
    ### myRule_21_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Employee Tech Access Removal Request|
    |Action Type|Email Alert|
    |Action Name|Employee_Technology_Access__c.HR_Technology_Access_Removal_Request|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Employee_Technology_Access__c.HR_Technology_Access_Removal_Request|
    |Offset|0|
    | SObject Row Id (input)|$Record.Id|
    
    
    ### myRule_24_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send Email Alert|
    |Action Type|Email Alert|
    |Action Name|Employee_Technology_Access__c.HR_360Learning_Technology_Access_Request|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Employee_Technology_Access__c.HR_360Learning_Technology_Access_Request|
    |Offset|0|
    | SObject Row Id (input)|$Record.Id|
    
    
    ### myRule_3_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Submit|
    |Action Type|Submit|
    |Action Name|submit|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|submit|
    |Offset|0|
    |Object Id (input)|$Record.Id|
    |Process Definition Name Or Id (input)|04a1G000000HC2q|
    
    
    ### myRule_5_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send Alert|
    |Action Type|Email Alert|
    |Action Name|Employee_Technology_Access__c.HR_Paradigm_Access_Removal_Request|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Employee_Technology_Access__c.HR_Paradigm_Access_Removal_Request|
    |Offset|0|
    | SObject Row Id (input)|$Record.Id|
    
    
    ### myRule_8_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Standard Ubiquity Package Alert|
    |Action Type|Email Alert|
    |Action Name|Employee_Technology_Access__c.HR_SUP_Technology_Access_Request|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Employee_Technology_Access__c.HR_SUP_Technology_Access_Request|
    |Offset|0|
    | SObject Row Id (input)|$Record.Id|
    
    
    ### Schwab_Matrix_Access_Requested_Email_Alert
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Schwab/Matrix Access Requested Email Alert|
    |Action Type|Email Alert|
    |Action Name|Employee_Technology_Access__c.HR_Schwab_Matrix_Access_Request|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Employee_Technology_Access__c.HR_Schwab_Matrix_Access_Request|
    |Offset|0|
    | SObject Row Id (input)|$Record.Id|
    
    
    ### Schwab_Matrix_Removal_Alert
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Schwab/Matrix Removal Alert|
    |Action Type|Email Alert|
    |Action Name|Employee_Technology_Access__c.HR_Schwab_Matrix_Access_Removal|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Employee_Technology_Access__c.HR_Schwab_Matrix_Access_Removal|
    |Offset|0|
    | SObject Row Id (input)|$Record.Id|
    
    
    ### myRule_1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Security Admin Request Submitted|
    |Default Connector|[myRule_3](#myrule_3)|
    |Default Connector Label|FALSE_Security Admin Request Submitted|
    
    
    #### Rule TRUE_myRule_1 (TRUE_Security Admin Request Submitted)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Copy_1_of_Send_Email](#copy_1_of_send_email)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Technology_Access_Owner__c| Equal To|IT|
    |2|$Record.Access_Requested_Date__c| Is Null|⬜|
    |3|$Record.Access_Granted_Date__c| Is Null|✅|
    
    
    
    
    ### myRule_10
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Business Intelligence Owner Request|
    |Default Connector|[myRule_12](#myrule_12)|
    |Default Connector Label|FALSE_Business Intelligence Owner Request|
    
    
    #### Rule TRUE_myRule_10 (TRUE_Business Intelligence Owner Request)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_10_A1](#myrule_10_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Technology_Access_Owner__c| Equal To|Business Intelligence|
    |2|$Record.Access_Granted_Date__c| Is Null|✅|
    |3|$Record.Access_Requested_Date__c| Is Null|⬜|
    
    
    
    
    ### myRule_12
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Business Intelligence Owner Removal Request|
    |Default Connector|[myRule_15](#myrule_15)|
    |Default Connector Label|FALSE_Business Intelligence Owner Removal Request|
    
    
    #### Rule TRUE_myRule_12 (TRUE_Business Intelligence Owner Removal Request)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_12_A1](#myrule_12_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Technology_Access_Owner__c| Equal To|Business Intelligence|
    |2|$Record.Access_Removed_Requested__c| Is Changed|✅|
    |3|$Record.Access_Removed_Requested__c| Is Null|⬜|
    
    
    
    
    ### myRule_15
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Update Product Success Product Owner|
    |Default Connector|[myRule_18](#myrule_18)|
    |Default Connector Label|FALSE_Update Product Success Product Owner|
    
    
    #### Rule TRUE_myRule_15 (TRUE_Update Product Success Product Owner)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_15_A1](#myrule_15_a1)|
    |Condition Logic|1 AND 2 AND (3 OR 4 OR 5)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Product_Name__c| Is Changed|✅|
    |2|$Record.Product_Name__c| Is Null|⬜|
    |3|$Record.Product_Name__c| Equal To|Paradigm|
    |4|$Record.Product_Name__c| Equal To|Authy|
    |5|$Record.Product_Name__c| Equal To|JIRA|
    
    
    
    
    ### myRule_18
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Update BI Product Owner|
    |Default Connector|[myRule_21](#myrule_21)|
    |Default Connector Label|FALSE_Update BI Product Owner|
    
    
    #### Rule TRUE_myRule_18 (TRUE_Update BI Product Owner)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_18_A1](#myrule_18_a1)|
    |Condition Logic|1 AND 2 AND (3 OR 4 OR 5 OR 6 OR 7 OR 8 OR 9 OR 10 OR 11)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Product_Name__c| Is Changed|✅|
    |2|$Record.Product_Name__c| Is Null|⬜|
    |3|$Record.Product_Name__c| Equal To|Salesforce|
    |4|$Record.Product_Name__c| Equal To|G-Sheet - Annual KPI|
    |5|$Record.Product_Name__c| Equal To|DataStudio_Annual_KPI|
    |6|$Record.Product_Name__c| Equal To|G-Sheet - Growth Dashboard|
    |7|$Record.Product_Name__c| Equal To|DataStudio - Growth Dashboard|
    |8|$Record.Product_Name__c| Equal To|G-Sheet - Annual Operation Metrics|
    |9|$Record.Product_Name__c| Equal To|DataStudio - Annual Operation Metrics|
    |10|$Record.Product_Name__c| Equal To|G-Sheet - JPM Partner Dashboard|
    |11|$Record.Product_Name__c| Equal To|DataStudio - JPM Partner Dashboard|
    
    
    
    
    ### myRule_21
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Standard Package Removal|
    |Default Connector|[myRule_24](#myrule_24)|
    |Default Connector Label|FALSE_Standard Package Removal|
    
    
    #### Rule TRUE_myRule_21 (TRUE_Standard Package Removal)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_21_A1](#myrule_21_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Product_Type__c| Equal To|Standard Ubiquity Package|
    |2|$Record.Access_Removed_Requested__c| Is Changed|✅|
    |3|$Record.Access_Removed_Requested__c| Is Null|⬜|
    
    
    
    
    ### myRule_24
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|LMS Access Requested|
    |Default Connector Label|FALSE_LMS Access Requested|
    
    
    #### Rule TRUE_myRule_24 (TRUE_LMS Access Requested)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_24_A1](#myrule_24_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Standard_Products__c| Contains|360Learning|
    |2|$Record.Access_Requested_Date__c| Is Null|⬜|
    |3|$Record.Access_Granted_Date__c| Is Null|✅|
    
    
    
    
    ### myRule_3
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Product Success Access Owner Alert|
    |Default Connector|[myRule_5](#myrule_5)|
    |Default Connector Label|FALSE_Product Success Access Owner Alert|
    
    
    #### Rule TRUE_myRule_3 (TRUE_Product Success Access Owner Alert)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_3_A1](#myrule_3_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Technology_Access_Owner__c| Equal To|PRKS|
    |2|$Record.Access_Requested_Date__c| Is Null|⬜|
    |3|$Record.Access_Granted_Date__c| Is Null|✅|
    
    
    
    
    ### myRule_5
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Product Success Removal Owner Alert|
    |Default Connector|[myRule_8](#myrule_8)|
    |Default Connector Label|FALSE_Product Success Removal Owner Alert|
    
    
    #### Rule TRUE_myRule_5 (TRUE_Product Success Removal Owner Alert)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_5_A1](#myrule_5_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Access_Removed_Requested__c| Is Changed|✅|
    |2|$Record.Access_Removed_Requested__c| Is Null|⬜|
    |3|$Record.Technology_Access_Owner__c| Equal To|PRKS|
    
    
    
    
    ### myRule_8
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Standard Ubiquity Package Requested|
    |Default Connector|[myRule_10](#myrule_10)|
    |Default Connector Label|FALSE_Standard Ubiquity Package Requested|
    
    
    #### Rule TRUE_myRule_8 (TRUE_Standard Ubiquity Package Requested)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_8_A1](#myrule_8_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.RecordTypeId| Equal To|0121G000000g1bvQAA|
    |2|$Record.Access_Granted_Date__c| Is Null|✅|
    
    
    
    
    ### Schwab_Or_Matrix_Access_Requested
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Schwab Or Matrix Access Requested?|
    |Default Connector|[Schwab_Or_Matrix_Removal](#schwab_or_matrix_removal)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Outcome_1_of_Schwab_Or_Matrix_Access_Requested (Outcome 1 of Schwab Or Matrix Access Requested?)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[Schwab_Matrix_Access_Requested_Email_Alert](#schwab_matrix_access_requested_email_alert)|
    |Condition Logic|(1 OR 2) AND 3|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Product_Name__c| Contains|Schwab|
    |2|$Record.Product_Name__c| Contains|Matrix|
    |3|$Record.Access_Requested_Date__c| Is Null|⬜|
    
    
    
    
    ### Schwab_Or_Matrix_Removal
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Schwab Or Matrix Removal|
    |Default Connector|[myRule_1](#myrule_1)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes_Remove_Schwab_Matrix (Yes, Remove Schwab/Matrix)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[Schwab_Matrix_Removal_Alert](#schwab_matrix_removal_alert)|
    |Condition Logic|(1 OR 2) AND 3|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Product_Name__c| Contains|Schwab|
    |2|$Record.Product_Name__c| Contains|Matrix|
    |3|$Record.Access_Removed_Requested__c| Is Null|⬜|
    
    
    
    
    ### myRule_15_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Technology Owner|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Technology_Access_Owner__c|PRKS|
    
    
    
    
    ### myRule_18_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Owner to BI|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Technology_Access_Owner__c|Business Intelligence|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

