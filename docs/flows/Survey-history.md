# Survey history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Survey-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>simplesurvey__Survey__c</b></br>Type: <b>On All Changes</b>"]):::startClass
    click START "#general-information" "1007490055"
    
    START --> myVariable_waitStartTimeAssignment
    myVariable_waitStartTimeAssignment[\"🟰 <em></em><br/>myVariable_waitStartTimeAssignment"/]:::assignments
    click myVariable_waitStartTimeAssignment "#myvariable_waitstarttimeassignment" "1021302851"
    
    myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
    click myDecision "#mydecision" "3367231109"
    
    myDecision3{"🔀 <em></em><br/>myDecision3"}:::decisions
    click myDecision3 "#mydecision3" "4097107383"
    
    myRule_1_pmetdec{"🔀 <em></em><br/>Previously Met Decision"}:::decisions
    click myRule_1_pmetdec "#myrule_1_pmetdec" "2282002195"
    
    myRule_4_pmetdec{"🔀 <em></em><br/>Previously Met Decision"}:::decisions
    click myRule_4_pmetdec "#myrule_4_pmetdec" "1721917932"
    
    myRule_1_A1[("🛠️ <em></em><br/>Update Survey Score")]:::recordUpdates
    click myRule_1_A1 "#myrule_1_a1" "3054677178"
    
    myRule_4_A1[("🛠️ <em></em><br/>Change Status")]:::recordUpdates
    click myRule_4_A1 "#myrule_4_a1" "267032375"
    
    myVariable_waitStartTimeAssignment --> myDecision
    myDecision --> |"Verbal CSAT Score Filled Out"| myRule_1_pmetdec
    myDecision --> |"default"| myDecision3
    myDecision3 --> |"Verbal CSAT Declined"| myRule_4_pmetdec
    myDecision3 --> |"default"| END_myDecision3
    myRule_1_pmetdec --> |"Previously Met - Null"| myRule_1_A1
    myRule_1_pmetdec --> |"Not Previously Met"| myRule_1_A1
    myRule_4_pmetdec --> |"Previously Met - Null"| myRule_4_A1
    myRule_4_pmetdec --> |"Not Previously Met"| myRule_4_A1
    myRule_1_A1 --> END_myRule_1_A1
    myRule_4_A1 --> END_myRule_4_A1
    END_myDecision3(( END )):::endClass
    END_myRule_1_A1(( END )):::endClass
    END_myRule_4_A1(( END )):::endClass
    
    
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
    |Label|Survey | Verbal CSAT into Survey Score|
    |Status|Active|
    |Description|Moves picklist of verbal CSAT to Survey Score Number|
    |Interview Label|Survey-2_InterviewLabel|
    |Start Element Reference|[myVariable_waitStartTimeAssignment](#myvariable_waitstarttimeassignment)|
    | Object Type (PM)|simplesurvey__Survey__c|
    | Object Variable (PM)|myVariable_current|
    | Old Object Variable (PM)|myVariable_old|
    | Trigger Type (PM)|onAllChanges|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |myVariable_current|SObject|⬜|✅|✅|simplesurvey__Survey__c|<!-- -->|
    |myVariable_old|SObject|⬜|✅|⬜|simplesurvey__Survey__c|<!-- -->|
    |myVariable_waitStartTimeVariable|DateTime|⬜|⬜|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |formula_2_myRule_1_A1_6239660825|Number|VALUE(TEXT( {!myVariable_current.Verbal_CSAT__c} ))|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### myVariable_waitStartTimeAssignment
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|[myVariable_waitStartTimeAssignment](#myvariable_waitstarttimeassignment)|
    |Connector|[myDecision](#mydecision)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |myVariable_waitStartTimeVariable| Assign|$Flow.CurrentDateTime|
    
    
    
    
    ### myDecision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision](#mydecision)|
    |Default Connector|[myDecision3](#mydecision3)|
    |Default Connector Label|default|
    |Index (PM)|numberValue: 0<br/>|
    
    
    #### Rule myRule_1 (Verbal CSAT Score Filled Out)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_pmetdec](#myrule_1_pmetdec)|
    |Condition Logic|1 OR 2 OR 3 OR 4 OR 5|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Verbal_CSAT__c| Equal To|1|
    |2|myVariable_current.Verbal_CSAT__c| Equal To|2|
    |3|myVariable_current.Verbal_CSAT__c| Equal To|3|
    |4|myVariable_current.Verbal_CSAT__c| Equal To|4|
    |5|myVariable_current.Verbal_CSAT__c| Equal To|5|
    
    
    
    
    ### myDecision3
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision3](#mydecision3)|
    |Default Connector Label|default|
    |Index (PM)|1|
    
    
    #### Rule myRule_4 (Verbal CSAT Declined)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_4_pmetdec](#myrule_4_pmetdec)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Verbal_CSAT__c| Equal To|Declined|
    
    
    
    
    ### myRule_1_pmetdec
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Previously Met Decision|
    |Default Connector|[myRule_1_A1](#myrule_1_a1)|
    |Default Connector Label|Not Previously Met|
    
    
    #### Rule myRule_1_pmetnullrule (Previously Met - Null)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_A1](#myrule_1_a1)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|✅|
    
    
    
    
    #### Rule myRule_1_pmetrule (Previously Met - Prev)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|1 OR 2 OR 3 OR 4 OR 5|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old.Verbal_CSAT__c| Equal To|1|
    |2|myVariable_old.Verbal_CSAT__c| Equal To|2|
    |3|myVariable_old.Verbal_CSAT__c| Equal To|3|
    |4|myVariable_old.Verbal_CSAT__c| Equal To|4|
    |5|myVariable_old.Verbal_CSAT__c| Equal To|5|
    
    
    
    
    ### myRule_4_pmetdec
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Previously Met Decision|
    |Default Connector|[myRule_4_A1](#myrule_4_a1)|
    |Default Connector Label|Not Previously Met|
    
    
    #### Rule myRule_4_pmetnullrule (Previously Met - Null)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_4_A1](#myrule_4_a1)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|✅|
    
    
    
    
    #### Rule myRule_4_pmetrule (Previously Met - Prev)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old.Verbal_CSAT__c| Equal To|Declined|
    
    
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|simplesurvey__Survey__c|
    |Label|Update Survey Score|
    |Evaluation Type (PM)|always|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[simplesurvey__Survey__c]|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |simplesurvey__Survey_Score__c|formula_2_myRule_1_A1_6239660825|
    
    
    
    
    ### myRule_4_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|simplesurvey__Survey__c|
    |Label|Change Status|
    |Evaluation Type (PM)|always|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[simplesurvey__Survey__c]|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |simplesurvey__Status__c|Declined|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

