# Support_Case_Resolution_CSAT history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Support_Case_Resolution_CSAT-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>simplesurvey__Survey__c</b></br>Type: <b>On All Changes</b>"]):::startClass
    click START "#general-information" "261749411"
    
    START --> myDecision
    myRule_3_A1("📧 <em></em><br/>Review Referral Request"):::actionCalls
    click myRule_3_A1 "#myrule_3_a1" "2377689869"
    
    myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
    click myDecision "#mydecision" "199244789"
    
    myDecision2{"🔀 <em></em><br/>myDecision2"}:::decisions
    click myDecision2 "#mydecision2" "1012344030"
    
    myRule_1_pmetdec{"🔀 <em></em><br/>Previously Met Decision"}:::decisions
    click myRule_1_pmetdec "#myrule_1_pmetdec" "4266618329"
    
    myRule_3_pmetdec{"🔀 <em></em><br/>Previously Met Decision"}:::decisions
    click myRule_3_pmetdec "#myrule_3_pmetdec" "2725079070"
    
    myRule_1_A1[("🛠️ <em></em><br/>Survey Score To Case")]:::recordUpdates
    click myRule_1_A1 "#myrule_1_a1" "1797428899"
    
    myRule_3_A2[("🛠️ <em></em><br/>Review Requested")]:::recordUpdates
    click myRule_3_A2 "#myrule_3_a2" "3041291887"
    
    myRule_3_A1 --> myRule_3_A2
    myDecision --> |"CSAT Survey Complete"| myRule_1_pmetdec
    myDecision --> |"default"| myDecision2
    myDecision2 --> |"Review/Referral Request"| myRule_3_pmetdec
    myDecision2 --> |"default"| END_myDecision2
    myRule_1_pmetdec --> |"Previously Met - Null"| myRule_1_A1
    myRule_1_pmetdec --> |"Previously Met - Prev"| myDecision2
    myRule_1_pmetdec --> |"Not Previously Met"| myRule_1_A1
    myRule_3_pmetdec --> |"Previously Met - Null"| myRule_3_A1
    myRule_3_pmetdec --> |"Not Previously Met"| myRule_3_A1
    myRule_1_A1 --> myDecision2
    myRule_3_A2 --> END_myRule_3_A2
    END_myDecision2(( END )):::endClass
    END_myRule_3_A2(( END )):::endClass
    
    
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
    |Label|Support | Case Resolution CSAT|
    |Status|Obsolete|
    |Description|Populate CSAT Score from Survey Object to Case Object when survey is complete|
    |Interview Label|Support_Case_Resolution_CSAT-7_InterviewLabel|
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
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |formula_4_myRule_3_1648267172|Date|TODAY() - 90|<!-- -->|
    |formula_5_myRule_3_1266971158|Date|TODAY() - 90|<!-- -->|
    |formula_6_myRule_3_pmetrule_6828561527|Date|TODAY() - 90|<!-- -->|
    |formula_7_myRule_3_pmetrule_0268198290|Date|TODAY() - 90|<!-- -->|
    |formula_8_myRule_3_A2_3955561287|Date|NOW()|<!-- -->|
    |formula_9_myRule_3_A2_2282383921|Date|NOW()|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### myRule_3_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Review Referral Request|
    |Action Type|Email Alert|
    |Action Name|simplesurvey__Survey__c.Post_CSAT_Review_Referral_Request|
    |Name Segment|simplesurvey__Survey__c.Post_CSAT_Review_Referral_Request|
    |Email Alert Selection (PM)|Post_CSAT_Review_Referral_Request|
    | SObject Row Id (input)|myVariable_current.Id|
    |Connector|[myRule_3_A2](#myrule_3_a2)|
    
    
    ### myDecision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision](#mydecision)|
    |Default Connector|[myDecision2](#mydecision2)|
    |Default Connector Label|default|
    |Index (PM)|numberValue: 0<br/>|
    
    
    #### Rule myRule_1 (CSAT Survey Complete)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_pmetdec](#myrule_1_pmetdec)|
    |Condition Logic|2 AND (1 OR 3 OR 4)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Survey_Type__c| Equal To|Case Resolution CSAT|
    |2|myVariable_current.simplesurvey__Survey_Score__c| Is Null|⬜|
    |3|myVariable_current.RecordTypeId| Equal To|0121G000000g1ZfQAI|
    |4|myVariable_current.RecordTypeId| Equal To|0121G000000Tji8QAC|
    
    
    
    
    ### myDecision2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision2](#mydecision2)|
    |Default Connector Label|default|
    |Index (PM)|1|
    
    
    #### Rule myRule_3 (Review/Referral Request)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_3_pmetdec](#myrule_3_pmetdec)|
    |Condition Logic|1 AND 2 AND ((3 AND 5 AND 8) OR (4 AND 6 AND 7) OR (3 AND 4 AND 5 AND 6) OR (7 AND 8))|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.simplesurvey__Survey_Score__c| Greater Than Or Equal To|4|
    |2|myVariable_current.RecordTypeId| Equal To|01237000000EzH3AAK|
    |3|myVariable_current.simplesurvey__Contact__r.Last_Asked_for_Review_Date__c| Less Than Or Equal To|formula_4_myRule_3_1648267172|
    |4|myVariable_current.simplesurvey__Contact__r.Last_Asked_for_Referral_Date__c| Less Than Or Equal To|formula_5_myRule_3_1266971158|
    |5|myVariable_current.simplesurvey__Contact__r.Last_Asked_for_Review_Date__c| Is Null|⬜|
    |6|myVariable_current.simplesurvey__Contact__r.Last_Asked_for_Referral_Date__c| Is Null|⬜|
    |7|myVariable_current.simplesurvey__Contact__r.Last_Asked_for_Review_Date__c| Is Null|✅|
    |8|myVariable_current.simplesurvey__Contact__r.Last_Asked_for_Referral_Date__c| Is Null|✅|
    
    
    
    
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
    |Connector|[myDecision2](#mydecision2)|
    |Condition Logic|2 AND (1 OR 3 OR 4)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old.Survey_Type__c| Equal To|Case Resolution CSAT|
    |2|myVariable_old.simplesurvey__Survey_Score__c| Is Null|⬜|
    |3|myVariable_old.RecordTypeId| Equal To|0121G000000g1ZfQAI|
    |4|myVariable_old.RecordTypeId| Equal To|0121G000000Tji8QAC|
    
    
    
    
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
    |Condition Logic|1 AND 2 AND ((3 AND 5 AND 8) OR (4 AND 6 AND 7) OR (3 AND 4 AND 5 AND 6) OR (7 AND 8))|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old.simplesurvey__Survey_Score__c| Greater Than Or Equal To|4|
    |2|myVariable_old.RecordTypeId| Equal To|01237000000EzH3AAK|
    |3|myVariable_old.simplesurvey__Contact__r.Last_Asked_for_Review_Date__c| Less Than Or Equal To|formula_6_myRule_3_pmetrule_6828561527|
    |4|myVariable_old.simplesurvey__Contact__r.Last_Asked_for_Referral_Date__c| Less Than Or Equal To|formula_7_myRule_3_pmetrule_0268198290|
    |5|myVariable_old.simplesurvey__Contact__r.Last_Asked_for_Review_Date__c| Is Null|⬜|
    |6|myVariable_old.simplesurvey__Contact__r.Last_Asked_for_Referral_Date__c| Is Null|⬜|
    |7|myVariable_old.simplesurvey__Contact__r.Last_Asked_for_Review_Date__c| Is Null|✅|
    |8|myVariable_old.simplesurvey__Contact__r.Last_Asked_for_Referral_Date__c| Is Null|✅|
    
    
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Case|
    |Label|Survey Score To Case|
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
    |Case_Resolution_CSAT__c|myVariable_current.simplesurvey__Survey_Score__c|
    
    
    
    
    ### myRule_3_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Contact|
    |Label|Review Requested|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[simplesurvey__Survey__c].Contact|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.simplesurvey__Contact__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Last_Asked_for_Referral_Date__c|formula_8_myRule_3_A2_3955561287|
    |Last_Asked_for_Review_Date__c|formula_9_myRule_3_A2_2282383921|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

