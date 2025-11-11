# PolicyCondition_TEdcJORrGDhtYuFGcOMS history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](PolicyCondition_TEdcJORrGDhtYuFGcOMS-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START"]):::startClass
    click START "#general-information" "1338784322"
    
    START --> myDecision
    EvaluationOutcomeAssignment[\"🟰 <em></em><br/>EvaluationOutcomeAssignment"/]:::assignments
    click EvaluationOutcomeAssignment "#evaluationoutcomeassignment" "2371366659"
    
    EvaluationOutcomeAssignmentFalse[\"🟰 <em></em><br/>EvaluationOutcomeAssignmentFalse"/]:::assignments
    click EvaluationOutcomeAssignmentFalse "#evaluationoutcomeassignmentfalse" "2773223783"
    
    myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
    click myDecision "#mydecision" "4188192640"
    
    EvaluationOutcomeAssignment --> END_EvaluationOutcomeAssignment
    EvaluationOutcomeAssignmentFalse --> END_EvaluationOutcomeAssignmentFalse
    myDecision --> |""| EvaluationOutcomeAssignment
    myDecision --> |"default"| EvaluationOutcomeAssignmentFalse
    END_EvaluationOutcomeAssignment(( END )):::endClass
    END_EvaluationOutcomeAssignmentFalse(( END )):::endClass
    
    
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
    |Process Type| Transaction Security Flow|
    |Label|PolicyCondition_TEdcJORrGDhtYuFGcOMS|
    |Status|⚠️ Draft|
    |Interview Label|PolicyCondition_TEdcJORrGDhtYuFGcOMS|
    |Start Element Reference|[myDecision](#mydecision)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |EvaluationOutcome|Boolean|⬜|⬜|✅|<!-- -->|<!-- -->|
    |myVariable_myEvent|SObject|⬜|✅|⬜|ReportEvent|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### EvaluationOutcomeAssignment
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|[EvaluationOutcomeAssignment](#evaluationoutcomeassignment)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |EvaluationOutcome| Assign|myRule|
    
    
    
    
    ### EvaluationOutcomeAssignmentFalse
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|[EvaluationOutcomeAssignmentFalse](#evaluationoutcomeassignmentfalse)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |EvaluationOutcome| Assign|myRule|
    
    
    
    
    ### myDecision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision](#mydecision)|
    |Default Connector|[EvaluationOutcomeAssignmentFalse](#evaluationoutcomeassignmentfalse)|
    |Default Connector Label|default|
    
    
    #### Rule myRule ()
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[EvaluationOutcomeAssignment](#evaluationoutcomeassignment)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_myEvent.Operation| Equal To|ReportExported|
    |2|myVariable_myEvent.UserId| Not Equal To|0051G000006IsUi|
    |3|myVariable_myEvent.UserId| Not Equal To|0051G000008D1IP|
    |4|myVariable_myEvent.UserId| Not Equal To|00500000006xUkg|
    |5|myVariable_myEvent.UserId| Not Equal To|0051G0000084JEc|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

