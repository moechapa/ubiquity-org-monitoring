# Implementations | Assigned Status Update

## Flow Diagram [(_View History_)](Implementations_Assigned_Status_Update-history.md)

```mermaid
%% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
%% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
%% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
%% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
%% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram

flowchart TB
START(["START<br/><b>Case</b></br>Type: <b>On All Changes</b>"]):::startClass
click START "#general-information" "2347238199"

START --> isChangedDecision4_myRule_3_Implementation_c
isChangedDecision4_myRule_3_Implementation_c{"🔀 <em></em><br/>isChangedDecision4_myRule_3_Implementation_c"}:::decisions
click isChangedDecision4_myRule_3_Implementation_c "#ischangeddecision4_myrule_3_implementation_c" "2879415448"

myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
click myDecision "#mydecision" "3357713217"

myDecision2{"🔀 <em></em><br/>myDecision2"}:::decisions
click myDecision2 "#mydecision2" "294979118"

myRule_1_A1[("🛠️ <em></em><br/>Update Case Status")]:::recordUpdates
click myRule_1_A1 "#myrule_1_a1" "712062708"

myRule_3_A1[("🛠️ <em></em><br/>Plan to Case")]:::recordUpdates
click myRule_3_A1 "#myrule_3_a1" "2478406111"

isChangedDecision4_myRule_3_Implementation_c --> |"isChangedRule_4_myRule_3_Implementation_c"| myDecision
isChangedDecision4_myRule_3_Implementation_c --> |"default"| myDecision
myDecision --> |"Imp Queue to User"| myRule_1_A1
myDecision --> |"default"| myDecision2
myDecision2 --> |"Copy Plan from Imp"| myRule_3_A1
myDecision2 --> |"default"| END_myDecision2
myRule_1_A1 --> myDecision2
myRule_3_A1 --> END_myRule_3_A1
END_myDecision2(( END )):::endClass
END_myRule_3_A1(( END )):::endClass


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
|Label|Implementations | Assigned Status Update|
|Status|Active|
|Description|Changes status of case for Implementations from New to Assigned when case changed from Queue to User|
|Interview Label|Implementations_Assigned_Status_Update-8_InterviewLabel|
|Start Element Reference|[isChangedDecision4_myRule_3_Implementation_c](#ischangeddecision4_myrule_3_implementation_c)|
| Object Type (PM)|Case|
| Object Variable (PM)|myVariable_current|
| Old Object Variable (PM)|myVariable_old|
| Trigger Type (PM)|onAllChanges|


## Variables

|Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
|:-- |:--:|:--:|:--:|:--:|:--:|:--  |
|myVariable_current|SObject|⬜|✅|✅|Case|<!-- -->|
|myVariable_old|SObject|⬜|✅|⬜|Case|<!-- -->|


## Formulas

|Name|Data Type|Expression|Description|
|:-- |:--:|:-- |:--  |
|formula_myRule_1|Boolean|AND(<br/>ISCHANGED({!myVariable_current.OwnerId}),<br/>PRIORVALUE({!myVariable_current.OwnerId}) = "00G37000000PDffEAG",<br/>NOT(BEGINS({!myVariable_current.OwnerId}, "00G"))<br/>)|<!-- -->|


## Flow Nodes Details

### isChangedDecision4_myRule_3_Implementation_c

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Decision|
|Label|[isChangedDecision4_myRule_3_Implementation_c](#ischangeddecision4_myrule_3_implementation_c)|
|Default Connector|[myDecision](#mydecision)|
|Default Connector Label|default|


#### Rule isChangedRule_4_myRule_3_Implementation_c (isChangedRule_4_myRule_3_Implementation_c)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[myDecision](#mydecision)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|myVariable_old| Is Null|⬜|
|2|myVariable_old.Implementation__c| Not Equal To|myVariable_current.Implementation__c|




### myDecision

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Decision|
|Label|[myDecision](#mydecision)|
|Default Connector|[myDecision2](#mydecision2)|
|Default Connector Label|default|
|Index (PM)|numberValue: 0<br/>|


#### Rule myRule_1 (Imp Queue to User)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[myRule_1_A1](#myrule_1_a1)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|formula_myRule_1| Equal To|✅|




### myDecision2

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Decision|
|Label|[myDecision2](#mydecision2)|
|Default Connector Label|default|
|Index (PM)|1|


#### Rule myRule_3 (Copy Plan from Imp)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[myRule_3_A1](#myrule_3_a1)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|isChangedRule_4_myRule_3_Implementation_c| Equal To|✅|
|2|myVariable_current.Implementation__c| Is Null|⬜|
|3|myVariable_current.Implementation__r.Plan__r.Id| Is Null|⬜|




### myRule_1_A1

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Update|
|Object|Case|
|Label|Update Case Status|
|Evaluation Type (PM)|always|
|Extra Type Info (PM)|<!-- -->|
|Is Child Relationship (PM)|⬜|
|Reference (PM)|[Case]|
|Reference Target Field (PM)|<!-- -->|
|Connector|[myDecision2](#mydecision2)|


#### Filters (logic: **and**)

|Filter Id|Field|Operator|Value|
|:-- |:-- |:--:|:--: |
|1|Id| Equal To|myVariable_current.Id|




#### Input Assignments

|Field|Value|
|:-- |:--: |
|Status|Assigned|




### myRule_3_A1

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Update|
|Object|Case|
|Label|Plan to Case|
|Evaluation Type (PM)|always|
|Extra Type Info (PM)|<!-- -->|
|Is Child Relationship (PM)|⬜|
|Reference (PM)|[Case]|
|Reference Target Field (PM)|<!-- -->|


#### Filters (logic: **and**)

|Filter Id|Field|Operator|Value|
|:-- |:-- |:--:|:--: |
|1|Id| Equal To|myVariable_current.Id|




#### Input Assignments

|Field|Value|
|:-- |:--: |
|Plan__c|myVariable_current.Implementation__r.Plan__c|








___

_Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_