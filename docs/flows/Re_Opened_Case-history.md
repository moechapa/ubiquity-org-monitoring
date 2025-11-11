# Re_Opened_Case history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Re_Opened_Case-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>EmailMessage</b></br>Type: <b>On All Changes</b>"]):::startClass
    click START "#general-information" "4092834250"
    
    START --> myDecision
    myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
    click myDecision "#mydecision" "3402680469"
    
    myDecision4{"🔀 <em></em><br/>myDecision4"}:::decisions
    click myDecision4 "#mydecision4" "3032711245"
    
    myRule_1_A1[("🛠️ <em></em><br/>Update Case as Re-Opened")]:::recordUpdates
    click myRule_1_A1 "#myrule_1_a1" "1295460485"
    
    myRule_5_A1[("🛠️ <em></em><br/>Status Response Received")]:::recordUpdates
    click myRule_5_A1 "#myrule_5_a1" "3165802204"
    
    myDecision --> |"Incoming Email on Closed Case"| myRule_1_A1
    myDecision --> |"default"| myDecision4
    myDecision4 --> |"Incoming Email on Open Case"| myRule_5_A1
    myDecision4 --> |"default"| END_myDecision4
    myRule_1_A1 --> END_myRule_1_A1
    myRule_5_A1 --> END_myRule_5_A1
    END_myDecision4(( END )):::endClass
    END_myRule_1_A1(( END )):::endClass
    END_myRule_5_A1(( END )):::endClass
    
    
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
    |Label|Support | Re-Opened Case|
    |Status|Obsolete|
    |Description|Sets cases to "Response Received" when external email is received from client on Closed or Opened Cases|
    |Interview Label|Re_Opened_Case-34_InterviewLabel|
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
    |formula_2_myRule_1_3744855485|DateTime|Now()-(240/24/60)|<!-- -->|
    |formula_3_myRule_1_A1_1827246819|DateTime|NOW()|<!-- -->|
    |formula_6_myRule_5_9621134924|DateTime|{!myVariable_current.Parent.CreatedDate} + (2/60/24)|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### myDecision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision](#mydecision)|
    |Default Connector|[myDecision4](#mydecision4)|
    |Default Connector Label|default|
    |Index (PM)|numberValue: 0<br/>|
    
    
    #### Rule myRule_1 (Incoming Email on Closed Case)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_A1](#myrule_1_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Incoming| Equal To|✅|
    |2|myVariable_current.MessageDate| Greater Than|formula_2_myRule_1_3744855485|
    |3|myVariable_current.ParentId| Is Null|⬜|
    |4|myVariable_current.Parent.IsClosed| Equal To|✅|
    |5|myVariable_current.Status| Not Equal To|1|
    
    
    
    
    ### myDecision4
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision4](#mydecision4)|
    |Default Connector Label|default|
    |Index (PM)|1|
    
    
    #### Rule myRule_5 (Incoming Email on Open Case)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_5_A1](#myrule_5_a1)|
    |Condition Logic|(1 AND 2 AND 3 AND 4 AND 5 AND 6) OR (1 AND 2 AND 3 AND 6 AND 7 AND 8) AND 9 AND 10|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Incoming| Equal To|✅|
    |2|myVariable_current.ParentId| Is Null|⬜|
    |3|myVariable_current.Parent.IsClosed| Equal To|⬜|
    |4|myVariable_current.Parent.Status| Not Equal To|New|
    |5|myVariable_current.Parent.Status| Not Equal To|Assigned|
    |6|myVariable_current.Status| Not Equal To|1|
    |7|myVariable_current.Parent.Status| Not Equal To|Pending Future Call|
    |8|myVariable_current.Parent.of_Activities_Emails__c| Greater Than|1|
    |9|myVariable_current.FromAddress| Not Equal To|notifications@calendly.com|
    |10|myVariable_current.MessageDate| Greater Than|formula_6_myRule_5_9621134924|
    
    
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Case|
    |Label|Update Case as Re-Opened|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[EmailMessage].Case ID|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.ParentId|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Customer_Re_Opened_Case__c|formula_3_myRule_1_A1_1827246819|
    |Status|Response Received|
    
    
    
    
    ### myRule_5_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Case|
    |Label|Status Response Received|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[EmailMessage].Case ID|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.ParentId|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Status|Response Received|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

