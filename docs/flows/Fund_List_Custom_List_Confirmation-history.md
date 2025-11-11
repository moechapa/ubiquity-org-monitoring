# Fund_List_Custom_List_Confirmation history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Fund_List_Custom_List_Confirmation-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Fund_List__c</b></br>Type: <b>On All Changes</b>"]):::startClass
    click START "#general-information" "929905860"
    
    START --> myDecision
    myRule_1_A3("📧 <em></em><br/>Email Operations"):::actionCalls
    click myRule_1_A3 "#myrule_1_a3" "2693412426"
    
    myRule_8_A1("📧 <em></em><br/>Email Record Creator"):::actionCalls
    click myRule_8_A1 "#myrule_8_a1" "4124096967"
    
    myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
    click myDecision "#mydecision" "2622512102"
    
    myDecision3{"🔀 <em></em><br/>myDecision3"}:::decisions
    click myDecision3 "#mydecision3" "1574381543"
    
    myDecision5{"🔀 <em></em><br/>myDecision5"}:::decisions
    click myDecision5 "#mydecision5" "42845668"
    
    myDecision7{"🔀 <em></em><br/>myDecision7"}:::decisions
    click myDecision7 "#mydecision7" "618119682"
    
    myRule_1_pmetdec{"🔀 <em></em><br/>Previously Met Decision"}:::decisions
    click myRule_1_pmetdec "#myrule_1_pmetdec" "1306269558"
    
    myRule_4_pmetdec{"🔀 <em></em><br/>Previously Met Decision"}:::decisions
    click myRule_4_pmetdec "#myrule_4_pmetdec" "3024065933"
    
    myRule_6_pmetdec{"🔀 <em></em><br/>Previously Met Decision"}:::decisions
    click myRule_6_pmetdec "#myrule_6_pmetdec" "3731233523"
    
    myRule_8_pmetdec{"🔀 <em></em><br/>Previously Met Decision"}:::decisions
    click myRule_8_pmetdec "#myrule_8_pmetdec" "3527105581"
    
    myRule_1_A1[("🛠️ <em></em><br/>Update Opp")]:::recordUpdates
    click myRule_1_A1 "#myrule_1_a1" "369361936"
    
    myRule_1_A2[("🛠️ <em></em><br/>Update Fund List")]:::recordUpdates
    click myRule_1_A2 "#myrule_1_a2" "2542598259"
    
    myRule_4_A1[("🛠️ <em></em><br/>Mark Fund List Completed")]:::recordUpdates
    click myRule_4_A1 "#myrule_4_a1" "1162380036"
    
    myRule_4_A2[("🛠️ <em></em><br/>Mark List as Completed")]:::recordUpdates
    click myRule_4_A2 "#myrule_4_a2" "4194133535"
    
    myRule_6_A1[("🛠️ <em></em><br/>Mark List as Complete on Imp")]:::recordUpdates
    click myRule_6_A1 "#myrule_6_a1" "2579816229"
    
    myRule_1_A3 --> myDecision3
    myRule_8_A1 --> END_myRule_8_A1
    myDecision --> |"Opp is Entered"| myRule_1_pmetdec
    myDecision --> |"default"| myDecision3
    myDecision3 --> |"Completion Date Entered"| myRule_4_pmetdec
    myDecision3 --> |"default"| myDecision5
    myDecision5 --> |"List Completed"| myRule_6_pmetdec
    myDecision5 --> |"default"| myDecision7
    myDecision7 --> |"List Missing Info"| myRule_8_pmetdec
    myDecision7 --> |"default"| END_myDecision7
    myRule_1_pmetdec --> |"Previously Met - Null"| myRule_1_A1
    myRule_1_pmetdec --> |"Previously Met - Prev"| myDecision3
    myRule_1_pmetdec --> |"Not Previously Met"| myRule_1_A1
    myRule_4_pmetdec --> |"Previously Met - Null"| myRule_4_A1
    myRule_4_pmetdec --> |"Previously Met - Prev"| myDecision5
    myRule_4_pmetdec --> |"Not Previously Met"| myRule_4_A1
    myRule_6_pmetdec --> |"Previously Met - Null"| myRule_6_A1
    myRule_6_pmetdec --> |"Previously Met - Prev"| myDecision7
    myRule_6_pmetdec --> |"Not Previously Met"| myRule_6_A1
    myRule_8_pmetdec --> |"Previously Met - Null"| myRule_8_A1
    myRule_8_pmetdec --> |"Not Previously Met"| myRule_8_A1
    myRule_1_A1 --> myRule_1_A2
    myRule_1_A2 --> myRule_1_A3
    myRule_4_A1 --> myRule_4_A2
    myRule_4_A2 --> myDecision5
    myRule_6_A1 --> myDecision7
    END_myRule_8_A1(( END )):::endClass
    END_myDecision7(( END )):::endClass
    
    
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
    |Label|Fund List | Custom List Confirmation|
    |Status|Active|
    |Description|Update fields on Opp for validation when Custom List is created|
    |Interview Label|Fund_List_Custom_List_Confirmation-13_InterviewLabel|
    |Start Element Reference|[myDecision](#mydecision)|
    | Object Type (PM)|Fund_List__c|
    | Object Variable (PM)|myVariable_current|
    | Old Object Variable (PM)|myVariable_old|
    | Trigger Type (PM)|onAllChanges|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |myVariable_current|SObject|⬜|✅|✅|Fund_List__c|<!-- -->|
    |myVariable_old|SObject|⬜|✅|⬜|Fund_List__c|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |formula_2_myRule_1_A2_7256969424|String|MID("Custom Fund List - " + {!myVariable_current.Opportunity__r.Name}, 0, 80)|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### myRule_1_A3
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Email Operations|
    |Action Type|Email Alert|
    |Action Name|Fund_List__c.New_Custom_Fund_List_Created|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Fund_List__c.New_Custom_Fund_List_Created|
    |Email Alert Selection (PM)|New_Custom_Fund_List_Created|
    | SObject Row Id (input)|myVariable_current.Id|
    |Connector|[myDecision3](#mydecision3)|
    
    
    ### myRule_8_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Email Record Creator|
    |Action Type|Email Alert|
    |Action Name|Fund_List__c.Custom_Fund_List_Missing_Info|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Fund_List__c.Custom_Fund_List_Missing_Info|
    |Email Alert Selection (PM)|Custom_Fund_List_Missing_Info|
    | SObject Row Id (input)|myVariable_current.Id|
    
    
    ### myDecision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision](#mydecision)|
    |Default Connector|[myDecision3](#mydecision3)|
    |Default Connector Label|default|
    |Index (PM)|numberValue: 0<br/>|
    
    
    #### Rule myRule_1 (Opp is Entered)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_pmetdec](#myrule_1_pmetdec)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Opportunity__c| Is Null|⬜|
    |2|myVariable_current.RecordType.Name| Equal To|Custom Fund List|
    
    
    
    
    ### myDecision3
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision3](#mydecision3)|
    |Default Connector|[myDecision5](#mydecision5)|
    |Default Connector Label|default|
    |Index (PM)|1|
    
    
    #### Rule myRule_4 (Completion Date Entered)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_4_pmetdec](#myrule_4_pmetdec)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Completion_Date__c| Is Null|⬜|
    
    
    
    
    ### myDecision5
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision5](#mydecision5)|
    |Default Connector|[myDecision7](#mydecision7)|
    |Default Connector Label|default|
    |Index (PM)|2|
    
    
    #### Rule myRule_6 (List Completed)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_6_pmetdec](#myrule_6_pmetdec)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Fund_List_Status__c| Equal To|Completed|
    |2|myVariable_current.Implementation__c| Is Null|⬜|
    
    
    
    
    ### myDecision7
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision7](#mydecision7)|
    |Default Connector Label|default|
    |Index (PM)|3|
    
    
    #### Rule myRule_8 (List Missing Info)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_8_pmetdec](#myrule_8_pmetdec)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Fund_List_Status__c| Equal To|Missing Info|
    
    
    
    
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
    |Connector|[myDecision3](#mydecision3)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old.Opportunity__c| Is Null|⬜|
    |2|myVariable_old.RecordType.Name| Equal To|Custom Fund List|
    
    
    
    
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
    |Connector|[myDecision5](#mydecision5)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old.Completion_Date__c| Is Null|⬜|
    
    
    
    
    ### myRule_6_pmetdec
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Previously Met Decision|
    |Default Connector|[myRule_6_A1](#myrule_6_a1)|
    |Default Connector Label|Not Previously Met|
    
    
    #### Rule myRule_6_pmetnullrule (Previously Met - Null)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_6_A1](#myrule_6_a1)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|✅|
    
    
    
    
    #### Rule myRule_6_pmetrule (Previously Met - Prev)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myDecision7](#mydecision7)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old.Fund_List_Status__c| Equal To|Completed|
    |2|myVariable_old.Implementation__c| Is Null|⬜|
    
    
    
    
    ### myRule_8_pmetdec
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Previously Met Decision|
    |Default Connector|[myRule_8_A1](#myrule_8_a1)|
    |Default Connector Label|Not Previously Met|
    
    
    #### Rule myRule_8_pmetnullrule (Previously Met - Null)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_8_A1](#myrule_8_a1)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|✅|
    
    
    
    
    #### Rule myRule_8_pmetrule (Previously Met - Prev)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old.Fund_List_Status__c| Equal To|Missing Info|
    
    
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Opportunity|
    |Label|Update Opp|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Fund_List__c].Opportunity|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myRule_1_A2](#myrule_1_a2)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Opportunity__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Custom_Fund_List_Included__c|✅|
    
    
    
    
    ### myRule_1_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Fund_List__c|
    |Label|Update Fund List|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Fund_List__c]|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myRule_1_A3](#myrule_1_a3)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Account__c|myVariable_current.Opportunity__r.AccountId|
    |Custodian__c|myVariable_current.Opportunity__r.Custodian__c|
    |Name|formula_2_myRule_1_A2_7256969424|
    |OwnerId|005Ho00000AnvFJ|
    
    
    
    
    ### myRule_4_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Fund_List__c|
    |Label|Mark Fund List Completed|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Fund_List__c]|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myRule_4_A2](#myrule_4_a2)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Fund_List_Status__c|Completed|
    
    
    
    
    ### myRule_4_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Implementation__c|
    |Label|Mark List as Completed|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Fund_List__c].Implementation|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myDecision5](#mydecision5)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Implementation__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Custom_Fund_List_Completed__c|✅|
    
    
    
    
    ### myRule_6_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Implementation__c|
    |Label|Mark List as Complete on Imp|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Fund_List__c].Implementation|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myDecision7](#mydecision7)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Implementation__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Custom_Fund_List_Completed__c|✅|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

