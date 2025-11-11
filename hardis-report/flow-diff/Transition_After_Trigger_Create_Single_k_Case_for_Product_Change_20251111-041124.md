# Transition | After Trigger | Create Single(k) Case for Product Change

## Flow Diagram [(_View History_)](Transition_After_Trigger_Create_Single_k_Case_for_Product_Change-history.md)

```mermaid
%% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
%% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
%% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
%% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
%% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram

flowchart TB
START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
click START "#general-information" "3649488610"

Create_Single_k_Case[("➕ <em></em><br/>Create Single(k) Case")]:::recordCreates
click Create_Single_k_Case "#create_single_k_case" "2983477109"

Create_Single_k_Case --> END_Create_Single_k_Case
START -->  Create_Single_k_Case
END_Create_Single_k_Case(( END )):::endClass


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
|Label|Transition | After Trigger | Create Single(k) Case for Product Change|
|Status|Active|
|Does Require Record Changed To Meet Criteria|✅|
|Environments|Default|
|Interview Label|Transition | After Trigger | Create Single(k) Case for Product Change {!$Flow.CurrentDateTime}|
| Builder Type (PM)|LightningFlowBuilder|
| Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
| Origin Builder Type (PM)|LightningFlowBuilder|
|Connector|[Create_Single_k_Case](#create_single_k_case)|
|Next Node|[Create_Single_k_Case](#create_single_k_case)|


#### Filters (logic: **and**)

|Filter Id|Field|Operator|Value|
|:-- |:-- |:--:|:--: |
|1|Transition_Reason__c| Equal To|Switched to Another Ubiquity Plan|


## Text Templates

|Name|Text|Description|
|:-- |:-- |:--  |
|caseDesc|<p><span style="font-size: 14.6667px; font-family: Calibri, sans-serif; color: rgb(33, 33, 33);">Single(k) Team, Please ensure you are working with this plan on the Single(k) account set up. Please confirm with Transitions Department when the new account can accept funds and provide the wire instructions.</span></p>|<!-- -->|
|caseSubject|<p><span style="font-size: 14.6667px; font-family: Calibri, sans-serif; color: rgb(33, 33, 33);">Single(k) downgrade notification received {</span><strong>!$Record.Plan__c}</strong> </p>|<!-- -->|


## Flow Nodes Details

### Create_Single_k_Case

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Create|
|Object|Case|
|Label|Create Single(k) Case|
|Store Output Automatically|✅|


#### Input Assignments

|Field|Value|
|:-- |:--: |
|AccountId|$Record.Account__c|
|Department__c|Single(k)|
|Description|caseDesc|
|Origin|Internal|
|OwnerId|00G00000006sDWf|
|Plan__c|$Record.Plan__c|
|Subject|caseSubject|








___

_Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_