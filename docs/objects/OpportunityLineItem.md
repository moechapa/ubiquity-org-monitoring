---
hide:
  - path
---

<!-- This file is auto-generated. if you do not want it to be overwritten, set TRUE in the line below -->
<!-- DO_NOT_OVERWRITE_DOC=FALSE -->


## Schema

```mermaid
graph TD
OpportunityLineItem["OpportunityLineItem"]:::mainObject
click OpportunityLineItem "/objects/OpportunityLineItem/"
Account["Account"]:::object
click Account "/objects/Account/"

OpportunityLineItem -->|Account__c| Account
Account -->|Linked_Company__c| Account
Account -->|BD_Parent__c| Account

classDef object fill:#D6E9FF,stroke:#0070D2,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef customObject fill:#FFF4C2,stroke:#CCAA00,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef customObjectManaged fill:#FFD8B2,stroke:#CC5500,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef mainObject fill:#FFB3B3,stroke:#A94442,stroke-width:4px,rx:14px,ry:14px,shadow:drop,color:#333,font-weight:bold;
linkStyle 0,1,2 stroke:#A6A6A6,stroke-width:2px;

```


<!-- Object description -->

## Fields

| Name      | Label | Type | Description |
| :-------- | :---- | :--: | :---------- | 
| Account__c | Account | Lookup | undefined |
| Callout_Standard_Price_Difference__c | Callout Standard Price Difference | Checkbox | undefined |
| Commissionable_Amount__c | Commissionable Amount (Deprecated) | Currency | undefined |
| Commissionable_Amount_Editable__c | Commissionable Amount | Currency | Commission to be paid.  Modified by pricebook entry fee and/or opportunity promotion(s). |
| Description |  |  | undefined |
| Discount |  |  | undefined |
| Discount__c | Discount ($) | Currency | undefined |
| Discount_Amount__c | Discounted Dollar Amount | Currency | undefined |
| Discount_Percentage__c | Discount (%) | Percent | undefined |
| ListPrice |  |  | undefined |
| Name |  |  | undefined |
| OpportunityId |  | Lookup | undefined |
| Price_Book__c | Price Book | Text | undefined |
| Product_Family__c | Product Family | Text | undefined |
| Product_mp__c | Product | Text | Do not delete this field, it is created and used by "Easy Pricing for Opportunity" installed package. |
| Product_Name__c | Product Name | Text | undefined |
| Product2Id |  | Lookup | undefined |
| ProductCode |  |  | undefined |
| Promotion_Applied__c | Promotion Applied | Checkbox | undefined |
| Quantity |  |  | undefined |
| Quantity__c | Quantity | Number | undefined |
| ServiceDate |  |  | undefined |
| Standard_Price__c | Standard Price | Currency | undefined |
| Subtotal |  |  | undefined |
| TotalPrice |  |  | undefined |
| UnitPrice |  |  | undefined |


## Related Flows

