---
hide:
  - path
---

# TestLearningConfigurationRepository Class

`ISTEST`

## Class Diagram

```mermaid
graph TD
  TestLearningConfigurationRepository["TestLearningConfigurationRepository"]:::mainApexClass
  click TestLearningConfigurationRepository "/objects/TestLearningConfigurationRepository/"
  LearningConfigurationRepository["LearningConfigurationRepository"]:::apexClass
  click LearningConfigurationRepository "/apex/LearningConfigurationRepository/"

  TestLearningConfigurationRepository --> LearningConfigurationRepository



classDef apexClass fill:#FFF4C2,stroke:#CCAA00,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef apexTestClass fill:#F5F5F5,stroke:#999999,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef mainApexClass fill:#FFB3B3,stroke:#A94442,stroke-width:4px,rx:14px,ry:14px,shadow:drop,color:#333,font-weight:bold;

linkStyle 0 stroke:#4C9F70,stroke-width:4px;
```

<!-- Apex description -->

## Apex Code

```java
@isTest
public class TestLearningConfigurationRepository {
    @isTest
    static void testGetLearningConfiguration() {
        String competitorFieldName = 'Competitor';
        String tenantUrl = 'team.360mooc.com';
        LearningConfigurationRepository.upsertLearningConfiguration(competitorFieldName, tenantUrl);

        X360Learning_configuration__c learningConfiguration = LearningConfigurationRepository.getLearningConfiguration();

        System.assertEquals(competitorFieldName, learningConfiguration.Competitor_Field_Name__c);
        System.assertEquals(tenantUrl, learningConfiguration.Tenant_Url__c);
    }
}
```

## Methods
### `testGetLearningConfiguration()`

`ISTEST`

#### Signature
```apex
private static void testGetLearningConfiguration()
```

#### Return Type
**void**