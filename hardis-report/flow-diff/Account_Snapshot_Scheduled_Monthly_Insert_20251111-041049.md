# Account Snapshot | Scheduled | Monthly Insert

## Flow Diagram [(_View History_)](Account_Snapshot_Scheduled_Monthly_Insert-history.md)

```mermaid
%% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
%% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
%% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
%% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
%% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram

flowchart TB
START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Scheduled</b>"]):::startClass
click START "#general-information" "149026764"

First_of_month_check{"🔀 <em></em><br/>First of month check"}:::decisions
click First_of_month_check "#first_of_month_check" "2864295572"

Create_Snapshot[("➕ <em></em><br/>Create Snapshot")]:::recordCreates
click Create_Snapshot "#create_snapshot" "809283840"

First_of_month_check --> |"Is the first"| Create_Snapshot
First_of_month_check --> |"Default Outcome"| END_First_of_month_check
Create_Snapshot --> END_Create_Snapshot
START -->  First_of_month_check
END_First_of_month_check(( END )):::endClass
END_Create_Snapshot(( END )):::endClass


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
|Object|Account|
|Process Type| Auto Launched Flow|
|Trigger Type| Scheduled|
|Label|Account Snapshot | Scheduled | Monthly Insert|
|Status|Active|
|Description|Monthly creation of account snapshot records for all non inactive clients|
|Environments|Default|
|Interview Label|Account Snapshot | Scheduled | Monthly Insert {!$Flow.CurrentDateTime}|
| Builder Type (PM)|LightningFlowBuilder|
| Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
| Origin Builder Type (PM)|LightningFlowBuilder|
|Connector|[First_of_month_check](#first_of_month_check)|
|Next Node|[First_of_month_check](#first_of_month_check)|


#### Schedules

|Frequency|Start Date|Start Time|
|:-- |:--:|:--: |
|Daily|Jun 24, 2025|01:00|


#### Filters (logic: **and**)

|Filter Id|Field|Operator|Value|
|:-- |:-- |:--:|:--: |
|1|Plan_Status__c| Is Null|<!-- -->|
|2|Plan_Status__c| Not Equal To|Inactive|


## Formulas

|Name|Data Type|Expression|Description|
|:-- |:--:|:-- |:--  |
|dayOfMonth|Number|DAY({!$Flow.CurrentDate})|<!-- -->|
|hasCSAT|Boolean|NOT(ISBLANK({!$Record.CSAT_Average__c}))|<!-- -->|
|hasNPS|Boolean|NOT(ISBLANK({!$Record.NPS_Average__c}))|<!-- -->|
|hasReview|Boolean|NOT(ISBLANK({!$Record.Review_Average__c}))|<!-- -->|


## Flow Nodes Details

### First_of_month_check

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Decision|
|Label|First of month check|
|Default Connector Label|Default Outcome|


#### Rule Is_the_first (Is the first)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[Create_Snapshot](#create_snapshot)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|dayOfMonth| Equal To|1|




### Create_Snapshot

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Create|
|Object|Account_Snapshot__c|
|Label|Create Snapshot|
|Store Output Automatically|✅|


#### Input Assignments

|Field|Value|
|:-- |:--: |
|Account__c|$Record.Id|
|CSAT_Average__c|$Record.CSAT_Average__c|
|Client_Sentiment__c|$Record.Client_Sentiment__c|
|Has_CSAT__c|hasCSAT|
|Has_NPS__c|hasNPS|
|Has_Review__c|hasReview|
|NPS_Average__c|$Record.NPS_Average__c|
|Review_Average__c|$Record.Review_Average__c|








___

_Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_