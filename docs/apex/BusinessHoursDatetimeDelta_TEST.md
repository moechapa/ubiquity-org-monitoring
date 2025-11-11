---
hide:
  - path
---

# BusinessHoursDatetimeDelta_TEST Class

`ISTEST`

## Class Diagram

```mermaid
graph TD
  BusinessHoursDatetimeDelta_TEST["BusinessHoursDatetimeDelta_TEST"]:::mainApexClass
  click BusinessHoursDatetimeDelta_TEST "/objects/BusinessHoursDatetimeDelta_TEST/"
  BusinessHoursDatetimeDelta["BusinessHoursDatetimeDelta"]:::apexClass
  click BusinessHoursDatetimeDelta "/apex/BusinessHoursDatetimeDelta/"

  BusinessHoursDatetimeDelta_TEST --> BusinessHoursDatetimeDelta



classDef apexClass fill:#FFF4C2,stroke:#CCAA00,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef apexTestClass fill:#F5F5F5,stroke:#999999,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef mainApexClass fill:#FFB3B3,stroke:#A94442,stroke-width:4px,rx:14px,ry:14px,shadow:drop,color:#333,font-weight:bold;

linkStyle 0 stroke:#4C9F70,stroke-width:4px;
```

<!-- Apex description -->

## Apex Code

```java
@isTest
private class BusinessHoursDatetimeDelta_TEST {

    @isTest
    private static void checkNullDatetime() {
        List<BusinessHoursDatetimeDelta.InputVariables> inputList = new List<BusinessHoursDatetimeDelta.InputVariables>();
        BusinessHoursDatetimeDelta.InputVariables input = new BusinessHoursDatetimeDelta.InputVariables();
        String bh = [SELECT id FROM BusinessHours WHERE IsDefault = true LIMIT 1].id;
        input.businessHoursId = bh;
        input.dateTime1 = null;
        input.dateTime2 = Datetime.newInstance(1982, 8, 25, 0, 0, 0);
        inputList.add(input);
        Test.startTest();
        List<BusinessHoursDatetimeDelta.ReturnVariables> outputList = BusinessHoursDatetimeDelta.results(inputList);
        test.stopTest();
        BusinessHoursDatetimeDelta.ReturnVariables output = outputList.get(0);
        system.assert(output.dateTimeDifference == null, 'Missing datetime input should return a null result');
    }
    @isTest
    private static void checkWithNoBizHours() {
        List<BusinessHoursDatetimeDelta.InputVariables> inputList = new List<BusinessHoursDatetimeDelta.InputVariables>();
        BusinessHoursDatetimeDelta.InputVariables input = new BusinessHoursDatetimeDelta.InputVariables();
        input.dateTime1 = Datetime.newInstance(1995, 3, 9, 0, 0, 0);
        input.dateTime2 = Datetime.newInstance(1982, 8, 25, 0, 0, 0);
        inputList.add(input);
        Test.startTest();
        List<BusinessHoursDatetimeDelta.ReturnVariables> outputList = BusinessHoursDatetimeDelta.results(inputList);
        test.stopTest();
        BusinessHoursDatetimeDelta.ReturnVariables output = outputList.get(0);
        system.assert(output.dateTimeDifference >= 1, 'Should return a positive despite missing business hours input');
    }
    @isTest
    private static void checkWithIdealConditions() {
        List<BusinessHoursDatetimeDelta.InputVariables> inputList = new List<BusinessHoursDatetimeDelta.InputVariables>();
        BusinessHoursDatetimeDelta.InputVariables input = new BusinessHoursDatetimeDelta.InputVariables();
        String bh = [SELECT id FROM BusinessHours WHERE IsDefault = true LIMIT 1].id;
        input.businessHoursId = bh;
        input.dateTime2 = Datetime.newInstance(1995, 3, 9, 0, 0, 0);
        input.dateTime1 = Datetime.newInstance(1982, 8, 25, 0, 0, 0);
        inputList.add(input);
        Test.startTest();
        List<BusinessHoursDatetimeDelta.ReturnVariables> outputList = BusinessHoursDatetimeDelta.results(inputList);
        test.stopTest();
        BusinessHoursDatetimeDelta.ReturnVariables output = outputList.get(0);
        system.assert(output.dateTimeDifference >= 1, 'Should return a positive result');
    }
}
```

## Methods
### `checkNullDatetime()`

`ISTEST`

#### Signature
```apex
private static void checkNullDatetime()
```

#### Return Type
**void**

---

### `checkWithNoBizHours()`

`ISTEST`

#### Signature
```apex
private static void checkWithNoBizHours()
```

#### Return Type
**void**

---

### `checkWithIdealConditions()`

`ISTEST`

#### Signature
```apex
private static void checkWithIdealConditions()
```

#### Return Type
**void**