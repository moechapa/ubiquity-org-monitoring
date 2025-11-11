# Contact | Verify Advisor Credentialing

## Flow Diagram [(_View History_)](Contact_Verify_Advisor_Credentialing-history.md)

```mermaid
%% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
%% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
%% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
%% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
%% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram

flowchart TB
START(["START<br/><b>Contact</b></br>Type: <b>On All Changes</b>"]):::startClass
click START "#general-information" "1698471211"

START --> isChangedDecision2_myRule_1_Credentialed_Advisor_c
myRule_1_A1("⚡ <em></em><br/>Update Lead Status"):::actionCalls
click myRule_1_A1 "#myrule_1_a1" "3096243025"

isChangedDecision2_myRule_1_Credentialed_Advisor_c{"🔀 <em></em><br/>isChangedDecision2_myRule_1_Credentialed_Advisor_c"}:::decisions
click isChangedDecision2_myRule_1_Credentialed_Advisor_c "#ischangeddecision2_myrule_1_credentialed_advisor_c" "3003118587"

myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
click myDecision "#mydecision" "3741818118"

myRule_1_A1 --> END_myRule_1_A1
isChangedDecision2_myRule_1_Credentialed_Advisor_c --> |"isChangedRule_2_myRule_1_Credentialed_Advisor_c"| myDecision
isChangedDecision2_myRule_1_Credentialed_Advisor_c --> |"default"| myDecision
myDecision --> |"Credentialing Status Changes"| myRule_1_A1
myDecision --> |"default"| END_myDecision
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
|Label|Contact | Verify Advisor Credentialing|
|Status|Obsolete|
|Description|Update Leads associated with Advisor when Credentialing Status changes|
|Interview Label|Contact_Verify_Advisor_Credentialing-1_InterviewLabel|
|Start Element Reference|[isChangedDecision2_myRule_1_Credentialed_Advisor_c](#ischangeddecision2_myrule_1_credentialed_advisor_c)|
| Object Type (PM)|Contact|
| Object Variable (PM)|myVariable_current|
| Old Object Variable (PM)|myVariable_old|
| Trigger Type (PM)|onAllChanges|


## Variables

|Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
|:-- |:--:|:--:|:--:|:--:|:--:|:--  |
|myVariable_current|SObject|⬜|✅|✅|Contact|<!-- -->|
|myVariable_old|SObject|⬜|✅|⬜|Contact|<!-- -->|


## Flow Nodes Details

### myRule_1_A1

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Action Call|
|Label|Update Lead Status|
|Action Type|Flow|
|Action Name|Contact_Update_Credential_Status_on_Leads|
|Name Segment|Contact_Update_Credential_Status_on_Leads|
| Action Call Type (PM)|flow|
|Flow Selection (PM)|Contact | Update Credential Status on Leads|
|Record Id (input)|myVariable_current.Id|


### isChangedDecision2_myRule_1_Credentialed_Advisor_c

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Decision|
|Label|[isChangedDecision2_myRule_1_Credentialed_Advisor_c](#ischangeddecision2_myrule_1_credentialed_advisor_c)|
|Default Connector|[myDecision](#mydecision)|
|Default Connector Label|default|


#### Rule isChangedRule_2_myRule_1_Credentialed_Advisor_c (isChangedRule_2_myRule_1_Credentialed_Advisor_c)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[myDecision](#mydecision)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|myVariable_old| Is Null|⬜|
|2|myVariable_old.Credentialed_Advisor__c| Not Equal To|myVariable_current.Credentialed_Advisor__c|




### myDecision

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Decision|
|Label|[myDecision](#mydecision)|
|Default Connector Label|default|
|Index (PM)|numberValue: 0<br/>|


#### Rule myRule_1 (Credentialing Status Changes)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[myRule_1_A1](#myrule_1_a1)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|isChangedRule_2_myRule_1_Credentialed_Advisor_c| Equal To|✅|








___

_Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_