# Support_Simple_vs_Complex_Cases history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Support_Simple_vs_Complex_Cases-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Case</b></br>Type: <b>On All Changes</b>"]):::startClass
    click START "#general-information" "3324775207"
    
    START --> myVariable_waitStartTimeAssignment
    myVariable_waitStartTimeAssignment[\"🟰 <em></em><br/>myVariable_waitStartTimeAssignment"/]:::assignments
    click myVariable_waitStartTimeAssignment "#myvariable_waitstarttimeassignment" "1021302851"
    
    myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
    click myDecision "#mydecision" "1046410543"
    
    myRule_1_pmetdec{"🔀 <em></em><br/>Previously Met Decision"}:::decisions
    click myRule_1_pmetdec "#myrule_1_pmetdec" "3651239675"
    
    myRule_1_A1[("🛠️ <em></em><br/>Update CST Case Complexity")]:::recordUpdates
    click myRule_1_A1 "#myrule_1_a1" "964101296"
    
    myVariable_waitStartTimeAssignment --> myDecision
    myDecision --> |"CST Simple Case"| myRule_1_pmetdec
    myDecision --> |"default"| END_myDecision
    myRule_1_pmetdec --> |"Previously Met - Null"| myRule_1_A1
    myRule_1_pmetdec --> |"Not Previously Met"| myRule_1_A1
    myRule_1_A1 --> END_myRule_1_A1
    END_myDecision(( END )):::endClass
    END_myRule_1_A1(( END )):::endClass
    
    
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
    |Label|Support | Simple vs. Complex Cases|
    |Status|Active|
    |Description|Used to identify whether a case is simple or complex in nature.|
    |Interview Label|Support_Simple_vs_Complex_Cases-2_InterviewLabel|
    |Start Element Reference|[myVariable_waitStartTimeAssignment](#myvariable_waitstarttimeassignment)|
    | Object Type (PM)|Case|
    | Object Variable (PM)|myVariable_current|
    | Old Object Variable (PM)|myVariable_old|
    | Trigger Type (PM)|onAllChanges|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |myVariable_current|SObject|⬜|✅|✅|Case|<!-- -->|
    |myVariable_old|SObject|⬜|✅|⬜|Case|<!-- -->|
    |myVariable_waitStartTimeVariable|DateTime|⬜|⬜|⬜|<!-- -->|<!-- -->|
    
    
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
    |Default Connector Label|default|
    |Index (PM)|numberValue: 0<br/>|
    
    
    #### Rule myRule_1 (CST Simple Case)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_pmetdec](#myrule_1_pmetdec)|
    |Condition Logic|(1 AND (2 OR 3)) OR (4 AND (5 OR 6 OR 7 OR 8 OR 9 OR 10 OR 11 OR 12 OR 13 OR 14)) OR (15 AND 16) OR (17 AND 18)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Category__c| Equal To|Billing|
    |2|myVariable_current.Sub_Category__c| Equal To|Banking Information|
    |3|myVariable_current.Sub_Category__c| Equal To|Fees|
    |4|myVariable_current.Category__c| Equal To|Question|
    |5|myVariable_current.Sub_Category__c| Equal To|1099-R Question|
    |6|myVariable_current.Sub_Category__c| Equal To|Balance Inquiry|
    |7|myVariable_current.Sub_Category__c| Equal To|Fidelity Bond|
    |8|myVariable_current.Sub_Category__c| Equal To|Fund Lineup|
    |9|myVariable_current.Sub_Category__c| Equal To|Website Navigation|
    |10|myVariable_current.Sub_Category__c| Equal To|Welcome Email|
    |11|myVariable_current.Sub_Category__c| Equal To|Contact Information Update|
    |12|myVariable_current.Sub_Category__c| Equal To|Incoming Rollover|
    |13|myVariable_current.Sub_Category__c| Equal To|Plan Provisions|
    |14|myVariable_current.Sub_Category__c| Equal To|Ubiquity Generated Emails|
    |15|myVariable_current.Category__c| Equal To|Census Verification|
    |16|myVariable_current.Sub_Category__c| Equal To|General Census Verification Question|
    |17|myVariable_current.Category__c| Equal To|Compliance|
    |18|myVariable_current.Sub_Category__c| Equal To|Form 5500 Preview Email|
    
    
    
    
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
    |Condition Logic|(1 AND (2 OR 3)) OR (4 AND (5 OR 6 OR 7 OR 8 OR 9 OR 10 OR 11 OR 12 OR 13 OR 14)) OR (15 AND 16) OR (17 AND 18)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old.Category__c| Equal To|Billing|
    |2|myVariable_old.Sub_Category__c| Equal To|Banking Information|
    |3|myVariable_old.Sub_Category__c| Equal To|Fees|
    |4|myVariable_old.Category__c| Equal To|Question|
    |5|myVariable_old.Sub_Category__c| Equal To|1099-R Question|
    |6|myVariable_old.Sub_Category__c| Equal To|Balance Inquiry|
    |7|myVariable_old.Sub_Category__c| Equal To|Fidelity Bond|
    |8|myVariable_old.Sub_Category__c| Equal To|Fund Lineup|
    |9|myVariable_old.Sub_Category__c| Equal To|Website Navigation|
    |10|myVariable_old.Sub_Category__c| Equal To|Welcome Email|
    |11|myVariable_old.Sub_Category__c| Equal To|Contact Information Update|
    |12|myVariable_old.Sub_Category__c| Equal To|Incoming Rollover|
    |13|myVariable_old.Sub_Category__c| Equal To|Plan Provisions|
    |14|myVariable_old.Sub_Category__c| Equal To|Ubiquity Generated Emails|
    |15|myVariable_old.Category__c| Equal To|Census Verification|
    |16|myVariable_old.Sub_Category__c| Equal To|General Census Verification Question|
    |17|myVariable_old.Category__c| Equal To|Compliance|
    |18|myVariable_old.Sub_Category__c| Equal To|Form 5500 Preview Email|
    
    
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Case|
    |Label|Update CST Case Complexity|
    |Evaluation Type (PM)|criteria|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Case]|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    |2|Department__c| Equal To|Servicing|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Case_Complexity__c|Simple|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

