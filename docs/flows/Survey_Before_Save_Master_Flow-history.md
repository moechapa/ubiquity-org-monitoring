# Survey_Before_Save_Master_Flow history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Survey_Before_Save_Master_Flow-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record Before Save</b>"]):::startClass
    click START "#general-information" "3473294866"
    
    Assign_Force_Out_1k_Survey_Type[\"🟰 <em></em><br/>Assign Force Out 1k Survey Type"/]:::assignments
    click Assign_Force_Out_1k_Survey_Type "#assign_force_out_1k_survey_type" "3129989719"
    
    Assign_Force_Out_5k_Survey_Type[\"🟰 <em></em><br/>Assign Force Out 5k Survey Type"/]:::assignments
    click Assign_Force_Out_5k_Survey_Type "#assign_force_out_5k_survey_type" "909598405"
    
    Set_Case_Resolution_Survey_Type[\"🟰 <em></em><br/>Set Case Resolution Survey Type"/]:::assignments
    click Set_Case_Resolution_Survey_Type "#set_case_resolution_survey_type" "251271128"
    
    set_nps_picklist_value[\"🟰 <em></em><br/>set nps picklist value"/]:::assignments
    click set_nps_picklist_value "#set_nps_picklist_value" "1321083738"
    
    Check_Survey_Type{"🔀 <em></em><br/>Check Survey Type"}:::decisions
    click Check_Survey_Type "#check_survey_type" "2301952399"
    
    Does_NPS_need_copy{"🔀 <em></em><br/>Does NPS need copy"}:::decisions
    click Does_NPS_need_copy "#does_nps_need_copy" "555339701"
    
    Assign_Force_Out_1k_Survey_Type --> Does_NPS_need_copy
    Assign_Force_Out_5k_Survey_Type --> Does_NPS_need_copy
    Set_Case_Resolution_Survey_Type --> Does_NPS_need_copy
    set_nps_picklist_value --> END_set_nps_picklist_value
    Check_Survey_Type --> |"Case Resolution CSAT"| Set_Case_Resolution_Survey_Type
    Check_Survey_Type --> |"Force Out 1k"| Assign_Force_Out_1k_Survey_Type
    Check_Survey_Type --> |"Force Out 5k"| Assign_Force_Out_5k_Survey_Type
    Check_Survey_Type --> |"Default Outcome"| Does_NPS_need_copy
    Does_NPS_need_copy --> |"Needs nps sync"| set_nps_picklist_value
    Does_NPS_need_copy --> |"Default Outcome"| END_Does_NPS_need_copy
    START -->  Check_Survey_Type
    END_set_nps_picklist_value(( END )):::endClass
    END_Does_NPS_need_copy(( END )):::endClass
    
    
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
    |Object|simplesurvey__Survey__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record Before Save|
    |Record Trigger Type| Create And Update|
    |Label|Survey | Before Save | Master Flow|
    |Status|Active|
    |Description|Performs updates / checks that can't be filtered w/ entry criteria<br/><br/>- Sets survey type<br/>- Sets nps field|
    |Environments|Default|
    |Interview Label|Survey | Before Save | Master {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Check_Survey_Type](#check_survey_type)|
    |Next Node|[Check_Survey_Type](#check_survey_type)|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |npsNumberToText|String|TEXT({!$Record.NPS_Score__c})|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Assign_Force_Out_1k_Survey_Type
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Force Out 1k Survey Type|
    |Connector|[Does_NPS_need_copy](#does_nps_need_copy)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Survey_Type__c| Assign|Force Out $1k|
    
    
    
    
    ### Assign_Force_Out_5k_Survey_Type
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Force Out 5k Survey Type|
    |Connector|[Does_NPS_need_copy](#does_nps_need_copy)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Survey_Type__c| Assign|Force Out $5k|
    
    
    
    
    ### Set_Case_Resolution_Survey_Type
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Set Case Resolution Survey Type|
    |Connector|[Does_NPS_need_copy](#does_nps_need_copy)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Survey_Type__c| Assign|Case Resolution CSAT|
    
    
    
    
    ### set_nps_picklist_value
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|set nps picklist value|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.NPS__c| Assign|npsNumberToText|
    
    
    
    
    ### Check_Survey_Type
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check Survey Type|
    |Description|Translates record type -> survey type|
    |Default Connector|[Does_NPS_need_copy](#does_nps_need_copy)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Case_Resolution_CSAT (Case Resolution CSAT)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[Set_Case_Resolution_Survey_Type](#set_case_resolution_survey_type)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.RecordType.DeveloperName| Equal To|CSAT_NPS|
    |2|$Record.RecordType.DeveloperName| Equal To|CSAT|
    |3|$Record.RecordType.DeveloperName| Equal To|Five_Question_Case_CSAT|
    
    
    
    
    #### Rule Force_Out_1k (Force Out 1k)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[Assign_Force_Out_1k_Survey_Type](#assign_force_out_1k_survey_type)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.RecordType.DeveloperName| Equal To|Force_Out_Distribution_1K|
    
    
    
    
    #### Rule Force_Out_5k (Force Out 5k)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[Assign_Force_Out_5k_Survey_Type](#assign_force_out_5k_survey_type)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.RecordType.DeveloperName| Equal To|Force_Out_Distribution_5K|
    
    
    
    
    ### Does_NPS_need_copy
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Does NPS need copy|
    |Description|NPS Score copied to NPS field|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Needs_nps_sync (Needs nps sync)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[set_nps_picklist_value](#set_nps_picklist_value)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.NPS__c| Not Equal To|npsNumberToText|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

