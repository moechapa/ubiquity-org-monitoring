---
hide:
  - path
---

# SimplyCalloutMock Class

`ISTEST`

**Implements**

HttpCalloutMock

## Class Diagram

```mermaid
graph TD
  SimplyCalloutMock["SimplyCalloutMock"]:::mainApexClass
  click SimplyCalloutMock "/objects/SimplyCalloutMock/"
  SimplyCallout["SimplyCallout"]:::apexClass
  click SimplyCallout "/apex/SimplyCallout/"
  ProposalTriggerTest["ProposalTriggerTest"]:::apexTestClass
  click ProposalTriggerTest "/apex/ProposalTriggerTest/"
  SimplyCalloutBatchTest["SimplyCalloutBatchTest"]:::apexTestClass
  click SimplyCalloutBatchTest "/apex/SimplyCalloutBatchTest/"
  SimplyCalloutMockFail["SimplyCalloutMockFail"]:::apexTestClass
  click SimplyCalloutMockFail "/apex/SimplyCalloutMockFail/"

  SimplyCalloutMock --> SimplyCallout

  ProposalTriggerTest --> SimplyCalloutMock
  SimplyCalloutBatchTest --> SimplyCalloutMock
  SimplyCalloutMockFail --> SimplyCalloutMock

  ProposalTriggerTest --> SimplyCallout
  ProposalTriggerTest --> SimplyCalloutMockFail
  SimplyCalloutBatchTest --> SimplyCallout
  SimplyCalloutBatchTest --> SimplyCalloutMockFail
  SimplyCalloutMockFail --> SimplyCallout

classDef apexClass fill:#FFF4C2,stroke:#CCAA00,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef apexTestClass fill:#F5F5F5,stroke:#999999,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef mainApexClass fill:#FFB3B3,stroke:#A94442,stroke-width:4px,rx:14px,ry:14px,shadow:drop,color:#333,font-weight:bold;

linkStyle 0 stroke:#4C9F70,stroke-width:4px;
linkStyle 1,2,3 stroke:#FF8C00,stroke-width:2px;
linkStyle 4,5,6,7,8 stroke:#A6A6A6,stroke-width:2px;
```

<!-- Apex description -->

## Apex Code

```java
@isTest
global class SimplyCalloutMock implements HttpCalloutMock {
    
	global HttpResponse respond(HttpRequest req) {
        HttpResponse response = new HttpResponse();
        response.setBody('{"success":1,"failure":0, "salesforceId":"006", "salesforceId":"001"}');
        response.setStatusCode(200);
        return response;
    }
}
```

## Methods
### `respond(req)`

#### Signature
```apex
global HttpResponse respond(HttpRequest req)
```

#### Parameters
| Name | Type | Description |
|------|------|-------------|
| req | HttpRequest |  |

#### Return Type
**HttpResponse**