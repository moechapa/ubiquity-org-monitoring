# Implementation | ONE TIME | Ownership Transfer

## Flow Diagram [(_View History_)](Implementation_ONE_TIME_Ownership_Transfer-history.md)

```mermaid
%% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
%% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
%% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
%% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
%% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram

flowchart TB
START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Scheduled</b>"]):::startClass
click START "#general-information" "3136869950"

Simply_Send_Ownership_Transfer_Notice("📧 <em></em><br/>Simply - Send Ownership Transfer Notice"):::actionCalls
click Simply_Send_Ownership_Transfer_Notice "#simply_send_ownership_transfer_notice" "2880523591"

Ubiquity_Send_Ownership_Transfer_Notice("📧 <em></em><br/>Ubiquity - Send Ownership Transfer Notice"):::actionCalls
click Ubiquity_Send_Ownership_Transfer_Notice "#ubiquity_send_ownership_transfer_notice" "2998521465"

Brand_Validation{"🔀 <em></em><br/>Brand Validation"}:::decisions
click Brand_Validation "#brand_validation" "428485905"

Client_Verification_0{"🔀 <em></em><br/>Client Verification"}:::decisions
click Client_Verification_0 "#client_verification_0" "3247758952"

Get_AC[("🔍 <em></em><br/>Get AC")]:::recordLookups
click Get_AC "#get_ac" "3653757651"

Uncheck_OTS_Box[("🛠️ <em></em><br/>Uncheck OTS Box")]:::recordUpdates
click Uncheck_OTS_Box "#uncheck_ots_box" "3458270418"

Simply_Send_Ownership_Transfer_Notice --> Uncheck_OTS_Box
Ubiquity_Send_Ownership_Transfer_Notice --> Uncheck_OTS_Box
Brand_Validation --> |"Simply"| Simply_Send_Ownership_Transfer_Notice
Brand_Validation --> |"Ubiquity"| Ubiquity_Send_Ownership_Transfer_Notice
Brand_Validation --> |"Default Outcome"| END_Brand_Validation
Client_Verification_0 --> |"Client Found"| Brand_Validation
Client_Verification_0 --> |"Client Missing"| END_Client_Verification_0
Get_AC --> Client_Verification_0
Uncheck_OTS_Box --> END_Uncheck_OTS_Box
START -->  Get_AC
END_Brand_Validation(( END )):::endClass
END_Client_Verification_0(( END )):::endClass
END_Uncheck_OTS_Box(( END )):::endClass


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
|Trigger Type| Scheduled|
|Label|Implementation | ONE TIME | Ownership Transfer|
|Status|Obsolete|
|Environments|Default|
|Interview Label|Implementation | ONE TIME | Ownership Transfer {!$Flow.CurrentDateTime}|
| Builder Type (PM)|LightningFlowBuilder|
| Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
| Origin Builder Type (PM)|LightningFlowBuilder|
|Connector|[Get_AC](#get_ac)|
|Next Node|[Get_AC](#get_ac)|


#### Schedules

|Frequency|Start Date|Start Time|
|:-- |:--:|:--: |
|Once|Mar 1, 2024|10:33|


#### Filters (logic: **and**)

|Filter Id|Field|Operator|Value|
|:-- |:-- |:--:|:--: |
|1|One_Time_Send__c| Equal To|✅|


## Variables

|Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
|:-- |:--:|:--:|:--:|:--:|:--:|:--  |
|aCon|SObject|⬜|✅|⬜|Associated_Contact__c|<!-- -->|
|completeTasks|SObject|✅|✅|⬜|Project_Task__c|<!-- -->|
|openProjTasks|SObject|✅|✅|⬜|Project_Task__c|<!-- -->|


## Formulas

|Name|Data Type|Expression|Description|
|:-- |:--:|:-- |:--  |
|now|DateTime|NOW()|<!-- -->|
|today|Date|TODAY()|<!-- -->|


## Flow Nodes Details

### Simply_Send_Ownership_Transfer_Notice

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Action Call|
|Label|Simply - Send Ownership Transfer Notice|
|Action Type|Email Alert|
|Action Name|Associated_Contact__c.Ownership_Transfer_Simply|
|Flow Transaction Model|CurrentTransaction|
|Name Segment|Associated_Contact__c.Ownership_Transfer_Simply|
| SObject Row Id (input)|aCon.Id|
|Connector|[Uncheck_OTS_Box](#uncheck_ots_box)|


### Ubiquity_Send_Ownership_Transfer_Notice

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Action Call|
|Label|Ubiquity - Send Ownership Transfer Notice|
|Action Type|Email Alert|
|Action Name|Associated_Contact__c.Ownership_Transfer_Ubiquity|
|Flow Transaction Model|CurrentTransaction|
|Name Segment|Associated_Contact__c.Ownership_Transfer_Ubiquity|
| SObject Row Id (input)|aCon.Id|
|Connector|[Uncheck_OTS_Box](#uncheck_ots_box)|


### Brand_Validation

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Decision|
|Label|Brand Validation|
|Default Connector Label|Default Outcome|


#### Rule Simply (Simply)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[Simply_Send_Ownership_Transfer_Notice](#simply_send_ownership_transfer_notice)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|$Record.Brand__c| Equal To|Simply Retirement|




#### Rule Ubiquity (Ubiquity)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[Ubiquity_Send_Ownership_Transfer_Notice](#ubiquity_send_ownership_transfer_notice)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|$Record.Brand__c| Equal To|Ubiquity Retirement + Savings|




### Client_Verification_0

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Decision|
|Label|Client Verification|
|Default Connector Label|Client Missing|


#### Rule Client_Found_0 (Client Found)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[Brand_Validation](#brand_validation)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|aCon.Id| Is Null|⬜|




### Get_AC

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Lookup|
|Object|Associated_Contact__c|
|Label|Get AC|
|Assign Null Values If No Records Found|✅|
|Output Reference|aCon|
|Queried Fields|- Id<br/>- Implementation_Owner_Title__c<br/>|
|Connector|[Client_Verification_0](#client_verification_0)|


#### Filters (logic: **and**)

|Filter Id|Field|Operator|Value|
|:-- |:-- |:--:|:--: |
|1|Implementation__c| Equal To|$Record.Id|
|2|Primary__c| Equal To|✅|
|3|Implementation_Status__c| Contains|In Progress|




### Uncheck_OTS_Box

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Update|
|Label|Uncheck OTS Box|
|Input Reference|$Record|


#### Input Assignments

|Field|Value|
|:-- |:--: |
|One_Time_Send__c|⬜|








___

_Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_