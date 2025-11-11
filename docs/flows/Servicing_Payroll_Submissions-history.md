# Servicing_Payroll_Submissions history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Servicing_Payroll_Submissions-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "2971810024"
    
    myRule_1{"🔀 <em></em><br/>Payroll Past Due"}:::decisions
    click myRule_1 "#myrule_1" "641021000"
    
    myRule_4{"🔀 <em></em><br/>Payroll Current"}:::decisions
    click myRule_4 "#myrule_4" "2325687108"
    
    myRule_7{"🔀 <em></em><br/>Imp to Current"}:::decisions
    click myRule_7 "#myrule_7" "398271884"
    
    myRule_1_A1[("🛠️ <em></em><br/>Update Payroll Submission Status")]:::recordUpdates
    click myRule_1_A1 "#myrule_1_a1" "1512971418"
    
    myRule_4_A1[("🛠️ <em></em><br/>Update PR Status to Current")]:::recordUpdates
    click myRule_4_A1 "#myrule_4_a1" "565366917"
    
    myRule_7_A1[("🛠️ <em></em><br/>PR Status = Current")]:::recordUpdates
    click myRule_7_A1 "#myrule_7_a1" "3919178358"
    
    myRule_1 --> |"TRUE_Payroll Past Due"| myRule_1_A1
    myRule_1 --> |"FALSE_Payroll Past Due"| myRule_4
    myRule_4 --> |"TRUE_Payroll Current"| myRule_4_A1
    myRule_4 --> |"FALSE_Payroll Current"| myRule_7
    myRule_7 --> |"TRUE_Imp to Current"| myRule_7_A1
    myRule_7 --> |"FALSE_Imp to Current"| END_myRule_7
    myRule_1_A1 --> END_myRule_1_A1
    myRule_4_A1 --> END_myRule_4_A1
    myRule_7_A1 --> END_myRule_7_A1
    START -->  myRule_1
    END_myRule_7(( END )):::endClass
    END_myRule_1_A1(( END )):::endClass
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
    |Object|Plan__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create And Update|
    |Label|Servicing | Payroll Submissions|
    |Status|Active|
    |Description|Migrated from the Servicing | Payroll Submissions process using multiple criteria.<br/>Process that Updates Plan Payroll submission status and alerts CE when action is needed|
    |Environments|Default|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    |Connector|[myRule_1](#myrule_1)|
    |Next Node|[myRule_1](#myrule_1)|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |formula_1_myRule_1_A2_9936452722|String|"Days Behind Payroll = " + TEXT({!$Record.Days_Behind_on_Payroll__c} )<br/>+ "        " +<br/>"Most Recent Payroll Submitted Date = " + TEXT({!$Record.Most_Recent_Payroll_Submitted__c} ) <br/>+ "        " +<br/>"Most Recent Pay Period Submitted = " + "{!$Record.Most_Recent_Pay_Period_Submitted__c} )"|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### myRule_1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Payroll Past Due|
    |Default Connector|[myRule_4](#myrule_4)|
    |Default Connector Label|FALSE_Payroll Past Due|
    
    
    #### Rule TRUE_myRule_1 (TRUE_Payroll Past Due)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_A1](#myrule_1_a1)|
    |Condition Logic|1 AND (2 OR 3) AND 4 AND 5|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Days_Behind_on_Payroll__c| Greater Than|10|
    |2|$Record.Payroll_Submission_Status__c| Equal To|Current|
    |3|$Record.Payroll_Submission_Status__c| Is Null|✅|
    |4|$Record.Status__c| Equal To|Active|
    |5|$Record.Payroll_Schedule__c| Not Equal To|Annual|
    
    
    
    
    ### myRule_4
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Payroll Current|
    |Default Connector|[myRule_7](#myrule_7)|
    |Default Connector Label|FALSE_Payroll Current|
    
    
    #### Rule TRUE_myRule_4 (TRUE_Payroll Current)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_4_A1](#myrule_4_a1)|
    |Condition Logic|(1 OR 2 OR 3) AND 4 AND 5|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Payroll_Submission_Status__c| Equal To|Behind|
    |2|$Record.Payroll_Submission_Status__c| Equal To|Never Submitted|
    |3|$Record.Payroll_Submission_Status__c| Is Null|✅|
    |4|$Record.Days_Behind_on_Payroll__c| Less Than Or Equal To|10|
    |5|$Record.Days_Behind_on_Payroll__c| Is Changed|✅|
    
    
    
    
    ### myRule_7
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Imp to Current|
    |Default Connector Label|FALSE_Imp to Current|
    
    
    #### Rule TRUE_myRule_7 (TRUE_Imp to Current)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_7_A1](#myrule_7_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Payroll_Submission_Status__c| Equal To|Implementation|
    |2|$Record.Most_Recent_Pay_Period_Submitted__c| Is Changed|✅|
    |3|$Record.Most_Recent_Payroll_Submitted__c| Is Null|⬜|
    
    
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Payroll Submission Status|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Payroll_Submission_Status__c|Behind|
    
    
    
    
    ### myRule_4_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update PR Status to Current|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Payroll_Submission_Status__c|Current|
    
    
    
    
    ### myRule_7_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|PR Status = Current|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Payroll_Submission_Status__c|Current|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

