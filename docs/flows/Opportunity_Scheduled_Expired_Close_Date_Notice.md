# Opportunity | Scheduled | Expired Close Date Notice

## Flow Diagram [(_View History_)](Opportunity_Scheduled_Expired_Close_Date_Notice-history.md)

```mermaid
%% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
%% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
%% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
%% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
%% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram

flowchart TB
START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Scheduled</b>"]):::startClass
click START "#general-information" "2615214601"

Close_Date_Expired{"🔀 <em></em><br/>Close Date Expired?"}:::decisions
click Close_Date_Expired "#close_date_expired" "211160588"

Close_Date_Expired --> |"No"| END_Close_Date_Expired
START -->  Close_Date_Expired
END_Close_Date_Expired(( END )):::endClass


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
|Object|Opportunity|
|Process Type| Auto Launched Flow|
|Trigger Type| Scheduled|
|Label|Opportunity | Scheduled | Expired Close Date Notice|
|Status|⚠️ Draft|
|Description|Notify Opp Owner if close date is expired.|
|Interview Label|Opportunity | Scheduled | Expired Close Date Notice {!$Flow.CurrentDateTime}|
| Builder Type (PM)|LightningFlowBuilder|
| Canvas Mode (PM)|FREE_FORM_CANVAS|
| Origin Builder Type (PM)|LightningFlowBuilder|
|Connector|[Close_Date_Expired](#close_date_expired)|
|Next Node|[Close_Date_Expired](#close_date_expired)|


#### Schedules

|Frequency|Start Date|Start Time|
|:-- |:--:|:--: |
|Daily|Dec 16, 2020|06:00|


#### Filters (logic: **and**)

|Filter Id|Field|Operator|Value|
|:-- |:-- |:--:|:--: |
|1|IsClosed| Equal To|⬜|


## Formulas

|Name|Data Type|Expression|Description|
|:-- |:--:|:-- |:--  |
|today|Date|TODAY()|<!-- -->|


## Flow Nodes Details

### Close_Date_Expired

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Decision|
|Label|Close Date Expired?|
|Default Connector Label|No|


#### Rule Yes (Yes)

|<!-- -->|<!-- -->|
|:---|:---|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|$Record.CloseDate| Less Than|today|








___

_Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_