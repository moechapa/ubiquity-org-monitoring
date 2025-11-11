---
hide:
  - path
---

# ZoomUsersPermissionCheckerBatchTest Class

`ISTEST`

## Class Diagram

```mermaid
graph TD
  ZoomUsersPermissionCheckerBatchTest["ZoomUsersPermissionCheckerBatchTest"]:::mainApexClass
  click ZoomUsersPermissionCheckerBatchTest "/objects/ZoomUsersPermissionCheckerBatchTest/"
  DataFactory["DataFactory"]:::apexTestClass
  click DataFactory "/apex/DataFactory/"
  ZoomTestDataFactory["ZoomTestDataFactory"]:::apexTestClass
  click ZoomTestDataFactory "/apex/ZoomTestDataFactory/"
  ZoomUsersPermissionCheckerBatch["ZoomUsersPermissionCheckerBatch"]:::apexClass
  click ZoomUsersPermissionCheckerBatch "/apex/ZoomUsersPermissionCheckerBatch/"

  ZoomUsersPermissionCheckerBatchTest --> DataFactory
  ZoomUsersPermissionCheckerBatchTest --> ZoomTestDataFactory
  ZoomUsersPermissionCheckerBatchTest --> ZoomUsersPermissionCheckerBatch


  ZoomTestDataFactory --> DataFactory

classDef apexClass fill:#FFF4C2,stroke:#CCAA00,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef apexTestClass fill:#F5F5F5,stroke:#999999,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef mainApexClass fill:#FFB3B3,stroke:#A94442,stroke-width:4px,rx:14px,ry:14px,shadow:drop,color:#333,font-weight:bold;

linkStyle 0,1,2 stroke:#4C9F70,stroke-width:4px;
linkStyle 3 stroke:#A6A6A6,stroke-width:2px;
```

<!-- Apex description -->

## Apex Code

```java
@isTest
public with sharing class ZoomUsersPermissionCheckerBatchTest {

    @isTest
    static void testBatch() {
        User usr = ZoomTestDataFactory.createUser('System Administrator', '@some.com');
        Test.startTest();
        ZoomUsersPermissionCheckerBatch.start(0);
        ZoomUsersPermissionCheckerBatch.start(007);
        Test.stopTest();
        System.assertEquals(1, [SELECT COUNT() FROM User WHERE Email LIKE 'testuser%'], 'User record should be created');
    }

}
```

## Methods
### `testBatch()`

`ISTEST`

#### Signature
```apex
private static void testBatch()
```

#### Return Type
**void**