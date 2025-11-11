# Opportunity | Scheduled | 7 days to close

## Flow Diagram [(_View History_)](Opportunity_Scheduled_7_days_to_close-history.md)

```mermaid
%% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
%% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
%% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
%% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
%% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram

flowchart TB
START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Scheduled</b>"]):::startClass
click START "#general-information" "3255829383"

Alert_Opp_Owner("📧 <em></em><br/>Alert Opp Owner"):::actionCalls
click Alert_Opp_Owner "#alert_opp_owner" "2101919119"

Define_AC_Count[\"🟰 <em></em><br/>Define AC Count"/]:::assignments
click Define_AC_Count "#define_ac_count" "1751511929"

Define_Backup_Contact[\"🟰 <em></em><br/>Define Backup Contact"/]:::assignments
click Define_Backup_Contact "#define_backup_contact" "2752245073"

Define_contact_values_primary_found[\"🟰 <em></em><br/>Define contact values - primary found"/]:::assignments
click Define_contact_values_primary_found "#define_contact_values_primary_found" "993929161"

Define_contact_values_single_AC[\"🟰 <em></em><br/>Define contact values - single AC"/]:::assignments
click Define_contact_values_single_AC "#define_contact_values_single_ac" "469583780"

set_contact_values_using_backup[\"🟰 <em></em><br/>set contact values using backup"/]:::assignments
click set_contact_values_using_backup "#set_contact_values_using_backup" "1969441380"

Close_Date_7_Days_Out{"🔀 <em></em><br/>Close Date 7 Days Out"}:::decisions
click Close_Date_7_Days_Out "#close_date_7_days_out" "1077180808"

How_goes_the_search{"🔀 <em></em><br/>How goes the search"}:::decisions
click How_goes_the_search "#how_goes_the_search" "1600328664"

Primary_Check{"🔀 <em></em><br/>Primary Check"}:::decisions
click Primary_Check "#primary_check" "3244468710"

who_are_we_going_with{"🔀 <em></em><br/>who are we going with"}:::decisions
click who_are_we_going_with "#who_are_we_going_with" "3644085486"

AC_Eval_Loop{{"🔁 <em></em><br/>AC Eval Loop"}}:::loops
click AC_Eval_Loop "#ac_eval_loop" "2823282241"

Pull_AC_from_collection{{"🔁 <em></em><br/>Pull AC from collection"}}:::loops
click Pull_AC_from_collection "#pull_ac_from_collection" "4147687742"

Grab_Opp_ACs[("🔍 <em></em><br/>Grab Opp ACs")]:::recordLookups
click Grab_Opp_ACs "#grab_opp_acs" "1183287529"

Alert_Opp_Owner --> END_Alert_Opp_Owner
Define_AC_Count --> How_goes_the_search
Define_Backup_Contact --> AC_Eval_Loop
Define_contact_values_primary_found --> AC_Eval_Loop
Define_contact_values_single_AC --> Pull_AC_from_collection
set_contact_values_using_backup --> Alert_Opp_Owner
Close_Date_7_Days_Out --> |"Needs Alert"| Grab_Opp_ACs
Close_Date_7_Days_Out --> |"Default Outcome"| END_Close_Date_7_Days_Out
How_goes_the_search --> |"the harvest is plentiful"| AC_Eval_Loop
How_goes_the_search --> |"we will make do"| Pull_AC_from_collection
How_goes_the_search --> |"famine"| Alert_Opp_Owner
Primary_Check --> |"Primary Found"| Define_contact_values_primary_found
Primary_Check --> |"Authorized Buyer Found"| Define_Backup_Contact
Primary_Check --> |"Default Outcome"| AC_Eval_Loop
who_are_we_going_with --> |"Use primary AC"| Alert_Opp_Owner
who_are_we_going_with --> |"Use backup AC"| set_contact_values_using_backup
who_are_we_going_with --> |"oops"| Alert_Opp_Owner
AC_Eval_Loop --> |"For Each"|Primary_Check
AC_Eval_Loop ---> |"After Last"|who_are_we_going_with
Pull_AC_from_collection --> |"For Each"|Define_contact_values_single_AC
Pull_AC_from_collection ---> |"After Last"|Alert_Opp_Owner
Grab_Opp_ACs --> Define_AC_Count
START -->  Close_Date_7_Days_Out
END_Alert_Opp_Owner(( END )):::endClass
END_Close_Date_7_Days_Out(( END )):::endClass


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
|Object|Opportunity|
|Process Type| Auto Launched Flow|
|Trigger Type| Scheduled|
|Label|Opportunity | Scheduled | 7 days to close|
|Status|Active|
|Description|Added check for primary AC along with authorized buyer.  Fixed contact link showing up when no contact found.|
|Environments|Default|
|Interview Label|Opportunity | Scheduled | 7 days to close {!$Flow.CurrentDateTime}|
| Builder Type (PM)|LightningFlowBuilder|
| Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
| Origin Builder Type (PM)|LightningFlowBuilder|
|Connector|[Close_Date_7_Days_Out](#close_date_7_days_out)|
|Next Node|[Close_Date_7_Days_Out](#close_date_7_days_out)|


#### Schedules

|Frequency|Start Date|Start Time|
|:-- |:--:|:--: |
|Daily|Jun 1, 2023|06:00|


#### Filters (logic: **1 AND (2 OR 3 OR 4)**)

|Filter Id|Field|Operator|Value|
|:-- |:-- |:--:|:--: |
|1|IsClosed| Equal To|⬜|
|2|Type| Equal To|401(k) Plan Sale|
|3|Type| Equal To|Single(k)|
|4|Type| Equal To|Upgrade|


## Variables

|Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
|:-- |:--:|:--:|:--:|:--:|:--:|:--  |
|AcCount|Number|⬜|⬜|⬜|<!-- -->|<!-- -->|
|backupAC|SObject|⬜|⬜|⬜|Associated_Contact__c|<!-- -->|
|backupEmail|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
|backupFound|Boolean|⬜|⬜|⬜|<!-- -->|<!-- -->|
|backupId|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
|backupName|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
|backupPhone|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
|contactEmail|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
|contactId|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
|contactName|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
|contactPhoneNumber|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
|foundPrimary|Boolean|⬜|⬜|⬜|<!-- -->|<!-- -->|
|oppACs|SObject|✅|⬜|⬜|Associated_Contact__c|<!-- -->|
|primaryAC|SObject|⬜|⬜|⬜|Associated_Contact__c|<!-- -->|


## Formulas

|Name|Data Type|Expression|Description|
|:-- |:--:|:-- |:--  |
|contactInfo|String|IF(NOT(ISBLANK({!contactId})),<br/>"Primary Contact Info:" + BR() +<br/>IF(NOT(ISBLANK({!contactName})),"Name: " + {!contactName} + BR(),"") +<br/>IF(NOT(ISBLANK({!contactPhoneNumber})),"Phone: " + {!contactPhoneNumber} + BR(),"") +<br/>IF(NOT(ISBLANK({!contactEmail})),"Email: " + {!contactEmail} + BR(),"") +<br/>"Link: " + "https://myubiquity.lightning.force.com/lightning/r/Contact/"+{!contactId}+"/view" + BR()<br/>,"")|<!-- -->|
|emailSubject|String|"Opportunity expiration warning - " + {!$Record.Name}|<!-- -->|
|x7daysOut|Date|{!$Flow.CurrentDate} + 7|<!-- -->|


## Flow Nodes Details

### Alert_Opp_Owner

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Action Call|
|Label|Alert Opp Owner|
|Action Type|Email Simple|
|Action Name|emailSimple|
|Flow Transaction Model|CurrentTransaction|
|Name Segment|emailSimple|
|Email Body (input)|emailBody|
|Email Addresses (input)|$Record.Owner.Email|
|Sender Type (input)|DefaultWorkflowUser|
|Email Subject (input)|emailSubject|


### Define_AC_Count

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Assignment|
|Label|Define AC Count|
|Connector|[How_goes_the_search](#how_goes_the_search)|


#### Assignments

|Assign To Reference|Operator|Value|
|:-- |:--:|:--: |
|AcCount| Assign Count|oppACs|




### Define_Backup_Contact

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Assignment|
|Label|Define Backup Contact|
|Connector|[AC_Eval_Loop](#ac_eval_loop)|


#### Assignments

|Assign To Reference|Operator|Value|
|:-- |:--:|:--: |
|backupName| Assign|AC_Eval_Loop.Full_Name__c|
|backupPhone| Assign|AC_Eval_Loop.Contact__r.Phone|
|backupEmail| Assign|AC_Eval_Loop.Contact__r.Email|
|backupFound| Assign|✅|
|backupId| Assign|AC_Eval_Loop.Contact__c|




### Define_contact_values_primary_found

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Assignment|
|Label|Define contact values - primary found|
|Connector|[AC_Eval_Loop](#ac_eval_loop)|


#### Assignments

|Assign To Reference|Operator|Value|
|:-- |:--:|:--: |
|contactPhoneNumber| Assign|AC_Eval_Loop.Contact__r.Phone|
|contactName| Assign|AC_Eval_Loop.Full_Name__c|
|contactEmail| Assign|AC_Eval_Loop.Contact__r.Email|
|foundPrimary| Assign|✅|
|contactId| Assign|AC_Eval_Loop.Contact__c|




### Define_contact_values_single_AC

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Assignment|
|Label|Define contact values - single AC|
|Connector|[Pull_AC_from_collection](#pull_ac_from_collection)|


#### Assignments

|Assign To Reference|Operator|Value|
|:-- |:--:|:--: |
|contactPhoneNumber| Assign|Pull_AC_from_collection.Contact__r.Phone|
|contactName| Assign|Pull_AC_from_collection.Full_Name__c|
|contactEmail| Assign|Pull_AC_from_collection.Contact__r.Email|
|contactId| Assign|Pull_AC_from_collection.Contact__c|




### set_contact_values_using_backup

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Assignment|
|Label|set contact values using backup|
|Connector|[Alert_Opp_Owner](#alert_opp_owner)|


#### Assignments

|Assign To Reference|Operator|Value|
|:-- |:--:|:--: |
|contactEmail| Assign|backupEmail|
|contactName| Assign|backupName|
|contactPhoneNumber| Assign|backupPhone|
|contactId| Assign|backupId|




### Close_Date_7_Days_Out

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Decision|
|Label|Close Date 7 Days Out|
|Default Connector Label|Default Outcome|


#### Rule Needs_Alert (Needs Alert)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[Grab_Opp_ACs](#grab_opp_acs)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|$Record.CloseDate| Equal To|x7daysOut|




### How_goes_the_search

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Decision|
|Label|How goes the search|
|Default Connector|[Alert_Opp_Owner](#alert_opp_owner)|
|Default Connector Label|famine|


#### Rule the_harvest_is_plentiful (the harvest is plentiful)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[AC_Eval_Loop](#ac_eval_loop)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|AcCount| Greater Than|1|




#### Rule we_will_make_do (we will make do)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[Pull_AC_from_collection](#pull_ac_from_collection)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|AcCount| Equal To|1|




### Primary_Check

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Decision|
|Label|Primary Check|
|Default Connector|[AC_Eval_Loop](#ac_eval_loop)|
|Default Connector Label|Default Outcome|


#### Rule Primary_Found (Primary Found)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[Define_contact_values_primary_found](#define_contact_values_primary_found)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|AC_Eval_Loop.Primary__c| Equal To|✅|
|2|foundPrimary| Equal To|⬜|




#### Rule Authorized_Buyer_Found (Authorized Buyer Found)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[Define_Backup_Contact](#define_backup_contact)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|AC_Eval_Loop.Contact_Role__c| Equal To|Authorized Buyer|
|2|foundPrimary| Equal To|⬜|
|3|backupFound| Equal To|⬜|




### who_are_we_going_with

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Decision|
|Label|who are we going with|
|Default Connector|[Alert_Opp_Owner](#alert_opp_owner)|
|Default Connector Label|oops|


#### Rule Use_primary_AC (Use primary AC)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[Alert_Opp_Owner](#alert_opp_owner)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|foundPrimary| Equal To|✅|




#### Rule Use_backup_AC (Use backup AC)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[set_contact_values_using_backup](#set_contact_values_using_backup)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|backupFound| Equal To|✅|




### AC_Eval_Loop

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Loop|
|Label|AC Eval Loop|
|Collection Reference|oppACs|
|Iteration Order|Asc|
|Next Value Connector|[Primary_Check](#primary_check)|
|No More Values Connector|[who_are_we_going_with](#who_are_we_going_with)|


### Pull_AC_from_collection

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Loop|
|Label|Pull AC from collection|
|Collection Reference|oppACs|
|Iteration Order|Asc|
|Next Value Connector|[Define_contact_values_single_AC](#define_contact_values_single_ac)|
|No More Values Connector|[Alert_Opp_Owner](#alert_opp_owner)|


### Grab_Opp_ACs

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Lookup|
|Object|Associated_Contact__c|
|Label|Grab Opp ACs|
|Assign Null Values If No Records Found|✅|
|Output Reference|oppACs|
|Queried Fields|- Id<br/>- Contact__c<br/>- Full_Name__c<br/>- Contact_Role__c<br/>- Primary__c<br/>|
|Connector|[Define_AC_Count](#define_ac_count)|


#### Filters (logic: **and**)

|Filter Id|Field|Operator|Value|
|:-- |:-- |:--:|:--: |
|1|Opportunity__c| Equal To|$Record.Id|








___

_Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_