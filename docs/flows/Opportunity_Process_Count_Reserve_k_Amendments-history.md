# Opportunity_Process_Count_Reserve_k_Amendments history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Opportunity_Process_Count_Reserve_k_Amendments-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>"]):::startClass
    click START "#general-information" "1010723733"
    
    Add_to_Counter[\"🟰 <em></em><br/>Add to Counter"/]:::assignments
    click Add_to_Counter "#add_to_counter" "525238769"
    
    Sold_this_year{"🔀 <em></em><br/>Sold this year?"}:::decisions
    click Sold_this_year "#sold_this_year" "3828763448"
    
    Amendment_Loop{{"🔁 <em></em><br/>Amendment Loop"}}:::loops
    click Amendment_Loop "#amendment_loop" "1527749685"
    
    Get_Amendment[("🔍 <em></em><br/>Get Amendment")]:::recordLookups
    click Get_Amendment "#get_amendment" "148033580"
    
    Get_Amendments_Associated_w_Plan[("🔍 <em></em><br/>Get Amendments Associated w/ Plan")]:::recordLookups
    click Get_Amendments_Associated_w_Plan "#get_amendments_associated_w_plan" "3498145922"
    
    Update_Plan[("🛠️ <em></em><br/>Update Plan")]:::recordUpdates
    click Update_Plan "#update_plan" "3290697919"
    
    Add_to_Counter --> Amendment_Loop
    Sold_this_year --> |"Yes"| Add_to_Counter
    Sold_this_year --> |"No"| Amendment_Loop
    Amendment_Loop --> |"For Each"|Sold_this_year
    Amendment_Loop ---> |"After Last"|Update_Plan
    Get_Amendment --> Get_Amendments_Associated_w_Plan
    Get_Amendments_Associated_w_Plan --> Amendment_Loop
    Update_Plan --> END_Update_Plan
    START -->  Get_Amendment
    END_Update_Plan(( END )):::endClass
    
    
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
    |Label|Opportunity | Process | Count Reserve(k) Amendments|
    |Status|⚠️ Draft|
    |Interview Label|Opportunity | Process | Count Reserve(k) Amendments {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Amendment](#get_amendment)|
    |Next Node|[Get_Amendment](#get_amendment)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |originalPlan|SObject|⬜|✅|✅|Plan__c|<!-- -->|
    |recordId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |soldThisYear|Boolean|YEAR(TODAY()) == YEAR({!Amendment_Loop.CloseDate})|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Add_to_Counter
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add to Counter|
    |Connector|[Amendment_Loop](#amendment_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |originalPlan.Amendments_This_Year__c| Add|1|
    |originalPlan.Id| Assign|Amendment_Loop.Plan__c|
    
    
    
    
    ### Sold_this_year
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Sold this year?|
    |Default Connector|[Amendment_Loop](#amendment_loop)|
    |Default Connector Label|No|
    
    
    #### Rule Yes (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Add_to_Counter](#add_to_counter)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|soldThisYear| Equal To|✅|
    
    
    
    
    ### Amendment_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Amendment Loop|
    |Collection Reference|[Get_Amendments_Associated_w_Plan](#get_amendments_associated_w_plan)|
    |Iteration Order|Asc|
    |Next Value Connector|[Sold_this_year](#sold_this_year)|
    |No More Values Connector|[Update_Plan](#update_plan)|
    
    
    ### Get_Amendment
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Opportunity|
    |Label|Get Amendment|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Get_Amendments_Associated_w_Plan](#get_amendments_associated_w_plan)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Get_Amendments_Associated_w_Plan
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Opportunity|
    |Label|Get Amendments Associated w/ Plan|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Store Output Automatically|✅|
    |Connector|[Amendment_Loop](#amendment_loop)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Plan__c| Equal To|Get_Amendment.Plan__c|
    |2|StageName| Equal To|Closed Won|
    
    
    
    
    ### Update_Plan
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Plan|
    |Input Reference|originalPlan|
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

