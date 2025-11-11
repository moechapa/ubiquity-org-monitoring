# Enrollment | Survey

## Flow Diagram [(_View History_)](Enrollment_Survey-history.md)

```mermaid
%% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
%% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
%% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
%% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
%% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram

flowchart TB
START(["START<br/><b>Enrollment_Meeting__c</b></br>Type: <b>On All Changes</b>"]):::startClass
click START "#general-information" "1475661458"

START --> myDecision
myRule_1_A1("📧 <em></em><br/>Enrollment Meeting Survey"):::actionCalls
click myRule_1_A1 "#myrule_1_a1" "651551656"

myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
click myDecision "#mydecision" "3711092943"

myRule_1_pmetdec{"🔀 <em></em><br/>Previously Met Decision"}:::decisions
click myRule_1_pmetdec "#myrule_1_pmetdec" "3213641475"

myRule_1_A1 --> END_myRule_1_A1
myDecision --> |"Completed Meeting"| myRule_1_pmetdec
myDecision --> |"default"| END_myDecision
myRule_1_pmetdec --> |"Previously Met - Null"| myRule_1_A1
myRule_1_pmetdec --> |"Not Previously Met"| myRule_1_A1
END_myRule_1_A1(( END )):::endClass
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
|Label|Enrollment | Survey|
|Status|Obsolete|
|Description|Send Survey after enrollment meeting is completed|
|Interview Label|Enrollment_Survey-2_InterviewLabel|
|Start Element Reference|[myDecision](#mydecision)|
| Object Type (PM)|Enrollment_Meeting__c|
| Object Variable (PM)|myVariable_current|
| Old Object Variable (PM)|myVariable_old|
| Trigger Type (PM)|onAllChanges|


## Variables

|Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
|:-- |:--:|:--:|:--:|:--:|:--:|:--  |
|myVariable_current|SObject|⬜|✅|✅|Enrollment_Meeting__c|<!-- -->|
|myVariable_old|SObject|⬜|✅|⬜|Enrollment_Meeting__c|<!-- -->|


## Flow Nodes Details

### myRule_1_A1

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Action Call|
|Label|Enrollment Meeting Survey|
|Action Type|Email Alert|
|Action Name|Enrollment_Meeting__c.Enrollment_Meeting_Survey|
|Name Segment|Enrollment_Meeting__c.Enrollment_Meeting_Survey|
|Email Alert Selection (PM)|Enrollment_Meeting_Survey|
| SObject Row Id (input)|myVariable_current.Id|


### myDecision

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Decision|
|Label|[myDecision](#mydecision)|
|Default Connector Label|default|
|Index (PM)|numberValue: 0<br/>|


#### Rule myRule_1 (Completed Meeting)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[myRule_1_pmetdec](#myrule_1_pmetdec)|
|Condition Logic|1 AND (2 OR 3 OR 4 OR 5)|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|myVariable_current.Status__c| Equal To|Completed|
|2|myVariable_current.Meeting_Type__c| Contains|Complete meeting|
|3|myVariable_current.Meeting_Type__c| Contains|Tailored deck|
|4|myVariable_current.Meeting_Type__c| Contains|Recording sent to employees|
|5|myVariable_current.Meeting_Type__c| Contains|Train_Sponsor_Recording_to_Employees|




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
|Condition Logic|1 AND (2 OR 3 OR 4 OR 5)|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|myVariable_old.Status__c| Equal To|Completed|
|2|myVariable_old.Meeting_Type__c| Contains|Complete meeting|
|3|myVariable_old.Meeting_Type__c| Contains|Tailored deck|
|4|myVariable_old.Meeting_Type__c| Contains|Recording sent to employees|
|5|myVariable_old.Meeting_Type__c| Contains|Train_Sponsor_Recording_to_Employees|








___

_Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_