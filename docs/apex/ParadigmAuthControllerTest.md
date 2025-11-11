---
hide:
  - path
---

# ParadigmAuthControllerTest Class

`ISTEST`

## Class Diagram

```mermaid
graph TD
  ParadigmAuthControllerTest["ParadigmAuthControllerTest"]:::mainApexClass
  click ParadigmAuthControllerTest "/objects/ParadigmAuthControllerTest/"
  ParadigmAuthController["ParadigmAuthController"]:::apexClass
  click ParadigmAuthController "/apex/ParadigmAuthController/"

  ParadigmAuthControllerTest --> ParadigmAuthController



classDef apexClass fill:#FFF4C2,stroke:#CCAA00,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef apexTestClass fill:#F5F5F5,stroke:#999999,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef mainApexClass fill:#FFB3B3,stroke:#A94442,stroke-width:4px,rx:14px,ry:14px,shadow:drop,color:#333,font-weight:bold;

linkStyle 0 stroke:#4C9F70,stroke-width:4px;
```

<!-- Apex description -->

## Apex Code

```java
@isTest
private class ParadigmAuthControllerTest {

    @isTest
    private static void testGetAuthToken() {

        Proposal__c testProposal = new Proposal__c();
        insert testProposal;
        Test.startTest();
        Test.setMock(HttpCalloutMock.class, new ParadigmAuthControllerMock());
        String result = ParadigmAuthController.getAuthToken(testProposal.Id);
        Test.stopTest();
    }

    private class ParadigmAuthControllerMock implements HttpCalloutMock {
        public HTTPResponse respond(HTTPRequest req) {
            HttpResponse res = new HttpResponse();
            res.setStatusCode(200);
            res.setBody('{"accessToken":"TestAccessToken","expiration":"TestExpiration","errorMessage":null}');
            return res;
        }
    }
}
```

## Methods
### `testGetAuthToken()`

`ISTEST`

#### Signature
```apex
private static void testGetAuthToken()
```

#### Return Type
**void**

## Classes
### ParadigmAuthControllerMock Class

**Implements**

HttpCalloutMock

#### Methods
##### `respond(req)`

###### Signature
```apex
public HTTPResponse respond(HTTPRequest req)
```

###### Parameters
| Name | Type | Description |
|------|------|-------------|
| req | HTTPRequest |  |

###### Return Type
**HTTPResponse**