---
hide:
  - path
---

# AnyEventCalCtrlTest Class

`ISTEST`

## Class Diagram

```mermaid
graph TD
  AnyEventCalCtrlTest["AnyEventCalCtrlTest"]:::mainApexClass
  click AnyEventCalCtrlTest "/objects/AnyEventCalCtrlTest/"
  AnyEventCalCtrl["AnyEventCalCtrl"]:::apexClass
  click AnyEventCalCtrl "/apex/AnyEventCalCtrl/"

  AnyEventCalCtrlTest --> AnyEventCalCtrl



classDef apexClass fill:#FFF4C2,stroke:#CCAA00,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef apexTestClass fill:#F5F5F5,stroke:#999999,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef mainApexClass fill:#FFB3B3,stroke:#A94442,stroke-width:4px,rx:14px,ry:14px,shadow:drop,color:#333,font-weight:bold;

linkStyle 0 stroke:#4C9F70,stroke-width:4px;
```

<!-- Apex description -->

## Apex Code

```java
@isTest(seeAllData=true)
public class AnyEventCalCtrlTest {
	static testMethod void getEventsTest() {
        AnyEventCalCtrl.getEvents('Event', 'Subject', 'StartDateTime', 'EndDateTime', 'Description', 'OwnerId', true);
        AnyEventCalCtrl.getEvents('Event', 'Subject', 'StartDateTime', 'EndDateTime', 'Description', 'OwnerId', false);
    }
    static testMethod void upsertEventsTest() {
        AnyEventCalCtrl.upsertEvents('{"title":"dasdsad","startDateTime":"2017-04-26T17:00:00-07:00","endDateTime":"2017-04-26T19:00:00-07:00","description":"asdasd"}', 'Event', 'Subject', 'StartDateTime', 'EndDateTime', 'Description', 'OwnerId');
    	AnyEventCalCtrl.upsertEvents('{"id":"sadad","title":"dasdsad","startDateTime":"2017-04-26T17:00:00-07:00","endDateTime":"2017-04-26T19:00:00-07:00","description":"asdasd"}', 'Event', 'Subject', 'StartDateTime', 'EndDateTime', 'Description', 'OwnerId');
    }
    static testMethod void deleteEventTest() {
        AnyEventCalCtrl.deleteEvent('00U41000006bFIA', 'Event', 'Subject', 'StartDateTime', 'EndDateTime', 'Description', 'OwnerId');
    }
    static testMethod void crudSecurityTest() {
        AnyEventCalCtrl.isAccessible('Event');
        AnyEventCalCtrl.isAccessible('Event','Subject');
        AnyEventCalCtrl.isCreateable('Event');
        AnyEventCalCtrl.isDeletable('Event');
    }
}
```

## Methods
### `getEventsTest()`

#### Signature
```apex
private static testMethod void getEventsTest()
```

#### Return Type
**void**

---

### `upsertEventsTest()`

#### Signature
```apex
private static testMethod void upsertEventsTest()
```

#### Return Type
**void**

---

### `deleteEventTest()`

#### Signature
```apex
private static testMethod void deleteEventTest()
```

#### Return Type
**void**

---

### `crudSecurityTest()`

#### Signature
```apex
private static testMethod void crudSecurityTest()
```

#### Return Type
**void**