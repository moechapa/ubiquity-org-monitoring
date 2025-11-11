# Proposal_Scheduled_Expire_Simply_Proposals history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Proposal_Scheduled_Expire_Simply_Proposals-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Scheduled</b>"]):::startClass
    click START "#general-information" "2530029526"
    
    send_email_report("📧 <em></em><br/>send email report"):::actionCalls
    click send_email_report "#send_email_report" "4096122922"
    
    Add_to_collection[\"🟰 <em></em><br/>Add to collection"/]:::assignments
    click Add_to_collection "#add_to_collection" "1351013683"
    
    Add_to_de_queue_collection[\"🟰 <em></em><br/>Add to de queue collection"/]:::assignments
    click Add_to_de_queue_collection "#add_to_de_queue_collection" "3578354530"
    
    Add_to_sallus_update_collection[\"🟰 <em></em><br/>Add to sallus update collection"/]:::assignments
    click Add_to_sallus_update_collection "#add_to_sallus_update_collection" "220206806"
    
    Assign_Expiration[\"🟰 <em></em><br/>Assign Expiration"/]:::assignments
    click Assign_Expiration "#assign_expiration" "1884501302"
    
    Assign_Expiration_Sallus[\"🟰 <em></em><br/>Assign Expiration Sallus"/]:::assignments
    click Assign_Expiration_Sallus "#assign_expiration_sallus" "1029353269"
    
    Concluding_Datetime_Assignment[\"🟰 <em></em><br/>Concluding Datetime Assignment"/]:::assignments
    click Concluding_Datetime_Assignment "#concluding_datetime_assignment" "3420579678"
    
    Reset_Loops[\"🟰 <em></em><br/>Reset Loops"/]:::assignments
    click Reset_Loops "#reset_loops" "1987251514"
    
    Uncheck_Queue[\"🟰 <em></em><br/>Uncheck Queue"/]:::assignments
    click Uncheck_Queue "#uncheck_queue" "1832414301"
    
    Wipe_Initial_Proposal_Batch[\"🟰 <em></em><br/>Wipe Initial Proposal Batch"/]:::assignments
    click Wipe_Initial_Proposal_Batch "#wipe_initial_proposal_batch" "2483551143"
    
    Filter_Out_Sallus{{"🔽 <em>Collection Filter</em><br/>Filter Out Sallus"}}:::collectionProcessors
    click Filter_Out_Sallus "#filter_out_sallus" "1829999064"
    
    Isolate_Sallus_Proposals{{"🔽 <em>Collection Filter</em><br/>Isolate Sallus Proposals"}}:::collectionProcessors
    click Isolate_Sallus_Proposals "#isolate_sallus_proposals" "513208492"
    
    Expire_or_Remove_Queue_Check{"🔀 <em></em><br/>Expire or Remove Queue Check"}:::decisions
    click Expire_or_Remove_Queue_Check "#expire_or_remove_queue_check" "3428410391"
    
    LIMIT_100{"🔀 <em></em><br/>LIMIT 100"}:::decisions
    click LIMIT_100 "#limit_100" "1340962844"
    
    Proposals_Found{"🔀 <em></em><br/>Proposals Found?"}:::decisions
    click Proposals_Found "#proposals_found" "735935265"
    
    Props_Needing_Dequeue_Check{"🔀 <em></em><br/>Props Needing Dequeue Check"}:::decisions
    click Props_Needing_Dequeue_Check "#props_needing_dequeue_check" "1746591152"
    
    Sallus_Proposal_Check{"🔀 <em></em><br/>Sallus Proposal Check"}:::decisions
    click Sallus_Proposal_Check "#sallus_proposal_check" "692956352"
    
    Limit_Collection_Loop{{"🔁 <em></em><br/>Limit Collection Loop"}}:::loops
    click Limit_Collection_Loop "#limit_collection_loop" "1788455638"
    
    Sallus_Loop{{"🔁 <em></em><br/>Sallus Loop"}}:::loops
    click Sallus_Loop "#sallus_loop" "3649829580"
    
    Update_Proposal_Loop{{"🔁 <em></em><br/>Update Proposal Loop"}}:::loops
    click Update_Proposal_Loop "#update_proposal_loop" "3669942988"
    
    Grab_Proposals_60_Days_Old[("🔍 <em></em><br/>Grab Proposals 60+ Days Old")]:::recordLookups
    click Grab_Proposals_60_Days_Old "#grab_proposals_60_days_old" "1596765030"
    
    Expire_Sallus[("🛠️ <em></em><br/>Expire Sallus")]:::recordUpdates
    click Expire_Sallus "#expire_sallus" "925491672"
    
    Update_Current_Proposal[("🛠️ <em></em><br/>Update Current Proposal")]:::recordUpdates
    click Update_Current_Proposal "#update_current_proposal" "200144404"
    
    Update_dequeue_collection[("🛠️ <em></em><br/>Update dequeue collection")]:::recordUpdates
    click Update_dequeue_collection "#update_dequeue_collection" "4209398371"
    
    send_email_report --> END_send_email_report
    Add_to_collection --> Limit_Collection_Loop
    Add_to_de_queue_collection --> Update_Proposal_Loop
    Add_to_sallus_update_collection --> Sallus_Loop
    Assign_Expiration --> Update_Current_Proposal
    Assign_Expiration_Sallus --> Add_to_sallus_update_collection
    Concluding_Datetime_Assignment --> send_email_report
    Reset_Loops --> Update_Proposal_Loop
    Uncheck_Queue --> Add_to_de_queue_collection
    Wipe_Initial_Proposal_Batch --> Update_Proposal_Loop
    Filter_Out_Sallus --> Limit_Collection_Loop
    Isolate_Sallus_Proposals --> Sallus_Proposal_Check
    Expire_or_Remove_Queue_Check --> |"Remove Queue"| Uncheck_Queue
    Expire_or_Remove_Queue_Check --> |"Default Outcome"| Assign_Expiration
    LIMIT_100 --> |"100 Reached"| Limit_Collection_Loop
    LIMIT_100 --> |"Default Outcome"| Add_to_collection
    Proposals_Found --> |"Props Were Found"| Isolate_Sallus_Proposals
    Proposals_Found --> |"Default Outcome"| END_Proposals_Found
    Props_Needing_Dequeue_Check --> |"Dequeue Collection not Empty"| Update_dequeue_collection
    Props_Needing_Dequeue_Check --> |"Default Outcome"| Concluding_Datetime_Assignment
    Sallus_Proposal_Check --> |"Sallus Spotted"| Sallus_Loop
    Sallus_Proposal_Check --> |"Default Outcome"| Limit_Collection_Loop
    Limit_Collection_Loop --> |"For Each"|LIMIT_100
    Limit_Collection_Loop ---> |"After Last"|Wipe_Initial_Proposal_Batch
    Sallus_Loop --> |"For Each"|Assign_Expiration_Sallus
    Sallus_Loop ---> |"After Last"|Expire_Sallus
    Update_Proposal_Loop --> |"For Each"|Expire_or_Remove_Queue_Check
    Update_Proposal_Loop ---> |"After Last"|Props_Needing_Dequeue_Check
    Grab_Proposals_60_Days_Old --> Proposals_Found
    Expire_Sallus --> Filter_Out_Sallus
    Update_Current_Proposal --> Loop_Pause
    Update_dequeue_collection --> Concluding_Datetime_Assignment
    START -->  Grab_Proposals_60_Days_Old
    END_send_email_report(( END )):::endClass
    END_Proposals_Found(( END )):::endClass
    
    
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
    |Trigger Type| Scheduled|
    |Label|Proposal | Scheduled | Expire Partner Proposals|
    |Status|Active|
    |Description|Changed "entry" get for simply proposals so any that were modified in the last two months are excluded|
    |Environments|Default|
    |Interview Label|Proposal | Scheduled | Expire Simply Proposals {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Grab_Proposals_60_Days_Old](#grab_proposals_60_days_old)|
    |Next Node|[Grab_Proposals_60_Days_Old](#grab_proposals_60_days_old)|
    
    
    #### Schedules
    
    |Frequency|Start Date|Start Time|
    |:-- |:--:|:--: |
    |Daily|Jul 26, 2023|23:00|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |currentItem_Filter_Out_Sallus|SObject|⬜|⬜|⬜|Proposal__c|<!-- -->|
    |currentItem_Isolate_Sallus_Proposals|SObject|⬜|⬜|⬜|Proposal__c|<!-- -->|
    |currentItemFromSourceCollection|SObject|⬜|⬜|⬜|Proposal__c|<!-- -->|
    |expiredProp|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |InitialProposalBatch|SObject|✅|⬜|⬜|Proposal__c|<!-- -->|
    |loopCounter|Number|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |props2DeQueue|SObject|✅|⬜|⬜|Proposal__c|<!-- -->|
    |props2Update|SObject|✅|⬜|⬜|Proposal__c|<!-- -->|
    |sallusProps2Update|SObject|✅|⬜|⬜|Proposal__c|<!-- -->|
    |terminationDateTime|DateTime|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |updateLoop|Number|⬜|⬜|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |expiredPropInfoForm|String|TEXT({!Update_Proposal_Loop.Referrer_Type__c}) + " - " + {!Update_Proposal_Loop.Client_Company_Name__c} + " - Created on: " + TEXT({!Update_Proposal_Loop.CreatedDate}) + BR()|<!-- -->|
    |expiredPropInfoFormSallus|String|"Sallus Advisor" + " - " + {!Sallus_Loop.Client_Company_Name__c} + " - Created on: " + TEXT({!Sallus_Loop.CreatedDate}) + BR()|<!-- -->|
    |expiryNotes|String|"Auto expired on " + TEXT({!$Flow.CurrentDate}) + BR() + BR() +<br/>{!Update_Proposal_Loop.Proposal_Notes__c}|<!-- -->|
    |expiryNotesSallus|String|"Auto expired on " + TEXT({!$Flow.CurrentDate}) + BR() + BR() +<br/>{!Sallus_Loop.Proposal_Notes__c}|<!-- -->|
    |NowMinus59Mins|DateTime|{!$Flow.CurrentDateTime}-(59/60/24)|<!-- -->|
    |sixMonthsAgo|Date|TODAY() - 180|<!-- -->|
    |twoMonthsAgo|Date|TODAY()-60|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### send_email_report
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|send email report|
    |Action Type|Email Simple|
    |Action Name|emailSimple|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|emailSimple|
    |Email Addresses (input)|ccampbell@myubiquity.com|
    |Sender Type (input)|DefaultWorkflowUser|
    |Email Subject (input)|Simply proposals expired report|
    |Email Body (input)|postExpirationSummary|
    
    
    ### Add_to_collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add to collection|
    |Connector|[Limit_Collection_Loop](#limit_collection_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |props2Update| Add|[Limit_Collection_Loop](#limit_collection_loop)|
    |loopCounter| Add|1|
    
    
    
    
    ### Add_to_de_queue_collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add to de queue collection|
    |Connector|[Update_Proposal_Loop](#update_proposal_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |props2DeQueue| Add|[Update_Proposal_Loop](#update_proposal_loop)|
    
    
    
    
    ### Add_to_sallus_update_collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add to sallus update collection|
    |Connector|[Sallus_Loop](#sallus_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |sallusProps2Update| Add|[Sallus_Loop](#sallus_loop)|
    
    
    
    
    ### Assign_Expiration
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Expiration|
    |Connector|[Update_Current_Proposal](#update_current_proposal)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Update_Proposal_Loop.Stage_Flag__c| Assign|Expired Save/Share|
    |Update_Proposal_Loop.Status__c| Assign|Expired Save/Share|
    |Update_Proposal_Loop.Proposal_Notes__c| Assign|expiryNotes|
    |expiredProp| Add|expiredPropInfoForm|
    |updateLoop| Add|1|
    
    
    
    
    ### Assign_Expiration_Sallus
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Expiration Sallus|
    |Connector|[Add_to_sallus_update_collection](#add_to_sallus_update_collection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Sallus_Loop.Stage_Flag__c| Assign|Expired Save/Share|
    |Sallus_Loop.Proposal_Notes__c| Assign|expiryNotesSallus|
    |expiredProp| Add|expiredPropInfoFormSallus|
    |Sallus_Loop.Status__c| Assign|Expired Save/Share|
    
    
    
    
    ### Concluding_Datetime_Assignment
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Concluding Datetime Assignment|
    |Connector|[send_email_report](#send_email_report)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |terminationDateTime| Assign|$Flow.CurrentDateTime|
    
    
    
    
    ### Reset_Loops
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Reset Loops|
    |Connector|[Update_Proposal_Loop](#update_proposal_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |updateLoop| Assign|numberValue: 0<br/>|
    
    
    
    
    ### Uncheck_Queue
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Uncheck Queue|
    |Connector|[Add_to_de_queue_collection](#add_to_de_queue_collection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Update_Proposal_Loop.Queued__c| Assign|⬜|
    
    
    
    
    ### Wipe_Initial_Proposal_Batch
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Wipe Initial Proposal Batch|
    |Connector|[Update_Proposal_Loop](#update_proposal_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |InitialProposalBatch| Remove All|<!-- -->|
    
    
    
    
    ### Filter_Out_Sallus
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Collection Processor|
    |Label|Filter Out Sallus|
    |Element Subtype|FilterCollectionProcessor|
    |Assign Next Value To Reference|currentItem_Filter_Out_Sallus|
    |Collection Processor Type|FilterCollectionProcessor|
    |Collection Reference|InitialProposalBatch|
    |Connector|[Limit_Collection_Loop](#limit_collection_loop)|
    |Condition Logic|and|
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|currentItem_Filter_Out_Sallus.Plan_ID_First_Synced__c| Is Null|⬜|
    
    
    
    
    ### Isolate_Sallus_Proposals
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Collection Processor|
    |Label|Isolate Sallus Proposals|
    |Element Subtype|FilterCollectionProcessor|
    |Assign Next Value To Reference|currentItem_Isolate_Sallus_Proposals|
    |Collection Processor Type|FilterCollectionProcessor|
    |Collection Reference|InitialProposalBatch|
    |Connector|[Sallus_Proposal_Check](#sallus_proposal_check)|
    |Condition Logic|and|
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|currentItem_Isolate_Sallus_Proposals.Sallus_ID__c| Is Null|⬜|
    
    
    
    
    ### Expire_or_Remove_Queue_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Expire or Remove Queue Check|
    |Default Connector|[Assign_Expiration](#assign_expiration)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Remove_Queue (Remove Queue)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Uncheck_Queue](#uncheck_queue)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Update_Proposal_Loop.Plan_ID_First_Synced__c| Greater Than|twoMonthsAgo|
    |2|Update_Proposal_Loop.Queued__c| Equal To|✅|
    
    
    
    
    ### LIMIT_100
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|LIMIT 100|
    |Default Connector|[Add_to_collection](#add_to_collection)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule X100_Reached (100 Reached)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Limit_Collection_Loop](#limit_collection_loop)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|loopCounter| Greater Than Or Equal To|100|
    
    
    
    
    ### Proposals_Found
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Proposals Found?|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Props_Were_Found (Props Were Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Isolate_Sallus_Proposals](#isolate_sallus_proposals)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|InitialProposalBatch| Is Null|⬜|
    
    
    
    
    ### Props_Needing_Dequeue_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Props Needing Dequeue Check|
    |Default Connector|[Concluding_Datetime_Assignment](#concluding_datetime_assignment)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Dequeue_Collection_not_Empty (Dequeue Collection not Empty)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_dequeue_collection](#update_dequeue_collection)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|props2DeQueue| Is Null|⬜|
    
    
    
    
    ### Sallus_Proposal_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Sallus Proposal Check|
    |Default Connector|[Limit_Collection_Loop](#limit_collection_loop)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Sallus_Spotted (Sallus Spotted)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Sallus_Loop](#sallus_loop)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|[Isolate_Sallus_Proposals](#isolate_sallus_proposals)| Is Null|⬜|
    
    
    
    
    ### Limit_Collection_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Limit Collection Loop|
    |Collection Reference|[Filter_Out_Sallus](#filter_out_sallus)|
    |Iteration Order|Asc|
    |Next Value Connector|[LIMIT_100](#limit_100)|
    |No More Values Connector|[Wipe_Initial_Proposal_Batch](#wipe_initial_proposal_batch)|
    
    
    ### Sallus_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Sallus Loop|
    |Collection Reference|[Isolate_Sallus_Proposals](#isolate_sallus_proposals)|
    |Iteration Order|Asc|
    |Next Value Connector|[Assign_Expiration_Sallus](#assign_expiration_sallus)|
    |No More Values Connector|[Expire_Sallus](#expire_sallus)|
    
    
    ### Update_Proposal_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Update Proposal Loop|
    |Collection Reference|props2Update|
    |Iteration Order|Asc|
    |Next Value Connector|[Expire_or_Remove_Queue_Check](#expire_or_remove_queue_check)|
    |No More Values Connector|[Props_Needing_Dequeue_Check](#props_needing_dequeue_check)|
    
    
    ### Grab_Proposals_60_Days_Old
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Proposal__c|
    |Label|Grab Proposals 60+ Days Old|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|InitialProposalBatch|
    |Queried Fields|- Id<br/>- Stage_Flag__c<br/>- Status__c<br/>- Proposal_Notes__c<br/>- Referrer_Type__c<br/>- Client_Company_Name__c<br/>- CreatedDate<br/>- Sallus_ID__c<br/>- Plan_ID_First_Synced__c<br/>- Queued__c<br/>|
    |Connector|[Proposals_Found](#proposals_found)|
    
    
    #### Filters (logic: **(((1 AND 2 AND 6 AND 7 AND 8 AND 16) OR (12 and 13)) AND 3 AND 4 AND 5 AND 9 AND 10 AND 11) OR (14 AND 15 AND 1)**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Service_Option__c| Contains|Simply Retirement|
    |2|Plan_ID_First_Synced__c| Less Than|twoMonthsAgo|
    |3|Status__c| Not Equal To|Expired Save/Share|
    |4|Status__c| Not Equal To|Purchased|
    |5|Status__c| Not Equal To|Submitted for Purchase|
    |6|Queued__c| Equal To|⬜|
    |7|Principal_Opportunity_Id__c| Is Null|<!-- -->|
    |8|Principal_Id__c| Is Null|<!-- -->|
    |9|Stage_Flag__c| Not Equal To|Marketing|
    |10|Stage_Flag__c| Not Equal To|Expired Save/Share|
    |11|Stage_Flag__c| Not Equal To|Quick Quote|
    |12|Sallus_ID__c| Is Null|<!-- -->|
    |13|CreatedDate| Less Than Or Equal To|sixMonthsAgo|
    |14|Plan_ID_First_Synced__c| Greater Than|twoMonthsAgo|
    |15|Queued__c| Equal To|✅|
    |16|LastModifiedDate| Less Than|twoMonthsAgo|
    
    
    
    
    ### Expire_Sallus
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Expire Sallus|
    |Input Reference|sallusProps2Update|
    |Connector|[Filter_Out_Sallus](#filter_out_sallus)|
    
    
    ### Update_Current_Proposal
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Current Proposal|
    |Input Reference|[Update_Proposal_Loop](#update_proposal_loop)|
    |Connector|Loop_Pause|
    
    
    ### Update_dequeue_collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update dequeue collection|
    |Input Reference|props2DeQueue|
    |Connector|[Concluding_Datetime_Assignment](#concluding_datetime_assignment)|
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

