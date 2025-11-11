# Opportunity_After_Trigger_Update_Forecast history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Opportunity_After_Trigger_Update_Forecast-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "2653624767"
    
    Add_to_update_collection[\"🟰 <em></em><br/>Add to update collection"/]:::assignments
    click Add_to_update_collection "#add_to_update_collection" "2851865754"
    
    Check_if_there_are_forecasts_to_update{"🔀 <em></em><br/>Check if there are forecasts to update"}:::decisions
    click Check_if_there_are_forecasts_to_update "#check_if_there_are_forecasts_to_update" "2963442555"
    
    Check_if_updates_needed{"🔀 <em></em><br/>Check if updates needed"}:::decisions
    click Check_if_updates_needed "#check_if_updates_needed" "4033658993"
    
    Forecast_Calc_Loop{{"🔁 <em></em><br/>Forecast Calc Loop"}}:::loops
    click Forecast_Calc_Loop "#forecast_calc_loop" "1093187167"
    
    Get_current_and_prior_forecast[("🔍 <em></em><br/>Get current and prior forecast")]:::recordLookups
    click Get_current_and_prior_forecast "#get_current_and_prior_forecast" "3779873860"
    
    Update_forecast_collection[("🛠️ <em></em><br/>Update forecast collection")]:::recordUpdates
    click Update_forecast_collection "#update_forecast_collection" "553227383"
    
    Calc_Forecasts[["🔗 <em>Subflow</em><br/>Calc Forecasts"]]:::subflows
    click Calc_Forecasts "#calc_forecasts" "196027538"
    
    Add_to_update_collection --> Forecast_Calc_Loop
    Check_if_there_are_forecasts_to_update --> |"Yummers"| Update_forecast_collection
    Check_if_there_are_forecasts_to_update --> |"Default Outcome"| END_Check_if_there_are_forecasts_to_update
    Check_if_updates_needed --> |"Forecast needs update"| Add_to_update_collection
    Check_if_updates_needed --> |"Default Outcome"| Forecast_Calc_Loop
    Forecast_Calc_Loop --> |"For Each"|Calc_Forecasts
    Forecast_Calc_Loop ---> |"After Last"|Check_if_there_are_forecasts_to_update
    Get_current_and_prior_forecast --> Forecast_Calc_Loop
    Update_forecast_collection --> END_Update_forecast_collection
    START -->  Get_current_and_prior_forecast
    Calc_Forecasts --> Check_if_updates_needed
    END_Check_if_there_are_forecasts_to_update(( END )):::endClass
    END_Update_forecast_collection(( END )):::endClass
    
    
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
    |Object|Opportunity|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create And Update|
    |Label|Opportunity | After Trigger | Update Forecast|
    |Status|Active|
    |Filter Formula|(ISPICKVAL({!$Record.StageName},"Closed Won") || ISPICKVAL({!$Record__Prior.StageName},"Closed Won"))<br/>&&<br/>({!$Record.Forecast__c} != {!$Record__Prior.Forecast__c}<br/>||<br/>ISCHANGED({!$Record.StageName}))|
    |Description|If an opp is newly closed won, or the forecast is changed on a closed won opp, this recalculates and updates actual values for any affected forecasts.<br/><br/>Redesigned Sept 2024|
    |Environments|Default|
    |Interview Label|Opportunity | After Trigger | Update Forecast {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_current_and_prior_forecast](#get_current_and_prior_forecast)|
    |Next Node|[Get_current_and_prior_forecast](#get_current_and_prior_forecast)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |forecasts2Update|SObject|✅|⬜|⬜|Forecast__c|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Add_to_update_collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add to update collection|
    |Connector|[Forecast_Calc_Loop](#forecast_calc_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |forecasts2Update| Add|Calc_Forecasts.forecastRecord|
    
    
    
    
    ### Check_if_there_are_forecasts_to_update
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check if there are forecasts to update|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yummers (Yummers)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_forecast_collection](#update_forecast_collection)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|forecasts2Update| Is Empty|⬜|
    
    
    
    
    ### Check_if_updates_needed
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check if updates needed|
    |Default Connector|[Forecast_Calc_Loop](#forecast_calc_loop)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Forecast_needs_update (Forecast needs update)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Add_to_update_collection](#add_to_update_collection)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Calc_Forecasts.needsUpdate| Equal To|✅|
    
    
    
    
    ### Forecast_Calc_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Forecast Calc Loop|
    |Collection Reference|[Get_current_and_prior_forecast](#get_current_and_prior_forecast)|
    |Iteration Order|Asc|
    |Next Value Connector|[Calc_Forecasts](#calc_forecasts)|
    |No More Values Connector|[Check_if_there_are_forecasts_to_update](#check_if_there_are_forecasts_to_update)|
    
    
    ### Get_current_and_prior_forecast
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Forecast__c|
    |Label|Get current and prior forecast|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Store Output Automatically|✅|
    |Connector|[Forecast_Calc_Loop](#forecast_calc_loop)|
    
    
    #### Filters (logic: **or**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$Record.Forecast__c|
    |2|Id| Equal To|$Record__Prior.Forecast__c|
    
    
    
    
    ### Update_forecast_collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update forecast collection|
    |Input Reference|forecasts2Update|
    
    
    ### Calc_Forecasts
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Subflow|
    |Label|Calc Forecasts|
    |Flow Name|Forecast_Autolaunched_Calculate_Actuals|
    |Store Output Automatically|✅|
    |Connector|[Check_if_updates_needed](#check_if_updates_needed)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |<!-- -->|[Forecast_Calc_Loop](#forecast_calc_loop)|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

