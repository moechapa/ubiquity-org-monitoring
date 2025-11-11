---
hide:
  - path
---

<!-- This file is auto-generated. if you do not want it to be overwritten, set TRUE in the line below -->
<!-- DO_NOT_OVERWRITE_DOC=FALSE -->

<!-- Assignment Rule description -->
## Assignment Rules list
## 2024 Rules
| Order |  Criteria | Assigned To | Assigned To Type | Email |
| :--: | :------------- | :--: | :--: | :--: |
| 1 | (**Lead**: LeadSourceDetail__c _equals_ BrightTALK)<br> OR (**Lead**: campaign_code__c _equals_ Dental Investment Group Referral)<br> |  dsagini@myubiquity.com | User | false |
| 2 | (**Lead**: LeadSourceDetail__c _equals_ ZoomInfo)<br> |  undefined | undefined | false |
| 3 | (**Lead**: n2de__Distribution_count__c _greaterThan_ ' ')<br> |  undefined | undefined | false |
| 4 | (**Lead**: LeadSource _equals_ Schwab)<br> |  undefined | undefined | false |
| 5 | (**Lead**: Email _contains_ @test.com)<br> OR (**Lead**: Email _contains_ @mailinator.com)<br> OR (**Lead**: Email _contains_ @prksqasimply.com)<br> |  ccampbell@myubiquity.com | User | false |
| 6 | ((**Lead**: NewConvorSinglek__c _equals_ Single(k), SingleIRA, Express IRA, SIMPLE IRA)<br> AND (**Lead**: OwnerId _notEqual_ Chad Parks)<br>) OR (**Lead**: LeadSourceDetail__c _equals_ TaxACT)<br> OR (**Lead**: Product_Type__c _equals_ Single(k), Express IRA, Single IRA, SIMPLE IRA)<br> |  RPC_Team | Queue | false |
| 7 | (**Lead**: campaign_code__c _equals_ Financial Advisor Playbook)<br> |  RPC_Team | Queue | true |
| 8 | ((**Lead**: LeadSource _contains_ Sallus)<br> OR (**Lead**: LeadSourceDetail__c _contains_ Sallus)<br>) AND (**Lead**: Lead_Type__c _equals_ Advisor)<br> |  RPC_Team | Queue | false |
| 9 | (**Lead**: Business_Unit__c _equals_ Simply Retirement)<br> AND ((**Lead**: Lead_Type__c _equals_ Advisor)<br> OR (**Lead**: Advisor_State__c _notEqual_ ' ')<br>) |  Major_Partner_Queue | Queue | false |
| 10 | (**Lead**: LeadSourceDetail__c _equals_ Payroll Medics)<br> |  Robby_Forsythe | Queue | false |
| 11 | (**Lead**: campaign_code__c _contains_ payroll partner)<br> |  ccampbell@myubiquity.com | User | true |
| 12 | (**Lead**: campaign_code__c _equals_ RCM Form)<br> |  Jason_Gross | Queue | false |
| 13 | (**Lead**: LeadSource _equals_ Organic Search, Organic Social, Partner Referral, Direct Referral, Direct, HCM, Financial Institution, Advisor, Accounting, Traditional_Payroll, Member Organization, Insurance, Paid Ads)<br> AND (**Lead**: CreatedById _notContain_ chad)<br> AND (**Lead**: Method_of_First_Contact__c _notEqual_ Calendly)<br> AND (**Lead**: Status _equals_ Open)<br> |  RPC_Team | Queue | false |
| 14 | (**Lead**: campaign_code__c _contains_ Single(k))<br> AND (**Lead**: Owner_Full_Name__c _contains_ Jefferson)<br> |  undefined | undefined | false |
| 15 | (**Lead**: LeadSourceDetail__c _equals_ Affiliate)<br> AND (**Lead**: Channel__c _equals_ Affiliate)<br> |  RPC_Team | Queue | false |
| 16 | (**Lead**: LeadSource _equals_ Partner Referral)<br> AND (**Lead**: LeadSourceDetail__c _equals_ Member Organization)<br> AND (**Lead**: campaign_code__c _equals_ ACTA Referral)<br> |  ccampbell@myubiquity.com | User | false |
| 17 | (**Lead**: LeadSource _equals_ Content Syndication)<br> |  RPC_Team | Queue | false |
| 18 | (**Lead**: LeadSourceDetail__c _equals_ G2)<br> |  RPC_Team | Queue | false |
| 19 | (**User**: User_ID__c _equals_ 005Ho000007usrA)<br> AND (**Lead**: Method_of_First_Contact__c _equals_ Calendly)<br> |  undefined | undefined | false |


_Documentation generated with [sfdx-hardis](https://sfdx-hardis.cloudity.com), by [Cloudity](https://www.cloudity.com/) & [friends](https://github.com/hardisgroupcom/sfdx-hardis/graphs/contributors)_
