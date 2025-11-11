---
hide:
  - path
---

# PackageInfoTest Class

`ISTEST`

## Class Diagram

```mermaid
graph TD
  PackageInfoTest["PackageInfoTest"]:::mainApexClass
  click PackageInfoTest "/objects/PackageInfoTest/"
  PackageInfo["PackageInfo"]:::apexClass
  click PackageInfo "/apex/PackageInfo/"

  PackageInfoTest --> PackageInfo



classDef apexClass fill:#FFF4C2,stroke:#CCAA00,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef apexTestClass fill:#F5F5F5,stroke:#999999,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef mainApexClass fill:#FFB3B3,stroke:#A94442,stroke-width:4px,rx:14px,ry:14px,shadow:drop,color:#333,font-weight:bold;

linkStyle 0 stroke:#4C9F70,stroke-width:4px;
```

<!-- Apex description -->

## Apex Code

```java
@isTest
private class PackageInfoTest {
  @isTest static void getInfoTest() {
    Organization myOrg = [Select o.Name From Organization o];
    PackageInfo.Payload result = PackageInfo.getInfo();
    System.assertEquals(myOrg.Name, result.organizationName);
    System.assertEquals('1.11', result.packageVersion);
  }
}
```

## Methods
### `getInfoTest()`

`ISTEST`

#### Signature
```apex
private static void getInfoTest()
```

#### Return Type
**void**