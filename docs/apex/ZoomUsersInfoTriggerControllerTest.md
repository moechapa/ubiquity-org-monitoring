---
hide:
  - path
---

# ZoomUsersInfoTriggerControllerTest Class

`ISTEST`

## Class Diagram

```mermaid
graph TD
  ZoomUsersInfoTriggerControllerTest["ZoomUsersInfoTriggerControllerTest"]:::mainApexClass
  click ZoomUsersInfoTriggerControllerTest "/objects/ZoomUsersInfoTriggerControllerTest/"
  DataFactory["DataFactory"]:::apexTestClass
  click DataFactory "/apex/DataFactory/"
  ZoomTestDataFactory["ZoomTestDataFactory"]:::apexTestClass
  click ZoomTestDataFactory "/apex/ZoomTestDataFactory/"
  ZoomUsersInfoTriggerController["ZoomUsersInfoTriggerController"]:::apexClass
  click ZoomUsersInfoTriggerController "/apex/ZoomUsersInfoTriggerController/"

  ZoomUsersInfoTriggerControllerTest --> DataFactory
  ZoomUsersInfoTriggerControllerTest --> ZoomTestDataFactory
  ZoomUsersInfoTriggerControllerTest --> ZoomUsersInfoTriggerController


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
private class ZoomUsersInfoTriggerControllerTest {

    @isTest
    private static void zoomUsersTriggerTestMethod(){
        List<Zoom_Users_Info__c> lstUsr = ZoomTestDataFactory.createListZoomUsersInfo(8, 'System Administrator', 'test@myubiquity.com');
        List<String> statuses = new List<String>{'Do_Not_Disturb','Available', 'Away', 'In_Calendar_Event', 'In_Meeting', 'Offline', 'On_Phone_Call', 'Presenting'};

        Test.startTest();
        for(Integer i=0; i<statuses.size(); i++){
            lstUsr[i].Presence_Status__c = statuses[i];
            lstUsr[i].Status_Updated__c = DateTime.now().addHours(1);
            update lstUsr[i];
        }
        Test.stopTest();
        System.assertEquals(8, lstUsr.size(), '8 Zoom Users Info records should be created');
    }
}
```

## Methods
### `zoomUsersTriggerTestMethod()`

`ISTEST`

#### Signature
```apex
private static void zoomUsersTriggerTestMethod()
```

#### Return Type
**void**