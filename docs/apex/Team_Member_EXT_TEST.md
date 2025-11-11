---
hide:
  - path
---

# Team_Member_EXT_TEST Class

`ISTEST`

## Class Diagram

```mermaid
graph TD
  Team_Member_EXT_TEST["Team_Member_EXT_TEST"]:::mainApexClass
  click Team_Member_EXT_TEST "/objects/Team_Member_EXT_TEST/"
  Team_Member_Ext["Team_Member_Ext"]:::apexClass
  click Team_Member_Ext "/apex/Team_Member_Ext/"

  Team_Member_EXT_TEST --> Team_Member_Ext



classDef apexClass fill:#FFF4C2,stroke:#CCAA00,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef apexTestClass fill:#F5F5F5,stroke:#999999,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef mainApexClass fill:#FFB3B3,stroke:#A94442,stroke-width:4px,rx:14px,ry:14px,shadow:drop,color:#333,font-weight:bold;

linkStyle 0 stroke:#4C9F70,stroke-width:4px;
```

<!-- Apex description -->

## Apex Code

```java
@isTest
private class Team_Member_EXT_TEST {

    @isTest
    static void verifyStatusUpdate() {
        // Create test case
        List<Case> cases = new List<Case>();
        cases.add(new Case(Subject = 'Test Subject'));
        
        //create standard controller
        ApexPages.StandardSetController caseController = new ApexPages.StandardSetController(cases);

        caseController.setSelected(cases);

        Team_Member_Ext ext = new Team_Member_Ext(caseController);

        ext.setField('Status');
        ext.setFieldValue('Assigned');

        System.debug('Field: ' + ext.getField());
        System.debug('Field Value: ' + ext.getFieldValue());

        Test.startTest();
        ext.updateSelections();
        Test.stopTest();

        System.debug(cases);
        System.debug(caseController.getSelected());

        System.assert(cases[0].Status == 'Assigned', 'Case status should be "Assigned"');
    }

    @isTest
    static void verifyTeamMemberUpdate() {
        // Create test case
        List<Case> cases = new List<Case>();
        cases.add(new Case(Subject = 'Test Subject'));
        
        //create standard controller
        ApexPages.StandardSetController caseController = new ApexPages.StandardSetController(cases);

        caseController.setSelected(cases);

        Team_Member_Ext ext = new Team_Member_Ext(caseController);

        ext.setField('Team_Member__c');
        ext.setFieldValue(':^)');

        System.debug('Field: ' + ext.getField());
        System.debug('Field Value: ' + ext.getFieldValue());

        Test.startTest();
        ext.updateSelections();
        Test.stopTest();

        System.debug(cases);

        System.assert(cases[0].Team_Member__c == ':^)', 'Case team member should be ":^)"');
    }
}
```

## Methods
### `verifyStatusUpdate()`

`ISTEST`

#### Signature
```apex
private static void verifyStatusUpdate()
```

#### Return Type
**void**

---

### `verifyTeamMemberUpdate()`

`ISTEST`

#### Signature
```apex
private static void verifyTeamMemberUpdate()
```

#### Return Type
**void**