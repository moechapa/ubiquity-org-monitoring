# Transitions_Master_Workflow history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Transitions_Master_Workflow-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Transition__c</b></br>Type: <b>On All Changes</b>"]):::startClass
    click START "#general-information" "2503853256"
    
    START --> isChangedDecision2_myRule_1_Inquiry_Date_c
    myRule_1_A1("📧 <em></em><br/>Notify CE Team"):::actionCalls
    click myRule_1_A1 "#myrule_1_a1" "1095634384"
    
    myWaitAssignment_myWait_myRule_45[\"🟰 <em></em><br/>myWaitAssignment_myWait_myRule_45"/]:::assignments
    click myWaitAssignment_myWait_myRule_45 "#mywaitassignment_mywait_myrule_45" "1602965194"
    
    myWaitAssignment_myWait_myRule_47[\"🟰 <em></em><br/>myWaitAssignment_myWait_myRule_47"/]:::assignments
    click myWaitAssignment_myWait_myRule_47 "#mywaitassignment_mywait_myrule_47" "3236641847"
    
    myWaitEvent_myWait_myRule_45_event_0_postWaitExecutionAssignment[\"🟰 <em></em><br/>myWaitEvent_myWait_myRule_45_event_0_postWaitExecutionAssignment"/]:::assignments
    click myWaitEvent_myWait_myRule_45_event_0_postWaitExecutionAssignment "#mywaitevent_mywait_myrule_45_event_0_postwaitexecutionassignment" "2061683215"
    
    myWaitEvent_myWait_myRule_47_event_0_postWaitExecutionAssignment[\"🟰 <em></em><br/>myWaitEvent_myWait_myRule_47_event_0_postWaitExecutionAssignment"/]:::assignments
    click myWaitEvent_myWait_myRule_47_event_0_postWaitExecutionAssignment "#mywaitevent_mywait_myrule_47_event_0_postwaitexecutionassignment" "322366564"
    
    isChangedDecision13_myRule_12_Notification_Date_c{"🔀 <em></em><br/>isChangedDecision13_myRule_12_Notification_Date_c"}:::decisions
    click isChangedDecision13_myRule_12_Notification_Date_c "#ischangeddecision13_myrule_12_notification_date_c" "3308842103"
    
    isChangedDecision20_myRule_19_Final_Testing_Calculations_Complete_c{"🔀 <em></em><br/>isChangedDecision20_myRule_19_Final_Testing_Calculations_Complete_c"}:::decisions
    click isChangedDecision20_myRule_19_Final_Testing_Calculations_Complete_c "#ischangeddecision20_myrule_19_final_testing_calculations_complete_c" "3048531133"
    
    isChangedDecision24_myRule_23_Saved_Date_c{"🔀 <em></em><br/>isChangedDecision24_myRule_23_Saved_Date_c"}:::decisions
    click isChangedDecision24_myRule_23_Saved_Date_c "#ischangeddecision24_myrule_23_saved_date_c" "667367252"
    
    isChangedDecision25_myRule_23_Status_c{"🔀 <em></em><br/>isChangedDecision25_myRule_23_Status_c"}:::decisions
    click isChangedDecision25_myRule_23_Status_c "#ischangeddecision25_myrule_23_status_c" "1385621178"
    
    isChangedDecision26_myRule_23_Transition_Cancelled_c{"🔀 <em></em><br/>isChangedDecision26_myRule_23_Transition_Cancelled_c"}:::decisions
    click isChangedDecision26_myRule_23_Transition_Cancelled_c "#ischangeddecision26_myrule_23_transition_cancelled_c" "370276772"
    
    isChangedDecision2_myRule_1_Inquiry_Date_c{"🔀 <em></em><br/>isChangedDecision2_myRule_1_Inquiry_Date_c"}:::decisions
    click isChangedDecision2_myRule_1_Inquiry_Date_c "#ischangeddecision2_myrule_1_inquiry_date_c" "749323052"
    
    isChangedDecision34_myRule_33_Transition_Complete_c{"🔀 <em></em><br/>isChangedDecision34_myRule_33_Transition_Complete_c"}:::decisions
    click isChangedDecision34_myRule_33_Transition_Complete_c "#ischangeddecision34_myrule_33_transition_complete_c" "4182069250"
    
    isChangedDecision37_myRule_36_Transition_Complete_c{"🔀 <em></em><br/>isChangedDecision37_myRule_36_Transition_Complete_c"}:::decisions
    click isChangedDecision37_myRule_36_Transition_Complete_c "#ischangeddecision37_myrule_36_transition_complete_c" "2577113034"
    
    isChangedDecision40_myRule_39_Status_c{"🔀 <em></em><br/>isChangedDecision40_myRule_39_Status_c"}:::decisions
    click isChangedDecision40_myRule_39_Status_c "#ischangeddecision40_myrule_39_status_c" "1470438956"
    
    isChangedDecision43_myRule_42_Inquiry_Date_c{"🔀 <em></em><br/>isChangedDecision43_myRule_42_Inquiry_Date_c"}:::decisions
    click isChangedDecision43_myRule_42_Inquiry_Date_c "#ischangeddecision43_myrule_42_inquiry_date_c" "4207722831"
    
    isChangedDecision5_myRule_4_Decon_Provider_c{"🔀 <em></em><br/>isChangedDecision5_myRule_4_Decon_Provider_c"}:::decisions
    click isChangedDecision5_myRule_4_Decon_Provider_c "#ischangeddecision5_myrule_4_decon_provider_c" "2226424085"
    
    isChangedDecision9_myRule_8_Notification_Date_c{"🔀 <em></em><br/>isChangedDecision9_myRule_8_Notification_Date_c"}:::decisions
    click isChangedDecision9_myRule_8_Notification_Date_c "#ischangeddecision9_myrule_8_notification_date_c" "512843973"
    
    myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
    click myDecision "#mydecision" "3096440446"
    
    myDecision11{"🔀 <em></em><br/>myDecision11"}:::decisions
    click myDecision11 "#mydecision11" "2836487500"
    
    myDecision14{"🔀 <em></em><br/>myDecision14"}:::decisions
    click myDecision14 "#mydecision14" "3431606105"
    
    myDecision16{"🔀 <em></em><br/>myDecision16"}:::decisions
    click myDecision16 "#mydecision16" "2831417398"
    
    myDecision18{"🔀 <em></em><br/>myDecision18"}:::decisions
    click myDecision18 "#mydecision18" "3839862820"
    
    myDecision22{"🔀 <em></em><br/>myDecision22"}:::decisions
    click myDecision22 "#mydecision22" "1221471043"
    
    myDecision28{"🔀 <em></em><br/>myDecision28"}:::decisions
    click myDecision28 "#mydecision28" "3895293958"
    
    myDecision3{"🔀 <em></em><br/>myDecision3"}:::decisions
    click myDecision3 "#mydecision3" "1794808203"
    
    myDecision32{"🔀 <em></em><br/>myDecision32"}:::decisions
    click myDecision32 "#mydecision32" "140592020"
    
    myDecision35{"🔀 <em></em><br/>myDecision35"}:::decisions
    click myDecision35 "#mydecision35" "569859015"
    
    myDecision38{"🔀 <em></em><br/>myDecision38"}:::decisions
    click myDecision38 "#mydecision38" "2302774211"
    
    myDecision41{"🔀 <em></em><br/>myDecision41"}:::decisions
    click myDecision41 "#mydecision41" "4103808233"
    
    myDecision44{"🔀 <em></em><br/>myDecision44"}:::decisions
    click myDecision44 "#mydecision44" "4186513113"
    
    myDecision46{"🔀 <em></em><br/>myDecision46"}:::decisions
    click myDecision46 "#mydecision46" "3348291974"
    
    myDecision7{"🔀 <em></em><br/>myDecision7"}:::decisions
    click myDecision7 "#mydecision7" "1784122900"
    
    myPostWaitDecision_myWaitEvent_myWait_myRule_45_event_0{"🔀 <em></em><br/>myPostWaitDecision_myWaitEvent_myWait_myRule_45_event_0"}:::decisions
    click myPostWaitDecision_myWaitEvent_myWait_myRule_45_event_0 "#mypostwaitdecision_mywaitevent_mywait_myrule_45_event_0" "2265058884"
    
    myPostWaitDecision_myWaitEvent_myWait_myRule_47_event_0{"🔀 <em></em><br/>myPostWaitDecision_myWaitEvent_myWait_myRule_47_event_0"}:::decisions
    click myPostWaitDecision_myWaitEvent_myWait_myRule_47_event_0 "#mypostwaitdecision_mywaitevent_mywait_myrule_47_event_0" "962656909"
    
    myPreWaitDecision_myWait_myRule_45{"🔀 <em></em><br/>myPreWaitDecision_myWait_myRule_45"}:::decisions
    click myPreWaitDecision_myWait_myRule_45 "#myprewaitdecision_mywait_myrule_45" "3628373799"
    
    myPreWaitDecision_myWait_myRule_47{"🔀 <em></em><br/>myPreWaitDecision_myWait_myRule_47"}:::decisions
    click myPreWaitDecision_myWait_myRule_47 "#myprewaitdecision_mywait_myrule_47" "4191557046"
    
    myRule_15_pmetdec{"🔀 <em></em><br/>Previously Met Decision"}:::decisions
    click myRule_15_pmetdec "#myrule_15_pmetdec" "3375012876"
    
    myRule_17_pmetdec{"🔀 <em></em><br/>Previously Met Decision"}:::decisions
    click myRule_17_pmetdec "#myrule_17_pmetdec" "3717599234"
    
    myRule_45_pmetdec{"🔀 <em></em><br/>Previously Met Decision"}:::decisions
    click myRule_45_pmetdec "#myrule_45_pmetdec" "2531170912"
    
    myRule_47_pmetdec{"🔀 <em></em><br/>Previously Met Decision"}:::decisions
    click myRule_47_pmetdec "#myrule_47_pmetdec" "3505461195"
    
    myRule_15_A1[("➕ <em></em><br/>Operations Case")]:::recordCreates
    click myRule_15_A1 "#myrule_15_a1" "553026163"
    
    myRule_17_A1[("➕ <em></em><br/>Distributions Case")]:::recordCreates
    click myRule_17_A1 "#myrule_17_a1" "1335313926"
    
    myRule_19_A1[("➕ <em></em><br/>Transitions Case")]:::recordCreates
    click myRule_19_A1 "#myrule_19_a1" "2778015396"
    
    myRule_23_A1[("➕ <em></em><br/>Transition Saved Case")]:::recordCreates
    click myRule_23_A1 "#myrule_23_a1" "4168796000"
    
    myRule_23_A3[("➕ <em></em><br/>Billing Case")]:::recordCreates
    click myRule_23_A3 "#myrule_23_a3" "1968760877"
    
    myRule_33_A1[("➕ <em></em><br/>Billing Case")]:::recordCreates
    click myRule_33_A1 "#myrule_33_a1" "3936248336"
    
    myRule_36_A1[("➕ <em></em><br/>Billing Case")]:::recordCreates
    click myRule_36_A1 "#myrule_36_a1" "2232386745"
    
    myRule_39_A1[("➕ <em></em><br/>Compliance Case")]:::recordCreates
    click myRule_39_A1 "#myrule_39_a1" "3950364327"
    
    myRule_39_A2[("➕ <em></em><br/>Billing Case")]:::recordCreates
    click myRule_39_A2 "#myrule_39_a2" "2821590483"
    
    myRule_4_A1[("➕ <em></em><br/>CST Case")]:::recordCreates
    click myRule_4_A1 "#myrule_4_a1" "2247410705"
    
    myWaitEvent_myWait_myRule_45_event_0_SA1[("➕ <em></em><br/>Transition Case")]:::recordCreates
    click myWaitEvent_myWait_myRule_45_event_0_SA1 "#mywaitevent_mywait_myrule_45_event_0_sa1" "4054086375"
    
    myWaitEvent_myWait_myRule_47_event_0_SA1[("➕ <em></em><br/>Compliance Case")]:::recordCreates
    click myWaitEvent_myWait_myRule_47_event_0_SA1 "#mywaitevent_mywait_myrule_47_event_0_sa1" "3888734924"
    
    myRule_12_A1[("🛠️ <em></em><br/>Plan Transition Pending")]:::recordUpdates
    click myRule_12_A1 "#myrule_12_a1" "2843275966"
    
    myRule_23_A2[("🛠️ <em></em><br/>Plan Active")]:::recordUpdates
    click myRule_23_A2 "#myrule_23_a2" "136807078"
    
    myRule_29_A1[("🛠️ <em></em><br/>Populate Decon Resume Date")]:::recordUpdates
    click myRule_29_A1 "#myrule_29_a1" "3328371856"
    
    myRule_33_A2[("🛠️ <em></em><br/>Update Transition Status")]:::recordUpdates
    click myRule_33_A2 "#myrule_33_a2" "1967998049"
    
    myRule_36_A2[("🛠️ <em></em><br/>Update Transition Status")]:::recordUpdates
    click myRule_36_A2 "#myrule_36_a2" "3594238632"
    
    myRule_42_A1[("🛠️ <em></em><br/>Plan Pending Abandonment")]:::recordUpdates
    click myRule_42_A1 "#myrule_42_a1" "3275976252"
    
    myRule_8_A1[("🛠️ <em></em><br/>Plan Transition Pending")]:::recordUpdates
    click myRule_8_A1 "#myrule_8_a1" "2636080465"
    
    myRule_1_A1 --> myDecision3
    myWaitAssignment_myWait_myRule_45 --> myDecision
    myWaitAssignment_myWait_myRule_47 --> myPreWaitDecision_myWait_myRule_45
    myWaitEvent_myWait_myRule_45_event_0_postWaitExecutionAssignment --> myWait_myRule_45
    myWaitEvent_myWait_myRule_47_event_0_postWaitExecutionAssignment --> myWait_myRule_47
    isChangedDecision13_myRule_12_Notification_Date_c --> |"isChangedRule_13_myRule_12_Notification_Date_c"| isChangedDecision20_myRule_19_Final_Testing_Calculations_Complete_c
    isChangedDecision13_myRule_12_Notification_Date_c --> |"default"| isChangedDecision20_myRule_19_Final_Testing_Calculations_Complete_c
    isChangedDecision20_myRule_19_Final_Testing_Calculations_Complete_c --> |"isChangedRule_20_myRule_19_Final_Testing_Calculations_Complete_c"| isChangedDecision24_myRule_23_Saved_Date_c
    isChangedDecision20_myRule_19_Final_Testing_Calculations_Complete_c --> |"default"| isChangedDecision24_myRule_23_Saved_Date_c
    isChangedDecision24_myRule_23_Saved_Date_c --> |"isChangedRule_24_myRule_23_Saved_Date_c"| isChangedDecision25_myRule_23_Status_c
    isChangedDecision24_myRule_23_Saved_Date_c --> |"default"| isChangedDecision25_myRule_23_Status_c
    isChangedDecision25_myRule_23_Status_c --> |"isChangedRule_25_myRule_23_Status_c"| isChangedDecision26_myRule_23_Transition_Cancelled_c
    isChangedDecision25_myRule_23_Status_c --> |"default"| isChangedDecision26_myRule_23_Transition_Cancelled_c
    isChangedDecision26_myRule_23_Transition_Cancelled_c --> |"isChangedRule_26_myRule_23_Transition_Cancelled_c"| isChangedDecision34_myRule_33_Transition_Complete_c
    isChangedDecision26_myRule_23_Transition_Cancelled_c --> |"default"| isChangedDecision34_myRule_33_Transition_Complete_c
    isChangedDecision2_myRule_1_Inquiry_Date_c --> |"isChangedRule_2_myRule_1_Inquiry_Date_c"| isChangedDecision5_myRule_4_Decon_Provider_c
    isChangedDecision2_myRule_1_Inquiry_Date_c --> |"default"| isChangedDecision5_myRule_4_Decon_Provider_c
    isChangedDecision34_myRule_33_Transition_Complete_c --> |"isChangedRule_34_myRule_33_Transition_Complete_c"| isChangedDecision37_myRule_36_Transition_Complete_c
    isChangedDecision34_myRule_33_Transition_Complete_c --> |"default"| isChangedDecision37_myRule_36_Transition_Complete_c
    isChangedDecision37_myRule_36_Transition_Complete_c --> |"isChangedRule_37_myRule_36_Transition_Complete_c"| isChangedDecision40_myRule_39_Status_c
    isChangedDecision37_myRule_36_Transition_Complete_c --> |"default"| isChangedDecision40_myRule_39_Status_c
    isChangedDecision40_myRule_39_Status_c --> |"isChangedRule_40_myRule_39_Status_c"| isChangedDecision43_myRule_42_Inquiry_Date_c
    isChangedDecision40_myRule_39_Status_c --> |"default"| isChangedDecision43_myRule_42_Inquiry_Date_c
    isChangedDecision43_myRule_42_Inquiry_Date_c --> |"isChangedRule_43_myRule_42_Inquiry_Date_c"| myPreWaitDecision_myWait_myRule_47
    isChangedDecision43_myRule_42_Inquiry_Date_c --> |"default"| myPreWaitDecision_myWait_myRule_47
    isChangedDecision5_myRule_4_Decon_Provider_c --> |"isChangedRule_5_myRule_4_Decon_Provider_c"| isChangedDecision9_myRule_8_Notification_Date_c
    isChangedDecision5_myRule_4_Decon_Provider_c --> |"default"| isChangedDecision9_myRule_8_Notification_Date_c
    isChangedDecision9_myRule_8_Notification_Date_c --> |"isChangedRule_9_myRule_8_Notification_Date_c"| isChangedDecision13_myRule_12_Notification_Date_c
    isChangedDecision9_myRule_8_Notification_Date_c --> |"default"| isChangedDecision13_myRule_12_Notification_Date_c
    myDecision --> |"Inquiry Date"| myRule_1_A1
    myDecision --> |"default"| myDecision3
    myDecision11 --> |"Term/Term Merger Notification Given"| myRule_12_A1
    myDecision11 --> |"default"| myDecision14
    myDecision14 --> |"Final Valuation Requested"| myRule_15_pmetdec
    myDecision14 --> |"default"| myDecision16
    myDecision16 --> |"Final Valuation Complete"| myRule_17_pmetdec
    myDecision16 --> |"default"| myDecision18
    myDecision18 --> |"Final Testing | Calcs"| myRule_19_A1
    myDecision18 --> |"default"| myDecision22
    myDecision22 --> |"Transition Saved"| myRule_23_A1
    myDecision22 --> |"default"| myDecision28
    myDecision28 --> |"14 Days After Notification"| myRule_29_A1
    myDecision28 --> |"default"| myDecision32
    myDecision3 --> |"Decon Provider Equals Decimal"| myRule_4_A1
    myDecision3 --> |"default"| myDecision7
    myDecision32 --> |"Transition Complete"| myRule_33_A1
    myDecision32 --> |"default"| myDecision35
    myDecision35 --> |"Abandoned Plan Complete"| myRule_36_A1
    myDecision35 --> |"default"| myDecision38
    myDecision38 --> |"Abandoned Plan Canceled"| myRule_39_A1
    myDecision38 --> |"default"| myDecision41
    myDecision41 --> |"Pending Abandonment"| myRule_42_A1
    myDecision41 --> |"default"| myDecision44
    myDecision44 --> |"Notification Date Populated"| myRule_45_pmetdec
    myDecision44 --> |"default"| myDecision46
    myDecision46 --> |"Abandoned Plan Letter Notice"| myRule_47_pmetdec
    myDecision46 --> |"default"| END_myDecision46
    myDecision7 --> |"Decon Notification Given"| myRule_8_A1
    myDecision7 --> |"default"| myDecision11
    myPostWaitDecision_myWaitEvent_myWait_myRule_45_event_0 --> |"myPostWaitRule_myWaitEvent_myWait_myRule_45_event_0"| myWaitEvent_myWait_myRule_45_event_0_SA1
    myPostWaitDecision_myWaitEvent_myWait_myRule_45_event_0 --> |"default"| myWaitEvent_myWait_myRule_45_event_0_postWaitExecutionAssignment
    myPostWaitDecision_myWaitEvent_myWait_myRule_47_event_0 --> |"myPostWaitRule_myWaitEvent_myWait_myRule_47_event_0"| myWaitEvent_myWait_myRule_47_event_0_SA1
    myPostWaitDecision_myWaitEvent_myWait_myRule_47_event_0 --> |"default"| myWaitEvent_myWait_myRule_47_event_0_postWaitExecutionAssignment
    myPreWaitDecision_myWait_myRule_45 --> |"myPreWaitRule_myWait_myRule_45"| myDecision
    myPreWaitDecision_myWait_myRule_45 --> |"default"| myWaitAssignment_myWait_myRule_45
    myPreWaitDecision_myWait_myRule_47 --> |"myPreWaitRule_myWait_myRule_47"| myPreWaitDecision_myWait_myRule_45
    myPreWaitDecision_myWait_myRule_47 --> |"default"| myWaitAssignment_myWait_myRule_47
    myRule_15_pmetdec --> |"Previously Met - Null"| myRule_15_A1
    myRule_15_pmetdec --> |"Previously Met - Prev"| myDecision16
    myRule_15_pmetdec --> |"Not Previously Met"| myRule_15_A1
    myRule_17_pmetdec --> |"Previously Met - Null"| myRule_17_A1
    myRule_17_pmetdec --> |"Previously Met - Prev"| myDecision18
    myRule_17_pmetdec --> |"Not Previously Met"| myRule_17_A1
    myRule_45_pmetdec --> |"Previously Met - Null"| myWait_myRule_45
    myRule_45_pmetdec --> |"Not Previously Met"| myWait_myRule_45
    myRule_47_pmetdec --> |"Previously Met - Null"| myWait_myRule_47
    myRule_47_pmetdec --> |"Not Previously Met"| myWait_myRule_47
    myRule_15_A1 --> myDecision16
    myRule_17_A1 --> myDecision18
    myRule_19_A1 --> myDecision22
    myRule_23_A1 --> myRule_23_A2
    myRule_23_A3 --> myDecision28
    myRule_33_A1 --> myRule_33_A2
    myRule_36_A1 --> myRule_36_A2
    myRule_39_A1 --> myRule_39_A2
    myRule_39_A2 --> myDecision41
    myRule_4_A1 --> myDecision7
    myWaitEvent_myWait_myRule_45_event_0_SA1 --> myWaitEvent_myWait_myRule_45_event_0_postWaitExecutionAssignment
    myWaitEvent_myWait_myRule_47_event_0_SA1 --> myWaitEvent_myWait_myRule_47_event_0_postWaitExecutionAssignment
    myRule_12_A1 --> END_myRule_12_A1
    myRule_23_A2 --> myRule_23_A3
    myRule_29_A1 --> myDecision32
    myRule_33_A2 --> myDecision35
    myRule_36_A2 --> myDecision38
    myRule_42_A1 --> myDecision44
    myRule_8_A1 --> END_myRule_8_A1
    END_myDecision46(( END )):::endClass
    END_myRule_12_A1(( END )):::endClass
    END_myRule_8_A1(( END )):::endClass
    
    
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
    |Process Type| Workflow|
    |Label|Transitions | Master Workflow|
    |Status|Obsolete|
    |Description|Steps to take when Transitions are created, saved and completed. Changed Inquiry Date node to Notification Date|
    |Interview Label|Transitions_Master_Workflow-52_InterviewLabel|
    |Start Element Reference|[isChangedDecision2_myRule_1_Inquiry_Date_c](#ischangeddecision2_myrule_1_inquiry_date_c)|
    | Object Type (PM)|Transition__c|
    | Object Variable (PM)|myVariable_current|
    | Old Object Variable (PM)|myVariable_old|
    | Trigger Type (PM)|onAllChanges|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |cancelWaits|String|✅|⬜|✅|<!-- -->|<!-- -->|
    |myVariable_current|SObject|⬜|✅|✅|Transition__c|<!-- -->|
    |myVariable_old|SObject|⬜|✅|⬜|Transition__c|<!-- -->|
    |myWaitEvent_myWait_myRule_45_event_0_postActionExecutionVariable|Boolean|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |myWaitEvent_myWait_myRule_47_event_0_postActionExecutionVariable|Boolean|⬜|⬜|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |formula_10_myRule_8_5604119799|DateTime|NOW()|<!-- -->|
    |formula_21_myRule_19_A1_0135772274|String|"Final Testing Completed - " &  {!myVariable_current.Plan__r.Name}|<!-- -->|
    |formula_27_myRule_23_A1_5726280651|String|{!myVariable_current.Plan__r.Name}  & "Plan Saved"|<!-- -->|
    |formula_30_myRule_29_2629480531|Date|TODAY() - 14|<!-- -->|
    |formula_31_myRule_29_A1_0599513549|Date|TODAY()|<!-- -->|
    |formula_6_myRule_4_A1_9933240300|String|"Decimal Inc selected as Decon Provider for " + {!myVariable_current.Account__r.Name}|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Notify CE Team|
    |Action Type|Email Alert|
    |Action Name|Transition__c.Deconversion_Notification_alert_to_Sales|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Transition__c.Deconversion_Notification_alert_to_Sales|
    |Email Alert Selection (PM)|Deconversion_Notification_alert_to_Sales|
    | SObject Row Id (input)|myVariable_current.Id|
    |Connector|[myDecision3](#mydecision3)|
    
    
    ### myWaitAssignment_myWait_myRule_45
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|[myWaitAssignment_myWait_myRule_45](#mywaitassignment_mywait_myrule_45)|
    |Connector|[myDecision](#mydecision)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |cancelWaits| Add|myWait_myRule_45|
    
    
    
    
    ### myWaitAssignment_myWait_myRule_47
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|[myWaitAssignment_myWait_myRule_47](#mywaitassignment_mywait_myrule_47)|
    |Connector|[myPreWaitDecision_myWait_myRule_45](#myprewaitdecision_mywait_myrule_45)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |cancelWaits| Add|myWait_myRule_47|
    
    
    
    
    ### myWaitEvent_myWait_myRule_45_event_0_postWaitExecutionAssignment
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|[myWaitEvent_myWait_myRule_45_event_0_postWaitExecutionAssignment](#mywaitevent_mywait_myrule_45_event_0_postwaitexecutionassignment)|
    |Connector|myWait_myRule_45|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |myWaitEvent_myWait_myRule_45_event_0_postActionExecutionVariable| Assign|✅|
    
    
    
    
    ### myWaitEvent_myWait_myRule_47_event_0_postWaitExecutionAssignment
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|[myWaitEvent_myWait_myRule_47_event_0_postWaitExecutionAssignment](#mywaitevent_mywait_myrule_47_event_0_postwaitexecutionassignment)|
    |Connector|myWait_myRule_47|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |myWaitEvent_myWait_myRule_47_event_0_postActionExecutionVariable| Assign|✅|
    
    
    
    
    ### isChangedDecision13_myRule_12_Notification_Date_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision13_myRule_12_Notification_Date_c](#ischangeddecision13_myrule_12_notification_date_c)|
    |Default Connector|[isChangedDecision20_myRule_19_Final_Testing_Calculations_Complete_c](#ischangeddecision20_myrule_19_final_testing_calculations_complete_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_13_myRule_12_Notification_Date_c (isChangedRule_13_myRule_12_Notification_Date_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision20_myRule_19_Final_Testing_Calculations_Complete_c](#ischangeddecision20_myrule_19_final_testing_calculations_complete_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Notification_Date__c| Not Equal To|myVariable_current.Notification_Date__c|
    
    
    
    
    ### isChangedDecision20_myRule_19_Final_Testing_Calculations_Complete_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision20_myRule_19_Final_Testing_Calculations_Complete_c](#ischangeddecision20_myrule_19_final_testing_calculations_complete_c)|
    |Default Connector|[isChangedDecision24_myRule_23_Saved_Date_c](#ischangeddecision24_myrule_23_saved_date_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_20_myRule_19_Final_Testing_Calculations_Complete_c (isChangedRule_20_myRule_19_Final_Testing_Calculations_Complete_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision24_myRule_23_Saved_Date_c](#ischangeddecision24_myrule_23_saved_date_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Final_Testing_Calculations_Complete__c| Not Equal To|myVariable_current.Final_Testing_Calculations_Complete__c|
    
    
    
    
    ### isChangedDecision24_myRule_23_Saved_Date_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision24_myRule_23_Saved_Date_c](#ischangeddecision24_myrule_23_saved_date_c)|
    |Default Connector|[isChangedDecision25_myRule_23_Status_c](#ischangeddecision25_myrule_23_status_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_24_myRule_23_Saved_Date_c (isChangedRule_24_myRule_23_Saved_Date_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision25_myRule_23_Status_c](#ischangeddecision25_myrule_23_status_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Saved_Date__c| Not Equal To|myVariable_current.Saved_Date__c|
    
    
    
    
    ### isChangedDecision25_myRule_23_Status_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision25_myRule_23_Status_c](#ischangeddecision25_myrule_23_status_c)|
    |Default Connector|[isChangedDecision26_myRule_23_Transition_Cancelled_c](#ischangeddecision26_myrule_23_transition_cancelled_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_25_myRule_23_Status_c (isChangedRule_25_myRule_23_Status_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision26_myRule_23_Transition_Cancelled_c](#ischangeddecision26_myrule_23_transition_cancelled_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Status__c| Not Equal To|myVariable_current.Status__c|
    
    
    
    
    ### isChangedDecision26_myRule_23_Transition_Cancelled_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision26_myRule_23_Transition_Cancelled_c](#ischangeddecision26_myrule_23_transition_cancelled_c)|
    |Default Connector|[isChangedDecision34_myRule_33_Transition_Complete_c](#ischangeddecision34_myrule_33_transition_complete_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_26_myRule_23_Transition_Cancelled_c (isChangedRule_26_myRule_23_Transition_Cancelled_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision34_myRule_33_Transition_Complete_c](#ischangeddecision34_myrule_33_transition_complete_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Transition_Cancelled__c| Not Equal To|myVariable_current.Transition_Cancelled__c|
    
    
    
    
    ### isChangedDecision2_myRule_1_Inquiry_Date_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision2_myRule_1_Inquiry_Date_c](#ischangeddecision2_myrule_1_inquiry_date_c)|
    |Default Connector|[isChangedDecision5_myRule_4_Decon_Provider_c](#ischangeddecision5_myrule_4_decon_provider_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_2_myRule_1_Inquiry_Date_c (isChangedRule_2_myRule_1_Inquiry_Date_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision5_myRule_4_Decon_Provider_c](#ischangeddecision5_myrule_4_decon_provider_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Inquiry_Date__c| Not Equal To|myVariable_current.Inquiry_Date__c|
    
    
    
    
    ### isChangedDecision34_myRule_33_Transition_Complete_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision34_myRule_33_Transition_Complete_c](#ischangeddecision34_myrule_33_transition_complete_c)|
    |Default Connector|[isChangedDecision37_myRule_36_Transition_Complete_c](#ischangeddecision37_myrule_36_transition_complete_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_34_myRule_33_Transition_Complete_c (isChangedRule_34_myRule_33_Transition_Complete_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision37_myRule_36_Transition_Complete_c](#ischangeddecision37_myrule_36_transition_complete_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Transition_Complete__c| Not Equal To|myVariable_current.Transition_Complete__c|
    
    
    
    
    ### isChangedDecision37_myRule_36_Transition_Complete_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision37_myRule_36_Transition_Complete_c](#ischangeddecision37_myrule_36_transition_complete_c)|
    |Default Connector|[isChangedDecision40_myRule_39_Status_c](#ischangeddecision40_myrule_39_status_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_37_myRule_36_Transition_Complete_c (isChangedRule_37_myRule_36_Transition_Complete_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision40_myRule_39_Status_c](#ischangeddecision40_myrule_39_status_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Transition_Complete__c| Not Equal To|myVariable_current.Transition_Complete__c|
    
    
    
    
    ### isChangedDecision40_myRule_39_Status_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision40_myRule_39_Status_c](#ischangeddecision40_myrule_39_status_c)|
    |Default Connector|[isChangedDecision43_myRule_42_Inquiry_Date_c](#ischangeddecision43_myrule_42_inquiry_date_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_40_myRule_39_Status_c (isChangedRule_40_myRule_39_Status_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision43_myRule_42_Inquiry_Date_c](#ischangeddecision43_myrule_42_inquiry_date_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Status__c| Not Equal To|myVariable_current.Status__c|
    
    
    
    
    ### isChangedDecision43_myRule_42_Inquiry_Date_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision43_myRule_42_Inquiry_Date_c](#ischangeddecision43_myrule_42_inquiry_date_c)|
    |Default Connector|[myPreWaitDecision_myWait_myRule_47](#myprewaitdecision_mywait_myrule_47)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_43_myRule_42_Inquiry_Date_c (isChangedRule_43_myRule_42_Inquiry_Date_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myPreWaitDecision_myWait_myRule_47](#myprewaitdecision_mywait_myrule_47)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Inquiry_Date__c| Not Equal To|myVariable_current.Inquiry_Date__c|
    
    
    
    
    ### isChangedDecision5_myRule_4_Decon_Provider_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision5_myRule_4_Decon_Provider_c](#ischangeddecision5_myrule_4_decon_provider_c)|
    |Default Connector|[isChangedDecision9_myRule_8_Notification_Date_c](#ischangeddecision9_myrule_8_notification_date_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_5_myRule_4_Decon_Provider_c (isChangedRule_5_myRule_4_Decon_Provider_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision9_myRule_8_Notification_Date_c](#ischangeddecision9_myrule_8_notification_date_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Decon_Provider__c| Not Equal To|myVariable_current.Decon_Provider__c|
    
    
    
    
    ### isChangedDecision9_myRule_8_Notification_Date_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision9_myRule_8_Notification_Date_c](#ischangeddecision9_myrule_8_notification_date_c)|
    |Default Connector|[isChangedDecision13_myRule_12_Notification_Date_c](#ischangeddecision13_myrule_12_notification_date_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_9_myRule_8_Notification_Date_c (isChangedRule_9_myRule_8_Notification_Date_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision13_myRule_12_Notification_Date_c](#ischangeddecision13_myrule_12_notification_date_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Notification_Date__c| Not Equal To|myVariable_current.Notification_Date__c|
    
    
    
    
    ### myDecision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision](#mydecision)|
    |Default Connector|[myDecision3](#mydecision3)|
    |Default Connector Label|default|
    |Index (PM)|numberValue: 0<br/>|
    
    
    #### Rule myRule_1 (Inquiry Date)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_A1](#myrule_1_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|isChangedRule_2_myRule_1_Inquiry_Date_c| Equal To|✅|
    |2|myVariable_current.Inquiry_Date__c| Is Null|⬜|
    
    
    
    
    ### myDecision11
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision11](#mydecision11)|
    |Default Connector|[myDecision14](#mydecision14)|
    |Default Connector Label|default|
    |Index (PM)|3|
    
    
    #### Rule myRule_12 (Term/Term Merger Notification Given)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_12_A1](#myrule_12_a1)|
    |Condition Logic|1 AND 2 AND (3 OR 4)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|isChangedRule_13_myRule_12_Notification_Date_c| Equal To|✅|
    |2|myVariable_current.Notification_Date__c| Is Null|⬜|
    |3|myVariable_current.Transition_Type__c| Equal To|Termination|
    |4|myVariable_current.Transition_Type__c| Equal To|Termination/Merger|
    
    
    
    
    ### myDecision14
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision14](#mydecision14)|
    |Default Connector|[myDecision16](#mydecision16)|
    |Default Connector Label|default|
    |Index (PM)|4|
    
    
    #### Rule myRule_15 (Final Valuation Requested)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_15_pmetdec](#myrule_15_pmetdec)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Final_Valuation_Requested__c| Is Null|⬜|
    
    
    
    
    ### myDecision16
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision16](#mydecision16)|
    |Default Connector|[myDecision18](#mydecision18)|
    |Default Connector Label|default|
    |Index (PM)|5|
    
    
    #### Rule myRule_17 (Final Valuation Complete)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_17_pmetdec](#myrule_17_pmetdec)|
    |Condition Logic|(1 OR 2) AND 3|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Transition_Type__c| Equal To|Termination|
    |2|myVariable_current.Transition_Type__c| Equal To|Termination/Merger|
    |3|myVariable_current.Final_Valuation_Completed__c| Is Null|⬜|
    
    
    
    
    ### myDecision18
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision18](#mydecision18)|
    |Default Connector|[myDecision22](#mydecision22)|
    |Default Connector Label|default|
    |Index (PM)|6|
    
    
    #### Rule myRule_19 (Final Testing | Calcs)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_19_A1](#myrule_19_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|isChangedRule_20_myRule_19_Final_Testing_Calculations_Complete_c| Equal To|✅|
    |2|myVariable_current.Final_Testing_Calculations_Complete__c| Is Null|⬜|
    
    
    
    
    ### myDecision22
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision22](#mydecision22)|
    |Default Connector|[myDecision28](#mydecision28)|
    |Default Connector Label|default|
    |Index (PM)|7|
    
    
    #### Rule myRule_23 (Transition Saved)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_23_A1](#myrule_23_a1)|
    |Condition Logic|(1 AND 2) OR (3 AND 4) OR (5 AND 6)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|isChangedRule_24_myRule_23_Saved_Date_c| Equal To|✅|
    |2|myVariable_current.Saved_Date__c| Is Null|⬜|
    |3|isChangedRule_25_myRule_23_Status_c| Equal To|✅|
    |4|myVariable_current.Status__c| Equal To|Cancelled|
    |5|isChangedRule_26_myRule_23_Transition_Cancelled_c| Equal To|✅|
    |6|myVariable_current.Transition_Cancelled__c| Is Null|⬜|
    
    
    
    
    ### myDecision28
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision28](#mydecision28)|
    |Default Connector|[myDecision32](#mydecision32)|
    |Default Connector Label|default|
    |Index (PM)|8|
    
    
    #### Rule myRule_29 (14 Days After Notification)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_29_A1](#myrule_29_a1)|
    |Condition Logic|1 AND 3 AND 4 AND (2 OR 5)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Notification_Date__c| Equal To|formula_30_myRule_29_2629480531|
    |2|myVariable_current.Transition_Type__c| Equal To|Deconversion|
    |3|myVariable_current.Save_Attempts_Exhausted__c| Is Null|✅|
    |4|myVariable_current.Saved_Date__c| Is Null|✅|
    |5|myVariable_current.Transition_Type__c| Equal To|Termination|
    
    
    
    
    ### myDecision3
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision3](#mydecision3)|
    |Default Connector|[myDecision7](#mydecision7)|
    |Default Connector Label|default|
    |Index (PM)|1|
    
    
    #### Rule myRule_4 (Decon Provider Equals Decimal)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_4_A1](#myrule_4_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|isChangedRule_5_myRule_4_Decon_Provider_c| Equal To|✅|
    |2|myVariable_current.Decon_Provider__c| Contains|0013700000JH68l|
    
    
    
    
    ### myDecision32
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision32](#mydecision32)|
    |Default Connector|[myDecision35](#mydecision35)|
    |Default Connector Label|default|
    |Index (PM)|9|
    
    
    #### Rule myRule_33 (Transition Complete)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_33_A1](#myrule_33_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|isChangedRule_34_myRule_33_Transition_Complete_c| Equal To|✅|
    |2|myVariable_current.Transition_Complete__c| Is Null|⬜|
    |3|myVariable_current.Transition_Type__c| Not Equal To|Abandonment|
    
    
    
    
    ### myDecision35
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision35](#mydecision35)|
    |Default Connector|[myDecision38](#mydecision38)|
    |Default Connector Label|default|
    |Index (PM)|10|
    
    
    #### Rule myRule_36 (Abandoned Plan Complete)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_36_A1](#myrule_36_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|isChangedRule_37_myRule_36_Transition_Complete_c| Equal To|✅|
    |2|myVariable_current.Transition_Complete__c| Is Null|⬜|
    |3|myVariable_current.Transition_Type__c| Equal To|Abandonment|
    
    
    
    
    ### myDecision38
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision38](#mydecision38)|
    |Default Connector|[myDecision41](#mydecision41)|
    |Default Connector Label|default|
    |Index (PM)|11|
    
    
    #### Rule myRule_39 (Abandoned Plan Canceled)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_39_A1](#myrule_39_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Transition_Type__c| Equal To|Abandonment|
    |2|isChangedRule_40_myRule_39_Status_c| Equal To|✅|
    |3|myVariable_current.Status__c| Equal To|Cancelled|
    
    
    
    
    ### myDecision41
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision41](#mydecision41)|
    |Default Connector|[myDecision44](#mydecision44)|
    |Default Connector Label|default|
    |Index (PM)|12|
    
    
    #### Rule myRule_42 (Pending Abandonment)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_42_A1](#myrule_42_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Transition_Type__c| Equal To|Abandonment|
    |2|isChangedRule_43_myRule_42_Inquiry_Date_c| Equal To|✅|
    |3|myVariable_current.Inquiry_Date__c| Is Null|⬜|
    
    
    
    
    ### myDecision44
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision44](#mydecision44)|
    |Default Connector|[myDecision46](#mydecision46)|
    |Default Connector Label|default|
    |Index (PM)|13|
    
    
    #### Rule myRule_45 (Notification Date Populated)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_45_pmetdec](#myrule_45_pmetdec)|
    |Condition Logic|1 AND 2 AND 3 AND 4|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Notification_Date__c| Is Null|⬜|
    |2|myVariable_current.Save_Owner__c| Is Null|✅|
    |3|myVariable_current.Save_Attempts_Exhausted__c| Is Null|✅|
    |4|myVariable_current.Transition_Type__c| Equal To|Termination|
    
    
    
    
    ### myDecision46
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision46](#mydecision46)|
    |Default Connector Label|default|
    |Index (PM)|14|
    
    
    #### Rule myRule_47 (Abandoned Plan Letter Notice)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_47_pmetdec](#myrule_47_pmetdec)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Transition_Type__c| Equal To|Abandonment|
    |2|myVariable_current.Abandoned_Letter_Mailed__c| Is Null|⬜|
    
    
    
    
    ### myDecision7
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision7](#mydecision7)|
    |Default Connector|[myDecision11](#mydecision11)|
    |Default Connector Label|default|
    |Index (PM)|2|
    
    
    #### Rule myRule_8 (Decon Notification Given)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_8_A1](#myrule_8_a1)|
    |Condition Logic|((1 AND 2) OR (2 AND 6)) AND 3 AND 4 AND 5|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|isChangedRule_9_myRule_8_Notification_Date_c| Equal To|✅|
    |2|myVariable_current.Notification_Date__c| Is Null|⬜|
    |3|myVariable_current.Transition_Type__c| Equal To|Deconversion|
    |4|myVariable_current.Save_Attempts_Exhausted__c| Is Null|✅|
    |5|myVariable_current.Save_Owner__c| Is Null|✅|
    |6|myVariable_current.CreatedDate| Equal To|formula_10_myRule_8_5604119799|
    
    
    
    
    ### myPostWaitDecision_myWaitEvent_myWait_myRule_45_event_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myPostWaitDecision_myWaitEvent_myWait_myRule_45_event_0](#mypostwaitdecision_mywaitevent_mywait_myrule_45_event_0)|
    |Default Connector|[myWaitEvent_myWait_myRule_45_event_0_postWaitExecutionAssignment](#mywaitevent_mywait_myrule_45_event_0_postwaitexecutionassignment)|
    |Default Connector Label|default|
    
    
    #### Rule myPostWaitRule_myWaitEvent_myWait_myRule_45_event_0 (myPostWaitRule_myWaitEvent_myWait_myRule_45_event_0)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myWaitEvent_myWait_myRule_45_event_0_SA1](#mywaitevent_mywait_myrule_45_event_0_sa1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Notification_Date__c| Is Null|⬜|
    
    
    
    
    ### myPostWaitDecision_myWaitEvent_myWait_myRule_47_event_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myPostWaitDecision_myWaitEvent_myWait_myRule_47_event_0](#mypostwaitdecision_mywaitevent_mywait_myrule_47_event_0)|
    |Default Connector|[myWaitEvent_myWait_myRule_47_event_0_postWaitExecutionAssignment](#mywaitevent_mywait_myrule_47_event_0_postwaitexecutionassignment)|
    |Default Connector Label|default|
    
    
    #### Rule myPostWaitRule_myWaitEvent_myWait_myRule_47_event_0 (myPostWaitRule_myWaitEvent_myWait_myRule_47_event_0)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myWaitEvent_myWait_myRule_47_event_0_SA1](#mywaitevent_mywait_myrule_47_event_0_sa1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Abandoned_Letter_Mailed__c| Is Null|⬜|
    
    
    
    
    ### myPreWaitDecision_myWait_myRule_45
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myPreWaitDecision_myWait_myRule_45](#myprewaitdecision_mywait_myrule_45)|
    |Default Connector|[myWaitAssignment_myWait_myRule_45](#mywaitassignment_mywait_myrule_45)|
    |Default Connector Label|default|
    
    
    #### Rule myPreWaitRule_myWait_myRule_45 (myPreWaitRule_myWait_myRule_45)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myDecision](#mydecision)|
    |Condition Logic|1 AND 2 AND 3 AND 4|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Notification_Date__c| Is Null|⬜|
    |2|myVariable_current.Save_Owner__c| Is Null|✅|
    |3|myVariable_current.Save_Attempts_Exhausted__c| Is Null|✅|
    |4|myVariable_current.Transition_Type__c| Equal To|Termination|
    
    
    
    
    ### myPreWaitDecision_myWait_myRule_47
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myPreWaitDecision_myWait_myRule_47](#myprewaitdecision_mywait_myrule_47)|
    |Default Connector|[myWaitAssignment_myWait_myRule_47](#mywaitassignment_mywait_myrule_47)|
    |Default Connector Label|default|
    
    
    #### Rule myPreWaitRule_myWait_myRule_47 (myPreWaitRule_myWait_myRule_47)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myPreWaitDecision_myWait_myRule_45](#myprewaitdecision_mywait_myrule_45)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Transition_Type__c| Equal To|Abandonment|
    |2|myVariable_current.Abandoned_Letter_Mailed__c| Is Null|⬜|
    
    
    
    
    ### myRule_15_pmetdec
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Previously Met Decision|
    |Default Connector|[myRule_15_A1](#myrule_15_a1)|
    |Default Connector Label|Not Previously Met|
    
    
    #### Rule myRule_15_pmetnullrule (Previously Met - Null)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_15_A1](#myrule_15_a1)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|✅|
    
    
    
    
    #### Rule myRule_15_pmetrule (Previously Met - Prev)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myDecision16](#mydecision16)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old.Final_Valuation_Requested__c| Is Null|⬜|
    
    
    
    
    ### myRule_17_pmetdec
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Previously Met Decision|
    |Default Connector|[myRule_17_A1](#myrule_17_a1)|
    |Default Connector Label|Not Previously Met|
    
    
    #### Rule myRule_17_pmetnullrule (Previously Met - Null)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_17_A1](#myrule_17_a1)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|✅|
    
    
    
    
    #### Rule myRule_17_pmetrule (Previously Met - Prev)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myDecision18](#mydecision18)|
    |Condition Logic|(1 OR 2) AND 3|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old.Transition_Type__c| Equal To|Termination|
    |2|myVariable_old.Transition_Type__c| Equal To|Termination/Merger|
    |3|myVariable_old.Final_Valuation_Completed__c| Is Null|⬜|
    
    
    
    
    ### myRule_45_pmetdec
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Previously Met Decision|
    |Default Connector|myWait_myRule_45|
    |Default Connector Label|Not Previously Met|
    
    
    #### Rule myRule_45_pmetnullrule (Previously Met - Null)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|myWait_myRule_45|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|✅|
    
    
    
    
    #### Rule myRule_45_pmetrule (Previously Met - Prev)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|1 AND 2 AND 3 AND 4|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old.Notification_Date__c| Is Null|⬜|
    |2|myVariable_old.Save_Owner__c| Is Null|✅|
    |3|myVariable_old.Save_Attempts_Exhausted__c| Is Null|✅|
    |4|myVariable_old.Transition_Type__c| Equal To|Termination|
    
    
    
    
    ### myRule_47_pmetdec
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Previously Met Decision|
    |Default Connector|myWait_myRule_47|
    |Default Connector Label|Not Previously Met|
    
    
    #### Rule myRule_47_pmetnullrule (Previously Met - Null)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|myWait_myRule_47|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|✅|
    
    
    
    
    #### Rule myRule_47_pmetrule (Previously Met - Prev)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old.Transition_Type__c| Equal To|Abandonment|
    |2|myVariable_old.Abandoned_Letter_Mailed__c| Is Null|⬜|
    
    
    
    
    ### myRule_15_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Operations Case|
    |Connector|[myDecision16](#mydecision16)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|myVariable_current.Account__c|
    |BusinessHoursId|01m37000000L07U|
    |Case_Source__c|Internal|
    |Case_Type__c|Single Case|
    |Category__c|Plan Review|
    |Department__c|Reconciliations & Withdrawals|
    |Description|Check ETF reconciliation|
    |Is_Ancillary_Billing_Needed__c|No|
    |Origin|Operations Inbox|
    |OwnerId|005Ho00000AnvFJ|
    |Plan__c|myVariable_current.Plan__c|
    |Priority|Medium|
    |RecordTypeId|012Ho000000NtUeIAK|
    |Request_Reason__c|Proactive Outreach|
    |Subject|Check ETF reconciliation|
    
    
    
    
    ### myRule_17_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Distributions Case|
    |Connector|[myDecision18](#mydecision18)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|myVariable_current.Account__c|
    |BusinessHoursId|01m37000000L07P|
    |Case_Source__c|Internal|
    |Case_Type__c|Single Case|
    |Category__c|General Non Essential|
    |Department__c|Reconciliations & Withdrawals|
    |Description|Process all pending distribution requests – final valuation complete|
    |Origin|Distributions|
    |OwnerId|005Ho00000AnvFJ|
    |Plan__c|myVariable_current.Plan__c|
    |Priority|Medium|
    |RecordTypeId|012Ho000000NtUeIAK|
    |Status|New|
    |Sub_Category__c|Other|
    |Subject|Final Valuation Complete|
    
    
    
    
    ### myRule_19_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Transitions Case|
    |Connector|[myDecision22](#mydecision22)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|myVariable_current.Account__c|
    |BusinessHoursId|01m37000000L07P|
    |Case_Source__c|Internal|
    |Case_Type__c|Single Case|
    |Category__c|Calculation|
    |Department__c|Transitions|
    |Description|Final testing has been completed by the compliance department and the final valuation can proceed.|
    |Inquiry_Source__c|Compliance|
    |Origin|Internal|
    |OwnerId|00500000006xUkf|
    |Plan__c|myVariable_current.Plan__c|
    |Priority|Medium|
    |RecordTypeId|01237000000XwY4|
    |Sub_Category__c|General Info|
    |Subject|formula_21_myRule_19_A1_0135772274|
    
    
    
    
    ### myRule_23_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Transition Saved Case|
    |Connector|[myRule_23_A2](#myrule_23_a2)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|myVariable_current.Account__c|
    |Category__c|Decon - General Research|
    |Department__c|Transitions|
    |Description|Please take the necessary steps to move the plan out of the transitions process.|
    |Origin|Internal|
    |OwnerId|00500000006xUkf|
    |Plan__c|myVariable_current.Plan__c|
    |RecordTypeId|01237000000XwY4|
    |Status|New|
    |Subject|formula_27_myRule_23_A1_5726280651|
    
    
    
    
    ### myRule_23_A3
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Billing Case|
    |Connector|[myDecision28](#mydecision28)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|myVariable_current.Account__c|
    |BusinessHoursId|01m00000000000J|
    |Case_Source__c|Internal|
    |Case_Type__c|Single Case|
    |Category__c|Billing|
    |Department__c|Billing|
    |Description|Reactivate Subscription Terms as of the date of this notice - Transition was saved|
    |Origin|Billing Inbox|
    |OwnerId|00500000006yEak|
    |Plan__c|myVariable_current.Plan__c|
    |Priority|High|
    |RecordTypeId|01237000000Xu63|
    |Status|New|
    |Sub_Category__c|Billing schedule|
    |Subject|401(k) Transition Saved - Restart Billing Subscription|
    
    
    
    
    ### myRule_33_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Billing Case|
    |Connector|[myRule_33_A2](#myrule_33_a2)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|myVariable_current.Account__c|
    |BusinessHoursId|01m37000000PC36|
    |Case_Source__c|Internal|
    |Case_Type__c|Single Case|
    |Category__c|Billing|
    |Department__c|Billing|
    |Description|Update the following in NetSuite: 1) Plan Status – Terminated 2) Termination Date – Date case was created|
    |Origin|Billing Inbox|
    |OwnerId|00500000006yEak|
    |Plan__c|myVariable_current.Plan__c|
    |Priority|High|
    |RecordTypeId|01237000000Xu63|
    |Status|New|
    |Sub_Category__c|Billing Suspension|
    |Subject|401(k) Plan Termination Complete|
    
    
    
    
    ### myRule_36_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Billing Case|
    |Connector|[myRule_36_A2](#myrule_36_a2)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|myVariable_current.Account__c|
    |BusinessHoursId|01m00000000000J|
    |Case_Source__c|Internal|
    |Case_Type__c|Single Case|
    |Category__c|Billing|
    |Department__c|Billing|
    |Description|In Paradigm: 1) Remove subscription term(s), 2) Terminate billing subscription. In NetSuite, update the following: 1) Subscription Status = Terminated, 2) Plan Status = Abandoned, 3) Transition Date = Date of this notification|
    |Origin|Billing Inbox|
    |OwnerId|00500000006yEak|
    |Plan__c|myVariable_current.Plan__c|
    |Priority|High|
    |RecordTypeId|01237000000Xu63|
    |Status|New|
    |Sub_Category__c|Billing Suspension|
    |Subject|401(k) Plan Abandonment Complete|
    
    
    
    
    ### myRule_39_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Compliance Case|
    |Connector|[myRule_39_A2](#myrule_39_a2)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|myVariable_current.Account__c|
    |BusinessHoursId|01m37000000L06l|
    |Case_Source__c|Internal|
    |Case_Type__c|Single Case|
    |Category__c|Abandoned Plan Review|
    |Department__c|Compliance|
    |Description|Abandoned Transition has been marked as Canceled|
    |Origin|Compliance|
    |OwnerId|00537000001tb5H|
    |Plan__c|myVariable_current.Plan__c|
    |Priority|Medium|
    |RecordTypeId|01237000000Xs6BAAS|
    |Status|New|
    |Subject|Abandoned Plan Transition Canceled|
    
    
    
    
    ### myRule_39_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Billing Case|
    |Connector|[myDecision41](#mydecision41)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|myVariable_current.Account__c|
    |BusinessHoursId|01m37000000PC36|
    |Case_Source__c|Internal|
    |Case_Type__c|Single Case|
    |Category__c|Abandoned Plan Review|
    |Department__c|Billing|
    |Description|Review plan in NetSuite - abandoned transition has been canceled|
    |Origin|Internal|
    |OwnerId|00500000006yEak|
    |Plan__c|myVariable_current.Plan__c|
    |Priority|Medium|
    |RecordTypeId|01237000000Xu63AAC|
    |Status|New|
    |Subject|Abandoned Plan Transition Canceled|
    
    
    
    
    ### myRule_4_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|CST Case|
    |Connector|[myDecision7](#mydecision7)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |BusinessHoursId|01m1G000000XaE6|
    |Category__c|Transitions|
    |Department__c|Servicing|
    |Origin|Internal|
    |OwnerId|00GHo000002SIjQ|
    |Priority|Medium|
    |RecordTypeId|01237000000AZr4AAG|
    |Status|New|
    |Subject|formula_6_myRule_4_A1_9933240300|
    
    
    
    
    ### myWaitEvent_myWait_myRule_45_event_0_SA1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Transition Case|
    |Connector|[myWaitEvent_myWait_myRule_45_event_0_postWaitExecutionAssignment](#mywaitevent_mywait_myrule_45_event_0_postwaitexecutionassignment)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|myVariable_current.Account__c|
    |BusinessHoursId|01m37000000L07P|
    |Case_Source__c|Internal|
    |Category__c|Transitions|
    |Department__c|Transitions|
    |Description|This case is a reminder to follow up on the Transition|
    |Inquiry_Source__c|CST|
    |Origin|Internal|
    |OwnerId|00500000006xUkf|
    |Plan__c|myVariable_current.Plan__c|
    |Priority|Medium|
    |RecordTypeId|01237000000XwY4|
    |Sub_Category__c|Inquiry|
    |Subject|Follow Up with New Transition Inquiry|
    
    
    
    
    ### myWaitEvent_myWait_myRule_47_event_0_SA1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Compliance Case|
    |Connector|[myWaitEvent_myWait_myRule_47_event_0_postWaitExecutionAssignment](#mywaitevent_mywait_myrule_47_event_0_postwaitexecutionassignment)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|myVariable_current.Account__c|
    |BusinessHoursId|01m37000000L06l|
    |Case_Source__c|Internal|
    |Case_Type__c|Single Case|
    |Category__c|Plan Termination|
    |Department__c|Compliance|
    |Description|Review Plan - it has been 30 days since the Abandoned Plan Letter Notice was mailed|
    |Origin|Compliance|
    |OwnerId|00537000001tb5H|
    |Plan__c|myVariable_current.Plan__c|
    |Priority|Medium|
    |RecordTypeId|01237000000Xs6BAAS|
    |Status|New|
    |Sub_Category__c|Abandoned 30 Day Notice|
    |Subject|Abandoned Plan - 30 Days from Abandoned Notice|
    
    
    
    
    ### myRule_12_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Plan__c|
    |Label|Plan Transition Pending|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Transition__c].Plan|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Plan__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Status__c|Transition Pending|
    
    
    
    
    ### myRule_23_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Plan__c|
    |Label|Plan Active|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Transition__c].Plan|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myRule_23_A3](#myrule_23_a3)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Plan__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Status__c|Active|
    
    
    
    
    ### myRule_29_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Transition__c|
    |Label|Populate Decon Resume Date|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Transition__c]|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myDecision32](#mydecision32)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |OwnerId|00500000006xUkfAAE|
    |Save_Attempts_Exhausted__c|formula_31_myRule_29_A1_0599513549|
    
    
    
    
    ### myRule_33_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Transition__c|
    |Label|Update Transition Status|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Transition__c]|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myDecision35](#mydecision35)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Status__c|Complete|
    
    
    
    
    ### myRule_36_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Transition__c|
    |Label|Update Transition Status|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Transition__c]|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myDecision38](#mydecision38)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Status__c|Complete|
    
    
    
    
    ### myRule_42_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Plan__c|
    |Label|Plan Pending Abandonment|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Transition__c].Plan|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myDecision44](#mydecision44)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Plan__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Status__c|Pending Abandonment|
    
    
    
    
    ### myRule_8_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Plan__c|
    |Label|Plan Transition Pending|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Transition__c].Plan|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Plan__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Status__c|Transition Pending|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

