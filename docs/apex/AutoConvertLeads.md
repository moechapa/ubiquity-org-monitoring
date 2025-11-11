---
hide:
  - path
---

# AutoConvertLeads Class

## Class Diagram

```mermaid
graph TD
  AutoConvertLeads["AutoConvertLeads"]:::mainApexClass
  click AutoConvertLeads "/objects/AutoConvertLeads/"
  AutoConvertLeadsNoOpp["AutoConvertLeadsNoOpp"]:::apexClass
  click AutoConvertLeadsNoOpp "/apex/AutoConvertLeadsNoOpp/"
  TestAutoConvertLeads["TestAutoConvertLeads"]:::apexTestClass
  click TestAutoConvertLeads "/apex/TestAutoConvertLeads/"
  TestAutoConvertLeadsNoOpp["TestAutoConvertLeadsNoOpp"]:::apexTestClass
  click TestAutoConvertLeadsNoOpp "/apex/TestAutoConvertLeadsNoOpp/"


  AutoConvertLeadsNoOpp --> AutoConvertLeads
  TestAutoConvertLeads --> AutoConvertLeads
  TestAutoConvertLeadsNoOpp --> AutoConvertLeads

  TestAutoConvertLeadsNoOpp --> AutoConvertLeadsNoOpp
  TestAutoConvertLeadsNoOpp --> TestAutoConvertLeads

classDef apexClass fill:#FFF4C2,stroke:#CCAA00,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef apexTestClass fill:#F5F5F5,stroke:#999999,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef mainApexClass fill:#FFB3B3,stroke:#A94442,stroke-width:4px,rx:14px,ry:14px,shadow:drop,color:#333,font-weight:bold;

linkStyle 0,1,2 stroke:#FF8C00,stroke-width:2px;
linkStyle 3,4 stroke:#A6A6A6,stroke-width:2px;
```

<!-- Apex description -->

## Apex Code

```java
Public class AutoConvertLeads
{
    @InvocableMethod
    public static void LeadAssign(List<Id> LeadIds)
    {
            Database.LeadConvert Leadconvert = new Database.LeadConvert();
        	Leadconvert.setDoNotCreateOpportunity(false);
            Leadconvert.setLeadId(LeadIds[0]);
            LeadStatus Leads= [SELECT Id, MasterLabel FROM LeadStatus WHERE IsConverted=true LIMIT 1];
            Leadconvert.setConvertedStatus(Leads.MasterLabel);
            Database.LeadConvertResult Leadconverts = Database.convertLead(Leadconvert);
            System.assert(Leadconverts.isSuccess());
   }
}
```

## Methods
### `LeadAssign(LeadIds)`

`INVOCABLEMETHOD`

#### Signature
```apex
public static void LeadAssign(List<Id> LeadIds)
```

#### Parameters
| Name | Type | Description |
|------|------|-------------|
| LeadIds | List&lt;Id&gt; |  |

#### Return Type
**void**