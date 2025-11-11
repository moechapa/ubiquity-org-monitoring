# Proposal | After Save | Send Update Alert

## Flow Diagram [(_View History_)](Proposal_After_Save_Send_Update_Alert-history.md)

```mermaid
%% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
%% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
%% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
%% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
%% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram

flowchart TB
START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
click START "#general-information" "3774608253"

Send_proposal_converted_alert("📧 <em></em><br/>Send proposal converted alert"):::actionCalls
click Send_proposal_converted_alert "#send_proposal_converted_alert" "805836047"

Send_proposal_updated_alert("📧 <em></em><br/>Send proposal updated alert"):::actionCalls
click Send_proposal_updated_alert "#send_proposal_updated_alert" "1642997234"

Send_purchase_alert("📧 <em></em><br/>Send purchase alert"):::actionCalls
click Send_purchase_alert "#send_purchase_alert" "1239052689"

Check_if_needs_alert{"🔀 <em></em><br/>Check if needs alert"}:::decisions
click Check_if_needs_alert "#check_if_needs_alert" "3511479713"

Send_proposal_converted_alert --> END_Send_proposal_converted_alert
Send_proposal_updated_alert --> END_Send_proposal_updated_alert
Send_purchase_alert --> END_Send_purchase_alert
Check_if_needs_alert --> |"Pricing Conversion"| Send_proposal_converted_alert
Check_if_needs_alert --> |"Fresh saveshare"| Send_proposal_updated_alert
Check_if_needs_alert --> |"Fresh submitted for purchase"| Send_purchase_alert
Check_if_needs_alert --> |"Default Outcome"| END_Check_if_needs_alert
START -->  Check_if_needs_alert
END_Send_proposal_converted_alert(( END )):::endClass
END_Send_proposal_updated_alert(( END )):::endClass
END_Send_purchase_alert(( END )):::endClass
END_Check_if_needs_alert(( END )):::endClass


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
|Object|Proposal__c|
|Process Type| Auto Launched Flow|
|Trigger Type| Record After Save|
|Record Trigger Type| Update|
|Label|Proposal | After Save | Send Update Alert|
|Status|Active|
|Description|Added specific email alert for when pricing proposals convert to full proposals<br/><br/>Pulled that alert from employer lead creation flow|
|Environments|Default|
|Interview Label|Proposal | After Save | Update Alert {!$Flow.CurrentDateTime}|
| Builder Type (PM)|LightningFlowBuilder|
| Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
| Origin Builder Type (PM)|LightningFlowBuilder|
|Connector|[Check_if_needs_alert](#check_if_needs_alert)|
|Next Node|[Check_if_needs_alert](#check_if_needs_alert)|


#### Filters (logic: **and**)

|Filter Id|Field|Operator|Value|
|:-- |:-- |:--:|:--: |
|1|Principal_Id__c| Is Null|<!-- -->|
|2|Status__c| Is Changed|✅|


## Flow Nodes Details

### Send_proposal_converted_alert

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Action Call|
|Label|Send proposal converted alert|
|Action Type|Email Alert|
|Action Name|Proposal__c.Pricing_Proposal_Converted|
|Flow Transaction Model|CurrentTransaction|
|Name Segment|Proposal__c.Pricing_Proposal_Converted|
|Offset|0|
| SObject Row Id (input)|$Record.Id|


### Send_proposal_updated_alert

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Action Call|
|Label|Send proposal updated alert|
|Action Type|Email Alert|
|Action Name|Proposal__c.Proposal_Updated|
|Flow Transaction Model|CurrentTransaction|
|Name Segment|Proposal__c.Proposal_Updated|
|Offset|0|
| SObject Row Id (input)|$Record.Id|


### Send_purchase_alert

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Action Call|
|Label|Send purchase alert|
|Action Type|Email Alert|
|Action Name|Proposal__c.Simply_Purchase_Attempt|
|Flow Transaction Model|CurrentTransaction|
|Name Segment|Proposal__c.Simply_Purchase_Attempt|
|Offset|0|
| SObject Row Id (input)|$Record.Id|


### Check_if_needs_alert

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Decision|
|Label|Check if needs alert|
|Description|Sends alert when a proposal is newly save/shared OR submitted for purchase.|
|Default Connector Label|Default Outcome|


#### Rule Pricing_Conversion (Pricing Conversion)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[Send_proposal_converted_alert](#send_proposal_converted_alert)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|$Record__Prior.Status__c| Equal To|Pricing|
|2|$Record.Status__c| Not Equal To|Pricing|
|3|$Record.Status__c| Not Equal To|Expired Save/Share|




#### Rule Fresh_saveshare (Fresh saveshare)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[Send_proposal_updated_alert](#send_proposal_updated_alert)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|$Record.Status__c| Equal To|Saved/Shared|




#### Rule Fresh_submitted_for_purchase (Fresh submitted for purchase)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[Send_purchase_alert](#send_purchase_alert)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|$Record.Status__c| Equal To|Submitted for Purchase|








___

_Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_