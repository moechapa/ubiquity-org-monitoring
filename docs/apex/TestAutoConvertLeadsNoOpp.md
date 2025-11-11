---
hide:
  - path
---

# TestAutoConvertLeadsNoOpp Class

`ISTEST`

## Class Diagram

```mermaid
graph TD
  TestAutoConvertLeadsNoOpp["TestAutoConvertLeadsNoOpp"]:::mainApexClass
  click TestAutoConvertLeadsNoOpp "/objects/TestAutoConvertLeadsNoOpp/"
  AutoConvertLeads["AutoConvertLeads"]:::apexClass
  click AutoConvertLeads "/apex/AutoConvertLeads/"
  AutoConvertLeadsNoOpp["AutoConvertLeadsNoOpp"]:::apexClass
  click AutoConvertLeadsNoOpp "/apex/AutoConvertLeadsNoOpp/"
  TestAutoConvertLeads["TestAutoConvertLeads"]:::apexTestClass
  click TestAutoConvertLeads "/apex/TestAutoConvertLeads/"

  TestAutoConvertLeadsNoOpp --> AutoConvertLeads
  TestAutoConvertLeadsNoOpp --> AutoConvertLeadsNoOpp
  TestAutoConvertLeadsNoOpp --> TestAutoConvertLeads


  AutoConvertLeadsNoOpp --> AutoConvertLeads
  TestAutoConvertLeads --> AutoConvertLeads

classDef apexClass fill:#FFF4C2,stroke:#CCAA00,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef apexTestClass fill:#F5F5F5,stroke:#999999,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef mainApexClass fill:#FFB3B3,stroke:#A94442,stroke-width:4px,rx:14px,ry:14px,shadow:drop,color:#333,font-weight:bold;

linkStyle 0,1,2 stroke:#4C9F70,stroke-width:4px;
linkStyle 3,4 stroke:#A6A6A6,stroke-width:2px;
```

<!-- Apex description -->

## Apex Code

```java
@isTest 
      public class TestAutoConvertLeadsNoOpp{
      static testMethod void createnewlead() {
      User userToCreate = [Select id from user where profile.name='System Administrator' Limit 1];
      
      Test.startTest();    
      Lead leadToCreate =new Lead();
      List<id> Ids= New List<Id>();
      leadToCreate.ownerid= userToCreate.id;
      leadToCreate.LastName ='Gupta';
      leadToCreate.Company='Salesforce';
      leadToCreate.Rating='';
      leadToCreate.Status='Open';
      leadToCreate.Method_of_First_Contact__c='Phone';
      leadToCreate.LeadSource='Organic Search';
      leadToCreate.LeadSourceDetail__c='Website';
      leadToCreate.NumberOfEmployees= 5;
      leadToCreate.Business_Industry__c= 'Accounting';
      leadToCreate.Lead_Origin__c= 'Ubiquity Generated';
      insert leadToCreate;
      
      Ids.add(leadToCreate.id);
      AutoConvertLeadsNoOpp.LeadAssign(Ids);
      
      Test.stopTest();
   }
}
```

## Methods
### `createnewlead()`

#### Signature
```apex
private static testMethod void createnewlead()
```

#### Return Type
**void**