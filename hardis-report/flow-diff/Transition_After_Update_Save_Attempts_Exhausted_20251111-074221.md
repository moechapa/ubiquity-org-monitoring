# Transition | After Update | Save Attempts Exhausted

## Flow Diagram [(_View History_)](Transition_After_Update_Save_Attempts_Exhausted-history.md)

```mermaid
%% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
%% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
%% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
%% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
%% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram

flowchart TB
START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
click START "#general-information" "3700526034"

Transition_Notification_Date_Alert("📧 <em></em><br/>Transition__c.Transition_Notification_Date_Alert"):::actionCalls
click Transition_Notification_Date_Alert "#transition_notification_date_alert" "2787334996"

Case_to_Transitions[("➕ <em></em><br/>Case to Transitions")]:::recordCreates
click Case_to_Transitions "#case_to_transitions" "3061218796"

Update_Owner[("🛠️ <em></em><br/>Update Owner")]:::recordUpdates
click Update_Owner "#update_owner" "1286255855"

Transition_Notification_Date_Alert --> END_Transition_Notification_Date_Alert
Case_to_Transitions --> Transition_Notification_Date_Alert
Update_Owner --> Case_to_Transitions
START -->  Update_Owner
END_Transition_Notification_Date_Alert(( END )):::endClass


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
|Object|Transition__c|
|Process Type| Auto Launched Flow|
|Trigger Type| Record After Save|
|Record Trigger Type| Create And Update|
|Label|Transition | After Update | Save Attempts Exhausted|
|Status|Obsolete|
|Does Require Record Changed To Meet Criteria|✅|
|Environments|Default|
|Interview Label|Transition | After Update | Save Attempts Exhausted {!$Flow.CurrentDateTime}|
|Migrated From Workflow Rule Name|Transition - Email - Notification Date Entered|
| Builder Type (PM)|LightningFlowBuilder|
| Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
|Connector|[Update_Owner](#update_owner)|
|Next Node|[Update_Owner](#update_owner)|


#### Filters (logic: **and**)

|Filter Id|Field|Operator|Value|
|:-- |:-- |:--:|:--: |
|1|Save_Attempts_Exhausted__c| Is Null|<!-- -->|


## Flow Nodes Details

### Transition_Notification_Date_Alert

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Action Call|
|Label|Transition__c.Transition_Notification_Date_Alert|
|Action Type|Email Alert|
|Action Name|Transition__c.Transition_Notification_Date_Alert|
|Flow Transaction Model|CurrentTransaction|
|Name Segment|Transition__c.Transition_Notification_Date_Alert|
|Offset|0|
| SObject Row Id (input)|$Record.Id|


### Case_to_Transitions

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Create|
|Object|Case|
|Label|Case to Transitions|
|Store Output Automatically|✅|
|Connector|[Transition_Notification_Date_Alert](#transition_notification_date_alert)|


#### Input Assignments

|Field|Value|
|:-- |:--: |
|AccountId|$Record.Account__c|
|Department__c|Transitions|
|Description|Save attempts for this plan have been exhausted. Please begin work transitioning plan. Thank you.|
|Origin|Internal|
|OwnerId|00500000006xUkf|
|Plan__c|$Record.Plan__c|
|Priority|Medium|
|Status|New|
|Subject|caseSubj|
|Transition__c|$Record.Id|




### Update_Owner

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Update|
|Label|Update Owner|
|Input Reference|$Record|
|Connector|[Case_to_Transitions](#case_to_transitions)|


#### Input Assignments

|Field|Value|
|:-- |:--: |
|OwnerId|00500000006xUkf|








___

_Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_