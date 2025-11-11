# Messaging | Route | Check Agent Availability

## Flow Diagram [(_View History_)](Messaging_Route_Check_Agent_Availability-history.md)

```mermaid
%% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
%% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
%% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
%% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
%% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram

flowchart TB
START(["START"]):::startClass
click START "#general-information" "190249000"

Check_Agent_Availability("⚡ <em></em><br/>Check Agent Availability"):::actionCalls
click Check_Agent_Availability "#check_agent_availability" "2249427124"

Route("⚡ <em></em><br/>Route"):::actionCalls
click Route "#route" "3202529761"

Check_Agent_Availability --> Route
Route --> END_Route
START -->  Check_Agent_Availability
END_Route(( END )):::endClass


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
|Process Type| Routing Flow|
|Label|Messaging | Route | Check Agent Availability|
|Status|⚠️ Draft|
|Environments|Default|
|Interview Label|Messaging | Route | Check Agent Availability {!$Flow.CurrentDateTime}|
| Builder Type (PM)|LightningFlowBuilder|
| Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
| Origin Builder Type (PM)|LightningFlowBuilder|
|Connector|[Check_Agent_Availability](#check_agent_availability)|
|Next Node|[Check_Agent_Availability](#check_agent_availability)|


## Variables

|Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
|:-- |:--:|:--:|:--:|:--:|:--:|:--  |
|availableAgents|Number|⬜|⬜|✅|<!-- -->|<!-- -->|
|recordId|String|⬜|✅|⬜|<!-- -->|<!-- -->|
|waitTime|Number|⬜|⬜|✅|<!-- -->|<!-- -->|


## Flow Nodes Details

### Check_Agent_Availability

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Action Call|
|Label|Check Agent Availability|
|Action Type|Check Availability For Routing|
|Action Name|checkAvailabilityForRouting|
|Flow Transaction Model|CurrentTransaction|
|Name Segment|checkAvailabilityForRouting|
|Output Parameters|- assignToReference: availableAgents<br/>&nbsp;&nbsp;name: onlineAgentsCount<br/>- assignToReference: waitTime<br/>&nbsp;&nbsp;name: estimatedWaitTime<br/>|
|Service Channel Id (input)|0N91G000000blNbSAI|
|Routing Type (input)|QueueBased|
|Service Channel Dev Name (input)|sfdc_liveagent|
|Service Channel Label (input)|Chat|
|Queue Id (input)|00GHo000001jiNBMAY|
|Queue Label (input)|Omni Login Help|
|Skill Option (input)|<!-- -->|
|Skill Requirements Resource Item (input)|<!-- -->|
|Agent Id (input)|<!-- -->|
|Agent Label (input)|<!-- -->|
|Selected Outputs (input)|GET_ALL|
|Connector|[Route](#route)|


### Route

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Action Call|
|Label|[Route](#route)|
|Action Type|Route Work|
|Action Name|routeWork|
|Flow Transaction Model|CurrentTransaction|
|Name Segment|routeWork|
|Record Id (input)|recordId|
|Service Channel Id (input)|0N9Ho000000DFI0KAO|
|Service Channel Label (input)|Messaging|
|Service Channel Dev Name (input)|sfdc_livemessage|
|Routing Type (input)|QueueBased|
|Routing Config Id (input)|<!-- -->|
|Routing Config Label (input)|<!-- -->|
|Queue Id (input)|00GHo000001jiNBMAY|
|Agent Id (input)|<!-- -->|
|Agent Label (input)|<!-- -->|
|Queue Label (input)|Omni Login Help|
|Skill Option (input)|<!-- -->|
|Skill Requirements Resource Item (input)|<!-- -->|
|Bot Id (input)|<!-- -->|
|Bot Label (input)|<!-- -->|






___

_Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_