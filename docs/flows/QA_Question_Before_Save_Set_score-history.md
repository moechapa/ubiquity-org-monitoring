# QA_Question_Before_Save_Set_score history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](QA_Question_Before_Save_Set_score-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record Before Save</b>"]):::startClass
    click START "#general-information" "645386827"
    
    set_question_score_to_0[\"🟰 <em></em><br/>set question score to 0"/]:::assignments
    click set_question_score_to_0 "#set_question_score_to_0" "506856007"
    
    Set_question_score_to_value[\"🟰 <em></em><br/>Set question score to value"/]:::assignments
    click Set_question_score_to_value "#set_question_score_to_value" "1433400296"
    
    Set_score_to_neg_100[\"🟰 <em></em><br/>Set score to neg 100"/]:::assignments
    click Set_score_to_neg_100 "#set_score_to_neg_100" "3571370137"
    
    Set_score_to_result_1_value[\"🟰 <em></em><br/>Set score to result 1 value"/]:::assignments
    click Set_score_to_result_1_value "#set_score_to_result_1_value" "2404077535"
    
    Set_score_to_result_2_value[\"🟰 <em></em><br/>Set score to result 2 value"/]:::assignments
    click Set_score_to_result_2_value "#set_score_to_result_2_value" "4003197454"
    
    Set_score_to_result_3_value[\"🟰 <em></em><br/>Set score to result 3 value"/]:::assignments
    click Set_score_to_result_3_value "#set_score_to_result_3_value" "3405410101"
    
    Set_score_to_result_4_value[\"🟰 <em></em><br/>Set score to result 4 value"/]:::assignments
    click Set_score_to_result_4_value "#set_score_to_result_4_value" "2617741947"
    
    Autofail_check{"🔀 <em></em><br/>Autofail check"}:::decisions
    click Autofail_check "#autofail_check" "1233834266"
    
    Checkbox_Result_Split{"🔀 <em></em><br/>Checkbox Result Split"}:::decisions
    click Checkbox_Result_Split "#checkbox_result_split" "4067724394"
    
    Response_Split{"🔀 <em></em><br/>Response Split"}:::decisions
    click Response_Split "#response_split" "702093143"
    
    Type_Split{"🔀 <em></em><br/>Type Split"}:::decisions
    click Type_Split "#type_split" "1895787748"
    
    set_question_score_to_0 --> END_set_question_score_to_0
    Set_question_score_to_value --> END_Set_question_score_to_value
    Set_score_to_neg_100 --> END_Set_score_to_neg_100
    Set_score_to_result_1_value --> END_Set_score_to_result_1_value
    Set_score_to_result_2_value --> END_Set_score_to_result_2_value
    Set_score_to_result_3_value --> END_Set_score_to_result_3_value
    Set_score_to_result_4_value --> END_Set_score_to_result_4_value
    Autofail_check --> |"Is autofail"| Set_score_to_neg_100
    Autofail_check --> |"Default Outcome"| Set_question_score_to_value
    Checkbox_Result_Split --> |"true"| Autofail_check
    Checkbox_Result_Split --> |"false"| set_question_score_to_0
    Response_Split --> |"Result 1"| Set_score_to_result_1_value
    Response_Split --> |"Result 2"| Set_score_to_result_2_value
    Response_Split --> |"Result 3"| Set_score_to_result_3_value
    Response_Split --> |"Result 4"| Set_score_to_result_4_value
    Response_Split --> |"Default Outcome"| END_Response_Split
    Type_Split --> |"Standard aka Picklist"| Response_Split
    Type_Split --> |"Checkbox"| Checkbox_Result_Split
    Type_Split --> |"Default Outcome"| END_Type_Split
    START -->  Type_Split
    END_set_question_score_to_0(( END )):::endClass
    END_Set_question_score_to_value(( END )):::endClass
    END_Set_score_to_neg_100(( END )):::endClass
    END_Set_score_to_result_1_value(( END )):::endClass
    END_Set_score_to_result_2_value(( END )):::endClass
    END_Set_score_to_result_3_value(( END )):::endClass
    END_Set_score_to_result_4_value(( END )):::endClass
    END_Response_Split(( END )):::endClass
    END_Type_Split(( END )):::endClass
    
    
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
    |Object|QA_Question__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record Before Save|
    |Record Trigger Type| Create And Update|
    |Label|QA Question | Before Save | Set score|
    |Status|Active|
    |Description|Updated to add autofail checkbox support<br/><br/>Calculates score using the result field and question value from parent info|
    |Environments|Default|
    |Interview Label|QA Question | Before Save | Set score {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Type_Split](#type_split)|
    |Next Node|[Type_Split](#type_split)|
    
    
    #### Filters (logic: **or**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Result__c| Is Null|<!-- -->|
    |2|Type__c| Equal To|Checkbox|
    
    
    ## Flow Nodes Details
    
    ### set_question_score_to_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|set question score to 0|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Score__c| Assign|numberValue: 0<br/>|
    
    
    
    
    ### Set_question_score_to_value
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Set question score to value|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Score__c| Assign|$Record.QA_Question_Info__r.Score_Value__c|
    
    
    
    
    ### Set_score_to_neg_100
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Set score to neg 100|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Score__c| Assign|-100|
    
    
    
    
    ### Set_score_to_result_1_value
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Set score to result 1 value|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Score__c| Assign|$Record.QA_Question_Info__r.Response_1_Score__c|
    
    
    
    
    ### Set_score_to_result_2_value
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Set score to result 2 value|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Score__c| Assign|$Record.QA_Question_Info__r.Response_2_Score__c|
    
    
    
    
    ### Set_score_to_result_3_value
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Set score to result 3 value|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Score__c| Assign|$Record.QA_Question_Info__r.Response_3_Score__c|
    
    
    
    
    ### Set_score_to_result_4_value
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Set score to result 4 value|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Score__c| Assign|$Record.QA_Question_Info__r.Response_4_Score__c|
    
    
    
    
    ### Autofail_check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Autofail check|
    |Description|If this is an autofail checkbox, set score to -100, otherwise use value from q info|
    |Default Connector|[Set_question_score_to_value](#set_question_score_to_value)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Is_autofail (Is autofail)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Set_score_to_neg_100](#set_score_to_neg_100)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.QA_Question_Info__r.Pass_Fail__c| Equal To|✅|
    
    
    
    
    ### Checkbox_Result_Split
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Checkbox Result Split|
    |Default Connector|[set_question_score_to_0](#set_question_score_to_0)|
    |Default Connector Label|⬜|
    
    
    #### Rule true (true)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Autofail_check](#autofail_check)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Result__c| Equal To|✅|
    
    
    
    
    ### Response_Split
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Response Split|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Result_1 (Result 1)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Set_score_to_result_1_value](#set_score_to_result_1_value)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Result__c| Equal To|$Record.QA_Question_Info__r.Response_1__c|
    
    
    
    
    #### Rule Result_2 (Result 2)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Set_score_to_result_2_value](#set_score_to_result_2_value)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Result__c| Equal To|$Record.QA_Question_Info__r.Response_2__c|
    
    
    
    
    #### Rule Result_3 (Result 3)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Set_score_to_result_3_value](#set_score_to_result_3_value)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Result__c| Equal To|$Record.QA_Question_Info__r.Response_3__c|
    
    
    
    
    #### Rule Result_4 (Result 4)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Set_score_to_result_4_value](#set_score_to_result_4_value)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Result__c| Equal To|$Record.QA_Question_Info__r.Response_4__c|
    
    
    
    
    ### Type_Split
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Type Split|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Standard_aka_Picklist (Standard aka Picklist)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Response_Split](#response_split)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.QA_Question_Info__r.Type__c| Equal To|Standard|
    
    
    
    
    #### Rule Checkbox (Checkbox)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Checkbox_Result_Split](#checkbox_result_split)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.QA_Question_Info__r.Type__c| Equal To|Checkbox|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

