# Vendor Review | Before Trigger | Update Name

## Flow Diagram [(_View History_)](Vendor_Review_Before_Trigger_Update_Name-history.md)

```mermaid
%% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
%% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
%% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
%% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
%% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram

flowchart TB
START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record Before Save</b>"]):::startClass
click START "#general-information" "2354273485"

updateName[("🛠️ <em></em><br/>updateName")]:::recordUpdates
click updateName "#updatename" "1974513030"

updateName --> END_updateName
START -->  updateName
END_updateName(( END )):::endClass


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
|Object|Vendor_Review__c|
|Process Type| Auto Launched Flow|
|Trigger Type| Record Before Save|
|Record Trigger Type| Create And Update|
|Label|Vendor Review | Before Trigger | Update Name|
|Status|Active|
|Description|Updates the name of the VR record to "Account Name - Vendor Tier - Year of CreatedDate"|
|Environments|Default|
|Interview Label|Vendor Review | Before Trigger | Update Name {!$Flow.CurrentDateTime}|
| Builder Type (PM)|LightningFlowBuilder|
| Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
| Origin Builder Type (PM)|LightningFlowBuilder|
|Connector|[updateName](#updatename)|
|Next Node|[updateName](#updatename)|


## Formulas

|Name|Data Type|Expression|Description|
|:-- |:--:|:-- |:--  |
|vrName|String|IF(NOT(ISBLANK(TEXT({!$Record.Vendor__r.Vendor_Tier__c}))), {!$Record.Vendor__r.Name} + " - " + TEXT({!$Record.Vendor__r.Vendor_Tier__c}) + " - " + TEXT(YEAR(DATEVALUE({!$Record.CreatedDate}))), {!$Record.Vendor__r.Name} + " - " + TEXT(YEAR(DATEVALUE({!$Record.CreatedDate}))))|<!-- -->|


## Flow Nodes Details

### updateName

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Update|
|Label|[updateName](#updatename)|
|Input Reference|$Record|


#### Input Assignments

|Field|Value|
|:-- |:--: |
|Name|vrName|








___

_Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_