# Implementation_After_Trigger_Send_Pre_Call_Emails history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Implementation_After_Trigger_Send_Pre_Call_Emails-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Scheduled</b>"]):::startClass
    click START "#general-information" "621340673"
    
    Finch_1st_Call_Tomorrow("📧 <em></em><br/>Finch 1st Call Tomorrow"):::actionCalls
    click Finch_1st_Call_Tomorrow "#finch_1st_call_tomorrow" "1202181399"
    
    Finch_2nd_Call_Tomorrow("📧 <em></em><br/>Finch 2nd Call Tomorrow"):::actionCalls
    click Finch_2nd_Call_Tomorrow "#finch_2nd_call_tomorrow" "2788508389"
    
    Finch_Simply_1st_Call_Tomorrow("📧 <em></em><br/>Finch Simply 1st Call Tomorrow"):::actionCalls
    click Finch_Simply_1st_Call_Tomorrow "#finch_simply_1st_call_tomorrow" "3559624898"
    
    Finch_Simply_2nd_Call_Tomorrow("📧 <em></em><br/>Finch Simply 2nd Call Tomorrow"):::actionCalls
    click Finch_Simply_2nd_Call_Tomorrow "#finch_simply_2nd_call_tomorrow" "3331997393"
    
    Sallus_1st_Call_Tomorrow("📧 <em></em><br/>Sallus 1st Call Tomorrow"):::actionCalls
    click Sallus_1st_Call_Tomorrow "#sallus_1st_call_tomorrow" "421551147"
    
    Sallus_2nd_Call_Tomorrow("📧 <em></em><br/>Sallus 2nd Call Tomorrow"):::actionCalls
    click Sallus_2nd_Call_Tomorrow "#sallus_2nd_call_tomorrow" "1732851277"
    
    Sallus_3rd_Call_Tomorrow("📧 <em></em><br/>Sallus 3rd Call Tomorrow"):::actionCalls
    click Sallus_3rd_Call_Tomorrow "#sallus_3rd_call_tomorrow" "629945731"
    
    Schwab_Before_First_Call_Awaiting_ACH("📧 <em></em><br/>Schwab Before First Call, Awaiting ACH"):::actionCalls
    click Schwab_Before_First_Call_Awaiting_ACH "#schwab_before_first_call_awaiting_ach" "2803788873"
    
    Send_1st_Call_Reminder("📧 <em></em><br/>Send 1st Call Reminder"):::actionCalls
    click Send_1st_Call_Reminder "#send_1st_call_reminder" "1672833965"
    
    Send_1st_Call_Reminder_Awaiting_ACH("📧 <em></em><br/>Send 1st Call Reminder, Awaiting ACH"):::actionCalls
    click Send_1st_Call_Reminder_Awaiting_ACH "#send_1st_call_reminder_awaiting_ach" "169658754"
    
    Send_2nd_Call_Reminder("📧 <em></em><br/>Send 2nd Call Reminder"):::actionCalls
    click Send_2nd_Call_Reminder "#send_2nd_call_reminder" "4285661275"
    
    Send_3rd_Call_Reminder("📧 <em></em><br/>Send 3rd Call Reminder"):::actionCalls
    click Send_3rd_Call_Reminder "#send_3rd_call_reminder" "128290835"
    
    Simply_1st_Call_Tomorrow_ACH_Signed("📧 <em></em><br/>Simply 1st Call Tomorrow, ACH Signed"):::actionCalls
    click Simply_1st_Call_Tomorrow_ACH_Signed "#simply_1st_call_tomorrow_ach_signed" "2630060913"
    
    Simply_1st_Call_Tomorrow_No_ACH("📧 <em></em><br/>Simply 1st Call Tomorrow, No ACH"):::actionCalls
    click Simply_1st_Call_Tomorrow_No_ACH "#simply_1st_call_tomorrow_no_ach" "2130798348"
    
    Simply_2nd_Call_Tomorrow("📧 <em></em><br/>Simply 2nd Call Tomorrow"):::actionCalls
    click Simply_2nd_Call_Tomorrow "#simply_2nd_call_tomorrow" "3629525391"
    
    Simply_3rd_Call_Tomorrow("📧 <em></em><br/>Simply 3rd Call Tomorrow"):::actionCalls
    click Simply_3rd_Call_Tomorrow "#simply_3rd_call_tomorrow" "2093988011"
    
    Simply_Document_Follow_Up_Email("📧 <em></em><br/>Simply - Document Follow Up Email"):::actionCalls
    click Simply_Document_Follow_Up_Email "#simply_document_follow_up_email" "2188407943"
    
    Simply_Plans_Census_Follow_Up_Email("📧 <em></em><br/>Simply Plans – Census Follow Up Email"):::actionCalls
    click Simply_Plans_Census_Follow_Up_Email "#simply_plans_census_follow_up_email" "114871405"
    
    Simply_Plans_Payroll_Follow_Up_Email("📧 <em></em><br/>Simply Plans – Payroll Follow Up Email"):::actionCalls
    click Simply_Plans_Payroll_Follow_Up_Email "#simply_plans_payroll_follow_up_email" "3303113587"
    
    UBQT_Census_Follow_Up_Email("📧 <em></em><br/>UBQT – Census Follow Up Email"):::actionCalls
    click UBQT_Census_Follow_Up_Email "#ubqt_census_follow_up_email" "1265259974"
    
    UBQT_Document_Follow_Up_Email("📧 <em></em><br/>UBQT – Document Follow Up Email"):::actionCalls
    click UBQT_Document_Follow_Up_Email "#ubqt_document_follow_up_email" "1186299197"
    
    UBQT_Payroll_Follow_Up_Email("📧 <em></em><br/>UBQT – Payroll Follow Up Email"):::actionCalls
    click UBQT_Payroll_Follow_Up_Email "#ubqt_payroll_follow_up_email" "1392677482"
    
    Calls_Happening_Tomorrow{"🔀 <em></em><br/>Calls Happening Tomorrow"}:::decisions
    click Calls_Happening_Tomorrow "#calls_happening_tomorrow" "3001428417"
    
    Calls_Happening_Tomorrow_0{"🔀 <em></em><br/>Calls Happening Tomorrow"}:::decisions
    click Calls_Happening_Tomorrow_0 "#calls_happening_tomorrow_0" "3591418968"
    
    Missing_Client_Action{"🔀 <em></em><br/>Missing Client Action"}:::decisions
    click Missing_Client_Action "#missing_client_action" "190333620"
    
    Missing_Client_Action_0{"🔀 <em></em><br/>Missing Client Action"}:::decisions
    click Missing_Client_Action_0 "#missing_client_action_0" "4051450195"
    
    Get_AC[("🔍 <em></em><br/>Get AC")]:::recordLookups
    click Get_AC "#get_ac" "3290289997"
    
    Get_AC_0[("🔍 <em></em><br/>Get AC")]:::recordLookups
    click Get_AC_0 "#get_ac_0" "663599659"
    
    Finch_1st_Call_Tomorrow --> Missing_Client_Action
    Finch_2nd_Call_Tomorrow --> Missing_Client_Action
    Finch_Simply_1st_Call_Tomorrow --> Missing_Client_Action
    Finch_Simply_2nd_Call_Tomorrow --> Missing_Client_Action
    Sallus_1st_Call_Tomorrow --> Missing_Client_Action
    Sallus_2nd_Call_Tomorrow --> Missing_Client_Action
    Sallus_3rd_Call_Tomorrow --> Missing_Client_Action
    Schwab_Before_First_Call_Awaiting_ACH --> Missing_Client_Action
    Send_1st_Call_Reminder --> Missing_Client_Action
    Send_1st_Call_Reminder_Awaiting_ACH --> Missing_Client_Action
    Send_2nd_Call_Reminder --> Missing_Client_Action
    Send_3rd_Call_Reminder --> Missing_Client_Action
    Simply_1st_Call_Tomorrow_ACH_Signed --> Missing_Client_Action
    Simply_1st_Call_Tomorrow_No_ACH --> END_Simply_1st_Call_Tomorrow_No_ACH
    Simply_2nd_Call_Tomorrow --> Missing_Client_Action
    Simply_3rd_Call_Tomorrow --> Missing_Client_Action
    Simply_Document_Follow_Up_Email --> END_Simply_Document_Follow_Up_Email
    Simply_Plans_Census_Follow_Up_Email --> END_Simply_Plans_Census_Follow_Up_Email
    Simply_Plans_Payroll_Follow_Up_Email --> END_Simply_Plans_Payroll_Follow_Up_Email
    UBQT_Census_Follow_Up_Email --> END_UBQT_Census_Follow_Up_Email
    UBQT_Document_Follow_Up_Email --> END_UBQT_Document_Follow_Up_Email
    UBQT_Payroll_Follow_Up_Email --> END_UBQT_Payroll_Follow_Up_Email
    Calls_Happening_Tomorrow --> |"Intro Call Tomorrow, Awaiting ACH"| Get_AC
    Calls_Happening_Tomorrow --> |"Intro Call Tomorrow, ACH Signed"| Get_AC
    Calls_Happening_Tomorrow --> |"Census Call Tomorrow"| Get_AC
    Calls_Happening_Tomorrow --> |"Final Call Tomorrow"| Get_AC
    Calls_Happening_Tomorrow --> |"Default Outcome"| Missing_Client_Action
    Calls_Happening_Tomorrow_0 --> |"Finch Simply Intro Call Tomorrow"| Finch_Simply_1st_Call_Tomorrow
    Calls_Happening_Tomorrow_0 --> |"Finch Simply Census Call Tomorrow"| Finch_Simply_2nd_Call_Tomorrow
    Calls_Happening_Tomorrow_0 --> |"Finch Intro Call Tomorrow"| Finch_1st_Call_Tomorrow
    Calls_Happening_Tomorrow_0 --> |"Finch Census Call Tomorrow"| Finch_2nd_Call_Tomorrow
    Calls_Happening_Tomorrow_0 --> |"Intro Call Tomorrow, Awaiting ACH"| Send_1st_Call_Reminder_Awaiting_ACH
    Calls_Happening_Tomorrow_0 --> |"Intro Call Tomorrow, Schwab Awaiting ACH"| Schwab_Before_First_Call_Awaiting_ACH
    Calls_Happening_Tomorrow_0 --> |"Intro Call Tomorrow, ACH Signed"| Send_1st_Call_Reminder
    Calls_Happening_Tomorrow_0 --> |"Census Call Tomorrow"| Send_2nd_Call_Reminder
    Calls_Happening_Tomorrow_0 --> |"Final Call Tomorrow"| Send_3rd_Call_Reminder
    Calls_Happening_Tomorrow_0 --> |"Simply Intro Call Tomorrow, Awaiting ACH"| Simply_1st_Call_Tomorrow_No_ACH
    Calls_Happening_Tomorrow_0 --> |"Simply Intro Call Tomorrow, ACH Signed"| Simply_1st_Call_Tomorrow_ACH_Signed
    Calls_Happening_Tomorrow_0 --> |"Simply Census Call Tomorrow"| Simply_2nd_Call_Tomorrow
    Calls_Happening_Tomorrow_0 --> |"Simply Final Call Tomorrow"| Simply_3rd_Call_Tomorrow
    Calls_Happening_Tomorrow_0 --> |"Sallus Intro Call Tomorrow"| Sallus_1st_Call_Tomorrow
    Calls_Happening_Tomorrow_0 --> |"Sallus Census Call Tomorrow"| Sallus_2nd_Call_Tomorrow
    Calls_Happening_Tomorrow_0 --> |"Sallus Final Call Tomorrow"| Sallus_3rd_Call_Tomorrow
    Calls_Happening_Tomorrow_0 --> |"Default Outcome"| END_Calls_Happening_Tomorrow_0
    Missing_Client_Action --> |"UBQT - Document Follow Up"| Get_AC_0
    Missing_Client_Action --> |"Simply - Document Follow Up"| Get_AC_0
    Missing_Client_Action --> |"UBQT – Census Follow Up"| Get_AC_0
    Missing_Client_Action --> |"Simply Plans – Census Follow Up"| Get_AC_0
    Missing_Client_Action --> |"UBQT – Payroll Follow Up"| Get_AC_0
    Missing_Client_Action --> |"Simply Plans – Payroll Follow Up"| Get_AC_0
    Missing_Client_Action --> |"Default Outcome"| END_Missing_Client_Action
    Missing_Client_Action_0 --> |"UBQT - Document Follow Up"| UBQT_Document_Follow_Up_Email
    Missing_Client_Action_0 --> |"Simply - Document Follow Up"| Simply_Document_Follow_Up_Email
    Missing_Client_Action_0 --> |"UBQT – Census Follow Up"| UBQT_Census_Follow_Up_Email
    Missing_Client_Action_0 --> |"Simply Plans – Census Follow Up"| Simply_Plans_Census_Follow_Up_Email
    Missing_Client_Action_0 --> |"UBQT – Payroll Follow Up"| UBQT_Payroll_Follow_Up_Email
    Missing_Client_Action_0 --> |"Simply Plans – Payroll Follow Up"| Simply_Plans_Payroll_Follow_Up_Email
    Missing_Client_Action_0 --> |"Default Outcome"| END_Missing_Client_Action_0
    Get_AC --> Calls_Happening_Tomorrow_0
    Get_AC_0 --> Missing_Client_Action_0
    START -->  Calls_Happening_Tomorrow
    END_Simply_1st_Call_Tomorrow_No_ACH(( END )):::endClass
    END_Simply_Document_Follow_Up_Email(( END )):::endClass
    END_Simply_Plans_Census_Follow_Up_Email(( END )):::endClass
    END_Simply_Plans_Payroll_Follow_Up_Email(( END )):::endClass
    END_UBQT_Census_Follow_Up_Email(( END )):::endClass
    END_UBQT_Document_Follow_Up_Email(( END )):::endClass
    END_UBQT_Payroll_Follow_Up_Email(( END )):::endClass
    END_Calls_Happening_Tomorrow_0(( END )):::endClass
    END_Missing_Client_Action(( END )):::endClass
    END_Missing_Client_Action_0(( END )):::endClass
    
    
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
    |Label|Implementation | Scheduled | Send Pre-Call Emails|
    |Status|Active|
    |Description|Updated Finch API name(s)|
    |Environments|Default|
    |Interview Label|Implementation | After Trigger | Send Pre-Call Emails {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Calls_Happening_Tomorrow](#calls_happening_tomorrow)|
    |Next Node|[Calls_Happening_Tomorrow](#calls_happening_tomorrow)|
    
    
    #### Schedules
    
    |Frequency|Start Date|Start Time|
    |:-- |:--:|:--: |
    |Daily|Jun 3, 2022|11:00|
    
    
    #### Filters (logic: **(1 OR 2 OR 3) AND 4 AND 5**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Introductory_Call_Date_Time__c| Is Null|<!-- -->|
    |2|Census_Call_Date_Time__c| Is Null|<!-- -->|
    |3|Funding_Call_Date_Time__c| Is Null|<!-- -->|
    |4|Implementation_Status__c| Contains|In Progress|
    |5|Suppress_All_Emails__c| Equal To|⬜|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |aCon|SObject|⬜|✅|⬜|Associated_Contact__c|<!-- -->|
    |completeTasks|SObject|✅|✅|⬜|Project_Task__c|<!-- -->|
    |openProjTasks|SObject|✅|✅|⬜|Project_Task__c|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |censusCallDate|Date|DATEVALUE({!$Record.Census_Call_Date_Time__c})|<!-- -->|
    |finalCallDate|Date|DATEVALUE({!$Record.Funding_Call_Date_Time__c})|<!-- -->|
    |FundingReminderNeeded|Boolean|TODAY() - DATEVALUE({!$Record.Funding_Call_Date_Time__c}) = 14<br/>||<br/>(TODAY() - DATEVALUE({!$Record.Funding_Call_Date_Time__c}) > 14<br/>&&<br/>TODAY() - DATEVALUE({!$Record.Funding_Call_Date_Time__c}) < 180<br/>&&<br/>WEEKDAY(TODAY()) = WEEKDAY(DATEVALUE({!$Record.Funding_Call_Date_Time__c}))<br/>)|<!-- -->|
    |introCallDate|Date|DATEVALUE({!$Record.Introductory_Call_Date_Time__c})|<!-- -->|
    |now|DateTime|NOW()|<!-- -->|
    |today|Date|TODAY()|<!-- -->|
    |tomorrow|Date|TODAY()+1|<!-- -->|
    |X3DaysFromIntro|Date|DATEVALUE({!$Record.Introductory_Call_Date_Time__c}+3)|<!-- -->|
    |X8DaysFromCensus|Date|DATEVALUE({!$Record.Census_Call_Date_Time__c}+8)|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Finch_1st_Call_Tomorrow
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Finch 1st Call Tomorrow|
    |Action Type|Email Alert|
    |Action Name|Associated_Contact__c.Implementation_Before_1st_Call_Finch|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Associated_Contact__c.Implementation_Before_1st_Call_Finch|
    | SObject Row Id (input)|aCon.Id|
    |Connector|[Missing_Client_Action](#missing_client_action)|
    
    
    ### Finch_2nd_Call_Tomorrow
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Finch 2nd Call Tomorrow|
    |Action Type|Email Alert|
    |Action Name|Associated_Contact__c.Implementation_Before_2nd_Call_Finch|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Associated_Contact__c.Implementation_Before_2nd_Call_Finch|
    | SObject Row Id (input)|aCon.Id|
    |Connector|[Missing_Client_Action](#missing_client_action)|
    
    
    ### Finch_Simply_1st_Call_Tomorrow
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Finch Simply 1st Call Tomorrow|
    |Action Type|Email Alert|
    |Action Name|Associated_Contact__c.Implementation_Before_1st_Call_Finch_Simply_Branded|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Associated_Contact__c.Implementation_Before_1st_Call_Finch_Simply_Branded|
    | SObject Row Id (input)|aCon.Id|
    |Connector|[Missing_Client_Action](#missing_client_action)|
    
    
    ### Finch_Simply_2nd_Call_Tomorrow
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Finch Simply 2nd Call Tomorrow|
    |Action Type|Email Alert|
    |Action Name|Associated_Contact__c.Implementation_Before_2nd_Call_Finch_Simply_Branded|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Associated_Contact__c.Implementation_Before_2nd_Call_Finch_Simply_Branded|
    | SObject Row Id (input)|aCon.Id|
    |Connector|[Missing_Client_Action](#missing_client_action)|
    
    
    ### Sallus_1st_Call_Tomorrow
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Sallus 1st Call Tomorrow|
    |Action Type|Email Alert|
    |Action Name|Associated_Contact__c.Implementation_Before_1st_Call_Sallus|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Associated_Contact__c.Implementation_Before_1st_Call_Sallus|
    | SObject Row Id (input)|aCon.Id|
    |Connector|[Missing_Client_Action](#missing_client_action)|
    
    
    ### Sallus_2nd_Call_Tomorrow
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Sallus 2nd Call Tomorrow|
    |Action Type|Email Alert|
    |Action Name|Associated_Contact__c.Implementation_Before_2nd_Call_Sallus|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Associated_Contact__c.Implementation_Before_2nd_Call_Sallus|
    | SObject Row Id (input)|aCon.Id|
    |Connector|[Missing_Client_Action](#missing_client_action)|
    
    
    ### Sallus_3rd_Call_Tomorrow
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Sallus 3rd Call Tomorrow|
    |Action Type|Email Alert|
    |Action Name|Associated_Contact__c.Implementation_Before_3rd_Call_Sallus|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Associated_Contact__c.Implementation_Before_3rd_Call_Sallus|
    | SObject Row Id (input)|aCon.Id|
    |Connector|[Missing_Client_Action](#missing_client_action)|
    
    
    ### Schwab_Before_First_Call_Awaiting_ACH
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Schwab Before First Call, Awaiting ACH|
    |Action Type|Email Alert|
    |Action Name|Associated_Contact__c.Implementation_Before_1st_Call_Awaiting_ACH_Schwab|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Associated_Contact__c.Implementation_Before_1st_Call_Awaiting_ACH_Schwab|
    | SObject Row Id (input)|aCon.Id|
    |Connector|[Missing_Client_Action](#missing_client_action)|
    
    
    ### Send_1st_Call_Reminder
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send 1st Call Reminder|
    |Action Type|Email Alert|
    |Action Name|Associated_Contact__c.Implementation_Before_1st_Call_ACH_Signed|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Associated_Contact__c.Implementation_Before_1st_Call_ACH_Signed|
    | SObject Row Id (input)|aCon.Id|
    |Connector|[Missing_Client_Action](#missing_client_action)|
    
    
    ### Send_1st_Call_Reminder_Awaiting_ACH
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send 1st Call Reminder, Awaiting ACH|
    |Action Type|Email Alert|
    |Action Name|Associated_Contact__c.Implementation_Before_1st_Call_Awaiting_ACH|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Associated_Contact__c.Implementation_Before_1st_Call_Awaiting_ACH|
    | SObject Row Id (input)|aCon.Id|
    |Connector|[Missing_Client_Action](#missing_client_action)|
    
    
    ### Send_2nd_Call_Reminder
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send 2nd Call Reminder|
    |Action Type|Email Alert|
    |Action Name|Associated_Contact__c.Implementation_Before_2nd_Call|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Associated_Contact__c.Implementation_Before_2nd_Call|
    | SObject Row Id (input)|aCon.Id|
    |Connector|[Missing_Client_Action](#missing_client_action)|
    
    
    ### Send_3rd_Call_Reminder
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send 3rd Call Reminder|
    |Action Type|Email Alert|
    |Action Name|Associated_Contact__c.Implementation_Before_3rd_Call|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Associated_Contact__c.Implementation_Before_3rd_Call|
    | SObject Row Id (input)|aCon.Id|
    |Connector|[Missing_Client_Action](#missing_client_action)|
    
    
    ### Simply_1st_Call_Tomorrow_ACH_Signed
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Simply 1st Call Tomorrow, ACH Signed|
    |Action Type|Email Alert|
    |Action Name|Associated_Contact__c.Implementation_Before_1st_Call_ACH_Signed_Simply|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Associated_Contact__c.Implementation_Before_1st_Call_ACH_Signed_Simply|
    | SObject Row Id (input)|aCon.Id|
    |Connector|[Missing_Client_Action](#missing_client_action)|
    
    
    ### Simply_1st_Call_Tomorrow_No_ACH
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Simply 1st Call Tomorrow, No ACH|
    |Action Type|Email Alert|
    |Action Name|Associated_Contact__c.Implementation_Before_1st_Call_Awaiting_ACH_Simply|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Associated_Contact__c.Implementation_Before_1st_Call_Awaiting_ACH_Simply|
    | SObject Row Id (input)|aCon.Id|
    
    
    ### Simply_2nd_Call_Tomorrow
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Simply 2nd Call Tomorrow|
    |Action Type|Email Alert|
    |Action Name|Associated_Contact__c.Implementation_Before_2nd_Call_Simply|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Associated_Contact__c.Implementation_Before_2nd_Call_Simply|
    | SObject Row Id (input)|aCon.Id|
    |Connector|[Missing_Client_Action](#missing_client_action)|
    
    
    ### Simply_3rd_Call_Tomorrow
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Simply 3rd Call Tomorrow|
    |Action Type|Email Alert|
    |Action Name|Associated_Contact__c.Implementation_Before_3rd_Call_Simply|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Associated_Contact__c.Implementation_Before_3rd_Call_Simply|
    | SObject Row Id (input)|aCon.Id|
    |Connector|[Missing_Client_Action](#missing_client_action)|
    
    
    ### Simply_Document_Follow_Up_Email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Simply - Document Follow Up Email|
    |Action Type|Email Alert|
    |Action Name|Associated_Contact__c.Simply_Plans_Document_Follow_Up|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Associated_Contact__c.Simply_Plans_Document_Follow_Up|
    | SObject Row Id (input)|aCon.Id|
    
    
    ### Simply_Plans_Census_Follow_Up_Email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Simply Plans – Census Follow Up Email|
    |Action Type|Email Alert|
    |Action Name|Associated_Contact__c.Simply_Plans_Census_Follow_Up|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Associated_Contact__c.Simply_Plans_Census_Follow_Up|
    | SObject Row Id (input)|aCon.Id|
    
    
    ### Simply_Plans_Payroll_Follow_Up_Email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Simply Plans – Payroll Follow Up Email|
    |Action Type|Email Alert|
    |Action Name|Associated_Contact__c.Simply_Plans_Payroll_Follow_Up|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Associated_Contact__c.Simply_Plans_Payroll_Follow_Up|
    | SObject Row Id (input)|aCon.Id|
    
    
    ### UBQT_Census_Follow_Up_Email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|UBQT – Census Follow Up Email|
    |Action Type|Email Alert|
    |Action Name|Associated_Contact__c.UBQT_Census_Follow_Up|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Associated_Contact__c.UBQT_Census_Follow_Up|
    | SObject Row Id (input)|aCon.Id|
    
    
    ### UBQT_Document_Follow_Up_Email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|UBQT – Document Follow Up Email|
    |Action Type|Email Alert|
    |Action Name|Associated_Contact__c.UBQT_Document_Follow_Up|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Associated_Contact__c.UBQT_Document_Follow_Up|
    | SObject Row Id (input)|aCon.Id|
    
    
    ### UBQT_Payroll_Follow_Up_Email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|UBQT – Payroll Follow Up Email|
    |Action Type|Email Alert|
    |Action Name|Associated_Contact__c.UBQT_Payroll_Follow_Up|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Associated_Contact__c.UBQT_Payroll_Follow_Up|
    | SObject Row Id (input)|aCon.Id|
    
    
    ### Calls_Happening_Tomorrow
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Calls Happening Tomorrow|
    |Default Connector|[Missing_Client_Action](#missing_client_action)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Intro_Call_Tomorrow_Awaiting_ACH (Intro Call Tomorrow, Awaiting ACH)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_AC](#get_ac)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|introCallDate| Equal To|tomorrow|
    |2|$Record.Kotapay_Client_Signed__c| Is Null|✅|
    
    
    
    
    #### Rule Intro_Call_Tomorrow_ACH_Signed (Intro Call Tomorrow, ACH Signed)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_AC](#get_ac)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|introCallDate| Equal To|tomorrow|
    |2|$Record.Kotapay_Client_Signed__c| Is Null|⬜|
    
    
    
    
    #### Rule Census_Call_Tomorrow (Census Call Tomorrow)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_AC](#get_ac)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|censusCallDate| Equal To|tomorrow|
    
    
    
    
    #### Rule Final_Call_Tomorrow (Final Call Tomorrow)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_AC](#get_ac)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|finalCallDate| Equal To|tomorrow|
    
    
    
    
    ### Calls_Happening_Tomorrow_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Calls Happening Tomorrow|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Finch_Simply_Intro_Call_Tomorrow (Finch Simply Intro Call Tomorrow)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Finch_Simply_1st_Call_Tomorrow](#finch_simply_1st_call_tomorrow)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|introCallDate| Equal To|tomorrow|
    |2|$Record.Offered_Finch__c| Equal To|✅|
    |3|$Record.Single_Bank_and_Payroll_Schedule__c| Not Equal To|No|
    |4|$Record.Finch_Opt_Out__c| Not Equal To|Yes|
    |5|$Record.Interested_After_Aborting_Finch_Cred__c| Not Equal To|Not Interested|
    |6|$Record.Brand__c| Equal To|Simply Retirement|
    
    
    
    
    #### Rule Finch_Simply_Census_Call_Tomorrow (Finch Simply Census Call Tomorrow)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Finch_Simply_2nd_Call_Tomorrow](#finch_simply_2nd_call_tomorrow)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|censusCallDate| Equal To|tomorrow|
    |2|$Record.Offered_Finch__c| Equal To|✅|
    |3|$Record.Single_Bank_and_Payroll_Schedule__c| Not Equal To|No|
    |4|$Record.Finch_Opt_Out__c| Not Equal To|Yes|
    |5|$Record.Interested_After_Aborting_Finch_Cred__c| Not Equal To|Not Interested|
    |6|$Record.Brand__c| Equal To|Simply Retirement|
    
    
    
    
    #### Rule Finch_Intro_Call_Tomorrow (Finch Intro Call Tomorrow)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Finch_1st_Call_Tomorrow](#finch_1st_call_tomorrow)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|introCallDate| Equal To|tomorrow|
    |2|$Record.Offered_Finch__c| Equal To|✅|
    |3|$Record.Single_Bank_and_Payroll_Schedule__c| Not Equal To|No|
    |4|$Record.Finch_Opt_Out__c| Not Equal To|Yes|
    |5|$Record.Interested_After_Aborting_Finch_Cred__c| Not Equal To|Not Interested|
    |6|$Record.Brand__c| Equal To|Ubiquity Retirement + Savings|
    
    
    
    
    #### Rule Finch_Census_Call_Tomorrow (Finch Census Call Tomorrow)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Finch_2nd_Call_Tomorrow](#finch_2nd_call_tomorrow)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|censusCallDate| Equal To|tomorrow|
    |2|$Record.Offered_Finch__c| Equal To|✅|
    |3|$Record.Single_Bank_and_Payroll_Schedule__c| Not Equal To|No|
    |4|$Record.Finch_Opt_Out__c| Not Equal To|Yes|
    |5|$Record.Interested_After_Aborting_Finch_Cred__c| Not Equal To|Not Interested|
    |6|$Record.Brand__c| Equal To|Ubiquity Retirement + Savings|
    
    
    
    
    #### Rule Intro_Call_Tomorrow_Awaiting_ACH_0 (Intro Call Tomorrow, Awaiting ACH)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Send_1st_Call_Reminder_Awaiting_ACH](#send_1st_call_reminder_awaiting_ach)|
    |Condition Logic|1 AND 2 AND 3 AND 4 AND NOT 5|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|introCallDate| Equal To|tomorrow|
    |2|$Record.Kotapay_Client_Signed__c| Is Null|✅|
    |3|$Record.Brand__c| Not Equal To|Simply Retirement|
    |4|$Record.Brand__c| Not Equal To|Sallus Retirement|
    |5|$Record.Custodian__c| Contains|Schwab|
    
    
    
    
    #### Rule Intro_Call_Tomorrow_Schwab_Awaiting_ACH (Intro Call Tomorrow, Schwab Awaiting ACH)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Schwab_Before_First_Call_Awaiting_ACH](#schwab_before_first_call_awaiting_ach)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|introCallDate| Equal To|tomorrow|
    |2|$Record.Kotapay_Client_Signed__c| Is Null|✅|
    |3|$Record.Brand__c| Not Equal To|Simply Retirement|
    |4|$Record.Custodian__c| Contains|Schwab|
    |5|$Record.Brand__c| Not Equal To|Sallus Retirement|
    
    
    
    
    #### Rule Intro_Call_Tomorrow_ACH_Signed_0 (Intro Call Tomorrow, ACH Signed)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Send_1st_Call_Reminder](#send_1st_call_reminder)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|introCallDate| Equal To|tomorrow|
    |2|$Record.Kotapay_Client_Signed__c| Is Null|⬜|
    |3|$Record.Brand__c| Not Equal To|Simply Retirement|
    |4|$Record.Custodian__c| Not Equal To|Schwab Trust|
    |5|$Record.Custodian__c| Not Equal To|Schwab & Co., Inc.|
    |6|$Record.Brand__c| Not Equal To|Sallus Retirement|
    
    
    
    
    #### Rule Census_Call_Tomorrow_0 (Census Call Tomorrow)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Send_2nd_Call_Reminder](#send_2nd_call_reminder)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|censusCallDate| Equal To|tomorrow|
    |2|$Record.Brand__c| Not Equal To|Simply Retirement|
    |3|$Record.Brand__c| Not Equal To|Sallus Retirement|
    
    
    
    
    #### Rule Final_Call_Tomorrow_0 (Final Call Tomorrow)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Send_3rd_Call_Reminder](#send_3rd_call_reminder)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|finalCallDate| Equal To|tomorrow|
    |2|$Record.Brand__c| Not Equal To|Simply Retirement|
    |3|$Record.Brand__c| Not Equal To|Sallus Retirement|
    
    
    
    
    #### Rule Simply_Intro_Call_Tomorrow_Awaiting_ACH (Simply Intro Call Tomorrow, Awaiting ACH)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Simply_1st_Call_Tomorrow_No_ACH](#simply_1st_call_tomorrow_no_ach)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|introCallDate| Equal To|tomorrow|
    |2|$Record.Kotapay_Client_Signed__c| Is Null|✅|
    |3|$Record.Brand__c| Equal To|Simply Retirement|
    
    
    
    
    #### Rule Simply_Intro_Call_Tomorrow_ACH_Signed (Simply Intro Call Tomorrow, ACH Signed)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Simply_1st_Call_Tomorrow_ACH_Signed](#simply_1st_call_tomorrow_ach_signed)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|introCallDate| Equal To|tomorrow|
    |2|$Record.Kotapay_Client_Signed__c| Is Null|⬜|
    |3|$Record.Brand__c| Equal To|Simply Retirement|
    
    
    
    
    #### Rule Simply_Census_Call_Tomorrow (Simply Census Call Tomorrow)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Simply_2nd_Call_Tomorrow](#simply_2nd_call_tomorrow)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|censusCallDate| Equal To|tomorrow|
    |2|$Record.Brand__c| Equal To|Simply Retirement|
    
    
    
    
    #### Rule Simply_Final_Call_Tomorrow (Simply Final Call Tomorrow)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Simply_3rd_Call_Tomorrow](#simply_3rd_call_tomorrow)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|finalCallDate| Equal To|tomorrow|
    |2|$Record.Brand__c| Equal To|Simply Retirement|
    
    
    
    
    #### Rule Sallus_Intro_Call_Tomorrow (Sallus Intro Call Tomorrow)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Sallus_1st_Call_Tomorrow](#sallus_1st_call_tomorrow)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Brand__c| Equal To|Sallus Retirement|
    |2|introCallDate| Equal To|tomorrow|
    
    
    
    
    #### Rule Sallus_Census_Call_Tomorrow (Sallus Census Call Tomorrow)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Sallus_2nd_Call_Tomorrow](#sallus_2nd_call_tomorrow)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Brand__c| Equal To|Sallus Retirement|
    |2|censusCallDate| Equal To|tomorrow|
    
    
    
    
    #### Rule Sallus_Final_Call_Tomorrow (Sallus Final Call Tomorrow)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Sallus_3rd_Call_Tomorrow](#sallus_3rd_call_tomorrow)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Brand__c| Equal To|Sallus Retirement|
    |2|finalCallDate| Equal To|tomorrow|
    
    
    
    
    ### Missing_Client_Action
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Missing Client Action|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule UBQT_Document_Follow_Up (UBQT - Document Follow Up)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_AC_0](#get_ac_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Brand__c| Equal To|Ubiquity Retirement + Savings|
    |2|today| Equal To|X3DaysFromIntro|
    |3|$Record.Ubiquity_Plan_Documents_Signed__c| Is Null|✅|
    
    
    
    
    #### Rule Simply_Document_Follow_Up (Simply - Document Follow Up)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_AC_0](#get_ac_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Brand__c| Equal To|Simply Retirement|
    |2|today| Equal To|X3DaysFromIntro|
    |3|$Record.Ubiquity_Plan_Documents_Signed__c| Is Null|✅|
    
    
    
    
    #### Rule Sallus_Document_Follow_Up (Sallus - Document Follow Up)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Brand__c| Equal To|Sallus Retirement|
    |2|today| Equal To|X3DaysFromIntro|
    |3|$Record.Ubiquity_Plan_Documents_Signed__c| Is Null|✅|
    
    
    
    
    #### Rule UBQT_Census_Follow_Up (UBQT – Census Follow Up)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_AC_0](#get_ac_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Brand__c| Equal To|Ubiquity Retirement + Savings|
    |2|today| Equal To|X8DaysFromCensus|
    |3|$Record.Census_and_Eligibility_Uploaded__c| Is Null|✅|
    
    
    
    
    #### Rule Simply_Plans_Census_Follow_Up (Simply Plans – Census Follow Up)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_AC_0](#get_ac_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Brand__c| Equal To|Simply Retirement|
    |2|today| Equal To|X8DaysFromCensus|
    |3|$Record.Census_and_Eligibility_Uploaded__c| Is Null|✅|
    
    
    
    
    #### Rule Sallus_Census_Follow_Up (Sallus - Census Follow Up)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Brand__c| Equal To|Sallus Retirement|
    |2|today| Equal To|X8DaysFromCensus|
    |3|$Record.Census_and_Eligibility_Uploaded__c| Is Null|✅|
    
    
    
    
    #### Rule UBQT_Payroll_Follow_Up (UBQT – Payroll Follow Up)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_AC_0](#get_ac_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Brand__c| Equal To|Ubiquity Retirement + Savings|
    |2|FundingReminderNeeded| Equal To|✅|
    |3|$Record.X1st_Payroll_Date__c| Is Null|✅|
    |4|$Record.Implementation_Status__c| Not Equal To|Completed|
    
    
    
    
    #### Rule Simply_Plans_Payroll_Follow_Up (Simply Plans – Payroll Follow Up)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_AC_0](#get_ac_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Brand__c| Equal To|Simply Retirement|
    |2|FundingReminderNeeded| Equal To|✅|
    |3|$Record.X1st_Payroll_Date__c| Is Null|✅|
    |4|$Record.Implementation_Status__c| Not Equal To|Completed|
    
    
    
    
    #### Rule Sallus_Payroll_Follow_Up (Sallus - Payroll Follow Up)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Brand__c| Equal To|Sallus Retirement|
    |2|FundingReminderNeeded| Equal To|✅|
    |3|$Record.X1st_Payroll_Date__c| Is Null|✅|
    |4|$Record.Implementation_Status__c| Not Equal To|Completed|
    
    
    
    
    ### Missing_Client_Action_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Missing Client Action|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule UBQT_Document_Follow_Up_0 (UBQT - Document Follow Up)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[UBQT_Document_Follow_Up_Email](#ubqt_document_follow_up_email)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Brand__c| Equal To|Ubiquity Retirement + Savings|
    |2|today| Equal To|X3DaysFromIntro|
    |3|$Record.Ubiquity_Plan_Documents_Signed__c| Is Null|✅|
    
    
    
    
    #### Rule Simply_Document_Follow_Up_0 (Simply - Document Follow Up)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Simply_Document_Follow_Up_Email](#simply_document_follow_up_email)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Brand__c| Equal To|Simply Retirement|
    |2|today| Equal To|X3DaysFromIntro|
    |3|$Record.Ubiquity_Plan_Documents_Signed__c| Is Null|✅|
    
    
    
    
    #### Rule Sallus_Document_Follow_Up_0 (Sallus - Document Follow Up)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Brand__c| Equal To|Sallus Retirement|
    |2|today| Equal To|X3DaysFromIntro|
    |3|$Record.Ubiquity_Plan_Documents_Signed__c| Is Null|✅|
    
    
    
    
    #### Rule UBQT_Census_Follow_Up_0 (UBQT – Census Follow Up)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[UBQT_Census_Follow_Up_Email](#ubqt_census_follow_up_email)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Brand__c| Equal To|Ubiquity Retirement + Savings|
    |2|today| Equal To|X8DaysFromCensus|
    |3|$Record.Census_and_Eligibility_Uploaded__c| Is Null|✅|
    
    
    
    
    #### Rule Simply_Plans_Census_Follow_Up_0 (Simply Plans – Census Follow Up)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Simply_Plans_Census_Follow_Up_Email](#simply_plans_census_follow_up_email)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Brand__c| Equal To|Simply Retirement|
    |2|today| Equal To|X8DaysFromCensus|
    |3|$Record.Census_and_Eligibility_Uploaded__c| Is Null|✅|
    
    
    
    
    #### Rule Sallus_Census_Follow_Up_0 (Sallus - Census Follow Up)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Brand__c| Equal To|Sallus Retirement|
    |2|today| Equal To|X8DaysFromCensus|
    |3|$Record.Census_and_Eligibility_Uploaded__c| Is Null|✅|
    
    
    
    
    #### Rule UBQT_Payroll_Follow_Up_0 (UBQT – Payroll Follow Up)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[UBQT_Payroll_Follow_Up_Email](#ubqt_payroll_follow_up_email)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Brand__c| Equal To|Ubiquity Retirement + Savings|
    |2|FundingReminderNeeded| Equal To|✅|
    |3|$Record.X1st_Payroll_Date__c| Is Null|✅|
    |4|$Record.Implementation_Status__c| Not Equal To|Completed|
    
    
    
    
    #### Rule Simply_Plans_Payroll_Follow_Up_0 (Simply Plans – Payroll Follow Up)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Simply_Plans_Payroll_Follow_Up_Email](#simply_plans_payroll_follow_up_email)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Brand__c| Equal To|Simply Retirement|
    |2|FundingReminderNeeded| Equal To|✅|
    |3|$Record.X1st_Payroll_Date__c| Is Null|✅|
    |4|$Record.Implementation_Status__c| Not Equal To|Completed|
    
    
    
    
    #### Rule Sallus_Payroll_Follow_Up_0 (Sallus - Payroll Follow Up)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Brand__c| Equal To|Sallus Retirement|
    |2|FundingReminderNeeded| Equal To|✅|
    |3|$Record.X1st_Payroll_Date__c| Is Null|✅|
    |4|$Record.Implementation_Status__c| Not Equal To|Completed|
    
    
    
    
    ### Get_AC
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Associated_Contact__c|
    |Label|Get AC|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|aCon|
    |Queried Fields|Id|
    |Connector|[Calls_Happening_Tomorrow_0](#calls_happening_tomorrow_0)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Implementation__c| Equal To|$Record.Id|
    |2|Primary__c| Equal To|✅|
    
    
    
    
    ### Get_AC_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Associated_Contact__c|
    |Label|Get AC|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|aCon|
    |Queried Fields|Id|
    |Connector|[Missing_Client_Action_0](#missing_client_action_0)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Implementation__c| Equal To|$Record.Id|
    |2|Primary__c| Equal To|✅|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

