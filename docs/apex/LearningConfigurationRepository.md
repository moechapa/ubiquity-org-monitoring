---
hide:
  - path
---

# LearningConfigurationRepository Class

## Class Diagram

```mermaid
graph TD
  LearningConfigurationRepository["LearningConfigurationRepository"]:::mainApexClass
  click LearningConfigurationRepository "/objects/LearningConfigurationRepository/"
  TestLearningConfigurationRepository["TestLearningConfigurationRepository"]:::apexTestClass
  click TestLearningConfigurationRepository "/apex/TestLearningConfigurationRepository/"


  TestLearningConfigurationRepository --> LearningConfigurationRepository


classDef apexClass fill:#FFF4C2,stroke:#CCAA00,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef apexTestClass fill:#F5F5F5,stroke:#999999,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef mainApexClass fill:#FFB3B3,stroke:#A94442,stroke-width:4px,rx:14px,ry:14px,shadow:drop,color:#333,font-weight:bold;

linkStyle 0 stroke:#FF8C00,stroke-width:2px;
```

<!-- Apex description -->

## Apex Code

```java
public with sharing class LearningConfigurationRepository {
    @AuraEnabled(cacheable=true)
    public static X360Learning_configuration__c getLearningConfiguration(){
        sObject rawLearningConfiguration = [
            SELECT
                Competitor_Field_Name__c,
                Tenant_Url__c
            FROM X360Learning_configuration__c
            WHERE Name = 'configuration'
            LIMIT 1
        ];
        return (X360Learning_configuration__c)rawLearningConfiguration;
    }

    @AuraEnabled
    public static void upsertLearningConfiguration(String competitorFieldName, String tenantUrl) {
        X360Learning_configuration__c learningConfiguration = new X360Learning_configuration__c(
            Name = 'configuration',
            Competitor_Field_Name__c = competitorFieldName,
            Tenant_Url__c = tenantUrl
        );
        upsert learningConfiguration Name;
    }
}
```

## Methods
### `getLearningConfiguration()`

`AURAENABLED`

#### Signature
```apex
public static X360Learning_configuration__c getLearningConfiguration()
```

#### Return Type
**[X360Learning_configuration__c](../objects/X360Learning_configuration__c.md)**

---

### `upsertLearningConfiguration(competitorFieldName, tenantUrl)`

`AURAENABLED`

#### Signature
```apex
public static void upsertLearningConfiguration(String competitorFieldName, String tenantUrl)
```

#### Parameters
| Name | Type | Description |
|------|------|-------------|
| competitorFieldName | String |  |
| tenantUrl | String |  |

#### Return Type
**void**