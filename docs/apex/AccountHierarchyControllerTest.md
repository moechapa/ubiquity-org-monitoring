---
hide:
  - path
---

# AccountHierarchyControllerTest Class

`ISTEST`

## Class Diagram

```mermaid
graph TD
  AccountHierarchyControllerTest["AccountHierarchyControllerTest"]:::mainApexClass
  click AccountHierarchyControllerTest "/objects/AccountHierarchyControllerTest/"
  AccountHierarchyController["AccountHierarchyController"]:::apexClass
  click AccountHierarchyController "/apex/AccountHierarchyController/"

  AccountHierarchyControllerTest --> AccountHierarchyController



classDef apexClass fill:#FFF4C2,stroke:#CCAA00,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef apexTestClass fill:#F5F5F5,stroke:#999999,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef mainApexClass fill:#FFB3B3,stroke:#A94442,stroke-width:4px,rx:14px,ry:14px,shadow:drop,color:#333,font-weight:bold;

linkStyle 0 stroke:#4C9F70,stroke-width:4px;
```

<!-- Apex description -->

## Apex Code

```java
@isTest
public class AccountHierarchyControllerTest {

	static testMethod void testHasParent() {
        Account acct = new Account(Name='Test');
        insert acct;

        Account acct2 = new Account(Name='Test2');
        acct2.ParentId = acct.Id;
        insert acct2;

        System.assertEquals(AccountHierarchyController.hasParent(acct.Id), False);
        System.assertEquals(AccountHierarchyController.hasParent(acct2.Id), True);
    }

    static testMethod void testNumChildren() {
        Account acct = new Account(Name='Test');
        insert acct;

        Account acct2 = new Account(Name='Test2');
        acct2.ParentId = acct.Id;
        insert acct2;

        System.assertEquals(AccountHierarchyController.numChildren(acct.Id), 1);
        System.assertEquals(AccountHierarchyController.numChildren(acct2.Id), 0);
    }
}
```

## Methods
### `testHasParent()`

#### Signature
```apex
private static testMethod void testHasParent()
```

#### Return Type
**void**

---

### `testNumChildren()`

#### Signature
```apex
private static testMethod void testNumChildren()
```

#### Return Type
**void**