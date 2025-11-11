# Opportunity | Process | Send Welcome Email

## Flow Diagram [(_View History_)](Opportunity_Process_Send_Welcome_Email-history.md)

```mermaid
%% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
%% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
%% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
%% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
%% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram

flowchart TB
START(["START<br/><b>AutoLaunched Flow</b></br>"]):::startClass
click START "#general-information" "1708449762"

Self_Purchase_Schwab_Email("📧 <em></em><br/>Self-Purchase Schwab Email"):::actionCalls
click Self_Purchase_Schwab_Email "#self_purchase_schwab_email" "2349378197"

Self_Purchase_Standard_Email("📧 <em></em><br/>Self-Purchase Standard Email"):::actionCalls
click Self_Purchase_Standard_Email "#self_purchase_standard_email" "1456109253"

Send_other_welcome("📧 <em></em><br/>Send other welcome"):::actionCalls
click Send_other_welcome "#send_other_welcome" "3295098019"

Send_Schwab_Welcome("📧 <em></em><br/>Send Schwab Welcome"):::actionCalls
click Send_Schwab_Welcome "#send_schwab_welcome" "390612085"

Custodian_Branch{"🔀 <em></em><br/>Custodian Branch"}:::decisions
click Custodian_Branch "#custodian_branch" "255211321"

Imp_Assigned{"🔀 <em></em><br/>Imp Assigned"}:::decisions
click Imp_Assigned "#imp_assigned" "4215850891"

OPD_Found{"🔀 <em></em><br/>OPD Found"}:::decisions
click OPD_Found "#opd_found" "4032076223"

Single_k_check{"🔀 <em></em><br/>Single k check"}:::decisions
click Single_k_check "#single_k_check" "127914681"

Get_Imp[("🔍 <em></em><br/>Get Imp")]:::recordLookups
click Get_Imp "#get_imp" "3602661977"

Get_OPD[("🔍 <em></em><br/>Get OPD")]:::recordLookups
click Get_OPD "#get_opd" "261185190"

Grab_Buyer_AC[("🔍 <em></em><br/>Grab Buyer AC")]:::recordLookups
click Grab_Buyer_AC "#grab_buyer_ac" "1323840301"

Grab_Opportunity[("🔍 <em></em><br/>Grab Opportunity")]:::recordLookups
click Grab_Opportunity "#grab_opportunity" "3628112531"

Update_Imp_on_OPD[("🛠️ <em></em><br/>Update Imp on OPD")]:::recordUpdates
click Update_Imp_on_OPD "#update_imp_on_opd" "2428747767"

Self_Purchase_Schwab_Email --> Get_Imp
Self_Purchase_Standard_Email --> Get_Imp
Send_other_welcome --> Get_Imp
Send_Schwab_Welcome --> Get_Imp
Custodian_Branch --> |"AC NULL"| Get_Imp
Custodian_Branch --> |"Self-Purchase Schwab"| Self_Purchase_Schwab_Email
Custodian_Branch --> |"Schwab"| Send_Schwab_Welcome
Custodian_Branch --> |"Self-Purchase Standard"| Self_Purchase_Standard_Email
Custodian_Branch --> |"Other"| Send_other_welcome
Imp_Assigned --> |"Assignment Complete"| Get_OPD
Imp_Assigned --> |"Default Outcome"| END_Imp_Assigned
OPD_Found --> |"Found"| Update_Imp_on_OPD
OPD_Found --> |"Default Outcome"| END_OPD_Found
Single_k_check --> |"Single K welcome"| Grab_Buyer_AC
Single_k_check --> |"Default Outcome"| Get_Imp
Get_Imp --> Imp_Assigned
Get_OPD --> OPD_Found
Grab_Buyer_AC --> Custodian_Branch
Grab_Opportunity --> Single_k_check
Update_Imp_on_OPD --> END_Update_Imp_on_OPD
START -->  Grab_Opportunity
END_Imp_Assigned(( END )):::endClass
END_OPD_Found(( END )):::endClass
END_Update_Imp_on_OPD(( END )):::endClass


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
|Process Type| Auto Launched Flow|
|Label|Opportunity | Process | Send Welcome Email|
|Status|Active|
|Description|Deleted Pause Element (as of 15:00 pm 11/21/23)|
|Environments|Default|
|Interview Label|Opportunity | Process | Send Welcome Email {!$Flow.CurrentDateTime}|
| Builder Type (PM)|LightningFlowBuilder|
| Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
| Origin Builder Type (PM)|LightningFlowBuilder|
|Connector|[Grab_Opportunity](#grab_opportunity)|
|Next Node|[Grab_Opportunity](#grab_opportunity)|


## Variables

|Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
|:-- |:--:|:--:|:--:|:--:|:--:|:--  |
|newImp|SObject|⬜|✅|⬜|Implementation__c|<!-- -->|
|newProposal|SObject|⬜|✅|✅|Proposal__c|<!-- -->|
|recordId|String|⬜|✅|⬜|<!-- -->|<!-- -->|


## Formulas

|Name|Data Type|Expression|Description|
|:-- |:--:|:-- |:--  |
|nowMinus50|DateTime|{!$Flow.InterviewStartTime}-(50/1440)|<!-- -->|
|subject|String|"RPC Welcome Email Sent"|<!-- -->|
|today|Date|TODAY()|<!-- -->|


## Flow Nodes Details

### Self_Purchase_Schwab_Email

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Action Call|
|Label|Self-Purchase Schwab Email|
|Action Type|Email Alert|
|Action Name|Associated_Contact__c.Single_k_Self_Purchase_Auto_Email_Schwab|
|Flow Transaction Model|CurrentTransaction|
|Name Segment|Associated_Contact__c.Single_k_Self_Purchase_Auto_Email_Schwab|
| SObject Row Id (input)|Grab_Buyer_AC.Id|
|Connector|[Get_Imp](#get_imp)|


### Self_Purchase_Standard_Email

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Action Call|
|Label|Self-Purchase Standard Email|
|Action Type|Email Alert|
|Action Name|Associated_Contact__c.Single_k_Self_Purchase_Auto_Email_Standard|
|Flow Transaction Model|CurrentTransaction|
|Name Segment|Associated_Contact__c.Single_k_Self_Purchase_Auto_Email_Standard|
| SObject Row Id (input)|Grab_Buyer_AC.Id|
|Connector|[Get_Imp](#get_imp)|


### Send_other_welcome

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Action Call|
|Label|Send other welcome|
|Action Type|Email Alert|
|Action Name|Associated_Contact__c.Single_k_Welcome_Email_Other_Custodian|
|Flow Transaction Model|CurrentTransaction|
|Name Segment|Associated_Contact__c.Single_k_Welcome_Email_Other_Custodian|
| SObject Row Id (input)|Grab_Buyer_AC.Id|
|Connector|[Get_Imp](#get_imp)|


### Send_Schwab_Welcome

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Action Call|
|Label|Send Schwab Welcome|
|Action Type|Email Alert|
|Action Name|Associated_Contact__c.Single_k_Welcome_Email_Schwab|
|Flow Transaction Model|CurrentTransaction|
|Name Segment|Associated_Contact__c.Single_k_Welcome_Email_Schwab|
| SObject Row Id (input)|Grab_Buyer_AC.Id|
|Connector|[Get_Imp](#get_imp)|


### Custodian_Branch

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Decision|
|Label|Custodian Branch|
|Default Connector|[Send_other_welcome](#send_other_welcome)|
|Default Connector Label|Other|


#### Rule AC_NULL (AC NULL)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[Get_Imp](#get_imp)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|Grab_Buyer_AC.Id| Is Null|✅|




#### Rule Self_Purchase_Schwab (Self-Purchase Schwab)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[Self_Purchase_Schwab_Email](#self_purchase_schwab_email)|
|Condition Logic|(1 OR 2) AND (3 OR 4)|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|Grab_Opportunity.Custodian__c| Equal To|Schwab Trust|
|2|Grab_Opportunity.Custodian__c| Equal To|Schwab & Co., Inc.|
|3|Grab_Opportunity.Campaign_Code__c| Equal To|Single(k) Long|
|4|Grab_Opportunity.Campaign_Code__c| Equal To|Single(k) Short|




#### Rule Schwab (Schwab)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[Send_Schwab_Welcome](#send_schwab_welcome)|
|Condition Logic|or|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|Grab_Opportunity.Custodian__c| Equal To|Schwab & Co., Inc.|
|2|Grab_Opportunity.Custodian__c| Equal To|Schwab Trust|




#### Rule Self_Purchase_Standard (Self-Purchase Standard)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[Self_Purchase_Standard_Email](#self_purchase_standard_email)|
|Condition Logic|or|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|Grab_Opportunity.Campaign_Code__c| Equal To|Single(k) Long|
|2|Grab_Opportunity.Campaign_Code__c| Equal To|Single(k) Short|




### Imp_Assigned

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Decision|
|Label|Imp Assigned|
|Default Connector Label|Default Outcome|


#### Rule Assignment_Complete (Assignment Complete)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[Get_OPD](#get_opd)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|newImp.Id| Is Null|⬜|




### OPD_Found

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Decision|
|Label|OPD Found|
|Default Connector Label|Default Outcome|


#### Rule Found (Found)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[Update_Imp_on_OPD](#update_imp_on_opd)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|[Get_OPD](#get_opd)| Is Null|⬜|




### Single_k_check

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Decision|
|Label|Single k check|
|Default Connector|[Get_Imp](#get_imp)|
|Default Connector Label|Default Outcome|


#### Rule Single_K_welcome (Single K welcome)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[Grab_Buyer_AC](#grab_buyer_ac)|
|Condition Logic|(1 OR 3) AND 2|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|Grab_Opportunity.Service_Option__c| Equal To|Single(k)|
|2|Grab_Opportunity.LeadSourceDetail__c| Not Equal To|Advisor|
|3|Grab_Opportunity.Service_Option__c| Equal To|Mega Roth Single(k)|




### Get_Imp

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Lookup|
|Object|Implementation__c|
|Label|Get Imp|
|Assign Null Values If No Records Found|✅|
|Output Reference|newImp|
|Queried Fields|- Id<br/>- Service_Option__c<br/>- Plan_Type__c<br/>|
|Connector|[Imp_Assigned](#imp_assigned)|


#### Filters (logic: **1 AND 2 AND NOT 3**)

|Filter Id|Field|Operator|Value|
|:-- |:-- |:--:|:--: |
|1|Opportunity_Name__c| Equal To|recordId|
|2|Implementation_Status__c| Contains|In Progress|
|3|Service_Option__c| Contains|Simply|




### Get_OPD

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Lookup|
|Object|Proposal__c|
|Label|Get OPD|
|Assign Null Values If No Records Found|✅|
|Output Reference|newProposal|
|Queried Fields|- Id<br/>- Implementation__c<br/>|
|Sort Field|CreatedDate|
|Sort Order|Desc|
|Connector|[OPD_Found](#opd_found)|


#### Filters (logic: **and**)

|Filter Id|Field|Operator|Value|
|:-- |:-- |:--:|:--: |
|1|Opportunity__c| Equal To|recordId|




### Grab_Buyer_AC

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Lookup|
|Object|Associated_Contact__c|
|Label|Grab Buyer AC|
|Assign Null Values If No Records Found|⬜|
|Get First Record Only|✅|
|Store Output Automatically|✅|
|Connector|[Custodian_Branch](#custodian_branch)|


#### Filters (logic: **1 AND (2 OR 3 OR 4)**)

|Filter Id|Field|Operator|Value|
|:-- |:-- |:--:|:--: |
|1|Opportunity__c| Equal To|recordId|
|2|Contact_Role__c| Equal To|Authorized Buyer|
|3|Primary__c| Equal To|✅|
|4|Contact_Role__c| Contains|Plan Sponsor|




### Grab_Opportunity

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Lookup|
|Object|Opportunity|
|Label|Grab Opportunity|
|Assign Null Values If No Records Found|⬜|
|Get First Record Only|✅|
|Store Output Automatically|✅|
|Connector|[Single_k_check](#single_k_check)|


#### Filters (logic: **and**)

|Filter Id|Field|Operator|Value|
|:-- |:-- |:--:|:--: |
|1|Id| Equal To|recordId|




### Update_Imp_on_OPD

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Update|
|Object|Proposal__c|
|Label|Update Imp on OPD|


#### Filters (logic: **and**)

|Filter Id|Field|Operator|Value|
|:-- |:-- |:--:|:--: |
|1|Opportunity__c| Equal To|recordId|




#### Input Assignments

|Field|Value|
|:-- |:--: |
|Implementation__c|newImp.Id|








___

_Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_