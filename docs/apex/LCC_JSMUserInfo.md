---
hide:
  - path
---

# LCC_JSMUserInfo Class

## Class Diagram

```mermaid
graph TD
  LCC_JSMUserInfo["LCC_JSMUserInfo"]:::mainApexClass
  click LCC_JSMUserInfo "/objects/LCC_JSMUserInfo/"
  LCC_JSMQueryResultService["LCC_JSMQueryResultService"]:::apexClass
  click LCC_JSMQueryResultService "/apex/LCC_JSMQueryResultService/"
  LCC_JSMQueryResultServiceTest["LCC_JSMQueryResultServiceTest"]:::apexTestClass
  click LCC_JSMQueryResultServiceTest "/apex/LCC_JSMQueryResultServiceTest/"


  LCC_JSMQueryResultService --> LCC_JSMUserInfo
  LCC_JSMQueryResultServiceTest --> LCC_JSMUserInfo

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
public class LCC_JSMUserInfo{
    @AuraEnabled
    public String Id {get;set;}
    @AuraEnabled
    public String FirstName {get;set;}
    @AuraEnabled
    public String LastName {get;set;}
    @AuraEnabled
    public String UserEmail {get;set;}
    @AuraEnabled
    public String Name {get;set;}
    @AuraEnabled
    public String UserName {get;set;}
}
```

## Properties
### `Id`

`AURAENABLED`

#### Signature
```apex
public Id
```

#### Type
String

---

### `FirstName`

`AURAENABLED`

#### Signature
```apex
public FirstName
```

#### Type
String

---

### `LastName`

`AURAENABLED`

#### Signature
```apex
public LastName
```

#### Type
String

---

### `UserEmail`

`AURAENABLED`

#### Signature
```apex
public UserEmail
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

### `UserName`

`AURAENABLED`

#### Signature
```apex
public UserName
```

#### Type
String