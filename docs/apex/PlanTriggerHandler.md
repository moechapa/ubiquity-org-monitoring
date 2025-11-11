---
hide:
  - path
---

# PlanTriggerHandler Class

## Class Diagram

```mermaid
graph TD
  PlanTriggerHandler["PlanTriggerHandler"]:::mainApexClass
  click PlanTriggerHandler "/objects/PlanTriggerHandler/"
  HM_ScoreCalc["HM_ScoreCalc"]:::apexClass
  click HM_ScoreCalc "/apex/HM_ScoreCalc/"
  PlanTriggerController["PlanTriggerController"]:::apexClass
  click PlanTriggerController "/apex/PlanTriggerController/"
  PlanTrigger["PlanTrigger"]:::apexClass

  PlanTriggerHandler --> HM_ScoreCalc
  PlanTriggerHandler --> PlanTriggerController

  PlanTrigger --> PlanTriggerHandler


classDef apexClass fill:#FFF4C2,stroke:#CCAA00,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef apexTestClass fill:#F5F5F5,stroke:#999999,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef mainApexClass fill:#FFB3B3,stroke:#A94442,stroke-width:4px,rx:14px,ry:14px,shadow:drop,color:#333,font-weight:bold;

linkStyle 0,1 stroke:#4C9F70,stroke-width:4px;
linkStyle 2 stroke:#FF8C00,stroke-width:2px;
```

<!-- Apex description -->

## Apex Code

```java
public with sharing class PlanTriggerHandler {

    public void onAfterInsert(List<Plan__c> plans){
        PlanTriggerController.createdPlanUpdateAccounts(plans);
    }
    public void onAfterUpdate(Map<Id, Plan__c> plansIdPlanMap){
        PlanTriggerController.afterUpdatePlan(plansIdPlanMap);
    }
    // public void onBeforeInsert(){}
    // public void onBeforeUpdate(Map<Id, Plan__c> plansIdPlanMap){
    //     HM_ScoreCalc.calcScores(plansIdPlanMap);
    // }
    // public void onBeforeDelete(){}
    // public void onAfterDelete(){}
}
```

## Methods
### `onAfterInsert(plans)`

#### Signature
```apex
public void onAfterInsert(List<Plan__c> plans)
```

#### Parameters
| Name | Type | Description |
|------|------|-------------|
| plans | List&lt;Plan__c&gt; |  |

#### Return Type
**void**

---

### `onAfterUpdate(plansIdPlanMap)`

#### Signature
```apex
public void onAfterUpdate(Map<Id,Plan__c> plansIdPlanMap)
```

#### Parameters
| Name | Type | Description |
|------|------|-------------|
| plansIdPlanMap | Map&lt;Id,Plan__c&gt; |  |

#### Return Type
**void**