# Compliance_Auto_Reply_on_Case_Creation history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Compliance_Auto_Reply_on_Case_Creation-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Case</b></br>Type: <b>On Create Only</b>"]):::startClass
    click START "#general-information" "1362490300"
    
    START --> myDecision
    myRule_1_A1("📧 <em></em><br/>Child Case Auto Reply"):::actionCalls
    click myRule_1_A1 "#myrule_1_a1" "3770032584"
    
    myRule_3_A1("📧 <em></em><br/>External Case Auto Reply"):::actionCalls
    click myRule_3_A1 "#myrule_3_a1" "1844664814"
    
    myRule_5_A1("📧 <em></em><br/>Case Auto Reply"):::actionCalls
    click myRule_5_A1 "#myrule_5_a1" "300194498"
    
    myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
    click myDecision "#mydecision" "3635976314"
    
    myDecision2{"🔀 <em></em><br/>myDecision2"}:::decisions
    click myDecision2 "#mydecision2" "3639635221"
    
    myDecision4{"🔀 <em></em><br/>myDecision4"}:::decisions
    click myDecision4 "#mydecision4" "3828941509"
    
    myDecision6{"🔀 <em></em><br/>myDecision6"}:::decisions
    click myDecision6 "#mydecision6" "2894469592"
    
    myDecision8{"🔀 <em></em><br/>myDecision8"}:::decisions
    click myDecision8 "#mydecision8" "1252293082"
    
    myRule_5_A2[("🛠️ <em></em><br/>Update Account & Plan")]:::recordUpdates
    click myRule_5_A2 "#myrule_5_a2" "587046701"
    
    myRule_1_A1 --> END_myRule_1_A1
    myRule_3_A1 --> END_myRule_3_A1
    myRule_5_A1 --> myRule_5_A2
    myDecision --> |"Compliance Child Case Created"| myRule_1_A1
    myDecision --> |"default"| myDecision2
    myDecision2 --> |"Compliance External Case"| myRule_3_A1
    myDecision2 --> |"default"| myDecision4
    myDecision4 --> |"Marketing Case Received"| myRule_5_A1
    myDecision4 --> |"default"| myDecision6
    myDecision6 --> |"default"| myDecision8
    myDecision8 --> |"default"| END_myDecision8
    myRule_5_A2 --> END_myRule_5_A2
    END_myRule_1_A1(( END )):::endClass
    END_myRule_3_A1(( END )):::endClass
    END_myDecision8(( END )):::endClass
    END_myRule_5_A2(( END )):::endClass
    
    
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
    |Label|Case | Auto Reply on Case Creation|
    |Status|⚠️ Draft|
    |Description|Auto Reply When Case is Created|
    |Interview Label|Compliance_Auto_Reply_on_Case_Creation-13_InterviewLabel|
    |Start Element Reference|[myDecision](#mydecision)|
    | Object Type (PM)|Case|
    | Object Variable (PM)|myVariable_current|
    | Old Object Variable (PM)|myVariable_old|
    | Trigger Type (PM)|onCreateOnly|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |myVariable_current|SObject|⬜|✅|✅|Case|<!-- -->|
    |myVariable_old|SObject|⬜|✅|⬜|Case|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Child Case Auto Reply|
    |Action Type|Email Alert|
    |Action Name|Case.Compliance_Auto_Reply_Child_Case|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Case.Compliance_Auto_Reply_Child_Case|
    |Email Alert Selection (PM)|Compliance_Auto_Reply_Child_Case|
    | SObject Row Id (input)|myVariable_current.Id|
    
    
    ### myRule_3_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|External Case Auto Reply|
    |Action Type|Email Alert|
    |Action Name|Case.Compliance_Auto_Reply_External_Case|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Case.Compliance_Auto_Reply_External_Case|
    |Email Alert Selection (PM)|Compliance_Auto_Reply_External_Case|
    | SObject Row Id (input)|myVariable_current.Id|
    
    
    ### myRule_5_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Case Auto Reply|
    |Action Type|Email Alert|
    |Action Name|Case.Marketing_Auto_Reply_Case|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Case.Marketing_Auto_Reply_Case|
    |Email Alert Selection (PM)|Marketing_Auto_Reply_Case|
    | SObject Row Id (input)|myVariable_current.Id|
    |Connector|[myRule_5_A2](#myrule_5_a2)|
    
    
    ### myDecision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision](#mydecision)|
    |Default Connector|[myDecision2](#mydecision2)|
    |Default Connector Label|default|
    |Index (PM)|numberValue: 0<br/>|
    
    
    #### Rule myRule_1 (Compliance Child Case Created)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_A1](#myrule_1_a1)|
    |Condition Logic|1 AND 3 AND 4 AND (2 OR (5 AND 6))|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.OwnerId| Equal To|00537000001tb5HAAQ|
    |2|myVariable_current.ParentId| Is Null|⬜|
    |3|myVariable_current.CreatedById| Not Equal To|00537000001tb5HAAQ|
    |4|myVariable_current.lntcss__Splited_From__c| Is Null|✅|
    |5|myVariable_current.CreatedById| Not Equal To|00500000006xUkgAAE|
    |6|myVariable_current.ParentId| Is Null|✅|
    
    
    
    
    ### myDecision2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision2](#mydecision2)|
    |Default Connector|[myDecision4](#mydecision4)|
    |Default Connector Label|default|
    |Index (PM)|1|
    
    
    #### Rule myRule_3 (Compliance External Case)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_3_A1](#myrule_3_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.OwnerId| Equal To|00537000001tb5HAAQ|
    |2|myVariable_current.CreatedById| Not Equal To|00537000001tb5HAAQ|
    |3|myVariable_current.lntcss__Splited_From__c| Is Null|✅|
    |4|myVariable_current.ParentId| Is Null|✅|
    
    
    
    
    ### myDecision4
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision4](#mydecision4)|
    |Default Connector|[myDecision6](#mydecision6)|
    |Default Connector Label|default|
    |Index (PM)|2|
    
    
    #### Rule myRule_5 (Marketing Case Received)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_5_A1](#myrule_5_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.OwnerId| Equal To|00500000006vmbuAAA|
    |2|myVariable_current.CreatedById| Not Equal To|00500000006vmbuAAA|
    |3|myVariable_current.ParentId| Is Null|✅|
    |4|myVariable_current.lntcss__Splited_From__c| Is Null|✅|
    |5|myVariable_current.Splited_From__c| Is Null|✅|
    |6|myVariable_current.ContactId| Is Null|⬜|
    
    
    
    
    ### myDecision6
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision6](#mydecision6)|
    |Default Connector|[myDecision8](#mydecision8)|
    |Default Connector Label|default|
    |Index (PM)|3|
    
    
    #### Rule myRule_7 (Saver Auto Response)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.OwnerId| Equal To|00G370000014GsOEAU|
    
    
    
    
    ### myDecision8
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision8](#mydecision8)|
    |Default Connector Label|default|
    |Index (PM)|4|
    
    
    #### Rule myRule_9 (Sponsor Auto Response)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.OwnerId| Equal To|00G1G000001N3PAUA0|
    
    
    
    
    ### myRule_5_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Case|
    |Label|Update Account & Plan|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Case]|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|0013700000JH68lAAD|
    |Plan__c|a2o1G000000oQW5QAM|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

