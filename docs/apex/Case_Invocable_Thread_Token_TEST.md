---
hide:
  - path
---

# Case_Invocable_Thread_Token_TEST Class

`ISTEST`

## Class Diagram

```mermaid
graph TD
  Case_Invocable_Thread_Token_TEST["Case_Invocable_Thread_Token_TEST"]:::mainApexClass
  click Case_Invocable_Thread_Token_TEST "/objects/Case_Invocable_Thread_Token_TEST/"
  Case_Invocable_Thread_Token["Case_Invocable_Thread_Token"]:::apexClass
  click Case_Invocable_Thread_Token "/apex/Case_Invocable_Thread_Token/"

  Case_Invocable_Thread_Token_TEST --> Case_Invocable_Thread_Token



classDef apexClass fill:#FFF4C2,stroke:#CCAA00,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef apexTestClass fill:#F5F5F5,stroke:#999999,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef mainApexClass fill:#FFB3B3,stroke:#A94442,stroke-width:4px,rx:14px,ry:14px,shadow:drop,color:#333,font-weight:bold;

linkStyle 0 stroke:#4C9F70,stroke-width:4px;
```

<!-- Apex description -->

## Apex Code

```java
@isTest
public class Case_Invocable_Thread_Token_TEST {
    @isTest
    private static void checkInvocableThreadToken(){
        Case_Invocable_Thread_Token.inputVariables inputVars = new Case_Invocable_Thread_Token.inputVariables();
        Case A = new Case();
        	A.Origin = 'BI Inbox';
        insert A;
        inputVars.caseId = [SELECT Id FROM case WHERE Origin LIKE '%Inbox%' LIMIT 1].Id;
        Test.startTest();
        Case_Invocable_Thread_Token.caseThreadToken(new List<Case_Invocable_Thread_Token.inputVariables> {inputVars});
        Test.stopTest();
    }

}
```

## Methods
### `checkInvocableThreadToken()`

`ISTEST`

#### Signature
```apex
private static void checkInvocableThreadToken()
```

#### Return Type
**void**