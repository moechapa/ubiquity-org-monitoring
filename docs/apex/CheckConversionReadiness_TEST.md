---
hide:
  - path
---

# CheckConversionReadiness_TEST Class

`ISTEST`

## Class Diagram

```mermaid
graph TD
  CheckConversionReadiness_TEST["CheckConversionReadiness_TEST"]:::mainApexClass
  click CheckConversionReadiness_TEST "/objects/CheckConversionReadiness_TEST/"
  CheckConversionReadiness["CheckConversionReadiness"]:::apexClass
  click CheckConversionReadiness "/apex/CheckConversionReadiness/"

  CheckConversionReadiness_TEST --> CheckConversionReadiness



classDef apexClass fill:#FFF4C2,stroke:#CCAA00,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef apexTestClass fill:#F5F5F5,stroke:#999999,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef mainApexClass fill:#FFB3B3,stroke:#A94442,stroke-width:4px,rx:14px,ry:14px,shadow:drop,color:#333,font-weight:bold;

linkStyle 0 stroke:#4C9F70,stroke-width:4px;
```

<!-- Apex description -->

## Apex Code

```java
@isTest
private class CheckConversionReadiness_TEST {

    @isTest
    static void badLead() {
        Lead l = new Lead(LastName = 'test', Company = 'test');
        insert l;
        Test.startTest();
        List<String> errorList = CheckConversionReadiness.runCheck(l.Id);
        Test.stopTest();
        Assert.isTrue(errorList.size() > 0, 'At least one error should have returned');
    }
}
```

## Methods
### `badLead()`

`ISTEST`

#### Signature
```apex
private static void badLead()
```

#### Return Type
**void**