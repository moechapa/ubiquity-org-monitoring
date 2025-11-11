# HR_Technology_Access_Notifications history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](HR_Technology_Access_Notifications-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Employee_Technology_Access__c</b></br>Type: <b>On All Changes</b>"]):::startClass
    click START "#general-information" "681327536"
    
    START --> isChangedDecision6_myRule_5_Access_Removed_Requested_c
    myRule_10_A1("📧 <em></em><br/>Salesforce Access Owner Alert"):::actionCalls
    click myRule_10_A1 "#myrule_10_a1" "1991447028"
    
    myRule_12_A1("📧 <em></em><br/>BI Owner Removal Alert"):::actionCalls
    click myRule_12_A1 "#myrule_12_a1" "1599867481"
    
    myRule_1_A1("📧 <em></em><br/>Send Email"):::actionCalls
    click myRule_1_A1 "#myrule_1_a1" "2556158559"
    
    myRule_21_A1("📧 <em></em><br/>Employee Tech Access Removal Request"):::actionCalls
    click myRule_21_A1 "#myrule_21_a1" "3552539359"
    
    myRule_24_A1("📧 <em></em><br/>Send Email Alert"):::actionCalls
    click myRule_24_A1 "#myrule_24_a1" "443904097"
    
    myRule_3_A1("⚡ <em></em><br/>Submit"):::actionCalls
    click myRule_3_A1 "#myrule_3_a1" "1320664706"
    
    myRule_5_A1("📧 <em></em><br/>Send Alert"):::actionCalls
    click myRule_5_A1 "#myrule_5_a1" "847102784"
    
    myRule_8_A1("📧 <em></em><br/>Standard Ubiquity Package Alert"):::actionCalls
    click myRule_8_A1 "#myrule_8_a1" "1062521831"
    
    isChangedDecision13_myRule_12_Access_Removed_Requested_c{"🔀 <em></em><br/>isChangedDecision13_myRule_12_Access_Removed_Requested_c"}:::decisions
    click isChangedDecision13_myRule_12_Access_Removed_Requested_c "#ischangeddecision13_myrule_12_access_removed_requested_c" "112879609"
    
    isChangedDecision16_myRule_15_Product_Name_c{"🔀 <em></em><br/>isChangedDecision16_myRule_15_Product_Name_c"}:::decisions
    click isChangedDecision16_myRule_15_Product_Name_c "#ischangeddecision16_myrule_15_product_name_c" "3577992402"
    
    isChangedDecision19_myRule_18_Product_Name_c{"🔀 <em></em><br/>isChangedDecision19_myRule_18_Product_Name_c"}:::decisions
    click isChangedDecision19_myRule_18_Product_Name_c "#ischangeddecision19_myrule_18_product_name_c" "272868502"
    
    isChangedDecision22_myRule_21_Access_Removed_Requested_c{"🔀 <em></em><br/>isChangedDecision22_myRule_21_Access_Removed_Requested_c"}:::decisions
    click isChangedDecision22_myRule_21_Access_Removed_Requested_c "#ischangeddecision22_myrule_21_access_removed_requested_c" "3215988156"
    
    isChangedDecision6_myRule_5_Access_Removed_Requested_c{"🔀 <em></em><br/>isChangedDecision6_myRule_5_Access_Removed_Requested_c"}:::decisions
    click isChangedDecision6_myRule_5_Access_Removed_Requested_c "#ischangeddecision6_myrule_5_access_removed_requested_c" "960306217"
    
    myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
    click myDecision "#mydecision" "605414680"
    
    myDecision11{"🔀 <em></em><br/>myDecision11"}:::decisions
    click myDecision11 "#mydecision11" "328733904"
    
    myDecision14{"🔀 <em></em><br/>myDecision14"}:::decisions
    click myDecision14 "#mydecision14" "540329592"
    
    myDecision17{"🔀 <em></em><br/>myDecision17"}:::decisions
    click myDecision17 "#mydecision17" "505291734"
    
    myDecision2{"🔀 <em></em><br/>myDecision2"}:::decisions
    click myDecision2 "#mydecision2" "1816376221"
    
    myDecision20{"🔀 <em></em><br/>myDecision20"}:::decisions
    click myDecision20 "#mydecision20" "1898236158"
    
    myDecision23{"🔀 <em></em><br/>myDecision23"}:::decisions
    click myDecision23 "#mydecision23" "3799887500"
    
    myDecision4{"🔀 <em></em><br/>myDecision4"}:::decisions
    click myDecision4 "#mydecision4" "254286856"
    
    myDecision7{"🔀 <em></em><br/>myDecision7"}:::decisions
    click myDecision7 "#mydecision7" "2579692794"
    
    myDecision9{"🔀 <em></em><br/>myDecision9"}:::decisions
    click myDecision9 "#mydecision9" "855560092"
    
    myRule_15_A1[("🛠️ <em></em><br/>Update Technology Owner")]:::recordUpdates
    click myRule_15_A1 "#myrule_15_a1" "3564817837"
    
    myRule_18_A1[("🛠️ <em></em><br/>Update Owner to BI")]:::recordUpdates
    click myRule_18_A1 "#myrule_18_a1" "3797147292"
    
    myRule_10_A1 --> END_myRule_10_A1
    myRule_12_A1 --> END_myRule_12_A1
    myRule_1_A1 --> END_myRule_1_A1
    myRule_21_A1 --> END_myRule_21_A1
    myRule_24_A1 --> END_myRule_24_A1
    myRule_3_A1 --> END_myRule_3_A1
    myRule_5_A1 --> END_myRule_5_A1
    myRule_8_A1 --> END_myRule_8_A1
    isChangedDecision13_myRule_12_Access_Removed_Requested_c --> |"isChangedRule_13_myRule_12_Access_Removed_Requested_c"| isChangedDecision16_myRule_15_Product_Name_c
    isChangedDecision13_myRule_12_Access_Removed_Requested_c --> |"default"| isChangedDecision16_myRule_15_Product_Name_c
    isChangedDecision16_myRule_15_Product_Name_c --> |"isChangedRule_16_myRule_15_Product_Name_c"| isChangedDecision19_myRule_18_Product_Name_c
    isChangedDecision16_myRule_15_Product_Name_c --> |"default"| isChangedDecision19_myRule_18_Product_Name_c
    isChangedDecision19_myRule_18_Product_Name_c --> |"isChangedRule_19_myRule_18_Product_Name_c"| isChangedDecision22_myRule_21_Access_Removed_Requested_c
    isChangedDecision19_myRule_18_Product_Name_c --> |"default"| isChangedDecision22_myRule_21_Access_Removed_Requested_c
    isChangedDecision22_myRule_21_Access_Removed_Requested_c --> |"isChangedRule_22_myRule_21_Access_Removed_Requested_c"| myDecision
    isChangedDecision22_myRule_21_Access_Removed_Requested_c --> |"default"| myDecision
    isChangedDecision6_myRule_5_Access_Removed_Requested_c --> |"isChangedRule_6_myRule_5_Access_Removed_Requested_c"| isChangedDecision13_myRule_12_Access_Removed_Requested_c
    isChangedDecision6_myRule_5_Access_Removed_Requested_c --> |"default"| isChangedDecision13_myRule_12_Access_Removed_Requested_c
    myDecision --> |"Security Admin Request Submitted"| myRule_1_A1
    myDecision --> |"default"| myDecision2
    myDecision11 --> |"Business Intelligence Owner Removal Request"| myRule_12_A1
    myDecision11 --> |"default"| myDecision14
    myDecision14 --> |"Update Product Success Product Owner"| myRule_15_A1
    myDecision14 --> |"default"| myDecision17
    myDecision17 --> |"Update BI Product Owner"| myRule_18_A1
    myDecision17 --> |"default"| myDecision20
    myDecision2 --> |"Product Success Access Owner Alert"| myRule_3_A1
    myDecision2 --> |"default"| myDecision4
    myDecision20 --> |"Standard Package Removal"| myRule_21_A1
    myDecision20 --> |"default"| myDecision23
    myDecision23 --> |"LMS Access Requested"| myRule_24_A1
    myDecision23 --> |"default"| END_myDecision23
    myDecision4 --> |"Product Success Removal Owner Alert"| myRule_5_A1
    myDecision4 --> |"default"| myDecision7
    myDecision7 --> |"Standard Ubiquity Package Requested"| myRule_8_A1
    myDecision7 --> |"default"| myDecision9
    myDecision9 --> |"Business Intelligence Owner Request"| myRule_10_A1
    myDecision9 --> |"default"| myDecision11
    myRule_15_A1 --> END_myRule_15_A1
    myRule_18_A1 --> END_myRule_18_A1
    END_myRule_10_A1(( END )):::endClass
    END_myRule_12_A1(( END )):::endClass
    END_myRule_1_A1(( END )):::endClass
    END_myRule_21_A1(( END )):::endClass
    END_myRule_24_A1(( END )):::endClass
    END_myRule_3_A1(( END )):::endClass
    END_myRule_5_A1(( END )):::endClass
    END_myRule_8_A1(( END )):::endClass
    END_myDecision23(( END )):::endClass
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
    |Process Type| Workflow|
    |Label|HR | Technology Access Notifications|
    |Status|Obsolete|
    |Interview Label|HR_Technology_Access_Notifications-18_InterviewLabel|
    |Start Element Reference|[isChangedDecision6_myRule_5_Access_Removed_Requested_c](#ischangeddecision6_myrule_5_access_removed_requested_c)|
    | Object Type (PM)|Employee_Technology_Access__c|
    | Object Variable (PM)|myVariable_current|
    | Old Object Variable (PM)|myVariable_old|
    | Trigger Type (PM)|onAllChanges|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |myVariable_current|SObject|⬜|✅|✅|Employee_Technology_Access__c|<!-- -->|
    |myVariable_old|SObject|⬜|✅|⬜|Employee_Technology_Access__c|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### myRule_10_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Salesforce Access Owner Alert|
    |Action Type|Email Alert|
    |Action Name|Employee_Technology_Access__c.HR_Salesforce_Technology_Access_Request|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Employee_Technology_Access__c.HR_Salesforce_Technology_Access_Request|
    |Email Alert Selection (PM)|HR_Salesforce_Technology_Access_Request|
    | SObject Row Id (input)|myVariable_current.Id|
    
    
    ### myRule_12_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|BI Owner Removal Alert|
    |Action Type|Email Alert|
    |Action Name|Employee_Technology_Access__c.HR_BI_Access_Removal_Request|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Employee_Technology_Access__c.HR_BI_Access_Removal_Request|
    |Email Alert Selection (PM)|HR_BI_Access_Removal_Request|
    | SObject Row Id (input)|myVariable_current.Id|
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send Email|
    |Action Type|Email Alert|
    |Action Name|Employee_Technology_Access__c.HR_Security_Technology_Access_Request|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Employee_Technology_Access__c.HR_Security_Technology_Access_Request|
    |Email Alert Selection (PM)|HR_Security_Technology_Access_Request|
    | SObject Row Id (input)|myVariable_current.Id|
    
    
    ### myRule_21_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Employee Tech Access Removal Request|
    |Action Type|Email Alert|
    |Action Name|Employee_Technology_Access__c.HR_Technology_Access_Removal_Request|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Employee_Technology_Access__c.HR_Technology_Access_Removal_Request|
    |Email Alert Selection (PM)|HR_Technology_Access_Removal_Request|
    | SObject Row Id (input)|myVariable_current.Id|
    
    
    ### myRule_24_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send Email Alert|
    |Action Type|Email Alert|
    |Action Name|Employee_Technology_Access__c.HR_360Learning_Technology_Access_Request|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Employee_Technology_Access__c.HR_360Learning_Technology_Access_Request|
    |Email Alert Selection (PM)|HR_360Learning_Technology_Access_Request|
    | SObject Row Id (input)|myVariable_current.Id|
    
    
    ### myRule_3_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Submit|
    |Action Type|Submit|
    |Action Name|submit|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|submit|
    |Process Selection (PM)|Paradigm ETA Request Approval - Paradigm_ETA_Request_Approval|
    |Selection Type (PM)|selectedProcess|
    |Submitter Type (PM)|currentUser|
    |Object Id (input)|myVariable_current.Id|
    |Comment (input)|<!-- -->|
    |Process Definition Name Or Id (input)|Paradigm_ETA_Request_Approval|
    |Skip Entry Criteria (input)|✅|
    
    
    ### myRule_5_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send Alert|
    |Action Type|Email Alert|
    |Action Name|Employee_Technology_Access__c.HR_Paradigm_Access_Removal_Request|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Employee_Technology_Access__c.HR_Paradigm_Access_Removal_Request|
    |Email Alert Selection (PM)|HR_Paradigm_Access_Removal_Request|
    | SObject Row Id (input)|myVariable_current.Id|
    
    
    ### myRule_8_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Standard Ubiquity Package Alert|
    |Action Type|Email Alert|
    |Action Name|Employee_Technology_Access__c.HR_SUP_Technology_Access_Request|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Employee_Technology_Access__c.HR_SUP_Technology_Access_Request|
    |Email Alert Selection (PM)|HR_SUP_Technology_Access_Request|
    | SObject Row Id (input)|myVariable_current.Id|
    
    
    ### isChangedDecision13_myRule_12_Access_Removed_Requested_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision13_myRule_12_Access_Removed_Requested_c](#ischangeddecision13_myrule_12_access_removed_requested_c)|
    |Default Connector|[isChangedDecision16_myRule_15_Product_Name_c](#ischangeddecision16_myrule_15_product_name_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_13_myRule_12_Access_Removed_Requested_c (isChangedRule_13_myRule_12_Access_Removed_Requested_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision16_myRule_15_Product_Name_c](#ischangeddecision16_myrule_15_product_name_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Access_Removed_Requested__c| Not Equal To|myVariable_current.Access_Removed_Requested__c|
    
    
    
    
    ### isChangedDecision16_myRule_15_Product_Name_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision16_myRule_15_Product_Name_c](#ischangeddecision16_myrule_15_product_name_c)|
    |Default Connector|[isChangedDecision19_myRule_18_Product_Name_c](#ischangeddecision19_myrule_18_product_name_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_16_myRule_15_Product_Name_c (isChangedRule_16_myRule_15_Product_Name_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision19_myRule_18_Product_Name_c](#ischangeddecision19_myrule_18_product_name_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Product_Name__c| Not Equal To|myVariable_current.Product_Name__c|
    
    
    
    
    ### isChangedDecision19_myRule_18_Product_Name_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision19_myRule_18_Product_Name_c](#ischangeddecision19_myrule_18_product_name_c)|
    |Default Connector|[isChangedDecision22_myRule_21_Access_Removed_Requested_c](#ischangeddecision22_myrule_21_access_removed_requested_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_19_myRule_18_Product_Name_c (isChangedRule_19_myRule_18_Product_Name_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision22_myRule_21_Access_Removed_Requested_c](#ischangeddecision22_myrule_21_access_removed_requested_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Product_Name__c| Not Equal To|myVariable_current.Product_Name__c|
    
    
    
    
    ### isChangedDecision22_myRule_21_Access_Removed_Requested_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision22_myRule_21_Access_Removed_Requested_c](#ischangeddecision22_myrule_21_access_removed_requested_c)|
    |Default Connector|[myDecision](#mydecision)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_22_myRule_21_Access_Removed_Requested_c (isChangedRule_22_myRule_21_Access_Removed_Requested_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myDecision](#mydecision)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Access_Removed_Requested__c| Not Equal To|myVariable_current.Access_Removed_Requested__c|
    
    
    
    
    ### isChangedDecision6_myRule_5_Access_Removed_Requested_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision6_myRule_5_Access_Removed_Requested_c](#ischangeddecision6_myrule_5_access_removed_requested_c)|
    |Default Connector|[isChangedDecision13_myRule_12_Access_Removed_Requested_c](#ischangeddecision13_myrule_12_access_removed_requested_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_6_myRule_5_Access_Removed_Requested_c (isChangedRule_6_myRule_5_Access_Removed_Requested_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision13_myRule_12_Access_Removed_Requested_c](#ischangeddecision13_myrule_12_access_removed_requested_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Access_Removed_Requested__c| Not Equal To|myVariable_current.Access_Removed_Requested__c|
    
    
    
    
    ### myDecision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision](#mydecision)|
    |Default Connector|[myDecision2](#mydecision2)|
    |Default Connector Label|default|
    |Index (PM)|numberValue: 0<br/>|
    
    
    #### Rule myRule_1 (Security Admin Request Submitted)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_A1](#myrule_1_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Technology_Access_Owner__c| Equal To|IT|
    |2|myVariable_current.Access_Requested_Date__c| Is Null|⬜|
    |3|myVariable_current.Access_Granted_Date__c| Is Null|✅|
    
    
    
    
    ### myDecision11
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision11](#mydecision11)|
    |Default Connector|[myDecision14](#mydecision14)|
    |Default Connector Label|default|
    |Index (PM)|5|
    
    
    #### Rule myRule_12 (Business Intelligence Owner Removal Request)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_12_A1](#myrule_12_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Technology_Access_Owner__c| Equal To|Business Intelligence|
    |2|isChangedRule_13_myRule_12_Access_Removed_Requested_c| Equal To|✅|
    |3|myVariable_current.Access_Removed_Requested__c| Is Null|⬜|
    
    
    
    
    ### myDecision14
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision14](#mydecision14)|
    |Default Connector|[myDecision17](#mydecision17)|
    |Default Connector Label|default|
    |Index (PM)|6|
    
    
    #### Rule myRule_15 (Update Product Success Product Owner)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_15_A1](#myrule_15_a1)|
    |Condition Logic|1 AND 2 AND (3 OR 4 OR 5)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|isChangedRule_16_myRule_15_Product_Name_c| Equal To|✅|
    |2|myVariable_current.Product_Name__c| Is Null|⬜|
    |3|myVariable_current.Product_Name__c| Equal To|Paradigm|
    |4|myVariable_current.Product_Name__c| Equal To|Authy|
    |5|myVariable_current.Product_Name__c| Equal To|JIRA|
    
    
    
    
    ### myDecision17
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision17](#mydecision17)|
    |Default Connector|[myDecision20](#mydecision20)|
    |Default Connector Label|default|
    |Index (PM)|7|
    
    
    #### Rule myRule_18 (Update BI Product Owner)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_18_A1](#myrule_18_a1)|
    |Condition Logic|1 AND 2 AND (3 OR 4 OR 5 OR 6 OR 7 OR 8 OR 9 OR 10 OR 11)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|isChangedRule_19_myRule_18_Product_Name_c| Equal To|✅|
    |2|myVariable_current.Product_Name__c| Is Null|⬜|
    |3|myVariable_current.Product_Name__c| Equal To|Salesforce|
    |4|myVariable_current.Product_Name__c| Equal To|G-Sheet - Annual KPI|
    |5|myVariable_current.Product_Name__c| Equal To|DataStudio_Annual_KPI|
    |6|myVariable_current.Product_Name__c| Equal To|G-Sheet - Growth Dashboard|
    |7|myVariable_current.Product_Name__c| Equal To|DataStudio - Growth Dashboard|
    |8|myVariable_current.Product_Name__c| Equal To|G-Sheet - Annual Operation Metrics|
    |9|myVariable_current.Product_Name__c| Equal To|DataStudio - Annual Operation Metrics|
    |10|myVariable_current.Product_Name__c| Equal To|G-Sheet - JPM Partner Dashboard|
    |11|myVariable_current.Product_Name__c| Equal To|DataStudio - JPM Partner Dashboard|
    
    
    
    
    ### myDecision2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision2](#mydecision2)|
    |Default Connector|[myDecision4](#mydecision4)|
    |Default Connector Label|default|
    |Index (PM)|1|
    
    
    #### Rule myRule_3 (Product Success Access Owner Alert)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_3_A1](#myrule_3_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Technology_Access_Owner__c| Equal To|PRKS|
    |2|myVariable_current.Access_Requested_Date__c| Is Null|⬜|
    |3|myVariable_current.Access_Granted_Date__c| Is Null|✅|
    
    
    
    
    ### myDecision20
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision20](#mydecision20)|
    |Default Connector|[myDecision23](#mydecision23)|
    |Default Connector Label|default|
    |Index (PM)|8|
    
    
    #### Rule myRule_21 (Standard Package Removal)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_21_A1](#myrule_21_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Product_Type__c| Equal To|Standard Ubiquity Package|
    |2|isChangedRule_22_myRule_21_Access_Removed_Requested_c| Equal To|✅|
    |3|myVariable_current.Access_Removed_Requested__c| Is Null|⬜|
    
    
    
    
    ### myDecision23
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision23](#mydecision23)|
    |Default Connector Label|default|
    |Index (PM)|9|
    
    
    #### Rule myRule_24 (LMS Access Requested)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_24_A1](#myrule_24_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Standard_Products__c| Contains|360Learning|
    |2|myVariable_current.Access_Requested_Date__c| Is Null|⬜|
    |3|myVariable_current.Access_Granted_Date__c| Is Null|✅|
    
    
    
    
    ### myDecision4
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision4](#mydecision4)|
    |Default Connector|[myDecision7](#mydecision7)|
    |Default Connector Label|default|
    |Index (PM)|2|
    
    
    #### Rule myRule_5 (Product Success Removal Owner Alert)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_5_A1](#myrule_5_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|isChangedRule_6_myRule_5_Access_Removed_Requested_c| Equal To|✅|
    |2|myVariable_current.Access_Removed_Requested__c| Is Null|⬜|
    |3|myVariable_current.Technology_Access_Owner__c| Equal To|PRKS|
    
    
    
    
    ### myDecision7
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision7](#mydecision7)|
    |Default Connector|[myDecision9](#mydecision9)|
    |Default Connector Label|default|
    |Index (PM)|3|
    
    
    #### Rule myRule_8 (Standard Ubiquity Package Requested)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_8_A1](#myrule_8_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.RecordTypeId| Equal To|0121G000000g1bvQAA|
    |2|myVariable_current.Access_Granted_Date__c| Is Null|✅|
    
    
    
    
    ### myDecision9
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision9](#mydecision9)|
    |Default Connector|[myDecision11](#mydecision11)|
    |Default Connector Label|default|
    |Index (PM)|4|
    
    
    #### Rule myRule_10 (Business Intelligence Owner Request)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_10_A1](#myrule_10_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Technology_Access_Owner__c| Equal To|Business Intelligence|
    |2|myVariable_current.Access_Granted_Date__c| Is Null|✅|
    |3|myVariable_current.Access_Requested_Date__c| Is Null|⬜|
    
    
    
    
    ### myRule_15_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Employee_Technology_Access__c|
    |Label|Update Technology Owner|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Employee_Technology_Access__c]|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Technology_Access_Owner__c|PRKS|
    
    
    
    
    ### myRule_18_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Employee_Technology_Access__c|
    |Label|Update Owner to BI|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Employee_Technology_Access__c]|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Technology_Access_Owner__c|Business Intelligence|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

