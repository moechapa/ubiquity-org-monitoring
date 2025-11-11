---
hide:
  - path
---

# TestAutoConvertLeads Class

`ISTEST`

## Class Diagram

```mermaid
graph TD
  TestAutoConvertLeads["TestAutoConvertLeads"]:::mainApexClass
  click TestAutoConvertLeads "/objects/TestAutoConvertLeads/"
  AutoConvertLeads["AutoConvertLeads"]:::apexClass
  click AutoConvertLeads "/apex/AutoConvertLeads/"
  TestAutoConvertLeadsNoOpp["TestAutoConvertLeadsNoOpp"]:::apexTestClass
  click TestAutoConvertLeadsNoOpp "/apex/TestAutoConvertLeadsNoOpp/"

  TestAutoConvertLeads --> AutoConvertLeads

  TestAutoConvertLeadsNoOpp --> TestAutoConvertLeads

  TestAutoConvertLeadsNoOpp --> AutoConvertLeads

classDef apexClass fill:#FFF4C2,stroke:#CCAA00,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef apexTestClass fill:#F5F5F5,stroke:#999999,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef mainApexClass fill:#FFB3B3,stroke:#A94442,stroke-width:4px,rx:14px,ry:14px,shadow:drop,color:#333,font-weight:bold;

linkStyle 0 stroke:#4C9F70,stroke-width:4px;
linkStyle 1 stroke:#FF8C00,stroke-width:2px;
linkStyle 2 stroke:#A6A6A6,stroke-width:2px;
```

<!-- Apex description -->

## Apex Code

```java
@isTest 
      public class TestAutoConvertLeads{
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
      leadToCreate.Product_Type__c= 'Upgrade';
      leadToCreate.Plan_Type__c= 'New Plan';
      leadToCreate.Lead_Origin__c= 'Ubiquity Generated';
      leadToCreate.PostalCode= '92562';
	  leadToCreate.Business_Unit__c= 'Ubiquity';
      leadToCreate.Participant_Fee_Payment__c= 'Employee';
      insert leadToCreate; 
      
      Ids.add(leadToCreate.id);
      AutoConvertLeads.LeadAssign(Ids);
      
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