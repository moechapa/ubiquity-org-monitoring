---
hide:
  - path
---

# PackageInfo Class

`RESTRESOURCE`

## Class Diagram

```mermaid
graph TD
  PackageInfo["PackageInfo"]:::mainApexClass
  click PackageInfo "/objects/PackageInfo/"
  PackageInfoTest["PackageInfoTest"]:::apexTestClass
  click PackageInfoTest "/apex/PackageInfoTest/"


  PackageInfoTest --> PackageInfo


classDef apexClass fill:#FFF4C2,stroke:#CCAA00,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef apexTestClass fill:#F5F5F5,stroke:#999999,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef mainApexClass fill:#FFB3B3,stroke:#A94442,stroke-width:4px,rx:14px,ry:14px,shadow:drop,color:#333,font-weight:bold;

linkStyle 0 stroke:#FF8C00,stroke-width:2px;
```

<!-- Apex description -->

## Apex Code

```java
@RestResource(urlMapping='/PackageInfo')
global class PackageInfo {
  global class Payload {
    public String organizationName;
    public String packageVersion;

    public Payload() {
      Organization myOrg = [Select o.Name From Organization o];
      this.organizationName = myOrg.Name;
      this.packageVersion = '1.11';
    }
  }

  @HttpGet
  global static Payload getInfo() {
    Payload payload = new Payload();
    return payload;
  }
}
```

## Methods
### `getInfo()`

`HTTPGET`

#### Signature
```apex
global static Payload getInfo()
```

#### Return Type
**Payload**

## Classes
### Payload Class

#### Fields
##### `organizationName`

###### Signature
```apex
public organizationName
```

###### Type
String

---

##### `packageVersion`

###### Signature
```apex
public packageVersion
```

###### Type
String

#### Constructors
##### `Payload()`

###### Signature
```apex
public Payload()
```