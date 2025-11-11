# Lead_Simply_Lead_Created_1 history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Lead_Simply_Lead_Created_1-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "3469985318"
    
    myRule_10_A2("📧 <em></em><br/>Alert Owner"):::actionCalls
    click myRule_10_A2 "#myrule_10_a2" "2963233641"
    
    myRule_1_A1("📧 <em></em><br/>Notify Owner"):::actionCalls
    click myRule_1_A1 "#myrule_1_a1" "175691033"
    
    myRule_4_A1("📧 <em></em><br/>Notify Owner"):::actionCalls
    click myRule_4_A1 "#myrule_4_a1" "3572187542"
    
    Verify_Lead[\"🟰 <em></em><br/>Verify Lead"/]:::assignments
    click Verify_Lead "#verify_lead" "168080344"
    
    Copy_1_of_Copy_1_of_Copy_1_of_Lead_Verified_Check{"🔀 <em></em><br/>Copy 1 of Copy 1 of Copy 1 of Lead Verified Check"}:::decisions
    click Copy_1_of_Copy_1_of_Copy_1_of_Lead_Verified_Check "#copy_1_of_copy_1_of_copy_1_of_lead_verified_check" "3375467751"
    
    Copy_1_of_Copy_1_of_Lead_Verified_Check{"🔀 <em></em><br/>Copy 1 of Copy 1 of Lead Verified Check"}:::decisions
    click Copy_1_of_Copy_1_of_Lead_Verified_Check "#copy_1_of_copy_1_of_lead_verified_check" "918282935"
    
    Copy_1_of_Lead_Verified_Check{"🔀 <em></em><br/>Copy 1 of Lead Verified Check"}:::decisions
    click Copy_1_of_Lead_Verified_Check "#copy_1_of_lead_verified_check" "961729997"
    
    Lead_Verification{"🔀 <em></em><br/>Lead Verification"}:::decisions
    click Lead_Verification "#lead_verification" "4037593401"
    
    Lead_Verified_Check{"🔀 <em></em><br/>Lead Verified Check"}:::decisions
    click Lead_Verified_Check "#lead_verified_check" "1529949858"
    
    myRule_1{"🔀 <em></em><br/>Simply Direct Lead Created"}:::decisions
    click myRule_1 "#myrule_1" "1275973198"
    
    myRule_10{"🔀 <em></em><br/>Sallus Advisor Created"}:::decisions
    click myRule_10 "#myrule_10" "843778350"
    
    myRule_4{"🔀 <em></em><br/>Simply Lead Created"}:::decisions
    click myRule_4 "#myrule_4" "1666385065"
    
    myRule_7{"🔀 <em></em><br/>SR Advisor Created"}:::decisions
    click myRule_7 "#myrule_7" "577934751"
    
    Route_Back{"🔀 <em></em><br/>Route Back"}:::decisions
    click Route_Back "#route_back" "2552416293"
    
    myRule_10_A1[("➕ <em></em><br/>Assign Task")]:::recordCreates
    click myRule_10_A1 "#myrule_10_a1" "3646430739"
    
    myRule_1_A2[("➕ <em></em><br/>Assign a Task")]:::recordCreates
    click myRule_1_A2 "#myrule_1_a2" "3793704275"
    
    myRule_4_A2[("➕ <em></em><br/>Assign Task")]:::recordCreates
    click myRule_4_A2 "#myrule_4_a2" "2739001682"
    
    myRule_7_A1[("➕ <em></em><br/>Assign Task")]:::recordCreates
    click myRule_7_A1 "#myrule_7_a1" "4006261030"
    
    Ensure_Lead_Still_Exists[("🔍 <em></em><br/>Ensure Lead Still Exists")]:::recordLookups
    click Ensure_Lead_Still_Exists "#ensure_lead_still_exists" "2329978319"
    
    myRule_4_A3[("🛠️ <em></em><br/>Add PSIvet Info")]:::recordUpdates
    click myRule_4_A3 "#myrule_4_a3" "3540006415"
    
    myRule_10_A2 --> END_myRule_10_A2
    myRule_1_A1 --> myRule_1_A2
    myRule_4_A1 --> myRule_4_A2
    Verify_Lead --> Route_Back
    Copy_1_of_Copy_1_of_Copy_1_of_Lead_Verified_Check --> |"Copy 1 of Copy 1 of Copy 1 of Lead Exists"| myRule_10_A1
    Copy_1_of_Copy_1_of_Copy_1_of_Lead_Verified_Check --> |"Default Outcome"| Ensure_Lead_Still_Exists
    Copy_1_of_Copy_1_of_Lead_Verified_Check --> |"Copy 1 of Copy 1 of Lead Exists"| myRule_7_A1
    Copy_1_of_Copy_1_of_Lead_Verified_Check --> |"Default Outcome"| Ensure_Lead_Still_Exists
    Copy_1_of_Lead_Verified_Check --> |"Copy 1 of Lead Exists"| myRule_4_A1
    Copy_1_of_Lead_Verified_Check --> |"Default Outcome"| Ensure_Lead_Still_Exists
    Lead_Verification --> |"Default Outcome"| Verify_Lead
    Lead_Verified_Check --> |"Lead Exists"| myRule_1_A1
    Lead_Verified_Check --> |"Default Outcome"| Ensure_Lead_Still_Exists
    myRule_1 --> |"TRUE_Simply Direct Lead Created"| Lead_Verified_Check
    myRule_1 --> |"FALSE_Simply Direct Lead Created"| myRule_4
    myRule_10 --> |"TRUE_Sallus Advisor Created"| Copy_1_of_Copy_1_of_Copy_1_of_Lead_Verified_Check
    myRule_10 --> |"FALSE_Sallus Advisor Created"| END_myRule_10
    myRule_4 --> |"TRUE_Simply Lead Created"| Copy_1_of_Lead_Verified_Check
    myRule_4 --> |"FALSE_Simply Lead Created"| myRule_7
    myRule_7 --> |"TRUE_SR Advisor Created"| Copy_1_of_Copy_1_of_Lead_Verified_Check
    myRule_7 --> |"FALSE_SR Advisor Created"| myRule_10
    Route_Back --> |"Path 4"| myRule_10_A1
    Route_Back --> |"Path 3"| myRule_7_A1
    Route_Back --> |"Path 2"| myRule_4_A1
    Route_Back --> |"Path 1"| myRule_1_A1
    Route_Back --> |"Default Outcome"| END_Route_Back
    myRule_10_A1 --> myRule_10_A2
    myRule_1_A2 --> END_myRule_1_A2
    myRule_4_A2 --> myRule_4_A3
    myRule_7_A1 --> END_myRule_7_A1
    Ensure_Lead_Still_Exists --> Lead_Verification
    myRule_4_A3 --> END_myRule_4_A3
    START -->  myRule_1
    END_myRule_10_A2(( END )):::endClass
    END_myRule_10(( END )):::endClass
    END_Route_Back(( END )):::endClass
    END_myRule_1_A2(( END )):::endClass
    END_myRule_7_A1(( END )):::endClass
    END_myRule_4_A3(( END )):::endClass
    
    
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
    |Object|Lead|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create And Update|
    |Label|Lead | Simply Lead Created|
    |Status|Active|
    |Description|Adjusted to compensate for if the new lead has been deleted/converted by DE|
    |Environments|Default|
    |Interview Label|Lead | Simply Lead Created {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    |Connector|[myRule_1](#myrule_1)|
    |Next Node|[myRule_1](#myrule_1)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |leadSearch|SObject|⬜|⬜|⬜|Lead|<!-- -->|
    |leadVerified|Boolean|⬜|⬜|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |formula_1_myRule_1_A2_2492086068|Date|TODAY()|<!-- -->|
    |formula_2_myRule_4_A2_5838024068|Date|TODAY()|<!-- -->|
    |formula_3_myRule_7_A1_3401455897|Date|TODAY()|<!-- -->|
    |formula_4_myRule_10_A1_6731137308|Date|TODAY()|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### myRule_10_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Alert Owner|
    |Action Type|Email Alert|
    |Action Name|Lead.Sallus_Advisor_Assigned_Lead|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Lead.Sallus_Advisor_Assigned_Lead|
    | SObject Row Id (input)|$Record.Id|
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Notify Owner|
    |Action Type|Email Alert|
    |Action Name|Lead.Simply_Retirement_Direct_Lead_Assigned|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Lead.Simply_Retirement_Direct_Lead_Assigned|
    | SObject Row Id (input)|$Record.Id|
    |Connector|[myRule_1_A2](#myrule_1_a2)|
    
    
    ### myRule_4_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Notify Owner|
    |Action Type|Email Alert|
    |Action Name|Lead.Simply_Advisor_Lead_Created|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Lead.Simply_Advisor_Lead_Created|
    | SObject Row Id (input)|$Record.Id|
    |Connector|[myRule_4_A2](#myrule_4_a2)|
    
    
    ### Verify_Lead
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Verify Lead|
    |Connector|[Route_Back](#route_back)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |leadVerified| Assign|✅|
    
    
    
    
    ### Copy_1_of_Copy_1_of_Copy_1_of_Lead_Verified_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Copy 1 of Copy 1 of Copy 1 of Lead Verified Check|
    |Default Connector|isGoTo: true<br/>targetReference: Ensure_Lead_Still_Exists<br/>|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Copy_1_of_Copy_1_of_Copy_1_of_Lead_Exists (Copy 1 of Copy 1 of Copy 1 of Lead Exists)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_10_A1](#myrule_10_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|leadVerified| Equal To|✅|
    
    
    
    
    ### Copy_1_of_Copy_1_of_Lead_Verified_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Copy 1 of Copy 1 of Lead Verified Check|
    |Default Connector|isGoTo: true<br/>targetReference: Ensure_Lead_Still_Exists<br/>|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Copy_1_of_Copy_1_of_Lead_Exists (Copy 1 of Copy 1 of Lead Exists)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_7_A1](#myrule_7_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|leadVerified| Equal To|✅|
    
    
    
    
    ### Copy_1_of_Lead_Verified_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Copy 1 of Lead Verified Check|
    |Default Connector|isGoTo: true<br/>targetReference: Ensure_Lead_Still_Exists<br/>|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Copy_1_of_Lead_Exists (Copy 1 of Lead Exists)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_4_A1](#myrule_4_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|leadVerified| Equal To|✅|
    
    
    
    
    ### Lead_Verification
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Lead Verification|
    |Default Connector|[Verify_Lead](#verify_lead)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Lead_Not_Found (Lead Not Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|leadSearch| Is Null|✅|
    |2|leadSearch.IsDeleted| Equal To|✅|
    
    
    
    
    ### Lead_Verified_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Lead Verified Check|
    |Default Connector|[Ensure_Lead_Still_Exists](#ensure_lead_still_exists)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Lead_Exists (Lead Exists)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_A1](#myrule_1_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|leadVerified| Equal To|✅|
    
    
    
    
    ### myRule_1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Simply Direct Lead Created|
    |Default Connector|[myRule_4](#myrule_4)|
    |Default Connector Label|FALSE_Simply Direct Lead Created|
    
    
    #### Rule TRUE_myRule_1 (TRUE_Simply Direct Lead Created)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[Lead_Verified_Check](#lead_verified_check)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.LeadSourceDetail__c| Equal To|Simply Direct|
    |2|$Record.Status| Equal To|Assigned|
    |3|$Record.Business_Unit__c| Equal To|Simply Retirement|
    |4|$Record.Lead_Type__c| Equal To|Employer|
    
    
    
    
    ### myRule_10
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Sallus Advisor Created|
    |Default Connector Label|FALSE_Sallus Advisor Created|
    
    
    #### Rule TRUE_myRule_10 (TRUE_Sallus Advisor Created)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Copy_1_of_Copy_1_of_Copy_1_of_Lead_Verified_Check](#copy_1_of_copy_1_of_copy_1_of_lead_verified_check)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.LeadSource| Equal To|Sallus|
    |2|$Record.Connected_Partner__c| Equal To|Sallus|
    |3|$Record.Owner:User.UserRoleId| Equal To|00E00000006xFiWEAU|
    |4|$Record.Status| Equal To|Qualified|
    
    
    
    
    ### myRule_4
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Simply Lead Created|
    |Default Connector|[myRule_7](#myrule_7)|
    |Default Connector Label|FALSE_Simply Lead Created|
    
    
    #### Rule TRUE_myRule_4 (TRUE_Simply Lead Created)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[Copy_1_of_Lead_Verified_Check](#copy_1_of_lead_verified_check)|
    |Condition Logic|1 AND 2 AND 3 AND (4 OR 5)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Business_Unit__c| Equal To|Simply Retirement|
    |2|$Record.Lead_Type__c| Equal To|Employer|
    |3|$Record.Status| Equal To|Assigned|
    |4|$Record.LeadSourceDetail__c| Equal To|Simply Advisor|
    |5|$Record.LeadSourceDetail__c| Equal To|PSIvet|
    
    
    
    
    ### myRule_7
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|SR Advisor Created|
    |Default Connector|[myRule_10](#myrule_10)|
    |Default Connector Label|FALSE_SR Advisor Created|
    
    
    #### Rule TRUE_myRule_7 (TRUE_SR Advisor Created)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[Copy_1_of_Copy_1_of_Lead_Verified_Check](#copy_1_of_copy_1_of_lead_verified_check)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Business_Unit__c| Equal To|Simply Retirement|
    |2|$Record.Lead_Type__c| Equal To|Advisor|
    |3|$Record.Status| Equal To|Assigned|
    
    
    
    
    ### Route_Back
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Route Back|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Path_4 (Path 4)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|isGoTo: true<br/>targetReference: myRule_10_A1<br/>|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|[myRule_10](#myrule_10)| Was Visited|✅|
    
    
    
    
    #### Rule Path_3 (Path 3)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|isGoTo: true<br/>targetReference: myRule_7_A1<br/>|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|[myRule_7](#myrule_7)| Was Visited|✅|
    
    
    
    
    #### Rule Path_2 (Path 2)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|isGoTo: true<br/>targetReference: myRule_4_A1<br/>|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|[myRule_4](#myrule_4)| Was Visited|✅|
    
    
    
    
    #### Rule Path_1 (Path 1)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_A1](#myrule_1_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|[myRule_1](#myrule_1)| Was Visited|✅|
    
    
    
    
    ### myRule_10_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Task|
    |Label|Assign Task|
    |Store Output Automatically|✅|
    |Connector|[myRule_10_A2](#myrule_10_a2)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |ActivityDate|formula_4_myRule_10_A1_6731137308|
    |OwnerId|$Record.OwnerId|
    |Priority|Normal|
    |Status|Not Started|
    |Subject|Sallus Advisor Assigned|
    |WhoId|$Record.Id|
    
    
    
    
    ### myRule_1_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Task|
    |Label|Assign a Task|
    |Store Output Automatically|✅|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |ActivityDate|formula_1_myRule_1_A2_2492086068|
    |OwnerId|$Record.OwnerId|
    |Priority|Normal|
    |Status|Not Started|
    |Subject|Simply Retirement Direct Lead Assigned|
    |WhoId|$Record.Id|
    
    
    
    
    ### myRule_4_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Task|
    |Label|Assign Task|
    |Store Output Automatically|✅|
    |Connector|[myRule_4_A3](#myrule_4_a3)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |ActivityDate|formula_2_myRule_4_A2_5838024068|
    |OwnerId|$Record.OwnerId|
    |Priority|Normal|
    |Status|Not Started|
    |Subject|Simply Retirement Lead Assigned|
    |WhoId|$Record.Id|
    
    
    
    
    ### myRule_7_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Task|
    |Label|Assign Task|
    |Store Output Automatically|✅|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |ActivityDate|formula_3_myRule_7_A1_3401455897|
    |OwnerId|$Record.OwnerId|
    |Priority|Normal|
    |Status|Not Started|
    |Subject|Simply Retirement Advisor Assigned|
    |WhoId|$Record.Id|
    
    
    
    
    ### Ensure_Lead_Still_Exists
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Lead|
    |Label|Ensure Lead Still Exists|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|leadSearch|
    |Queried Fields|- Id<br/>- IsDeleted<br/>|
    |Connector|[Lead_Verification](#lead_verification)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$Record.Id|
    
    
    
    
    ### myRule_4_A3
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Add PSIvet Info|
    |Input Reference|$Record|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|LeadSourceDetail__c| Equal To|PSIvet|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Associated_Contact__c|0031G00001BRfkT|
    |Associated_Partner__c|00100000002oXaR|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

