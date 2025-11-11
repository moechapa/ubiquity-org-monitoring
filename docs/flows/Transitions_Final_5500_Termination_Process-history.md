# Transitions_Final_5500_Termination_Process history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Transitions_Final_5500_Termination_Process-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Transition__c</b></br>Type: <b>On All Changes</b>"]):::startClass
    click START "#general-information" "1169023427"
    
    START --> isChangedDecision4_myRule_3_Final_5500_PYE_c
    isChangedDecision4_myRule_3_Final_5500_PYE_c{"🔀 <em></em><br/>isChangedDecision4_myRule_3_Final_5500_PYE_c"}:::decisions
    click isChangedDecision4_myRule_3_Final_5500_PYE_c "#ischangeddecision4_myrule_3_final_5500_pye_c" "2393885529"
    
    myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
    click myDecision "#mydecision" "720310599"
    
    myDecision2{"🔀 <em></em><br/>myDecision2"}:::decisions
    click myDecision2 "#mydecision2" "2346025729"
    
    myRule_1_pmetdec{"🔀 <em></em><br/>Previously Met Decision"}:::decisions
    click myRule_1_pmetdec "#myrule_1_pmetdec" "3188921613"
    
    myRule_1_A1[("➕ <em></em><br/>Transitions | Create Final Census & Payroll Case")]:::recordCreates
    click myRule_1_A1 "#myrule_1_a1" "3631299986"
    
    myRule_3_A1[("➕ <em></em><br/>Compliance | Final Form 5500")]:::recordCreates
    click myRule_3_A1 "#myrule_3_a1" "2834496488"
    
    isChangedDecision4_myRule_3_Final_5500_PYE_c --> |"isChangedRule_4_myRule_3_Final_5500_PYE_c"| myDecision
    isChangedDecision4_myRule_3_Final_5500_PYE_c --> |"default"| myDecision
    myDecision --> |"Final Census & Last Payroll"| myRule_1_pmetdec
    myDecision --> |"default"| myDecision2
    myDecision2 --> |"Final 5500 Plan Year End"| myRule_3_A1
    myDecision2 --> |"default"| END_myDecision2
    myRule_1_pmetdec --> |"Previously Met - Null"| myRule_1_A1
    myRule_1_pmetdec --> |"Previously Met - Prev"| myDecision2
    myRule_1_pmetdec --> |"Not Previously Met"| myRule_1_A1
    myRule_1_A1 --> myDecision2
    myRule_3_A1 --> END_myRule_3_A1
    END_myDecision2(( END )):::endClass
    END_myRule_3_A1(( END )):::endClass
    
    
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
    |Label|Transitions | Final 5500 Termination Process|
    |Status|Obsolete|
    |Interview Label|Transitions_Final_5500_Termination_Process-18_InterviewLabel|
    |Start Element Reference|[isChangedDecision4_myRule_3_Final_5500_PYE_c](#ischangeddecision4_myrule_3_final_5500_pye_c)|
    | Object Type (PM)|Transition__c|
    | Object Variable (PM)|myVariable_current|
    | Old Object Variable (PM)|myVariable_old|
    | Trigger Type (PM)|onAllChanges|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |myVariable_current|SObject|⬜|✅|✅|Transition__c|<!-- -->|
    |myVariable_old|SObject|⬜|✅|⬜|Transition__c|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### isChangedDecision4_myRule_3_Final_5500_PYE_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision4_myRule_3_Final_5500_PYE_c](#ischangeddecision4_myrule_3_final_5500_pye_c)|
    |Default Connector|[myDecision](#mydecision)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_4_myRule_3_Final_5500_PYE_c (isChangedRule_4_myRule_3_Final_5500_PYE_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myDecision](#mydecision)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Final_5500_PYE__c| Not Equal To|myVariable_current.Final_5500_PYE__c|
    
    
    
    
    ### myDecision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision](#mydecision)|
    |Default Connector|[myDecision2](#mydecision2)|
    |Default Connector Label|default|
    |Index (PM)|numberValue: 0<br/>|
    
    
    #### Rule myRule_1 (Final Census & Last Payroll)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_pmetdec](#myrule_1_pmetdec)|
    |Condition Logic|(2 AND 4 AND 5 AND (1 OR 3)) AND (7 OR 8 OR 11 OR (6 AND 9 AND 10))|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Transition_Type__c| Equal To|Termination|
    |2|myVariable_current.Final_Census_Payroll_Submitted__c| Is Null|⬜|
    |3|myVariable_current.Transition_Type__c| Equal To|Termination/Merger|
    |4|myVariable_current.RKO_Plan__c| Equal To|No|
    |5|myVariable_current.Final_Payroll_In_Terminated_Year__c| Equal To|Yes|
    |6|myVariable_current.Safe_Harbor_Plan__c| Equal To|Yes|
    |7|myVariable_current.Does_the_Plan_Have_Forfeitures__c| Equal To|Yes|
    |8|myVariable_current.Is_Plan_Vesting_100__c| Equal To|No|
    |9|myVariable_current.Safe_Harbor_Funded_In_Term_Year__c| Equal To|Yes|
    |10|myVariable_current.Safe_Harbor_Allocation_Frequency__c| Equal To|End of Plan Year|
    |11|myVariable_current.Safe_Harbor_Plan__c| Equal To|No|
    
    
    
    
    ### myDecision2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision2](#mydecision2)|
    |Default Connector Label|default|
    |Index (PM)|1|
    
    
    #### Rule myRule_3 (Final 5500 Plan Year End)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_3_A1](#myrule_3_a1)|
    |Condition Logic|1 AND 2 AND (3 OR 4)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|isChangedRule_4_myRule_3_Final_5500_PYE_c| Equal To|✅|
    |2|myVariable_current.Final_5500_PYE__c| Is Null|⬜|
    |3|myVariable_current.Transition_Type__c| Equal To|Termination|
    |4|myVariable_current.Transition_Type__c| Equal To|Termination/Merger|
    
    
    
    
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
    |Condition Logic|(2 AND 4 AND 5 AND (1 OR 3)) AND (7 OR 8 OR 11 OR (6 AND 9 AND 10))|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old.Transition_Type__c| Equal To|Termination|
    |2|myVariable_old.Final_Census_Payroll_Submitted__c| Is Null|⬜|
    |3|myVariable_old.Transition_Type__c| Equal To|Termination/Merger|
    |4|myVariable_old.RKO_Plan__c| Equal To|No|
    |5|myVariable_old.Final_Payroll_In_Terminated_Year__c| Equal To|Yes|
    |6|myVariable_old.Safe_Harbor_Plan__c| Equal To|Yes|
    |7|myVariable_old.Does_the_Plan_Have_Forfeitures__c| Equal To|Yes|
    |8|myVariable_old.Is_Plan_Vesting_100__c| Equal To|No|
    |9|myVariable_old.Safe_Harbor_Funded_In_Term_Year__c| Equal To|Yes|
    |10|myVariable_old.Safe_Harbor_Allocation_Frequency__c| Equal To|End of Plan Year|
    |11|myVariable_old.Safe_Harbor_Plan__c| Equal To|No|
    
    
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Transitions | Create Final Census & Payroll Case|
    |Connector|[myDecision2](#mydecision2)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|myVariable_current.Account__r.Id|
    |BusinessHoursId|01m37000000L07P|
    |Category__c|Transition|
    |Department__c|Transitions|
    |Description|Please create child case requesting the final testing and/or forfeiture allocation.|
    |Origin|Internal|
    |OwnerId|00500000006xUkf|
    |Plan__c|myVariable_current.Plan__r.Id|
    |RecordTypeId|01237000000XwY4AAK|
    |Status|New|
    |Subject|Final Testing/ Forfeiture Allocation Needed|
    |Transition__c|myVariable_current.Id|
    
    
    
    
    ### myRule_3_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Compliance | Final Form 5500|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|myVariable_current.Account__r.Id|
    |BusinessHoursId|01m37000000PC36|
    |Category__c|Transition|
    |Department__c|Compliance|
    |Description|Please prepare the final Form 5500|
    |Origin|Internal|
    |OwnerId|00537000001tb5HAAQ|
    |Plan__c|myVariable_current.Plan__c|
    |RecordTypeId|01237000000Xs6BAAS|
    |Status|New|
    |Subject|Final Form 5500 Date has been completed|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

