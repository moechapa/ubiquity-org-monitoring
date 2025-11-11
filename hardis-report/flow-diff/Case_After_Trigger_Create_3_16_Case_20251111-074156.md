# Implementation | After Trigger | Create 3(16) Case

## Flow Diagram [(_View History_)](Case_After_Trigger_Create_3_16_Case-history.md)

```mermaid
%% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
%% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
%% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
%% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
%% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram

flowchart TB
START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
click START "#general-information" "2680686434"

Set_ownerId[\"🟰 <em></em><br/>Set ownerId"/]:::assignments
click Set_ownerId "#set_ownerid" "517978229"

Queue_Found_Check{"🔀 <em></em><br/>Queue Found Check"}:::decisions
click Queue_Found_Check "#queue_found_check" "2933779166"

Create_3_16_Case_for_Compliance[("➕ <em></em><br/>Create 3(16) Case for Compliance")]:::recordCreates
click Create_3_16_Case_for_Compliance "#create_3_16_case_for_compliance" "621397548"

Get_Compliance_Queue[("🔍 <em></em><br/>Get Compliance Queue")]:::recordLookups
click Get_Compliance_Queue "#get_compliance_queue" "270842448"

Set_ownerId --> Create_3_16_Case_for_Compliance
Queue_Found_Check --> |"Queue Found"| Set_ownerId
Queue_Found_Check --> |"Default Outcome"| Create_3_16_Case_for_Compliance
Create_3_16_Case_for_Compliance --> END_Create_3_16_Case_for_Compliance
Get_Compliance_Queue --> Queue_Found_Check
START -->  Get_Compliance_Queue
END_Create_3_16_Case_for_Compliance(( END )):::endClass


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
|Object|Implementation__c|
|Process Type| Auto Launched Flow|
|Trigger Type| Record After Save|
|Record Trigger Type| Update|
|Label|Implementation | After Trigger | Create 3(16) Case|
|Status|Active|
|Description|Updated to add compliance queue<br/><br/>When Census and Eligibility Uploaded date is entered on Reserve(k) or Sallus Imp, create a case for Compliance|
|Environments|Default|
|Interview Label|Case | After Trigger | Create 3(16) Case {!$Flow.CurrentDateTime}|
| Builder Type (PM)|LightningFlowBuilder|
| Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
| Origin Builder Type (PM)|LightningFlowBuilder|
|Connector|[Get_Compliance_Queue](#get_compliance_queue)|
|Next Node|[Get_Compliance_Queue](#get_compliance_queue)|


#### Filters (logic: **1 AND 2 AND (3 OR 4 OR 5 OR 6 OR 7)**)

|Filter Id|Field|Operator|Value|
|:-- |:-- |:--:|:--: |
|1|Census_and_Eligibility_Uploaded__c| Is Changed|✅|
|2|Census_and_Eligibility_Uploaded__c| Is Null|<!-- -->|
|3|Service_Option__c| Equal To|Reserve(k)|
|4|Service_Option__c| Equal To|Starter|
|5|Service_Option__c| Equal To|Partner|
|6|Service_Option__c| Equal To|Builder|
|7|Service_Option__c| Equal To|Franchise|


## Variables

|Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
|:-- |:--:|:--:|:--:|:--:|:--:|:--  |
|ownerId|String|⬜|⬜|⬜|<!-- -->|Defaults to compliance shared user Id.  Should update to queue Id|


## Flow Nodes Details

### Set_ownerId

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Assignment|
|Label|Set ownerId|
|Connector|[Create_3_16_Case_for_Compliance](#create_3_16_case_for_compliance)|


#### Assignments

|Assign To Reference|Operator|Value|
|:-- |:--:|:--: |
|ownerId| Assign|Get_Compliance_Queue.Id|




### Queue_Found_Check

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Decision|
|Label|Queue Found Check|
|Default Connector|[Create_3_16_Case_for_Compliance](#create_3_16_case_for_compliance)|
|Default Connector Label|Default Outcome|


#### Rule Queue_Found (Queue Found)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[Set_ownerId](#set_ownerid)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|[Get_Compliance_Queue](#get_compliance_queue)| Is Null|⬜|




### Create_3_16_Case_for_Compliance

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Create|
|Object|Case|
|Label|Create 3(16) Case for Compliance|
|Store Output Automatically|✅|


#### Input Assignments

|Field|Value|
|:-- |:--: |
|AccountId|$Record.Account__c|
|Category__c|3(16)|
|Department__c|Compliance|
|Origin|Compliance|
|OwnerId|ownerId|
|Plan__c|$Record.Plan__c|
|RecordTypeId|01237000000Xs6BAAS|
|Status|New|
|Sub_Category__c|Census Upload|
|Subject|New 3(16) Implementation|




### Get_Compliance_Queue

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Lookup|
|Object|Group|
|Label|Get Compliance Queue|
|Assign Null Values If No Records Found|⬜|
|Get First Record Only|✅|
|Queried Fields|Id|
|Store Output Automatically|✅|
|Connector|[Queue_Found_Check](#queue_found_check)|


#### Filters (logic: **and**)

|Filter Id|Field|Operator|Value|
|:-- |:-- |:--:|:--: |
|1|DeveloperName| Equal To|Compliance|
|2|Type| Equal To|Queue|








___

_Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_