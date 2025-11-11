---
hide:
  - path
---

# LCC_JSMSiteInfo Class

## Class Diagram

```mermaid
graph TD
  LCC_JSMSiteInfo["LCC_JSMSiteInfo"]:::mainApexClass
  click LCC_JSMSiteInfo "/objects/LCC_JSMSiteInfo/"
  LCC_JSMQueryResultService["LCC_JSMQueryResultService"]:::apexClass
  click LCC_JSMQueryResultService "/apex/LCC_JSMQueryResultService/"
  LCC_JSMQueryResultServiceTest["LCC_JSMQueryResultServiceTest"]:::apexTestClass
  click LCC_JSMQueryResultServiceTest "/apex/LCC_JSMQueryResultServiceTest/"


  LCC_JSMQueryResultService --> LCC_JSMSiteInfo
  LCC_JSMQueryResultServiceTest --> LCC_JSMSiteInfo

  LCC_JSMQueryResultServiceTest --> LCC_JSMQueryResultService

classDef apexClass fill:#FFF4C2,stroke:#CCAA00,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef apexTestClass fill:#F5F5F5,stroke:#999999,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef mainApexClass fill:#FFB3B3,stroke:#A94442,stroke-width:4px,rx:14px,ry:14px,shadow:drop,color:#333,font-weight:bold;

linkStyle 0,1 stroke:#FF8C00,stroke-width:2px;
linkStyle 2 stroke:#A6A6A6,stroke-width:2px;
```

<!-- Apex description -->

## Apex Code

```java
public class LCC_JSMSiteInfo {
    @AuraEnabled
    public String Prefix {get;set;}
    @AuraEnabled
    public String Name {get;set;}
    @AuraEnabled
    public String Domain {get;set;}
}
```

## Properties
### `Prefix`

`AURAENABLED`

#### Signature
```apex
public Prefix
```

#### Type
String

---

### `Name`

`AURAENABLED`

#### Signature
```apex
public Name
```

#### Type
String

---

### `Domain`

`AURAENABLED`

#### Signature
```apex
public Domain
```

#### Type
String