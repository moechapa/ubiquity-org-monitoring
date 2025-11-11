# Case | Tab | L+D Request

## Flow Diagram [(_View History_)](Case_Tab_L_D_Request-history.md)

```mermaid
%% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
%% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
%% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
%% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
%% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram

flowchart TB
START(["START<br/><b>Screen Flow</b>"]):::startClass
click START "#general-information" "3548735825"

Create_L_D_Case[("➕ <em></em><br/>Create L+D Case")]:::recordCreates
click Create_L_D_Case "#create_l_d_case" "28302859"

Content_Information(["💻 <em></em><br/>Content Information"]):::screens
click Content_Information "#content_information" "2052814398"

Finished(["💻 <em></em><br/>Finished"]):::screens
click Finished "#finished" "1088564679"

Initial_Information(["💻 <em></em><br/>Initial Information"]):::screens
click Initial_Information "#initial_information" "510597134"

RequestDetails(["💻 <em></em><br/>RequestDetails"]):::screens
click RequestDetails "#requestdetails" "2921276"

Create_L_D_Case --> Finished
Content_Information --> Create_L_D_Case
Finished --> END_Finished
Initial_Information --> RequestDetails
RequestDetails --> Content_Information
START -->  Initial_Information
END_Finished(( END )):::endClass


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
|Label|Case | Tab | L+D Request|
|Status|Active|
|Environments|Default|
|Interview Label|Case | Tab | L+D Request {!$Flow.CurrentDateTime}|
| Builder Type (PM)|LightningFlowBuilder|
| Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
| Origin Builder Type (PM)|LightningFlowBuilder|
|Connector|[Initial_Information](#initial_information)|
|Next Node|[Initial_Information](#initial_information)|


## Variables

|Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
|:-- |:--:|:--:|:--:|:--:|:--:|:--  |
|parentId|String|⬜|✅|✅|<!-- -->|<!-- -->|


## Formulas

|Name|Data Type|Expression|Description|
|:-- |:--:|:-- |:--  |
|CurrentUser|String|{!$User.FirstName} + " " + {!$User.LastName}|<!-- -->|
|preferredCompDate|Date|IF({!Project_Type} = "Demo - 10 Day SLA", TODAY() + 10,<br/>IF({!Project_Type} = "Tutorial - 10 Day SLA", TODAY() + 10,<br/>IF({!Project_Type} = "Training - 15 Day SLA", TODAY() + 15, TODAY() + 5)))|<!-- -->|
|RequestDescripton|String|"Requestor: " + {!Requestor} + BR() +<br/>"Department: " +  {!Department} + BR() +<br/>"Today's Date: " + TEXT({!Today_s_Date}) + BR() +<br/>"Request Type: " + {!Project_Type} + BR() +<br/>"Preferred Completion Date: " +  TEXT({!preferredCompDate}) + BR() +BR()+<br/>"Title of Project: " + {!Title_of_Project_File_Name}  + BR() +<br/>"New Project or Revision: " + {!Is_This_a_New_Project_or_a_Revision_Update_of_an_Existing_Asset} + BR() +<br/>IF({!Is_This_a_New_Project_or_a_Revision_Update_of_an_Existing_Asset}= "Revision", {!URL}, NULL) +BR()+<br/>"Requires Additional Collateral: " +{!Will_the_Content_in_this_Project_Require_Any_Existing_Collateral_to_be_Updated}+ BR()+ <br/>IF({!Will_the_Content_in_this_Project_Require_Any_Existing_Collateral_to_be_Updated}= "Yes", {!If_Yes_Please_Provide_Link_s_or_Upload_the_Collateral_Content_that_will_Require}, NULL) +BR()+<br/>"Anyone to Exclude: " + {!Are_There_Any_Specific_Audiences_that_should_be_Excluded_as_Recipients} +BR()+<br/>IF({!Are_There_Any_Specific_Audiences_that_should_be_Excluded_as_Recipients}= "Yes", "Please Exclude: ", NULL) +IF({!Principal1} = TRUE, "Principal", Null) +" " +IF({!Sallus1} = TRUE, "Sallus", NULL) +" "+ IF({!JP_Morgan1}=TRUE, "JP Morgan", NULL)+" " + IF({!Schwab1}=TRUE, "Schwab", NULL)+" " + IF({!RewardJet1}=TRUE, "RewardJet", NULL)+" " + IF({!Other1}=TRUE, {!Please_Specify_Audience_to_Exclude}, NULL)+BR()+<br/>"Co-Branding with Partner(s)?: " + {!Does_this_Project_Need_Co_Branding_with_a_Partner}+BR()+<br/>IF({!Does_this_Project_Need_Co_Branding_with_a_Partner}= "Yes", "Co-Brand With:", Null)+" "+IF({!Principal2} = TRUE, "Principal/Simply Retirement", Null) +" " +IF({!Sallus2} = TRUE, "Sallus", NULL) +" "+ IF({!Sallus_NFP2}=TRUE, "Sallus/NFP", NULL)+" " + IF({!Prospective_Partner_s2}=TRUE || {!Other2}=TRUE, {!If_Prospective_Partner_s_or_Other_Please_Specify}, NULL)+BR()+<br/>"Most Important Key Points/Ideas to Convey: " + {!sBriefly_What_are_the_Most_Important_Key_Point_s_or_Idea_s_You_Want_to_Convey} + BR() +<br/>"Notes: " + {!Notes}|<!-- -->|
|Subject|String|{!Title_of_Project_File_Name}|<!-- -->|
|Today|Date|TODAY()|<!-- -->|
|UserDepartment|String|{!$User.Department}|<!-- -->|


## Flow Nodes Details

### Create_L_D_Case

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Create|
|Object|Case|
|Label|Create L+D Case|
|Assign Record Id To Reference|parentId|
|Connector|[Finished](#finished)|


#### Input Assignments

|Field|Value|
|:-- |:--: |
|AccountId|0013700000JH68lAAD|
|Alert_Email__c|ubteachin@myubiquity.com|
|Date_Requested__c|Today|
|Department__c|Learning & Development|
|Description|RequestDescripton|
|Origin|Flow-Based Submission|
|OwnerId|005Ho000009KwTY|
|Plan__c|a2o1G000000oQW5QAM|
|Preferred_Completion_Date__c|preferredCompDate|
|RecordTypeId|0121G000000bqxJQAQ|
|Status|New|
|Subject|Subject|
|SuppliedEmail|$User.Email|




### Content_Information

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Screen|
|Label|Content Information|
|Allow Back|✅|
|Allow Finish|✅|
|Allow Pause|⬜|
|Next Or Finish Button Label|Submit|
|Show Footer|✅|
|Show Header|⬜|
|Connector|[Create_L_D_Case](#create_l_d_case)|


#### Logo3

|<!-- -->|<!-- -->|
|:---|:---|
|Extension Name|flowruntime:image|
|Field Type| Component Instance|
|Inputs On Next Nav To Assoc Scrn| Use Stored Values|
|Is Required|✅|
|Store Output Automatically|✅|
|Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
|Image Name (input)|ubqtLogo|
|Horizontal Alignment (input)|center|




#### ContentInfoScreen

|<!-- -->|<!-- -->|
|:---|:---|
|Field Text|<p style="text-align: center;"><strong style="font-size: 20px;">Content Information</strong></p>|
|Field Type| Display Text|
|Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|




#### sBriefly_What_are_the_Most_Important_Key_Point_s_or_Idea_s_You_Want_to_Convey

|<!-- -->|<!-- -->|
|:---|:---|
|Field Text|Briefly, What are the Most Important Key Point(s) or Idea(s) You Want to Convey?|
|Field Type| Large Text Area|
|Help Text|<p><span style="color: rgb(68, 68, 68); font-size: 12px;">E.g., why auto-enrollment should be included in your plan, you'll save more over 30 years because of flat fees, fill out this form so you don't get in trouble with the IRS, etc.</span></p>|
|Inputs On Next Nav To Assoc Scrn| Use Stored Values|
|Is Required|✅|
|Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|




#### Notes

|<!-- -->|<!-- -->|
|:---|:---|
|Field Text|Notes|
|Field Type| Large Text Area|
|Help Text|<p>Any additional context, requirements, or directions for your request.</p>|
|Inputs On Next Nav To Assoc Scrn| Use Stored Values|
|Is Required|⬜|
|Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|




### Finished

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Screen|
|Label|[Finished](#finished)|
|Allow Back|⬜|
|Allow Finish|✅|
|Allow Pause|⬜|
|Next Or Finish Button Label|Done|
|Show Footer|✅|
|Show Header|⬜|


#### Confirmation

|<!-- -->|<!-- -->|
|:---|:---|
|Field Text|<p style="text-align: center;"><strong style="font-size: 16px; color: rgb(21, 45, 202);">Thank you, your request has been created. The Learning and Development team may contact you to set up a time to discuss the request. </strong></p><p style="text-align: center;"><br></p><p style="text-align: center;"><br></p><p style="text-align: center;"><br></p><p style="text-align: center;"><strong style="font-size: 16px; color: rgb(21, 45, 202);">Please review the Learning and Development team's scoping questions here: </strong></p><p style="text-align: center;"><br></p><p style="text-align: center;"><a href="https://myubiquity.my.salesforce.com/sfc/p/00000000hXNr/a/Uo000000ZpkP/ZitJ8dyqeck2qiQV0brvrVvw5VSQdH2bGb8skIgDEKE" rel="noopener noreferrer" target="_blank" style="font-size: 16px; color: rgb(21, 45, 202);"><strong>https://myubiquity.my.salesforce.com/sfc/p/00000000hXNr/a/Uo000000ZpkP/ZitJ8dyqeck2qiQV0brvrVvw5VSQdH2bGb8skIgDEKE</strong></a></p>|
|Field Type| Display Text|
|Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|




### Initial_Information

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Screen|
|Label|Initial Information|
|Allow Back|✅|
|Allow Finish|✅|
|Allow Pause|⬜|
|Show Footer|✅|
|Show Header|⬜|
|Connector|[RequestDetails](#requestdetails)|


#### t

|<!-- -->|<!-- -->|
|:---|:---|
|Extension Name|flowruntime:image|
|Field Type| Component Instance|
|Inputs On Next Nav To Assoc Scrn| Use Stored Values|
|Is Required|✅|
|Store Output Automatically|✅|
|Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
|Image Name (input)|ubqtLogo|
|Horizontal Alignment (input)|center|




#### InitialInfo

|<!-- -->|<!-- -->|
|:---|:---|
|Field Text|<p style="text-align: center;"><strong style="font-size: 20px;">Initial Information</strong></p>|
|Field Type| Display Text|
|Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|




#### Project_Type

|<!-- -->|<!-- -->|
|:---|:---|
|Data Type|String|
|Choice References|- demo<br/>- tutorial<br/>- training<br/>- help_center<br/>|
|Field Text|Project Type|
|Field Type| Dropdown Box|
|Inputs On Next Nav To Assoc Scrn| Use Stored Values|
|Is Required|✅|
|Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|




#### Today_s_Date

|<!-- -->|<!-- -->|
|:---|:---|
|Data Type|Date|
|Default Value|Today|
|Field Text|Today's Date|
|Field Type| Input Field|
|Inputs On Next Nav To Assoc Scrn| Use Stored Values|
|Is Required|✅|
|Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|




#### Requestor

|<!-- -->|<!-- -->|
|:---|:---|
|Data Type|String|
|Field Text|Your Name|
|Field Type| Input Field|
|Help Text|<p>Your Name</p>|
|Inputs On Next Nav To Assoc Scrn| Use Stored Values|
|Is Required|✅|
|Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|




#### Department

|<!-- -->|<!-- -->|
|:---|:---|
|Data Type|String|
|Default Value|UserDepartment|
|Field Text|Department|
|Field Type| Input Field|
|Help Text|<p>Your Department</p>|
|Inputs On Next Nav To Assoc Scrn| Use Stored Values|
|Is Required|✅|
|Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|




#### Intended_Use

|<!-- -->|<!-- -->|
|:---|:---|
|Data Type|String|
|Choice References|- helpCenter<br/>- Sales<br/>- lmsInternal<br/>- lmsExternal<br/>- knowledge<br/>|
|Field Text|Intended Use|
|Field Type| Dropdown Box|
|Inputs On Next Nav To Assoc Scrn| Use Stored Values|
|Is Required|⬜|
|Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|




### RequestDetails

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Screen|
|Label|[RequestDetails](#requestdetails)|
|Allow Back|✅|
|Allow Finish|✅|
|Allow Pause|⬜|
|Show Footer|✅|
|Show Header|⬜|
|Connector|[Content_Information](#content_information)|


#### Logo2

|<!-- -->|<!-- -->|
|:---|:---|
|Extension Name|flowruntime:image|
|Field Type| Component Instance|
|Inputs On Next Nav To Assoc Scrn| Use Stored Values|
|Is Required|✅|
|Store Output Automatically|✅|
|Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
|Image Name (input)|ubqtLogo|
|Horizontal Alignment (input)|center|




#### RequestDetailScreen

|<!-- -->|<!-- -->|
|:---|:---|
|Field Text|<p style="text-align: center;"><strong style="font-size: 20px; color: rgb(0, 0, 0);">Request Details</strong></p>|
|Field Type| Display Text|
|Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|




#### Title_of_Project_File_Name

|<!-- -->|<!-- -->|
|:---|:---|
|Data Type|String|
|Field Text|Title of Project/File Name|
|Field Type| Input Field|
|Help Text|<p><span style="background-color: rgb(255, 255, 255); font-size: 12px; color: rgb(68, 68, 68);">Enter the title of project or document/file name, etc. Marketing may rename and will provide alternate title for review.</span></p>|
|Inputs On Next Nav To Assoc Scrn| Use Stored Values|
|Is Required|✅|
|Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|




#### Is_This_a_New_Project_or_a_Revision_Update_of_an_Existing_Asset

|<!-- -->|<!-- -->|
|:---|:---|
|Data Type|String|
|Choice References|- New<br/>- Revision<br/>|
|Field Text|Is This a New Project or a Revision/Update of an Existing Asset?|
|Field Type| Dropdown Box|
|Inputs On Next Nav To Assoc Scrn| Use Stored Values|
|Is Required|✅|
|Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|




#### URL

|<!-- -->|<!-- -->|
|:---|:---|
|Data Type|String|
|Field Text|URL to File in Box/Sharepoint|
|Field Type| Input Field|
|Inputs On Next Nav To Assoc Scrn| Use Stored Values|
|Is Required|⬜|
|Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
|Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Is_This_a_New_Project_or_a_Revision_Update_of_an_Existing_Asset<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;elementReference: Revision<br/>|




#### Will_the_Content_in_this_Project_Require_Any_Existing_Collateral_to_be_Updated

|<!-- -->|<!-- -->|
|:---|:---|
|Data Type|String|
|Choice References|- 'Yes'<br/>- 'No'<br/>|
|Field Text|Will the Content in this Project Require Any Existing Collateral to be Updated?|
|Field Type| Dropdown Box|
|Inputs On Next Nav To Assoc Scrn| Use Stored Values|
|Is Required|✅|
|Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|




#### If_Yes_Please_Provide_Link_s_or_Upload_the_Collateral_Content_that_will_Require

|<!-- -->|<!-- -->|
|:---|:---|
|Data Type|String|
|Field Text|If Yes, Please Provide Box/Sharepoint Link(s) for Collateral/Content that will Require Updates:|
|Field Type| Input Field|
|Inputs On Next Nav To Assoc Scrn| Use Stored Values|
|Is Required|⬜|
|Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
|Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: >-<br/>&nbsp;&nbsp;&nbsp;&nbsp;Will_the_Content_in_this_Project_Require_Any_Existing_Collateral_to_be_Updated<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;elementReference: 'Yes'<br/>|




#### Are_There_Any_Specific_Audiences_that_should_be_Excluded_as_Recipients

|<!-- -->|<!-- -->|
|:---|:---|
|Data Type|String|
|Choice References|- 'Yes'<br/>- 'No'<br/>|
|Field Text|Are There Any Specific Audiences that should be Excluded as Recipients|
|Field Type| Dropdown Box|
|Help Text|<p><span style="color: rgb(68, 68, 68); font-size: 12px; background-color: rgb(255, 255, 255);">E.g. Ubiquity partners, clients with advisors should not receive emails advertising investment advisory services, terminated employees with a balance , etc.</span></p>|
|Inputs On Next Nav To Assoc Scrn| Use Stored Values|
|Is Required|✅|
|Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|




#### AudiencesToExclude

|<!-- -->|<!-- -->|
|:---|:---|
|Field Text|<p>Which Audiences Should Be Excluded?</p>|
|Field Type| Display Text|
|Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
|Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Are_There_Any_Specific_Audiences_that_should_be_Excluded_as_Recipients<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;elementReference: 'Yes'<br/>|




#### Principal1

|<!-- -->|<!-- -->|
|:---|:---|
|Data Type|Boolean|
|Field Text|Principal|
|Field Type| Input Field|
|Inputs On Next Nav To Assoc Scrn| Use Stored Values|
|Is Required|✅|
|Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
|Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Are_There_Any_Specific_Audiences_that_should_be_Excluded_as_Recipients<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;elementReference: 'Yes'<br/>|




#### Sallus1

|<!-- -->|<!-- -->|
|:---|:---|
|Data Type|Boolean|
|Field Text|Sallus|
|Field Type| Input Field|
|Inputs On Next Nav To Assoc Scrn| Use Stored Values|
|Is Required|✅|
|Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
|Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Are_There_Any_Specific_Audiences_that_should_be_Excluded_as_Recipients<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;elementReference: 'Yes'<br/>|




#### JP_Morgan1

|<!-- -->|<!-- -->|
|:---|:---|
|Data Type|Boolean|
|Field Text|JP Morgan|
|Field Type| Input Field|
|Inputs On Next Nav To Assoc Scrn| Use Stored Values|
|Is Required|✅|
|Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
|Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Are_There_Any_Specific_Audiences_that_should_be_Excluded_as_Recipients<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;elementReference: 'Yes'<br/>|




#### Schwab1

|<!-- -->|<!-- -->|
|:---|:---|
|Data Type|Boolean|
|Field Text|Schwab|
|Field Type| Input Field|
|Inputs On Next Nav To Assoc Scrn| Use Stored Values|
|Is Required|✅|
|Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
|Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Are_There_Any_Specific_Audiences_that_should_be_Excluded_as_Recipients<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;elementReference: 'Yes'<br/>|




#### RewardJet1

|<!-- -->|<!-- -->|
|:---|:---|
|Data Type|Boolean|
|Field Text|RewardJet|
|Field Type| Input Field|
|Inputs On Next Nav To Assoc Scrn| Use Stored Values|
|Is Required|✅|
|Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
|Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Are_There_Any_Specific_Audiences_that_should_be_Excluded_as_Recipients<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;elementReference: 'Yes'<br/>|




#### Other1

|<!-- -->|<!-- -->|
|:---|:---|
|Data Type|Boolean|
|Field Text|Other|
|Field Type| Input Field|
|Inputs On Next Nav To Assoc Scrn| Use Stored Values|
|Is Required|✅|
|Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
|Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Are_There_Any_Specific_Audiences_that_should_be_Excluded_as_Recipients<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;elementReference: 'Yes'<br/>|




#### Please_Specify_Audience_to_Exclude

|<!-- -->|<!-- -->|
|:---|:---|
|Data Type|String|
|Field Text|Please Specify Audience to Exclude|
|Field Type| Input Field|
|Inputs On Next Nav To Assoc Scrn| Use Stored Values|
|Is Required|⬜|
|Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
|Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Other1<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;booleanValue: true<br/>|




#### Does_this_Project_Need_Co_Branding_with_a_Partner

|<!-- -->|<!-- -->|
|:---|:---|
|Data Type|String|
|Choice References|- 'Yes'<br/>- 'No'<br/>|
|Field Text|Does this Project Need Co-Branding with a Partner?|
|Field Type| Dropdown Box|
|Help Text|<p><span style="color: rgb(68, 68, 68); font-size: 12px; background-color: rgb(255, 255, 255);">If this is being created for a partner, do we need to add their logo in addition to Ubiquity's?</span></p>|
|Inputs On Next Nav To Assoc Scrn| Use Stored Values|
|Is Required|✅|
|Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|




#### SpecifyPartnersToCoBrand

|<!-- -->|<!-- -->|
|:---|:---|
|Field Text|<p>Which Partners? (Select All That Apply)</p>|
|Field Type| Display Text|
|Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
|Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Does_this_Project_Need_Co_Branding_with_a_Partner<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;elementReference: 'Yes'<br/>|




#### Principal2

|<!-- -->|<!-- -->|
|:---|:---|
|Data Type|Boolean|
|Field Text|Principal/Simply Retirement|
|Field Type| Input Field|
|Inputs On Next Nav To Assoc Scrn| Use Stored Values|
|Is Required|✅|
|Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
|Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Does_this_Project_Need_Co_Branding_with_a_Partner<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;elementReference: 'Yes'<br/>|




#### Sallus2

|<!-- -->|<!-- -->|
|:---|:---|
|Data Type|Boolean|
|Field Text|Sallus|
|Field Type| Input Field|
|Inputs On Next Nav To Assoc Scrn| Use Stored Values|
|Is Required|✅|
|Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
|Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Does_this_Project_Need_Co_Branding_with_a_Partner<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;elementReference: 'Yes'<br/>|




#### Sallus_NFP2

|<!-- -->|<!-- -->|
|:---|:---|
|Data Type|Boolean|
|Field Text|Sallus/NFP|
|Field Type| Input Field|
|Inputs On Next Nav To Assoc Scrn| Use Stored Values|
|Is Required|✅|
|Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
|Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Does_this_Project_Need_Co_Branding_with_a_Partner<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;elementReference: 'Yes'<br/>|




#### Prospective_Partner_s2

|<!-- -->|<!-- -->|
|:---|:---|
|Data Type|Boolean|
|Field Text|Prospective Partner(s)|
|Field Type| Input Field|
|Inputs On Next Nav To Assoc Scrn| Use Stored Values|
|Is Required|✅|
|Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
|Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Does_this_Project_Need_Co_Branding_with_a_Partner<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;elementReference: 'Yes'<br/>|




#### Other2

|<!-- -->|<!-- -->|
|:---|:---|
|Data Type|Boolean|
|Field Text|Other|
|Field Type| Input Field|
|Inputs On Next Nav To Assoc Scrn| Use Stored Values|
|Is Required|✅|
|Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
|Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Does_this_Project_Need_Co_Branding_with_a_Partner<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;elementReference: 'Yes'<br/>|




#### If_Prospective_Partner_s_or_Other_Please_Specify

|<!-- -->|<!-- -->|
|:---|:---|
|Data Type|String|
|Field Text|If Prospective Partner(s) or Other, Please Specify:|
|Field Type| Input Field|
|Inputs On Next Nav To Assoc Scrn| Use Stored Values|
|Is Required|⬜|
|Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
|Visibility Rule|conditionLogic: or<br/>conditions:<br/>&nbsp;&nbsp;- leftValueReference: Prospective_Partner_s2<br/>&nbsp;&nbsp;&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;booleanValue: true<br/>&nbsp;&nbsp;- leftValueReference: Other2<br/>&nbsp;&nbsp;&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;booleanValue: true<br/>|








___

_Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_