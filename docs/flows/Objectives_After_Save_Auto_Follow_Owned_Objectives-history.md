# Objectives_After_Save_Auto_Follow_Owned_Objectives history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Objectives_After_Save_Auto_Follow_Owned_Objectives-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "3661420846"
    
    Duplicate_Subscription_Found_Check{"🔀 <em></em><br/>Duplicate Subscription Found Check"}:::decisions
    click Duplicate_Subscription_Found_Check "#duplicate_subscription_found_check" "3720803432"
    
    Incoming_Owner_BI_Check{"🔀 <em></em><br/>Incoming Owner BI Check"}:::decisions
    click Incoming_Owner_BI_Check "#incoming_owner_bi_check" "3966145488"
    
    Is_this_NEW_or_did_the_owner_CHANGE{"🔀 <em></em><br/>Is this NEW or did the owner CHANGE"}:::decisions
    click Is_this_NEW_or_did_the_owner_CHANGE "#is_this_new_or_did_the_owner_change" "77966280"
    
    Old_Sub_Found_Check{"🔀 <em></em><br/>Old Sub Found Check"}:::decisions
    click Old_Sub_Found_Check "#old_sub_found_check" "401211117"
    
    Was_there_an_old_owner{"🔀 <em></em><br/>Was there an old owner"}:::decisions
    click Was_there_an_old_owner "#was_there_an_old_owner" "2852433021"
    
    Create_New_Sub[("➕ <em></em><br/>Create New Sub")]:::recordCreates
    click Create_New_Sub "#create_new_sub" "683250020"
    
    Delete_Old_Sub[("🗑️ <em></em><br/>Delete Old Sub")]:::recordDeletes
    click Delete_Old_Sub "#delete_old_sub" "3466148045"
    
    Duplicate_Check[("🔍 <em></em><br/>Duplicate Check")]:::recordLookups
    click Duplicate_Check "#duplicate_check" "1362533419"
    
    Find_New_User_Id[("🔍 <em></em><br/>Find New User Id")]:::recordLookups
    click Find_New_User_Id "#find_new_user_id" "3169782917"
    
    Find_Old_Sub[("🔍 <em></em><br/>Find Old Sub")]:::recordLookups
    click Find_Old_Sub "#find_old_sub" "2149688623"
    
    Find_old_user_ID[("🔍 <em></em><br/>Find old user ID")]:::recordLookups
    click Find_old_user_ID "#find_old_user_id" "2947044713"
    
    Duplicate_Subscription_Found_Check --> |"Default Outcome"| Create_New_Sub
    Incoming_Owner_BI_Check --> |"New Owner in BI"| Find_New_User_Id
    Incoming_Owner_BI_Check --> |"Default Outcome"| END_Incoming_Owner_BI_Check
    Is_this_NEW_or_did_the_owner_CHANGE --> |"Pass Entry Gate"| Was_there_an_old_owner
    Is_this_NEW_or_did_the_owner_CHANGE --> |"Default Outcome"| END_Is_this_NEW_or_did_the_owner_CHANGE
    Old_Sub_Found_Check --> |"Old Sub Found"| Delete_Old_Sub
    Old_Sub_Found_Check --> |"Default Outcome"| Incoming_Owner_BI_Check
    Was_there_an_old_owner --> |"Old owner found"| Find_old_user_ID
    Was_there_an_old_owner --> |"Default Outcome"| Incoming_Owner_BI_Check
    Create_New_Sub --> END_Create_New_Sub
    Delete_Old_Sub --> Incoming_Owner_BI_Check
    Duplicate_Check --> Duplicate_Subscription_Found_Check
    Find_New_User_Id --> Duplicate_Check
    Find_Old_Sub --> Old_Sub_Found_Check
    Find_old_user_ID --> Find_Old_Sub
    START -->  Is_this_NEW_or_did_the_owner_CHANGE
    END_Incoming_Owner_BI_Check(( END )):::endClass
    END_Is_this_NEW_or_did_the_owner_CHANGE(( END )):::endClass
    END_Create_New_Sub(( END )):::endClass
    
    
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
    |Object|Objective__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create And Update|
    |Label|Objectives | After Save | Auto Follow Owned Objectives|
    |Status|Active|
    |Environments|Default|
    |Interview Label|Objectives | After Save | Auto Follow Owned Objectives {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Is_this_NEW_or_did_the_owner_CHANGE](#is_this_new_or_did_the_owner_change)|
    |Next Node|[Is_this_NEW_or_did_the_owner_CHANGE](#is_this_new_or_did_the_owner_change)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |existingSub|SObject|⬜|⬜|⬜|EntitySubscription|<!-- -->|
    |oldSub|SObject|⬜|⬜|⬜|EntitySubscription|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |newObjective|Boolean|isnew()|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Duplicate_Subscription_Found_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Duplicate Subscription Found Check|
    |Default Connector|[Create_New_Sub](#create_new_sub)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Dupe_Found (Dupe Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|existingSub| Is Null|⬜|
    
    
    
    
    ### Incoming_Owner_BI_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Incoming Owner BI Check|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule New_Owner_in_BI (New Owner in BI)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Find_New_User_Id](#find_new_user_id)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Objective_Owner__r.Department| Equal To|Business Intelligence|
    
    
    
    
    ### Is_this_NEW_or_did_the_owner_CHANGE
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Is this NEW or did the owner CHANGE|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Pass_Entry_Gate (Pass Entry Gate)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Was_there_an_old_owner](#was_there_an_old_owner)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|newObjective| Equal To|✅|
    |2|$Record.Objective_Owner__c| Is Changed|✅|
    
    
    
    
    ### Old_Sub_Found_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Old Sub Found Check|
    |Default Connector|[Incoming_Owner_BI_Check](#incoming_owner_bi_check)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Old_Sub_Found (Old Sub Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Delete_Old_Sub](#delete_old_sub)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|oldSub| Is Null|⬜|
    
    
    
    
    ### Was_there_an_old_owner
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Was there an old owner|
    |Default Connector|[Incoming_Owner_BI_Check](#incoming_owner_bi_check)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Old_owner_found (Old owner found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Find_old_user_ID](#find_old_user_id)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record__Prior.Objective_Owner__c| Is Null|⬜|
    |2|newObjective| Equal To|⬜|
    |3|$Record__Prior.Objective_Owner__r.Department| Equal To|Business Intelligence|
    
    
    
    
    ### Create_New_Sub
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|EntitySubscription|
    |Label|Create New Sub|
    |Store Output Automatically|✅|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |ParentId|$Record.Id|
    |SubscriberId|Find_New_User_Id.Id|
    
    
    
    
    ### Delete_Old_Sub
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Delete|
    |Label|Delete Old Sub|
    |Input Reference|oldSub|
    |Connector|[Incoming_Owner_BI_Check](#incoming_owner_bi_check)|
    
    
    ### Duplicate_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|EntitySubscription|
    |Label|Duplicate Check|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|existingSub|
    |Queried Fields|Id|
    |Connector|[Duplicate_Subscription_Found_Check](#duplicate_subscription_found_check)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|ParentId| Equal To|$Record.Id|
    |2|SubscriberId| Equal To|Find_New_User_Id.Id|
    
    
    
    
    ### Find_New_User_Id
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|User|
    |Label|Find New User Id|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|Id|
    |Store Output Automatically|✅|
    |Connector|[Duplicate_Check](#duplicate_check)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|IsActive| Equal To|✅|
    |2|Email| Equal To|$Record.Objective_Owner__r.Email|
    
    
    
    
    ### Find_Old_Sub
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|EntitySubscription|
    |Label|Find Old Sub|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|oldSub|
    |Queried Fields|Id|
    |Connector|[Old_Sub_Found_Check](#old_sub_found_check)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|ParentId| Equal To|$Record.Id|
    |2|SubscriberId| Equal To|Find_old_user_ID.Id|
    
    
    
    
    ### Find_old_user_ID
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|User|
    |Label|Find old user ID|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|Id|
    |Store Output Automatically|✅|
    |Connector|[Find_Old_Sub](#find_old_sub)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Email| Equal To|$Record__Prior.Objective_Owner__r.Email|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

