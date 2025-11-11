# Case_After_Save_Stamp_BH_calculations history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Case_After_Save_Stamp_BH_calculations-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "203112189"
    
    Calc_Business_Hours_Diff_Resolution("⚙️ <em></em><br/>Calc Business Hours Diff - Resolution"):::actionCalls
    click Calc_Business_Hours_Diff_Resolution "#calc_business_hours_diff_resolution" "1247227669"
    
    Calc_Business_Hours_Diff_Response("⚙️ <em></em><br/>Calc Business Hours Diff - Response"):::actionCalls
    click Calc_Business_Hours_Diff_Response "#calc_business_hours_diff_response" "1941451183"
    
    assign_time_to_close[\"🟰 <em></em><br/>assign time to close"/]:::assignments
    click assign_time_to_close "#assign_time_to_close" "1984203799"
    
    Assign_time_to_respond[\"🟰 <em></em><br/>Assign time to respond"/]:::assignments
    click Assign_time_to_respond "#assign_time_to_respond" "3114728368"
    
    Check_if_need_close_calc{"🔀 <em></em><br/>Check if need close calc"}:::decisions
    click Check_if_need_close_calc "#check_if_need_close_calc" "2048022038"
    
    Check_if_need_FR_calc{"🔀 <em></em><br/>Check if need FR calc"}:::decisions
    click Check_if_need_FR_calc "#check_if_need_fr_calc" "1581119888"
    
    Were_we_successful{"🔀 <em></em><br/>Were we successful"}:::decisions
    click Were_we_successful "#were_we_successful" "128267780"
    
    Update_Case[("🛠️ <em></em><br/>Update Case")]:::recordUpdates
    click Update_Case "#update_case" "1133305715"
    
    Calc_Business_Hours_Diff_Resolution --> assign_time_to_close
    Calc_Business_Hours_Diff_Response --> Assign_time_to_respond
    assign_time_to_close --> Were_we_successful
    Assign_time_to_respond --> Check_if_need_close_calc
    Check_if_need_close_calc --> |"Needs Close diff stamp"| Calc_Business_Hours_Diff_Resolution
    Check_if_need_close_calc --> |"Default Outcome"| Were_we_successful
    Check_if_need_FR_calc --> |"Needs FR diff stamp"| Calc_Business_Hours_Diff_Response
    Check_if_need_FR_calc --> |"Default Outcome"| Check_if_need_close_calc
    Were_we_successful --> |"Stamp new values"| Update_Case
    Were_we_successful --> |"Default Outcome"| END_Were_we_successful
    Update_Case --> END_Update_Case
    START -->  Check_if_need_FR_calc
    END_Were_we_successful(( END )):::endClass
    END_Update_Case(( END )):::endClass
    
    
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
    |Object|Case|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create And Update|
    |Label|Case | After Save | Stamp BH calculations|
    |Status|Active|
    |Description|Used to stamp time to respond and time to resolve.  Uses business hours on case or default bh if none exist|
    |Environments|Default|
    |Interview Label|Case | After Save | Stamp BH calculations {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Check_if_need_FR_calc](#check_if_need_fr_calc)|
    |Next Node|[Check_if_need_FR_calc](#check_if_need_fr_calc)|
    
    
    #### Filters (logic: **(1 AND (4 OR 5)) OR (2 AND 3)**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Time_to_Resolve__c| Equal To|<!-- -->|
    |2|Time_to_Respond__c| Equal To|<!-- -->|
    |3|First_Response__c| Not Equal To|<!-- -->|
    |4|Original_Close_Date_Time__c| Not Equal To|<!-- -->|
    |5|ClosedDate| Not Equal To|<!-- -->|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |closeHours|Number|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |responseHours|Number|⬜|⬜|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |closeDateVar|DateTime|IF(ISNULL({!$Record.Original_Close_Date_Time__c}),{!$Record.ClosedDate},{!$Record.Original_Close_Date_Time__c})|Original closedate if one exists, otherwise standard closedate|
    
    
    ## Flow Nodes Details
    
    ### Calc_Business_Hours_Diff_Resolution
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Calc Business Hours Diff - Resolution|
    |Action Type|Apex|
    |Action Name|[BusinessHoursDatetimeDelta](../apex/BusinessHoursDatetimeDelta.md)|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|BusinessHoursDatetimeDelta|
    |Output Parameters|assignToReference: closeHours<br/>name: dateTimeDifference<br/>|
    |Business Hours Id (input)|$Record.BusinessHoursId|
    |Date Time1 (input)|$Record.CreatedDate|
    |Date Time2 (input)|closeDateVar|
    |Connector|[assign_time_to_close](#assign_time_to_close)|
    
    
    ### Calc_Business_Hours_Diff_Response
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Calc Business Hours Diff - Response|
    |Action Type|Apex|
    |Action Name|[BusinessHoursDatetimeDelta](../apex/BusinessHoursDatetimeDelta.md)|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|BusinessHoursDatetimeDelta|
    |Output Parameters|assignToReference: responseHours<br/>name: dateTimeDifference<br/>|
    |Business Hours Id (input)|$Record.BusinessHoursId|
    |Date Time1 (input)|$Record.CreatedDate|
    |Date Time2 (input)|$Record.First_Response__c|
    |Connector|[Assign_time_to_respond](#assign_time_to_respond)|
    
    
    ### assign_time_to_close
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|assign time to close|
    |Connector|[Were_we_successful](#were_we_successful)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Time_to_Resolve__c| Assign|closeHours|
    
    
    
    
    ### Assign_time_to_respond
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign time to respond|
    |Connector|[Check_if_need_close_calc](#check_if_need_close_calc)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Time_to_Respond__c| Assign|responseHours|
    
    
    
    
    ### Check_if_need_close_calc
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check if need close calc|
    |Default Connector|[Were_we_successful](#were_we_successful)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Needs_Close_diff_stamp (Needs Close diff stamp)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Calc_Business_Hours_Diff_Resolution](#calc_business_hours_diff_resolution)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|closeDateVar| Is Null|⬜|
    |2|$Record.Time_to_Resolve__c| Is Null|✅|
    
    
    
    
    ### Check_if_need_FR_calc
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check if need FR calc|
    |Default Connector|[Check_if_need_close_calc](#check_if_need_close_calc)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Needs_FR_diff_stamp (Needs FR diff stamp)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Calc_Business_Hours_Diff_Response](#calc_business_hours_diff_response)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.First_Response__c| Is Null|⬜|
    |2|$Record.Time_to_Respond__c| Is Null|✅|
    
    
    
    
    ### Were_we_successful
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Were we successful|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Stamp_new_values (Stamp new values)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Case](#update_case)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|closeHours| Is Null|⬜|
    |2|responseHours| Is Null|⬜|
    
    
    
    
    ### Update_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Case|
    |Input Reference|$Record|
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

