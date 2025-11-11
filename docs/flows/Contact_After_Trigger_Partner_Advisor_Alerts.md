# Contact | After Trigger | Partner Advisor Alerts

## Flow Diagram [(_View History_)](Contact_After_Trigger_Partner_Advisor_Alerts-history.md)

```mermaid
%% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
%% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
%% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
%% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
%% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram

flowchart TB
START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
click START "#general-information" "1476606852"

New_Sallus_Advisor_Alert("📧 <em></em><br/>New Sallus Advisor Alert"):::actionCalls
click New_Sallus_Advisor_Alert "#new_sallus_advisor_alert" "2775451086"

New_Simply_Advisor_Alert("📧 <em></em><br/>New Simply Advisor Alert"):::actionCalls
click New_Simply_Advisor_Alert "#new_simply_advisor_alert" "4179918697"

Add_1_to_Simply_Count[\"🟰 <em></em><br/>Add 1 to Simply Count"/]:::assignments
click Add_1_to_Simply_Count "#add_1_to_simply_count" "531803105"

New_Proposal_Referred{"🔀 <em></em><br/>New Proposal Referred?"}:::decisions
click New_Proposal_Referred "#new_proposal_referred" "1061561860"

New_Sallus_Contact{"🔀 <em></em><br/>New Sallus Contact?"}:::decisions
click New_Sallus_Contact "#new_sallus_contact" "362569831"

New_Simply_Contact{"🔀 <em></em><br/>New Simply Contact?"}:::decisions
click New_Simply_Contact "#new_simply_contact" "4209024256"

Plan_ID_Exists{"🔀 <em></em><br/>Plan ID Exists?"}:::decisions
click Plan_ID_Exists "#plan_id_exists" "1917450027"

Sallus_or_Simply{"🔀 <em></em><br/>Sallus or Simply?"}:::decisions
click Sallus_or_Simply "#sallus_or_simply" "1110545712"

Set_Simply_Count_0[("🛠️ <em></em><br/>Set Simply Count 0")]:::recordUpdates
click Set_Simply_Count_0 "#set_simply_count_0" "2416725514"

Set_Simply_Count_1[("🛠️ <em></em><br/>Set Simply Count 1")]:::recordUpdates
click Set_Simply_Count_1 "#set_simply_count_1" "292114986"

Update_Simply_Count[("🛠️ <em></em><br/>Update Simply Count")]:::recordUpdates
click Update_Simply_Count "#update_simply_count" "1312989155"

New_Sallus_Advisor_Alert --> END_New_Sallus_Advisor_Alert
New_Simply_Advisor_Alert --> Plan_ID_Exists
Add_1_to_Simply_Count --> Update_Simply_Count
New_Proposal_Referred --> |"New Simply Prop"| Add_1_to_Simply_Count
New_Proposal_Referred --> |"No New Proposal"| END_New_Proposal_Referred
New_Sallus_Contact --> |"Sallus Contact Created"| New_Sallus_Advisor_Alert
New_Sallus_Contact --> |"Existing Contact"| END_New_Sallus_Contact
New_Simply_Contact --> |"Simply Contact Created"| New_Simply_Advisor_Alert
New_Simply_Contact --> |"Existing Contact"| New_Proposal_Referred
Plan_ID_Exists --> |"ID Found"| Set_Simply_Count_1
Plan_ID_Exists --> |"ID Null"| Set_Simply_Count_0
Sallus_or_Simply --> |"Sallus"| New_Sallus_Contact
Sallus_or_Simply --> |"Simply"| New_Simply_Contact
Sallus_or_Simply --> |"Default Outcome"| END_Sallus_or_Simply
Set_Simply_Count_0 --> END_Set_Simply_Count_0
Set_Simply_Count_1 --> END_Set_Simply_Count_1
Update_Simply_Count --> END_Update_Simply_Count
START -->  Sallus_or_Simply
END_New_Sallus_Advisor_Alert(( END )):::endClass
END_New_Proposal_Referred(( END )):::endClass
END_New_Sallus_Contact(( END )):::endClass
END_Sallus_or_Simply(( END )):::endClass
END_Set_Simply_Count_0(( END )):::endClass
END_Set_Simply_Count_1(( END )):::endClass
END_Update_Simply_Count(( END )):::endClass


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
|Object|Contact|
|Process Type| Auto Launched Flow|
|Trigger Type| Record After Save|
|Record Trigger Type| Create And Update|
|Label|Contact | After Trigger | Partner Advisor Alerts|
|Status|⚠️ Draft|
|Environments|Default|
|Interview Label|Contact | After Trigger | Partner Advisor Alerts {!$Flow.CurrentDateTime}|
| Builder Type (PM)|LightningFlowBuilder|
| Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
| Origin Builder Type (PM)|LightningFlowBuilder|
|Connector|[Sallus_or_Simply](#sallus_or_simply)|
|Next Node|[Sallus_or_Simply](#sallus_or_simply)|


#### Filters (logic: **1 AND 2 AND (3 OR 4)**)

|Filter Id|Field|Operator|Value|
|:-- |:-- |:--:|:--: |
|1|RecordTypeId| Equal To|0121G000000bptXQAQ|
|2|Role__c| Equal To|Advisor|
|3|LeadSource| Equal To|Sallus|
|4|LeadSource| Equal To|Simply Retirement|


## Formulas

|Name|Data Type|Expression|Description|
|:-- |:--:|:-- |:--  |
|Isnewcontact|Boolean|ISNEW()|<!-- -->|


## Flow Nodes Details

### New_Sallus_Advisor_Alert

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Action Call|
|Label|New Sallus Advisor Alert|
|Action Type|Email Alert|
|Action Name|Contact.Sallus_Advisor_Assigned|
|Flow Transaction Model|CurrentTransaction|
|Name Segment|Contact.Sallus_Advisor_Assigned|
| SObject Row Id (input)|$Record.Id|


### New_Simply_Advisor_Alert

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Action Call|
|Label|New Simply Advisor Alert|
|Action Type|Email Alert|
|Action Name|Contact.Simply_Advisor_Assigned|
|Flow Transaction Model|CurrentTransaction|
|Name Segment|Contact.Simply_Advisor_Assigned|
| SObject Row Id (input)|$Record.Id|
|Connector|[Plan_ID_Exists](#plan_id_exists)|


### Add_1_to_Simply_Count

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Assignment|
|Label|Add 1 to Simply Count|
|Connector|[Update_Simply_Count](#update_simply_count)|


#### Assignments

|Assign To Reference|Operator|Value|
|:-- |:--:|:--: |
|$Record.Simply_Proposal_Count__c| Add|1|
|$Record.Last_Simply_Proposal_Run__c| Assign|$Flow.CurrentDate|




### New_Proposal_Referred

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Decision|
|Label|New Proposal Referred?|
|Default Connector Label|No New Proposal|


#### Rule New_Simply_Prop (New Simply Prop)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[Add_1_to_Simply_Count](#add_1_to_simply_count)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|$Record.Plan_ID__c| Is Changed|✅|
|2|$Record.Plan_ID__c| Is Null|⬜|
|3|$Record.LastModifiedDate| Not Equal To|$Record.CreatedDate|




### New_Sallus_Contact

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Decision|
|Label|New Sallus Contact?|
|Default Connector Label|Existing Contact|


#### Rule Sallus_Contact_Created (Sallus Contact Created)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[New_Sallus_Advisor_Alert](#new_sallus_advisor_alert)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|Isnewcontact| Equal To|✅|




### New_Simply_Contact

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Decision|
|Label|New Simply Contact?|
|Default Connector|[New_Proposal_Referred](#new_proposal_referred)|
|Default Connector Label|Existing Contact|


#### Rule Simply_Contact_Created (Simply Contact Created)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[New_Simply_Advisor_Alert](#new_simply_advisor_alert)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|Isnewcontact| Equal To|✅|




### Plan_ID_Exists

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Decision|
|Label|Plan ID Exists?|
|Default Connector|[Set_Simply_Count_0](#set_simply_count_0)|
|Default Connector Label|ID Null|


#### Rule ID_Found (ID Found)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[Set_Simply_Count_1](#set_simply_count_1)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|$Record.Plan_ID__c| Is Null|⬜|




### Sallus_or_Simply

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Decision|
|Label|Sallus or Simply?|
|Default Connector Label|Default Outcome|


#### Rule Sallus (Sallus)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[New_Sallus_Contact](#new_sallus_contact)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|$Record.LeadSource| Equal To|Sallus|
|2|$Record.Business_Unit__c| Not Equal To|Simply Retirement|




#### Rule Simply (Simply)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[New_Simply_Contact](#new_simply_contact)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|$Record.LeadSource| Equal To|Simply Retirement|
|2|$Record.Business_Unit__c| Equal To|Simply Retirement|




### Set_Simply_Count_0

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Update|
|Label|Set Simply Count 0|
|Input Reference|$Record|


#### Input Assignments

|Field|Value|
|:-- |:--: |
|Simply_Proposal_Count__c|numberValue: 0<br/>|




### Set_Simply_Count_1

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Update|
|Label|Set Simply Count 1|
|Input Reference|$Record|


#### Input Assignments

|Field|Value|
|:-- |:--: |
|Last_Simply_Proposal_Run__c|$Flow.CurrentDate|
|Simply_Proposal_Count__c|1|




### Update_Simply_Count

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Update|
|Label|Update Simply Count|
|Input Reference|$Record|






___

_Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_