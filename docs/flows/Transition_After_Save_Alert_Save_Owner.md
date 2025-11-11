# Transition | After Save | Alert Save Owner

## Flow Diagram [(_View History_)](Transition_After_Save_Alert_Save_Owner-history.md)

```mermaid
%% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
%% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
%% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
%% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
%% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram

flowchart TB
START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
click START "#general-information" "3994596136"

Alert_Save_Owner("📧 <em></em><br/>Alert Save Owner"):::actionCalls
click Alert_Save_Owner "#alert_save_owner" "4220546113"

Alert_Save_Owner --> END_Alert_Save_Owner
START -->  Alert_Save_Owner
END_Alert_Save_Owner(( END )):::endClass


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
|Label|Transition | After Save | Alert Save Owner|
|Status|Active|
|Filter Formula|NOT(ISBLANK({!$Record.Save_Owner__c})) &&<br/>(ISNEW() || ISCHANGED({!$Record.Save_Owner__c})) &&<br/>{!$Record.Save_Owner__c} != {!$User.Id}|
|Description|Sends email alert to save owner when newly assigned.|
|Environments|Default|
|Interview Label|Transitions {!$Flow.CurrentDateTime}|
| Builder Type (PM)|LightningFlowBuilder|
| Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
| Origin Builder Type (PM)|LightningFlowBuilder|
|Connector|[Alert_Save_Owner](#alert_save_owner)|
|Next Node|[Alert_Save_Owner](#alert_save_owner)|


## Flow Nodes Details

### Alert_Save_Owner

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Action Call|
|Label|Alert Save Owner|
|Action Type|Email Alert|
|Action Name|Transition__c.Deconversion_Notification_alert_to_Sales|
|Flow Transaction Model|CurrentTransaction|
|Name Segment|Transition__c.Deconversion_Notification_alert_to_Sales|
|Offset|0|
| SObject Row Id (input)|$Record.Id|






___

_Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_