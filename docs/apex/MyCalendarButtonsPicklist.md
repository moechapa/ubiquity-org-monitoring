---
hide:
  - path
---

# MyCalendarButtonsPicklist Class

**Inheritance**

VisualEditor.DynamicPickList

## Class Diagram

```mermaid
graph TD
  MyCalendarButtonsPicklist["MyCalendarButtonsPicklist"]:::mainApexClass
  click MyCalendarButtonsPicklist "/objects/MyCalendarButtonsPicklist/"




classDef apexClass fill:#FFF4C2,stroke:#CCAA00,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef apexTestClass fill:#F5F5F5,stroke:#999999,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef mainApexClass fill:#FFB3B3,stroke:#A94442,stroke-width:4px,rx:14px,ry:14px,shadow:drop,color:#333,font-weight:bold;

```

<!-- Apex description -->

## Apex Code

```java
global with sharing class MyCalendarButtonsPicklist extends VisualEditor.DynamicPickList{
    
    global override VisualEditor.DataRow getDefaultValue(){
        VisualEditor.DataRow defaultValue = new VisualEditor.DataRow('Day, Week & Month', 'agendaDay,agendaWeek,month');
        return defaultValue;
    }
    global override VisualEditor.DynamicPickListRows getValues() {
        VisualEditor.DataRow value1 = new VisualEditor.DataRow('Day, Week & Month', 'agendaDay,agendaWeek,month');
        VisualEditor.DataRow value2 = new VisualEditor.DataRow('All', 'agendaDay,agendaWeek,month,list');
        VisualEditor.DataRow value3 = new VisualEditor.DataRow('Week & Month', 'agendaWeek,month');
        VisualEditor.DataRow value4 = new VisualEditor.DataRow('Day & Month', 'agendaDay,month');
        VisualEditor.DataRow value5 = new VisualEditor.DataRow('List', 'list');
        VisualEditor.DataRow value6 = new VisualEditor.DataRow('None', '');
        VisualEditor.DynamicPickListRows  myValues = new VisualEditor.DynamicPickListRows();
        myValues.addRow(value1);
        myValues.addRow(value2);
        myValues.addRow(value3);
        myValues.addRow(value4);
        myValues.addRow(value5);
        myValues.addRow(value6);
        return myValues;
    }
}
```

## Methods
### `getDefaultValue()`

#### Signature
```apex
global override VisualEditor.DataRow getDefaultValue()
```

#### Return Type
**VisualEditor.DataRow**

---

### `getValues()`

#### Signature
```apex
global override VisualEditor.DynamicPickListRows getValues()
```

#### Return Type
**VisualEditor.DynamicPickListRows**