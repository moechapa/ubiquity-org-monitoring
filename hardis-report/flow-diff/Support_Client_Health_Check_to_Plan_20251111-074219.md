# Support | Client Health Check to Plan

## Flow Diagram [(_View History_)](Support_Client_Health_Check_to_Plan-history.md)

```mermaid
%% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
%% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
%% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
%% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
%% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram

flowchart TB
START(["START<br/><b>Client_Health_Check__c</b></br>Type: <b>On All Changes</b>"]):::startClass
click START "#general-information" "1409869431"

START --> isChangedDecision4_myRule_3_Date_Completed_c
isChangedDecision4_myRule_3_Date_Completed_c{"🔀 <em></em><br/>isChangedDecision4_myRule_3_Date_Completed_c"}:::decisions
click isChangedDecision4_myRule_3_Date_Completed_c "#ischangeddecision4_myrule_3_date_completed_c" "258405881"

myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
click myDecision "#mydecision" "3345507466"

myDecision2{"🔀 <em></em><br/>myDecision2"}:::decisions
click myDecision2 "#mydecision2" "2898178218"

myRule_1_A1[("🛠️ <em></em><br/>Date to Plan")]:::recordUpdates
click myRule_1_A1 "#myrule_1_a1" "2211900790"

myRule_1_A2[("🛠️ <em></em><br/>Type to Plan")]:::recordUpdates
click myRule_1_A2 "#myrule_1_a2" "3943738437"

myRule_3_A1[("🛠️ <em></em><br/>Date to Plan")]:::recordUpdates
click myRule_3_A1 "#myrule_3_a1" "2346933558"

isChangedDecision4_myRule_3_Date_Completed_c --> |"isChangedRule_4_myRule_3_Date_Completed_c"| myDecision
isChangedDecision4_myRule_3_Date_Completed_c --> |"default"| myDecision
myDecision --> |"Simple Health Check"| myRule_1_A1
myDecision --> |"default"| myDecision2
myDecision2 --> |"Detailed Health Check"| myRule_3_A1
myDecision2 --> |"default"| END_myDecision2
myRule_1_A1 --> myRule_1_A2
myRule_1_A2 --> END_myRule_1_A2
myRule_3_A1 --> END_myRule_3_A1
END_myDecision2(( END )):::endClass
END_myRule_1_A2(( END )):::endClass
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
|Label|Support | Client Health Check to Plan|
|Status|Active|
|Description|Copies latest health check data to Plan|
|Interview Label|Support_Client_Health_Check_to_Plan-2_InterviewLabel|
|Start Element Reference|[isChangedDecision4_myRule_3_Date_Completed_c](#ischangeddecision4_myrule_3_date_completed_c)|
| Object Type (PM)|Client_Health_Check__c|
| Object Variable (PM)|myVariable_current|
| Old Object Variable (PM)|myVariable_old|
| Trigger Type (PM)|onAllChanges|


## Variables

|Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
|:-- |:--:|:--:|:--:|:--:|:--:|:--  |
|myVariable_current|SObject|⬜|✅|✅|Client_Health_Check__c|<!-- -->|
|myVariable_old|SObject|⬜|✅|⬜|Client_Health_Check__c|<!-- -->|


## Flow Nodes Details

### isChangedDecision4_myRule_3_Date_Completed_c

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Decision|
|Label|[isChangedDecision4_myRule_3_Date_Completed_c](#ischangeddecision4_myrule_3_date_completed_c)|
|Default Connector|[myDecision](#mydecision)|
|Default Connector Label|default|


#### Rule isChangedRule_4_myRule_3_Date_Completed_c (isChangedRule_4_myRule_3_Date_Completed_c)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[myDecision](#mydecision)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|myVariable_old| Is Null|⬜|
|2|myVariable_old.Date_Completed__c| Not Equal To|myVariable_current.Date_Completed__c|




### myDecision

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Decision|
|Label|[myDecision](#mydecision)|
|Default Connector|[myDecision2](#mydecision2)|
|Default Connector Label|default|
|Index (PM)|numberValue: 0<br/>|


#### Rule myRule_1 (Simple Health Check)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[myRule_1_A1](#myrule_1_a1)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|myVariable_current.RecordTypeId| Equal To|0121G000000g1WgQAI|




### myDecision2

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Decision|
|Label|[myDecision2](#mydecision2)|
|Default Connector Label|default|
|Index (PM)|1|


#### Rule myRule_3 (Detailed Health Check)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[myRule_3_A1](#myrule_3_a1)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|myVariable_current.RecordTypeId| Equal To|0121G000000g1WbQAI|
|2|isChangedRule_4_myRule_3_Date_Completed_c| Equal To|✅|
|3|myVariable_current.Date_Completed__c| Is Null|⬜|




### myRule_1_A1

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Update|
|Object|Plan__c|
|Label|Date to Plan|
|Evaluation Type (PM)|always|
|Extra Type Info (PM)|<!-- -->|
|Is Child Relationship (PM)|⬜|
|Reference (PM)|[Client_Health_Check__c].Plan|
|Reference Target Field (PM)|<!-- -->|
|Connector|[myRule_1_A2](#myrule_1_a2)|


#### Filters (logic: **and**)

|Filter Id|Field|Operator|Value|
|:-- |:-- |:--:|:--: |
|1|Id| Equal To|myVariable_current.Plan__c|




#### Input Assignments

|Field|Value|
|:-- |:--: |
|Last_Health_Check_Date__c|myVariable_current.CreatedDate|




### myRule_1_A2

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Update|
|Object|Plan__c|
|Label|Type to Plan|
|Evaluation Type (PM)|always|
|Extra Type Info (PM)|<!-- -->|
|Is Child Relationship (PM)|⬜|
|Reference (PM)|[Client_Health_Check__c].Plan|
|Reference Target Field (PM)|<!-- -->|


#### Filters (logic: **and**)

|Filter Id|Field|Operator|Value|
|:-- |:-- |:--:|:--: |
|1|Id| Equal To|myVariable_current.Plan__c|




#### Input Assignments

|Field|Value|
|:-- |:--: |
|Recent_Client_Health_Check_Type__c|Simple|




### myRule_3_A1

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Update|
|Object|Plan__c|
|Label|Date to Plan|
|Evaluation Type (PM)|always|
|Extra Type Info (PM)|<!-- -->|
|Is Child Relationship (PM)|⬜|
|Reference (PM)|[Client_Health_Check__c].Plan|
|Reference Target Field (PM)|<!-- -->|


#### Filters (logic: **and**)

|Filter Id|Field|Operator|Value|
|:-- |:-- |:--:|:--: |
|1|Id| Equal To|myVariable_current.Plan__c|




#### Input Assignments

|Field|Value|
|:-- |:--: |
|Last_Health_Check_Date__c|myVariable_current.Date_Completed__c|
|Recent_Client_Health_Check_Type__c|Detailed|








___

_Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_