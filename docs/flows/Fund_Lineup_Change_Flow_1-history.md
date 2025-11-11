# Fund_Lineup_Change_Flow_1 history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Fund_Lineup_Change_Flow_1-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "2773278839"
    
    myRule_15_A2("📧 <em></em><br/>Notify Team of Completion"):::actionCalls
    click myRule_15_A2 "#myrule_15_a2" "1468913010"
    
    myRule_1_A1("📧 <em></em><br/>New Change Request Email Alert"):::actionCalls
    click myRule_1_A1 "#myrule_1_a1" "3514652587"
    
    myRule_1{"🔀 <em></em><br/>Change Requested"}:::decisions
    click myRule_1 "#myrule_1" "1531402149"
    
    myRule_11{"🔀 <em></em><br/>Blackout Ended"}:::decisions
    click myRule_11 "#myrule_11" "109314232"
    
    myRule_15{"🔀 <em></em><br/>Completed"}:::decisions
    click myRule_15 "#myrule_15" "816808299"
    
    myRule_4{"🔀 <em></em><br/>Blackout Notice Recieved"}:::decisions
    click myRule_4 "#myrule_4" "135403789"
    
    myRule_7{"🔀 <em></em><br/>Blackout Started"}:::decisions
    click myRule_7 "#myrule_7" "80866296"
    
    myRule_11_A1[("🛠️ <em></em><br/>Blackout Ended")]:::recordUpdates
    click myRule_11_A1 "#myrule_11_a1" "2199791117"
    
    myRule_15_A1[("🛠️ <em></em><br/>Completed")]:::recordUpdates
    click myRule_15_A1 "#myrule_15_a1" "1553914506"
    
    myRule_4_A1[("🛠️ <em></em><br/>Update Blackout Notice Recieved")]:::recordUpdates
    click myRule_4_A1 "#myrule_4_a1" "515055831"
    
    myRule_7_A1[("🛠️ <em></em><br/>Blackout Started")]:::recordUpdates
    click myRule_7_A1 "#myrule_7_a1" "1744228836"
    
    myRule_15_A2 --> END_myRule_15_A2
    myRule_1_A1 --> END_myRule_1_A1
    myRule_1 --> |"TRUE_Change Requested"| myRule_1_A1
    myRule_1 --> |"FALSE_Change Requested"| myRule_4
    myRule_11 --> |"TRUE_Blackout Ended"| myRule_11_A1
    myRule_11 --> |"FALSE_Blackout Ended"| myRule_15
    myRule_15 --> |"TRUE_Completed"| myRule_15_A1
    myRule_15 --> |"FALSE_Completed"| END_myRule_15
    myRule_4 --> |"TRUE_Blackout Notice Recieved"| myRule_4_A1
    myRule_4 --> |"FALSE_Blackout Notice Recieved"| myRule_7
    myRule_7 --> |"TRUE_Blackout Started"| myRule_7_A1
    myRule_7 --> |"FALSE_Blackout Started"| myRule_11
    myRule_11_A1 --> END_myRule_11_A1
    myRule_15_A1 --> myRule_15_A2
    myRule_4_A1 --> END_myRule_4_A1
    myRule_7_A1 --> END_myRule_7_A1
    START -->  myRule_1
    END_myRule_15_A2(( END )):::endClass
    END_myRule_1_A1(( END )):::endClass
    END_myRule_15(( END )):::endClass
    END_myRule_11_A1(( END )):::endClass
    END_myRule_4_A1(( END )):::endClass
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
    |Object|Fund_Lineup_Change__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create And Update|
    |Label|Fund Lineup Change | After Trigger | Master Flow|
    |Status|Active|
    |Description|Migrated from the Fund Lineup Change Flow process using multiple criteria.<br/>Sends auto communication and moves Fund Lineup Change object through statuses|
    |Environments|Default|
    |Interview Label|Fund Lineup Change | After Trigger | {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    |Connector|[myRule_1](#myrule_1)|
    |Next Node|[myRule_1](#myrule_1)|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |today|Date|TODAY()|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### myRule_15_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Notify Team of Completion|
    |Action Type|Email Alert|
    |Action Name|Fund_Lineup_Change__c.Fund_Lineup_Change_Complete|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Fund_Lineup_Change__c.Fund_Lineup_Change_Complete|
    | SObject Row Id (input)|$Record.Id|
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|New Change Request Email Alert|
    |Action Type|Email Alert|
    |Action Name|Fund_Lineup_Change__c.Alert_for_New_Fund_Lineup_Change|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Fund_Lineup_Change__c.Alert_for_New_Fund_Lineup_Change|
    | SObject Row Id (input)|$Record.Id|
    
    
    ### myRule_1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Change Requested|
    |Default Connector|[myRule_4](#myrule_4)|
    |Default Connector Label|FALSE_Change Requested|
    
    
    #### Rule TRUE_myRule_1 (TRUE_Change Requested)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_A1](#myrule_1_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Fund_Lineup_Change_Status__c| Equal To|Change Requested|
    |2|$Record.Date_Requested__c| Is Null|⬜|
    |3|$Record.Date_Requested__c| Equal To|today|
    
    
    
    
    ### myRule_11
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Blackout Ended|
    |Default Connector|[myRule_15](#myrule_15)|
    |Default Connector Label|FALSE_Blackout Ended|
    
    
    #### Rule TRUE_myRule_11 (TRUE_Blackout Ended)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_11_A1](#myrule_11_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Blackout_End_Date__c| Less Than Or Equal To|today|
    |2|$Record.Fund_Lineup_Change_Status__c| Is Changed|✅|
    |3|$Record.Fund_Lineup_Change_Status__c| Equal To|In Blackout|
    
    
    
    
    ### myRule_15
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Completed|
    |Default Connector Label|FALSE_Completed|
    
    
    #### Rule TRUE_myRule_15 (TRUE_Completed)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_15_A1](#myrule_15_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Fund_Lineup_Change_Completion_Date__c| Is Changed|✅|
    |2|$Record.Fund_Lineup_Change_Completion_Date__c| Is Null|⬜|
    
    
    
    
    ### myRule_4
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Blackout Notice Recieved|
    |Default Connector|[myRule_7](#myrule_7)|
    |Default Connector Label|FALSE_Blackout Notice Recieved|
    
    
    #### Rule TRUE_myRule_4 (TRUE_Blackout Notice Recieved)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_4_A1](#myrule_4_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Blackout_Noticed_Received__c| Is Null|⬜|
    |2|$Record.Fund_Lineup_Change_Status__c| Equal To|Change Requested|
    |3|$Record.Blackout_Noticed_Received__c| Is Changed|✅|
    
    
    
    
    ### myRule_7
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Blackout Started|
    |Default Connector|[myRule_11](#myrule_11)|
    |Default Connector Label|FALSE_Blackout Started|
    
    
    #### Rule TRUE_myRule_7 (TRUE_Blackout Started)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_7_A1](#myrule_7_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Blackout_Start_Date__c| Less Than Or Equal To|today|
    |2|$Record.Blackout_End_Date__c| Greater Than|today|
    
    
    
    
    ### myRule_11_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Blackout Ended|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Fund_Lineup_Change_Status__c|Blackout Ended|
    
    
    
    
    ### myRule_15_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Completed|
    |Input Reference|$Record|
    |Connector|[myRule_15_A2](#myrule_15_a2)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Fund_Lineup_Change_Status__c|Completed|
    
    
    
    
    ### myRule_4_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Blackout Notice Recieved|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Fund_Lineup_Change_Status__c|Blackout Notice Received|
    
    
    
    
    ### myRule_7_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Blackout Started|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Fund_Lineup_Change_Status__c|In Blackout|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

