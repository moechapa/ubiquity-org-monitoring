# Forecast_Plan_After_Trigger_Generate_Forecasts history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Forecast_Plan_After_Trigger_Generate_Forecasts-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "335470461"
    
    Add_to_Forecast_Collection[\"🟰 <em></em><br/>Add to Forecast Collection"/]:::assignments
    click Add_to_Forecast_Collection "#add_to_forecast_collection" "3984007481"
    
    Assign_Forecast_Values[\"🟰 <em></em><br/>Assign Forecast Values"/]:::assignments
    click Assign_Forecast_Values "#assign_forecast_values" "2089197847"
    
    Filter_Size_Check[\"🟰 <em></em><br/>Filter Size Check"/]:::assignments
    click Filter_Size_Check "#filter_size_check" "2498978388"
    
    ForecastColl_Size_Check[\"🟰 <em></em><br/>ForecastCollection Size Check"/]:::assignments
    click ForecastColl_Size_Check "#forecastcoll_size_check" "1726826757"
    
    Mark_Redundant_Forecast[\"🟰 <em></em><br/>Mark Redundant Forecast"/]:::assignments
    click Mark_Redundant_Forecast "#mark_redundant_forecast" "2216897980"
    
    Remove_Forecasts[\"🟰 <em></em><br/>Remove Forecasts"/]:::assignments
    click Remove_Forecasts "#remove_forecasts" "1118926492"
    
    Filter_Old_Forecast{{"🔽 <em>Collection Filter</em><br/>Filter Old Forecast"}}:::collectionProcessors
    click Filter_Old_Forecast "#filter_old_forecast" "2594214319"
    
    Are_There_Forecasts_to_Define{"🔀 <em></em><br/>Are There Forecasts to Define"}:::decisions
    click Are_There_Forecasts_to_Define "#are_there_forecasts_to_define" "632319251"
    
    Do_Old_Forecasts_Exist{"🔀 <em></em><br/>Do Old Forecasts Exist"}:::decisions
    click Do_Old_Forecasts_Exist "#do_old_forecasts_exist" "2915552861"
    
    Forecasts_to_Remove_Check{"🔀 <em></em><br/>Forecasts to Remove Check"}:::decisions
    click Forecasts_to_Remove_Check "#forecasts_to_remove_check" "2606941427"
    
    Match_Found_Check{"🔀 <em></em><br/>Match Found Check"}:::decisions
    click Match_Found_Check "#match_found_check" "2157612939"
    
    Validate_Dates{"🔀 <em></em><br/>Validate Dates"}:::decisions
    click Validate_Dates "#validate_dates" "1841209807"
    
    Comparative_Loop{{"🔁 <em></em><br/>Comparative Loop"}}:::loops
    click Comparative_Loop "#comparative_loop" "979273419"
    
    Create_Forecasts[("➕ <em></em><br/>Create Forecasts")]:::recordCreates
    click Create_Forecasts "#create_forecasts" "3916200023"
    
    Get_Existing_Forecasts[("🔍 <em></em><br/>Get Existing Forecasts")]:::recordLookups
    click Get_Existing_Forecasts "#get_existing_forecasts" "339695246"
    
    Add_to_Forecast_Collection --> Are_There_Forecasts_to_Define
    Assign_Forecast_Values --> Add_to_Forecast_Collection
    Filter_Size_Check --> Match_Found_Check
    ForecastColl_Size_Check --> Do_Old_Forecasts_Exist
    Mark_Redundant_Forecast --> Comparative_Loop
    Remove_Forecasts --> ForecastColl_Size_Check
    Filter_Old_Forecast --> Filter_Size_Check
    Are_There_Forecasts_to_Define --> |"Forecasts Queued"| Assign_Forecast_Values
    Are_There_Forecasts_to_Define --> |"Default Outcome"| Do_Old_Forecasts_Exist
    Do_Old_Forecasts_Exist --> |"Need Redundancy Check"| Comparative_Loop
    Do_Old_Forecasts_Exist --> |"Default Outcome"| Create_Forecasts
    Forecasts_to_Remove_Check --> |"Remove From Collection"| Remove_Forecasts
    Forecasts_to_Remove_Check --> |"Default Outcome"| ForecastColl_Size_Check
    Match_Found_Check --> |"Needs Removal"| Mark_Redundant_Forecast
    Match_Found_Check --> |"Default Outcome"| Comparative_Loop
    Validate_Dates --> |"Dates Valid"| Get_Existing_Forecasts
    Validate_Dates --> |"Default Outcome"| END_Validate_Dates
    Comparative_Loop --> |"For Each"|Filter_Old_Forecast
    Comparative_Loop ---> |"After Last"|Forecasts_to_Remove_Check
    Create_Forecasts --> END_Create_Forecasts
    Get_Existing_Forecasts --> Are_There_Forecasts_to_Define
    START -->  Validate_Dates
    END_Validate_Dates(( END )):::endClass
    END_Create_Forecasts(( END )):::endClass
    
    
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
    |Object|Forecast_Plan__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create And Update|
    |Label|Forecast Plan | After Trigger | Generate Forecasts|
    |Status|Active|
    |Filter Formula|(ISCHANGED({!$Record.Forecast_Start_Date__c}) || ISCHANGED({!$Record.Forecast_End_Date__c}) || ISNEW())<br/>&&<br/>NOT(ISNULL({!$Record.Forecast_Start_Date__c})) && NOT(ISNULL({!$Record.Forecast_End_Date__c}))|
    |Environments|Default|
    |Interview Label|Forecast Plan {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Validate_Dates](#validate_dates)|
    |Next Node|[Validate_Dates](#validate_dates)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |currentItem_Filter_Old_Forecast|SObject|⬜|⬜|⬜|Forecast__c|<!-- -->|
    |DateVar|Date|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |ForecastCollection|SObject|✅|⬜|⬜|Forecast__c|<!-- -->|
    |ForecastCollSize|Number|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |ForecastCounter|Number|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |ForecastRec|SObject|⬜|⬜|⬜|Forecast__c|<!-- -->|
    |Forecasts2Remove|SObject|✅|⬜|⬜|Forecast__c|<!-- -->|
    |LoopCounter|Number|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |OldForecastCollection|SObject|✅|⬜|⬜|Forecast__c|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |DateVarMinusMonth|Date|ADDMONTHS({!DateVar},-1)|<!-- -->|
    |ForecastNameCalc|String|CASE(<br/>MONTH( {!DateVar} ),<br/>1, "January",<br/>2, "February",<br/>3, "March",<br/>4, "April",<br/>5, "May",<br/>6, "June",<br/>7, "July",<br/>8, "August",<br/>9, "September",<br/>10, "October",<br/>11, "November",<br/>"December"<br/>) + " " +{!$Record.Name}|<!-- -->|
    |MonthFirstDay|Date|DATE(YEAR({!DateVar}),MONTH({!DateVar}),1)|<!-- -->|
    |MonthLastDay|Date|IF( MONTH( {!DateVar} ) = 12, <br/>DATE( YEAR( {!DateVar} ), 12, 31 ), <br/>DATE( YEAR( {!DateVar} ), MONTH( {!DateVar} ) + 1, 1) - 1)|<!-- -->|
    |NumofMonths|Number|((YEAR({!$Record.Forecast_End_Date__c}) - YEAR({!$Record.Forecast_Start_Date__c})) * 12)<br/>+ (MONTH({!$Record.Forecast_End_Date__c}) - MONTH({!$Record.Forecast_Start_Date__c}))<br/>+ 1|<!-- -->|
    |RecordStartDay|Number|DAY({!$Record.Forecast_Start_Date__c})|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Add_to_Forecast_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add to Forecast Collection|
    |Connector|[Are_There_Forecasts_to_Define](#are_there_forecasts_to_define)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |ForecastCollection| Add|ForecastRec|
    |ForecastCounter| Subtract|1|
    |DateVar| Assign|DateVarMinusMonth|
    
    
    
    
    ### Assign_Forecast_Values
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Forecast Values|
    |Connector|[Add_to_Forecast_Collection](#add_to_forecast_collection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |ForecastRec.Start_Date__c| Assign|MonthFirstDay|
    |ForecastRec.End_Date__c| Assign|MonthLastDay|
    |ForecastRec.Name| Assign|ForecastNameCalc|
    |ForecastRec.Forecast_Plan__c| Assign|$Record.Id|
    
    
    
    
    ### Filter_Size_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Filter Size Check|
    |Connector|[Match_Found_Check](#match_found_check)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |LoopCounter| Assign Count|[Filter_Old_Forecast](#filter_old_forecast)|
    
    
    
    
    ### ForecastColl_Size_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|ForecastCollection Size Check|
    |Connector|[Do_Old_Forecasts_Exist](#do_old_forecasts_exist)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |ForecastCollSize| Assign Count|ForecastCollection|
    
    
    
    
    ### Mark_Redundant_Forecast
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Mark Redundant Forecast|
    |Connector|[Comparative_Loop](#comparative_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Forecasts2Remove| Add|[Comparative_Loop](#comparative_loop)|
    
    
    
    
    ### Remove_Forecasts
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Remove Forecasts|
    |Connector|[ForecastColl_Size_Check](#forecastcoll_size_check)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |ForecastCollection| Remove All|Forecasts2Remove|
    
    
    
    
    ### Filter_Old_Forecast
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Collection Processor|
    |Label|Filter Old Forecast|
    |Element Subtype|FilterCollectionProcessor|
    |Assign Next Value To Reference|currentItem_Filter_Old_Forecast|
    |Collection Processor Type|FilterCollectionProcessor|
    |Collection Reference|OldForecastCollection|
    |Connector|[Filter_Size_Check](#filter_size_check)|
    |Condition Logic|or|
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|currentItem_Filter_Old_Forecast.Start_Date__c| Equal To|Comparative_Loop.Start_Date__c|
    |2|currentItem_Filter_Old_Forecast.End_Date__c| Equal To|Comparative_Loop.End_Date__c|
    
    
    
    
    ### Are_There_Forecasts_to_Define
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Are There Forecasts to Define|
    |Default Connector|[Do_Old_Forecasts_Exist](#do_old_forecasts_exist)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Forecasts_Queued (Forecasts Queued)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Forecast_Values](#assign_forecast_values)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|ForecastCounter| Greater Than Or Equal To|1|
    
    
    
    
    ### Do_Old_Forecasts_Exist
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Do Old Forecasts Exist|
    |Default Connector|[Create_Forecasts](#create_forecasts)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Need_Redundancy_Check (Need Redundancy Check)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Comparative_Loop](#comparative_loop)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|OldForecastCollection| Is Null|⬜|
    |2|[Forecasts_to_Remove_Check](#forecasts_to_remove_check)| Was Visited|⬜|
    
    
    
    
    #### Rule No_New_Forecasts (No New Forecasts)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|ForecastCollection| Is Null|✅|
    |2|ForecastCollSize| Equal To|numberValue: 0<br/>|
    
    
    
    
    ### Forecasts_to_Remove_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Forecasts to Remove Check|
    |Default Connector|[ForecastColl_Size_Check](#forecastcoll_size_check)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Remove_From_Collection (Remove From Collection)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Remove_Forecasts](#remove_forecasts)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Forecasts2Remove| Is Null|⬜|
    
    
    
    
    ### Match_Found_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Match Found Check|
    |Default Connector|[Comparative_Loop](#comparative_loop)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Needs_Removal (Needs Removal)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Mark_Redundant_Forecast](#mark_redundant_forecast)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|LoopCounter| Greater Than Or Equal To|1|
    
    
    
    
    ### Validate_Dates
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Validate Dates|
    |Description|Checking to verify that the first date of the plan is the first of a month AND the last day of the plan is the last day of that month.|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Dates_Valid (Dates Valid)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Existing_Forecasts](#get_existing_forecasts)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|DateVar| Equal To|MonthLastDay|
    |2|RecordStartDay| Equal To|1|
    
    
    
    
    ### Comparative_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Comparative Loop|
    |Collection Reference|ForecastCollection|
    |Iteration Order|Asc|
    |Next Value Connector|[Filter_Old_Forecast](#filter_old_forecast)|
    |No More Values Connector|[Forecasts_to_Remove_Check](#forecasts_to_remove_check)|
    
    
    ### Create_Forecasts
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Label|Create Forecasts|
    |Input Reference|ForecastCollection|
    
    
    ### Get_Existing_Forecasts
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Forecast__c|
    |Label|Get Existing Forecasts|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|OldForecastCollection|
    |Queried Fields|- Id<br/>- Start_Date__c<br/>- End_Date__c<br/>- Name<br/>|
    |Connector|[Are_There_Forecasts_to_Define](#are_there_forecasts_to_define)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Forecast_Plan__c| Equal To|$Record.Id|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

