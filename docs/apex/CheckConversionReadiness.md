---
hide:
  - path
---

# CheckConversionReadiness Class

## Class Diagram

```mermaid
graph TD
  CheckConversionReadiness["CheckConversionReadiness"]:::mainApexClass
  click CheckConversionReadiness "/objects/CheckConversionReadiness/"
  CheckConversionReadiness_TEST["CheckConversionReadiness_TEST"]:::apexTestClass
  click CheckConversionReadiness_TEST "/apex/CheckConversionReadiness_TEST/"


  CheckConversionReadiness_TEST --> CheckConversionReadiness


classDef apexClass fill:#FFF4C2,stroke:#CCAA00,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef apexTestClass fill:#F5F5F5,stroke:#999999,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef mainApexClass fill:#FFB3B3,stroke:#A94442,stroke-width:4px,rx:14px,ry:14px,shadow:drop,color:#333,font-weight:bold;

linkStyle 0 stroke:#FF8C00,stroke-width:2px;
```

<!-- Apex description -->

## Apex Code

```java
public with sharing class CheckConversionReadiness {
  @AuraEnabled
  public static List<String> runCheck(Id leadId) {
    List<String> errors = new List<String>();
    final String convStatus = [
      SELECT MasterLabel
      FROM LeadStatus
      WHERE IsConverted = TRUE
      WITH SECURITY_ENFORCED
      LIMIT 1
    ]
    .MasterLabel;
    System.SavePoint sp = Database.setSavePoint();
    Lead lead2Check = new Lead(Id = leadId, Status = convStatus);
    Database.SaveResult sr = Database.update(lead2Check, false);
    if (!sr.isSuccess()) {
      for (Database.Error e : sr.getErrors()) {
        if (e.getStatusCode().toString() == 'FIELD_CUSTOM_VALIDATION_EXCEPTION') {
          errors.add(e.getMessage());
        }
      }
    }
    Database.rollback(sp);
    return errors;
  }
}
```

## Methods
### `runCheck(leadId)`

`AURAENABLED`

#### Signature
```apex
public static List<String> runCheck(Id leadId)
```

#### Parameters
| Name | Type | Description |
|------|------|-------------|
| leadId | Id |  |

#### Return Type
**List&lt;String&gt;**