| Object | Name      | Type | Description |
| :----  | :-------- | :--: | :---------- | 
| 💻 | [Opportunity_Apply_Discount_when_Flat_Amount_is_Entered](../flows/Opportunity_Apply_Discount_when_Flat_Amount_is_Entered.md) [🕒](../flows/Opportunity_Apply_Discount_when_Flat_Amount_is_Entered-history.md) |  Auto Launched Flow | <!-- --> |
| 💻 | [Opportunity_Autolaunched_Calculate_Commission](../flows/Opportunity_Autolaunched_Calculate_Commission.md) [🕒](../flows/Opportunity_Autolaunched_Calculate_Commission-history.md) |  Auto Launched Flow | Calculates commission on opportunity by totaling commission from opp products.  Subtracts pricebook's partner fee from commission IF fee isn't being overridden by product-level fee. |
| 💻 | [Opportunity_Autolaunched_Product_Check](../flows/Opportunity_Autolaunched_Product_Check.md) [🕒](../flows/Opportunity_Autolaunched_Product_Check-history.md) |  Auto Launched Flow | <!-- --> |
| 💻 | [Opportunity_Process_Create_Upgrade_Products](../flows/Opportunity_Process_Create_Upgrade_Products.md) [🕒](../flows/Opportunity_Process_Create_Upgrade_Products-history.md) |  Auto Launched Flow | Changed "Service Option" in get elements to account for Simply products |
| 💻 | [Opportunity_Screen_Approval_Helper](../flows/Opportunity_Screen_Approval_Helper.md) [🕒](../flows/Opportunity_Screen_Approval_Helper-history.md) |  Screen Flow | <!-- --> |
| 💻 | [Update_Opportunity_Line_Items](../flows/Update_Opportunity_Line_Items.md) [🕒](../flows/Update_Opportunity_Line_Items-history.md) |  Auto Launched Flow | When Opportunity is created or edited, add or edit the associated products. |
| 💻 | [Update_Promotional_Discount](../flows/Update_Promotional_Discount.md) [🕒](../flows/Update_Promotional_Discount-history.md) |  Auto Launched Flow | If a Promotion is present, apply specified discount to Products |
| Implementation__c | [Implementation_Before_Trigger_Update_Fees](../flows/Implementation_Before_Trigger_Update_Fees.md) [🕒](../flows/Implementation_Before_Trigger_Update_Fees-history.md) |  Record Before Save | Updated so employee fee for Sallus is 4.5 (from 9) |
| Opportunity | [Opportunity_After_Save_Product_Trigger](../flows/Opportunity_After_Save_Product_Trigger.md) [🕒](../flows/Opportunity_After_Save_Product_Trigger-history.md) |  Record After Save | Added promo check |
| Opportunity | [Opportunity_After_Trigger_Add_Edit_Products](../flows/Opportunity_After_Trigger_Add_Edit_Products.md) [🕒](../flows/Opportunity_After_Trigger_Add_Edit_Products-history.md) |  Record After Save | Updated so that the reset box is properly toggled "off" when used to trigger flow |
| Opportunity | [Opportunity_Before_Save_Calculate_Commission](../flows/Opportunity_Before_Save_Calculate_Commission.md) [🕒](../flows/Opportunity_Before_Save_Calculate_Commission-history.md) |  Record Before Save | Fixed null commission amount to properly mirror null amount |
| Opportunity | [Sales_Add_401_k_Products](../flows/Sales_Add_401_k_Products.md) [🕒](../flows/Sales_Add_401_k_Products-history.md) |  Workflow | Adds Products to 401(k) Opporunities |
| OpportunityLineItem | [Opportunity_Product_Before_Save_Apply_Discount](../flows/Opportunity_Product_Before_Save_Apply_Discount.md) [🕒](../flows/Opportunity_Product_Before_Save_Apply_Discount-history.md) |  Record Before Save | Syncs discount percentage w/ dollar amount (and the reverse), then updates sale price.  Runs whenever opp prod is created OR discount is changed |
| OpportunityLineItem | [Opportunity_Product_Before_Save_Set_Commission](../flows/Opportunity_Product_Before_Save_Set_Commission.md) [🕒](../flows/Opportunity_Product_Before_Save_Set_Commission-history.md) |  Record Before Save | Calculates commission for opp product.  Also checks for promos and applies in case product is being created after promo<br/><br/>Added update to assist w launch.  Now runs when comm is blank |
| OpportunityLineItem | [Sales_Enforce_Sales_Price](../flows/Sales_Enforce_Sales_Price.md) [🕒](../flows/Sales_Enforce_Sales_Price-history.md) |  Workflow | Ensures Rev Schedule is Reset when Applying Discount to Products |




## Related Lightning Pages

| Lightning Page | Type |
| :----      | :--: | 
| [Alt_Opportunity_Layout](../pages/Alt_Opportunity_Layout.md) |  Record Page |
| [Default_Opportunity_Layout](../pages/Default_Opportunity_Layout.md) |  Record Page |
| [Dynamic_Opp_Page](../pages/Dynamic_Opp_Page.md) |  Record Page |


## Related Profiles

