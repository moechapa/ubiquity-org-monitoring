# Support_Case_Last_Activity_Email history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Support_Case_Last_Activity_Email-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>EmailMessage</b></br>Type: <b>On All Changes</b>"]):::startClass
    click START "#general-information" "2675437634"
    
    START --> myDecision
    myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
    click myDecision "#mydecision" "1021523285"
    
    myDecision2{"🔀 <em></em><br/>myDecision2"}:::decisions
    click myDecision2 "#mydecision2" "3799550544"
    
    myRule_3_pmetdec{"🔀 <em></em><br/>Previously Met Decision"}:::decisions
    click myRule_3_pmetdec "#myrule_3_pmetdec" "1637753747"
    
    myRule_1_A1[("🛠️ <em></em><br/>Update Case")]:::recordUpdates
    click myRule_1_A1 "#myrule_1_a1" "3353287878"
    
    myRule_3_A1[("🛠️ <em></em><br/>Update Case")]:::recordUpdates
    click myRule_3_A1 "#myrule_3_a1" "2745911383"
    
    myDecision --> |"Inbound Email"| myRule_1_A1
    myDecision --> |"default"| myDecision2
    myDecision2 --> |"Outbound Email"| myRule_3_pmetdec
    myDecision2 --> |"default"| END_myDecision2
    myRule_3_pmetdec --> |"Previously Met - Null"| myRule_3_A1
    myRule_3_pmetdec --> |"Not Previously Met"| myRule_3_A1
    myRule_1_A1 --> END_myRule_1_A1
    myRule_3_A1 --> END_myRule_3_A1
    END_myDecision2(( END )):::endClass
    END_myRule_1_A1(( END )):::endClass
    END_myRule_3_A1(( END )):::endClass
    
    
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
    |Label|Support | Case Last Activity Email|
    |Status|Obsolete|
    |Description|When an email is created on a case, stamp the Last Activity Date on the Case|
    |Interview Label|Support_Case_Last_Activity_Email-11_InterviewLabel|
    |Start Element Reference|[myDecision](#mydecision)|
    | Object Type (PM)|EmailMessage|
    | Object Variable (PM)|myVariable_current|
    | Old Object Variable (PM)|myVariable_old|
    | Trigger Type (PM)|onAllChanges|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |myVariable_current|SObject|⬜|✅|✅|EmailMessage|<!-- -->|
    |myVariable_old|SObject|⬜|✅|⬜|EmailMessage|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |formula_myRule_1|Boolean|NOT(ISBLANK({!myVariable_current.CreatedDate}))<br/><br/>&&<br/><br/>NOT(CONTAINS("@myubiquity.com", {!myVariable_current.FromAddress} ) )<br/><br/>&&<br/><br/>{!myVariable_current.Incoming} = TRUE<br/><br/>&& <br/><br/>ISPICKVAL({!myVariable_current.Status}, "New") <br/><br/>&&<br/><br/>NOT(ISBLANK({!myVariable_current.ParentId}))|<!-- -->|
    |formula_myRule_3|Boolean|NOT(ISBLANK({!myVariable_current.CreatedDate}))<br/><br/>&&<br/><br/>NOT(CONTAINS("@myubiquity.com", {!myVariable_current.ToAddress} ) )<br/><br/>&&<br/><br/>{!myVariable_current.Incoming} = FALSE<br/><br/>&& <br/><br/>ISPICKVAL({!myVariable_current.Status} , "3")<br/><br/>&&<br/><br/>NOT(ISBLANK({!myVariable_current.ParentId}))|<!-- -->|
    |formula_myRule_3_pmetrule|Boolean|NOT(ISBLANK({!myVariable_old.CreatedDate}))<br/><br/>&&<br/><br/>NOT(CONTAINS("@myubiquity.com", {!myVariable_old.ToAddress} ) )<br/><br/>&&<br/><br/>{!myVariable_old.Incoming} = FALSE<br/><br/>&& <br/><br/>ISPICKVAL({!myVariable_old.Status} , "3")<br/><br/>&&<br/><br/>NOT(ISBLANK({!myVariable_old.ParentId}))|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### myDecision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision](#mydecision)|
    |Default Connector|[myDecision2](#mydecision2)|
    |Default Connector Label|default|
    |Index (PM)|numberValue: 0<br/>|
    
    
    #### Rule myRule_1 (Inbound Email)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_A1](#myrule_1_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|formula_myRule_1| Equal To|✅|
    
    
    
    
    ### myDecision2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision2](#mydecision2)|
    |Default Connector Label|default|
    |Index (PM)|1|
    
    
    #### Rule myRule_3 (Outbound Email)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_3_pmetdec](#myrule_3_pmetdec)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|formula_myRule_3| Equal To|✅|
    
    
    
    
    ### myRule_3_pmetdec
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Previously Met Decision|
    |Default Connector|[myRule_3_A1](#myrule_3_a1)|
    |Default Connector Label|Not Previously Met|
    
    
    #### Rule myRule_3_pmetnullrule (Previously Met - Null)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_3_A1](#myrule_3_a1)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|✅|
    
    
    
    
    #### Rule myRule_3_pmetrule (Previously Met - Prev)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|formula_myRule_3_pmetrule| Equal To|✅|
    
    
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Case|
    |Label|Update Case|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[EmailMessage].Related To ID (Case)|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.RelatedToId|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Last_Inbound_Activity__c|myVariable_current.MessageDate|
    
    
    
    
    ### myRule_3_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Case|
    |Label|Update Case|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[EmailMessage].Related To ID (Case)|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.RelatedToId|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Last_Outbound_Activity__c|myVariable_current.MessageDate|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

