---
hide:
  - path
---

# PicklistFilterVizier_TEST Class

`ISTEST`

## Class Diagram

```mermaid
graph TD
  PicklistFilterVizier_TEST["PicklistFilterVizier_TEST"]:::mainApexClass
  click PicklistFilterVizier_TEST "/objects/PicklistFilterVizier_TEST/"
  PicklistFilterVizier["PicklistFilterVizier"]:::apexClass
  click PicklistFilterVizier "/apex/PicklistFilterVizier/"

  PicklistFilterVizier_TEST --> PicklistFilterVizier



classDef apexClass fill:#FFF4C2,stroke:#CCAA00,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef apexTestClass fill:#F5F5F5,stroke:#999999,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef mainApexClass fill:#FFB3B3,stroke:#A94442,stroke-width:4px,rx:14px,ry:14px,shadow:drop,color:#333,font-weight:bold;

linkStyle 0 stroke:#4C9F70,stroke-width:4px;
```

<!-- Apex description -->

## Apex Code

```java
@isTest
private class PicklistFilterVizier_TEST {

    @isTest
    private static void checkPicklistFilterCase() {
        test.startTest();
        List<Picklist_Filter__mdt> picklistFilterResults = PicklistFilterVizier.fetchObjectPicklistFilters('Case');
        test.stopTest();
        Picklist_Filter__mdt singleResult = picklistFilterResults.get(0);
        system.assert(singleResult != null, 'Should return something, good job.');
        system.assert(singleResult.Filtered_Object__c == 'Case', 'Specifically, it should return a record with the case object.');
    }

    @isTest
    private static void checkPicklistFilterNull() {
        test.startTest();
        List<Picklist_Filter__mdt> picklistFilterResults = PicklistFilterVizier.fetchObjectPicklistFilters('');
        test.stopTest();
        Picklist_Filter__mdt singleResult = picklistFilterResults.get(0);
        system.assert(singleResult != null, 'Should return something, good job.');
    }
}
```

## Methods
### `checkPicklistFilterCase()`

`ISTEST`

#### Signature
```apex
private static void checkPicklistFilterCase()
```

#### Return Type
**void**

---

### `checkPicklistFilterNull()`

`ISTEST`

#### Signature
```apex
private static void checkPicklistFilterNull()
```

#### Return Type
**void**