# Forecast_Scheduled_ONE_TIME_Sync_Actual_Numbers3 history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Forecast_Scheduled_ONE_TIME_Sync_Actual_Numbers3-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Scheduled</b>"]):::startClass
    click START "#general-information" "1704057019"
    
    Add_Opp_Amount[\"🟰 <em></em><br/>Add Opp Amount"/]:::assignments
    click Add_Opp_Amount "#add_opp_amount" "948707356"
    
    Add_Opp_to_Null_Forecast[\"🟰 <em></em><br/>Add Opp to Null Forecast"/]:::assignments
    click Add_Opp_to_Null_Forecast "#add_opp_to_null_forecast" "2447272703"
    
    Mark_Opp_for_Reset[\"🟰 <em></em><br/>Mark Opp for Reset"/]:::assignments
    click Mark_Opp_for_Reset "#mark_opp_for_reset" "2562186622"
    
    Forecast_Needs_Zeroing{"🔀 <em></em><br/>Forecast Needs Zeroing"}:::decisions
    click Forecast_Needs_Zeroing "#forecast_needs_zeroing" "2464413577"
    
    Forecast_Totals_Check{"🔀 <em></em><br/>Forecast Totals Check"}:::decisions
    click Forecast_Totals_Check "#forecast_totals_check" "2485097785"
    
    Opp_in_correct_forecast{"🔀 <em></em><br/>Opp in correct forecast"}:::decisions
    click Opp_in_correct_forecast "#opp_in_correct_forecast" "4068554284"
    
    Opps_Found_Check{"🔀 <em></em><br/>Opps Found Check"}:::decisions
    click Opps_Found_Check "#opps_found_check" "3150040531"
    
    Opps_to_reset_check{"🔀 <em></em><br/>Opps to reset check"}:::decisions
    click Opps_to_reset_check "#opps_to_reset_check" "1158644330"
    
    Addition_Loop{{"🔁 <em></em><br/>Addition Loop"}}:::loops
    click Addition_Loop "#addition_loop" "534611605"
    
    Grab_related_ops[("🔍 <em></em><br/>Grab related ops")]:::recordLookups
    click Grab_related_ops "#grab_related_ops" "2202234963"
    
    Reset_Opp_Forecasts[("🛠️ <em></em><br/>Reset Opp Forecasts")]:::recordUpdates
    click Reset_Opp_Forecasts "#reset_opp_forecasts" "4185989256"
    
    Update_Amount[("🛠️ <em></em><br/>Update Amount")]:::recordUpdates
    click Update_Amount "#update_amount" "4164600567"
    
    Update_Both[("🛠️ <em></em><br/>Update Both")]:::recordUpdates
    click Update_Both "#update_both" "1322010454"
    
    Update_Plan_Count[("🛠️ <em></em><br/>Update Plan Count")]:::recordUpdates
    click Update_Plan_Count "#update_plan_count" "1068861126"
    
    Zero_Out_Forecast[("🛠️ <em></em><br/>Zero Out Forecast")]:::recordUpdates
    click Zero_Out_Forecast "#zero_out_forecast" "2082579736"
    
    Add_Opp_Amount --> Addition_Loop
    Add_Opp_to_Null_Forecast --> Addition_Loop
    Mark_Opp_for_Reset --> Add_Opp_to_Null_Forecast
    Forecast_Needs_Zeroing --> |"Needs Zero"| Zero_Out_Forecast
    Forecast_Needs_Zeroing --> |"Default Outcome"| END_Forecast_Needs_Zeroing
    Forecast_Totals_Check --> |"Both Updates Needed"| Update_Both
    Forecast_Totals_Check --> |"Amount Update Needed"| Update_Amount
    Forecast_Totals_Check --> |"Plan Count Update Needed"| Update_Plan_Count
    Forecast_Totals_Check --> |"Default Outcome"| END_Forecast_Totals_Check
    Opp_in_correct_forecast --> |"Forecast Match"| Add_Opp_Amount
    Opp_in_correct_forecast --> |"Mismatch"| Mark_Opp_for_Reset
    Opps_Found_Check --> |"Opps In Collection"| Addition_Loop
    Opps_Found_Check --> |"Default Outcome"| Forecast_Needs_Zeroing
    Opps_to_reset_check --> |"Opps Needing Reset"| Reset_Opp_Forecasts
    Opps_to_reset_check --> |"Default Outcome"| Forecast_Totals_Check
    Addition_Loop --> |"For Each"|Opp_in_correct_forecast
    Addition_Loop ---> |"After Last"|Opps_to_reset_check
    Grab_related_ops --> Opps_Found_Check
    Reset_Opp_Forecasts --> Forecast_Totals_Check
    Update_Amount --> END_Update_Amount
    Update_Both --> END_Update_Both
    Update_Plan_Count --> END_Update_Plan_Count
    Zero_Out_Forecast --> END_Zero_Out_Forecast
    START -->  Grab_related_ops
    END_Forecast_Needs_Zeroing(( END )):::endClass
    END_Forecast_Totals_Check(( END )):::endClass
    END_Update_Amount(( END )):::endClass
    END_Update_Both(( END )):::endClass
    END_Update_Plan_Count(( END )):::endClass
    END_Zero_Out_Forecast(( END )):::endClass
    
    
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
    |Object|Forecast__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Scheduled|
    |Label|Forecast | Scheduled | ONE TIME Sync Actual Numbers3|
    |Status|Obsolete|
    |Description|:^(|
    |Environments|Default|
    |Interview Label|Forecast | Scheduled | ONE TIME Sync Actual Numbers3 {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Grab_related_ops](#grab_related_ops)|
    |Next Node|[Grab_related_ops](#grab_related_ops)|
    
    
    #### Schedules
    
    |Frequency|Start Date|Start Time|
    |:-- |:--:|:--: |
    |Once|May 14, 2024|09:15|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Name| Contains|Unforecast|
    |2|Start_Date__c| Greater Than Or Equal To|dateValue: '2024-04-01'<br/>|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |ChannelLeadSourceText|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |forecastChannelLSDtext|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |NeedForecastReset|SObject|✅|⬜|⬜|Opportunity|<!-- -->|
    |OppRecs|SObject|✅|⬜|⬜|Opportunity|<!-- -->|
    |TotalAmount|Currency|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |TotalPlans|Number|⬜|⬜|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |productTypeBucket|String|IF(<br/>ISPICKVAL({!Addition_Loop.Product_Type__c}, "Upgrade")||ISPICKVAL({!Addition_Loop.Product_Type__c}, "Plan Amendment")||ISPICKVAL({!Addition_Loop.Product_Type__c}, "Add-On Product")||ISPICKVAL({!Addition_Loop.Product_Type__c}, "Product Downgrade"),"Expansion",<br/>IF(ISPICKVAL({!Addition_Loop.Product_Type__c},"PEP"),"401(k)",TEXT({!Addition_Loop.Product_Type__c})))|<!-- -->|
    |TodayLess6mo|Date|ADDMONTHS(TODAY(),-6)|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Add_Opp_Amount
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add Opp Amount|
    |Connector|[Addition_Loop](#addition_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |TotalAmount| Add|Addition_Loop.Amount|
    |TotalPlans| Add|1|
    
    
    
    
    ### Add_Opp_to_Null_Forecast
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add Opp to Null Forecast|
    |Connector|[Addition_Loop](#addition_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |NeedForecastReset| Add|[Addition_Loop](#addition_loop)|
    
    
    
    
    ### Mark_Opp_for_Reset
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Mark Opp for Reset|
    |Connector|[Add_Opp_to_Null_Forecast](#add_opp_to_null_forecast)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Addition_Loop.Forecast__c| Assign|<!-- -->|
    
    
    
    
    ### Forecast_Needs_Zeroing
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Forecast Needs Zeroing|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Needs_Zero (Needs Zero)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Zero_Out_Forecast](#zero_out_forecast)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Actual_Revenue__c| Not Equal To|numberValue: 0<br/>|
    |2|$Record.Actual_Plan_Sales__c| Not Equal To|numberValue: 0<br/>|
    
    
    
    
    ### Forecast_Totals_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Forecast Totals Check|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Both_Updates_Needed (Both Updates Needed)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Both](#update_both)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|TotalAmount| Not Equal To|$Record.Actual_Revenue__c|
    |2|TotalPlans| Not Equal To|$Record.Actual_Plan_Sales__c|
    
    
    
    
    #### Rule Amount_Update_Needed (Amount Update Needed)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Amount](#update_amount)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|TotalAmount| Not Equal To|$Record.Actual_Revenue__c|
    
    
    
    
    #### Rule Plan_Count_Update_Needed (Plan Count Update Needed)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Plan_Count](#update_plan_count)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|TotalPlans| Not Equal To|$Record.Actual_Plan_Sales__c|
    
    
    
    
    ### Opp_in_correct_forecast
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Opp in correct forecast|
    |Default Connector|[Mark_Opp_for_Reset](#mark_opp_for_reset)|
    |Default Connector Label|Mismatch|
    
    
    #### Rule Forecast_Match (Forecast Match)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Add_Opp_Amount](#add_opp_amount)|
    |Condition Logic|2 AND 3 AND (1 OR (4 AND 5) OR (6 AND 7))|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|ChannelLeadSourceText| Contains|Addition_Loop.LeadSource|
    |2|Addition_Loop.CloseDate| Less Than Or Equal To|$Record.End_Date__c|
    |3|Addition_Loop.CloseDate| Greater Than Or Equal To|$Record.Start_Date__c|
    |4|productTypeBucket| Equal To|Expansion|
    |5|$Record.Forecast_Plan__r.Product__c| Equal To|Expansion|
    |6|$Record.Forecast_Plan__r.Forecast_Channel__r.Partner_Referral_Source__c| Equal To|✅|
    |7|forecastChannelLSDtext| Contains|Addition_Loop.LeadSourceDetail__c|
    
    
    
    
    ### Opps_Found_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Opps Found Check|
    |Default Connector|[Forecast_Needs_Zeroing](#forecast_needs_zeroing)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Opps_In_Collection (Opps In Collection)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Addition_Loop](#addition_loop)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|OppRecs| Is Null|⬜|
    
    
    
    
    ### Opps_to_reset_check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Opps to reset check|
    |Default Connector|[Forecast_Totals_Check](#forecast_totals_check)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Opps_Needing_Reset (Opps Needing Reset)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Reset_Opp_Forecasts](#reset_opp_forecasts)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|NeedForecastReset| Is Null|⬜|
    
    
    
    
    ### Addition_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Addition Loop|
    |Collection Reference|OppRecs|
    |Iteration Order|Asc|
    |Next Value Connector|[Opp_in_correct_forecast](#opp_in_correct_forecast)|
    |No More Values Connector|[Opps_to_reset_check](#opps_to_reset_check)|
    
    
    ### Grab_related_ops
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Opportunity|
    |Label|Grab related ops|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|OppRecs|
    |Queried Fields|- Id<br/>- Amount<br/>- LeadSource<br/>- CloseDate<br/>- Product_Type__c<br/>|
    |Connector|[Opps_Found_Check](#opps_found_check)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Forecast__c| Equal To|$Record.Id|
    |2|StageName| Equal To|Closed Won|
    
    
    
    
    ### Reset_Opp_Forecasts
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Reset Opp Forecasts|
    |Input Reference|NeedForecastReset|
    |Connector|[Forecast_Totals_Check](#forecast_totals_check)|
    
    
    ### Update_Amount
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Amount|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Actual_Revenue__c|TotalAmount|
    
    
    
    
    ### Update_Both
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Both|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Actual_Plan_Sales__c|TotalPlans|
    |Actual_Revenue__c|TotalAmount|
    
    
    
    
    ### Update_Plan_Count
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Plan Count|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Actual_Plan_Sales__c|TotalPlans|
    
    
    
    
    ### Zero_Out_Forecast
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Zero Out Forecast|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Actual_Plan_Sales__c|numberValue: 0<br/>|
    |Actual_Revenue__c|numberValue: 0<br/>|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

