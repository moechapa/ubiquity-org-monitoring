# Implementation | Trigger | Owner Nearing Max Cap

## Flow Diagram [(_View History_)](Implementation_Trigger_Owner_Nearing_Max_Cap-history.md)

```mermaid
%% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
%% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
%% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
%% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
%% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram

flowchart TB
START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
click START "#general-information" "2624948261"

Email_Manager("📧 <em></em><br/>Email Manager"):::actionCalls
click Email_Manager "#email_manager" "881279456"

Add_to_Counter[\"🟰 <em></em><br/>Add to Counter"/]:::assignments
click Add_to_Counter "#add_to_counter" "125427885"

Alert_Required{"🔀 <em></em><br/>Alert Required"}:::decisions
click Alert_Required "#alert_required" "1598025537"

Null_Check{"🔀 <em></em><br/>Null Check"}:::decisions
click Null_Check "#null_check" "3483313845"

Imp_Counter{{"🔁 <em></em><br/>Imp Counter"}}:::loops
click Imp_Counter "#imp_counter" "840364678"

Get_Implementations[("🔍 <em></em><br/>Get Implementations")]:::recordLookups
click Get_Implementations "#get_implementations" "2550092472"

Email_Manager --> END_Email_Manager
Add_to_Counter --> Imp_Counter
Alert_Required --> |"New Plan"| Email_Manager
Alert_Required --> |"Conversion Plan"| Email_Manager
Alert_Required --> |"Default Outcome"| END_Alert_Required
Null_Check --> |"Imps Found"| Imp_Counter
Null_Check --> |"Default Outcome"| END_Null_Check
Imp_Counter --> |"For Each"|Add_to_Counter
Imp_Counter ---> |"After Last"|Alert_Required
Get_Implementations --> Null_Check
START -->  Get_Implementations
END_Email_Manager(( END )):::endClass
END_Alert_Required(( END )):::endClass
END_Null_Check(( END )):::endClass


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
|Record Trigger Type| Create And Update|
|Label|Implementation | Trigger | Owner Nearing Max Cap|
|Status|Active|
|Interview Label|Implementation | Trigger | Owner Nearing Max Cap {!$Flow.CurrentDateTime}|
| Builder Type (PM)|LightningFlowBuilder|
| Canvas Mode (PM)|FREE_FORM_CANVAS|
| Origin Builder Type (PM)|LightningFlowBuilder|
|Connector|[Get_Implementations](#get_implementations)|
|Next Node|[Get_Implementations](#get_implementations)|


#### Filters (logic: **(1 AND 3) OR 2**)

|Filter Id|Field|Operator|Value|
|:-- |:-- |:--:|:--: |
|1|Implementation_Status__c| Contains|In Progress|
|2|OwnerId| Is Changed|✅|
|3|Implementation_Status__c| Is Changed|✅|


## Variables

|Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
|:-- |:--:|:--:|:--:|:--:|:--:|:--  |
|impCollection|SObject|✅|✅|⬜|Implementation__c|<!-- -->|
|ImpCount|Number|⬜|✅|⬜|<!-- -->|<!-- -->|


## Flow Nodes Details

### Email_Manager

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Action Call|
|Label|Email Manager|
|Action Type|Email Alert|
|Action Name|Implementation__c.Imps_Owner_Nearing_Max_Capacity|
|Flow Transaction Model|CurrentTransaction|
|Name Segment|Implementation__c.Imps_Owner_Nearing_Max_Capacity|
| SObject Row Id (input)|$Record.Id|


### Add_to_Counter

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Assignment|
|Label|Add to Counter|
|Connector|[Imp_Counter](#imp_counter)|


#### Assignments

|Assign To Reference|Operator|Value|
|:-- |:--:|:--: |
|ImpCount| Add|1|




### Alert_Required

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Decision|
|Label|Alert Required|
|Default Connector Label|Default Outcome|


#### Rule New_Plan (New Plan)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[Email_Manager](#email_manager)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|$Record.Plan_Type__c| Equal To|New Plan|
|2|ImpCount| Greater Than Or Equal To|50|




#### Rule Conversion_Plan (Conversion Plan)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[Email_Manager](#email_manager)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|$Record.Plan_Type__c| Equal To|Conversion Plan|
|2|ImpCount| Greater Than Or Equal To|20|




### Null_Check

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Decision|
|Label|Null Check|
|Default Connector Label|Default Outcome|


#### Rule Imps_Found (Imps Found)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[Imp_Counter](#imp_counter)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|impCollection| Is Null|⬜|




### Imp_Counter

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Loop|
|Label|Imp Counter|
|Collection Reference|impCollection|
|Iteration Order|Asc|
|Next Value Connector|[Add_to_Counter](#add_to_counter)|
|No More Values Connector|[Alert_Required](#alert_required)|


### Get_Implementations

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Lookup|
|Object|Implementation__c|
|Label|Get Implementations|
|Assign Null Values If No Records Found|✅|
|Output Reference|impCollection|
|Queried Fields|Id|
|Connector|[Null_Check](#null_check)|


#### Filters (logic: **1 AND (2 OR 3 OR 4)**)

|Filter Id|Field|Operator|Value|
|:-- |:-- |:--:|:--: |
|1|OwnerId| Equal To|$Record.OwnerId|
|2|Implementation_Status__c| Equal To|In Progress - Plan Creation|
|3|Implementation_Status__c| Equal To|In Progress - Census & Payroll|
|4|Implementation_Status__c| Equal To|In Progress - Conversion & Payroll|








___

_Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_