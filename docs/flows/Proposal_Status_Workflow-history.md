# Proposal_Status_Workflow history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Proposal_Status_Workflow-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Proposal__c</b></br>Type: <b>On All Changes</b>"]):::startClass
    click START "#general-information" "2034016403"
    
    START --> myDecision
    myRule_5_A2("📧 <em></em><br/>Email Owner"):::actionCalls
    click myRule_5_A2 "#myrule_5_a2" "2085676782"
    
    myRule_9_A2("📧 <em></em><br/>Email Owner"):::actionCalls
    click myRule_9_A2 "#myrule_9_a2" "2322299855"
    
    myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
    click myDecision "#mydecision" "103330959"
    
    myDecision10{"🔀 <em></em><br/>myDecision10"}:::decisions
    click myDecision10 "#mydecision10" "2932339129"
    
    myDecision2{"🔀 <em></em><br/>myDecision2"}:::decisions
    click myDecision2 "#mydecision2" "1813904106"
    
    myDecision4{"🔀 <em></em><br/>myDecision4"}:::decisions
    click myDecision4 "#mydecision4" "1551021453"
    
    myDecision6{"🔀 <em></em><br/>myDecision6"}:::decisions
    click myDecision6 "#mydecision6" "126601530"
    
    myDecision8{"🔀 <em></em><br/>myDecision8"}:::decisions
    click myDecision8 "#mydecision8" "2547636641"
    
    myRule_11_pmetdec{"🔀 <em></em><br/>Previously Met Decision"}:::decisions
    click myRule_11_pmetdec "#myrule_11_pmetdec" "248064522"
    
    myRule_3_pmetdec{"🔀 <em></em><br/>Previously Met Decision"}:::decisions
    click myRule_3_pmetdec "#myrule_3_pmetdec" "1637753747"
    
    myRule_5_pmetdec{"🔀 <em></em><br/>Previously Met Decision"}:::decisions
    click myRule_5_pmetdec "#myrule_5_pmetdec" "1058920637"
    
    myRule_7_pmetdec{"🔀 <em></em><br/>Previously Met Decision"}:::decisions
    click myRule_7_pmetdec "#myrule_7_pmetdec" "656583779"
    
    myRule_9_pmetdec{"🔀 <em></em><br/>Previously Met Decision"}:::decisions
    click myRule_9_pmetdec "#myrule_9_pmetdec" "2464508928"
    
    myRule_11_A1[("🛠️ <em></em><br/>Update Status")]:::recordUpdates
    click myRule_11_A1 "#myrule_11_a1" "3818768810"
    
    myRule_1_A1[("🛠️ <em></em><br/>Change Ownership")]:::recordUpdates
    click myRule_1_A1 "#myrule_1_a1" "1401194026"
    
    myRule_3_A1[("🛠️ <em></em><br/>Update Status")]:::recordUpdates
    click myRule_3_A1 "#myrule_3_a1" "1533760058"
    
    myRule_5_A1[("🛠️ <em></em><br/>Update Status")]:::recordUpdates
    click myRule_5_A1 "#myrule_5_a1" "1410568926"
    
    myRule_7_A1[("🛠️ <em></em><br/>Update Status")]:::recordUpdates
    click myRule_7_A1 "#myrule_7_a1" "1661472229"
    
    myRule_9_A1[("🛠️ <em></em><br/>Update Status")]:::recordUpdates
    click myRule_9_A1 "#myrule_9_a1" "3382788916"
    
    myRule_5_A2 --> END_myRule_5_A2
    myRule_9_A2 --> END_myRule_9_A2
    myDecision --> |"TPA & Advisor Associated"| myRule_1_A1
    myDecision --> |"default"| myDecision2
    myDecision10 --> |"Quick Quote"| myRule_11_pmetdec
    myDecision10 --> |"default"| END_myDecision10
    myDecision2 --> |"Review"| myRule_3_pmetdec
    myDecision2 --> |"default"| myDecision4
    myDecision4 --> |"Save/Share"| myRule_5_pmetdec
    myDecision4 --> |"default"| myDecision6
    myDecision6 --> |"Expired Save/Share"| myRule_7_pmetdec
    myDecision6 --> |"default"| myDecision8
    myDecision8 --> |"Purchase"| myRule_9_pmetdec
    myDecision8 --> |"default"| myDecision10
    myRule_11_pmetdec --> |"Previously Met - Null"| myRule_11_A1
    myRule_11_pmetdec --> |"Not Previously Met"| myRule_11_A1
    myRule_3_pmetdec --> |"Previously Met - Null"| myRule_3_A1
    myRule_3_pmetdec --> |"Not Previously Met"| myRule_3_A1
    myRule_5_pmetdec --> |"Previously Met - Null"| myRule_5_A1
    myRule_5_pmetdec --> |"Not Previously Met"| myRule_5_A1
    myRule_7_pmetdec --> |"Previously Met - Null"| myRule_7_A1
    myRule_7_pmetdec --> |"Not Previously Met"| myRule_7_A1
    myRule_9_pmetdec --> |"Previously Met - Null"| myRule_9_A1
    myRule_9_pmetdec --> |"Not Previously Met"| myRule_9_A1
    myRule_11_A1 --> END_myRule_11_A1
    myRule_1_A1 --> myDecision2
    myRule_3_A1 --> END_myRule_3_A1
    myRule_5_A1 --> myRule_5_A2
    myRule_7_A1 --> END_myRule_7_A1
    myRule_9_A1 --> myRule_9_A2
    END_myRule_5_A2(( END )):::endClass
    END_myRule_9_A2(( END )):::endClass
    END_myDecision10(( END )):::endClass
    END_myRule_11_A1(( END )):::endClass
    END_myRule_3_A1(( END )):::endClass
    END_myRule_7_A1(( END )):::endClass
    
    
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
    |Label|Proposal | Status Workflow|
    |Status|Obsolete|
    |Description|added QQ status|
    |Interview Label|Proposal_Status_Workflow-17_InterviewLabel|
    |Start Element Reference|[myDecision](#mydecision)|
    | Object Type (PM)|Proposal__c|
    | Object Variable (PM)|myVariable_current|
    | Old Object Variable (PM)|myVariable_old|
    | Trigger Type (PM)|onAllChanges|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |myVariable_current|SObject|⬜|✅|✅|Proposal__c|<!-- -->|
    |myVariable_old|SObject|⬜|✅|⬜|Proposal__c|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |formula_myRule_3|Boolean|ISPICKVAL({!myVariable_current.Stage_Flag__c}, "Review") &&<br/>ISNEW() &&<br/>{!myVariable_current.Owner:User.Username} != "jfarmakis@myubiquity.com" &&<br/>NOT(CONTAINS({!myVariable_current.Plan_ID__c}, "localhost:5000")) &&<br/>NOT(CONTAINS({!myVariable_current.Plan_ID__c}, ".devface.com"))|<!-- -->|
    |formula_myRule_3_pmetrule|Boolean|ISPICKVAL({!myVariable_old.Stage_Flag__c}, "Review") &&<br/>ISNEW() &&<br/>{!myVariable_old.Owner:User.Username} != "jfarmakis@myubiquity.com" &&<br/>NOT(CONTAINS({!myVariable_old.Plan_ID__c}, "localhost:5000")) &&<br/>NOT(CONTAINS({!myVariable_old.Plan_ID__c}, ".devface.com"))|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### myRule_5_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Email Owner|
    |Action Type|Email Alert|
    |Action Name|Proposal__c.Proposal_Updated|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Proposal__c.Proposal_Updated|
    |Email Alert Selection (PM)|Proposal_Updated|
    | SObject Row Id (input)|myVariable_current.Id|
    
    
    ### myRule_9_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Email Owner|
    |Action Type|Email Alert|
    |Action Name|Proposal__c.Proposal_Updated|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Proposal__c.Proposal_Updated|
    |Email Alert Selection (PM)|Proposal_Updated|
    | SObject Row Id (input)|myVariable_current.Id|
    
    
    ### myDecision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision](#mydecision)|
    |Default Connector|[myDecision2](#mydecision2)|
    |Default Connector Label|default|
    |Index (PM)|numberValue: 0<br/>|
    
    
    #### Rule myRule_1 (TPA & Advisor Associated)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_A1](#myrule_1_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Advisor_Contact__c| Is Null|⬜|
    |2|myVariable_current.TPA_Contact__c| Is Null|⬜|
    
    
    
    
    ### myDecision10
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision10](#mydecision10)|
    |Default Connector Label|default|
    |Index (PM)|5|
    
    
    #### Rule myRule_11 (Quick Quote)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_11_pmetdec](#myrule_11_pmetdec)|
    |Condition Logic|1 AND 2 AND NOT 3 AND NOT 4|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Stage_Flag__c| Equal To|Quick Quote|
    |2|myVariable_current.Status__c| Not Equal To|Quick Quote|
    |3|myVariable_current.Plan_ID__c| Contains|localhost|
    |4|myVariable_current.Plan_ID__c| Contains|devface|
    
    
    
    
    ### myDecision2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision2](#mydecision2)|
    |Default Connector|[myDecision4](#mydecision4)|
    |Default Connector Label|default|
    |Index (PM)|1|
    
    
    #### Rule myRule_3 (Review)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_3_pmetdec](#myrule_3_pmetdec)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|formula_myRule_3| Equal To|✅|
    
    
    
    
    ### myDecision4
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision4](#mydecision4)|
    |Default Connector|[myDecision6](#mydecision6)|
    |Default Connector Label|default|
    |Index (PM)|2|
    
    
    #### Rule myRule_5 (Save/Share)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_5_pmetdec](#myrule_5_pmetdec)|
    |Condition Logic|(1 AND 3 AND NOT 4 AND NOT 5) OR (2 AND 3 AND NOT 4 AND NOT 5)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Stage_Flag__c| Equal To|Save|
    |2|myVariable_current.Stage_Flag__c| Equal To|Share|
    |3|myVariable_current.Owner:User.Username| Not Equal To|jfarmakis@myubiquity.com|
    |4|myVariable_current.Plan_ID__c| Contains|.devface.com|
    |5|myVariable_current.Plan_ID__c| Contains|localhost:5000|
    
    
    
    
    ### myDecision6
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision6](#mydecision6)|
    |Default Connector|[myDecision8](#mydecision8)|
    |Default Connector Label|default|
    |Index (PM)|3|
    
    
    #### Rule myRule_7 (Expired Save/Share)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_7_pmetdec](#myrule_7_pmetdec)|
    |Condition Logic|1 AND 2 AND NOT 3 AND NOT 4 AND 5|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Stage_Flag__c| Equal To|Expired Save/Share|
    |2|myVariable_current.Owner:User.Username| Not Equal To|jfarmakis@myubiquity.com|
    |3|myVariable_current.Plan_ID__c| Contains|devface|
    |4|myVariable_current.Plan_ID__c| Contains|localhost|
    |5|myVariable_current.Status__c| Not Equal To|Expired Save/Share|
    
    
    
    
    ### myDecision8
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision8](#mydecision8)|
    |Default Connector|[myDecision10](#mydecision10)|
    |Default Connector Label|default|
    |Index (PM)|4|
    
    
    #### Rule myRule_9 (Purchase)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_9_pmetdec](#myrule_9_pmetdec)|
    |Condition Logic|1 AND 2 AND NOT 3 AND NOT 4|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Stage_Flag__c| Equal To|Purchase|
    |2|myVariable_current.Owner:User.Username| Not Equal To|jfarmakis@myubiquity.com|
    |3|myVariable_current.Plan_ID__c| Contains|devface|
    |4|myVariable_current.Plan_ID__c| Contains|localhost|
    
    
    
    
    ### myRule_11_pmetdec
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Previously Met Decision|
    |Default Connector|[myRule_11_A1](#myrule_11_a1)|
    |Default Connector Label|Not Previously Met|
    
    
    #### Rule myRule_11_pmetnullrule (Previously Met - Null)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_11_A1](#myrule_11_a1)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|✅|
    
    
    
    
    #### Rule myRule_11_pmetrule (Previously Met - Prev)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|1 AND 2 AND NOT 3 AND NOT 4|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old.Stage_Flag__c| Equal To|Quick Quote|
    |2|myVariable_old.Status__c| Not Equal To|Quick Quote|
    |3|myVariable_old.Plan_ID__c| Contains|localhost|
    |4|myVariable_old.Plan_ID__c| Contains|devface|
    
    
    
    
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
    
    
    
    
    ### myRule_5_pmetdec
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Previously Met Decision|
    |Default Connector|[myRule_5_A1](#myrule_5_a1)|
    |Default Connector Label|Not Previously Met|
    
    
    #### Rule myRule_5_pmetnullrule (Previously Met - Null)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_5_A1](#myrule_5_a1)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|✅|
    
    
    
    
    #### Rule myRule_5_pmetrule (Previously Met - Prev)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|(1 AND 3 AND NOT 4 AND NOT 5) OR (2 AND 3 AND NOT 4 AND NOT 5)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old.Stage_Flag__c| Equal To|Save|
    |2|myVariable_old.Stage_Flag__c| Equal To|Share|
    |3|myVariable_old.Owner:User.Username| Not Equal To|jfarmakis@myubiquity.com|
    |4|myVariable_old.Plan_ID__c| Contains|.devface.com|
    |5|myVariable_old.Plan_ID__c| Contains|localhost:5000|
    
    
    
    
    ### myRule_7_pmetdec
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Previously Met Decision|
    |Default Connector|[myRule_7_A1](#myrule_7_a1)|
    |Default Connector Label|Not Previously Met|
    
    
    #### Rule myRule_7_pmetnullrule (Previously Met - Null)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_7_A1](#myrule_7_a1)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|✅|
    
    
    
    
    #### Rule myRule_7_pmetrule (Previously Met - Prev)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|1 AND 2 AND NOT 3 AND NOT 4 AND 5|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old.Stage_Flag__c| Equal To|Expired Save/Share|
    |2|myVariable_old.Owner:User.Username| Not Equal To|jfarmakis@myubiquity.com|
    |3|myVariable_old.Plan_ID__c| Contains|devface|
    |4|myVariable_old.Plan_ID__c| Contains|localhost|
    |5|myVariable_old.Status__c| Not Equal To|Expired Save/Share|
    
    
    
    
    ### myRule_9_pmetdec
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Previously Met Decision|
    |Default Connector|[myRule_9_A1](#myrule_9_a1)|
    |Default Connector Label|Not Previously Met|
    
    
    #### Rule myRule_9_pmetnullrule (Previously Met - Null)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_9_A1](#myrule_9_a1)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|✅|
    
    
    
    
    #### Rule myRule_9_pmetrule (Previously Met - Prev)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|1 AND 2 AND NOT 3 AND NOT 4|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old.Stage_Flag__c| Equal To|Purchase|
    |2|myVariable_old.Owner:User.Username| Not Equal To|jfarmakis@myubiquity.com|
    |3|myVariable_old.Plan_ID__c| Contains|devface|
    |4|myVariable_old.Plan_ID__c| Contains|localhost|
    
    
    
    
    ### myRule_11_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Proposal__c|
    |Label|Update Status|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Proposal__c]|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Status__c|Quick Quote|
    
    
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Contact|
    |Label|Change Ownership|
    |Evaluation Type (PM)|criteria|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Proposal__c].TPA Contact|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myDecision2](#mydecision2)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.TPA_Contact__c|
    |2|OwnerId| Equal To|0051G0000069ZB1|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |OwnerId|myVariable_current.Advisor_Contact__r.OwnerId|
    
    
    
    
    ### myRule_3_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Proposal__c|
    |Label|Update Status|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Proposal__c]|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Status__c|Created|
    
    
    
    
    ### myRule_5_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Proposal__c|
    |Label|Update Status|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Proposal__c]|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myRule_5_A2](#myrule_5_a2)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Status__c|Saved/Shared|
    
    
    
    
    ### myRule_7_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Proposal__c|
    |Label|Update Status|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Proposal__c]|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Status__c|Expired Save/Share|
    
    
    
    
    ### myRule_9_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Proposal__c|
    |Label|Update Status|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Proposal__c]|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myRule_9_A2](#myrule_9_a2)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Status__c|Submitted for Purchase|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

