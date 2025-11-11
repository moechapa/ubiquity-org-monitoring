# Implementation_ONE_TIME_Send_Welcome_Email history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Implementation_ONE_TIME_Send_Welcome_Email-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Scheduled</b>"]):::startClass
    click START "#general-information" "1455260678"
    
    Send_General_Reminder("📧 <em></em><br/>Send General Reminder"):::actionCalls
    click Send_General_Reminder "#send_general_reminder" "1883808108"
    
    Send_General_Simply_Reminder("📧 <em></em><br/>Send General Simply Reminder"):::actionCalls
    click Send_General_Simply_Reminder "#send_general_simply_reminder" "1742020957"
    
    Simply_1st_Call_Follow_Up("📧 <em></em><br/>Simply 1st Call Follow Up"):::actionCalls
    click Simply_1st_Call_Follow_Up "#simply_1st_call_follow_up" "3507283403"
    
    Simply_2nd_Call_Follow_Up("📧 <em></em><br/>Simply 2nd Call Follow Up"):::actionCalls
    click Simply_2nd_Call_Follow_Up "#simply_2nd_call_follow_up" "3697636211"
    
    Simply_3rd_Call_Follow_Up("📧 <em></em><br/>Simply 3rd Call Follow Up"):::actionCalls
    click Simply_3rd_Call_Follow_Up "#simply_3rd_call_follow_up" "120930747"
    
    X1st_Call_Follow_Up("📧 <em></em><br/>1st Call Follow Up"):::actionCalls
    click X1st_Call_Follow_Up "#x1st_call_follow_up" "2281403613"
    
    X2nd_Call_Follow_Up("📧 <em></em><br/>2nd Call Follow Up"):::actionCalls
    click X2nd_Call_Follow_Up "#x2nd_call_follow_up" "1670515742"
    
    X3rd_Call_Follow_Up("📧 <em></em><br/>3rd Call Follow Up"):::actionCalls
    click X3rd_Call_Follow_Up "#x3rd_call_follow_up" "2477224520"
    
    Call_Not_Scheduled{"🔀 <em></em><br/>Call Not Scheduled"}:::decisions
    click Call_Not_Scheduled "#call_not_scheduled" "761784791"
    
    Client_Verification_0{"🔀 <em></em><br/>Client Verification"}:::decisions
    click Client_Verification_0 "#client_verification_0" "3984129881"
    
    Get_AC[("🔍 <em></em><br/>Get AC")]:::recordLookups
    click Get_AC "#get_ac" "3653757651"
    
    Send_General_Reminder --> END_Send_General_Reminder
    Send_General_Simply_Reminder --> END_Send_General_Simply_Reminder
    Simply_1st_Call_Follow_Up --> END_Simply_1st_Call_Follow_Up
    Simply_2nd_Call_Follow_Up --> END_Simply_2nd_Call_Follow_Up
    Simply_3rd_Call_Follow_Up --> END_Simply_3rd_Call_Follow_Up
    X1st_Call_Follow_Up --> END_X1st_Call_Follow_Up
    X2nd_Call_Follow_Up --> END_X2nd_Call_Follow_Up
    X3rd_Call_Follow_Up --> END_X3rd_Call_Follow_Up
    Call_Not_Scheduled --> |"1st Call Not Scheduled GEN"| Send_General_Reminder
    Call_Not_Scheduled --> |"Simply 1st Call Not Scheduled GEN"| Send_General_Simply_Reminder
    Call_Not_Scheduled --> |"1st Call Not Scheduled"| X1st_Call_Follow_Up
    Call_Not_Scheduled --> |"2nd Call Not Scheduled"| X2nd_Call_Follow_Up
    Call_Not_Scheduled --> |"3rd Call Not Scheduled"| X3rd_Call_Follow_Up
    Call_Not_Scheduled --> |"Simply 1st Call Not Scheduled"| Simply_1st_Call_Follow_Up
    Call_Not_Scheduled --> |"Simply 2nd Call Not Scheduled"| Simply_2nd_Call_Follow_Up
    Call_Not_Scheduled --> |"Simply 3rd Call Not Scheduled"| Simply_3rd_Call_Follow_Up
    Call_Not_Scheduled --> |"Default Outcome"| END_Call_Not_Scheduled
    Client_Verification_0 --> |"Client Found"| Call_Not_Scheduled
    Client_Verification_0 --> |"Client Missing"| END_Client_Verification_0
    Get_AC --> Client_Verification_0
    START -->  Get_AC
    END_Send_General_Reminder(( END )):::endClass
    END_Send_General_Simply_Reminder(( END )):::endClass
    END_Simply_1st_Call_Follow_Up(( END )):::endClass
    END_Simply_2nd_Call_Follow_Up(( END )):::endClass
    END_Simply_3rd_Call_Follow_Up(( END )):::endClass
    END_X1st_Call_Follow_Up(( END )):::endClass
    END_X2nd_Call_Follow_Up(( END )):::endClass
    END_X3rd_Call_Follow_Up(( END )):::endClass
    END_Call_Not_Scheduled(( END )):::endClass
    END_Client_Verification_0(( END )):::endClass
    
    
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
    |Object|Implementation__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Scheduled|
    |Label|Implementation | Scheduled | Send Reminders|
    |Status|Active|
    |Environments|Default|
    |Interview Label|Implementation | ONE TIME | Send Welcome Email {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_AC](#get_ac)|
    |Next Node|[Get_AC](#get_ac)|
    
    
    #### Schedules
    
    |Frequency|Start Date|Start Time|
    |:-- |:--:|:--: |
    |Weekly|Jul 11, 2022|10:00|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Implementation_Status__c| Equal To|In Progress|
    |2|Suppress_All_Emails__c| Equal To|⬜|
    |3|Census_Self_Service__c| Equal To|⬜|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |aCon|SObject|⬜|✅|⬜|Associated_Contact__c|<!-- -->|
    |completeTasks|SObject|✅|✅|⬜|Project_Task__c|<!-- -->|
    |openProjTasks|SObject|✅|✅|⬜|Project_Task__c|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |now|DateTime|NOW()|<!-- -->|
    |today|Date|TODAY()|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Send_General_Reminder
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send General Reminder|
    |Action Type|Email Alert|
    |Action Name|Associated_Contact__c.X1st_Call_Not_Scheduled_GEN|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Associated_Contact__c.X1st_Call_Not_Scheduled_GEN|
    | SObject Row Id (input)|aCon.Id|
    
    
    ### Send_General_Simply_Reminder
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send General Simply Reminder|
    |Action Type|Email Alert|
    |Action Name|Associated_Contact__c.X1st_Call_Not_Scheduled_Simply_GEN|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Associated_Contact__c.X1st_Call_Not_Scheduled_Simply_GEN|
    | SObject Row Id (input)|aCon.Id|
    
    
    ### Simply_1st_Call_Follow_Up
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Simply 1st Call Follow Up|
    |Action Type|Email Alert|
    |Action Name|Associated_Contact__c.X1st_Call_Not_Scheduled_Simply|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Associated_Contact__c.X1st_Call_Not_Scheduled_Simply|
    | SObject Row Id (input)|aCon.Id|
    
    
    ### Simply_2nd_Call_Follow_Up
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Simply 2nd Call Follow Up|
    |Action Type|Email Alert|
    |Action Name|Associated_Contact__c.X2nd_Call_Not_Scheduled_Simply|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Associated_Contact__c.X2nd_Call_Not_Scheduled_Simply|
    | SObject Row Id (input)|aCon.Id|
    
    
    ### Simply_3rd_Call_Follow_Up
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Simply 3rd Call Follow Up|
    |Action Type|Email Alert|
    |Action Name|Associated_Contact__c.X3rd_Call_Not_Scheduled_Simply|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Associated_Contact__c.X3rd_Call_Not_Scheduled_Simply|
    | SObject Row Id (input)|aCon.Id|
    
    
    ### X1st_Call_Follow_Up
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|1st Call Follow Up|
    |Action Type|Email Alert|
    |Action Name|Associated_Contact__c.X1st_Call_Not_Scheduled|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Associated_Contact__c.X1st_Call_Not_Scheduled|
    | SObject Row Id (input)|aCon.Id|
    
    
    ### X2nd_Call_Follow_Up
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|2nd Call Follow Up|
    |Action Type|Email Alert|
    |Action Name|Associated_Contact__c.X2nd_Call_Not_Scheduled|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Associated_Contact__c.X2nd_Call_Not_Scheduled|
    | SObject Row Id (input)|aCon.Id|
    
    
    ### X3rd_Call_Follow_Up
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|3rd Call Follow Up|
    |Action Type|Email Alert|
    |Action Name|Associated_Contact__c.X3rd_Call_Not_Scheduled|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Associated_Contact__c.X3rd_Call_Not_Scheduled|
    | SObject Row Id (input)|aCon.Id|
    
    
    ### Call_Not_Scheduled
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Call Not Scheduled|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Sallus_Catch (Sallus Catch)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Brand__c| Equal To|Sallus Retirement|
    
    
    
    
    #### Rule X1st_Call_Not_Scheduled_GEN (1st Call Not Scheduled GEN)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Send_General_Reminder](#send_general_reminder)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.OwnerId| Starts With|00G|
    |2|$Record.Brand__c| Not Equal To|Simply Retirement|
    |3|$Record.Implementation_Steps__c| Equal To|Introductory Tasks|
    |4|$Record.Intro_Call_Complete__c| Equal To|⬜|
    |5|$Record.Introductory_Call_Date_Time__c| Is Null|✅|
    
    
    
    
    #### Rule Simply_1st_Call_Not_Scheduled_GEN (Simply 1st Call Not Scheduled GEN)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Send_General_Simply_Reminder](#send_general_simply_reminder)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.OwnerId| Starts With|00G|
    |2|$Record.Brand__c| Equal To|Simply Retirement|
    |3|$Record.Implementation_Steps__c| Equal To|Introductory Tasks|
    |4|$Record.Intro_Call_Complete__c| Equal To|⬜|
    |5|$Record.Introductory_Call_Date_Time__c| Is Null|✅|
    
    
    
    
    #### Rule X1st_Call_Not_Scheduled (1st Call Not Scheduled)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[X1st_Call_Follow_Up](#x1st_call_follow_up)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Implementation_Steps__c| Equal To|Introductory Tasks|
    |2|$Record.Intro_Call_Complete__c| Equal To|⬜|
    |3|$Record.Introductory_Call_Date_Time__c| Is Null|✅|
    |4|$Record.Brand__c| Not Equal To|Simply Retirement|
    
    
    
    
    #### Rule X2nd_Call_Not_Scheduled (2nd Call Not Scheduled)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[X2nd_Call_Follow_Up](#x2nd_call_follow_up)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Implementation_Steps__c| Equal To|Add Your Employees|
    |2|$Record.Census_Call_Complete__c| Equal To|⬜|
    |3|$Record.Census_Call_Date_Time__c| Is Null|✅|
    |4|$Record.Brand__c| Not Equal To|Simply Retirement|
    
    
    
    
    #### Rule X3rd_Call_Not_Scheduled (3rd Call Not Scheduled)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[X3rd_Call_Follow_Up](#x3rd_call_follow_up)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Implementation_Steps__c| Equal To|Funding & Review|
    |2|$Record.Funding_Call_Complete__c| Equal To|⬜|
    |3|$Record.Funding_Call_Date_Time__c| Is Null|✅|
    |4|$Record.Brand__c| Not Equal To|Simply Retirement|
    
    
    
    
    #### Rule Simply_1st_Call_Not_Scheduled (Simply 1st Call Not Scheduled)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Simply_1st_Call_Follow_Up](#simply_1st_call_follow_up)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Implementation_Steps__c| Equal To|Introductory Tasks|
    |2|$Record.Intro_Call_Complete__c| Equal To|⬜|
    |3|$Record.Introductory_Call_Date_Time__c| Is Null|✅|
    |4|$Record.Brand__c| Equal To|Simply Retirement|
    
    
    
    
    #### Rule Simply_2nd_Call_Not_Scheduled (Simply 2nd Call Not Scheduled)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Simply_2nd_Call_Follow_Up](#simply_2nd_call_follow_up)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Implementation_Steps__c| Equal To|Add Your Employees|
    |2|$Record.Census_Call_Complete__c| Equal To|⬜|
    |3|$Record.Census_Call_Date_Time__c| Is Null|✅|
    |4|$Record.Brand__c| Equal To|Simply Retirement|
    
    
    
    
    #### Rule Simply_3rd_Call_Not_Scheduled (Simply 3rd Call Not Scheduled)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Simply_3rd_Call_Follow_Up](#simply_3rd_call_follow_up)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Implementation_Steps__c| Equal To|Funding & Review|
    |2|$Record.Funding_Call_Complete__c| Equal To|⬜|
    |3|$Record.Funding_Call_Date_Time__c| Is Null|✅|
    |4|$Record.Brand__c| Equal To|Simply Retirement|
    
    
    
    
    ### Client_Verification_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Client Verification|
    |Default Connector Label|Client Missing|
    
    
    #### Rule Client_Found_0 (Client Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Call_Not_Scheduled](#call_not_scheduled)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|aCon.Id| Is Null|⬜|
    |2|aCon.Implementation_Owner_Title__c| Contains|Implementation|
    
    
    
    
    ### Get_AC
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Associated_Contact__c|
    |Label|Get AC|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|aCon|
    |Queried Fields|- Id<br/>- Implementation_Owner_Title__c<br/>|
    |Connector|[Client_Verification_0](#client_verification_0)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Implementation__c| Equal To|$Record.Id|
    |2|Primary__c| Equal To|✅|
    |3|Implementation_Status__c| Contains|In Progress|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

