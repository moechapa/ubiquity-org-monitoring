# Payroll Submission Type

## Flow Diagram [(_View History_)](Payroll_Submission_Type-history.md)

```mermaid
%% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
%% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
%% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
%% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
%% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram

flowchart TB
START(["START<br/><b>Plan__c</b></br>Type: <b>On All Changes</b>"]):::startClass
click START "#general-information" "4141751581"

START --> myVariable_waitStartTimeAssignment
myVariable_waitStartTimeAssignment[\"🟰 <em></em><br/>myVariable_waitStartTimeAssignment"/]:::assignments
click myVariable_waitStartTimeAssignment "#myvariable_waitstarttimeassignment" "796670475"

isChangedDecision2_myRule_1_Payroll_Submission_Type_c{"🔀 <em></em><br/>isChangedDecision2_myRule_1_Payroll_Submission_Type_c"}:::decisions
click isChangedDecision2_myRule_1_Payroll_Submission_Type_c "#ischangeddecision2_myrule_1_payroll_submission_type_c" "2774963865"

myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
click myDecision "#mydecision" "1066692559"

myRule_1_A1[("🛠️ <em></em><br/>Update Payroll Submission Type on Account")]:::recordUpdates
click myRule_1_A1 "#myrule_1_a1" "2391011109"

myVariable_waitStartTimeAssignment --> isChangedDecision2_myRule_1_Payroll_Submission_Type_c
isChangedDecision2_myRule_1_Payroll_Submission_Type_c --> |"isChangedRule_2_myRule_1_Payroll_Submission_Type_c"| myDecision
isChangedDecision2_myRule_1_Payroll_Submission_Type_c --> |"default"| myDecision
myDecision --> |"Payroll Submission Type"| myRule_1_A1
myDecision --> |"default"| END_myDecision
myRule_1_A1 --> END_myRule_1_A1
END_myDecision(( END )):::endClass
END_myRule_1_A1(( END )):::endClass


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
|Label|Payroll Submission Type|
|Status|Active|
|Description|Populates field on Account object when Plan object field is populated|
|Interview Label|Payroll_Submission_Type-1_InterviewLabel|
|Start Element Reference|[myVariable_waitStartTimeAssignment](#myvariable_waitstarttimeassignment)|
| Object Type (PM)|Plan__c|
| Object Variable (PM)|myVariable_current|
| Old Object Variable (PM)|myVariable_old|
| Trigger Type (PM)|onAllChanges|


## Variables

|Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
|:-- |:--:|:--:|:--:|:--:|:--:|:--  |
|myVariable_current|SObject|⬜|✅|✅|Plan__c|<!-- -->|
|myVariable_old|SObject|⬜|✅|⬜|Plan__c|<!-- -->|
|myVariable_waitStartTimeVariable|DateTime|⬜|⬜|⬜|<!-- -->|<!-- -->|


## Flow Nodes Details

### myVariable_waitStartTimeAssignment

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Assignment|
|Label|[myVariable_waitStartTimeAssignment](#myvariable_waitstarttimeassignment)|
|Connector|[isChangedDecision2_myRule_1_Payroll_Submission_Type_c](#ischangeddecision2_myrule_1_payroll_submission_type_c)|


#### Assignments

|Assign To Reference|Operator|Value|
|:-- |:--:|:--: |
|myVariable_waitStartTimeVariable| Assign|$Flow.CurrentDateTime|




### isChangedDecision2_myRule_1_Payroll_Submission_Type_c

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Decision|
|Label|[isChangedDecision2_myRule_1_Payroll_Submission_Type_c](#ischangeddecision2_myrule_1_payroll_submission_type_c)|
|Default Connector|[myDecision](#mydecision)|
|Default Connector Label|default|


#### Rule isChangedRule_2_myRule_1_Payroll_Submission_Type_c (isChangedRule_2_myRule_1_Payroll_Submission_Type_c)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[myDecision](#mydecision)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|myVariable_old| Is Null|⬜|
|2|myVariable_old.Payroll_Submission_Type__c| Not Equal To|myVariable_current.Payroll_Submission_Type__c|




### myDecision

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Decision|
|Label|[myDecision](#mydecision)|
|Default Connector Label|default|
|Index (PM)|numberValue: 0<br/>|


#### Rule myRule_1 (Payroll Submission Type)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[myRule_1_A1](#myrule_1_a1)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|isChangedRule_2_myRule_1_Payroll_Submission_Type_c| Equal To|✅|
|2|myVariable_current.Payroll_Submission_Type__c| Is Null|⬜|




### myRule_1_A1

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Update|
|Object|Account|
|Label|Update Payroll Submission Type on Account|
|Evaluation Type (PM)|always|
|Is Child Relationship (PM)|⬜|
|Reference (PM)|[Plan__c].Account|


#### Filters (logic: **and**)

|Filter Id|Field|Operator|Value|
|:-- |:-- |:--:|:--: |
|1|Id| Equal To|myVariable_current.Account__c|




#### Input Assignments

|Field|Value|
|:-- |:--: |
|Payroll_Submission_Type__c|myVariable_current.Payroll_Submission_Type__c|








___

_Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_