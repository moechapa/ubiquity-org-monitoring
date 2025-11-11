# Proposal_Scheduled_Grab_ZIP_From_Account history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Proposal_Scheduled_Grab_ZIP_From_Account-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Scheduled</b>"]):::startClass
    click START "#general-information" "4064831934"
    
    Add_1_to_Loop_Count[\"🟰 <em></em><br/>Add 1 to Loop Count"/]:::assignments
    click Add_1_to_Loop_Count "#add_1_to_loop_count" "988672980"
    
    Assign_New_Zip[\"🟰 <em></em><br/>Assign New Zip"/]:::assignments
    click Assign_New_Zip "#assign_new_zip" "545755618"
    
    Check_off_Props_Updated[\"🟰 <em></em><br/>Check off Props Updated"/]:::assignments
    click Check_off_Props_Updated "#check_off_props_updated" "4157664379"
    
    Set_Loop_to_0[\"🟰 <em></em><br/>Set Loop to 0"/]:::assignments
    click Set_Loop_to_0 "#set_loop_to_0" "568524570"
    
    Set_Loop_to_0_0[\"🟰 <em></em><br/>Set Loop to 0"/]:::assignments
    click Set_Loop_to_0_0 "#set_loop_to_0_0" "3930480859"
    
    Does_Zip_Need_Update{"🔀 <em></em><br/>Does Zip Need Update?"}:::decisions
    click Does_Zip_Need_Update "#does_zip_need_update" "3752665464"
    
    Proposals_Found{"🔀 <em></em><br/>Proposals Found?"}:::decisions
    click Proposals_Found "#proposals_found" "742154917"
    
    Reached_50_Loops{"🔀 <em></em><br/>Reached 50 Loops?"}:::decisions
    click Reached_50_Loops "#reached_50_loops" "2475160141"
    
    Initial_Proposal_Loop{{"🔁 <em></em><br/>Initial Proposal Loop"}}:::loops
    click Initial_Proposal_Loop "#initial_proposal_loop" "468217266"
    
    Grab_Proposals_w_Ops[("🔍 <em></em><br/>Grab Proposals w/ Ops")]:::recordLookups
    click Grab_Proposals_w_Ops "#grab_proposals_w_ops" "1910239939"
    
    Update_Current_Proposal[("🛠️ <em></em><br/>Update Current Proposal")]:::recordUpdates
    click Update_Current_Proposal "#update_current_proposal" "1284225757"
    
    Add_1_to_Loop_Count --> Reached_50_Loops
    Assign_New_Zip --> Update_Current_Proposal
    Check_off_Props_Updated --> Add_1_to_Loop_Count
    Set_Loop_to_0 --> Initial_Proposal_Loop
    Set_Loop_to_0_0 --> Initial_Proposal_Loop
    Does_Zip_Need_Update --> |"No Account Found"| Add_1_to_Loop_Count
    Does_Zip_Need_Update --> |"Update Needed"| Assign_New_Zip
    Does_Zip_Need_Update --> |"No Update Needed"| Add_1_to_Loop_Count
    Proposals_Found --> |"Props Were Found"| Set_Loop_to_0
    Proposals_Found --> |"Default Outcome"| END_Proposals_Found
    Reached_50_Loops --> |"Cap Reached/Prop Updated"| Loop_Pause
    Reached_50_Loops --> |"Continue Loop"| Initial_Proposal_Loop
    Initial_Proposal_Loop --> |"For Each"|Does_Zip_Need_Update
    Initial_Proposal_Loop ---> |"After Last"|END
    Grab_Proposals_w_Ops --> Proposals_Found
    Update_Current_Proposal --> Check_off_Props_Updated
    START -->  Grab_Proposals_w_Ops
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
    |Label|Proposal | Scheduled | Grab ZIP From Account|
    |Status|Active|
    |Environments|Default|
    |Interview Label|Proposal {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Grab_Proposals_w_Ops](#grab_proposals_w_ops)|
    |Next Node|[Grab_Proposals_w_Ops](#grab_proposals_w_ops)|
    
    
    #### Schedules
    
    |Frequency|Start Date|Start Time|
    |:-- |:--:|:--: |
    |Daily|Sep 8, 2022|01:00|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |InitialProposalBatch|SObject|✅|⬜|⬜|Proposal__c|<!-- -->|
    |LoopCounter|Number|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |PropsUpdated|Boolean|⬜|⬜|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |AccountZipFirst5|Number|VALUE(LEFT({!Initial_Proposal_Loop.Opportunity__r.Account.BillingPostalCode},5))|<!-- -->|
    |AccountZipValid|Boolean|LEN({!Initial_Proposal_Loop.Opportunity__r.Account.BillingPostalCode})>=5|<!-- -->|
    |NowMinus59Mins|DateTime|{!$Flow.CurrentDateTime}-(59/60/24)|<!-- -->|
    |ThreeMonthsAgo|Date|TODAY()-90|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Add_1_to_Loop_Count
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add 1 to Loop Count|
    |Connector|[Reached_50_Loops](#reached_50_loops)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |LoopCounter| Add|1|
    
    
    
    
    ### Assign_New_Zip
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign New Zip|
    |Connector|[Update_Current_Proposal](#update_current_proposal)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Initial_Proposal_Loop.Company_Zip_Postal_Code__c| Assign|AccountZipFirst5|
    
    
    
    
    ### Check_off_Props_Updated
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Check off Props Updated|
    |Connector|[Add_1_to_Loop_Count](#add_1_to_loop_count)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |PropsUpdated| Assign|✅|
    
    
    
    
    ### Set_Loop_to_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Set Loop to 0|
    |Connector|[Initial_Proposal_Loop](#initial_proposal_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |LoopCounter| Assign|numberValue: 0<br/>|
    |PropsUpdated| Assign|⬜|
    
    
    
    
    ### Set_Loop_to_0_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Set Loop to 0|
    |Connector|[Initial_Proposal_Loop](#initial_proposal_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |LoopCounter| Assign|numberValue: 0<br/>|
    |PropsUpdated| Assign|⬜|
    
    
    
    
    ### Does_Zip_Need_Update
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Does Zip Need Update?|
    |Default Connector|[Add_1_to_Loop_Count](#add_1_to_loop_count)|
    |Default Connector Label|No Update Needed|
    
    
    #### Rule No_Account_Found (No Account Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Add_1_to_Loop_Count](#add_1_to_loop_count)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Initial_Proposal_Loop.Opportunity__r.AccountId| Is Null|✅|
    
    
    
    
    #### Rule Update_Needed (Update Needed)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_New_Zip](#assign_new_zip)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Initial_Proposal_Loop.Company_Zip_Postal_Code__c| Not Equal To|AccountZipFirst5|
    |2|AccountZipValid| Equal To|✅|
    
    
    
    
    ### Proposals_Found
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Proposals Found?|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Props_Were_Found (Props Were Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Set_Loop_to_0](#set_loop_to_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|InitialProposalBatch| Is Null|⬜|
    
    
    
    
    ### Reached_50_Loops
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Reached 50 Loops?|
    |Default Connector|[Initial_Proposal_Loop](#initial_proposal_loop)|
    |Default Connector Label|Continue Loop|
    
    
    #### Rule Cap_Reached_Prop_Updated (Cap Reached/Prop Updated)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|Loop_Pause|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|LoopCounter| Greater Than Or Equal To|50|
    |2|PropsUpdated| Equal To|✅|
    
    
    
    
    ### Initial_Proposal_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Initial Proposal Loop|
    |Collection Reference|InitialProposalBatch|
    |Iteration Order|Asc|
    |Next Value Connector|[Does_Zip_Need_Update](#does_zip_need_update)|
    
    
    ### Grab_Proposals_w_Ops
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Proposal__c|
    |Label|Grab Proposals w/ Ops|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|InitialProposalBatch|
    |Queried Fields|- Id<br/>- Opportunity__c<br/>- Company_Zip_Postal_Code__c<br/>|
    |Connector|[Proposals_Found](#proposals_found)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Opportunity__c| Is Null|<!-- -->|
    |2|Service_Option__c| Contains|Simply Retirement|
    |3|CreatedDate| Greater Than Or Equal To|ThreeMonthsAgo|
    |4|Status__c| Not Equal To|Expired Save/Share|
    
    
    
    
    ### Update_Current_Proposal
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Current Proposal|
    |Input Reference|[Initial_Proposal_Loop](#initial_proposal_loop)|
    |Connector|[Check_off_Props_Updated](#check_off_props_updated)|
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

