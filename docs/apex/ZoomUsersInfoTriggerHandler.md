---
hide:
  - path
---

# ZoomUsersInfoTriggerHandler Class

## Class Diagram

```mermaid
graph TD
  ZoomUsersInfoTriggerHandler["ZoomUsersInfoTriggerHandler"]:::mainApexClass
  click ZoomUsersInfoTriggerHandler "/objects/ZoomUsersInfoTriggerHandler/"
  ZoomUsersInfoTriggerController["ZoomUsersInfoTriggerController"]:::apexClass
  click ZoomUsersInfoTriggerController "/apex/ZoomUsersInfoTriggerController/"
  ZoomUsersInfoTrigger["ZoomUsersInfoTrigger"]:::apexClass

  ZoomUsersInfoTriggerHandler --> ZoomUsersInfoTriggerController

  ZoomUsersInfoTrigger --> ZoomUsersInfoTriggerHandler


classDef apexClass fill:#FFF4C2,stroke:#CCAA00,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef apexTestClass fill:#F5F5F5,stroke:#999999,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef mainApexClass fill:#FFB3B3,stroke:#A94442,stroke-width:4px,rx:14px,ry:14px,shadow:drop,color:#333,font-weight:bold;

linkStyle 0 stroke:#4C9F70,stroke-width:4px;
linkStyle 1 stroke:#FF8C00,stroke-width:2px;
```

<!-- Apex description -->

## Apex Code

```java
public without sharing class ZoomUsersInfoTriggerHandler {
    //NOTE: Create new conditions for the trigger to fire controllers

    public void OnBeforeUpdate(List<Zoom_Users_Info__c> newUsr, List<Zoom_Users_Info__c> oldUsr) {
        ZoomUsersInfoTriggerController.checkZoomUserInfoState(newUsr, oldUsr);
    }
}
```

## Methods
### `OnBeforeUpdate(newUsr, oldUsr)`

#### Signature
```apex
public void OnBeforeUpdate(List<Zoom_Users_Info__c> newUsr, List<Zoom_Users_Info__c> oldUsr)
```

#### Parameters
| Name | Type | Description |
|------|------|-------------|
| newUsr | List&lt;Zoom_Users_Info__c&gt; |  |
| oldUsr | List&lt;Zoom_Users_Info__c&gt; |  |

#### Return Type
**void**