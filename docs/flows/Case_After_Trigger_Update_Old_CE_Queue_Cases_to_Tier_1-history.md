# Case_After_Trigger_Update_Old_CE_Queue_Cases_to_Tier_1 history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Case_After_Trigger_Update_Old_CE_Queue_Cases_to_Tier_1-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "702535519"
    
    Check_if_Reassignment_Needed{"🔀 <em></em><br/>Check if Reassignment Needed"}:::decisions
    click Check_if_Reassignment_Needed "#check_if_reassignment_needed" "3847953526"
    
    Owned_by_tier_1_check{"🔀 <em></em><br/>Owned by tier 1 check"}:::decisions
    click Owned_by_tier_1_check "#owned_by_tier_1_check" "2151875314"
    
    Assign_case_to_simply_support[("🛠️ <em></em><br/>Assign case to simply support")]:::recordUpdates
    click Assign_case_to_simply_support "#assign_case_to_simply_support" "3019904912"
    
    Copy_1_of_Assign_case_to_client_onboarding[("🛠️ <em></em><br/>Copy 1 of Assign case to client onboarding")]:::recordUpdates
    click Copy_1_of_Assign_case_to_client_onboarding "#copy_1_of_assign_case_to_client_onboarding" "2997312300"
    
    Update_Records_1[("🛠️ <em></em><br/>Update Records 1")]:::recordUpdates
    click Update_Records_1 "#update_records_1" "3480535930"
    
    Check_if_Reassignment_Needed --> |"Reassign to Client Onboarding"| Copy_1_of_Assign_case_to_client_onboarding
    Check_if_Reassignment_Needed --> |"Reassign to Simply Support"| Assign_case_to_simply_support
    Check_if_Reassignment_Needed --> |"Default Outcome"| Owned_by_tier_1_check
    Owned_by_tier_1_check --> |"Not owned by tier 1"| Update_Records_1
    Owned_by_tier_1_check --> |"Default Outcome"| END_Owned_by_tier_1_check
    Assign_case_to_simply_support --> END_Assign_case_to_simply_support
    Copy_1_of_Assign_case_to_client_onboarding --> END_Copy_1_of_Assign_case_to_client_onboarding
    Update_Records_1 --> END_Update_Records_1
    START -->  Check_if_Reassignment_Needed
    END_Owned_by_tier_1_check(( END )):::endClass
    END_Assign_case_to_simply_support(( END )):::endClass
    END_Copy_1_of_Assign_case_to_client_onboarding(( END )):::endClass
    END_Update_Records_1(( END )):::endClass
    
    
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
    |Label|Case | After Trigger | Update Old CE Queue Cases to Tier 1|
    |Status|Active|
    |Description|Fixed critical bug in entry criteria<br/><br/>Flow only updates the original record but it has to be after save to allow for case assignment rules. After we sort through case origin issues(lol), we can update case assignment rules and delete this flow.|
    |Environments|Default|
    |Interview Label|Case | After Trigger | Update Old CE Queue Cases to Tier 1 {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Check_if_Reassignment_Needed](#check_if_reassignment_needed)|
    |Next Node|[Check_if_Reassignment_Needed](#check_if_reassignment_needed)|
    
    
    #### Filters (logic: **(1 OR 3 OR 4) AND 2**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|OwnerId| Equal To|00G1G000001N3PA|
    |2|IsClosed| Equal To|⬜|
    |3|OwnerId| Equal To|00G1G000000wtyG|
    |4|OwnerId| Equal To|00GHo000002SIjQ|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |isNew|Boolean|ISNEW()|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Check_if_Reassignment_Needed
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check if Reassignment Needed|
    |Default Connector|[Owned_by_tier_1_check](#owned_by_tier_1_check)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Reassign_to_Client_Onboarding (Reassign to Client Onboarding)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Copy_1_of_Assign_case_to_client_onboarding](#copy_1_of_assign_case_to_client_onboarding)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Contact_Role__c| Not Equal To|Saver|
    |2|$Record.Plan__r.Status__c| Contains|Implementation|
    |3|isNew| Equal To|✅|
    
    
    
    
    #### Rule Reassign_to_Simply_Support (Reassign to Simply Support)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_case_to_simply_support](#assign_case_to_simply_support)|
    |Condition Logic|(1 OR 2 OR 5) AND 3 AND 4 AND 6|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Contact.Business_Unit__c| Equal To|Simply Retirement|
    |2|$Record.Account.Business_Unit__c| Equal To|Simply Retirement|
    |3|$Record.Contact_Role__c| Not Equal To|Saver|
    |4|$Record.Origin| Not Equal To|Saver Inbox|
    |5|$Record.Origin| Equal To|Simply Support Inbox|
    |6|isNew| Equal To|✅|
    
    
    
    
    ### Owned_by_tier_1_check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Owned by tier 1 check|
    |Description|is this already owned by tier 1 queue?|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Not_owned_by_tier_1 (Not owned by tier 1)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Records_1](#update_records_1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.OwnerId| Not Equal To|00GHo000002SIjQMAW|
    
    
    
    
    ### Assign_case_to_simply_support
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Assign case to simply support|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |OwnerId|00GHo000002nQSX|
    
    
    
    
    ### Copy_1_of_Assign_case_to_client_onboarding
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Copy 1 of Assign case to client onboarding|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |OwnerId|00G37000000PDff|
    
    
    
    
    ### Update_Records_1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Records 1|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |OwnerId|00GHo000002SIjQ|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

