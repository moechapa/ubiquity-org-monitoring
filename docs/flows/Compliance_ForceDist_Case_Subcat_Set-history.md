# Compliance_ForceDist_Case_Subcat_Set history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Compliance_ForceDist_Case_Subcat_Set-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>simplesurvey__Survey__c</b></br>Type: <b>On All Changes</b>"]):::startClass
    click START "#general-information" "918826114"
    
    START --> myDecision
    myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
    click myDecision "#mydecision" "311446242"
    
    myDecision10{"🔀 <em></em><br/>myDecision10"}:::decisions
    click myDecision10 "#mydecision10" "3051955348"
    
    myDecision2{"🔀 <em></em><br/>myDecision2"}:::decisions
    click myDecision2 "#mydecision2" "2760707296"
    
    myDecision4{"🔀 <em></em><br/>myDecision4"}:::decisions
    click myDecision4 "#mydecision4" "339333947"
    
    myDecision6{"🔀 <em></em><br/>myDecision6"}:::decisions
    click myDecision6 "#mydecision6" "3258403310"
    
    myDecision8{"🔀 <em></em><br/>myDecision8"}:::decisions
    click myDecision8 "#mydecision8" "2140171777"
    
    myRule_11_A1[("🛠️ <em></em><br/>Sub Category Set")]:::recordUpdates
    click myRule_11_A1 "#myrule_11_a1" "578514795"
    
    myRule_1_A1[("🛠️ <em></em><br/>Copy to Case")]:::recordUpdates
    click myRule_1_A1 "#myrule_1_a1" "1373317229"
    
    myRule_3_A1[("🛠️ <em></em><br/>LookUp = 0")]:::recordUpdates
    click myRule_3_A1 "#myrule_3_a1" "1761715545"
    
    myRule_5_A1[("🛠️ <em></em><br/>Sub Category Set")]:::recordUpdates
    click myRule_5_A1 "#myrule_5_a1" "4230370503"
    
    myRule_7_A1[("🛠️ <em></em><br/>Sub Category Set")]:::recordUpdates
    click myRule_7_A1 "#myrule_7_a1" "3824623361"
    
    myRule_9_A1[("🛠️ <em></em><br/>Sub Category Set")]:::recordUpdates
    click myRule_9_A1 "#myrule_9_a1" "3775110686"
    
    myDecision --> |"Lookup Updates"| myRule_1_A1
    myDecision --> |"default"| myDecision2
    myDecision10 --> |"Client Locate + FPS"| myRule_11_A1
    myDecision10 --> |"default"| END_myDecision10
    myDecision2 --> |"LookUp Null"| myRule_3_A1
    myDecision2 --> |"default"| myDecision4
    myDecision4 --> |"Ubiquity Locate"| myRule_5_A1
    myDecision4 --> |"default"| myDecision6
    myDecision6 --> |"Client Locate"| myRule_7_A1
    myDecision6 --> |"default"| myDecision8
    myDecision8 --> |"Ubiquity Locate + FPS"| myRule_9_A1
    myDecision8 --> |"default"| myDecision10
    myRule_11_A1 --> END_myRule_11_A1
    myRule_1_A1 --> myDecision2
    myRule_3_A1 --> myDecision4
    myRule_5_A1 --> END_myRule_5_A1
    myRule_7_A1 --> END_myRule_7_A1
    myRule_9_A1 --> END_myRule_9_A1
    END_myDecision10(( END )):::endClass
    END_myRule_11_A1(( END )):::endClass
    END_myRule_5_A1(( END )):::endClass
    END_myRule_7_A1(( END )):::endClass
    END_myRule_9_A1(( END )):::endClass
    
    
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
    |Label|Compliance | ForceDist Case Subcat Set|
    |Status|Active|
    |Description|Sets Subcategory of Force Out Distribution Cases When A Survey Is Received|
    |Interview Label|Compliance_ForceDist_Case_Subcat_Set-13_InterviewLabel|
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
    |Default Connector|[myDecision2](#mydecision2)|
    |Default Connector Label|default|
    |Index (PM)|numberValue: 0<br/>|
    
    
    #### Rule myRule_1 (Lookup Updates)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_A1](#myrule_1_a1)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.FindEmployees__c| Equal To|Yes, I want Ubiquity to locate my ex-employee(s) for me ($25 look up fee per employee)|
    
    
    
    
    ### myDecision10
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision10](#mydecision10)|
    |Default Connector Label|default|
    |Index (PM)|5|
    
    
    #### Rule myRule_11 (Client Locate + FPS)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_11_A1](#myrule_11_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.FindEmployees__c| Equal To|No, I (sponsor/trustee) will locate their last known address and update the information online if applicable|
    |2|myVariable_current.simplesurvey__Case__r.FPS_Required__c| Equal To|Yes|
    
    
    
    
    ### myDecision2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision2](#mydecision2)|
    |Default Connector|[myDecision4](#mydecision4)|
    |Default Connector Label|default|
    |Index (PM)|1|
    
    
    #### Rule myRule_3 (LookUp Null)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_3_A1](#myrule_3_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.LookUpNumberofEmployees__c| Is Null|✅|
    
    
    
    
    ### myDecision4
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision4](#mydecision4)|
    |Default Connector|[myDecision6](#mydecision6)|
    |Default Connector Label|default|
    |Index (PM)|2|
    
    
    #### Rule myRule_5 (Ubiquity Locate)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_5_A1](#myrule_5_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.FindEmployees__c| Equal To|Yes, I want Ubiquity to locate my ex-employee(s) for me ($25 look up fee per employee)|
    |2|myVariable_current.simplesurvey__Case__r.FPS_Required__c| Equal To|No|
    
    
    
    
    ### myDecision6
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision6](#mydecision6)|
    |Default Connector|[myDecision8](#mydecision8)|
    |Default Connector Label|default|
    |Index (PM)|3|
    
    
    #### Rule myRule_7 (Client Locate)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_7_A1](#myrule_7_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.FindEmployees__c| Equal To|No, I (sponsor/trustee) will locate their last known address and update the information online if applicable|
    |2|myVariable_current.simplesurvey__Case__r.FPS_Required__c| Equal To|No|
    
    
    
    
    ### myDecision8
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision8](#mydecision8)|
    |Default Connector|[myDecision10](#mydecision10)|
    |Default Connector Label|default|
    |Index (PM)|4|
    
    
    #### Rule myRule_9 (Ubiquity Locate + FPS)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_9_A1](#myrule_9_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.simplesurvey__Case__r.FPS_Required__c| Equal To|Yes|
    |2|myVariable_current.FindEmployees__c| Equal To|Yes, I want Ubiquity to locate my ex-employee(s) for me ($25 look up fee per employee)|
    
    
    
    
    ### myRule_11_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Case|
    |Label|Sub Category Set|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[simplesurvey__Survey__c].Case|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.simplesurvey__Case__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Sub_Category__c|Client Locates + FPS|
    
    
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Case|
    |Label|Copy to Case|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[simplesurvey__Survey__c].Case|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myDecision2](#mydecision2)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.simplesurvey__Case__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Look_Up_Name_Count__c|myVariable_current.LookUpNumberofEmployees__c|
    |Look_Up_Name_List__c|myVariable_current.LookupNamesList__c|
    
    
    
    
    ### myRule_3_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Case|
    |Label|LookUp = 0|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[simplesurvey__Survey__c].Case|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myDecision4](#mydecision4)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.simplesurvey__Case__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Look_Up_Name_Count__c|numberValue: 0<br/>|
    
    
    
    
    ### myRule_5_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Case|
    |Label|Sub Category Set|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[simplesurvey__Survey__c].Case|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.simplesurvey__Case__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Sub_Category__c|Ubiquity Locates|
    
    
    
    
    ### myRule_7_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Case|
    |Label|Sub Category Set|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[simplesurvey__Survey__c].Case|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.simplesurvey__Case__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Sub_Category__c|Client Locates|
    
    
    
    
    ### myRule_9_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Case|
    |Label|Sub Category Set|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[simplesurvey__Survey__c].Case|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.simplesurvey__Case__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Sub_Category__c|Ubiquity Locates + FPS|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