| Profile | User License |
| :----      | :--: | 
| [Admin](../profiles/Admin.md) |  Salesforce |
| [Analytics Cloud Integration User](../profiles/Analytics%20Cloud%20Integration%20User.md) |  Analytics  Cloud  Integration  User |
| [Analytics Cloud Security User](../profiles/Analytics%20Cloud%20Security%20User.md) |  Analytics  Cloud  Integration  User |
| [Anypoint Integration](../profiles/Anypoint%20Integration.md) |  Identity |
| [B2BMA Integration User](../profiles/B2BMA%20Integration%20User.md) |  B2 B M A  Integration  User |
| [Billing User](../profiles/Billing%20User.md) |  Salesforce |
| [Bot Profile](../profiles/Bot%20Profile.md) |  Salesforce |
| [Business Development](../profiles/Business%20Development.md) |  Salesforce |
| [Call Center](../profiles/Call%20Center.md) |  Salesforce |
| [Chatter External User](../profiles/Chatter%20External%20User.md) |  Chatter  External |
| [Chatter Free User](../profiles/Chatter%20Free%20User.md) |  Chatter  Free |
| [Chatter Moderator User](../profiles/Chatter%20Moderator%20User.md) |  Chatter  Free |
| [Client Onboarding - Admin](../profiles/Client%20Onboarding%20-%20Admin.md) |  Salesforce |
| [Client Onboarding - RM](../profiles/Client%20Onboarding%20-%20RM.md) |  Salesforce |
| [Client Servicing Team](../profiles/Client%20Servicing%20Team.md) |  Salesforce |
| [Compliance Manager](../profiles/Compliance%20Manager.md) |  Salesforce |
| [ContractManager](../profiles/ContractManager.md) |  Salesforce |
| [Director of Operations](../profiles/Director%20of%20Operations.md) |  Salesforce |
| [Director of Sales](../profiles/Director%20of%20Sales.md) |  Salesforce |
| [Distributions](../profiles/Distributions.md) |  Salesforce |
| [Einstein Agent User](../profiles/Einstein%20Agent%20User.md) |  Einstein  Agent |
| [ESW_Agentforce_MIAW_1748035300267 Profile](../profiles/ESW_Agentforce_MIAW_1748035300267%20Profile.md) |  Guest  User  License |
| [ESW_Agentforce_MIAW_1748385215843 Profile](../profiles/ESW_Agentforce_MIAW_1748385215843%20Profile.md) |  Guest  User  License |
| [ESW_CE_Chat_1692890394498 Profile](../profiles/ESW_CE_Chat_1692890394498%20Profile.md) |  Guest  User  License |
| [ESW_CE_Chat_Moe_1693182845676 Profile](../profiles/ESW_CE_Chat_Moe_1693182845676%20Profile.md) |  Guest  User  License |
| [ESW_Login_Help_1697133738638 Profile](../profiles/ESW_Login_Help_1697133738638%20Profile.md) |  Guest  User  License |
| [ESW_Login_Help_Simply_1700075140889 Profile](../profiles/ESW_Login_Help_Simply_1700075140889%20Profile.md) |  Guest  User  License |
| [ESW_Omni_Messaging_1694183770479 Profile](../profiles/ESW_Omni_Messaging_1694183770479%20Profile.md) |  Guest  User  License |
| [ESW_Omni_Messaging_CO_1696448547822 Profile](../profiles/ESW_Omni_Messaging_CO_1696448547822%20Profile.md) |  Guest  User  License |
| [ESW_Omni_Messaging_Sallus_1700075448386 Profile](../profiles/ESW_Omni_Messaging_Sallus_1700075448386%20Profile.md) |  Guest  User  License |
| [ESW_Omni_Messaging_Simply_1700076370188 Profile](../profiles/ESW_Omni_Messaging_Simply_1700076370188%20Profile.md) |  Guest  User  License |
| [ESW_QA_Login_1699666348585 Profile](../profiles/ESW_QA_Login_1699666348585%20Profile.md) |  Guest  User  License |
| [ESW_QA_Messaging_1699974036493 Profile](../profiles/ESW_QA_Messaging_1699974036493%20Profile.md) |  Guest  User  License |
| [ESW_Sales_Chat_1697460991337 Profile](../profiles/ESW_Sales_Chat_1697460991337%20Profile.md) |  Guest  User  License |
| [ESW_Sallus_Login_Chat_1700072925200 Profile](../profiles/ESW_Sallus_Login_Chat_1700072925200%20Profile.md) |  Guest  User  License |
| [External Apps Login User](../profiles/External%20Apps%20Login%20User.md) |  External  Apps  Login |
| [Finance Manager Lightning](../profiles/Finance%20Manager%20Lightning.md) |  Salesforce |
| [Guest License User](../profiles/Guest%20License%20User.md) |  Guest  User  License |
| [Help Center Profile](../profiles/Help%20Center%20Profile.md) |  Guest  User  License |
| [Identity User](../profiles/Identity%20User.md) |  Identity |
| [Incoming_SMS Profile](../profiles/Incoming_SMS%20Profile.md) |  Guest  User  License |
| [IT](../profiles/IT.md) |  Salesforce |
| [Leadership Lightning](../profiles/Leadership%20Lightning.md) |  Salesforce |
| [Leadership](../profiles/Leadership.md) |  Salesforce |
| [Learning %26 Development](../profiles/Learning%20%2526%20Development.md) |  Salesforce |
| [Lightning Client Onboarding](../profiles/Lightning%20Client%20Onboarding.md) |  Salesforce |
| [Lightning Compliance](../profiles/Lightning%20Compliance.md) |  Salesforce |
| [Lightning Saver User](../profiles/Lightning%20Saver%20User.md) |  Salesforce |
| [Lightning Service Manager](../profiles/Lightning%20Service%20Manager.md) |  Salesforce |
| [Lightning Service User](../profiles/Lightning%20Service%20User.md) |  Salesforce |
| [Marketing Team](../profiles/Marketing%20Team.md) |  Salesforce |
| [MarketingProfile](../profiles/MarketingProfile.md) |  Salesforce |
| [Master Administrator](../profiles/Master%20Administrator.md) |  Salesforce |
| [Minimum Access - API Only Integrations](../profiles/Minimum%20Access%20-%20API%20Only%20Integrations.md) |  Salesforce  Integration |
| [Minimum Access - Salesforce](../profiles/Minimum%20Access%20-%20Salesforce.md) |  Salesforce |
| [myubiquity Profile](../profiles/myubiquity%20Profile.md) |  Guest  User  License |
| [Operations VP](../profiles/Operations%20VP.md) |  Salesforce |
| [Operations](../profiles/Operations.md) |  Salesforce |
| [Paradigm Help Center Profile](../profiles/Paradigm%20Help%20Center%20Profile.md) |  Guest  User  License |
| [Payroll Koncierge](../profiles/Payroll%20Koncierge.md) |  Salesforce |
| [Payroll Team](../profiles/Payroll%20Team.md) |  Salesforce |
| [People %26 Culture](../profiles/People%20%2526%20Culture.md) |  Salesforce |
| [Pre-chat Site Profile](../profiles/Pre-chat%20Site%20Profile.md) |  Guest  User  License |
| [Product Innovation Leadership](../profiles/Product%20Innovation%20Leadership.md) |  Salesforce |
| [Product Innovation User](../profiles/Product%20Innovation%20User.md) |  Salesforce |
| [PSM Team](../profiles/PSM%20Team.md) |  Salesforce |
| [R%26W](../profiles/R%2526W.md) |  Salesforce |
| [Read Only](../profiles/Read%20Only.md) |  Salesforce |
| [Sales Administrator](../profiles/Sales%20Administrator.md) |  Salesforce |
| [Sales Coordinator](../profiles/Sales%20Coordinator.md) |  Salesforce |
| [Sales Insights Integration User](../profiles/Sales%20Insights%20Integration%20User.md) |  Sales  Insights  Integration  User |
| [Sales Team - Limited](../profiles/Sales%20Team%20-%20Limited.md) |  Salesforce |
| [Sales Team](../profiles/Sales%20Team.md) |  Salesforce |
| [Salesforce API Only System Integrations](../profiles/Salesforce%20API%20Only%20System%20Integrations.md) |  Salesforce  Integration |
| [SalesforceIQ Integration User](../profiles/SalesforceIQ%20Integration%20User.md) |  Salesforce I Q  Integration  User |
| [Saver Manager](../profiles/Saver%20Manager.md) |  Salesforce |
| [Simple Survey Profile](../profiles/Simple%20Survey%20Profile.md) |  Guest  User  License |
| [Simply Help Center Profile](../profiles/Simply%20Help%20Center%20Profile.md) |  Guest  User  License |
| [SolutionManager](../profiles/SolutionManager.md) |  Salesforce |
| [Standard](../profiles/Standard.md) |  Salesforce |
| [StandardAul](../profiles/StandardAul.md) |  Salesforce  Platform |
| [Super System Administrator](../profiles/Super%20System%20Administrator.md) |  Salesforce |
| [Sys Dev Admin](../profiles/Sys%20Dev%20Admin.md) |  Salesforce |
| [Transitions Team](../profiles/Transitions%20Team.md) |  Salesforce |
| [Ubiquity Help Center Profile](../profiles/Ubiquity%20Help%20Center%20Profile.md) |  Guest  User  License |
| [Zoom Webhooks Profile](../profiles/Zoom%20Webhooks%20Profile.md) |  Guest  User  License |


## Related Permission Sets

| Permission Set | User License |
| :----      | :--: | 
| [Master](../permissionsets/Master.md) | None |
| [sfdcInternalInt__sfdc_slack](../permissionsets/sfdcInternalInt__sfdc_slack.md) | None |


_Documentation generated with [sfdx-hardis](https://sfdx-hardis.cloudity.com), by [Cloudity](https://www.cloudity.com/) & [friends](https://github.com/hardisgroupcom/sfdx-hardis/graphs/contributors)_
