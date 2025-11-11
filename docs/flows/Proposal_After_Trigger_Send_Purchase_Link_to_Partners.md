# Proposal | After Trigger | Send Purchase Link to Partners

## Flow Diagram [(_View History_)](Proposal_After_Trigger_Send_Purchase_Link_to_Partners-history.md)

```mermaid
%% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
%% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
%% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
%% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
%% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram

flowchart TB
START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
click START "#general-information" "1764844221"

Email_Purchase_Link_to_Referrer("📧 <em></em><br/>Email Purchase Link to Referrer"):::actionCalls
click Email_Purchase_Link_to_Referrer "#email_purchase_link_to_referrer" "1414551412"

Contact_Found{"🔀 <em></em><br/>Contact Found ?"}:::decisions
click Contact_Found "#contact_found" "1589113318"

Referrel_Email_Present{"🔀 <em></em><br/>Referrel Email Present ?"}:::decisions
click Referrel_Email_Present "#referrel_email_present" "2843047857"

Which_Partner{"🔀 <em></em><br/>Which Partner ?"}:::decisions
click Which_Partner "#which_partner" "1248332145"

Get_Advisor_Contact[("🔍 <em></em><br/>Get Advisor Contact")]:::recordLookups
click Get_Advisor_Contact "#get_advisor_contact" "3467363475"

Get_Email_Template[("🔍 <em></em><br/>Get Email Template")]:::recordLookups
click Get_Email_Template "#get_email_template" "2268415427"

Email_Purchase_Link_to_Referrer --> END_Email_Purchase_Link_to_Referrer
Contact_Found --> |"Found"| Email_Purchase_Link_to_Referrer
Contact_Found --> |"Default Outcome"| END_Contact_Found
Referrel_Email_Present --> |"Yes"| Get_Email_Template
Referrel_Email_Present --> |"Default Outcome"| END_Referrel_Email_Present
Which_Partner --> |"MML"| Referrel_Email_Present
Which_Partner --> |"Default Outcome"| END_Which_Partner
Get_Advisor_Contact --> Contact_Found
Get_Email_Template --> Get_Advisor_Contact
START -->  Which_Partner
END_Email_Purchase_Link_to_Referrer(( END )):::endClass
END_Contact_Found(( END )):::endClass
END_Referrel_Email_Present(( END )):::endClass
END_Which_Partner(( END )):::endClass


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
|Record Trigger Type| Create And Update|
|Label|Proposal | After Trigger | Send Purchase Link to Partners|
|Status|Active|
|Description|Changing "Send Email Address" to dontrespond@<br/>Adding Anne-Marie to email recipient list|
|Environments|Default|
|Interview Label|Proposal | After Trigger | Send Purchase Link to Partners {!$Flow.CurrentDateTime}|
| Builder Type (PM)|LightningFlowBuilder|
| Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
| Origin Builder Type (PM)|LightningFlowBuilder|
|Connector|[Which_Partner](#which_partner)|
|Next Node|[Which_Partner](#which_partner)|


#### Filters (logic: **and**)

|Filter Id|Field|Operator|Value|
|:-- |:-- |:--:|:--: |
|1|RecordTypeId| Equal To|0121G000000AjeLQAS|
|2|Paradigm_Purchase_Link__c| Is Changed|✅|


## Variables

|Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
|:-- |:--:|:--:|:--:|:--:|:--:|:--  |
|recipientId|String|⬜|⬜|⬜|<!-- -->|<!-- -->|


## Flow Nodes Details

### Email_Purchase_Link_to_Referrer

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Action Call|
|Label|Email Purchase Link to Referrer|
|Action Type|Email Simple|
|Action Name|emailSimple|
|Flow Transaction Model|CurrentTransaction|
|Name Segment|emailSimple|
|Offset|0|
|Email Addresses (input)|ademartini@myubiquity.com|
|Sender Type (input)|OrgWideEmailAddress|
|Sender Address (input)|dontrespond@myubiquity.com|
|Related Record Id (input)|$Record.Id|
|Recipient Id (input)|Get_Advisor_Contact.Id|
|Log Email On Send (input)|✅|
|Email Template Id (input)|Get_Email_Template.Id|


### Contact_Found

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Decision|
|Label|Contact Found ?|
|Default Connector Label|Default Outcome|


#### Rule Found (Found)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[Email_Purchase_Link_to_Referrer](#email_purchase_link_to_referrer)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|Get_Advisor_Contact.Id| Is Null|⬜|




### Referrel_Email_Present

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Decision|
|Label|Referrel Email Present ?|
|Default Connector Label|Default Outcome|


#### Rule Yes (Yes)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[Get_Email_Template](#get_email_template)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|$Record.Referrer_Email__c| Is Null|⬜|




### Which_Partner

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Decision|
|Label|Which Partner ?|
|Default Connector Label|Default Outcome|


#### Rule MML (MML)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[Referrel_Email_Present](#referrel_email_present)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|$Record.Lead_Source__c| Equal To|MML|
|2|$Record__Prior.Paradigm_Purchase_Link__c| Is Null|✅|
|3|$Record.Paradigm_Purchase_Link__c| Is Null|⬜|




### Get_Advisor_Contact

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Lookup|
|Object|Contact|
|Label|Get Advisor Contact|
|Assign Null Values If No Records Found|⬜|
|Get First Record Only|✅|
|Store Output Automatically|✅|
|Connector|[Contact_Found](#contact_found)|


#### Filters (logic: **and**)

|Filter Id|Field|Operator|Value|
|:-- |:-- |:--:|:--: |
|1|Email| Equal To|$Record.Referrer_Email__c|




### Get_Email_Template

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Lookup|
|Object|EmailTemplate|
|Label|Get Email Template|
|Assign Null Values If No Records Found|⬜|
|Get First Record Only|✅|
|Store Output Automatically|✅|
|Connector|[Get_Advisor_Contact](#get_advisor_contact)|


#### Filters (logic: **and**)

|Filter Id|Field|Operator|Value|
|:-- |:-- |:--:|:--: |
|1|Name| Equal To|MML Form Autoresponder|








___

_Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_