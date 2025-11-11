---
hide:
  - path
---

# MilestoneUtils Class

## Class Diagram

```mermaid
graph TD
  MilestoneUtils["MilestoneUtils"]:::mainApexClass
  click MilestoneUtils "/objects/MilestoneUtils/"




classDef apexClass fill:#FFF4C2,stroke:#CCAA00,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef apexTestClass fill:#F5F5F5,stroke:#999999,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef mainApexClass fill:#FFB3B3,stroke:#A94442,stroke-width:4px,rx:14px,ry:14px,shadow:drop,color:#333,font-weight:bold;

```

<!-- Apex description -->

## Apex Code

```java
public class MilestoneUtils {
    public static void completeMilestone(List<Id> caseIds, 
            String milestoneName, DateTime complDate) {  
    List<CaseMilestone> cmsToUpdate = [select Id, completionDate
            from CaseMilestone cm
            where caseId in :caseIds and cm.MilestoneType.Name=:milestoneName 
            and completionDate = null limit 1];
    if (cmsToUpdate.isEmpty() == false){
        for (CaseMilestone cm : cmsToUpdate){
            cm.completionDate = complDate;
            }
        update cmsToUpdate;
        }
    }
}
```

## Methods
### `completeMilestone(caseIds, milestoneName, complDate)`

#### Signature
```apex
public static void completeMilestone(List<Id> caseIds, String milestoneName, DateTime complDate)
```

#### Parameters
| Name | Type | Description |
|------|------|-------------|
| caseIds | List&lt;Id&gt; |  |
| milestoneName | String |  |
| complDate | DateTime |  |

#### Return Type
**void**