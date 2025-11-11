# QA_After_Save_Create_and_Delete_Questions history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](QA_After_Save_Create_and_Delete_Questions-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "2025606664"
    
    Do_we_have_a_design{"🔀 <em></em><br/>Do we have a design"}:::decisions
    click Do_we_have_a_design "#do_we_have_a_design" "3531399894"
    
    Info_found_check{"🔀 <em></em><br/>Info found check"}:::decisions
    click Info_found_check "#info_found_check" "1019467640"
    
    old_questions_found_check{"🔀 <em></em><br/>old questions found check"}:::decisions
    click old_questions_found_check "#old_questions_found_check" "1236741680"
    
    Refresh_needed_check{"🔀 <em></em><br/>Refresh needed check"}:::decisions
    click Refresh_needed_check "#refresh_needed_check" "4125021062"
    
    Create_new_Questions[("➕ <em></em><br/>Create new Questions")]:::recordCreates
    click Create_new_Questions "#create_new_questions" "500509110"
    
    Create_QA_Refresh_Event[("➕ <em></em><br/>Create QA Refresh Event")]:::recordCreates
    click Create_QA_Refresh_Event "#create_qa_refresh_event" "3087034846"
    
    Delete_old_questions[("🗑️ <em></em><br/>Delete old questions")]:::recordDeletes
    click Delete_old_questions "#delete_old_questions" "559940495"
    
    Get_existing_questions[("🔍 <em></em><br/>Get existing questions")]:::recordLookups
    click Get_existing_questions "#get_existing_questions" "1492366993"
    
    Get_new_question_info[("🔍 <em></em><br/>Get new question info")]:::recordLookups
    click Get_new_question_info "#get_new_question_info" "1143223124"
    
    Transform_info_to_questions{{"♻️ <em></em><br/>Transform info to questions"}}:::transforms
    click Transform_info_to_questions "#transform_info_to_questions" "2981472907"
    
    Do_we_have_a_design --> |"Design on record"| Get_new_question_info
    Do_we_have_a_design --> |"Default Outcome"| Refresh_needed_check
    Info_found_check --> |"New question info found"| Transform_info_to_questions
    Info_found_check --> |"Default Outcome"| Refresh_needed_check
    old_questions_found_check --> |"Questions need delete"| Delete_old_questions
    old_questions_found_check --> |"Default Outcome"| Do_we_have_a_design
    Refresh_needed_check --> |"Needs refresh event"| Create_QA_Refresh_Event
    Refresh_needed_check --> |"Default Outcome"| END_Refresh_needed_check
    Create_new_Questions --> Refresh_needed_check
    Create_QA_Refresh_Event --> END_Create_QA_Refresh_Event
    Delete_old_questions --> Do_we_have_a_design
    Get_existing_questions --> old_questions_found_check
    Get_new_question_info --> Info_found_check
    START -->  Get_existing_questions
    Transform_info_to_questions --> Create_new_Questions
    END_Refresh_needed_check(( END )):::endClass
    END_Create_QA_Refresh_Event(( END )):::endClass
    
    
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
    |Object|Quality_Assurance_QA__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create And Update|
    |Label|QA | After Save | Create and Delete Questions|
    |Status|Active|
    |Filter Formula|{!$Record.QA_Design_Version__c}!={!$Record__Prior.QA_Design_Version__c}|
    |Description|Creates questions for QA form when a new design is selected, and deletes questions when a design is deselected.|
    |Environments|Default|
    |Interview Label|Quality Assurance QA {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_existing_questions](#get_existing_questions)|
    |Next Node|[Get_existing_questions](#get_existing_questions)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |questionVar|SObject|⬜|⬜|⬜|QA_Question__c|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Do_we_have_a_design
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Do we have a design|
    |Default Connector|[Refresh_needed_check](#refresh_needed_check)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Design_on_record (Design on record)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_new_question_info](#get_new_question_info)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.QA_Design_Version__c| Is Blank|⬜|
    
    
    
    
    ### Info_found_check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Info found check|
    |Default Connector|[Refresh_needed_check](#refresh_needed_check)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule New_question_info_found (New question info found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Transform_info_to_questions](#transform_info_to_questions)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|[Get_new_question_info](#get_new_question_info)| Is Empty|⬜|
    
    
    
    
    ### old_questions_found_check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|old questions found check|
    |Default Connector|[Do_we_have_a_design](#do_we_have_a_design)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Questions_need_delete (Questions need delete)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Delete_old_questions](#delete_old_questions)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|[Get_existing_questions](#get_existing_questions)| Is Empty|⬜|
    
    
    
    
    ### Refresh_needed_check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Refresh needed check|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Needs_refresh_event (Needs refresh event)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Create_QA_Refresh_Event](#create_qa_refresh_event)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|[Create_new_Questions](#create_new_questions)| Was Visited|✅|
    |2|[Delete_old_questions](#delete_old_questions)| Was Visited|✅|
    
    
    
    
    ### Create_new_Questions
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Label|Create new Questions|
    |Input Reference|[Transform_info_to_questions](#transform_info_to_questions)|
    |Connector|[Refresh_needed_check](#refresh_needed_check)|
    
    
    ### Create_QA_Refresh_Event
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|QA_Component_Refresh__e|
    |Label|Create QA Refresh Event|
    |Description|Publishes event to signal QA component to refresh|
    |Store Output Automatically|✅|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |QA_Form_Id__c|$Record.Id|
    
    
    
    
    ### Delete_old_questions
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Delete|
    |Label|Delete old questions|
    |Input Reference|[Get_existing_questions](#get_existing_questions)|
    |Connector|[Do_we_have_a_design](#do_we_have_a_design)|
    
    
    ### Get_existing_questions
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|QA_Question__c|
    |Label|Get existing questions|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Queried Fields|Id|
    |Store Output Automatically|✅|
    |Connector|[old_questions_found_check](#old_questions_found_check)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Quality_Assurance_QA__c| Equal To|$Record.Id|
    
    
    
    
    ### Get_new_question_info
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|QA_Question_Info__c|
    |Label|Get new question info|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Queried Fields|- Id<br/>- Question_Prompt__c<br/>|
    |Store Output Automatically|✅|
    |Connector|[Info_found_check](#info_found_check)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|QA_Design__c| Equal To|$Record.QA_Design_Version__c|
    
    
    
    
    ### Transform_info_to_questions
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Transform|
    |Label|Transform info to questions|
    |Data Type|SObject|
    |Object Type|QA_Question__c|
    |Is Collection|✅|
    |Scale|0|
    |Store Output Automatically|✅|
    |Connector|[Create_new_Questions](#create_new_questions)|
    
    
    #### Transform actions
    
    |Transform Type|Value|Output Field Api Name|
    |:-- |:--:|:--  |
    |Map|Get_new_question_info[$EachItem].Question_Prompt__c|Name|
    |Map|Get_new_question_info[$EachItem].Id|QA_Question_Info__c|
    |Map|$Record.Id|Quality_Assurance_QA__c|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

