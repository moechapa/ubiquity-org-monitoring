# Case_Before_Insert_Assign_Business_Hours_and_Department history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Case_Before_Insert_Assign_Business_Hours_and_Department-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record Before Save</b>"]):::startClass
    click START "#general-information" "83606989"
    
    Assign_Billing_Values[\"🟰 <em></em><br/>Assign Billing Values"/]:::assignments
    click Assign_Billing_Values "#assign_billing_values" "3540454203"
    
    Assign_CE_Values[\"🟰 <em></em><br/>Assign CE Values"/]:::assignments
    click Assign_CE_Values "#assign_ce_values" "3624139155"
    
    Assign_Comp_Values[\"🟰 <em></em><br/>Assign Comp Values"/]:::assignments
    click Assign_Comp_Values "#assign_comp_values" "136070587"
    
    Assign_Imps_Values[\"🟰 <em></em><br/>Assign Imps Values"/]:::assignments
    click Assign_Imps_Values "#assign_imps_values" "956215224"
    
    Assign_Ops_Values[\"🟰 <em></em><br/>Assign Ops Values"/]:::assignments
    click Assign_Ops_Values "#assign_ops_values" "622399211"
    
    Assign_Partnership_Values[\"🟰 <em></em><br/>Assign Partnership Values"/]:::assignments
    click Assign_Partnership_Values "#assign_partnership_values" "1774364654"
    
    Assign_Payroll_Values[\"🟰 <em></em><br/>Assign Payroll Values"/]:::assignments
    click Assign_Payroll_Values "#assign_payroll_values" "3303157629"
    
    Assign_Servicing_RecordType[\"🟰 <em></em><br/>Assign Servicing RecordType"/]:::assignments
    click Assign_Servicing_RecordType "#assign_servicing_recordtype" "1425527592"
    
    Assign_Transition_Values[\"🟰 <em></em><br/>Assign Transition Values"/]:::assignments
    click Assign_Transition_Values "#assign_transition_values" "1584052122"
    
    Set_BI_Values[\"🟰 <em></em><br/>Set BI Values"/]:::assignments
    click Set_BI_Values "#set_bi_values" "3282044042"
    
    At_risk_check{"🔀 <em></em><br/>At risk check"}:::decisions
    click At_risk_check "#at_risk_check" "752456294"
    
    BI_Origin{"🔀 <em></em><br/>BI Origin"}:::decisions
    click BI_Origin "#bi_origin" "1368396134"
    
    Billing_Origin_or_Team{"🔀 <em></em><br/>Billing Origin or Team"}:::decisions
    click Billing_Origin_or_Team "#billing_origin_or_team" "1385517267"
    
    CE_Origin_or_Team{"🔀 <em></em><br/>CE Origin or Team"}:::decisions
    click CE_Origin_or_Team "#ce_origin_or_team" "4093745270"
    
    Comp_Origin_or_Team{"🔀 <em></em><br/>Comp Origin or Team"}:::decisions
    click Comp_Origin_or_Team "#comp_origin_or_team" "2155773896"
    
    Imps_Origin_or_Team{"🔀 <em></em><br/>Imps Origin or Team"}:::decisions
    click Imps_Origin_or_Team "#imps_origin_or_team" "2750594805"
    
    Ops_Origin_or_Team{"🔀 <em></em><br/>Ops Origin or Team"}:::decisions
    click Ops_Origin_or_Team "#ops_origin_or_team" "1624035837"
    
    Partnership_Origin_or_Team{"🔀 <em></em><br/>Partnership Origin or Team"}:::decisions
    click Partnership_Origin_or_Team "#partnership_origin_or_team" "3700536925"
    
    Payroll_Origin_or_Team{"🔀 <em></em><br/>Payroll Origin or Team"}:::decisions
    click Payroll_Origin_or_Team "#payroll_origin_or_team" "2763007850"
    
    Transitions_Origin_or_Team{"🔀 <em></em><br/>Transitions Origin or Team"}:::decisions
    click Transitions_Origin_or_Team "#transitions_origin_or_team" "3591648361"
    
    Assign_Billing_Values --> END_Assign_Billing_Values
    Assign_CE_Values --> At_risk_check
    Assign_Comp_Values --> END_Assign_Comp_Values
    Assign_Imps_Values --> END_Assign_Imps_Values
    Assign_Ops_Values --> END_Assign_Ops_Values
    Assign_Partnership_Values --> END_Assign_Partnership_Values
    Assign_Payroll_Values --> END_Assign_Payroll_Values
    Assign_Servicing_RecordType --> END_Assign_Servicing_RecordType
    Assign_Transition_Values --> END_Assign_Transition_Values
    Set_BI_Values --> END_Set_BI_Values
    At_risk_check --> |"Not at risk"| Assign_Servicing_RecordType
    At_risk_check --> |"Risky Bisnu"| END_At_risk_check
    BI_Origin --> |"zzzzeee"| Set_BI_Values
    BI_Origin --> |"Default Outcome"| END_BI_Origin
    Billing_Origin_or_Team --> |"Needs Billing Values"| Assign_Billing_Values
    Billing_Origin_or_Team --> |"Default Outcome"| Comp_Origin_or_Team
    CE_Origin_or_Team --> |"Needs CE Values"| Assign_CE_Values
    CE_Origin_or_Team --> |"Default Outcome"| Partnership_Origin_or_Team
    Comp_Origin_or_Team --> |"Needs Comp Values"| Assign_Comp_Values
    Comp_Origin_or_Team --> |"Default Outcome"| CE_Origin_or_Team
    Imps_Origin_or_Team --> |"Needs Imps Values"| Assign_Imps_Values
    Imps_Origin_or_Team --> |"Default Outcome"| Transitions_Origin_or_Team
    Ops_Origin_or_Team --> |"Needs Ops Values"| Assign_Ops_Values
    Ops_Origin_or_Team --> |"Default Outcome"| Payroll_Origin_or_Team
    Partnership_Origin_or_Team --> |"Needs Partnership Values"| Assign_Partnership_Values
    Partnership_Origin_or_Team --> |"Default Outcome"| Imps_Origin_or_Team
    Payroll_Origin_or_Team --> |"Needs Payroll Values"| Assign_Payroll_Values
    Payroll_Origin_or_Team --> |"Default Outcome"| BI_Origin
    Transitions_Origin_or_Team --> |"Needs Transition Values"| Assign_Transition_Values
    Transitions_Origin_or_Team --> |"Default Outcome"| Ops_Origin_or_Team
    START -->  Billing_Origin_or_Team
    END_Assign_Billing_Values(( END )):::endClass
    END_Assign_Comp_Values(( END )):::endClass
    END_Assign_Imps_Values(( END )):::endClass
    END_Assign_Ops_Values(( END )):::endClass
    END_Assign_Partnership_Values(( END )):::endClass
    END_Assign_Payroll_Values(( END )):::endClass
    END_Assign_Servicing_RecordType(( END )):::endClass
    END_Assign_Transition_Values(( END )):::endClass
    END_Set_BI_Values(( END )):::endClass
    END_At_risk_check(( END )):::endClass
    END_BI_Origin(( END )):::endClass
    
    
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
    |Object|Case|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record Before Save|
    |Record Trigger Type| Create And Update|
    |Label|Case | Before Insert | Assign Business Hours and Department|
    |Status|Active|
    |Filter Formula|ISCHANGED({!$Record.Case_Team_New__c}) || ISNEW()|
    |Description|Remove exception for simply tpa, they get servicing recordtype now.<br/><br/>Migrated from the Support | Assign Business Hours on Case Creation process using multiple criteria.<br/>Set Business Hours on Case Creation|
    |Environments|Default|
    |Interview Label|Case | Before Insert | Assign Business Hours and Department {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    |Connector|[Billing_Origin_or_Team](#billing_origin_or_team)|
    |Next Node|[Billing_Origin_or_Team](#billing_origin_or_team)|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |isNew|Boolean|ISNEW()|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Assign_Billing_Values
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Billing Values|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.BusinessHoursId| Assign|01m37000000PC36|
    |$Record.Department__c| Assign|Accounting & Finance|
    |$Record.RecordTypeId| Assign|01237000000Xu63|
    
    
    
    
    ### Assign_CE_Values
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign CE Values|
    |Connector|[At_risk_check](#at_risk_check)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.BusinessHoursId| Assign|01m1G000000XaE6|
    |$Record.Department__c| Assign|Servicing|
    
    
    
    
    ### Assign_Comp_Values
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Comp Values|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.BusinessHoursId| Assign|01m37000000L06l|
    |$Record.Department__c| Assign|Compliance|
    |$Record.RecordTypeId| Assign|01237000000Xs6B|
    
    
    
    
    ### Assign_Imps_Values
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Imps Values|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.BusinessHoursId| Assign|01m1G000000XaE1|
    |$Record.Department__c| Assign|Client Onboarding|
    |$Record.RecordTypeId| Assign|012370000005thq|
    
    
    
    
    ### Assign_Ops_Values
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Ops Values|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.BusinessHoursId| Assign|01m37000000L07U|
    |$Record.RecordTypeId| Assign|012Ho000000NtUe|
    
    
    
    
    ### Assign_Partnership_Values
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Partnership Values|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.BusinessHoursId| Assign|01m1G000000IF26|
    |$Record.Department__c| Assign|Partnerships|
    
    
    
    
    ### Assign_Payroll_Values
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Payroll Values|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.BusinessHoursId| Assign|01m37000000L07Z|
    |$Record.RecordTypeId| Assign|01237000000XwGF|
    |$Record.Department__c| Assign|Payroll|
    
    
    
    
    ### Assign_Servicing_RecordType
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Servicing RecordType|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.RecordTypeId| Assign|01237000000AZr4|
    
    
    
    
    ### Assign_Transition_Values
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Transition Values|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.BusinessHoursId| Assign|01m37000000L07P|
    |$Record.Department__c| Assign|Transitions|
    |$Record.RecordTypeId| Assign|01237000000XwY4|
    
    
    
    
    ### Set_BI_Values
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Set BI Values|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.BusinessHoursId| Assign|01m00000000000J|
    |$Record.RecordTypeId| Assign|01237000000Ez81|
    |$Record.Department__c| Assign|Business Intelligence|
    
    
    
    
    ### At_risk_check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|At risk check|
    |Description|don't want to touch the at risk record type!|
    |Default Connector Label|Risky Bisnu|
    
    
    #### Rule Not_at_risk (Not at risk)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Servicing_RecordType](#assign_servicing_recordtype)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.RecordTypeId| Not Equal To|01237000000Aho7AAC|
    
    
    
    
    ### BI_Origin
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|BI Origin|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule zzzzeee (zzzzeee)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[Set_BI_Values](#set_bi_values)|
    |Condition Logic|(1 AND 2) OR 3|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Origin| Equal To|BI Inbox|
    |2|isNew| Equal To|✅|
    |3|$Record.Case_Team_New__c| Equal To|Business Intelligence|
    
    
    
    
    ### Billing_Origin_or_Team
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Billing Origin or Team|
    |Default Connector|[Comp_Origin_or_Team](#comp_origin_or_team)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Needs_Billing_Values (Needs Billing Values)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[Assign_Billing_Values](#assign_billing_values)|
    |Condition Logic|(1 AND 3) OR 2|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Origin| Equal To|Billing Inbox|
    |2|$Record.Case_Team_New__c| Equal To|Billing|
    |3|isNew| Equal To|✅|
    
    
    
    
    ### CE_Origin_or_Team
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|CE Origin or Team|
    |Default Connector|[Partnership_Origin_or_Team](#partnership_origin_or_team)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Needs_CE_Values (Needs CE Values)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[Assign_CE_Values](#assign_ce_values)|
    |Condition Logic|((1 OR 2 OR 3 OR 4 OR 5 OR 8) AND 7) OR 6|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Origin| Equal To|Web|
    |2|$Record.Origin| Equal To|Support Inbox|
    |3|$Record.Origin| Equal To|Saver Inbox|
    |4|$Record.Origin| Equal To|Servicing|
    |5|$Record.Origin| Equal To|Single(k) Inbox|
    |6|$Record.Case_Team_New__c| Equal To|Client Support|
    |7|isNew| Equal To|✅|
    |8|$Record.Origin| Equal To|Simply TPA|
    
    
    
    
    ### Comp_Origin_or_Team
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Comp Origin or Team|
    |Default Connector|[CE_Origin_or_Team](#ce_origin_or_team)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Needs_Comp_Values (Needs Comp Values)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[Assign_Comp_Values](#assign_comp_values)|
    |Condition Logic|(1 AND 3) OR 2|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Origin| Equal To|Compliance Inbox|
    |2|$Record.Case_Team_New__c| Equal To|Compliance|
    |3|isNew| Equal To|✅|
    
    
    
    
    ### Imps_Origin_or_Team
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Imps Origin or Team|
    |Default Connector|[Transitions_Origin_or_Team](#transitions_origin_or_team)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Needs_Imps_Values (Needs Imps Values)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[Assign_Imps_Values](#assign_imps_values)|
    |Condition Logic|(1 AND 2) OR 3|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Origin| Contains|Implementations|
    |2|isNew| Equal To|✅|
    |3|$Record.Case_Team_New__c| Equal To|Client Onboarding|
    
    
    
    
    ### Ops_Origin_or_Team
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Ops Origin or Team|
    |Default Connector|[Payroll_Origin_or_Team](#payroll_origin_or_team)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Needs_Ops_Values (Needs Ops Values)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[Assign_Ops_Values](#assign_ops_values)|
    |Condition Logic|((1 OR 2 OR 3 OR 4) AND 5) OR 6|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Origin| Equal To|Operations Inbox|
    |2|$Record.Origin| Equal To|RW Inbox|
    |3|$Record.Origin| Equal To|Ops Inbox|
    |4|$Record.Origin| Contains|Distributions|
    |5|isNew| Equal To|✅|
    |6|$Record.Case_Team_New__c| Equal To|Operations|
    
    
    
    
    ### Partnership_Origin_or_Team
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Partnership Origin or Team|
    |Default Connector|[Imps_Origin_or_Team](#imps_origin_or_team)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Needs_Partnership_Values (Needs Partnership Values)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[Assign_Partnership_Values](#assign_partnership_values)|
    |Condition Logic|(1 AND 2) OR 3|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Origin| Contains|Partnership|
    |2|isNew| Equal To|✅|
    |3|$Record.Case_Team_New__c| Equal To|Partnerships|
    
    
    
    
    ### Payroll_Origin_or_Team
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Payroll Origin or Team|
    |Default Connector|[BI_Origin](#bi_origin)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Needs_Payroll_Values (Needs Payroll Values)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[Assign_Payroll_Values](#assign_payroll_values)|
    |Condition Logic|(1 AND 2) OR 3|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Origin| Contains|Payroll|
    |2|isNew| Equal To|✅|
    |3|$Record.Case_Team_New__c| Equal To|Payroll|
    
    
    
    
    ### Transitions_Origin_or_Team
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Transitions Origin or Team|
    |Default Connector|[Ops_Origin_or_Team](#ops_origin_or_team)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Needs_Transition_Values (Needs Transition Values)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[Assign_Transition_Values](#assign_transition_values)|
    |Condition Logic|(1 AND 3) OR 2|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Origin| Equal To|Transitions Inbox|
    |2|$Record.Case_Team_New__c| Equal To|Transitions|
    |3|isNew| Equal To|✅|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

