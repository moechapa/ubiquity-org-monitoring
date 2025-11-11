---
hide:
  - path
---

# SendBetterEmailResponse Class

## Class Diagram

```mermaid
graph TD
  SendBetterEmailResponse["SendBetterEmailResponse"]:::mainApexClass
  click SendBetterEmailResponse "/objects/SendBetterEmailResponse/"
  SendBetterEmail["SendBetterEmail"]:::apexClass
  SendBetterEmailBulk["SendBetterEmailBulk"]:::apexClass
  SendBetterEmailTest["SendBetterEmailTest"]:::apexTestClass

  SendBetterEmailResponse --> SendBetterEmail

  SendBetterEmail --> SendBetterEmailResponse
  SendBetterEmailBulk --> SendBetterEmailResponse
  SendBetterEmailTest --> SendBetterEmailResponse

  SendBetterEmailBulk --> SendBetterEmail
  SendBetterEmailTest --> SendBetterEmail
  SendBetterEmailTest --> SendBetterEmailBulk

classDef apexClass fill:#FFF4C2,stroke:#CCAA00,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef apexTestClass fill:#F5F5F5,stroke:#999999,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef mainApexClass fill:#FFB3B3,stroke:#A94442,stroke-width:4px,rx:14px,ry:14px,shadow:drop,color:#333,font-weight:bold;

linkStyle 0 stroke:#4C9F70,stroke-width:4px;
linkStyle 1,2,3 stroke:#FF8C00,stroke-width:2px;
linkStyle 4,5,6 stroke:#A6A6A6,stroke-width:2px;
```

<!-- Apex description -->

## Apex Code

```java
public inherited sharing class SendBetterEmailResponse {
    @invocableVariable
    @AuraEnabled
    public Boolean isSuccess;

    @invocableVariable
    @AuraEnabled
    public String templateUsed;

    @invocableVariable
    @AuraEnabled
    public List<String> taskIds;

    @invocableVariable
    @AuraEnabled
    public String errors;

    @invocableVariable
    @AuraEnabled
    public List<String> taskErrors;

    public Integer index; // variable that assigns internal Id

    public SendBetterEmailResponse() {
        taskIds = new List<String>();
        taskErrors = new List<String>();
    }
}
```

## Fields
### `isSuccess`

`INVOCABLEVARIABLE`
`AURAENABLED`

#### Signature
```apex
public isSuccess
```

#### Type
Boolean

---

### `templateUsed`

`INVOCABLEVARIABLE`
`AURAENABLED`

#### Signature
```apex
public templateUsed
```

#### Type
String

---

### `taskIds`

`INVOCABLEVARIABLE`
`AURAENABLED`

#### Signature
```apex
public taskIds
```

#### Type
List&lt;String&gt;

---

### `errors`

`INVOCABLEVARIABLE`
`AURAENABLED`

#### Signature
```apex
public errors
```

#### Type
String

---

### `taskErrors`

`INVOCABLEVARIABLE`
`AURAENABLED`

#### Signature
```apex
public taskErrors
```

#### Type
List&lt;String&gt;

---

### `index`

#### Signature
```apex
public index
```

#### Type
Integer

## Constructors
### `SendBetterEmailResponse()`

#### Signature
```apex
public SendBetterEmailResponse()
```