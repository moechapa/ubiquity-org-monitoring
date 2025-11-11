---
hide:
  - path
---

# Case_Invocable_Thread_Token Class

## Class Diagram

```mermaid
graph TD
  Case_Invocable_Thread_Token["Case_Invocable_Thread_Token"]:::mainApexClass
  click Case_Invocable_Thread_Token "/objects/Case_Invocable_Thread_Token/"
  Case_Invocable_Thread_Token_TEST["Case_Invocable_Thread_Token_TEST"]:::apexTestClass
  click Case_Invocable_Thread_Token_TEST "/apex/Case_Invocable_Thread_Token_TEST/"


  Case_Invocable_Thread_Token_TEST --> Case_Invocable_Thread_Token


classDef apexClass fill:#FFF4C2,stroke:#CCAA00,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef apexTestClass fill:#F5F5F5,stroke:#999999,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef mainApexClass fill:#FFB3B3,stroke:#A94442,stroke-width:4px,rx:14px,ry:14px,shadow:drop,color:#333,font-weight:bold;

linkStyle 0 stroke:#FF8C00,stroke-width:2px;
```

<!-- Apex description -->

## Apex Code

```java
public class Case_Invocable_Thread_Token {
    
    @InvocableMethod(label='Retrieve Case Thread Token' description='Returns case thread token for use with email alerts')
    public static List<returnVariables> caseThreadToken(List<inputVariables> inputs){
        List<returnVariables> returnVarsList = new List<returnVariables>();
        for(InputVariables input : inputs){
            
            //Grab Flow Inputs
            id caseFlowId = input.caseId;
            
            //Declare Variables
            string flowThreadToken;
            
            IF (caseFlowId != NULL){
                flowThreadToken  =  EmailMessages.getFormattedThreadingToken(caseFlowId);
            }
            
            //Return Variables
            ReturnVariables returnVars = new ReturnVariables();
            returnVars.threadToken = flowThreadToken;
            returnVarsList.add(returnVars);
        }
        return returnVarsList;
    }
    
    public class inputVariables{
        @InvocableVariable
        public id caseId;
    }
    
    public class returnVariables{
        @InvocableVariable
        public string threadToken;
    }
    
}
```

## Methods
### `caseThreadToken(inputs)`

`INVOCABLEMETHOD`

#### Signature
```apex
public static List<returnVariables> caseThreadToken(List<inputVariables> inputs)
```

#### Parameters
| Name | Type | Description |
|------|------|-------------|
| inputs | List&lt;inputVariables&gt; |  |

#### Return Type
**List&lt;returnVariables&gt;**

## Classes
### inputVariables Class

#### Fields
##### `caseId`

`INVOCABLEVARIABLE`

###### Signature
```apex
public caseId
```

###### Type
id

### returnVariables Class

#### Fields
##### `threadToken`

`INVOCABLEVARIABLE`

###### Signature
```apex
public threadToken
```

###### Type
string