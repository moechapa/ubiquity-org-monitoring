---
hide:
  - path
---

# Case_SLA_Milestone_Screen_Ext_TEST Class

`ISTEST`

## Class Diagram

```mermaid
graph TD
  Case_SLA_Milestone_Screen_Ext_TEST["Case_SLA_Milestone_Screen_Ext_TEST"]:::mainApexClass
  click Case_SLA_Milestone_Screen_Ext_TEST "/objects/Case_SLA_Milestone_Screen_Ext_TEST/"
  Case_SLA_Milestone_Screen_Ext["Case_SLA_Milestone_Screen_Ext"]:::apexClass
  click Case_SLA_Milestone_Screen_Ext "/apex/Case_SLA_Milestone_Screen_Ext/"

  Case_SLA_Milestone_Screen_Ext_TEST --> Case_SLA_Milestone_Screen_Ext



classDef apexClass fill:#FFF4C2,stroke:#CCAA00,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef apexTestClass fill:#F5F5F5,stroke:#999999,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef mainApexClass fill:#FFB3B3,stroke:#A94442,stroke-width:4px,rx:14px,ry:14px,shadow:drop,color:#333,font-weight:bold;

linkStyle 0 stroke:#4C9F70,stroke-width:4px;
```

<!-- Apex description -->

## Apex Code

```java
@isTest
public class Case_SLA_Milestone_Screen_Ext_TEST {
    
    public static testMethod void testSLAController() {
        Case ca = new Case();
        ca.BusinessHoursId = '01m00000000000J'; 
        ca.Goal_FR_DT_Stamp__c = datetime.newInstance(2030,3,13,12,0,0);
        ca.Goal_Close_DT_Stamp__c = datetime.newInstance(2030,3,13,12,0,0);
        insert ca;
        test.startTest();
        PageReference testPage = Page.Case_SLA_Milestone_Screen;
               testPage.getParameters().put('Id', String.valueOf(ca.Id));
                Test.setCurrentPage(testPage);
           ApexPages.StandardController sc = new ApexPages.StandardController(ca);
        Case_SLA_Milestone_Screen_Ext CaseScreenTest = new Case_SLA_Milestone_Screen_Ext(sc);
        CaseScreenTest.getFormattedCloseDiff();
        CaseScreenTest.getFormattedFrDiff();
        CaseScreenTest.subtractTime();
        test.stopTest();
    }
    
}
```

## Methods
### `testSLAController()`

#### Signature
```apex
public static testMethod void testSLAController()
```

#### Return Type
**void**