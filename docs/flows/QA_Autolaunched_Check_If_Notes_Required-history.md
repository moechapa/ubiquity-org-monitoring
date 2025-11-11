# QA_Autolaunched_Check_If_Notes_Required history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](QA_Autolaunched_Check_If_Notes_Required-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>"]):::startClass
    click START "#general-information" "2854573693"
    
    Assign_missing_note_true[\"🟰 <em></em><br/>Assign missing note true"/]:::assignments
    click Assign_missing_note_true "#assign_missing_note_true" "1102283061"
    
    Assign_Required_Response[\"🟰 <em></em><br/>Assign Required Response"/]:::assignments
    click Assign_Required_Response "#assign_required_response" "602744218"
    
    Set_response_text_to_checked[\"🟰 <em></em><br/>Set response text to checked"/]:::assignments
    click Set_response_text_to_checked "#set_response_text_to_checked" "2194028653"
    
    Set_response_text_to_r1[\"🟰 <em></em><br/>Set response text to r1"/]:::assignments
    click Set_response_text_to_r1 "#set_response_text_to_r1" "1710214753"
    
    Set_response_text_to_r2[\"🟰 <em></em><br/>Set response text to r2"/]:::assignments
    click Set_response_text_to_r2 "#set_response_text_to_r2" "461437007"
    
    Set_response_text_to_r3[\"🟰 <em></em><br/>Set response text to r3"/]:::assignments
    click Set_response_text_to_r3 "#set_response_text_to_r3" "508303127"
    
    Set_response_text_to_r4[\"🟰 <em></em><br/>Set response text to r4"/]:::assignments
    click Set_response_text_to_r4 "#set_response_text_to_r4" "1005735786"
    
    Set_response_text_to_unchecked[\"🟰 <em></em><br/>Set response text to unchecked"/]:::assignments
    click Set_response_text_to_unchecked "#set_response_text_to_unchecked" "1062862427"
    
    Check_for_note_match{"🔀 <em></em><br/>Check for note match"}:::decisions
    click Check_for_note_match "#check_for_note_match" "3366984625"
    
    Notes_required_check{"🔀 <em></em><br/>Notes required check"}:::decisions
    click Notes_required_check "#notes_required_check" "1009034678"
    
    q_loop{{"🔁 <em></em><br/>q loop"}}:::loops
    click q_loop "#q_loop" "2636182543"
    
    get_qs[("🔍 <em></em><br/>get qs")]:::recordLookups
    click get_qs "#get_qs" "1770738158"
    
    Assign_missing_note_true --> END_Assign_missing_note_true
    Assign_Required_Response --> Check_for_note_match
    Set_response_text_to_checked --> Assign_missing_note_true
    Set_response_text_to_r1 --> Assign_missing_note_true
    Set_response_text_to_r2 --> Assign_missing_note_true
    Set_response_text_to_r3 --> Assign_missing_note_true
    Set_response_text_to_r4 --> Assign_missing_note_true
    Set_response_text_to_unchecked --> Assign_missing_note_true
    Check_for_note_match --> |"Response 1"| Set_response_text_to_r1
    Check_for_note_match --> |"Response 2"| Set_response_text_to_r2
    Check_for_note_match --> |"Response 3"| Set_response_text_to_r3
    Check_for_note_match --> |"Response 4"| Set_response_text_to_r4
    Check_for_note_match --> |"Checked"| Set_response_text_to_checked
    Check_for_note_match --> |"Unchecked"| Set_response_text_to_unchecked
    Check_for_note_match --> |"Default Outcome"| q_loop
    Notes_required_check --> |"Notes req"| Assign_Required_Response
    Notes_required_check --> |"Default Outcome"| q_loop
    q_loop --> |"For Each"|Notes_required_check
    q_loop ---> |"After Last"|END
    get_qs --> q_loop
    START -->  get_qs
    END_Assign_missing_note_true(( END )):::endClass
    
    
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
    |Process Type| Auto Launched Flow|
    |Label|QA | Autolaunched | Check If Notes Required|
    |Status|Active|
    |Description|Autolaunched flow that checks a QA's questions to see if any require a comment on the QA form.  Returns a message indicating the first question found that requires notes|
    |Environments|Default|
    |Interview Label|QA | Autolaunched | Check If Notes Required {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[get_qs](#get_qs)|
    |Next Node|[get_qs](#get_qs)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |qaQuestions|SObject|✅|⬜|⬜|QA_Question__c|<!-- -->|
    |qaRecord|SObject|⬜|✅|⬜|Quality_Assurance_QA__c|<!-- -->|
    |requiredCommentMessage|String|⬜|⬜|✅|<!-- -->|<!-- -->|
    |response4Comment|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |responseText|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Assign_missing_note_true
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign missing note true|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |requiredCommentMessage| Add|Question|
    |requiredCommentMessage| Add|q_loop.Order__c|
    |requiredCommentMessage| Add|"|
    |requiredCommentMessage| Add|q_loop.Name|
    |requiredCommentMessage| Add|" requires a comment if "|
    |requiredCommentMessage| Add|responseText|
    |requiredCommentMessage| Add|" is selected|
    
    
    
    
    ### Assign_Required_Response
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Required Response|
    |Connector|[Check_for_note_match](#check_for_note_match)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |response4Comment| Assign|q_loop.QA_Question_Info__r.Require_Comment__c|
    
    
    
    
    ### Set_response_text_to_checked
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Set response text to checked|
    |Connector|isGoTo: true<br/>targetReference: Assign_missing_note_true<br/>|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |responseText| Assign|checked|
    
    
    
    
    ### Set_response_text_to_r1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Set response text to r1|
    |Connector|[Assign_missing_note_true](#assign_missing_note_true)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |responseText| Assign|q_loop.QA_Question_Info__r.Response_1__c|
    
    
    
    
    ### Set_response_text_to_r2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Set response text to r2|
    |Connector|isGoTo: true<br/>targetReference: Assign_missing_note_true<br/>|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |responseText| Assign|q_loop.QA_Question_Info__r.Response_2__c|
    
    
    
    
    ### Set_response_text_to_r3
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Set response text to r3|
    |Connector|isGoTo: true<br/>targetReference: Assign_missing_note_true<br/>|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |responseText| Assign|q_loop.QA_Question_Info__r.Response_3__c|
    
    
    
    
    ### Set_response_text_to_r4
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Set response text to r4|
    |Connector|isGoTo: true<br/>targetReference: Assign_missing_note_true<br/>|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |responseText| Assign|q_loop.QA_Question_Info__r.Response_4__c|
    
    
    
    
    ### Set_response_text_to_unchecked
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Set response text to unchecked|
    |Connector|isGoTo: true<br/>targetReference: Assign_missing_note_true<br/>|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |responseText| Assign|unchecked|
    
    
    
    
    ### Check_for_note_match
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check for note match|
    |Default Connector|[q_loop](#q_loop)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Response_1 (Response 1)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Set_response_text_to_r1](#set_response_text_to_r1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|q_loop.Result__c| Equal To|q_loop.QA_Question_Info__r.Response_1__c|
    |2|response4Comment| Equal To|Response 1|
    
    
    
    
    #### Rule Response_2 (Response 2)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Set_response_text_to_r2](#set_response_text_to_r2)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|q_loop.Result__c| Equal To|q_loop.QA_Question_Info__r.Response_2__c|
    |2|response4Comment| Equal To|Response 2|
    
    
    
    
    #### Rule Response_3 (Response 3)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Set_response_text_to_r3](#set_response_text_to_r3)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|q_loop.Result__c| Equal To|q_loop.QA_Question_Info__r.Response_3__c|
    |2|response4Comment| Equal To|Response 3|
    
    
    
    
    #### Rule Response_4 (Response 4)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Set_response_text_to_r4](#set_response_text_to_r4)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|q_loop.Result__c| Equal To|q_loop.QA_Question_Info__r.Response_4__c|
    |2|response4Comment| Equal To|Response 4|
    
    
    
    
    #### Rule Checked (Checked)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Set_response_text_to_checked](#set_response_text_to_checked)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|q_loop.Result__c| Equal To|✅|
    |2|response4Comment| Equal To|Checked|
    
    
    
    
    #### Rule Unchecked (Unchecked)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Set_response_text_to_unchecked](#set_response_text_to_unchecked)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|q_loop.Result__c| Equal To|⬜|
    |2|response4Comment| Equal To|Unchecked|
    
    
    
    
    ### Notes_required_check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Notes required check|
    |Default Connector|[q_loop](#q_loop)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Notes_req (Notes req)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Required_Response](#assign_required_response)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|q_loop.QA_Question_Info__r.Require_Comment__c| Is Blank|⬜|
    
    
    
    
    ### q_loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|q loop|
    |Collection Reference|qaQuestions|
    |Iteration Order|Asc|
    |Next Value Connector|[Notes_required_check](#notes_required_check)|
    
    
    ### get_qs
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|QA_Question__c|
    |Label|get qs|
    |Assign Null Values If No Records Found|⬜|
    |Output Reference|qaQuestions|
    |Queried Fields|- Id<br/>- Result__c<br/>- QA_Question_Info__c<br/>- Order__c<br/>- Name<br/>|
    |Connector|[q_loop](#q_loop)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Quality_Assurance_QA__c| Equal To|qaRecord.Id|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

