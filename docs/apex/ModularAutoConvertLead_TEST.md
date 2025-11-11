---
hide:
  - path
---

# ModularAutoConvertLead_TEST Class

`ISTEST`

## Class Diagram

```mermaid
graph TD
  ModularAutoConvertLead_TEST["ModularAutoConvertLead_TEST"]:::mainApexClass
  click ModularAutoConvertLead_TEST "/objects/ModularAutoConvertLead_TEST/"
  ModularAutoConvertLead["ModularAutoConvertLead"]:::apexClass
  click ModularAutoConvertLead "/apex/ModularAutoConvertLead/"

  ModularAutoConvertLead_TEST --> ModularAutoConvertLead



classDef apexClass fill:#FFF4C2,stroke:#CCAA00,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef apexTestClass fill:#F5F5F5,stroke:#999999,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef mainApexClass fill:#FFB3B3,stroke:#A94442,stroke-width:4px,rx:14px,ry:14px,shadow:drop,color:#333,font-weight:bold;

linkStyle 0 stroke:#4C9F70,stroke-width:4px;
```

<!-- Apex description -->

## Apex Code

```java
@isTest
private class ModularAutoConvertLead_TEST {
  @isTest
  static void testConvertLeadWithOpp() {
    // Get the test Lead record created in test setup
    Lead testLead = new Lead(
      FirstName = 'John',
      LastName = 'Doe',
      Company = 'Acme Inc.',
      NumberOfEmployees = 5,
      Business_Industry__c = 'Accounting',
      LeadSource = 'Organic Search'
    );

    insert testLead;

    // Call the convertLead method with createOpportunity set to true
    List<ModularAutoConvertLead.InputVariables> input = new List<ModularAutoConvertLead.InputVariables>();
    ModularAutoConvertLead.InputVariables inputVar = new ModularAutoConvertLead.InputVariables();
    inputVar.leadId = testLead.Id;
    inputVar.createOpportunity = true;
    input.add(inputVar);
    List<ModularAutoConvertLead.OutputVariables> output = new List<ModularAutoConvertLead.OutputVariables>();
    test.startTest();
    output = ModularAutoConvertLead.convertLead(input);
    test.stopTest();

    // Verify the conversion output
    Assert.areEqual(1, output.size(), 'One output variable is expected');
    ModularAutoConvertLead.OutputVariables convertedLead = output[0];
    Assert.isNotNull(
      convertedLead.convertedLeadId,
      'Converted lead ID should not be null'
    );
    Assert.isNotNull(
      convertedLead.convertedContactId,
      'Converted contact ID should not be null'
    );
    Assert.isNotNull(
      convertedLead.convertedAccountId,
      'Converted account ID should not be null'
    );
    Assert.isNotNull(
      convertedLead.convertedOppId,
      'Converted opportunity ID should not be null'
    );
    Assert.isNull(convertedLead.errorMessage, 'No error message is expected');
  }

  @isTest
  static void testConvertLeadFail() {
    Lead testLead = new Lead(
      FirstName = 'John',
      LastName = 'Doe',
      Company = 'Acme Inc.'
    );

    insert testLead;

    List<ModularAutoConvertLead.InputVariables> input = new List<ModularAutoConvertLead.InputVariables>();
    ModularAutoConvertLead.InputVariables inputVar = new ModularAutoConvertLead.InputVariables();
    inputVar.leadId = testLead.Id;
    inputVar.createOpportunity = true;
    input.add(inputVar);
    List<ModularAutoConvertLead.OutputVariables> output = new List<ModularAutoConvertLead.OutputVariables>();
    test.startTest();
    output = ModularAutoConvertLead.convertLead(input);
    test.stopTest();

    Assert.areEqual(1, output.size(), 'One output variable is expected');
    ModularAutoConvertLead.OutputVariables convertedLead = output[0];
    Assert.isNotNull(convertedLead.errorMessage, 'Error message is expected');
    Assert.isNull(
      convertedLead.convertedContactId,
      'Converted contact ID be null'
    );
    Assert.isNull(
      convertedLead.convertedAccountId,
      'Converted account ID should be null'
    );
    Assert.isNull(
      convertedLead.convertedOppId,
      'Converted opportunity ID should be null'
    );
  }
}
```

## Methods
### `testConvertLeadWithOpp()`

`ISTEST`

#### Signature
```apex
private static void testConvertLeadWithOpp()
```

#### Return Type
**void**

---

### `testConvertLeadFail()`

`ISTEST`

#### Signature
```apex
private static void testConvertLeadFail()
```

#### Return Type
**void**