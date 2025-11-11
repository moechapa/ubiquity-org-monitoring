# PurchaseAPI_Helper_Add_Sources history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](PurchaseAPI_Helper_Add_Sources-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>"]):::startClass
    click START "#general-information" "3347587559"
    
    add_single_to_Payload_collection[\"🟰 <em></em><br/>add single to Payload collection"/]:::assignments
    click add_single_to_Payload_collection "#add_single_to_payload_collection" "2748736519"
    
    Copy_1_of_add_single_to_Payload_collection[\"🟰 <em></em><br/>Add single to Payload collection"/]:::assignments
    click Copy_1_of_add_single_to_Payload_collection "#copy_1_of_add_single_to_payload_collection" "1993296141"
    
    Copy_1_of_Copy_3_of_add_single_to_Payload_collection[\"🟰 <em></em><br/>Add single to Payload collection"/]:::assignments
    click Copy_1_of_Copy_3_of_add_single_to_Payload_collection "#copy_1_of_copy_3_of_add_single_to_payload_collection" "3661824462"
    
    Copy_1_of_Copy_3_of_map_Sources_to_Payload[\"🟰 <em></em><br/>Map Sources to Payload"/]:::assignments
    click Copy_1_of_Copy_3_of_map_Sources_to_Payload "#copy_1_of_copy_3_of_map_sources_to_payload" "3379511107"
    
    Copy_1_of_map_Sources_to_Payload[\"🟰 <em></em><br/>Map Sources to Payload"/]:::assignments
    click Copy_1_of_map_Sources_to_Payload "#copy_1_of_map_sources_to_payload" "2105667060"
    
    Copy_2_of_add_single_to_Payload_collection[\"🟰 <em></em><br/>Add single to Payload collection"/]:::assignments
    click Copy_2_of_add_single_to_Payload_collection "#copy_2_of_add_single_to_payload_collection" "1314120609"
    
    Copy_2_of_map_Sources_to_Payload[\"🟰 <em></em><br/>Map Sources to Payload"/]:::assignments
    click Copy_2_of_map_Sources_to_Payload "#copy_2_of_map_sources_to_payload" "3860336689"
    
    Copy_3_of_add_single_to_Payload_collection[\"🟰 <em></em><br/>Add single to Payload collection"/]:::assignments
    click Copy_3_of_add_single_to_Payload_collection "#copy_3_of_add_single_to_payload_collection" "1960661599"
    
    Copy_3_of_map_Sources_to_Payload[\"🟰 <em></em><br/>Map Sources to Payload"/]:::assignments
    click Copy_3_of_map_Sources_to_Payload "#copy_3_of_map_sources_to_payload" "4231653171"
    
    map_Sources_to_Payload[\"🟰 <em></em><br/>map Sources to Payload"/]:::assignments
    click map_Sources_to_Payload "#map_sources_to_payload" "4139109315"
    
    Is_Eligibility_Age_populated{"🔀 <em></em><br/>Is Eligibility Age populated?"}:::decisions
    click Is_Eligibility_Age_populated "#is_eligibility_age_populated" "2348067867"
    
    Profit_Sharing_Match_Vesting_Schedule_c_populated{"🔀 <em></em><br/>Profit_Sharing_Match_Vesting_Schedule__c populated ?"}:::decisions
    click Profit_Sharing_Match_Vesting_Schedule_c_populated "#profit_sharing_match_vesting_schedule_c_populated" "3684894698"
    
    QACA_Safe_Harbor_Vesting_Schedule_c_populated{"🔀 <em></em><br/>QACA_Safe_Harbor_Vesting_Schedule__c	populated ?"}:::decisions
    click QACA_Safe_Harbor_Vesting_Schedule_c_populated "#qaca_safe_harbor_vesting_schedule_c_populated" "2241564393"
    
    Source_Identified{"🔀 <em></em><br/>Source Identified?"}:::decisions
    click Source_Identified "#source_identified" "2621149104"
    
    Loop_thru_Sources{{"🔁 <em></em><br/>Loop thru Sources"}}:::loops
    click Loop_thru_Sources "#loop_thru_sources" "2816352866"
    
    get_Proposal[("🔍 <em></em><br/>get Proposal")]:::recordLookups
    click get_Proposal "#get_proposal" "2595574513"
    
    Get_QACA_Safe_Harbor_vestingId_Settings[("🔍 <em></em><br/>Get QACA Safe Harbor vestingId Settings")]:::recordLookups
    click Get_QACA_Safe_Harbor_vestingId_Settings "#get_qaca_safe_harbor_vestingid_settings" "591181830"
    
    Get_Sources[("🔍 <em></em><br/>Get Sources")]:::recordLookups
    click Get_Sources "#get_sources" "2339608771"
    
    Get_vestingId_Settings[("🔍 <em></em><br/>Get Matching and PS vestingId Settings")]:::recordLookups
    click Get_vestingId_Settings "#get_vestingid_settings" "3139757433"
    
    add_single_to_Payload_collection --> Loop_thru_Sources
    Copy_1_of_add_single_to_Payload_collection --> Loop_thru_Sources
    Copy_1_of_Copy_3_of_add_single_to_Payload_collection --> Loop_thru_Sources
    Copy_1_of_Copy_3_of_map_Sources_to_Payload --> Copy_1_of_Copy_3_of_add_single_to_Payload_collection
    Copy_1_of_map_Sources_to_Payload --> Copy_1_of_add_single_to_Payload_collection
    Copy_2_of_add_single_to_Payload_collection --> Loop_thru_Sources
    Copy_2_of_map_Sources_to_Payload --> Copy_2_of_add_single_to_Payload_collection
    Copy_3_of_add_single_to_Payload_collection --> Loop_thru_Sources
    Copy_3_of_map_Sources_to_Payload --> Copy_3_of_add_single_to_Payload_collection
    map_Sources_to_Payload --> add_single_to_Payload_collection
    Is_Eligibility_Age_populated --> |"Yes"| map_Sources_to_Payload
    Is_Eligibility_Age_populated --> |"Default Outcome"| Loop_thru_Sources
    Profit_Sharing_Match_Vesting_Schedule_c_populated --> |"Yes"| Get_vestingId_Settings
    Profit_Sharing_Match_Vesting_Schedule_c_populated --> |"Default Outcome"| QACA_Safe_Harbor_Vesting_Schedule_c_populated
    QACA_Safe_Harbor_Vesting_Schedule_c_populated --> |"Yes"| Get_QACA_Safe_Harbor_vestingId_Settings
    QACA_Safe_Harbor_Vesting_Schedule_c_populated --> |"Default Outcome"| Get_Sources
    Source_Identified --> |"Employee Pretax"| Is_Eligibility_Age_populated
    Source_Identified --> |"Roth"| Copy_2_of_map_Sources_to_Payload
    Source_Identified --> |"Safe Harbor"| Copy_1_of_map_Sources_to_Payload
    Source_Identified --> |"Discretionary Match"| Copy_1_of_Copy_3_of_map_Sources_to_Payload
    Source_Identified --> |"Profit Sharing"| Copy_3_of_map_Sources_to_Payload
    Source_Identified --> |"Default Outcome"| Loop_thru_Sources
    Loop_thru_Sources --> |"For Each"|Source_Identified
    Loop_thru_Sources ---> |"After Last"|END
    get_Proposal --> Profit_Sharing_Match_Vesting_Schedule_c_populated
    Get_QACA_Safe_Harbor_vestingId_Settings --> Get_Sources
    Get_Sources --> Loop_thru_Sources
    Get_vestingId_Settings --> QACA_Safe_Harbor_Vesting_Schedule_c_populated
    START -->  get_Proposal
    
    
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
    |Label|PurchaseAPI Helper | Add Sources|
    |Status|Active|
    |Description|Adding Eligibility Age check for sources<br/>Adding effectiveDate logic for Prior Year Profit Sharing Contribution|
    |Environments|Default|
    |Interview Label|PurchaseAPI Helper | Add Sources {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[get_Proposal](#get_proposal)|
    |Next Node|[get_Proposal](#get_proposal)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |addSources|Apex|✅|⬜|✅|<!-- -->|A list of sources for purchase Payload|
    |purchasePayload|Apex|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |recordId|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |requiredAge|Apex|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |resultSourceList|SObject|✅|⬜|⬜|AddSources__mdt|Selected sources based on Proposal Criteria|
    |singleAddSource|Apex|⬜|⬜|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |effetiveDateProfitSharing|Date|IF(<br/>    ISPICKVAL({!get_Proposal.Plan_Type__c}, "New Plan"),<br/>    IF(<br/>        ISPICKVAL({!get_Proposal.Prior_Year_Profit_Sharing_Contribution__c}, "Yes"),<br/>        {!get_Proposal.Profit_Sharing_Plan_Effective_Date__c},<br/>        IF(<br/>            ISPICKVAL({!get_Proposal.Prior_Year_Profit_Sharing_Contribution__c}, "No"),<br/>           {!get_Proposal.Plan_Effective_Date__c},<br/>            IF(<br/>                ISBLANK(TEXT({!get_Proposal.Prior_Year_Profit_Sharing_Contribution__c})),<br/>                {!get_Proposal.Plan_Effective_Date__c},<br/>                NULL<br/>            )<br/>        )<br/>    ),<br/>    IF(<br/>        ISPICKVAL({!get_Proposal.Plan_Type__c}, "Conversion Plan"),<br/>         {!get_Proposal.Original_Effective_Date__c},<br/>        NULL<br/>    )<br/>)|Will be used for effectiveDate where id = 10|
    |eligibilityAgeInteger|Number|IF( ISPICKVAL({!get_Proposal.Eligibility_Age__c}, "None"), <br/>0, <br/>VALUE(TEXT({!get_Proposal.Eligibility_Age__c})))|<!-- -->|
    |eligibilityAgeMonth|Number|IF(ISBLANK({!eligibilityAgeInteger}), NULL, 0)|<!-- -->|
    |entry|String|CASE(TEXT({!get_Proposal.Plan_Entry_Frequency__c}),<br/>  "Immediate", "DAILY",<br/>  "Monthly", "MONTHLY",<br/>  "Quarterly", "QUARTERLY",<br/>  "Semi-Annually", "SEMI_ANNUALLY",<br/>"OTHER"<br/>)|Value will be determined based on a Plan_Entry_Frequency__c|
    |planEffectiveDate|Date|IF(<br/>    ISPICKVAL({!get_Proposal.Plan_Type__c}, "New Plan"),<br/>     {!get_Proposal.Plan_Effective_Date__c},<br/>    IF(<br/>        ISPICKVAL({!get_Proposal.Plan_Type__c}, "Conversion Plan"),<br/>         {!get_Proposal.Original_Effective_Date__c},<br/>        NULL<br/>    )<br/>)|This will be effetiveDate for all Sources other than ID=10 (Profit Sharing Source)|
    |safeHarborVestingId|Number|IF(ISBLANK(TEXT({!get_Proposal.QACA_Safe_Harbor_Vesting_Schedule__c})), 1, {!Get_QACA_Safe_Harbor_vestingId_Settings.Id__c})|Will be used to populate vestingId for Safe Harbor Source|
    |serviceEligibility|String|CASE(TEXT({!get_Proposal.Plan_Eligibility__c}),<br/>  "Immediate", "IMMEDIATE",<br/>  "One Month", "ONE_MONTH",<br/>  "Two Months", "TWO_MONTHS",<br/>  "Three Months", "THREE_MONTHS",<br/> "6 Months", "SIX_MONTHS",<br/> "1 Year (1000 Hours)", "ONE_YEAR_HOURS",<br/> "1 Year", "TWELVE_MONTHS",<br/>""<br/>)|This will be calculated based of Plan_Eligibilty__c value|
    
    
    ## Flow Nodes Details
    
    ### add_single_to_Payload_collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|add single to Payload collection|
    |Connector|[Loop_thru_Sources](#loop_thru_sources)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |addSources| Add|singleAddSource|
    
    
    
    
    ### Copy_1_of_add_single_to_Payload_collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add single to Payload collection|
    |Connector|[Loop_thru_Sources](#loop_thru_sources)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |addSources| Add|singleAddSource|
    
    
    
    
    ### Copy_1_of_Copy_3_of_add_single_to_Payload_collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add single to Payload collection|
    |Connector|[Loop_thru_Sources](#loop_thru_sources)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |addSources| Add|singleAddSource|
    
    
    
    
    ### Copy_1_of_Copy_3_of_map_Sources_to_Payload
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Map Sources to Payload|
    |Connector|[Copy_1_of_Copy_3_of_add_single_to_Payload_collection](#copy_1_of_copy_3_of_add_single_to_payload_collection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |singleAddSource.id| Assign|Loop_thru_Sources.SourceId__c|
    |singleAddSource.name| Assign|Loop_thru_Sources.Label|
    |singleAddSource.sourceType| Assign|Loop_thru_Sources.SourceType__c|
    |singleAddSource.vestingId| Assign|Get_vestingId_Settings.Id__c|
    |singleAddSource.requiredAge.year| Assign|eligibilityAgeInteger|
    |singleAddSource.requiredAge.month| Assign|numberValue: 0<br/>|
    |singleAddSource.entry| Assign|entry|
    |singleAddSource.serviceEligibility| Assign|serviceEligibility|
    |singleAddSource.effectiveDate| Assign|planEffectiveDate|
    |singleAddSource.grandfatherDate| Assign|get_Proposal.Grandfather_Date__c|
    |singleAddSource.contributorType| Assign|Loop_thru_Sources.ContributorType__c|
    |singleAddSource.planSourceFrequency| Assign|Loop_thru_Sources.Plan_Source_Frequency__c|
    
    
    
    
    ### Copy_1_of_map_Sources_to_Payload
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Map Sources to Payload|
    |Connector|[Copy_1_of_add_single_to_Payload_collection](#copy_1_of_add_single_to_payload_collection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |singleAddSource.id| Assign|Loop_thru_Sources.SourceId__c|
    |singleAddSource.name| Assign|Loop_thru_Sources.Label|
    |singleAddSource.sourceType| Assign|Loop_thru_Sources.SourceType__c|
    |singleAddSource.vestingId| Assign|safeHarborVestingId|
    |singleAddSource.requiredAge.year| Assign|eligibilityAgeInteger|
    |singleAddSource.requiredAge.month| Assign|numberValue: 0<br/>|
    |singleAddSource.entry| Assign|entry|
    |singleAddSource.serviceEligibility| Assign|serviceEligibility|
    |singleAddSource.planSourceFrequency| Assign|Loop_thru_Sources.Plan_Source_Frequency__c|
    |singleAddSource.effectiveDate| Assign|planEffectiveDate|
    |singleAddSource.grandfatherDate| Assign|get_Proposal.Grandfather_Date__c|
    |singleAddSource.contributorType| Assign|Loop_thru_Sources.ContributorType__c|
    
    
    
    
    ### Copy_2_of_add_single_to_Payload_collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add single to Payload collection|
    |Connector|[Loop_thru_Sources](#loop_thru_sources)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |addSources| Add|singleAddSource|
    
    
    
    
    ### Copy_2_of_map_Sources_to_Payload
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Map Sources to Payload|
    |Connector|[Copy_2_of_add_single_to_Payload_collection](#copy_2_of_add_single_to_payload_collection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |singleAddSource.id| Assign|Loop_thru_Sources.SourceId__c|
    |singleAddSource.name| Assign|Loop_thru_Sources.Label|
    |singleAddSource.sourceType| Assign|Loop_thru_Sources.SourceType__c|
    |singleAddSource.requiredAge.year| Assign|eligibilityAgeInteger|
    |singleAddSource.requiredAge.month| Assign|numberValue: 0<br/>|
    |singleAddSource.entry| Assign|entry|
    |singleAddSource.serviceEligibility| Assign|serviceEligibility|
    |singleAddSource.effectiveDate| Assign|planEffectiveDate|
    |singleAddSource.grandfatherDate| Assign|get_Proposal.Grandfather_Date__c|
    |singleAddSource.contributorType| Assign|Loop_thru_Sources.ContributorType__c|
    |singleAddSource.planSourceFrequency| Assign|Loop_thru_Sources.Plan_Source_Frequency__c|
    
    
    
    
    ### Copy_3_of_add_single_to_Payload_collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add single to Payload collection|
    |Connector|[Loop_thru_Sources](#loop_thru_sources)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |addSources| Add|singleAddSource|
    
    
    
    
    ### Copy_3_of_map_Sources_to_Payload
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Map Sources to Payload|
    |Connector|[Copy_3_of_add_single_to_Payload_collection](#copy_3_of_add_single_to_payload_collection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |singleAddSource.id| Assign|Loop_thru_Sources.SourceId__c|
    |singleAddSource.name| Assign|Loop_thru_Sources.Label|
    |singleAddSource.sourceType| Assign|Loop_thru_Sources.SourceType__c|
    |singleAddSource.vestingId| Assign|Get_vestingId_Settings.Id__c|
    |singleAddSource.requiredAge.year| Assign|eligibilityAgeInteger|
    |singleAddSource.requiredAge.month| Assign|numberValue: 0<br/>|
    |singleAddSource.entry| Assign|entry|
    |singleAddSource.serviceEligibility| Assign|serviceEligibility|
    |singleAddSource.effectiveDate| Assign|effetiveDateProfitSharing|
    |singleAddSource.grandfatherDate| Assign|get_Proposal.Grandfather_Date__c|
    |singleAddSource.contributorType| Assign|Loop_thru_Sources.ContributorType__c|
    |singleAddSource.planSourceFrequency| Assign|Loop_thru_Sources.Plan_Source_Frequency__c|
    
    
    
    
    ### map_Sources_to_Payload
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|map Sources to Payload|
    |Connector|[add_single_to_Payload_collection](#add_single_to_payload_collection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |singleAddSource.id| Assign|Loop_thru_Sources.SourceId__c|
    |singleAddSource.name| Assign|Loop_thru_Sources.Label|
    |singleAddSource.sourceType| Assign|Loop_thru_Sources.SourceType__c|
    |singleAddSource.requiredAge.year| Assign|eligibilityAgeInteger|
    |singleAddSource.requiredAge.month| Assign|numberValue: 0<br/>|
    |singleAddSource.entry| Assign|entry|
    |singleAddSource.serviceEligibility| Assign|serviceEligibility|
    |singleAddSource.effectiveDate| Assign|planEffectiveDate|
    |singleAddSource.grandfatherDate| Assign|get_Proposal.Grandfather_Date__c|
    |singleAddSource.contributorType| Assign|Loop_thru_Sources.ContributorType__c|
    |singleAddSource.planSourceFrequency| Assign|Loop_thru_Sources.Plan_Source_Frequency__c|
    
    
    
    
    ### Is_Eligibility_Age_populated
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Is Eligibility Age populated?|
    |Default Connector|[Loop_thru_Sources](#loop_thru_sources)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Populated (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[map_Sources_to_Payload](#map_sources_to_payload)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|get_Proposal.Eligibility_Age__c| Is Null|⬜|
    
    
    
    
    ### Profit_Sharing_Match_Vesting_Schedule_c_populated
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Profit_Sharing_Match_Vesting_Schedule__c populated ?|
    |Default Connector|[QACA_Safe_Harbor_Vesting_Schedule_c_populated](#qaca_safe_harbor_vesting_schedule_c_populated)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_vestingId_Settings](#get_vestingid_settings)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|get_Proposal.Profit_Sharing_Match_Vesting_Schedule__c| Is Null|⬜|
    
    
    
    
    ### QACA_Safe_Harbor_Vesting_Schedule_c_populated
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|QACA_Safe_Harbor_Vesting_Schedule__c	populated ?|
    |Default Connector|[Get_Sources](#get_sources)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes_populated (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_QACA_Safe_Harbor_vestingId_Settings](#get_qaca_safe_harbor_vestingid_settings)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|get_Proposal.QACA_Safe_Harbor_Vesting_Schedule__c| Is Null|⬜|
    
    
    
    
    ### Source_Identified
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Source Identified?|
    |Default Connector|[Loop_thru_Sources](#loop_thru_sources)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule isRequired (Employee Pretax)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Is_Eligibility_Age_populated](#is_eligibility_age_populated)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Loop_thru_Sources.isRequired__c| Equal To|✅|
    
    
    
    
    #### Rule Roth (Roth)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Copy_2_of_map_Sources_to_Payload](#copy_2_of_map_sources_to_payload)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Loop_thru_Sources.Roth_Contributions__c| Equal To|get_Proposal.Roth_Contributions__c|
    |2|get_Proposal.Roth_Contributions__c| Is Null|⬜|
    |3|get_Proposal.Roth_Contributions__c| Not Equal To|No|
    
    
    
    
    #### Rule Safe_Harbor (Safe Harbor)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Copy_1_of_map_Sources_to_Payload](#copy_1_of_map_sources_to_payload)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Loop_thru_Sources.Safe_Harbor__c| Equal To|get_Proposal.Safe_Harbor__c|
    |2|get_Proposal.Safe_Harbor__c| Is Null|⬜|
    
    
    
    
    #### Rule Discretionary_Match (Discretionary Match)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Copy_1_of_Copy_3_of_map_Sources_to_Payload](#copy_1_of_copy_3_of_map_sources_to_payload)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|get_Proposal.Discretionary_Match__c| Is Null|⬜|
    |2|get_Proposal.Discretionary_Match__c| Equal To|Yes|
    |3|Loop_thru_Sources.Discretionary_Match__c| Equal To|get_Proposal.Discretionary_Match__c|
    |4|Loop_thru_Sources.Discretionary_Match_Formula__c| Equal To|get_Proposal.Discretionary_Match_Formula__c|
    
    
    
    
    #### Rule Profit_Sharing (Profit Sharing)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Copy_3_of_map_Sources_to_Payload](#copy_3_of_map_sources_to_payload)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|get_Proposal.Profit_Sharing__c| Is Null|⬜|
    |2|get_Proposal.Profit_Sharing__c| Not Equal To|No|
    |3|Loop_thru_Sources.Profit_Sharing__c| Equal To|✅|
    
    
    
    
    ### Loop_thru_Sources
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Loop thru Sources|
    |Collection Reference|[Get_Sources](#get_sources)|
    |Iteration Order|Asc|
    |Next Value Connector|[Source_Identified](#source_identified)|
    
    
    ### get_Proposal
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Proposal__c|
    |Label|get Proposal|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Profit_Sharing_Match_Vesting_Schedule_c_populated](#profit_sharing_match_vesting_schedule_c_populated)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Get_QACA_Safe_Harbor_vestingId_Settings
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Vesting_Id__mdt|
    |Label|Get QACA Safe Harbor vestingId Settings|
    |Description|Get vestingId for QACA Safe Harbor Vesting Schedule|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Get_Sources](#get_sources)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|QACA_Safe_Harbor_Vesting_Schedule__c| Equal To|get_Proposal.QACA_Safe_Harbor_Vesting_Schedule__c|
    
    
    
    
    ### Get_Sources
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|AddSources__mdt|
    |Label|Get Sources|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Store Output Automatically|✅|
    |Connector|[Loop_thru_Sources](#loop_thru_sources)|
    
    
    ### Get_vestingId_Settings
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Vesting_Id__mdt|
    |Label|Get Matching and PS vestingId Settings|
    |Description|Get vestingId for Employer Match and Profit Sharing Vesting Schedule|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[QACA_Safe_Harbor_Vesting_Schedule_c_populated](#qaca_safe_harbor_vesting_schedule_c_populated)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Profit_Sharing_Match_Vesting_Schedule__c| Equal To|get_Proposal.Profit_Sharing_Match_Vesting_Schedule__c|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

