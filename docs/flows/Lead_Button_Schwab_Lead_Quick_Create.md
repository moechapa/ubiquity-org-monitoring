# Lead | Button | Schwab Lead Quick Create

## Flow Diagram [(_View History_)](Lead_Button_Schwab_Lead_Quick_Create-history.md)

```mermaid
%% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
%% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
%% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
%% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
%% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram

flowchart TB
START(["START<br/><b>Screen Flow</b>"]):::startClass
click START "#general-information" "85194274"

Navigate_to_Record("⚡ <em></em><br/>Navigate to Record"):::actionCalls
click Navigate_to_Record "#navigate_to_record" "2966327878"

Phone_Lead_Defaults[\"🟰 <em></em><br/>Phone Lead Defaults"/]:::assignments
click Phone_Lead_Defaults "#phone_lead_defaults" "3445975849"

Return_Id_Value[\"🟰 <em></em><br/>Return Id Value"/]:::assignments
click Return_Id_Value "#return_id_value" "3966066427"

Create_Lead[("➕ <em></em><br/>Create Lead")]:::recordCreates
click Create_Lead "#create_lead" "3789762385"

Required_Fields(["💻 <em></em><br/>Required Fields"]):::screens
click Required_Fields "#required_fields" "1160800034"

Navigate_to_Record --> END_Navigate_to_Record
Phone_Lead_Defaults --> Create_Lead
Return_Id_Value --> Navigate_to_Record
Create_Lead --> Return_Id_Value
Required_Fields --> Phone_Lead_Defaults
START -->  Required_Fields
END_Navigate_to_Record(( END )):::endClass


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
|Process Type| Flow|
|Label|Lead | Button | Schwab Lead Quick Create|
|Status|Active|
|Environments|Default|
|Interview Label|Lead | Button | Schwab Lead Quick Create {!$Flow.CurrentDateTime}|
| Builder Type (PM)|LightningFlowBuilder|
| Canvas Mode (PM)|FREE_FORM_CANVAS|
| Origin Builder Type (PM)|LightningFlowBuilder|
|Connector|[Required_Fields](#required_fields)|
|Next Node|[Required_Fields](#required_fields)|


## Variables

|Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
|:-- |:--:|:--:|:--:|:--:|:--:|:--  |
|newLead|SObject|⬜|✅|✅|Lead|<!-- -->|
|recordId|String|⬜|✅|✅|<!-- -->|<!-- -->|


## Flow Nodes Details

### Navigate_to_Record

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Action Call|
|Label|Navigate to Record|
|Action Type|Component|
|Action Name|c:navigateEverywhereLFA|
|Flow Transaction Model|CurrentTransaction|
|Name Segment|c:navigateEverywhereLFA|
|Offset|0|
|Store Output Automatically|✅|
|Destination Record Id (input)|recordId|
|Destination Type (input)|record|
|Destination Action (input)|view|


### Phone_Lead_Defaults

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Assignment|
|Label|Phone Lead Defaults|
|Connector|[Create_Lead](#create_lead)|


#### Assignments

|Assign To Reference|Operator|Value|
|:-- |:--:|:--: |
|newLead.LeadSource| Assign|Schwab|
|newLead.Method_of_First_Contact__c| Assign|Phone|
|newLead.Status| Assign|Working|
|newLead.FirstName| Assign|First_Name|
|newLead.LastName| Assign|Last_Name|
|newLead.NumberOfEmployees| Assign|NumberofEmployees|
|newLead.Business_Industry__c| Assign|Business_Industry|
|newLead.Company| Assign|Company|
|newLead.State| Assign|Address.province|
|newLead.PostalCode| Assign|Address.postalCode|
|newLead.Country| Assign|Address.country|
|newLead.Street| Assign|Address.street|
|newLead.City| Assign|Address.city|
|newLead.OwnerId| Assign|$User.Id|
|newLead.Connected_Partner__c| Assign|Schwab|
|newLead.Lead_Origin__c| Assign|Rep Generated|
|newLead.Company_FEIN__c| Assign|newLead.Company_FEIN__c|




### Return_Id_Value

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Assignment|
|Label|Return Id Value|
|Connector|[Navigate_to_Record](#navigate_to_record)|


#### Assignments

|Assign To Reference|Operator|Value|
|:-- |:--:|:--: |
|recordId| Assign|newLead.Id|




### Create_Lead

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Create|
|Label|Create Lead|
|Input Reference|newLead|
|Connector|[Return_Id_Value](#return_id_value)|


### Required_Fields

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Screen|
|Label|Required Fields|
|Allow Back|⬜|
|Allow Finish|✅|
|Allow Pause|⬜|
|Next Or Finish Button Label|Create New Schwab Lead|
|Show Footer|✅|
|Show Header|✅|
|Connector|[Phone_Lead_Defaults](#phone_lead_defaults)|


#### First_Name

|<!-- -->|<!-- -->|
|:---|:---|
|Data Type|String|
|Field Text|First Name|
|Field Type| Input Field|
|Inputs On Next Nav To Assoc Scrn| Use Stored Values|
|Is Required|⬜|
|Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
|Parent Field|[Required_Fields_Section1_Column1](#required_fields_section1_column1)|




#### Last_Name

|<!-- -->|<!-- -->|
|:---|:---|
|Data Type|String|
|Field Text|Last Name|
|Field Type| Input Field|
|Inputs On Next Nav To Assoc Scrn| Use Stored Values|
|Is Required|✅|
|Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
|Parent Field|[Required_Fields_Section1_Column1](#required_fields_section1_column1)|




#### newLead.Phone

|<!-- -->|<!-- -->|
|:---|:---|
|Field Type| Object Provided|
|Inputs On Next Nav To Assoc Scrn| Use Stored Values|
|Is Required|⬜|
|Object Field Reference|newLead.Phone|
|Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
|Parent Field|[Required_Fields_Section1_Column1](#required_fields_section1_column1)|




#### newLead.Email

|<!-- -->|<!-- -->|
|:---|:---|
|Field Type| Object Provided|
|Inputs On Next Nav To Assoc Scrn| Use Stored Values|
|Is Required|⬜|
|Object Field Reference|newLead.Email|
|Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
|Parent Field|[Required_Fields_Section1_Column1](#required_fields_section1_column1)|




#### newLead.Connected_Partner_Rep__c

|<!-- -->|<!-- -->|
|:---|:---|
|Field Type| Object Provided|
|Inputs On Next Nav To Assoc Scrn| Use Stored Values|
|Is Required|⬜|
|Object Field Reference|newLead.Connected_Partner_Rep__c|
|Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
|Parent Field|[Required_Fields_Section1_Column1](#required_fields_section1_column1)|




#### Required_Fields_Section1_Column1

|<!-- -->|<!-- -->|
|:---|:---|
|Field Type| Region|
|Is Required|⬜|
|Parent Field|[Required_Fields_Section1](#required_fields_section1)|
|Width (input)|6|




#### Company

|<!-- -->|<!-- -->|
|:---|:---|
|Data Type|String|
|Field Text|Company|
|Field Type| Input Field|
|Inputs On Next Nav To Assoc Scrn| Use Stored Values|
|Is Required|✅|
|Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
|Parent Field|[Required_Fields_Section1_Column2](#required_fields_section1_column2)|




#### NumberofEmployees

|<!-- -->|<!-- -->|
|:---|:---|
|Data Type|Number|
|Field Text|Number of Employees|
|Field Type| Input Field|
|Inputs On Next Nav To Assoc Scrn| Use Stored Values|
|Is Required|⬜|
|Scale|0|
|Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
|Parent Field|[Required_Fields_Section1_Column2](#required_fields_section1_column2)|




#### Business_Industry

|<!-- -->|<!-- -->|
|:---|:---|
|Data Type|String|
|Choice References|- BusinessIndustry<br/>- NotYetKnown<br/>|
|Default Selected Choice Reference|NotYetKnown|
|Field Text|Business Industry|
|Field Type| Dropdown Box|
|Inputs On Next Nav To Assoc Scrn| Use Stored Values|
|Is Required|✅|
|Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
|Parent Field|[Required_Fields_Section1_Column2](#required_fields_section1_column2)|




#### Lead_Source_Detail

|<!-- -->|<!-- -->|
|:---|:---|
|Data Type|String|
|Choice References|SchwabLeadSourceDetails|
|Default Value|Schwab-CC|
|Field Text|Lead Source Detail|
|Field Type| Dropdown Box|
|Inputs On Next Nav To Assoc Scrn| Use Stored Values|
|Is Required|✅|
|Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
|Parent Field|[Required_Fields_Section1_Column2](#required_fields_section1_column2)|




#### EIN

|<!-- -->|<!-- -->|
|:---|:---|
|Data Type|String|
|Field Text|EIN|
|Field Type| Input Field|
|Inputs On Next Nav To Assoc Scrn| Use Stored Values|
|Is Required|⬜|
|Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
|Parent Field|[Required_Fields_Section1_Column2](#required_fields_section1_column2)|




#### Required_Fields_Section1_Column2

|<!-- -->|<!-- -->|
|:---|:---|
|Field Type| Region|
|Is Required|⬜|
|Parent Field|[Required_Fields_Section1](#required_fields_section1)|
|Width (input)|6|




#### Required_Fields_Section1

|<!-- -->|<!-- -->|
|:---|:---|
|Field Type| Region Container|
|Is Required|⬜|
|Region Container Type| Section Without Header|
|Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|




#### Address

|<!-- -->|<!-- -->|
|:---|:---|
|Extension Name|flowruntime:address|
|Field Type| Component Instance|
|Inputs On Next Nav To Assoc Scrn| Use Stored Values|
|Is Required|✅|
|Store Output Automatically|✅|
|Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
|Country (input)|United States|








___

_Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_