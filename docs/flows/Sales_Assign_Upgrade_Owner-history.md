# Sales_Assign_Upgrade_Owner history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Sales_Assign_Upgrade_Owner-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Opportunity</b></br>Type: <b>On All Changes</b>"]):::startClass
    click START "#general-information" "3208280287"
    
    START --> isChangedDecision2_myRule_1_OwnerId
    isChangedDecision2_myRule_1_OwnerId{"🔀 <em></em><br/>isChangedDecision2_myRule_1_OwnerId"}:::decisions
    click isChangedDecision2_myRule_1_OwnerId "#ischangeddecision2_myrule_1_ownerid" "3145737190"
    
    isChangedDecision7_myRule_6_OwnerId{"🔀 <em></em><br/>isChangedDecision7_myRule_6_OwnerId"}:::decisions
    click isChangedDecision7_myRule_6_OwnerId "#ischangeddecision7_myrule_6_ownerid" "2108405924"
    
    myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
    click myDecision "#mydecision" "3583827917"
    
    myDecision5{"🔀 <em></em><br/>myDecision5"}:::decisions
    click myDecision5 "#mydecision5" "2772305413"
    
    myRule_1_A1[("➕ <em></em><br/>Task Created")]:::recordCreates
    click myRule_1_A1 "#myrule_1_a1" "1397692071"
    
    myRule_6_A1[("➕ <em></em><br/>Task Created")]:::recordCreates
    click myRule_6_A1 "#myrule_6_a1" "306409285"
    
    isChangedDecision2_myRule_1_OwnerId --> |"isChangedRule_2_myRule_1_OwnerId"| isChangedDecision7_myRule_6_OwnerId
    isChangedDecision2_myRule_1_OwnerId --> |"default"| isChangedDecision7_myRule_6_OwnerId
    isChangedDecision7_myRule_6_OwnerId --> |"isChangedRule_7_myRule_6_OwnerId"| myDecision
    isChangedDecision7_myRule_6_OwnerId --> |"default"| myDecision
    myDecision --> |"Update Created from Plan"| myRule_1_A1
    myDecision --> |"default"| myDecision5
    myDecision5 --> |"Add-On Created from Plan"| myRule_6_A1
    myDecision5 --> |"default"| END_myDecision5
    myRule_1_A1 --> END_myRule_1_A1
    myRule_6_A1 --> END_myRule_6_A1
    END_myDecision5(( END )):::endClass
    END_myRule_1_A1(( END )):::endClass
    END_myRule_6_A1(( END )):::endClass
    
    
    classDef actionCalls fill:#D4E4FC,color:black,text-decoration:none,max-height:100px
    classDef assignments fill:#FBEED7,color:black,text-decoration:none,max-height:100px
    classDef collectionProcessors fill:#F0E3FA,color:black,text-decoration:none,max-height:100px
    classDef customErrors fill:#FFE9E9,color:black,text-decoration:none,max-height:100px
    classDef decisions fill:#FDEAF6,color:black,text-decoration:none,max-height:100px
    classDef loops fill:#FDEAF6,color:black,text-decoration:none,max-height:100px
    classDef recordCreates fill:#FFF8C9,color:black,text-decoration:none,max-height:100px
    classDef recordDeletes fill:#FFF8C9,color:black,text-decoration:none,max-height:100px
    classDef recordLookups fill:#EDEAFF,color:black,text-decoration:none,max-height:100px
    classDef recordUpdates fill:#FFF8C9,color:black,text-decoration:none,max-height:100px
    classDef screens fill:#DFF6FF,color:black,text-decoration:none,max-height:100px
    classDef subflows fill:#D4E4FC,color:black,text-decoration:none,max-height:100px
    classDef startClass fill:#D9F2E6,color:black,text-decoration:none,max-height:100px
    classDef endClass fill:#F9BABA,color:black,text-decoration:none,max-height:100px
    classDef transforms fill:#FDEAF6,color:black,text-decoration:none,max-height:100px
    
    
    ```
    
    <!-- Flow description -->
    
    ## General Information
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Process Type| Workflow|
    |Label|Sales | Assign Upgrade Owner|
    |Status|Obsolete|
    |Description|Update Upgrade Opportunity Owner Upon Creation|
    |Interview Label|Sales_Assign_Upgrade_Owner-14_InterviewLabel|
    |Start Element Reference|[isChangedDecision2_myRule_1_OwnerId](#ischangeddecision2_myrule_1_ownerid)|
    | Object Type (PM)|Opportunity|
    | Object Variable (PM)|myVariable_current|
    | Old Object Variable (PM)|myVariable_old|
    | Trigger Type (PM)|onAllChanges|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |myVariable_current|SObject|⬜|✅|✅|Opportunity|<!-- -->|
    |myVariable_old|SObject|⬜|✅|⬜|Opportunity|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |formula_3_myRule_1_A1_5930333250|Date|TODAY()|<!-- -->|
    |formula_4_myRule_1_A1_9592130775|String|"Follow Up on Upgrade for " + {!myVariable_current.Name}|<!-- -->|
    |formula_8_myRule_6_A1_7707242117|Date|TODAY()|<!-- -->|
    |formula_9_myRule_6_A1_3431422211|String|"Follow Up on Add-On for " + {!myVariable_current.Name}|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### isChangedDecision2_myRule_1_OwnerId
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision2_myRule_1_OwnerId](#ischangeddecision2_myrule_1_ownerid)|
    |Default Connector|[isChangedDecision7_myRule_6_OwnerId](#ischangeddecision7_myrule_6_ownerid)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_2_myRule_1_OwnerId (isChangedRule_2_myRule_1_OwnerId)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision7_myRule_6_OwnerId](#ischangeddecision7_myrule_6_ownerid)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.OwnerId| Not Equal To|myVariable_current.OwnerId|
    
    
    
    
    ### isChangedDecision7_myRule_6_OwnerId
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision7_myRule_6_OwnerId](#ischangeddecision7_myrule_6_ownerid)|
    |Default Connector|[myDecision](#mydecision)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_7_myRule_6_OwnerId (isChangedRule_7_myRule_6_OwnerId)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myDecision](#mydecision)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.OwnerId| Not Equal To|myVariable_current.OwnerId|
    
    
    
    
    ### myDecision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision](#mydecision)|
    |Default Connector|[myDecision5](#mydecision5)|
    |Default Connector Label|default|
    |Index (PM)|numberValue: 0<br/>|
    
    
    #### Rule myRule_1 (Update Created from Plan)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_A1](#myrule_1_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.CreatedById| Not Equal To|myVariable_current.OwnerId|
    |2|myVariable_current.Product_Type__c| Equal To|Upgrade|
    |3|isChangedRule_2_myRule_1_OwnerId| Equal To|✅|
    |4|myVariable_current.LastModifiedById| Not Equal To|myVariable_current.OwnerId|
    
    
    
    
    ### myDecision5
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision5](#mydecision5)|
    |Default Connector Label|default|
    |Index (PM)|1|
    
    
    #### Rule myRule_6 (Add-On Created from Plan)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_6_A1](#myrule_6_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.CreatedById| Not Equal To|myVariable_current.OwnerId|
    |2|myVariable_current.Product_Type__c| Equal To|Add-On Product|
    |3|isChangedRule_7_myRule_6_OwnerId| Equal To|✅|
    |4|myVariable_current.LastModifiedById| Not Equal To|myVariable_current.OwnerId|
    
    
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Task|
    |Label|Task Created|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |ActivityDate|formula_3_myRule_1_A1_5930333250|
    |OwnerId|myVariable_current.OwnerId|
    |Priority|Normal|
    |Status|Not Started|
    |Subject|formula_4_myRule_1_A1_9592130775|
    |WhatId|myVariable_current.Id|
    |WhoId|myVariable_current.Associated_Contact__r.Id|
    
    
    
    
    ### myRule_6_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Task|
    |Label|Task Created|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |ActivityDate|formula_8_myRule_6_A1_7707242117|
    |OwnerId|myVariable_current.OwnerId|
    |Priority|Normal|
    |Status|Not Started|
    |Subject|formula_9_myRule_6_A1_3431422211|
    |WhatId|myVariable_current.Id|
    |WhoId|myVariable_current.Associated_Contact__r.Id|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

