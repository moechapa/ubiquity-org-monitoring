# Implementation_Create_Plan history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Implementation_Create_Plan-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Implementation__c</b></br>Type: <b>On All Changes</b>"]):::startClass
    click START "#general-information" "3562625608"
    
    START --> myDecision
    myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
    click myDecision "#mydecision" "1072479010"
    
    myDecision2{"🔀 <em></em><br/>myDecision2"}:::decisions
    click myDecision2 "#mydecision2" "512818610"
    
    myRule_1_pmetdec{"🔀 <em></em><br/>Previously Met Decision"}:::decisions
    click myRule_1_pmetdec "#myrule_1_pmetdec" "236634472"
    
    myRule_3_pmetdec{"🔀 <em></em><br/>Previously Met Decision"}:::decisions
    click myRule_3_pmetdec "#myrule_3_pmetdec" "288222757"
    
    myRule_1_A1[("➕ <em></em><br/>Create Plan")]:::recordCreates
    click myRule_1_A1 "#myrule_1_a1" "2756919234"
    
    myRule_1_A2[("🛠️ <em></em><br/>Update CST on Account")]:::recordUpdates
    click myRule_1_A2 "#myrule_1_a2" "1716438505"
    
    myRule_1_A3[("🛠️ <em></em><br/>Plan Owner")]:::recordUpdates
    click myRule_1_A3 "#myrule_1_a3" "2409516528"
    
    myRule_3_A1[("🛠️ <em></em><br/>Platinum")]:::recordUpdates
    click myRule_3_A1 "#myrule_3_a1" "568127575"
    
    myRule_3_A2[("🛠️ <em></em><br/>Update CST on Account")]:::recordUpdates
    click myRule_3_A2 "#myrule_3_a2" "715363610"
    
    myDecision --> |"New 401(k) Plan Imp"| myRule_1_pmetdec
    myDecision --> |"default"| myDecision2
    myDecision2 --> |"Set Owner Platinum"| myRule_3_pmetdec
    myDecision2 --> |"default"| END_myDecision2
    myRule_1_pmetdec --> |"Previously Met - Null"| myRule_1_A1
    myRule_1_pmetdec --> |"Previously Met - Prev"| myDecision2
    myRule_1_pmetdec --> |"Not Previously Met"| myRule_1_A1
    myRule_3_pmetdec --> |"Previously Met - Null"| myRule_3_A1
    myRule_3_pmetdec --> |"Not Previously Met"| myRule_3_A1
    myRule_1_A1 --> myRule_1_A2
    myRule_1_A2 --> myRule_1_A3
    myRule_1_A3 --> myDecision2
    myRule_3_A1 --> myRule_3_A2
    myRule_3_A2 --> END_myRule_3_A2
    END_myDecision2(( END )):::endClass
    END_myRule_3_A2(( END )):::endClass
    
    
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
    |Label|Implementations | Create Plan|
    |Status|Active|
    |Description|Creates Plan object on Creation of Implementation - One Team Update -|
    |Interview Label|Implementation_Create_Plan-31_InterviewLabel|
    |Start Element Reference|[myDecision](#mydecision)|
    | Object Type (PM)|Implementation__c|
    | Object Variable (PM)|myVariable_current|
    | Old Object Variable (PM)|myVariable_old|
    | Trigger Type (PM)|onAllChanges|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |myVariable_current|SObject|⬜|✅|✅|Implementation__c|<!-- -->|
    |myVariable_old|SObject|⬜|✅|⬜|Implementation__c|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### myDecision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision](#mydecision)|
    |Default Connector|[myDecision2](#mydecision2)|
    |Default Connector Label|default|
    |Index (PM)|numberValue: 0<br/>|
    
    
    #### Rule myRule_1 (New 401(k) Plan Imp)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_pmetdec](#myrule_1_pmetdec)|
    |Condition Logic|((1 OR 5 OR 4) AND 3) OR (2 AND 6)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Product_Type__c| Equal To|401(k)|
    |2|myVariable_current.Product_Type__c| Equal To|Upgrade|
    |3|myVariable_current.Implementation_Status__c| Equal To|Awaiting Assignment|
    |4|myVariable_current.Service_Option__c| Equal To|Single(k) Plus|
    |5|myVariable_current.Product_Type__c| Equal To|PEP|
    |6|myVariable_current.OwnerId| Starts With|5|
    
    
    
    
    ### myDecision2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision2](#mydecision2)|
    |Default Connector Label|default|
    |Index (PM)|1|
    
    
    #### Rule myRule_3 (Set Owner Platinum)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_3_pmetdec](#myrule_3_pmetdec)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Account__r.NumberOfEmployees| Greater Than Or Equal To|100|
    
    
    
    
    ### myRule_1_pmetdec
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Previously Met Decision|
    |Default Connector|[myRule_1_A1](#myrule_1_a1)|
    |Default Connector Label|Not Previously Met|
    
    
    #### Rule myRule_1_pmetnullrule (Previously Met - Null)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_A1](#myrule_1_a1)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|✅|
    
    
    
    
    #### Rule myRule_1_pmetrule (Previously Met - Prev)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myDecision2](#mydecision2)|
    |Condition Logic|((1 OR 5 OR 4) AND 3) OR (2 AND 6)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old.Product_Type__c| Equal To|401(k)|
    |2|myVariable_old.Product_Type__c| Equal To|Upgrade|
    |3|myVariable_old.Implementation_Status__c| Equal To|Awaiting Assignment|
    |4|myVariable_old.Service_Option__c| Equal To|Single(k) Plus|
    |5|myVariable_old.Product_Type__c| Equal To|PEP|
    |6|myVariable_old.OwnerId| Starts With|5|
    
    
    
    
    ### myRule_3_pmetdec
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Previously Met Decision|
    |Default Connector|[myRule_3_A1](#myrule_3_a1)|
    |Default Connector Label|Not Previously Met|
    
    
    #### Rule myRule_3_pmetnullrule (Previously Met - Null)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_3_A1](#myrule_3_a1)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|✅|
    
    
    
    
    #### Rule myRule_3_pmetrule (Previously Met - Prev)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old.Account__r.NumberOfEmployees| Greater Than Or Equal To|100|
    
    
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Plan__c|
    |Label|Create Plan|
    |Connector|[myRule_1_A2](#myrule_1_a2)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Account__c|myVariable_current.Account__c|
    |Advisor_Fees_Paid_from_ESA__c|myVariable_current.Advisor_Fees_Paid_from_ESA__c|
    |Billing_Status__c|Current|
    |Business_Unit__c|myVariable_current.Business_Unit__c|
    |CST_Client_Support_Team__c|Client Support|
    |Implementation__c|myVariable_current.Id|
    |Name|myVariable_current.Name|
    |Opportunity__c|myVariable_current.Opportunity_Name__r.Id|
    |OwnerId|00G1G000001N3PAUA0|
    |Participant_Fees_Paid_from_ESA__c|myVariable_current.Participant_Fees_Paid_from_ESA__c|
    |Payroll_Submission_Status__c|Implementation|
    |Plan_Sold_Date__c|myVariable_current.Opportunity_Name__r.CloseDate|
    |Plan_Type1__c|myVariable_current.Plan_Type__c|
    |Product_Type1__c|myVariable_current.Product_Type__c|
    |RecordTypeId|01237000000TgnV|
    |Service_Option__c|myVariable_current.Service_Option__c|
    |Status__c|Implementation in Progress|
    |Ubiquity_Admin_Fees_Paid_by_ESA__c|myVariable_current.Ubiquity_Admin_Fees_Paid_by_ESA__c|
    
    
    
    
    ### myRule_1_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Account|
    |Label|Update CST on Account|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Implementation__c].Account|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myRule_1_A3](#myrule_1_a3)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Account__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Client_Support_Teams__c|Client Support|
    
    
    
    
    ### myRule_1_A3
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Plan__c|
    |Label|Plan Owner|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Implementation__c].Plan|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myDecision2](#mydecision2)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Plan__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |OwnerId|myVariable_current.OwnerId|
    
    
    
    
    ### myRule_3_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Plan__c|
    |Label|Platinum|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|✅|
    |Reference (PM)|[Implementation__c].Plans__r|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myRule_3_A2](#myrule_3_a2)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Implementation__c| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |CST_Client_Support_Team__c|Platinum|
    |OwnerId|00G370000014GsNEAU|
    
    
    
    
    ### myRule_3_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Account|
    |Label|Update CST on Account|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Implementation__c].Account|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Account__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Client_Support_Teams__c|Platinum|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

