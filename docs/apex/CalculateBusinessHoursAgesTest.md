---
hide:
  - path
---

# CalculateBusinessHoursAgesTest Class

`ISTEST`

## Class Diagram

```mermaid
graph TD
  CalculateBusinessHoursAgesTest["CalculateBusinessHoursAgesTest"]:::mainApexClass
  click CalculateBusinessHoursAgesTest "/objects/CalculateBusinessHoursAgesTest/"




classDef apexClass fill:#FFF4C2,stroke:#CCAA00,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef apexTestClass fill:#F5F5F5,stroke:#999999,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef mainApexClass fill:#FFB3B3,stroke:#A94442,stroke-width:4px,rx:14px,ry:14px,shadow:drop,color:#333,font-weight:bold;

```

<!-- Apex description -->

## Apex Code

```java
@isTest 
public class CalculateBusinessHoursAgesTest {
    public static testMethod void testBusinessHoursBucketer() {
        Stop_Status__c ss = new Stop_Status__c(Name = 'On Hold');
        insert ss;

        Case c = new Case();
        c.Status = 'New';
        c.Last_Status_Change__c = System.Now();
        insert c;

        c.Status = 'On Hold';
        update c;

        c.Status = 'New';
        update c;

    Case updatedCase = [select Time_With_Customer__c,Time_With_Support__c,Case_Age_In_Business_Hours__c from Case where Id=:c.Id];
    System.assert(updatedCase.Time_With_Customer__c!=null);
        System.assert(updatedCase.Time_With_Support__c!=null);
        System.assert(updatedCase.Case_Age_In_Business_Hours__c==null);

        c.Status = 'Closed';
        update c;

        updatedCase = [select Time_With_Customer__c,Time_With_Support__c,Case_Age_In_Business_Hours__c from Case where Id=:c.Id];

        System.assert(updatedCase.Time_With_Customer__c!=null);
        System.assert(updatedCase.Time_With_Support__c!=null);
        /*System.assert(updatedCase.Case_Age_In_Business_Hours__c!=null);*/
    }
}
```

## Methods
### `testBusinessHoursBucketer()`

#### Signature
```apex
public static testMethod void testBusinessHoursBucketer()
```

#### Return Type
**void**