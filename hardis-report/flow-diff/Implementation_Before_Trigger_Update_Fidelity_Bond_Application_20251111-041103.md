# Implementation | Before Trigger | Update Fidelity Bond Application

## Flow Diagram [(_View History_)](Implementation_Before_Trigger_Update_Fidelity_Bond_Application-history.md)

```mermaid
%% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
%% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
%% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
%% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
%% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram

flowchart TB
START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record Before Save</b>"]):::startClass
click START "#general-information" "2552121739"

Fidelity_Bond_to_True[("🛠️ <em></em><br/>Fidelity Bond to True")]:::recordUpdates
click Fidelity_Bond_to_True "#fidelity_bond_to_true" "3574363005"

Fidelity_Bond_to_True --> END_Fidelity_Bond_to_True
START -->  Fidelity_Bond_to_True
END_Fidelity_Bond_to_True(( END )):::endClass


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
|Trigger Type| Record Before Save|
|Record Trigger Type| Create And Update|
|Label|Implementation | Before Trigger | Update Fidelity Bond Application|
|Status|Active|
|Does Require Record Changed To Meet Criteria|✅|
|Description|When an Imp's Business Unit = Simply Retirement, set Fidelity Bond Application to True.|
|Environments|Default|
|Interview Label|Implementation | Before Trigger | Update Fidelity Bond Application {!$Flow.CurrentDateTime}|
| Builder Type (PM)|LightningFlowBuilder|
| Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
| Origin Builder Type (PM)|LightningFlowBuilder|
|Connector|[Fidelity_Bond_to_True](#fidelity_bond_to_true)|
|Next Node|[Fidelity_Bond_to_True](#fidelity_bond_to_true)|


#### Filters (logic: **and**)

|Filter Id|Field|Operator|Value|
|:-- |:-- |:--:|:--: |
|1|Business_Unit__c| Equal To|Simply Retirement|


## Flow Nodes Details

### Fidelity_Bond_to_True

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Update|
|Label|Fidelity Bond to True|
|Input Reference|$Record|


#### Input Assignments

|Field|Value|
|:-- |:--: |
|Census_Self_Service__c|✅|
|Fidelity_Bond_Application__c|✅|








___

_Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_