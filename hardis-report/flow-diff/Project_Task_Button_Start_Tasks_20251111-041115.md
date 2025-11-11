# Project Task | Button | Start Tasks

## Flow Diagram [(_View History_)](Project_Task_Button_Start_Tasks-history.md)

```mermaid
%% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
%% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
%% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
%% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
%% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram

flowchart TB
START(["START<br/><b>Screen Flow</b>"]):::startClass
click START "#general-information" "843164429"

Add_Task_to_Collection[\"🟰 <em></em><br/>Add Task to Collection"/]:::assignments
click Add_Task_to_Collection "#add_task_to_collection" "151511086"

Assign_Start_Date[\"🟰 <em></em><br/>Assign Start Date"/]:::assignments
click Assign_Start_Date "#assign_start_date" "2517831679"

Task_Loop{{"🔁 <em></em><br/>Task Loop"}}:::loops
click Task_Loop "#task_loop" "236393963"

Get_Task[("🔍 <em></em><br/>Get Task")]:::recordLookups
click Get_Task "#get_task" "2354041262"

Update_Records[("🛠️ <em></em><br/>Update Records")]:::recordUpdates
click Update_Records "#update_records" "100339263"

ErrorMSG(["💻 <em></em><br/>ErrorMSG"]):::screens
click ErrorMSG "#errormsg" "3137018693"

Add_Task_to_Collection --> Task_Loop
Assign_Start_Date --> Add_Task_to_Collection
Task_Loop --> |"For Each"|Get_Task
Task_Loop ---> |"After Last"|Update_Records
Get_Task --> Assign_Start_Date
Update_Records --> END_Update_Records
Update_Records -. Fault .->ErrorMSG
ErrorMSG --> END_ErrorMSG
START -->  Task_Loop
END_Update_Records(( END )):::endClass
END_ErrorMSG(( END )):::endClass


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
|Process Type| Flow|
|Label|Project Task | Button | Start Tasks|
|Status|Active|
|Environments|Default|
|Interview Label|Project Task | Button | Start Tasks {!$Flow.CurrentDateTime}|
| Builder Type (PM)|LightningFlowBuilder|
| Canvas Mode (PM)|FREE_FORM_CANVAS|
| Origin Builder Type (PM)|LightningFlowBuilder|
|Connector|[Task_Loop](#task_loop)|
|Next Node|[Task_Loop](#task_loop)|


## Variables

|Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
|:-- |:--:|:--:|:--:|:--:|:--:|:--  |
|id|String|⬜|✅|✅|<!-- -->|<!-- -->|
|ids|String|✅|✅|⬜|<!-- -->|<!-- -->|
|recordId|String|⬜|✅|✅|<!-- -->|<!-- -->|
|updateIds|SObject|✅|✅|✅|Project_Task__c|<!-- -->|


## Formulas

|Name|Data Type|Expression|Description|
|:-- |:--:|:-- |:--  |
|Now|DateTime|NOW()|<!-- -->|


## Flow Nodes Details

### Add_Task_to_Collection

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Assignment|
|Label|Add Task to Collection|
|Connector|[Task_Loop](#task_loop)|


#### Assignments

|Assign To Reference|Operator|Value|
|:-- |:--:|:--: |
|updateIds| Add|[Get_Task](#get_task)|




### Assign_Start_Date

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Assignment|
|Label|Assign Start Date|
|Connector|[Add_Task_to_Collection](#add_task_to_collection)|


#### Assignments

|Assign To Reference|Operator|Value|
|:-- |:--:|:--: |
|Get_Task.Actual_Start_Date__c| Assign|Now|
|Get_Task.Actual_Completion_Date__c| Assign|<!-- -->|
|Get_Task.Status__c| Assign|In Progress|




### Task_Loop

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Loop|
|Label|Task Loop|
|Assign Next Value To Reference|id|
|Collection Reference|ids|
|Iteration Order|Asc|
|Next Value Connector|[Get_Task](#get_task)|
|No More Values Connector|[Update_Records](#update_records)|


### Get_Task

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Lookup|
|Object|Project_Task__c|
|Label|Get Task|
|Assign Null Values If No Records Found|⬜|
|Get First Record Only|✅|
|Store Output Automatically|✅|
|Connector|[Assign_Start_Date](#assign_start_date)|


#### Filters (logic: **and**)

|Filter Id|Field|Operator|Value|
|:-- |:-- |:--:|:--: |
|1|Id| Equal To|id|




### Update_Records

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Update|
|Label|Update Records|
|Fault Connector|[ErrorMSG](#errormsg)|
|Input Reference|updateIds|


### ErrorMSG

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Screen|
|Label|[ErrorMSG](#errormsg)|
|Allow Back|✅|
|Allow Finish|✅|
|Allow Pause|✅|
|Show Footer|✅|
|Show Header|✅|


#### Error

|<!-- -->|<!-- -->|
|:---|:---|
|Field Text|<p>{!$Flow.FaultMessage}</p>|
|Field Type| Display Text|
|Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|








___

_Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_