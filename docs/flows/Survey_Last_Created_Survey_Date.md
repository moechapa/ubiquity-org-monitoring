# Survey | Survey Fatigue Warning On/Off

## Flow Diagram [(_View History_)](Survey_Last_Created_Survey_Date-history.md)

```mermaid
%% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
%% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
%% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
%% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
%% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram

flowchart TB
START(["START<br/><b>simplesurvey__Survey__c</b></br>Type: <b>On Create Only</b>"]):::startClass
click START "#general-information" "1580702767"

START --> myVariable_waitStartTimeAssignment
myVariable_waitStartTimeAssignment[\"🟰 <em></em><br/>myVariable_waitStartTimeAssignment"/]:::assignments
click myVariable_waitStartTimeAssignment "#myvariable_waitstarttimeassignment" "2192881362"

myWaitAssignment_myWait_myRule_1[\"🟰 <em></em><br/>myWaitAssignment_myWait_myRule_1"/]:::assignments
click myWaitAssignment_myWait_myRule_1 "#mywaitassignment_mywait_myrule_1" "1878456466"

myWaitEvent_myWait_myRule_1_event_0_postWaitExecutionAssignment[\"🟰 <em></em><br/>myWaitEvent_myWait_myRule_1_event_0_postWaitExecutionAssignment"/]:::assignments
click myWaitEvent_myWait_myRule_1_event_0_postWaitExecutionAssignment "#mywaitevent_mywait_myrule_1_event_0_postwaitexecutionassignment" "552784179"

myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
click myDecision "#mydecision" "4049414660"

myPreWaitDecision_myWait_myRule_1{"🔀 <em></em><br/>myPreWaitDecision_myWait_myRule_1"}:::decisions
click myPreWaitDecision_myWait_myRule_1 "#myprewaitdecision_mywait_myrule_1" "2390373038"

myRule_1_A1[("🛠️ <em></em><br/>Update Last Survey Date")]:::recordUpdates
click myRule_1_A1 "#myrule_1_a1" "2805205789"

myRule_1_A2[("🛠️ <em></em><br/>Survey Fatigue On")]:::recordUpdates
click myRule_1_A2 "#myrule_1_a2" "1735184347"

myWaitEvent_myWait_myRule_1_event_0_SA1[("🛠️ <em></em><br/>Survey Fatigue Warning Off")]:::recordUpdates
click myWaitEvent_myWait_myRule_1_event_0_SA1 "#mywaitevent_mywait_myrule_1_event_0_sa1" "2133561998"

myVariable_waitStartTimeAssignment --> myPreWaitDecision_myWait_myRule_1
myWaitAssignment_myWait_myRule_1 --> myDecision
myWaitEvent_myWait_myRule_1_event_0_postWaitExecutionAssignment --> myWait_myRule_1
myDecision --> |"Survey Created"| myRule_1_A1
myDecision --> |"default"| END_myDecision
myPreWaitDecision_myWait_myRule_1 --> |"myPreWaitRule_myWait_myRule_1"| myDecision
myPreWaitDecision_myWait_myRule_1 --> |"default"| myWaitAssignment_myWait_myRule_1
myRule_1_A1 --> myRule_1_A2
myRule_1_A2 --> myWait_myRule_1
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
|Label|Survey | Survey Fatigue Warning On/Off|
|Status|Obsolete|
|Description|1) Last Survey Date 2) Fatigue Warning ON 3) Fatigue Warning Off in 60 Days|
|Interview Label|Survey_Last_Created_Survey_Date-4_InterviewLabel|
|Start Element Reference|[myVariable_waitStartTimeAssignment](#myvariable_waitstarttimeassignment)|
| Object Type (PM)|simplesurvey__Survey__c|
| Object Variable (PM)|myVariable_current|
| Old Object Variable (PM)|myVariable_old|
| Trigger Type (PM)|onCreateOnly|


## Variables

|Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
|:-- |:--:|:--:|:--:|:--:|:--:|:--  |
|cancelWaits|String|✅|⬜|✅|<!-- -->|<!-- -->|
|myVariable_current|SObject|⬜|✅|✅|simplesurvey__Survey__c|<!-- -->|
|myVariable_old|SObject|⬜|✅|⬜|simplesurvey__Survey__c|<!-- -->|
|myVariable_waitStartTimeVariable|DateTime|⬜|⬜|⬜|<!-- -->|<!-- -->|
|myWaitEvent_myWait_myRule_1_event_0_postActionExecutionVariable|Boolean|⬜|⬜|⬜|<!-- -->|<!-- -->|


## Formulas

|Name|Data Type|Expression|Description|
|:-- |:--:|:-- |:--  |
|formula_2_myRule_1_A1_1002530607|Date|DATEVALUE({!myVariable_current.CreatedDate} )|<!-- -->|


## Flow Nodes Details

### myVariable_waitStartTimeAssignment

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Assignment|
|Label|[myVariable_waitStartTimeAssignment](#myvariable_waitstarttimeassignment)|
|Connector|[myPreWaitDecision_myWait_myRule_1](#myprewaitdecision_mywait_myrule_1)|


#### Assignments

|Assign To Reference|Operator|Value|
|:-- |:--:|:--: |
|myVariable_waitStartTimeVariable| Assign|$Flow.CurrentDateTime|




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


#### Rule myRule_1 (Survey Created)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[myRule_1_A1](#myrule_1_a1)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|myVariable_current.CreatedDate| Is Null|⬜|




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
|1|myVariable_current.CreatedDate| Is Null|⬜|




### myRule_1_A1

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Update|
|Object|Contact|
|Label|Update Last Survey Date|
|Evaluation Type (PM)|always|
|Extra Type Info (PM)|<!-- -->|
|Is Child Relationship (PM)|⬜|
|Reference (PM)|[simplesurvey__Survey__c].Contact|
|Reference Target Field (PM)|<!-- -->|
|Connector|[myRule_1_A2](#myrule_1_a2)|


#### Filters (logic: **and**)

|Filter Id|Field|Operator|Value|
|:-- |:-- |:--:|:--: |
|1|Id| Equal To|myVariable_current.simplesurvey__Contact__c|




#### Input Assignments

|Field|Value|
|:-- |:--: |
|Last_Created_Survey_Date__c|formula_2_myRule_1_A1_1002530607|




### myRule_1_A2

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Update|
|Object|Contact|
|Label|Survey Fatigue On|
|Evaluation Type (PM)|always|
|Extra Type Info (PM)|<!-- -->|
|Is Child Relationship (PM)|⬜|
|Reference (PM)|[simplesurvey__Survey__c].Contact|
|Reference Target Field (PM)|<!-- -->|
|Connector|myWait_myRule_1|


#### Filters (logic: **and**)

|Filter Id|Field|Operator|Value|
|:-- |:-- |:--:|:--: |
|1|Id| Equal To|myVariable_current.simplesurvey__Contact__c|




#### Input Assignments

|Field|Value|
|:-- |:--: |
|Survey_Fatigue_Warning__c|✅|




### myWaitEvent_myWait_myRule_1_event_0_SA1

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Update|
|Object|Contact|
|Label|Survey Fatigue Warning Off|
|Evaluation Type (PM)|always|
|Extra Type Info (PM)|<!-- -->|
|Is Child Relationship (PM)|⬜|
|Reference (PM)|[simplesurvey__Survey__c].Contact|
|Reference Target Field (PM)|<!-- -->|
|Connector|[myWaitEvent_myWait_myRule_1_event_0_postWaitExecutionAssignment](#mywaitevent_mywait_myrule_1_event_0_postwaitexecutionassignment)|


#### Filters (logic: **and**)

|Filter Id|Field|Operator|Value|
|:-- |:-- |:--:|:--: |
|1|Id| Equal To|myVariable_current.simplesurvey__Contact__c|




#### Input Assignments

|Field|Value|
|:-- |:--: |
|Survey_Fatigue_Warning__c|⬜|








___

_Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_