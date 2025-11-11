# Case | Autolaunched | Omni Routing

## Flow Diagram [(_View History_)](Case_Autolaunched_Omni_Routing-history.md)

```mermaid
%% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
%% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
%% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
%% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
%% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram

flowchart TB
START(["START"]):::startClass
click START "#general-information" "2137678886"

Add_Compliance_Skill("⚡ <em></em><br/>Add Compliance Skill"):::actionCalls
click Add_Compliance_Skill "#add_compliance_skill" "2476039171"

Route_to_Compliance("⚡ <em></em><br/>Route to Compliance"):::actionCalls
click Route_to_Compliance "#route_to_compliance" "1334203230"

Add_Compliance_Skill --> Route_to_Compliance
Route_to_Compliance --> END_Route_to_Compliance
START -->  Add_Compliance_Skill
END_Route_to_Compliance(( END )):::endClass


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
|Label|Case | Autolaunched | Omni Routing|
|Status|Active|
|Environments|Default|
|Interview Label|Case | Autolaunched | Omni Routing {!$Flow.CurrentDateTime}|
| Builder Type (PM)|LightningFlowBuilder|
| Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
| Origin Builder Type (PM)|LightningFlowBuilder|
|Connector|[Add_Compliance_Skill](#add_compliance_skill)|
|Next Node|[Add_Compliance_Skill](#add_compliance_skill)|


## Variables

|Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
|:-- |:--:|:--:|:--:|:--:|:--:|:--  |
|input_record|SObject|⬜|✅|⬜|Case|<!-- -->|
|recordId|String|⬜|✅|⬜|<!-- -->|<!-- -->|
|skillList|SObject|✅|⬜|⬜|SkillRequirement|<!-- -->|


## Flow Nodes Details

### Add_Compliance_Skill

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Action Call|
|Label|Add Compliance Skill|
|Action Type|Add Skill Requirements|
|Action Name|addSkillRequirements|
|Flow Transaction Model|CurrentTransaction|
|Name Segment|addSkillRequirements|
|Offset|0|
|Output Parameters|assignToReference: skillList<br/>name: skillRequirements<br/>|
|Version String|2.0.0|
|Skill Requirement (input)|[{"id":"92411a55","skillLabel":"Compliance","skillDevName":"Compliance","skillLevel":"0","skillPriority":"0","isAdditionalSkill":false}]|
|Skill Requirements Resource Item (input)|skillList|
|Skill1 Id (input)|setupReference: Compliance<br/>setupReferenceType: Skill<br/>|
|Connector|[Route_to_Compliance](#route_to_compliance)|


### Route_to_Compliance

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Action Call|
|Label|Route to Compliance|
|Action Type|Route Work|
|Action Name|routeWork|
|Flow Transaction Model|CurrentTransaction|
|Name Segment|routeWork|
|Offset|0|
|Version String|2.0.0|
|Record Id (input)|recordId|
|Service Channel Label (input)|Case|
|Service Channel Dev Name (input)|Case|
|Routing Type (input)|SkillsBased|
|Routing Config Label (input)|Compliance Case|
|Agent Label (input)|<!-- -->|
|Queue Label (input)|<!-- -->|
|Skill Option (input)|Both|
|Skill Requirements Resource Item (input)|skillList|
|Bot Label (input)|<!-- -->|
|External Conversation Bot Label (input)|<!-- -->|
|Copilot Label (input)|<!-- -->|
|Agentforce Employee Agent Label (input)|<!-- -->|
|Service Channel Id (input)|setupReference: Case<br/>setupReferenceType: ServiceChannel<br/>|
|Routing Config Id (input)|setupReference: Compliance_Case<br/>setupReferenceType: QueueRoutingConfig<br/>|
|Bot Id (input)|<!-- -->|
|Copilot Id (input)|<!-- -->|
|Agentforce Employee Agent Id (input)|<!-- -->|
|External Conversation Bot Id (input)|<!-- -->|
|Queue Id (input)|<!-- -->|
|Agent Id (input)|<!-- -->|






___

_Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

## Dependencies

- [Case_After_Save_Invoke_Omni_Routing](Case_After_Save_Invoke_Omni_Routing.md)
