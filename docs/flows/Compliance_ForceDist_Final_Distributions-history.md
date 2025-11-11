# Compliance_ForceDist_Final_Distributions history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Compliance_ForceDist_Final_Distributions-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Case</b></br>Type: <b>On All Changes</b>"]):::startClass
    click START "#general-information" "490813174"
    
    START --> myPreWaitDecision_myWait_myRule_1
    myWaitAssignment_myWait_myRule_1[\"🟰 <em></em><br/>myWaitAssignment_myWait_myRule_1"/]:::assignments
    click myWaitAssignment_myWait_myRule_1 "#mywaitassignment_mywait_myrule_1" "1878456466"
    
    myWaitEvent_myWait_myRule_1_event_0_postWaitExecutionAssignment[\"🟰 <em></em><br/>myWaitEvent_myWait_myRule_1_event_0_postWaitExecutionAssignment"/]:::assignments
    click myWaitEvent_myWait_myRule_1_event_0_postWaitExecutionAssignment "#mywaitevent_mywait_myrule_1_event_0_postwaitexecutionassignment" "552784179"
    
    myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
    click myDecision "#mydecision" "3869686175"
    
    myPostWaitDecision_myWaitEvent_myWait_myRule_1_event_0{"🔀 <em></em><br/>myPostWaitDecision_myWaitEvent_myWait_myRule_1_event_0"}:::decisions
    click myPostWaitDecision_myWaitEvent_myWait_myRule_1_event_0 "#mypostwaitdecision_mywaitevent_mywait_myrule_1_event_0" "2801234514"
    
    myPreWaitDecision_myWait_myRule_1{"🔀 <em></em><br/>myPreWaitDecision_myWait_myRule_1"}:::decisions
    click myPreWaitDecision_myWait_myRule_1 "#myprewaitdecision_mywait_myrule_1" "2346212864"
    
    myRule_1_pmetdec{"🔀 <em></em><br/>Previously Met Decision"}:::decisions
    click myRule_1_pmetdec "#myrule_1_pmetdec" "1424057559"
    
    myWaitEvent_myWait_myRule_1_event_0_SA1[("➕ <em></em><br/>Final Distribution Case")]:::recordCreates
    click myWaitEvent_myWait_myRule_1_event_0_SA1 "#mywaitevent_mywait_myrule_1_event_0_sa1" "2113367977"
    
    myWaitAssignment_myWait_myRule_1 --> myDecision
    myWaitEvent_myWait_myRule_1_event_0_postWaitExecutionAssignment --> myWait_myRule_1
    myDecision --> |"Client Verifies Notices Sent"| myRule_1_pmetdec
    myDecision --> |"default"| END_myDecision
    myPostWaitDecision_myWaitEvent_myWait_myRule_1_event_0 --> |"myPostWaitRule_myWaitEvent_myWait_myRule_1_event_0"| myWaitEvent_myWait_myRule_1_event_0_SA1
    myPostWaitDecision_myWaitEvent_myWait_myRule_1_event_0 --> |"default"| myWaitEvent_myWait_myRule_1_event_0_postWaitExecutionAssignment
    myPreWaitDecision_myWait_myRule_1 --> |"myPreWaitRule_myWait_myRule_1"| myDecision
    myPreWaitDecision_myWait_myRule_1 --> |"default"| myWaitAssignment_myWait_myRule_1
    myRule_1_pmetdec --> |"Previously Met - Null"| myWait_myRule_1
    myRule_1_pmetdec --> |"Not Previously Met"| myWait_myRule_1
    myWaitEvent_myWait_myRule_1_event_0_SA1 --> myWaitEvent_myWait_myRule_1_event_0_postWaitExecutionAssignment
    END_myDecision(( END )):::endClass
    
    
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
    |Label|Compliance | ForceDist Final Distributions|
    |Status|Active|
    |Description|Sets case for Final Force Out Distributions 30 days after Certified Notice Case is completed|
    |Interview Label|Compliance_ForceDist_Final_Distributions-10_InterviewLabel|
    |Start Element Reference|[myPreWaitDecision_myWait_myRule_1](#myprewaitdecision_mywait_myrule_1)|
    | Object Type (PM)|Case|
    | Object Variable (PM)|myVariable_current|
    | Old Object Variable (PM)|myVariable_old|
    | Trigger Type (PM)|onAllChanges|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |cancelWaits|String|✅|⬜|✅|<!-- -->|<!-- -->|
    |myVariable_current|SObject|⬜|✅|✅|Case|<!-- -->|
    |myVariable_old|SObject|⬜|✅|⬜|Case|<!-- -->|
    |myWaitEvent_myWait_myRule_1_event_0_postActionExecutionVariable|Boolean|⬜|⬜|⬜|<!-- -->|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### myWaitAssignment_myWait_myRule_1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|[myWaitAssignment_myWait_myRule_1](#mywaitassignment_mywait_myrule_1)|
    |Connector|[myDecision](#mydecision)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |cancelWaits| Add|myWait_myRule_1|
    
    
    
    
    ### myWaitEvent_myWait_myRule_1_event_0_postWaitExecutionAssignment
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|[myWaitEvent_myWait_myRule_1_event_0_postWaitExecutionAssignment](#mywaitevent_mywait_myrule_1_event_0_postwaitexecutionassignment)|
    |Connector|myWait_myRule_1|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |myWaitEvent_myWait_myRule_1_event_0_postActionExecutionVariable| Assign|✅|
    
    
    
    
    ### myDecision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision](#mydecision)|
    |Default Connector Label|default|
    |Index (PM)|numberValue: 0<br/>|
    
    
    #### Rule myRule_1 (Client Verifies Notices Sent)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_pmetdec](#myrule_1_pmetdec)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Subject| Equal To|Force Out Distribution|
    |2|myVariable_current.Certified_Notice_Sent__c| Is Null|⬜|
    
    
    
    
    ### myPostWaitDecision_myWaitEvent_myWait_myRule_1_event_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myPostWaitDecision_myWaitEvent_myWait_myRule_1_event_0](#mypostwaitdecision_mywaitevent_mywait_myrule_1_event_0)|
    |Default Connector|[myWaitEvent_myWait_myRule_1_event_0_postWaitExecutionAssignment](#mywaitevent_mywait_myrule_1_event_0_postwaitexecutionassignment)|
    |Default Connector Label|default|
    
    
    #### Rule myPostWaitRule_myWaitEvent_myWait_myRule_1_event_0 (myPostWaitRule_myWaitEvent_myWait_myRule_1_event_0)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myWaitEvent_myWait_myRule_1_event_0_SA1](#mywaitevent_mywait_myrule_1_event_0_sa1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Certified_Notice_Sent__c| Is Null|⬜|
    
    
    
    
    ### myPreWaitDecision_myWait_myRule_1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myPreWaitDecision_myWait_myRule_1](#myprewaitdecision_mywait_myrule_1)|
    |Default Connector|[myWaitAssignment_myWait_myRule_1](#mywaitassignment_mywait_myrule_1)|
    |Default Connector Label|default|
    
    
    #### Rule myPreWaitRule_myWait_myRule_1 (myPreWaitRule_myWait_myRule_1)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myDecision](#mydecision)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Subject| Equal To|Force Out Distribution|
    |2|myVariable_current.Certified_Notice_Sent__c| Is Null|⬜|
    
    
    
    
    ### myRule_1_pmetdec
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Previously Met Decision|
    |Default Connector|myWait_myRule_1|
    |Default Connector Label|Not Previously Met|
    
    
    #### Rule myRule_1_pmetnullrule (Previously Met - Null)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|myWait_myRule_1|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|✅|
    
    
    
    
    #### Rule myRule_1_pmetrule (Previously Met - Prev)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old.Subject| Equal To|Force Out Distribution|
    |2|myVariable_old.Certified_Notice_Sent__c| Is Null|⬜|
    
    
    
    
    ### myWaitEvent_myWait_myRule_1_event_0_SA1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Final Distribution Case|
    |Connector|[myWaitEvent_myWait_myRule_1_event_0_postWaitExecutionAssignment](#mywaitevent_mywait_myrule_1_event_0_postwaitexecutionassignment)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|myVariable_current.AccountId|
    |BusinessHoursId|01m37000000L07P|
    |Case_Type__c|Child Case|
    |ContactId|myVariable_current.ContactId|
    |Department__c|Reconciliations and Withdrawals|
    |Description|Ready for force out distributions. Send distributions and IRA set up spreadsheet to FPS|
    |Inquiry_Source__c|Client|
    |Origin|Distributions Inbox|
    |OwnerId|005Ho00000AnvFJ|
    |ParentId|myVariable_current.Id|
    |Plan__c|myVariable_current.Plan__c|
    |Priority|Medium|
    |RecordTypeId|012Ho000000NtUe|
    |Status|New|
    |Subject|30 Day Deadline Met - Force Out Distributions|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

