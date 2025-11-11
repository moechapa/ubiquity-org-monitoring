---
hide:
  - path
---

# ZoomPhoneCallRecordingServiceTest Class

`ISTEST`

**Implements**

HttpCalloutMock

## Class Diagram

```mermaid
graph TD
  ZoomPhoneCallRecordingServiceTest["ZoomPhoneCallRecordingServiceTest"]:::mainApexClass
  click ZoomPhoneCallRecordingServiceTest "/objects/ZoomPhoneCallRecordingServiceTest/"
  DataFactory["DataFactory"]:::apexTestClass
  click DataFactory "/apex/DataFactory/"
  ZoomPhoneCallRecordingService["ZoomPhoneCallRecordingService"]:::apexClass
  click ZoomPhoneCallRecordingService "/apex/ZoomPhoneCallRecordingService/"
  ZoomTestDataFactory["ZoomTestDataFactory"]:::apexTestClass
  click ZoomTestDataFactory "/apex/ZoomTestDataFactory/"

  ZoomPhoneCallRecordingServiceTest --> DataFactory
  ZoomPhoneCallRecordingServiceTest --> ZoomPhoneCallRecordingService
  ZoomPhoneCallRecordingServiceTest --> ZoomTestDataFactory


  ZoomTestDataFactory --> DataFactory

classDef apexClass fill:#FFF4C2,stroke:#CCAA00,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef apexTestClass fill:#F5F5F5,stroke:#999999,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef mainApexClass fill:#FFB3B3,stroke:#A94442,stroke-width:4px,rx:14px,ry:14px,shadow:drop,color:#333,font-weight:bold;

linkStyle 0,1,2 stroke:#4C9F70,stroke-width:4px;
linkStyle 3 stroke:#A6A6A6,stroke-width:2px;
```

<!-- Apex description -->

## Apex Code

```java
@isTest
public with sharing class ZoomPhoneCallRecordingServiceTest implements HttpCalloutMock {

    @TestSetup
    static void makeData(){
        ZoomTestDataFactory.createZoomCall();
    }

    public HTTPResponse respond(HTTPRequest request) {
        String recordingId = '1234567';

        HttpResponse response = new HttpResponse();
        response.setHeader('Content-Type', 'application/json');
        response.setHeader('location', 'https://api.zoom.us/v2/recordings/' + recordingId + '/transcript');
        response.setBody('{"call_id": "123456789","file_url": "https://domain/recording/download/EvVNLihbQ1WpeG_ALwnNzg"}');
        response.setStatusCode(200);
        return response;
    }

    @isTest
    public static void getCallTranscriptionStatusTest() {
        Zoom_Phone_Calls_Info__c call = [SELECT Id, Call_Id__c FROM Zoom_Phone_Calls_Info__c WHERE Name = 'Test Call' LIMIT 1];
        Test.setMock(HttpCalloutMock.class, new ZoomPhoneCallRecordingServiceTest());
        Test.startTest();
        ZoomPhoneCallRecordingService.getPhoneCallRecording(call.Call_Id__c, call.Id);
        Test.stopTest();
    }

}
```

## Methods
### `makeData()`

`TESTSETUP`

#### Signature
```apex
private static void makeData()
```

#### Return Type
**void**

---

### `respond(request)`

#### Signature
```apex
public HTTPResponse respond(HTTPRequest request)
```

#### Parameters
| Name | Type | Description |
|------|------|-------------|
| request | HTTPRequest |  |

#### Return Type
**HTTPResponse**

---

### `getCallTranscriptionStatusTest()`

`ISTEST`

#### Signature
```apex
public static void getCallTranscriptionStatusTest()
```

#### Return Type
**void**