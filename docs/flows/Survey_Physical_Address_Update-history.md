# Survey_Physical_Address_Update history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Survey_Physical_Address_Update-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>simplesurvey__Survey__c</b></br>Type: <b>On All Changes</b>"]):::startClass
    click START "#general-information" "930056215"
    
    START --> myDecision
    myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
    click myDecision "#mydecision" "2421299255"
    
    myRule_1_A1[("🛠️ <em></em><br/>Physical Street")]:::recordUpdates
    click myRule_1_A1 "#myrule_1_a1" "1368533935"
    
    myRule_1_A2[("🛠️ <em></em><br/>Physical City")]:::recordUpdates
    click myRule_1_A2 "#myrule_1_a2" "3285537192"
    
    myRule_1_A3[("🛠️ <em></em><br/>Physical State")]:::recordUpdates
    click myRule_1_A3 "#myrule_1_a3" "1586388138"
    
    myRule_1_A4[("🛠️ <em></em><br/>Physical Zip")]:::recordUpdates
    click myRule_1_A4 "#myrule_1_a4" "2196845226"
    
    myDecision --> |"Physical Address Survey"| myRule_1_A1
    myDecision --> |"default"| END_myDecision
    myRule_1_A1 --> myRule_1_A2
    myRule_1_A2 --> myRule_1_A3
    myRule_1_A3 --> myRule_1_A4
    myRule_1_A4 --> END_myRule_1_A4
    END_myDecision(( END )):::endClass
    END_myRule_1_A4(( END )):::endClass
    
    
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
    |Label|Survey | Physical Address Update|
    |Status|Active|
    |Description|Update physical address from survey to account|
    |Interview Label|Survey_Physical_Address_Update-4_InterviewLabel|
    |Start Element Reference|[myDecision](#mydecision)|
    | Object Type (PM)|simplesurvey__Survey__c|
    | Object Variable (PM)|myVariable_current|
    | Old Object Variable (PM)|myVariable_old|
    | Trigger Type (PM)|onAllChanges|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |myVariable_current|SObject|⬜|✅|✅|simplesurvey__Survey__c|<!-- -->|
    |myVariable_old|SObject|⬜|✅|⬜|simplesurvey__Survey__c|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### myDecision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision](#mydecision)|
    |Default Connector Label|default|
    |Index (PM)|numberValue: 0<br/>|
    
    
    #### Rule myRule_1 (Physical Address Survey)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_A1](#myrule_1_a1)|
    |Condition Logic|1 AND (2 OR 3 OR 4 OR 5)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.RecordTypeId| Equal To|0121G000000bpr7QAA|
    |2|myVariable_current.City__c| Is Null|⬜|
    |3|myVariable_current.State__c| Is Null|⬜|
    |4|myVariable_current.Physical_Street__c| Is Null|⬜|
    |5|myVariable_current.Zip__c| Is Null|⬜|
    
    
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Account|
    |Label|Physical Street|
    |Evaluation Type (PM)|criteria|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[simplesurvey__Survey__c].Account|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myRule_1_A2](#myrule_1_a2)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.simplesurvey__Account__c|
    |2|Physical_Street_Address__c| Is Null|<!-- -->|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Physical_Street_Address__c|myVariable_current.Physical_Street__c|
    
    
    
    
    ### myRule_1_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Account|
    |Label|Physical City|
    |Evaluation Type (PM)|criteria|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[simplesurvey__Survey__c].Account|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myRule_1_A3](#myrule_1_a3)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.simplesurvey__Account__c|
    |2|Physical_City__c| Is Null|<!-- -->|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Physical_City__c|myVariable_current.City__c|
    
    
    
    
    ### myRule_1_A3
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Account|
    |Label|Physical State|
    |Evaluation Type (PM)|criteria|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[simplesurvey__Survey__c].Account|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myRule_1_A4](#myrule_1_a4)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.simplesurvey__Account__c|
    |2|Physical_State__c| Is Null|<!-- -->|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Physical_State__c|myVariable_current.State__c|
    
    
    
    
    ### myRule_1_A4
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Account|
    |Label|Physical Zip|
    |Evaluation Type (PM)|criteria|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[simplesurvey__Survey__c].Account|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.simplesurvey__Account__c|
    |2|Physical_Zip_Code__c| Is Null|<!-- -->|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Physical_Zip_Code__c|myVariable_current.Zip__c|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

