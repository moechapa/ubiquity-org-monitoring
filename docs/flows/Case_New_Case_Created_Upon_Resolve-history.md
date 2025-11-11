# Case_New_Case_Created_Upon_Resolve history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Case_New_Case_Created_Upon_Resolve-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Case</b></br>Type: <b>On All Changes</b>"]):::startClass
    click START "#general-information" "3524347904"
    
    START --> myPreWaitDecision_myWait_myRule_7
    myRule_5_A1("⚡ <em></em><br/>Complete Connected Project Task"):::actionCalls
    click myRule_5_A1 "#myrule_5_a1" "2005801958"
    
    myWaitAssignment_myWait_myRule_7[\"🟰 <em></em><br/>myWaitAssignment_myWait_myRule_7"/]:::assignments
    click myWaitAssignment_myWait_myRule_7 "#mywaitassignment_mywait_myrule_7" "2883813324"
    
    myWaitEvent_myWait_myRule_7_event_0_postWaitExecutionAssignment[\"🟰 <em></em><br/>myWaitEvent_myWait_myRule_7_event_0_postWaitExecutionAssignment"/]:::assignments
    click myWaitEvent_myWait_myRule_7_event_0_postWaitExecutionAssignment "#mywaitevent_mywait_myrule_7_event_0_postwaitexecutionassignment" "3794827466"
    
    myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
    click myDecision "#mydecision" "2806654017"
    
    myDecision4{"🔀 <em></em><br/>myDecision4"}:::decisions
    click myDecision4 "#mydecision4" "3562146590"
    
    myDecision6{"🔀 <em></em><br/>myDecision6"}:::decisions
    click myDecision6 "#mydecision6" "1512621374"
    
    myPostWaitDecision_myWaitEvent_myWait_myRule_7_event_0{"🔀 <em></em><br/>myPostWaitDecision_myWaitEvent_myWait_myRule_7_event_0"}:::decisions
    click myPostWaitDecision_myWaitEvent_myWait_myRule_7_event_0 "#mypostwaitdecision_mywaitevent_mywait_myrule_7_event_0" "179826936"
    
    myPreWaitDecision_myWait_myRule_7{"🔀 <em></em><br/>myPreWaitDecision_myWait_myRule_7"}:::decisions
    click myPreWaitDecision_myWait_myRule_7 "#myprewaitdecision_mywait_myrule_7" "2814825896"
    
    myRule_1_pmetdec{"🔀 <em></em><br/>Previously Met Decision"}:::decisions
    click myRule_1_pmetdec "#myrule_1_pmetdec" "985795309"
    
    myRule_5_pmetdec{"🔀 <em></em><br/>Previously Met Decision"}:::decisions
    click myRule_5_pmetdec "#myrule_5_pmetdec" "3420770449"
    
    myRule_7_pmetdec{"🔀 <em></em><br/>Previously Met Decision"}:::decisions
    click myRule_7_pmetdec "#myrule_7_pmetdec" "3741055275"
    
    myRule_1_A1[("➕ <em></em><br/>Create Case for CSTs")]:::recordCreates
    click myRule_1_A1 "#myrule_1_a1" "3469075365"
    
    myWaitEvent_myWait_myRule_7_event_0_SA1[("➕ <em></em><br/>Compliance Case")]:::recordCreates
    click myWaitEvent_myWait_myRule_7_event_0_SA1 "#mywaitevent_mywait_myrule_7_event_0_sa1" "3744628551"
    
    myRule_5_A1 --> END_myRule_5_A1
    myWaitAssignment_myWait_myRule_7 --> myDecision
    myWaitEvent_myWait_myRule_7_event_0_postWaitExecutionAssignment --> myWait_myRule_7
    myDecision --> |"Upgrade LOI Signed"| myRule_1_pmetdec
    myDecision --> |"default"| myDecision4
    myDecision4 --> |"Connected Project Task Present"| myRule_5_pmetdec
    myDecision4 --> |"default"| myDecision6
    myDecision6 --> |"Future Amendment Case"| myRule_7_pmetdec
    myDecision6 --> |"default"| END_myDecision6
    myPostWaitDecision_myWaitEvent_myWait_myRule_7_event_0 --> |"myPostWaitRule_myWaitEvent_myWait_myRule_7_event_0"| myWaitEvent_myWait_myRule_7_event_0_SA1
    myPostWaitDecision_myWaitEvent_myWait_myRule_7_event_0 --> |"default"| myWaitEvent_myWait_myRule_7_event_0_postWaitExecutionAssignment
    myPreWaitDecision_myWait_myRule_7 --> |"myPreWaitRule_myWait_myRule_7"| myDecision
    myPreWaitDecision_myWait_myRule_7 --> |"default"| myWaitAssignment_myWait_myRule_7
    myRule_1_pmetdec --> |"Previously Met - Null"| myRule_1_A1
    myRule_1_pmetdec --> |"Previously Met - Prev"| myDecision4
    myRule_1_pmetdec --> |"Not Previously Met"| myRule_1_A1
    myRule_5_pmetdec --> |"Previously Met - Null"| myRule_5_A1
    myRule_5_pmetdec --> |"Not Previously Met"| myRule_5_A1
    myRule_7_pmetdec --> |"Previously Met - Null"| myWait_myRule_7
    myRule_7_pmetdec --> |"Not Previously Met"| myWait_myRule_7
    myRule_1_A1 --> myDecision4
    myWaitEvent_myWait_myRule_7_event_0_SA1 --> myWaitEvent_myWait_myRule_7_event_0_postWaitExecutionAssignment
    END_myRule_5_A1(( END )):::endClass
    END_myDecision6(( END )):::endClass
    
    
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
    |Label|Case | New Case Created Upon Resolve|
    |Status|Active|
    |Description|When Case is resolved, create follow up case for team related to the process|
    |Interview Label|Case_New_Case_Created_Upon_Resolve-6_InterviewLabel|
    |Start Element Reference|[myPreWaitDecision_myWait_myRule_7](#myprewaitdecision_mywait_myrule_7)|
    | Object Type (PM)|Case|
    | Object Variable (PM)|myVariable_current|
    | Old Object Variable (PM)|myVariable_old|
    | Trigger Type (PM)|onAllChanges|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |cancelWaits|String|✅|⬜|✅|<!-- -->|<!-- -->|
    |myVariable_current|SObject|⬜|✅|✅|Case|<!-- -->|
    |myVariable_old|SObject|⬜|✅|⬜|Case|<!-- -->|
    |myWaitEvent_myWait_myRule_7_event_0_postActionExecutionVariable|Boolean|⬜|⬜|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |formula_2_myRule_1_A1_2945293722|String|"Plan Upgrade has been confirmed by client" + BR() + BR() +<br/><br/>"Please see Compliance's Case for details of new provisions, and the Signed LOI: https://myubiquity.lightning.force.com/lightning/r/Case/"+ {!myVariable_current.Case_ID_18_Char__c} + "/view" + BR() + BR() +<br/><br/>"Please call and email the client to confirm their new plan provisions are effective and ask if they have any questions." + BR() + BR() +<br/><br/>"Confirm the new Adoption agreement (if needed) has been sent from Paradigm & that the trustee has received for signature." + BR() + BR() +<br/><br/>"Confirm the Plan Type is accurate in Paradigm and Salesforce according to the Upgrade." + BR() + BR() +<br/><br/>"Confirm the client has received brokerage documents if the upgrade was to add brokerage." + BR() + BR() +<br/><br/>"Thank the client for working with us and let them know we’re here to help!"|<!-- -->|
    |formula_3_myRule_1_A1_1572527456|String|"Plan Upgrade has been confirmed by " + {!myVariable_current.Account.Name}|<!-- -->|
    |formula_8_myWaitEvent_myWait_myRule_7_event_0_SA1_5384037424|String|"Review amendment request from case # " + {!myVariable_current.CaseNumber} + " to verify the amended items are now live."|<!-- -->|
    |formula_9_myWaitEvent_myWait_myRule_7_event_0_SA1_6905616720|String|"Review amendment from case # " + {!myVariable_current.CaseNumber}|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### myRule_5_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Complete Connected Project Task|
    |Action Type|Flow|
    |Action Name|Case_Process_Complete_Connected_Tasks|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Case_Process_Complete_Connected_Tasks|
    | Action Call Type (PM)|flow|
    |Flow Selection (PM)|Case | Process | Complete Connected Tasks|
    |Record Id (input)|myVariable_current.Id|
    
    
    ### myWaitAssignment_myWait_myRule_7
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|[myWaitAssignment_myWait_myRule_7](#mywaitassignment_mywait_myrule_7)|
    |Connector|[myDecision](#mydecision)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |cancelWaits| Add|myWait_myRule_7|
    
    
    
    
    ### myWaitEvent_myWait_myRule_7_event_0_postWaitExecutionAssignment
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|[myWaitEvent_myWait_myRule_7_event_0_postWaitExecutionAssignment](#mywaitevent_mywait_myrule_7_event_0_postwaitexecutionassignment)|
    |Connector|myWait_myRule_7|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |myWaitEvent_myWait_myRule_7_event_0_postActionExecutionVariable| Assign|✅|
    
    
    
    
    ### myDecision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision](#mydecision)|
    |Default Connector|[myDecision4](#mydecision4)|
    |Default Connector Label|default|
    |Index (PM)|numberValue: 0<br/>|
    
    
    #### Rule myRule_1 (Upgrade LOI Signed)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_pmetdec](#myrule_1_pmetdec)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Status| Equal To|Resolved|
    |2|myVariable_current.Subject| Starts With|LOI Signed for|
    |3|myVariable_current.Department__c| Equal To|Compliance|
    |4|myVariable_current.Category__c| Equal To|Amendments|
    |5|myVariable_current.Sub_Category__c| Equal To|Upgrade|
    
    
    
    
    ### myDecision4
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision4](#mydecision4)|
    |Default Connector|[myDecision6](#mydecision6)|
    |Default Connector Label|default|
    |Index (PM)|1|
    
    
    #### Rule myRule_5 (Connected Project Task Present)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_5_pmetdec](#myrule_5_pmetdec)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Connected_to_Project__c| Equal To|✅|
    |2|myVariable_current.Status| Equal To|Resolved|
    
    
    
    
    ### myDecision6
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision6](#mydecision6)|
    |Default Connector Label|default|
    |Index (PM)|2|
    
    
    #### Rule myRule_7 (Future Amendment Case)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_7_pmetdec](#myrule_7_pmetdec)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Status| Equal To|Resolved|
    |2|myVariable_current.Future_Review_Date__c| Is Null|⬜|
    
    
    
    
    ### myPostWaitDecision_myWaitEvent_myWait_myRule_7_event_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myPostWaitDecision_myWaitEvent_myWait_myRule_7_event_0](#mypostwaitdecision_mywaitevent_mywait_myrule_7_event_0)|
    |Default Connector|[myWaitEvent_myWait_myRule_7_event_0_postWaitExecutionAssignment](#mywaitevent_mywait_myrule_7_event_0_postwaitexecutionassignment)|
    |Default Connector Label|default|
    
    
    #### Rule myPostWaitRule_myWaitEvent_myWait_myRule_7_event_0 (myPostWaitRule_myWaitEvent_myWait_myRule_7_event_0)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myWaitEvent_myWait_myRule_7_event_0_SA1](#mywaitevent_mywait_myrule_7_event_0_sa1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Future_Review_Date__c| Is Null|⬜|
    
    
    
    
    ### myPreWaitDecision_myWait_myRule_7
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myPreWaitDecision_myWait_myRule_7](#myprewaitdecision_mywait_myrule_7)|
    |Default Connector|[myWaitAssignment_myWait_myRule_7](#mywaitassignment_mywait_myrule_7)|
    |Default Connector Label|default|
    
    
    #### Rule myPreWaitRule_myWait_myRule_7 (myPreWaitRule_myWait_myRule_7)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myDecision](#mydecision)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Status| Equal To|Resolved|
    |2|myVariable_current.Future_Review_Date__c| Is Null|⬜|
    
    
    
    
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
    |Connector|[myDecision4](#mydecision4)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old.Status| Equal To|Resolved|
    |2|myVariable_old.Subject| Starts With|LOI Signed for|
    |3|myVariable_old.Department__c| Equal To|Compliance|
    |4|myVariable_old.Category__c| Equal To|Amendments|
    |5|myVariable_old.Sub_Category__c| Equal To|Upgrade|
    
    
    
    
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
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old.Connected_to_Project__c| Equal To|✅|
    |2|myVariable_old.Status| Equal To|Resolved|
    
    
    
    
    ### myRule_7_pmetdec
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Previously Met Decision|
    |Default Connector|myWait_myRule_7|
    |Default Connector Label|Not Previously Met|
    
    
    #### Rule myRule_7_pmetnullrule (Previously Met - Null)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|myWait_myRule_7|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|✅|
    
    
    
    
    #### Rule myRule_7_pmetrule (Previously Met - Prev)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old.Status| Equal To|Resolved|
    |2|myVariable_old.Future_Review_Date__c| Is Null|⬜|
    
    
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Create Case for CSTs|
    |Connector|[myDecision4](#mydecision4)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|myVariable_current.AccountId|
    |BusinessHoursId|01m1G000000XaE6|
    |Category__c|Compliance|
    |Department__c|Servicing|
    |Description|formula_2_myRule_1_A1_2945293722|
    |Origin|Compliance|
    |OwnerId|00GHo000002SIjQMAW|
    |Plan__c|myVariable_current.Plan__c|
    |Status|New|
    |Sub_Category__c|Amend - Upgrade / Downgrade|
    |Subject|formula_3_myRule_1_A1_1572527456|
    
    
    
    
    ### myWaitEvent_myWait_myRule_7_event_0_SA1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Compliance Case|
    |Connector|[myWaitEvent_myWait_myRule_7_event_0_postWaitExecutionAssignment](#mywaitevent_mywait_myrule_7_event_0_postwaitexecutionassignment)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|myVariable_current.AccountId|
    |BusinessHoursId|myVariable_current.BusinessHoursId|
    |Category__c|Amendments|
    |ContactId|myVariable_current.ContactId|
    |Department__c|Compliance|
    |Description|formula_8_myWaitEvent_myWait_myRule_7_event_0_SA1_5384037424|
    |Origin|Internal|
    |OwnerId|myVariable_current.OwnerId|
    |Plan__c|myVariable_current.Plan__c|
    |Priority|High|
    |RecordTypeId|myVariable_current.RecordTypeId|
    |Status|New|
    |Sub_Category__c|Future Date Amendment|
    |Subject|formula_9_myWaitEvent_myWait_myRule_7_event_0_SA1_6905616720|
    |Team_Member__c|myVariable_current.Team_Member__c|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

