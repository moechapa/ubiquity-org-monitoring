# QA | After Save | Pre Completion Checks

## Flow Diagram [(_View History_)](QA_After_Save_Pre_Completion_Checks-history.md)

```mermaid
%% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
%% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
%% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
%% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
%% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram

flowchart TB
START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
click START "#general-information" "2143272181"

Comment_error("🚫 <em></em><br/>Comment error"):::customErrors
click Comment_error "#comment_error" "4205075650"

Check_if_comments_present{"🔀 <em></em><br/>Check if comments present"}:::decisions
click Check_if_comments_present "#check_if_comments_present" "3641709332"

Required_Comment_Missing_Check{"🔀 <em></em><br/>Required Comment Missing Check"}:::decisions
click Required_Comment_Missing_Check "#required_comment_missing_check" "1005179317"

Run_required_comment_flow[["🔗 <em>Subflow</em><br/>Run required comment flow"]]:::subflows
click Run_required_comment_flow "#run_required_comment_flow" "2532952543"

Comment_error --> END_Comment_error
Check_if_comments_present --> |"No comment on QA"| Run_required_comment_flow
Check_if_comments_present --> |"Default Outcome"| END_Check_if_comments_present
Required_Comment_Missing_Check --> |"Form missing required comment"| Comment_error
Required_Comment_Missing_Check --> |"Default Outcome"| END_Required_Comment_Missing_Check
START -->  Check_if_comments_present
Run_required_comment_flow --> Required_Comment_Missing_Check
END_Comment_error(( END )):::endClass
END_Check_if_comments_present(( END )):::endClass
END_Required_Comment_Missing_Check(( END )):::endClass


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
|Object|Quality_Assurance_QA__c|
|Process Type| Auto Launched Flow|
|Trigger Type| Record After Save|
|Record Trigger Type| Update|
|Label|QA | After Save | Pre Completion Checks|
|Status|Active|
|Description|For dynamic QA forms.  Complex validation rules that run when a reviewer score is added.|
|Environments|Default|
|Interview Label|QA | After Save | Pre Completion Checks {!$Flow.CurrentDateTime}|
| Builder Type (PM)|LightningFlowBuilder|
| Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
| Origin Builder Type (PM)|LightningFlowBuilder|
|Connector|[Check_if_comments_present](#check_if_comments_present)|
|Next Node|[Check_if_comments_present](#check_if_comments_present)|


#### Filters (logic: **and**)

|Filter Id|Field|Operator|Value|
|:-- |:-- |:--:|:--: |
|1|Reviewer_Score__c| Is Null|<!-- -->|
|2|Reviewer_Score__c| Is Changed|✅|
|3|QA_Design_Version__c| Is Null|<!-- -->|


## Flow Nodes Details

### Comment_error

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Custom Error|
|Label|Comment error|
|Custom Error Messages|errorMessage: '{!Run_required_comment_flow.requiredCommentMessage}'<br/>fieldSelection: Comments__c<br/>isFieldError: true<br/>|


### Check_if_comments_present

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Decision|
|Label|Check if comments present|
|Default Connector Label|Default Outcome|


#### Rule No_comment_on_QA (No comment on QA)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[Run_required_comment_flow](#run_required_comment_flow)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|$Record.Comments__c| Is Blank|✅|




### Required_Comment_Missing_Check

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Decision|
|Label|Required Comment Missing Check|
|Default Connector Label|Default Outcome|


#### Rule Form_missing_required_comment (Form missing required comment)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[Comment_error](#comment_error)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|Run_required_comment_flow.requiredCommentMessage| Is Blank|⬜|




### Run_required_comment_flow

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Subflow|
|Label|Run required comment flow|
|Flow Name|QA_Autolaunched_Check_If_Notes_Required|
|Store Output Automatically|✅|
|Connector|[Required_Comment_Missing_Check](#required_comment_missing_check)|


#### Input Assignments

|Field|Value|
|:-- |:--: |
|<!-- -->|$Record|








___

_Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_