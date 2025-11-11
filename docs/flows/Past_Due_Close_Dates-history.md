# Past_Due_Close_Dates history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Past_Due_Close_Dates-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Opportunity</b></br>Type: <b>On All Changes</b>"]):::startClass
    click START "#general-information" "1345477489"
    
    START --> myDecision
    myRule_1_A1("📧 <em></em><br/>Plan Still Open"):::actionCalls
    click myRule_1_A1 "#myrule_1_a1" "2585055894"
    
    myRule_5_A2("📧 <em></em><br/>Email Manager"):::actionCalls
    click myRule_5_A2 "#myrule_5_a2" "344931834"
    
    myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
    click myDecision "#mydecision" "2208013796"
    
    myDecision4{"🔀 <em></em><br/>myDecision4"}:::decisions
    click myDecision4 "#mydecision4" "544230739"
    
    myRule_1_pmetdec{"🔀 <em></em><br/>Previously Met Decision"}:::decisions
    click myRule_1_pmetdec "#myrule_1_pmetdec" "2335086797"
    
    myRule_5_pmetdec{"🔀 <em></em><br/>Previously Met Decision"}:::decisions
    click myRule_5_pmetdec "#myrule_5_pmetdec" "2552011276"
    
    myRule_5_A1[("🛠️ <em></em><br/>Close Plan")]:::recordUpdates
    click myRule_5_A1 "#myrule_5_a1" "72886448"
    
    myRule_1_A1 --> END_myRule_1_A1
    myRule_5_A2 --> END_myRule_5_A2
    myDecision --> |"Close Date Today"| myRule_1_pmetdec
    myDecision --> |"default"| myDecision4
    myDecision4 --> |"Close Date Past Due One week"| myRule_5_pmetdec
    myDecision4 --> |"default"| END_myDecision4
    myRule_1_pmetdec --> |"Previously Met - Null"| myRule_1_A1
    myRule_1_pmetdec --> |"Not Previously Met"| myRule_1_A1
    myRule_5_pmetdec --> |"Previously Met - Null"| myRule_5_A1
    myRule_5_pmetdec --> |"Not Previously Met"| myRule_5_A1
    myRule_5_A1 --> myRule_5_A2
    END_myRule_1_A1(( END )):::endClass
    END_myRule_5_A2(( END )):::endClass
    END_myDecision4(( END )):::endClass
    
    
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
    |Label|Sales | Past Due Close Dates|
    |Status|Obsolete|
    |Description|Alerts Opportunity Owners and updates records|
    |Interview Label|Past_Due_Close_Dates-9_InterviewLabel|
    |Start Element Reference|[myDecision](#mydecision)|
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
    |formula_2_myRule_1_6358655092|Date|TODAY()|<!-- -->|
    |formula_3_myRule_1_pmetrule_8156170852|Date|TODAY()|<!-- -->|
    |formula_6_myRule_5_9203706141|Date|TODAY() - 7|<!-- -->|
    |formula_7_myRule_5_pmetrule_1527035295|Date|TODAY() - 7|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Plan Still Open|
    |Action Type|Email Alert|
    |Action Name|Opportunity.Opportunity_Close_Date_Notification|
    |Name Segment|Opportunity.Opportunity_Close_Date_Notification|
    |Email Alert Selection (PM)|Opportunity_Close_Date_Notification|
    | SObject Row Id (input)|myVariable_current.Id|
    
    
    ### myRule_5_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Email Manager|
    |Action Type|Email Alert|
    |Action Name|Opportunity.Opportunity_Marked_Closed_Lost|
    |Name Segment|Opportunity.Opportunity_Marked_Closed_Lost|
    |Email Alert Selection (PM)|Opportunity_Marked_Closed_Lost|
    | SObject Row Id (input)|myVariable_current.Id|
    
    
    ### myDecision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision](#mydecision)|
    |Default Connector|[myDecision4](#mydecision4)|
    |Default Connector Label|default|
    |Index (PM)|numberValue: 0<br/>|
    
    
    #### Rule myRule_1 (Close Date Today)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_pmetdec](#myrule_1_pmetdec)|
    |Condition Logic|1 AND 6 AND (2 OR 3 OR 4 OR 5)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.CloseDate| Equal To|formula_2_myRule_1_6358655092|
    |2|myVariable_current.StageName| Equal To|Needs Analysis/Value Proposition|
    |3|myVariable_current.StageName| Equal To|Proposal/Price Quote|
    |4|myVariable_current.StageName| Equal To|Negotiation/Review|
    |5|myVariable_current.StageName| Equal To|Pending Decision|
    |6|myVariable_current.Owner.Username| Not Equal To|marketing@theonline401k.com|
    
    
    
    
    ### myDecision4
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision4](#mydecision4)|
    |Default Connector Label|default|
    |Index (PM)|1|
    
    
    #### Rule myRule_5 (Close Date Past Due One week)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_5_pmetdec](#myrule_5_pmetdec)|
    |Condition Logic|1 AND (2 OR 3 OR 4 OR 5)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.CloseDate| Equal To|formula_6_myRule_5_9203706141|
    |2|myVariable_current.StageName| Equal To|Needs Analysis/Value Proposition|
    |3|myVariable_current.StageName| Equal To|Proposal/Price Quote|
    |4|myVariable_current.StageName| Equal To|Negotiation/Review|
    |5|myVariable_current.StageName| Equal To|Pending Decision|
    
    
    
    
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
    |Condition Logic|1 AND 6 AND (2 OR 3 OR 4 OR 5)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old.CloseDate| Equal To|formula_3_myRule_1_pmetrule_8156170852|
    |2|myVariable_old.StageName| Equal To|Needs Analysis/Value Proposition|
    |3|myVariable_old.StageName| Equal To|Proposal/Price Quote|
    |4|myVariable_old.StageName| Equal To|Negotiation/Review|
    |5|myVariable_old.StageName| Equal To|Pending Decision|
    |6|myVariable_old.Owner.Username| Not Equal To|marketing@theonline401k.com|
    
    
    
    
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
    |Condition Logic|1 AND (2 OR 3 OR 4 OR 5)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old.CloseDate| Equal To|formula_7_myRule_5_pmetrule_1527035295|
    |2|myVariable_old.StageName| Equal To|Needs Analysis/Value Proposition|
    |3|myVariable_old.StageName| Equal To|Proposal/Price Quote|
    |4|myVariable_old.StageName| Equal To|Negotiation/Review|
    |5|myVariable_old.StageName| Equal To|Pending Decision|
    
    
    
    
    ### myRule_5_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Opportunity|
    |Label|Close Plan|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Opportunity]|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myRule_5_A2](#myrule_5_a2)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Closed_Lost_Reason__c|Proposal sent then dropped off|
    |Closed_Lost_Write_In_Detail__c|Auto|
    |Probability|numberValue: 0<br/>|
    |StageName|Closed Lost|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

