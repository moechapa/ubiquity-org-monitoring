# Operations Metrics | Scheduled | Create Weekly Records

## Flow Diagram [(_View History_)](Operations_Metrics_Scheduled_Create_Weekly_Records-history.md)

```mermaid
%% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
%% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
%% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
%% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
%% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram

flowchart TB
START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Scheduled</b>"]):::startClass
click START "#general-information" "3980183477"

Create_Distro_Record[("➕ <em></em><br/>Create Distro Record")]:::recordCreates
click Create_Distro_Record "#create_distro_record" "3561068773"

Create_Fin_Ops_Record[("➕ <em></em><br/>Create Fin Ops Record")]:::recordCreates
click Create_Fin_Ops_Record "#create_fin_ops_record" "429656608"

Create_Payroll_Record[("➕ <em></em><br/>Create Payroll Record")]:::recordCreates
click Create_Payroll_Record "#create_payroll_record" "1189727582"

Create_Distro_Record --> Create_Fin_Ops_Record
Create_Fin_Ops_Record --> Create_Payroll_Record
Create_Payroll_Record --> END_Create_Payroll_Record
START -->  Create_Distro_Record
END_Create_Payroll_Record(( END )):::endClass


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
|Label|Operations Metrics | Scheduled | Create Weekly Records|
|Status|Active|
|Environments|Default|
|Interview Label|Operations Metrics | Scheduled | Create Weekly Records {!$Flow.CurrentDateTime}|
| Builder Type (PM)|LightningFlowBuilder|
| Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
| Origin Builder Type (PM)|LightningFlowBuilder|
|Connector|[Create_Distro_Record](#create_distro_record)|
|Next Node|[Create_Distro_Record](#create_distro_record)|


#### Schedules

|Frequency|Start Date|Start Time|
|:-- |:--:|:--: |
|Weekly|Sep 3, 2023|04:00|


## Formulas

|Name|Data Type|Expression|Description|
|:-- |:--:|:-- |:--  |
|weekEnd|Date|TODAY()|<!-- -->|
|weekStart|Date|TODAY() - 7|<!-- -->|


## Flow Nodes Details

### Create_Distro_Record

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Create|
|Object|Operations_Metrics__c|
|Label|Create Distro Record|
|Store Output Automatically|✅|
|Connector|[Create_Fin_Ops_Record](#create_fin_ops_record)|


#### Input Assignments

|Field|Value|
|:-- |:--: |
|OwnerId|005Ho00000AnvFJ|
|Type__c|Distributions|
|Week_End__c|weekEnd|
|Week_Start__c|weekStart|




### Create_Fin_Ops_Record

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Create|
|Object|Operations_Metrics__c|
|Label|Create Fin Ops Record|
|Store Output Automatically|✅|
|Connector|[Create_Payroll_Record](#create_payroll_record)|


#### Input Assignments

|Field|Value|
|:-- |:--: |
|OwnerId|005Ho00000AnvFJ|
|Type__c|Fin Ops|
|Week_End__c|weekEnd|
|Week_Start__c|weekStart|




### Create_Payroll_Record

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Create|
|Object|Operations_Metrics__c|
|Label|Create Payroll Record|
|Store Output Automatically|✅|


#### Input Assignments

|Field|Value|
|:-- |:--: |
|OwnerId|005Ho00000AnvFJ|
|Type__c|Payroll|
|Week_End__c|weekEnd|
|Week_Start__c|weekStart|








___

_Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_