# Plan_Scheduled_Create_Monthly_Health_Score history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Plan_Scheduled_Create_Monthly_Health_Score-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Scheduled</b>"]):::startClass
    click START "#general-information" "3669509045"
    
    Assign_Health_Score_Values[\"🟰 <em></em><br/>Assign Health Score Values"/]:::assignments
    click Assign_Health_Score_Values "#assign_health_score_values" "28793494"
    
    Assign_percent_change[\"🟰 <em></em><br/>Assign percent change"/]:::assignments
    click Assign_percent_change "#assign_percent_change" "1013629254"
    
    Check_for_last_month_score{"🔀 <em></em><br/>Check for last month score"}:::decisions
    click Check_for_last_month_score "#check_for_last_month_score" "2290590376"
    
    First_of_the_month_check{"🔀 <em></em><br/>First of the month check"}:::decisions
    click First_of_the_month_check "#first_of_the_month_check" "1088272437"
    
    Create_HS_Record[("➕ <em></em><br/>Create HS Record")]:::recordCreates
    click Create_HS_Record "#create_hs_record" "1992649151"
    
    Grab_last_month_health_score[("🔍 <em></em><br/>Grab last month health score")]:::recordLookups
    click Grab_last_month_health_score "#grab_last_month_health_score" "2560954587"
    
    Assign_Health_Score_Values --> Check_for_last_month_score
    Assign_percent_change --> Create_HS_Record
    Check_for_last_month_score --> |"We got a score"| Assign_percent_change
    Check_for_last_month_score --> |"Default Outcome"| Create_HS_Record
    First_of_the_month_check --> |"Generate HM"| Grab_last_month_health_score
    First_of_the_month_check --> |"Default Outcome"| END_First_of_the_month_check
    Create_HS_Record --> END_Create_HS_Record
    Grab_last_month_health_score --> Assign_Health_Score_Values
    START -->  First_of_the_month_check
    END_First_of_the_month_check(( END )):::endClass
    END_Create_HS_Record(( END )):::endClass
    
    
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
    |Object|Plan__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Scheduled|
    |Label|Plan | Scheduled | Create Monthly Health Score|
    |Status|Obsolete|
    |Description|One time run~|
    |Environments|Default|
    |Interview Label|Plan | Scheduled | Create Monthly Health Score {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[First_of_the_month_check](#first_of_the_month_check)|
    |Next Node|[First_of_the_month_check](#first_of_the_month_check)|
    
    
    #### Schedules
    
    |Frequency|Start Date|Start Time|
    |:-- |:--:|:--: |
    |Once|Nov 1, 2024|08:00|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Status__c| Not Equal To|Inactive|
    |2|RecordTypeId| Equal To|01237000000TgnVAAS|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |newHealthScoreRecord|SObject|⬜|⬜|⬜|Client_Health_Score__c|<!-- -->|
    |prevMonthScore|Number|⬜|⬜|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |firstOfMonth|Boolean|DAY(TODAY()) = 1|<!-- -->|
    |lastMonth1st|Date|ADDMONTHS(TODAY(),-1)|The first of last month, for grabbing prev health score|
    |percentDiff|Number|(({!newHealthScoreRecord.Client_Health_Score__c} / {!prevMonthScore}) - 1) * 100|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Assign_Health_Score_Values
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Health Score Values|
    |Connector|[Check_for_last_month_score](#check_for_last_month_score)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |newHealthScoreRecord.Date_Recorded__c| Assign|$Flow.CurrentDate|
    |newHealthScoreRecord.Billing_Impact__c| Assign|$Record.HM_Billing_Score__c|
    |newHealthScoreRecord.CSAT_Impact__c| Assign|$Record.HM_CSAT_Score__c|
    |newHealthScoreRecord.NPS_Impact__c| Assign|$Record.HM_NPS_Score__c|
    |newHealthScoreRecord.Payroll_Impact__c| Assign|$Record.HM_Payroll_Score__c|
    |newHealthScoreRecord.Review_Impact__c| Assign|$Record.HM_Review_Score__c|
    |newHealthScoreRecord.Client_Health_Score__c| Assign|$Record.Client_Health_Score__c|
    |newHealthScoreRecord.Plan_Status__c| Assign|$Record.Status__c|
    |newHealthScoreRecord.Record_Event__c| Assign|Monthly Update|
    |newHealthScoreRecord.Plan__c| Assign|$Record.Id|
    
    
    
    
    ### Assign_percent_change
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign percent change|
    |Connector|[Create_HS_Record](#create_hs_record)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |newHealthScoreRecord.Percent_Change__c| Assign|percentDiff|
    
    
    
    
    ### Check_for_last_month_score
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check for last month score|
    |Default Connector|[Create_HS_Record](#create_hs_record)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule We_got_a_score (We got a score)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_percent_change](#assign_percent_change)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|prevMonthScore| Is Null|⬜|
    
    
    
    
    ### First_of_the_month_check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|First of the month check|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Generate_HM (Generate HM)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Grab_last_month_health_score](#grab_last_month_health_score)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|firstOfMonth| Equal To|✅|
    
    
    
    
    ### Create_HS_Record
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Label|Create HS Record|
    |Input Reference|newHealthScoreRecord|
    
    
    ### Grab_last_month_health_score
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Client_Health_Score__c|
    |Label|Grab last month health score|
    |Assign Null Values If No Records Found|✅|
    |Output Assignments|assignToReference: prevMonthScore<br/>field: Client_Health_Score__c<br/>|
    |Sort Field|CreatedDate|
    |Sort Order|Desc|
    |Connector|[Assign_Health_Score_Values](#assign_health_score_values)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Plan__c| Equal To|$Record.Id|
    |2|CreatedDate| Greater Than Or Equal To|lastMonth1st|
    |3|CreatedDate| Less Than|$Flow.CurrentDate|
    |4|Record_Event__c| Equal To|Monthly Update|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

