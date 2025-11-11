---
hide:
  - path
---

# PicklistFilterVizier Class

## Class Diagram

```mermaid
graph TD
  PicklistFilterVizier["PicklistFilterVizier"]:::mainApexClass
  click PicklistFilterVizier "/objects/PicklistFilterVizier/"
  PicklistFilterVizier_TEST["PicklistFilterVizier_TEST"]:::apexTestClass
  click PicklistFilterVizier_TEST "/apex/PicklistFilterVizier_TEST/"


  PicklistFilterVizier_TEST --> PicklistFilterVizier


classDef apexClass fill:#FFF4C2,stroke:#CCAA00,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef apexTestClass fill:#F5F5F5,stroke:#999999,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef mainApexClass fill:#FFB3B3,stroke:#A94442,stroke-width:4px,rx:14px,ry:14px,shadow:drop,color:#333,font-weight:bold;

linkStyle 0 stroke:#FF8C00,stroke-width:2px;
```

<!-- Apex description -->

## Apex Code

```java
public with sharing class PicklistFilterVizier {
    @AuraEnabled(cacheable=true)
    public static List <Picklist_Filter__mdt> fetchObjectPicklistFilters(String inputRecord) {

        List<Picklist_Filter__mdt> requestedPicklistFilters = new List<Picklist_Filter__mdt>();
        List<Picklist_Filter__mdt> allPicklistFilters = Picklist_Filter__mdt.getAll().values();

IF (inputRecord != '') {

        for(Integer i = 0; i < allPicklistFilters.size(); i++){
            if(allPicklistFilters[i].Filtered_Object__c == inputRecord){
                requestedPicklistFilters.add(allPicklistFilters[i]);
            }
        }
    } else {

        requestedPicklistFilters.addAll(allPicklistFilters);
    }
        return requestedPicklistFilters;
        }
}
```

## Methods
### `fetchObjectPicklistFilters(inputRecord)`

`AURAENABLED`

#### Signature
```apex
public static List<Picklist_Filter__mdt> fetchObjectPicklistFilters(String inputRecord)
```

#### Parameters
| Name | Type | Description |
|------|------|-------------|
| inputRecord | String |  |

#### Return Type
**List&lt;Picklist_Filter__mdt&gt;**