# Associated Contact | After Trigger | Update Useable Emails

## Flow Diagram [(_View History_)](Associated_Contact_After_Trigger_Update_Useable_Emails-history.md)

```mermaid
%% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
%% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
%% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
%% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
%% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram

flowchart TB
START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
click START "#general-information" "3953782501"

Add_Advisor_Email[\"🟰 <em></em><br/>Add Advisor Email"/]:::assignments
click Add_Advisor_Email "#add_advisor_email" "1882377672"

Add_Client_Email[\"🟰 <em></em><br/>Add Client Email"/]:::assignments
click Add_Client_Email "#add_client_email" "1348584005"

Add_Id[\"🟰 <em></em><br/>Add Id"/]:::assignments
click Add_Id "#add_id" "2002748639"

Add_Id_0[\"🟰 <em></em><br/>Add Id"/]:::assignments
click Add_Id_0 "#add_id_0" "3162488974"

Add_TPA_Email[\"🟰 <em></em><br/>Add TPA Email"/]:::assignments
click Add_TPA_Email "#add_tpa_email" "549397927"

Assign_New_Primary[\"🟰 <em></em><br/>Assign New Primary"/]:::assignments
click Assign_New_Primary "#assign_new_primary" "59003246"

Set_Defaults[\"🟰 <em></em><br/>Set Defaults"/]:::assignments
click Set_Defaults "#set_defaults" "2105952839"

AC_Role{"🔀 <em></em><br/>AC Role"}:::decisions
click AC_Role "#ac_role" "1074130158"

Client_Id_Not_Present{"🔀 <em></em><br/>Client Id Not Present"}:::decisions
click Client_Id_Not_Present "#client_id_not_present" "542337975"

Client_Id_Present{"🔀 <em></em><br/>Client Id Present"}:::decisions
click Client_Id_Present "#client_id_present" "1307408819"

Secondary_Client_Email_Verification{"🔀 <em></em><br/>Secondary Client Email Verification"}:::decisions
click Secondary_Client_Email_Verification "#secondary_client_email_verification" "2680690254"

TPA_Email_Verification{"🔀 <em></em><br/>TPA Email Verification"}:::decisions
click TPA_Email_Verification "#tpa_email_verification" "2387003524"

AC_Loop{{"🔁 <em></em><br/>AC Loop"}}:::loops
click AC_Loop "#ac_loop" "834318787"

Get_Related_ACs[("🔍 <em></em><br/>Get Related ACs")]:::recordLookups
click Get_Related_ACs "#get_related_acs" "541417476"

Update_Client_AC[("🛠️ <em></em><br/>Update Client AC")]:::recordUpdates
click Update_Client_AC "#update_client_ac" "3280209879"

Add_Advisor_Email --> AC_Loop
Add_Client_Email --> Client_Id_Not_Present
Add_Id --> AC_Loop
Add_Id_0 --> AC_Loop
Add_TPA_Email --> AC_Loop
Assign_New_Primary --> Update_Client_AC
Set_Defaults --> AC_Loop
AC_Role --> |"Client"| Add_Id
AC_Role --> |"Secondary Client"| Secondary_Client_Email_Verification
AC_Role --> |"Advisor"| Add_Advisor_Email
AC_Role --> |"TPA"| TPA_Email_Verification
AC_Role --> |"Default Outcome"| AC_Loop
Client_Id_Not_Present --> |"Client Not Found"| Add_Id_0
Client_Id_Not_Present --> |"Skip"| AC_Loop
Client_Id_Present --> |"Client Found"| Update_Client_AC
Client_Id_Present --> |"Client Not Found, Secondary Caught"| Assign_New_Primary
Client_Id_Present --> |"Default Outcome"| END_Client_Id_Present
Secondary_Client_Email_Verification --> |"Client Useable Email"| Add_Client_Email
Secondary_Client_Email_Verification --> |"Skip"| Client_Id_Not_Present
TPA_Email_Verification --> |"TPA Useable Email"| Add_TPA_Email
TPA_Email_Verification --> |"Skip"| AC_Loop
AC_Loop --> |"For Each"|AC_Role
AC_Loop ---> |"After Last"|Client_Id_Present
Get_Related_ACs --> Set_Defaults
Update_Client_AC --> END_Update_Client_AC
START --> |"Run Immediately"| Get_Related_ACs
END_Client_Id_Present(( END )):::endClass
END_Update_Client_AC(( END )):::endClass


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
|Object|Associated_Contact__c|
|Process Type| Auto Launched Flow|
|Trigger Type| Record After Save|
|Record Trigger Type| Create And Update|
|Label|Associated Contact | After Trigger | Update Useable Emails|
|Status|Active|
|Environments|Default|
|Interview Label|Associated Contact | After Trigger | Update Useable Emails {!$Flow.CurrentDateTime}|
| Builder Type (PM)|LightningFlowBuilder|
| Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
| Origin Builder Type (PM)|LightningFlowBuilder|


#### Scheduled Paths

|Label|Name|Offset Number|Offset Unit|Record Field|Time Source|Connector|
|:-- |:-- |:-- |:-- |:-- |:-- |:--  |
|<!-- -->|<!-- -->|<!-- -->|<!-- -->|<!-- -->|<!-- -->|[Get_Related_ACs](#get_related_acs)|


#### Filters (logic: **(1 AND 2) OR 3**)

|Filter Id|Field|Operator|Value|
|:-- |:-- |:--:|:--: |
|1|Implementation__c| Is Null|<!-- -->|
|2|Implementation__c| Is Changed|✅|
|3|Useable_Email__c| Is Changed|✅|


## Variables

|Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
|:-- |:--:|:--:|:--:|:--:|:--:|:--  |
|clientAC|SObject|⬜|✅|⬜|Associated_Contact__c|<!-- -->|
|primaryCatch|String|⬜|✅|⬜|<!-- -->|<!-- -->|


## Flow Nodes Details

### Add_Advisor_Email

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Assignment|
|Label|Add Advisor Email|
|Connector|[AC_Loop](#ac_loop)|


#### Assignments

|Assign To Reference|Operator|Value|
|:-- |:--:|:--: |
|clientAC.Primary_Advisor_Email__c| Assign|AC_Loop.Email__c|




### Add_Client_Email

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Assignment|
|Label|Add Client Email|
|Connector|[Client_Id_Not_Present](#client_id_not_present)|


#### Assignments

|Assign To Reference|Operator|Value|
|:-- |:--:|:--: |
|clientAC.Additional_Trustee_Email__c| Assign|AC_Loop.Email__c|




### Add_Id

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Assignment|
|Label|Add Id|
|Connector|[AC_Loop](#ac_loop)|


#### Assignments

|Assign To Reference|Operator|Value|
|:-- |:--:|:--: |
|clientAC.Id| Assign|AC_Loop.Id|




### Add_Id_0

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Assignment|
|Label|Add Id|
|Connector|[AC_Loop](#ac_loop)|


#### Assignments

|Assign To Reference|Operator|Value|
|:-- |:--:|:--: |
|primaryCatch| Assign|AC_Loop.Id|




### Add_TPA_Email

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Assignment|
|Label|Add TPA Email|
|Connector|[AC_Loop](#ac_loop)|


#### Assignments

|Assign To Reference|Operator|Value|
|:-- |:--:|:--: |
|clientAC.TPA_Operational_Email__c| Assign|AC_Loop.Email__c|




### Assign_New_Primary

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Assignment|
|Label|Assign New Primary|
|Connector|[Update_Client_AC](#update_client_ac)|


#### Assignments

|Assign To Reference|Operator|Value|
|:-- |:--:|:--: |
|clientAC.Id| Assign|primaryCatch|
|clientAC.Primary__c| Assign|✅|




### Set_Defaults

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Assignment|
|Label|Set Defaults|
|Connector|[AC_Loop](#ac_loop)|


#### Assignments

|Assign To Reference|Operator|Value|
|:-- |:--:|:--: |
|clientAC.Primary_Advisor_Email__c| Assign|stringValue: ''<br/>|
|clientAC.TPA_Operational_Email__c| Assign|stringValue: ''<br/>|
|clientAC.Id| Assign|stringValue: ''<br/>|
|clientAC.Additional_Trustee_Email__c| Assign|stringValue: ''<br/>|




### AC_Role

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Decision|
|Label|AC Role|
|Default Connector|[AC_Loop](#ac_loop)|
|Default Connector Label|Default Outcome|


#### Rule Client (Client)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[Add_Id](#add_id)|
|Condition Logic|(1 OR 2 OR 3) AND 4|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|AC_Loop.Contact_Role__c| Contains|Plan Sponsor|
|2|AC_Loop.Contact_Role__c| Contains|Trustee|
|3|AC_Loop.Contact_Role__c| Equal To|Authorized Buyer|
|4|AC_Loop.Primary__c| Equal To|✅|




#### Rule Secondary_Client (Secondary Client)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[Secondary_Client_Email_Verification](#secondary_client_email_verification)|
|Condition Logic|(1 OR 2 OR 3) AND 4|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|AC_Loop.Contact_Role__c| Contains|Plan Sponsor|
|2|AC_Loop.Contact_Role__c| Contains|Trustee|
|3|AC_Loop.Contact_Role__c| Equal To|Authorized Buyer|
|4|AC_Loop.Primary__c| Equal To|⬜|




#### Rule Advisor (Advisor)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[Add_Advisor_Email](#add_advisor_email)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|AC_Loop.Contact_Role__c| Equal To|Financial Advisor|
|2|clientAC.Primary_Advisor_Email__c| Equal To|stringValue: ''<br/>|




#### Rule TPA (TPA)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[TPA_Email_Verification](#tpa_email_verification)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|AC_Loop.Contact_Role__c| Contains|TPA|
|2|clientAC.TPA_Operational_Email__c| Equal To|stringValue: ''<br/>|




### Client_Id_Not_Present

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Decision|
|Label|Client Id Not Present|
|Default Connector|[AC_Loop](#ac_loop)|
|Default Connector Label|Skip|


#### Rule Client_Not_Found (Client Not Found)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[Add_Id_0](#add_id_0)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|clientAC.Id| Equal To|stringValue: ''<br/>|




### Client_Id_Present

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Decision|
|Label|Client Id Present|
|Default Connector Label|Default Outcome|


#### Rule Client_Found (Client Found)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[Update_Client_AC](#update_client_ac)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|clientAC.Id| Not Equal To|stringValue: ''<br/>|




#### Rule Client_Not_Found_Secondary_Caught (Client Not Found, Secondary Caught)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[Assign_New_Primary](#assign_new_primary)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|primaryCatch| Is Null|⬜|
|2|clientAC.Id| Is Null|✅|




### Secondary_Client_Email_Verification

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Decision|
|Label|Secondary Client Email Verification|
|Default Connector|[Client_Id_Not_Present](#client_id_not_present)|
|Default Connector Label|Skip|


#### Rule Client_Useable_Email (Client Useable Email)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[Add_Client_Email](#add_client_email)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|clientAC.Additional_Trustee_Email__c| Is Null|✅|




### TPA_Email_Verification

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Decision|
|Label|TPA Email Verification|
|Default Connector|[AC_Loop](#ac_loop)|
|Default Connector Label|Skip|


#### Rule TPA_Useable_Email (TPA Useable Email)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[Add_TPA_Email](#add_tpa_email)|
|Condition Logic|(1 AND 2) OR 3|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|AC_Loop.Contact_Role__c| Equal To|TPA - Sales|
|2|clientAC.TPA_Operational_Email__c| Is Null|✅|
|3|AC_Loop.Contact_Role__c| Equal To|TPA - Onboarding|




### AC_Loop

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Loop|
|Label|AC Loop|
|Collection Reference|[Get_Related_ACs](#get_related_acs)|
|Iteration Order|Asc|
|Next Value Connector|[AC_Role](#ac_role)|
|No More Values Connector|[Client_Id_Present](#client_id_present)|


### Get_Related_ACs

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Lookup|
|Object|Associated_Contact__c|
|Label|Get Related ACs|
|Assign Null Values If No Records Found|⬜|
|Get First Record Only|⬜|
|Sort Field|CreatedDate|
|Sort Order|Asc|
|Store Output Automatically|✅|
|Connector|[Set_Defaults](#set_defaults)|


#### Filters (logic: **and**)

|Filter Id|Field|Operator|Value|
|:-- |:-- |:--:|:--: |
|1|Implementation__c| Equal To|$Record.Implementation__c|
|2|Implementation__c| Is Null|<!-- -->|




### Update_Client_AC

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Update|
|Label|Update Client AC|
|Input Reference|clientAC|






___

_Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_