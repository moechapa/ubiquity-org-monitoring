# Implementations_Create_Tasks history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Implementations_Create_Tasks-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Implementation__c</b></br>Type: <b>On All Changes</b>"]):::startClass
    click START "#general-information" "486179033"
    
    START --> isChangedDecision6_myRule_5_Service_Option_c
    myRule_1_A1("⚡ <em></em><br/>Create Tasks"):::actionCalls
    click myRule_1_A1 "#myrule_1_a1" "418209511"
    
    myRule_5_A1("⚡ <em></em><br/>Change Tasks"):::actionCalls
    click myRule_5_A1 "#myrule_5_a1" "93709426"
    
    isChangedDecision6_myRule_5_Service_Option_c{"🔀 <em></em><br/>isChangedDecision6_myRule_5_Service_Option_c"}:::decisions
    click isChangedDecision6_myRule_5_Service_Option_c "#ischangeddecision6_myrule_5_service_option_c" "1531003431"
    
    myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
    click myDecision "#mydecision" "2840405098"
    
    myDecision4{"🔀 <em></em><br/>myDecision4"}:::decisions
    click myDecision4 "#mydecision4" "2098813160"
    
    myRule_1_pmetdec{"🔀 <em></em><br/>Previously Met Decision"}:::decisions
    click myRule_1_pmetdec "#myrule_1_pmetdec" "869778340"
    
    myRule_1_A1 --> myDecision4
    myRule_5_A1 --> END_myRule_5_A1
    isChangedDecision6_myRule_5_Service_Option_c --> |"isChangedRule_6_myRule_5_Service_Option_c"| myDecision
    isChangedDecision6_myRule_5_Service_Option_c --> |"default"| myDecision
    myDecision --> |"Imp Assigned"| myRule_1_pmetdec
    myDecision --> |"default"| myDecision4
    myDecision4 --> |"Service Option Changed"| myRule_5_A1
    myDecision4 --> |"default"| END_myDecision4
    myRule_1_pmetdec --> |"Previously Met - Null"| myRule_1_A1
    myRule_1_pmetdec --> |"Previously Met - Prev"| myDecision4
    myRule_1_pmetdec --> |"Not Previously Met"| myRule_1_A1
    END_myRule_5_A1(( END )):::endClass
    END_myDecision4(( END )):::endClass
    
    
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
    |Label|Implementations | Create Project Tasks|
    |Status|Active|
    |Description|Create Project Tasks when Imp is created.|
    |Interview Label|Implementations_Create_Tasks-15_InterviewLabel|
    |Start Element Reference|[isChangedDecision6_myRule_5_Service_Option_c](#ischangeddecision6_myrule_5_service_option_c)|
    | Object Type (PM)|Implementation__c|
    | Object Variable (PM)|myVariable_current|
    | Old Object Variable (PM)|myVariable_old|
    | Trigger Type (PM)|onAllChanges|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |myVariable_current|SObject|⬜|✅|✅|Implementation__c|<!-- -->|
    |myVariable_old|SObject|⬜|✅|⬜|Implementation__c|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |formula_2_myRule_1_6928386693|String|IF(PRIORVALUE({!myVariable_current.Implementation_Status__c}) == "On Hold", "On Hold",<br/>IF(PRIORVALUE({!myVariable_current.Implementation_Status__c}) == "No Start", "No Start",<br/>IF(PRIORVALUE({!myVariable_current.Implementation_Status__c}) == "Plan Stalled", "Plan Stalled", "Completed")))|<!-- -->|
    |formula_3_myRule_1_pmetrule_1193887979|String|IF(PRIORVALUE({!myVariable_old.Implementation_Status__c}) == "On Hold", "On Hold",<br/>IF(PRIORVALUE({!myVariable_old.Implementation_Status__c}) == "No Start", "No Start",<br/>IF(PRIORVALUE({!myVariable_old.Implementation_Status__c}) == "Plan Stalled", "Plan Stalled", "Completed")))|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Create Tasks|
    |Action Type|Flow|
    |Action Name|Project_Task_Creation_Implementations|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Project_Task_Creation_Implementations|
    | Action Call Type (PM)|flow|
    |Flow Selection (PM)|Project Task Creation - Implementations|
    |Record Id (input)|myVariable_current.Id|
    |Connector|[myDecision4](#mydecision4)|
    
    
    ### myRule_5_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Change Tasks|
    |Action Type|Flow|
    |Action Name|Project_Task_Creation_Implementations|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Project_Task_Creation_Implementations|
    | Action Call Type (PM)|flow|
    |Flow Selection (PM)|Implementation | Process | Create Project Tasks|
    |Record Id (input)|myVariable_current.Id|
    
    
    ### isChangedDecision6_myRule_5_Service_Option_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision6_myRule_5_Service_Option_c](#ischangeddecision6_myrule_5_service_option_c)|
    |Default Connector|[myDecision](#mydecision)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_6_myRule_5_Service_Option_c (isChangedRule_6_myRule_5_Service_Option_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myDecision](#mydecision)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Service_Option__c| Not Equal To|myVariable_current.Service_Option__c|
    
    
    
    
    ### myDecision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision](#mydecision)|
    |Default Connector|[myDecision4](#mydecision4)|
    |Default Connector Label|default|
    |Index (PM)|numberValue: 0<br/>|
    
    
    #### Rule myRule_1 (Imp Assigned)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_pmetdec](#myrule_1_pmetdec)|
    |Condition Logic|1 AND (2 OR 3)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Implementation_Status__c| Not Equal To|formula_2_myRule_1_6928386693|
    |2|myVariable_current.Implementation_Status__c| Equal To|In Progress|
    |3|myVariable_current.Implementation_Status__c| Equal To|Awaiting Assignment|
    
    
    
    
    ### myDecision4
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision4](#mydecision4)|
    |Default Connector Label|default|
    |Index (PM)|1|
    
    
    #### Rule myRule_5 (Service Option Changed)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_5_A1](#myrule_5_a1)|
    |Condition Logic|1 AND (2 OR 3)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|isChangedRule_6_myRule_5_Service_Option_c| Equal To|✅|
    |2|myVariable_current.Implementation_Status__c| Equal To|In Progress|
    |3|myVariable_current.Implementation_Status__c| Equal To|Awaiting Assignment|
    
    
    
    
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
    |Connector|[myDecision4](#mydecision4)|
    |Condition Logic|1 AND (2 OR 3)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old.Implementation_Status__c| Not Equal To|formula_3_myRule_1_pmetrule_1193887979|
    |2|myVariable_old.Implementation_Status__c| Equal To|In Progress|
    |3|myVariable_old.Implementation_Status__c| Equal To|Awaiting Assignment|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

