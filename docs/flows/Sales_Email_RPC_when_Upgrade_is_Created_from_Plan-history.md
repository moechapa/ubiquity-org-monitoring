# Sales_Email_RPC_when_Upgrade_is_Created_from_Plan history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Sales_Email_RPC_when_Upgrade_is_Created_from_Plan-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Task</b></br>Type: <b>On Create Only</b>"]):::startClass
    click START "#general-information" "3155493163"
    
    START --> myPreWaitDecision_myWait_myRule_3
    myRule_1_A1("📧 <em></em><br/>Email Owner"):::actionCalls
    click myRule_1_A1 "#myrule_1_a1" "2289533356"
    
    myWaitEvent_myWait_myRule_3_event_0_SA1("📧 <em></em><br/>Email Owner"):::actionCalls
    click myWaitEvent_myWait_myRule_3_event_0_SA1 "#mywaitevent_mywait_myrule_3_event_0_sa1" "327922114"
    
    myWaitAssignment_myWait_myRule_3[\"🟰 <em></em><br/>myWaitAssignment_myWait_myRule_3"/]:::assignments
    click myWaitAssignment_myWait_myRule_3 "#mywaitassignment_mywait_myrule_3" "893231301"
    
    myWaitEvent_myWait_myRule_3_event_0_postWaitExecutionAssignment[\"🟰 <em></em><br/>myWaitEvent_myWait_myRule_3_event_0_postWaitExecutionAssignment"/]:::assignments
    click myWaitEvent_myWait_myRule_3_event_0_postWaitExecutionAssignment "#mywaitevent_mywait_myrule_3_event_0_postwaitexecutionassignment" "1264607434"
    
    myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
    click myDecision "#mydecision" "540841916"
    
    myDecision2{"🔀 <em></em><br/>myDecision2"}:::decisions
    click myDecision2 "#mydecision2" "3414475554"
    
    myPostWaitDecision_myWaitEvent_myWait_myRule_3_event_0{"🔀 <em></em><br/>myPostWaitDecision_myWaitEvent_myWait_myRule_3_event_0"}:::decisions
    click myPostWaitDecision_myWaitEvent_myWait_myRule_3_event_0 "#mypostwaitdecision_mywaitevent_mywait_myrule_3_event_0" "2314881881"
    
    myPreWaitDecision_myWait_myRule_3{"🔀 <em></em><br/>myPreWaitDecision_myWait_myRule_3"}:::decisions
    click myPreWaitDecision_myWait_myRule_3 "#myprewaitdecision_mywait_myrule_3" "1875206659"
    
    myRule_3_A1[("🛠️ <em></em><br/>Reassign to RPC")]:::recordUpdates
    click myRule_3_A1 "#myrule_3_a1" "3644489575"
    
    myRule_3_A2[("🛠️ <em></em><br/>Update Lead")]:::recordUpdates
    click myRule_3_A2 "#myrule_3_a2" "1330835741"
    
    myRule_1_A1 --> END_myRule_1_A1
    myWaitEvent_myWait_myRule_3_event_0_SA1 --> myWaitEvent_myWait_myRule_3_event_0_postWaitExecutionAssignment
    myWaitAssignment_myWait_myRule_3 --> myDecision
    myWaitEvent_myWait_myRule_3_event_0_postWaitExecutionAssignment --> myWait_myRule_3
    myDecision --> |"Follow Up Task Created for Upgrade"| myRule_1_A1
    myDecision --> |"default"| myDecision2
    myDecision2 --> |"Follow Up Task created for Simply"| myRule_3_A1
    myDecision2 --> |"default"| END_myDecision2
    myPostWaitDecision_myWaitEvent_myWait_myRule_3_event_0 --> |"myPostWaitRule_myWaitEvent_myWait_myRule_3_event_0"| myWaitEvent_myWait_myRule_3_event_0_SA1
    myPostWaitDecision_myWaitEvent_myWait_myRule_3_event_0 --> |"default"| myWaitEvent_myWait_myRule_3_event_0_postWaitExecutionAssignment
    myPreWaitDecision_myWait_myRule_3 --> |"myPreWaitRule_myWait_myRule_3"| myDecision
    myPreWaitDecision_myWait_myRule_3 --> |"default"| myWaitAssignment_myWait_myRule_3
    myRule_3_A1 --> myRule_3_A2
    myRule_3_A2 --> myWait_myRule_3
    END_myRule_1_A1(( END )):::endClass
    END_myDecision2(( END )):::endClass
    
    
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
    |Label|Sales | Email RPC when Upgrade is Created from Plan|
    |Status|Active|
    |Description|Email Upgrade Opportunity Owner Upon Creation|
    |Interview Label|Sales_Email_RPC_when_Upgrade_is_Created_from_Plan-9_InterviewLabel|
    |Start Element Reference|[myPreWaitDecision_myWait_myRule_3](#myprewaitdecision_mywait_myrule_3)|
    | Object Type (PM)|Task|
    | Object Variable (PM)|myVariable_current|
    | Old Object Variable (PM)|myVariable_old|
    | Trigger Type (PM)|onCreateOnly|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |cancelWaits|String|✅|⬜|✅|<!-- -->|<!-- -->|
    |myVariable_current|SObject|⬜|✅|✅|Task|<!-- -->|
    |myVariable_old|SObject|⬜|✅|⬜|Task|<!-- -->|
    |myWaitEvent_myWait_myRule_3_event_0_postActionExecutionVariable|Boolean|⬜|⬜|⬜|<!-- -->|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Email Owner|
    |Action Type|Email Alert|
    |Action Name|Task.Upgrade_Created_from_Plan|
    |Name Segment|Task.Upgrade_Created_from_Plan|
    |Email Alert Selection (PM)|Upgrade_Created_from_Plan|
    | SObject Row Id (input)|myVariable_current.Id|
    
    
    ### myWaitEvent_myWait_myRule_3_event_0_SA1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Email Owner|
    |Action Type|Email Alert|
    |Action Name|Task.Simply_Task_Created|
    |Name Segment|Task.Simply_Task_Created|
    |Email Alert Selection (PM)|Simply_Task_Created|
    | SObject Row Id (input)|myVariable_current.Id|
    |Connector|[myWaitEvent_myWait_myRule_3_event_0_postWaitExecutionAssignment](#mywaitevent_mywait_myrule_3_event_0_postwaitexecutionassignment)|
    
    
    ### myWaitAssignment_myWait_myRule_3
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|[myWaitAssignment_myWait_myRule_3](#mywaitassignment_mywait_myrule_3)|
    |Connector|[myDecision](#mydecision)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |cancelWaits| Add|myWait_myRule_3|
    
    
    
    
    ### myWaitEvent_myWait_myRule_3_event_0_postWaitExecutionAssignment
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|[myWaitEvent_myWait_myRule_3_event_0_postWaitExecutionAssignment](#mywaitevent_mywait_myrule_3_event_0_postwaitexecutionassignment)|
    |Connector|myWait_myRule_3|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |myWaitEvent_myWait_myRule_3_event_0_postActionExecutionVariable| Assign|✅|
    
    
    
    
    ### myDecision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision](#mydecision)|
    |Default Connector|[myDecision2](#mydecision2)|
    |Default Connector Label|default|
    |Index (PM)|numberValue: 0<br/>|
    
    
    #### Rule myRule_1 (Follow Up Task Created for Upgrade)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_A1](#myrule_1_a1)|
    |Condition Logic|(1 AND 3) OR (2 AND 3)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Subject| Contains|Follow Up on Upgrade|
    |2|myVariable_current.Subject| Contains|Follow Up on Add-On|
    |3|myVariable_current.CreatedById| Not Equal To|myVariable_current.OwnerId|
    
    
    
    
    ### myDecision2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision2](#mydecision2)|
    |Default Connector Label|default|
    |Index (PM)|1|
    
    
    #### Rule myRule_3 (Follow Up Task created for Simply)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_3_A1](#myrule_3_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Subject| Equal To|Shared or Saved Plan|
    |2|myVariable_current.CreatedById| Not Equal To|myVariable_current.OwnerId|
    
    
    
    
    ### myPostWaitDecision_myWaitEvent_myWait_myRule_3_event_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myPostWaitDecision_myWaitEvent_myWait_myRule_3_event_0](#mypostwaitdecision_mywaitevent_mywait_myrule_3_event_0)|
    |Default Connector|[myWaitEvent_myWait_myRule_3_event_0_postWaitExecutionAssignment](#mywaitevent_mywait_myrule_3_event_0_postwaitexecutionassignment)|
    |Default Connector Label|default|
    
    
    #### Rule myPostWaitRule_myWaitEvent_myWait_myRule_3_event_0 (myPostWaitRule_myWaitEvent_myWait_myRule_3_event_0)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myWaitEvent_myWait_myRule_3_event_0_SA1](#mywaitevent_mywait_myrule_3_event_0_sa1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.CreatedDate| Is Null|⬜|
    
    
    
    
    ### myPreWaitDecision_myWait_myRule_3
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myPreWaitDecision_myWait_myRule_3](#myprewaitdecision_mywait_myrule_3)|
    |Default Connector|[myWaitAssignment_myWait_myRule_3](#mywaitassignment_mywait_myrule_3)|
    |Default Connector Label|default|
    
    
    #### Rule myPreWaitRule_myWait_myRule_3 (myPreWaitRule_myWait_myRule_3)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myDecision](#mydecision)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Subject| Equal To|Shared or Saved Plan|
    |2|myVariable_current.CreatedById| Not Equal To|myVariable_current.OwnerId|
    
    
    
    
    ### myRule_3_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Task|
    |Label|Reassign to RPC|
    |Evaluation Type (PM)|criteria|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Task]|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myRule_3_A2](#myrule_3_a2)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    |2|OwnerId| Equal To|0051G0000069AXb|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |OwnerId|00G1G000001ZWmt|
    
    
    
    
    ### myRule_3_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Lead|
    |Label|Update Lead|
    |Evaluation Type (PM)|criteria|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Task].Name ID (Lead)|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|myWait_myRule_3|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.WhoId|
    |2|OwnerId| Equal To|0051G0000069AXb|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |OwnerId|00G1G000001ZWmt|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

