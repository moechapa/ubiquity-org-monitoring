---
hide:
  - path
---

# Case_SLA_Invocable_Stamp_TEST Class

`ISTEST`

## Class Diagram

```mermaid
graph TD
  Case_SLA_Invocable_Stamp_TEST["Case_SLA_Invocable_Stamp_TEST"]:::mainApexClass
  click Case_SLA_Invocable_Stamp_TEST "/objects/Case_SLA_Invocable_Stamp_TEST/"
  Case_SLA_Invocable_Stamp["Case_SLA_Invocable_Stamp"]:::apexClass
  click Case_SLA_Invocable_Stamp "/apex/Case_SLA_Invocable_Stamp/"
  CaseSLA["CaseSLA"]:::apexClass
  click CaseSLA "/apex/CaseSLA/"

  Case_SLA_Invocable_Stamp_TEST --> Case_SLA_Invocable_Stamp
  Case_SLA_Invocable_Stamp_TEST --> CaseSLA



classDef apexClass fill:#FFF4C2,stroke:#CCAA00,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef apexTestClass fill:#F5F5F5,stroke:#999999,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef mainApexClass fill:#FFB3B3,stroke:#A94442,stroke-width:4px,rx:14px,ry:14px,shadow:drop,color:#333,font-weight:bold;

linkStyle 0,1 stroke:#4C9F70,stroke-width:4px;
```

<!-- Apex description -->

## Apex Code

```java
@istest
private class Case_SLA_Invocable_Stamp_TEST {
    @isTest
    private static void checkInvocableSLAnoNull(){
        Case_SLA_Invocable_Stamp.inputVariables inputVars= new Case_SLA_Invocable_Stamp.inputVariables();
        inputVars.CloseSLA = 4;
        inputVars.ResponseSLA = 4;
        inputVars.caseCreatedDT= datetime.newInstance(2023,3,13,12,0,0);
        inputVars.bizhoursId = '01m00000000000J';
        Test.startTest();
        Case_SLA_Invocable_Stamp.newCaseSLA(new List<Case_SLA_Invocable_Stamp.inputVariables> {inputVars});
        test.stopTest();
    }
    @isTest
    private static void checkInvocableSLANullFR(){
        Case_SLA_Invocable_Stamp.inputVariables inputVars= new Case_SLA_Invocable_Stamp.inputVariables();
        inputVars.CloseSLA = 4;
        inputVars.ResponseSLA = NULL;
        inputVars.caseCreatedDT= datetime.newInstance(2023,3,13,12,0,0);
        inputVars.bizhoursId = '01m00000000000J';
        Test.startTest();
        Case_SLA_Invocable_Stamp.newCaseSLA(new List<Case_SLA_Invocable_Stamp.inputVariables> {inputVars});
        test.stopTest();
    }
    @isTest
    private static void checkInvocableSLANullClose(){
        Case_SLA_Invocable_Stamp.inputVariables inputVars= new Case_SLA_Invocable_Stamp.inputVariables();
        inputVars.CloseSLA = NULL;
        inputVars.ResponseSLA = 4;
        inputVars.caseCreatedDT= datetime.newInstance(2023,3,13,12,0,0);
        inputVars.bizhoursId = '01m00000000000J';
        Test.startTest();
        Case_SLA_Invocable_Stamp.newCaseSLA(new List<Case_SLA_Invocable_Stamp.inputVariables> {inputVars});
        test.stopTest();
    }
    
}
```

## Methods
### `checkInvocableSLAnoNull()`

`ISTEST`

#### Signature
```apex
private static void checkInvocableSLAnoNull()
```

#### Return Type
**void**

---

### `checkInvocableSLANullFR()`

`ISTEST`

#### Signature
```apex
private static void checkInvocableSLANullFR()
```

#### Return Type
**void**

---

### `checkInvocableSLANullClose()`

`ISTEST`

#### Signature
```apex
private static void checkInvocableSLANullClose()
```

#### Return Type
**void**