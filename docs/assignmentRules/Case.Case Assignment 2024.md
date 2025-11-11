---
hide:
  - path
---

<!-- This file is auto-generated. if you do not want it to be overwritten, set TRUE in the line below -->
<!-- DO_NOT_OVERWRITE_DOC=FALSE -->

<!-- Assignment Rule description -->
## Assignment Rules list
## Case Assignment 2024 Rules
| Order |  Criteria | Assigned To | Assigned To Type | Email |
| :--: | :------------- | :--: | :--: | :--: |
| 1 | (**Case**: SuppliedEmail _equals_ principal@e.principal.com)<br> |  Spam | Queue | false |
| 2 | (**Case**: Subject _contains_ Gusto Client Upgrade Activation Request)<br> |  undefined | undefined | false |
| 3 | (**Case**: Subject _contains_ Action Required: A Fidelity Bond is required for your 401(k) Plan)<br> |  Tier_1_Support | Queue | false |
| 4 | (**Case**: Subject _contains_ We have received your request! --- Restatement Issue)<br> AND (**Case**: SuppliedEmail _contains_ support@myubiquity.com)<br> |  Spam | Queue | false |
| 5 | (**Case**: Subject _contains_ --- Ticket Closed)<br> |  Spam | Queue | false |
| 6 | (**Case**: SuppliedEmail _equals_ complaints@email-abuse.amazonses.com)<br> OR (**Case**: Subject _contains_ Fastmail Abuse Report)<br> OR (**Case**: Subject _contains_ Comcast Abuse Report)<br> |  Spam | Queue | false |
| 7 | (**EmailMessage**: FromAddress _equals_ newplanstatus@myubiquity.com)<br> |  Imp_Escalations | Queue | false |
| 8 | (**Case**: SuppliedEmail _equals_ mailer-daemon@us-east-1.amazonses.com)<br> |  Email_Delivery_Failures | Queue | false |
| 9 | (**Case**: Origin _equals_ Sales Inbox)<br> |  Sales | Queue | false |
| 10 | (**Case**: SuppliedEmail _equals_ dse@docusign.net)<br> AND (**Case**: Origin _equals_ Support Inbox)<br> |  Spam | Queue | false |
| 11 | (**Case**: ContactEmail _contains_ lstone@ontimetech.com)<br> OR ((**Case**: Subject _contains_ Thank you for your inquiry!)<br> AND (**Case**: SuppliedEmail _equals_ partnershipsupport@myubiquity.com, notifications@app.askspoke.com)<br>) OR (**Case**: Subject _startsWith_ Automatic reply)<br> OR (**Case**: Subject _startsWith_ Out of Office)<br> OR (**Case**: SuppliedEmail _contains_ microsoftexchange32(**Case**: Subject _startsWith_ Auto-Reply)<br>e(**Case**: SuppliedEmail _contains_ mailer-daemon@asp.reflexion.net, notifications@app.askspoke.com)<br>1ec(**Case**: Subject _contains_ Child Case Closed for)<br>8ae46(**Case**: SuppliedEmail _contains_ events@riadatabase.com)<br>bbc36ab6ce41(**Case**: Subject _contains_ Messages quarantined since)<br>9e@myubiquity.com)<br> OR 7 OR 8 OR 9 OR 10 OR (**Case**: Subject _startsWith_ Child Case Closed For)<br> OR ((**Case**: Subject _contains_ Please DocuSign:)<br> AND (**Case**: SuppliedEmail _equals_ dse@docusign.net)<br> AND (**Case**: Origin _equals_ Single(k) Inbox)<br>) OR 15 |  Spam | Queue | false |
| 12 | (**Case**: Web_Form_Role__c _equals_ Partner)<br> |  Partnership_Support_Queue | Queue | false |
| 13 | (**Case**: Origin _equals_ Single(k) Inbox)<br> OR ((**Case**: Origin _equals_ Help Center)<br> AND (**Case**: Service_Option__c _contains_ Single(k))<br> AND (**Case**: Service_Option__c _notEqual_ Single(k) Plus)<br>) |  Single_k | Queue | false |
| 14 | (**Case**: Subject _contains_ viewed Please DocuSign)<br> AND (**Case**: Origin _equals_ Compliance Inbox)<br> |  Spam | Queue | false |
| 15 | (**EmailMessage**: FromAddress _contains_ adminsupport@myubiquity.com)<br> AND (**EmailMessage**: Subject _contains_ Ubiquity Retirement + Savings Accounting Department)<br> AND (**EmailMessage**: ToAddress _contains_ transitions@myubiquity.com)<br> |  Spam | Queue | false |
| 16 | (**Case**: SuppliedEmail _equals_ mailer-daemon@amazonses.com)<br> |  Email_Delivery_Failures | Queue | false |
| 17 | (**Case**: SuppliedEmail _contains_ compliance.myubiquity@pension-plan-emails.com)<br> OR (**Case**: SuppliedEmail _contains_ fire@pension-plan-emails.com)<br> |  X5500_Notifications | Queue | false |
| 18 | (**Case**: Web_Form_Role__c _equals_ Current Customer - Employee)<br> OR ((**Case**: Contact_Role__c _equals_ Saver)<br> AND (**Case**: Origin _equals_ Help Center, Simply Support Inbox, Support Inbox, Web)<br>) OR (**Case**: Origin _equals_ Saver Inbox)<br> |  ROI | Queue | false |
| 19 | (**Case**: Subject _contains_ SPS)<br> |  SPS_Filing_Status | Queue | false |
| 20 | (**Case**: Origin _equals_ Compliance Inbox)<br> |  Compliance | Queue | false |
| 21 | ((**Case**: Subject _equals_ Your Monthly payroll is due)<br> OR (**Case**: Subject _equals_ Your Semimonthly payroll is due)<br> OR (**Case**: Subject _contains_ Your Biweekly payroll is due)<br>) AND (**Case**: SuppliedEmail _contains_ rundonotreply@adp.com)<br> |  Spam | Queue | false |
| 22 | (**Case**: Origin _equals_ Payroll, Payroll Inbox)<br> AND (**Case**: Subject _startsWith_ [UBIQUITY])<br> AND (**Case**: Subject _contains_ Ticket Closed)<br> |  Spam | Queue | false |
| 23 | (**Case**: Origin _equals_ KYC Review)<br> |  nmazooji@myubiquity.com | User | false |
| 24 | (**Case**: Origin _equals_ Payroll Inbox)<br> AND ((**Case**: Subject _contains_ Hourly Time Management Notification)<br> OR (**Case**: Subject _contains_ QuickBooks Time Notification:)<br> OR (**Case**: Subject _contains_ Question of the Week:)<br> OR (**Case**: Subject _contains_ Payday Reminder for)<br> OR (**Case**: Subject _contains_ Your Weekly payroll is due)<br> OR (**Case**: Subject _contains_ Your Biweekly payroll is due)<br> OR (**Case**: Subject _contains_ Clock In Reminder)<br> OR (**Case**: Subject _contains_ Daily Time Management Notification)<br> OR (**Case**: Subject _contains_ bank info has been changed)<br> OR (**Case**: Subject _contains_ Time Off Request)<br> OR (**Case**: Subject _contains_ HR Snapshot:)<br> OR (**Case**: Subject _contains_ Time Off Request Needs Your Decision)<br>) |  Spam | Queue | false |
| 25 | (**Case**: Subject _contains_ has sent you a Secure Email with subject "SFTP credentials ")<br> |  ubiquitypayroll@myubiquity.com | User | false |
| 26 | (**Case**: Origin _equals_ Payroll Inbox, Payroll Koncierge)<br> |  ubiquitypayroll@myubiquity.com | User | false |
| 27 | (**Case**: Origin _equals_ Transitions Inbox)<br> |  transitions@myubiquity.com | User | false |
| 28 | (**Case**: Origin _equals_ Distributions Inbox, Operations Inbox)<br> |  rw@myubiquity.com | User | false |
| 29 | (**Case**: Origin _equals_ Billing Inbox)<br> |  billing@myubiquity.com | User | false |
| 30 | (**Case**: Origin _equals_ Single(k) Inbox)<br> AND ((**Case**: Subject _contains_ Completed: Important - Sign your Restated Plan Document)<br> OR (**Case**: Subject _contains_ Completed: Important - Sign your Mega Backdoor Roth Document)<br>) AND ((**Case**: Subject _notContain_ FW:)<br> OR (**Case**: Subject _notContain_ RE:)<br>) |  SIngle_k_Completed_Restatements | Queue | false |
| 31 | (**Case**: Origin _contains_ Partnership Support Inbox)<br> |  Partnership_Support_Queue | Queue | false |
| 32 | (**Case**: Origin _equals_ Implementations Inbox)<br> |  Implementations | Queue | false |
| 33 | ((**Case**: Origin _equals_ Simply TPA, Simply Support Inbox)<br> OR ((**Case**: Origin _equals_ Help Center)<br> AND (**Case**: Service_Option__c _contains_ Simply)<br>) OR (**Contact**: Business_Unit__c _equals_ Simply Retirement)<br> OR (**Account**: Business_Unit__c _equals_ Simply Retirement)<br>) AND (**Case**: Plan_Value__c _notEqual_ Platinum, Gold)<br> AND (**Case**: Priority_Service__c _notEqual_ True)<br> |  Simply_Support_Cases | Queue | false |
| 34 | (**Case**: Web_Form_Role__c _equals_ Current Customer - Employer, Advisor, TPA, Other)<br> |  Tier_1_Support | Queue | false |
| 35 | (**Account**: X(**Contact**: Role__c _contains_ Advisor)<br>_16__c _equals_ True)<br> AND ((**Contact**: Role__c _contains_ Sponsor)<br> OR 3 OR (**Contact**: Role__c _contains_ Trustee)<br>) |  Tier_1_Support | Queue | false |
| 36 | (**Case**: Subject _equals_ A Simply Proposal Has Been Updated)<br> AND (**Case**: SuppliedEmail _equals_ bi@myubiquity.com)<br> |  Spam | Queue | false |
| 37 | (**Case**: Origin _equals_ BI Inbox)<br> |  Business_Intelligence | Queue | false |
| 38 | (**Case**: Origin _equals_ Product Innovation)<br> |  Product_Innovation | Queue | false |
| 39 | (**Case**: SuppliedEmail _equals_ compliance@myubiquity.com)<br> AND (**Case**: Subject _startsWith_ ACTION REQUIRED)<br> |  ADP_ACP_Test_Results | Queue | false |
| 40 | ((**Case**: SuppliedEmail _equals_ adpdonotreply@adp.com)<br> AND ((**Case**: Subject _contains_ Hourly Time Management Notification)<br> OR (**Case**: Subject _contains_ Daily Time Management Notification)<br>)) |  Spam | Queue | false |
| 41 | (**Case**: SuppliedEmail _equals_ noreply@tsheets.com)<br> |  Spam | Queue | false |
| 42 | ((**Case**: SuppliedEmail _equals_ automated@gusto.com)<br> AND ((**Case**: Subject _contains_ Run payroll by)<br> OR (**Case**: Subject _contains_ Time to run payroll for)<br>)) OR ((**Case**: SuppliedEmail _equals_ noreply@tsheets.com)<br> AND ((**Case**: Subject _contains_ QuickBooks Time Notification)<br> OR (**Case**: Subject _contains_ [QuickBooks Time] Your hours are due today)<br>)) OR ((**Case**: SuppliedEmail _equals_ no-reply@gusto.com)<br> AND (**Case**: Subject _contains_ accepted your offer at)<br>) OR ((**Case**: SuppliedEmail _equals_ RunDoNotReply@adp.com)<br> AND ( (**Case**: Subject _contains_ Tax Verification Notice)<br> OR (**Case**: Subject _contains_ Your Biweekly payroll is due)<br> OR (**Case**: Subject _contains_ Your Semimonthly payroll is due)<br>)) OR ((**Case**: SuppliedEmail _equals_ noreply@zenefits.com)<br> AND ((**Case**: Subject _contains_ Payroll submitted for)<br> OR (**Case**: Subject _contains_ [Concourse Federal Group, LLC])<br> OR (**Case**: Subject _contains_ [quiknode inc])<br> OR (**Case**: Subject _contains_ [SecZetta])<br>)) |  Spam | Queue | false |
| 43 | (**Case**: Case_Owner_Name__c _equals_ RMD)<br> |  undefined | undefined | false |
| 44 | (**Case**: Subject _contains_ New EPS to Finch Transition - Jotform)<br> |  undefined | undefined | false |
| 45 | ((**Case**: Plan_Value__c _equals_ Platinum, Gold)<br> OR (**Case**: Priority_Service__c _equals_ True)<br>) AND (**Account**: Name _notEqual_ Decimal Inc. DBA Ubiquity Retirement + Savings)<br> |  Platinum_Queue | Queue | false |


_Documentation generated with [sfdx-hardis](https://sfdx-hardis.cloudity.com), by [Cloudity](https://www.cloudity.com/) & [friends](https://github.com/hardisgroupcom/sfdx-hardis/graphs/contributors)_
