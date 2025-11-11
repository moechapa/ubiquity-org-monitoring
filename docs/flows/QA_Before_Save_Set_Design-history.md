# QA_Before_Save_Set_Design history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](QA_Before_Save_Set_Design-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record Before Save</b>"]):::startClass
    click START "#general-information" "4173011155"
    
    Assign_count_of_possible_qa_design_versions[\"🟰 <em></em><br/>Assign count of possible qa design versions"/]:::assignments
    click Assign_count_of_possible_qa_design_versions "#assign_count_of_possible_qa_design_versions" "1792410005"
    
    Assign_match_to_qa_form[\"🟰 <em></em><br/>Assign match to qa form"/]:::assignments
    click Assign_match_to_qa_form "#assign_match_to_qa_form" "1507150920"
    
    Wipe_Design_from_form[\"🟰 <em></em><br/>Wipe Design from form"/]:::assignments
    click Wipe_Design_from_form "#wipe_design_from_form" "3400189945"
    
    Check_if_count_is_1{"🔀 <em></em><br/>Check if count is 1"}:::decisions
    click Check_if_count_is_1 "#check_if_count_is_1" "3754953222"
    
    Need_to_wipe_design_check{"🔀 <em></em><br/>Need to wipe design check"}:::decisions
    click Need_to_wipe_design_check "#need_to_wipe_design_check" "2034125821"
    
    Verify_record_type{"🔀 <em></em><br/>Verify record type"}:::decisions
    click Verify_record_type "#verify_record_type" "2904328830"
    
    Design_loop{{"🔁 <em></em><br/>Design loop"}}:::loops
    click Design_loop "#design_loop" "3146839978"
    
    Find_new_QA_design[("🔍 <em></em><br/>Find new QA design")]:::recordLookups
    click Find_new_QA_design "#find_new_qa_design" "3407329930"
    
    Assign_count_of_possible_qa_design_versions --> Check_if_count_is_1
    Assign_match_to_qa_form --> Design_loop
    Wipe_Design_from_form --> END_Wipe_Design_from_form
    Check_if_count_is_1 --> |"Single Match Found"| Design_loop
    Check_if_count_is_1 --> |"0 or Multi Found"| Need_to_wipe_design_check
    Need_to_wipe_design_check --> |"Design mismatches dept or type"| Wipe_Design_from_form
    Need_to_wipe_design_check --> |"Default Outcome"| END_Need_to_wipe_design_check
    Verify_record_type --> |"Is dynamic QA"| Find_new_QA_design
    Verify_record_type --> |"Default Outcome"| END_Verify_record_type
    Design_loop --> |"For Each"|Assign_match_to_qa_form
    Design_loop ---> |"After Last"|END
    Find_new_QA_design --> Assign_count_of_possible_qa_design_versions
    START -->  Verify_record_type
    END_Wipe_Design_from_form(( END )):::endClass
    END_Need_to_wipe_design_check(( END )):::endClass
    END_Verify_record_type(( END )):::endClass
    
    
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
    |Trigger Type| Record Before Save|
    |Record Trigger Type| Create And Update|
    |Label|QA | Before Save | Set Design|
    |Status|Active|
    |Description|Assigns QA Design to QA form if it finds ONE (no more no less) that matches its QA Type and Department.  Otherwise, will wipe existing design if it doesn't match type and department.|
    |Environments|Default|
    |Interview Label|QA | Before Save | Set Design {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Verify_record_type](#verify_record_type)|
    |Next Node|[Verify_record_type](#verify_record_type)|
    
    
    #### Filters (logic: **(1 OR 2 OR 3) AND 4**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|QA_Design_Version__c| Is Null|<!-- -->|
    |2|Department_Dyn__c| Is Changed|✅|
    |3|QA_Type_Dyn__c| Is Changed|✅|
    |4|Reviewer_Score__c| Is Null|<!-- -->|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |designVersionCount|Number|⬜|⬜|⬜|<!-- -->|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Assign_count_of_possible_qa_design_versions
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign count of possible qa design versions|
    |Connector|[Check_if_count_is_1](#check_if_count_is_1)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |designVersionCount| Assign Count|[Find_new_QA_design](#find_new_qa_design)|
    
    
    
    
    ### Assign_match_to_qa_form
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign match to qa form|
    |Connector|[Design_loop](#design_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.QA_Design_Version__c| Assign|Design_loop.Id|
    
    
    
    
    ### Wipe_Design_from_form
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Wipe Design from form|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.QA_Design_Version__c| Assign|<!-- -->|
    
    
    
    
    ### Check_if_count_is_1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check if count is 1|
    |Default Connector|[Need_to_wipe_design_check](#need_to_wipe_design_check)|
    |Default Connector Label|0 or Multi Found|
    
    
    #### Rule Single_Match_Found (Single Match Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Design_loop](#design_loop)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|designVersionCount| Equal To|1|
    
    
    
    
    ### Need_to_wipe_design_check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Need to wipe design check|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Design_mismatches_dept_or_type (Design mismatches dept or type)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Wipe_Design_from_form](#wipe_design_from_form)|
    |Condition Logic|1 AND (2 OR 3)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.QA_Design_Version__c| Is Blank|⬜|
    |2|$Record.QA_Design_Version__r.QA_Design__r.Department__c| Not Equal To|$Record.Department_Dyn__c|
    |3|$Record.QA_Design_Version__r.QA_Design__r.QA_Type__c| Not Equal To|$Record.QA_Type__c|
    
    
    
    
    ### Verify_record_type
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Verify record type|
    |Description|Check if this is a dynamic QA or na|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Is_dynamic_QA (Is dynamic QA)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Find_new_QA_design](#find_new_qa_design)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.RecordType.Name| Contains|Dynamic|
    
    
    
    
    ### Design_loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Design loop|
    |Collection Reference|[Find_new_QA_design](#find_new_qa_design)|
    |Iteration Order|Asc|
    |Next Value Connector|[Assign_match_to_qa_form](#assign_match_to_qa_form)|
    
    
    ### Find_new_QA_design
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|QA_Design_Version__c|
    |Label|Find new QA design|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Store Output Automatically|✅|
    |Connector|[Assign_count_of_possible_qa_design_versions](#assign_count_of_possible_qa_design_versions)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Department__c| Equal To|$Record.Department_Dyn__c|
    |2|QA_Type__c| Equal To|$Record.QA_Type_Dyn__c|
    |3|isActive__c| Equal To|✅|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

