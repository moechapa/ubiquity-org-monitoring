# Case | Scheduled | Create Case for Data Source Doc Update

## Flow Diagram [(_View History_)](Case_Scheduled_Create_Case_for_Data_Source_Doc_Update-history.md)

```mermaid
%% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
%% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
%% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
%% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
%% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram

flowchart TB
START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Scheduled</b>"]):::startClass
click START "#general-information" "2854619197"

Create_Data_Source_Update_Case[("➕ <em></em><br/>Create Data Source Update Case")]:::recordCreates
click Create_Data_Source_Update_Case "#create_data_source_update_case" "1116129168"

Create_Data_Source_Update_Case --> END_Create_Data_Source_Update_Case
START -->  Create_Data_Source_Update_Case
END_Create_Data_Source_Update_Case(( END )):::endClass


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
|Process Type| Auto Launched Flow|
|Trigger Type| Scheduled|
|Label|Case | Scheduled | Create Case for Data Source Doc Update|
|Status|Obsolete|
|Description|Every monday, create a case for BI to update data source doc.|
|Environments|Default|
|Interview Label|Case | Scheduled | Create Case for Data Source Doc Update {!$Flow.CurrentDateTime}|
| Builder Type (PM)|LightningFlowBuilder|
| Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
| Origin Builder Type (PM)|LightningFlowBuilder|
|Connector|[Create_Data_Source_Update_Case](#create_data_source_update_case)|
|Next Node|[Create_Data_Source_Update_Case](#create_data_source_update_case)|


#### Schedules

|Frequency|Start Date|Start Time|
|:-- |:--:|:--: |
|Weekly|Jan 30, 2023|04:00|


## Constants

|Name|Data Type|Value|Description|
|:-- |:--:|:--:|:--  |
|DataSourceDoc|String|https://docs.google.com/spreadsheets/d/1JsoW19SktkkSq_jFbvUuKLx1s0t7a3LtDoh2vRaE9Ws/edit#gid=1291184349|<!-- -->|


## Flow Nodes Details

### Create_Data_Source_Update_Case

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Create|
|Object|Case|
|Label|Create Data Source Update Case|
|Store Output Automatically|✅|


#### Input Assignments

|Field|Value|
|:-- |:--: |
|AccountId|0013700000JH68lAAD|
|Case_Type__c|Single Case|
|Case_notes_new__c|DataSourceDoc|
|Department__c|Business Intelligence|
|EntitlementId|5501G000001ckB1QAI|
|Origin|Internal|
|OwnerId|00G37000000ztuWEAQ|
|Plan__c|a2o1G000000oQW5QAM|
|Priority|Low|
|Reason|Analytics|
|RecordTypeId|01237000000Ez81AAC|
|Request_Level__c|1 - Existing Process Management|
|Status|New|
|Subject|Update Data Source Doc|








___

_Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_