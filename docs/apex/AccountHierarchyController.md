---
hide:
  - path
---

# AccountHierarchyController Class

## Class Diagram

```mermaid
graph TD
  AccountHierarchyController["AccountHierarchyController"]:::mainApexClass
  click AccountHierarchyController "/objects/AccountHierarchyController/"
  AccountHierarchyControllerTest["AccountHierarchyControllerTest"]:::apexTestClass
  click AccountHierarchyControllerTest "/apex/AccountHierarchyControllerTest/"


  AccountHierarchyControllerTest --> AccountHierarchyController


classDef apexClass fill:#FFF4C2,stroke:#CCAA00,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef apexTestClass fill:#F5F5F5,stroke:#999999,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef mainApexClass fill:#FFB3B3,stroke:#A94442,stroke-width:4px,rx:14px,ry:14px,shadow:drop,color:#333,font-weight:bold;

linkStyle 0 stroke:#FF8C00,stroke-width:2px;
```

<!-- Apex description -->

## Apex Code

```java
public class AccountHierarchyController {

    @AuraEnabled
    public static Boolean hasParent(String accountId) {
        //Looks for Parent Account on Account user is viewing
        List<Account> listAccounts = [SELECT ParentId FROM Account WHERE Id = :accountId LIMIT 1];
        Account acct = listAccounts[0];
        return acct.ParentId != null;
    }

    @AuraEnabled
    public static Integer numChildren(String accountId) {
        //Looks for Accounts that share the Parent Account present on Account user is viewing
        List<Account> listAccounts = [SELECT Id FROM Account WHERE ParentId = :accountId];
        return listAccounts.size();
    }
}
```

## Methods
### `hasParent(accountId)`

`AURAENABLED`

#### Signature
```apex
public static Boolean hasParent(String accountId)
```

#### Parameters
| Name | Type | Description |
|------|------|-------------|
| accountId | String |  |

#### Return Type
**Boolean**

---

### `numChildren(accountId)`

`AURAENABLED`

#### Signature
```apex
public static Integer numChildren(String accountId)
```

#### Parameters
| Name | Type | Description |
|------|------|-------------|
| accountId | String |  |

#### Return Type
**Integer**