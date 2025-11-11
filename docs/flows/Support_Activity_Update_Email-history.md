# Support_Activity_Update_Email history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Support_Activity_Update_Email-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "2655836620"
    
    myRule_1{"🔀 <em></em><br/>Split Case"}:::decisions
    click myRule_1 "#myrule_1" "1309619425"
    
    myRule_4{"🔀 <em></em><br/>Email Sent"}:::decisions
    click myRule_4 "#myrule_4" "1686399822"
    
    myRule_1_A1[("🛠️ <em></em><br/>Close 1st Milestone")]:::recordUpdates
    click myRule_1_A1 "#myrule_1_a1" "1352263582"
    
    myRule_4_A1[["🔗 <em>Subflow</em><br/>Complete 1st Milestone"]]:::subflows
    click myRule_4_A1 "#myrule_4_a1" "3597366881"
    
    myRule_1 --> |"TRUE_Split Case"| myRule_1_A1
    myRule_1 --> |"FALSE_Split Case"| myRule_4
    myRule_4 --> |"TRUE_Email Sent"| myRule_4_A1
    myRule_4 --> |"FALSE_Email Sent"| END_myRule_4
    myRule_1_A1 --> END_myRule_1_A1
    START -->  myRule_1
    myRule_4_A1 --> END_myRule_4_A1
    END_myRule_4(( END )):::endClass
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
    |Object|EmailMessage|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create And Update|
    |Label|Email Message| After Trigger | Activity Update Email|
    |Status|Obsolete|
    |Description|Migrated from the Support | Activity Update Email process using multiple criteria.<br/>Checks "Activity" checkbox on cases when an email is sent.   Used to flag Activity Yes/No.|
    |Environments|Default|
    |Interview Label|Email Message| After Trigger | Activity Update Email {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    |Connector|[myRule_1](#myrule_1)|
    |Next Node|[myRule_1](#myrule_1)|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |formula_1_myRule_1_A1_6249609756|DateTime|NOW()|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### myRule_1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Split Case|
    |Default Connector|[myRule_4](#myrule_4)|
    |Default Connector Label|FALSE_Split Case|
    
    
    #### Rule TRUE_myRule_1 (TRUE_Split Case)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_A1](#myrule_1_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.ParentId| Is Null|⬜|
    |2|$Record.Parent.Splited_From__c| Is Null|⬜|
    |3|$Record.Parent.Status| Not Equal To|Resolved|
    
    
    
    
    ### myRule_4
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Email Sent|
    |Default Connector Label|FALSE_Email Sent|
    
    
    #### Rule TRUE_myRule_4 (TRUE_Email Sent)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[myRule_4_A1](#myrule_4_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Status| Equal To|3|
    
    
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Close 1st Milestone|
    |Input Reference|$Record.Parent.CaseMilestones|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|MilestoneTypeId| Equal To|55737000000CafB|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |CompletionDate|formula_1_myRule_1_A1_6249609756|
    
    
    
    
    ### myRule_4_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Subflow|
    |Label|Complete 1st Milestone|
    |Flow Name|Support_First_Milestone_Completed|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |<!-- -->|$Record.Id|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

