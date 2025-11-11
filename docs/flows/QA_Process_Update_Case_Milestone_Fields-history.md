# QA_Process_Update_Case_Milestone_Fields history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](QA_Process_Update_Case_Milestone_Fields-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>"]):::startClass
    click START "#general-information" "2012336496"
    
    Closure_N_A[\"🟰 <em></em><br/>Closure = N/A"/]:::assignments
    click Closure_N_A "#closure_n_a" "3512015836"
    
    ClosureFailed[\"🟰 <em></em><br/>Closure Failed"/]:::assignments
    click ClosureFailed "#closurefailed" "119458662"
    
    ClosureMet[\"🟰 <em></em><br/>Closure Met"/]:::assignments
    click ClosureMet "#closuremet" "199827206"
    
    First_ResponseFailed[\"🟰 <em></em><br/>First Response Failed"/]:::assignments
    click First_ResponseFailed "#first_responsefailed" "2648581010"
    
    First_ResponseMet[\"🟰 <em></em><br/>First Response Met"/]:::assignments
    click First_ResponseMet "#first_responsemet" "3958011443"
    
    First_Touch_N_A[\"🟰 <em></em><br/>First Touch = N/A"/]:::assignments
    click First_Touch_N_A "#first_touch_n_a" "3779763956"
    
    Case_Available{"🔀 <em></em><br/>Case Available"}:::decisions
    click Case_Available "#case_available" "1619195553"
    
    Closure_Not_Found{"🔀 <em></em><br/>Closure Not Found"}:::decisions
    click Closure_Not_Found "#closure_not_found" "612055949"
    
    First_Response_Not_Found{"🔀 <em></em><br/>First Response Not Found"}:::decisions
    click First_Response_Not_Found "#first_response_not_found" "1266103048"
    
    Milestone_Type{"🔀 <em></em><br/>Milestone Type"}:::decisions
    click Milestone_Type "#milestone_type" "880988378"
    
    Evaluate_Milestones{{"🔁 <em></em><br/>Evaluate Milestones"}}:::loops
    click Evaluate_Milestones "#evaluate_milestones" "2174009532"
    
    Get_Case_Milestone[("🔍 <em></em><br/>Get Case Milestone")]:::recordLookups
    click Get_Case_Milestone "#get_case_milestone" "740017908"
    
    Get_QA[("🔍 <em></em><br/>Get QA")]:::recordLookups
    click Get_QA "#get_qa" "2325906584"
    
    Update_QA_Record[("🛠️ <em></em><br/>Update QA Record")]:::recordUpdates
    click Update_QA_Record "#update_qa_record" "2613481583"
    
    Closure_N_A --> Update_QA_Record
    ClosureFailed --> Evaluate_Milestones
    ClosureMet --> Evaluate_Milestones
    First_ResponseFailed --> Evaluate_Milestones
    First_ResponseMet --> Evaluate_Milestones
    First_Touch_N_A --> Closure_Not_Found
    Case_Available --> |"Case is Available"| Get_Case_Milestone
    Case_Available --> |"Default Outcome"| END_Case_Available
    Closure_Not_Found --> |"Not Found"| Closure_N_A
    Closure_Not_Found --> |"Found"| Update_QA_Record
    First_Response_Not_Found --> |"Not Found"| First_Touch_N_A
    First_Response_Not_Found --> |"Found"| Closure_Not_Found
    Milestone_Type --> |"First Response Met"| First_ResponseMet
    Milestone_Type --> |"First Response Failed"| First_ResponseFailed
    Milestone_Type --> |"Closure Met"| ClosureMet
    Milestone_Type --> |"Closure Failed"| ClosureFailed
    Milestone_Type --> |"Default Outcome"| END_Milestone_Type
    Evaluate_Milestones --> |"For Each"|Milestone_Type
    Evaluate_Milestones ---> |"After Last"|First_Response_Not_Found
    Get_Case_Milestone --> Evaluate_Milestones
    Get_QA --> Case_Available
    Update_QA_Record --> END_Update_QA_Record
    START -->  Get_QA
    END_Case_Available(( END )):::endClass
    END_Milestone_Type(( END )):::endClass
    END_Update_QA_Record(( END )):::endClass
    
    
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
    |Label|QA | Process | Update Case Milestone Fields|
    |Status|Obsolete|
    |Interview Label|QA | Process | Update Case Milestone Fields {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_QA](#get_qa)|
    |Next Node|[Get_QA](#get_qa)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |caseMilestones|SObject|✅|✅|✅|CaseMilestone|<!-- -->|
    |recordId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Closure_N_A
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Closure = N/A|
    |Connector|[Update_QA_Record](#update_qa_record)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Get_QA.Closure_SLA__c| Assign|N/A|
    
    
    
    
    ### ClosureFailed
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Closure Failed|
    |Connector|[Evaluate_Milestones](#evaluate_milestones)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Get_QA.Closure_SLA__c| Assign|No|
    
    
    
    
    ### ClosureMet
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Closure Met|
    |Connector|[Evaluate_Milestones](#evaluate_milestones)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Get_QA.Closure_SLA__c| Assign|Yes|
    
    
    
    
    ### First_ResponseFailed
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|First Response Failed|
    |Connector|[Evaluate_Milestones](#evaluate_milestones)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Get_QA.First_Touch_SLA__c| Assign|No|
    
    
    
    
    ### First_ResponseMet
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|First Response Met|
    |Connector|[Evaluate_Milestones](#evaluate_milestones)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Get_QA.First_Touch_SLA__c| Assign|Yes|
    
    
    
    
    ### First_Touch_N_A
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|First Touch = N/A|
    |Connector|[Closure_Not_Found](#closure_not_found)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Get_QA.First_Touch_SLA__c| Assign|N/A|
    
    
    
    
    ### Case_Available
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Case Available|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Case_is_Available (Case is Available)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Case_Milestone](#get_case_milestone)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_QA.Case__c| Is Null|⬜|
    
    
    
    
    ### Closure_Not_Found
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Closure Not Found|
    |Default Connector|[Update_QA_Record](#update_qa_record)|
    |Default Connector Label|Found|
    
    
    #### Rule Not_Found_0 (Not Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Closure_N_A](#closure_n_a)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_QA.Closure_SLA__c| Is Null|✅|
    
    
    
    
    ### First_Response_Not_Found
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|First Response Not Found|
    |Default Connector|[Closure_Not_Found](#closure_not_found)|
    |Default Connector Label|Found|
    
    
    #### Rule Not_Found (Not Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[First_Touch_N_A](#first_touch_n_a)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_QA.First_Touch_SLA__c| Is Null|✅|
    
    
    
    
    ### Milestone_Type
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Milestone Type|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule First_Response_Met (First Response Met)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[First_ResponseMet](#first_responsemet)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Evaluate_Milestones.Milestone.MasterLabel| Equal To|First Response|
    |2|Evaluate_Milestones.IsViolated| Equal To|⬜|
    
    
    
    
    #### Rule First_Response_Failed (First Response Failed)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[First_ResponseFailed](#first_responsefailed)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Evaluate_Milestones.Milestone.MasterLabel| Equal To|First_Response_Met|
    |2|Evaluate_Milestones.IsViolated| Equal To|✅|
    
    
    
    
    #### Rule Closure (Closure Met)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[ClosureMet](#closuremet)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Evaluate_Milestones.Milestone.MasterLabel| Equal To|Closure|
    |2|Evaluate_Milestones.IsViolated| Equal To|⬜|
    
    
    
    
    #### Rule Closure_Failed (Closure Failed)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[ClosureFailed](#closurefailed)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Evaluate_Milestones.Milestone.MasterLabel| Equal To|Closure|
    |2|Evaluate_Milestones.IsViolated| Equal To|✅|
    
    
    
    
    ### Evaluate_Milestones
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Evaluate Milestones|
    |Collection Reference|caseMilestones|
    |Iteration Order|Asc|
    |Next Value Connector|[Milestone_Type](#milestone_type)|
    |No More Values Connector|[First_Response_Not_Found](#first_response_not_found)|
    
    
    ### Get_Case_Milestone
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|CaseMilestone|
    |Label|Get Case Milestone|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|caseMilestones|
    |Queried Fields|Id|
    |Connector|[Evaluate_Milestones](#evaluate_milestones)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|CaseId| Equal To|Get_QA.Case__c|
    
    
    
    
    ### Get_QA
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Quality_Assurance_QA__c|
    |Label|Get QA|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Case_Available](#case_available)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Update_QA_Record
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update QA Record|
    |Input Reference|[Get_QA](#get_qa)|
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

