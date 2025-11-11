---
hide:
  - path
---

# CaseTriggerHandler Class

## Class Diagram

```mermaid
graph TD
  CaseTriggerHandler["CaseTriggerHandler"]:::mainApexClass
  click CaseTriggerHandler "/objects/CaseTriggerHandler/"
  CaseSLA["CaseSLA"]:::apexClass
  click CaseSLA "/apex/CaseSLA/"
  JiraCaseSync["JiraCaseSync"]:::apexClass
  click JiraCaseSync "/apex/JiraCaseSync/"
  CaseTrigger["CaseTrigger"]:::apexClass

  CaseTriggerHandler --> CaseSLA
  CaseTriggerHandler --> JiraCaseSync

  CaseTrigger --> CaseTriggerHandler


classDef apexClass fill:#FFF4C2,stroke:#CCAA00,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef apexTestClass fill:#F5F5F5,stroke:#999999,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef mainApexClass fill:#FFB3B3,stroke:#A94442,stroke-width:4px,rx:14px,ry:14px,shadow:drop,color:#333,font-weight:bold;

linkStyle 0,1 stroke:#4C9F70,stroke-width:4px;
linkStyle 2 stroke:#FF8C00,stroke-width:2px;
```

<!-- Apex description -->

## Apex Code

```java
public with sharing class CaseTriggerHandler {
  public static void onBeforeInsert(List<Case> cases) {
    CaseSLA.check(cases);
  }

  public static void onAfterInsert(List<Case> cases, List<Case> oldCases) {
    JiraCaseSync.newCases(cases, oldCases);
  }

  public static void onBeforeUpdate(List<Case> cases) {
    CaseSLA.check(cases);
  }
  
  public static void onAfterUpdate(List<Case> cases, Map<Id, Case> oldCaseMap) {
    JiraCaseSync.updateCases(cases, oldCaseMap);
  }
}
```

## Methods
### `onBeforeInsert(cases)`

#### Signature
```apex
public static void onBeforeInsert(List<Case> cases)
```

#### Parameters
| Name | Type | Description |
|------|------|-------------|
| cases | List&lt;Case&gt; |  |

#### Return Type
**void**

---

### `onAfterInsert(cases, oldCases)`

#### Signature
```apex
public static void onAfterInsert(List<Case> cases, List<Case> oldCases)
```

#### Parameters
| Name | Type | Description |
|------|------|-------------|
| cases | List&lt;Case&gt; |  |
| oldCases | List&lt;Case&gt; |  |

#### Return Type
**void**

---

### `onBeforeUpdate(cases)`

#### Signature
```apex
public static void onBeforeUpdate(List<Case> cases)
```

#### Parameters
| Name | Type | Description |
|------|------|-------------|
| cases | List&lt;Case&gt; |  |

#### Return Type
**void**

---

### `onAfterUpdate(cases, oldCaseMap)`

#### Signature
```apex
public static void onAfterUpdate(List<Case> cases, Map<Id,Case> oldCaseMap)
```

#### Parameters
| Name | Type | Description |
|------|------|-------------|
| cases | List&lt;Case&gt; |  |
| oldCaseMap | Map&lt;Id,Case&gt; |  |

#### Return Type
**void**