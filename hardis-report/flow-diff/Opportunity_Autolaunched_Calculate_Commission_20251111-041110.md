# Opportunity | Autolaunched | Calculate Commission

## Flow Diagram [(_View History_)](Opportunity_Autolaunched_Calculate_Commission-history.md)

```mermaid
%% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
%% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
%% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
%% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
%% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram

flowchart TB
START(["START<br/><b>AutoLaunched Flow</b></br>"]):::startClass
click START "#general-information" "1539456733"

Add_comm[\"🟰 <em></em><br/>Add comm"/]:::assignments
click Add_comm "#add_comm" "409743792"

Set_Has_Product_Fee[\"🟰 <em></em><br/>Set Has Product Fee"/]:::assignments
click Set_Has_Product_Fee "#set_has_product_fee" "1348474085"

Subtract_Partner_Fee_From_PB[\"🟰 <em></em><br/>Subtract Partner Fee From PB"/]:::assignments
click Subtract_Partner_Fee_From_PB "#subtract_partner_fee_from_pb" "1683078437"

Check_Fee_Override{"🔀 <em></em><br/>Check Fee Override"}:::decisions
click Check_Fee_Override "#check_fee_override" "1485068328"

Check_for_Partner_Fee{"🔀 <em></em><br/>Check for Partner Fee"}:::decisions
click Check_for_Partner_Fee "#check_for_partner_fee" "217198495"

Prod_Loop{{"🔁 <em></em><br/>Prod Loop"}}:::loops
click Prod_Loop "#prod_loop" "1025754935"

Get_Opp_Products[("🔍 <em></em><br/>Get Opp Products")]:::recordLookups
click Get_Opp_Products "#get_opp_products" "3453764028"

Add_comm --> Check_for_Partner_Fee
Set_Has_Product_Fee --> Prod_Loop
Subtract_Partner_Fee_From_PB --> END_Subtract_Partner_Fee_From_PB
Check_Fee_Override --> |"Use Pricebook Fee"| Subtract_Partner_Fee_From_PB
Check_for_Partner_Fee --> |"Has Fee"| Set_Has_Product_Fee
Check_for_Partner_Fee --> |"Default Outcome"| Prod_Loop
Prod_Loop --> |"For Each"|Add_comm
Prod_Loop ---> |"After Last"|Check_Fee_Override
Get_Opp_Products --> Prod_Loop
START -->  Get_Opp_Products
END_Subtract_Partner_Fee_From_PB(( END )):::endClass


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
|Label|Opportunity | Autolaunched | Calculate Commission|
|Status|Active|
|Description|Calculates commission on opportunity by totaling commission from opp products.  Subtracts pricebook's partner fee from commission IF fee isn't being overridden by product-level fee.|
|Environments|Default|
|Interview Label|Opportunity | Autolaunched | Calculate Commission {!$Flow.CurrentDateTime}|
| Builder Type (PM)|LightningFlowBuilder|
| Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
| Origin Builder Type (PM)|LightningFlowBuilder|
|Connector|[Get_Opp_Products](#get_opp_products)|
|Next Node|[Get_Opp_Products](#get_opp_products)|


## Variables

|Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
|:-- |:--:|:--:|:--:|:--:|:--:|:--  |
|comm|Currency|⬜|⬜|✅|<!-- -->|<!-- -->|
|currentItem_Filter_for_prod_specific_fees|SObject|⬜|⬜|⬜|PricebookEntry|<!-- -->|
|disc|Currency|⬜|⬜|✅|<!-- -->|<!-- -->|
|hasProductFee|Boolean|⬜|⬜|⬜|<!-- -->|<!-- -->|
|oppRecord|SObject|⬜|✅|⬜|Opportunity|<!-- -->|
|partnerFee|Currency|⬜|⬜|⬜|<!-- -->|<!-- -->|


## Flow Nodes Details

### Add_comm

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Assignment|
|Label|Add comm|
|Connector|[Check_for_Partner_Fee](#check_for_partner_fee)|


#### Assignments

|Assign To Reference|Operator|Value|
|:-- |:--:|:--: |
|comm| Add|Prod_Loop.Commissionable_Amount_Editable__c|
|disc| Add|Prod_Loop.Discount__c|




### Set_Has_Product_Fee

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Assignment|
|Label|Set Has Product Fee|
|Connector|[Prod_Loop](#prod_loop)|


#### Assignments

|Assign To Reference|Operator|Value|
|:-- |:--:|:--: |
|hasProductFee| Assign|✅|




### Subtract_Partner_Fee_From_PB

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Assignment|
|Label|Subtract Partner Fee From PB|


#### Assignments

|Assign To Reference|Operator|Value|
|:-- |:--:|:--: |
|comm| Subtract|oppRecord.Pricebook2.Partner_Fee__c|




### Check_Fee_Override

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Decision|
|Label|Check Fee Override|
|Default Connector|[Subtract_Partner_Fee_From_PB](#subtract_partner_fee_from_pb)|
|Default Connector Label|Use Pricebook Fee|


#### Rule Use_Product_Fee (Use Product Fee)

|<!-- -->|<!-- -->|
|:---|:---|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|hasProductFee| Equal To|✅|




### Check_for_Partner_Fee

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Decision|
|Label|Check for Partner Fee|
|Default Connector|[Prod_Loop](#prod_loop)|
|Default Connector Label|Default Outcome|


#### Rule Has_Fee (Has Fee)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[Set_Has_Product_Fee](#set_has_product_fee)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|Prod_Loop.PricebookEntry.Partner_Fee__c| Is Blank|⬜|




### Prod_Loop

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Loop|
|Label|Prod Loop|
|Collection Reference|[Get_Opp_Products](#get_opp_products)|
|Iteration Order|Asc|
|Next Value Connector|[Add_comm](#add_comm)|
|No More Values Connector|[Check_Fee_Override](#check_fee_override)|


### Get_Opp_Products

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Lookup|
|Object|OpportunityLineItem|
|Label|Get Opp Products|
|Assign Null Values If No Records Found|⬜|
|Get First Record Only|⬜|
|Queried Fields|- Id<br/>- Commissionable_Amount_Editable__c<br/>- PricebookEntryId<br/>- Discount__c<br/>|
|Store Output Automatically|✅|
|Connector|[Prod_Loop](#prod_loop)|


#### Filters (logic: **and**)

|Filter Id|Field|Operator|Value|
|:-- |:-- |:--:|:--: |
|1|OpportunityId| Equal To|oppRecord.Id|








___

_Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_