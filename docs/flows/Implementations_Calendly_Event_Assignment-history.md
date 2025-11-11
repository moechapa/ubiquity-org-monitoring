# Implementations_Calendly_Event_Assignment history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Implementations_Calendly_Event_Assignment-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Event</b></br>Type: <b>On All Changes</b>"]):::startClass
    click START "#general-information" "1115731723"
    
    START --> myDecision
    myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
    click myDecision "#mydecision" "3833200518"
    
    myDecision2{"🔀 <em></em><br/>myDecision2"}:::decisions
    click myDecision2 "#mydecision2" "1734633864"
    
    myDecision4{"🔀 <em></em><br/>myDecision4"}:::decisions
    click myDecision4 "#mydecision4" "2939008588"
    
    myDecision6{"🔀 <em></em><br/>myDecision6"}:::decisions
    click myDecision6 "#mydecision6" "3985949465"
    
    myDecision8{"🔀 <em></em><br/>myDecision8"}:::decisions
    click myDecision8 "#mydecision8" "3150651153"
    
    myRule_1_A1[("🛠️ <em></em><br/>Event Owner")]:::recordUpdates
    click myRule_1_A1 "#myrule_1_a1" "3633002619"
    
    myRule_3_A1[("🛠️ <em></em><br/>Imp Call Date")]:::recordUpdates
    click myRule_3_A1 "#myrule_3_a1" "1344865842"
    
    myRule_5_A1[("🛠️ <em></em><br/>Imp Call Date")]:::recordUpdates
    click myRule_5_A1 "#myrule_5_a1" "699510562"
    
    myRule_7_A1[("🛠️ <em></em><br/>Census Call Date")]:::recordUpdates
    click myRule_7_A1 "#myrule_7_a1" "1215905375"
    
    myRule_9_A1[("🛠️ <em></em><br/>Payroll Call Date")]:::recordUpdates
    click myRule_9_A1 "#myrule_9_a1" "3716545154"
    
    myDecision --> |"Implementation Event"| myRule_1_A1
    myDecision --> |"default"| myDecision2
    myDecision2 --> |"Plan Design Call"| myRule_3_A1
    myDecision2 --> |"default"| myDecision4
    myDecision4 --> |"Doc Review Call"| myRule_5_A1
    myDecision4 --> |"default"| myDecision6
    myDecision6 --> |"Census Upload Call"| myRule_7_A1
    myDecision6 --> |"default"| myDecision8
    myDecision8 --> |"Payroll Upload Call"| myRule_9_A1
    myDecision8 --> |"default"| END_myDecision8
    myRule_1_A1 --> myDecision2
    myRule_3_A1 --> myDecision4
    myRule_5_A1 --> myDecision6
    myRule_7_A1 --> myDecision8
    myRule_9_A1 --> END_myRule_9_A1
    END_myDecision8(( END )):::endClass
    END_myRule_9_A1(( END )):::endClass
    
    
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
    |Label|Implementations | Calendly Event|
    |Status|Active|
    |Description|Assigns Calendly Event to owner of Implementation and Sets Calendly Call Dates in Implementation|
    |Interview Label|Implementations_Calendly_Event_Assignment-6_InterviewLabel|
    |Start Element Reference|[myDecision](#mydecision)|
    | Object Type (PM)|Event|
    | Object Variable (PM)|myVariable_current|
    | Old Object Variable (PM)|myVariable_old|
    | Recursive Count Variable (PM)|RecursiveCountVariable|
    | Trigger Type (PM)|onAllChanges|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |myVariable_current|SObject|⬜|✅|✅|Event|<!-- -->|
    |myVariable_old|SObject|⬜|✅|⬜|Event|<!-- -->|
    |RecursiveCountVariable|Number|⬜|✅|⬜|<!-- -->|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### myDecision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision](#mydecision)|
    |Default Connector|[myDecision2](#mydecision2)|
    |Default Connector Label|default|
    |Index (PM)|numberValue: 0<br/>|
    
    
    #### Rule myRule_1 (Implementation Event)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_A1](#myrule_1_a1)|
    |Condition Logic|5 AND 6 AND (1 OR 2 OR 3 OR 4)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Calendly_Event_Slug__c| Contains|intro-design-call|
    |2|myVariable_current.Calendly_Event_Slug__c| Contains|document-review-call|
    |3|myVariable_current.Calendly_Event_Slug__c| Contains|census-review-call|
    |4|myVariable_current.Calendly_Event_Slug__c| Contains|payroll-upload-call|
    |5|myVariable_current.Calendly_Event_Slug__c| Is Null|⬜|
    |6|myVariable_current.WhatId| Is Null|⬜|
    
    
    
    
    ### myDecision2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision2](#mydecision2)|
    |Default Connector|[myDecision4](#mydecision4)|
    |Default Connector Label|default|
    |Index (PM)|1|
    
    
    #### Rule myRule_3 (Plan Design Call)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_3_A1](#myrule_3_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Calendly_Event_Slug__c| Is Null|⬜|
    |2|myVariable_current.Calendly_Event_Slug__c| Equal To|intro-design-call|
    
    
    
    
    ### myDecision4
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision4](#mydecision4)|
    |Default Connector|[myDecision6](#mydecision6)|
    |Default Connector Label|default|
    |Index (PM)|2|
    
    
    #### Rule myRule_5 (Doc Review Call)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_5_A1](#myrule_5_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Calendly_Event_Slug__c| Is Null|⬜|
    |2|myVariable_current.Calendly_Event_Slug__c| Equal To|document-review-call|
    
    
    
    
    ### myDecision6
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision6](#mydecision6)|
    |Default Connector|[myDecision8](#mydecision8)|
    |Default Connector Label|default|
    |Index (PM)|3|
    
    
    #### Rule myRule_7 (Census Upload Call)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_7_A1](#myrule_7_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Calendly_Event_Slug__c| Is Null|⬜|
    |2|myVariable_current.Calendly_Event_Slug__c| Equal To|census-review-call|
    
    
    
    
    ### myDecision8
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision8](#mydecision8)|
    |Default Connector Label|default|
    |Index (PM)|4|
    
    
    #### Rule myRule_9 (Payroll Upload Call)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_9_A1](#myrule_9_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Calendly_Event_Slug__c| Is Null|⬜|
    |2|myVariable_current.Calendly_Event_Slug__c| Equal To|payroll-upload-call|
    
    
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Event|
    |Label|Event Owner|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Event]|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myDecision2](#mydecision2)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |OwnerId|myVariable_current.Implementation__r.OwnerId|
    
    
    
    
    ### myRule_3_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Implementation__c|
    |Label|Imp Call Date|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Event].Implementation|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myDecision4](#mydecision4)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Implementation__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Calendly_Intro_Plan_Design__c|myVariable_current.StartDateTime|
    
    
    
    
    ### myRule_5_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Implementation__c|
    |Label|Imp Call Date|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Event].Implementation|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myDecision6](#mydecision6)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Implementation__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Calendly_Document_Review__c|myVariable_current.StartDateTime|
    
    
    
    
    ### myRule_7_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Implementation__c|
    |Label|Census Call Date|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Event].Implementation|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myDecision8](#mydecision8)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Implementation__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Calendly_Census_Review__c|myVariable_current.StartDateTime|
    
    
    
    
    ### myRule_9_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Implementation__c|
    |Label|Payroll Call Date|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Event].Implementation|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Implementation__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Calendly_Payroll_Review__c|myVariable_current.StartDateTime|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

