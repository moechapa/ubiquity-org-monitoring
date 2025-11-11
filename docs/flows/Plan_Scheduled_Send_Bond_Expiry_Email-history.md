# Plan_Scheduled_Send_Bond_Expiry_Email history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Plan_Scheduled_Send_Bond_Expiry_Email-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Scheduled</b>"]):::startClass
    click START "#general-information" "640400529"
    
    Copy_1_of_Send_Bond_Expiration_Email("📧 <em></em><br/>Copy 1 of Send Bond Expiration Email"):::actionCalls
    click Copy_1_of_Send_Bond_Expiration_Email "#copy_1_of_send_bond_expiration_email" "3924325430"
    
    add_case_to_collection[\"🟰 <em></em><br/>add case to collection"/]:::assignments
    click add_case_to_collection "#add_case_to_collection" "3358308615"
    
    Assign_case_values[\"🟰 <em></em><br/>Assign case values"/]:::assignments
    click Assign_case_values "#assign_case_values" "764964133"
    
    Assign_Contacts[\"🟰 <em></em><br/>Assign Contacts"/]:::assignments
    click Assign_Contacts "#assign_contacts" "2802559819"
    
    Assign_ownerId[\"🟰 <em></em><br/>Assign ownerId"/]:::assignments
    click Assign_ownerId "#assign_ownerid" "319556321"
    
    Clear_Collection[\"🟰 <em></em><br/>Clear Collection"/]:::assignments
    click Clear_Collection "#clear_collection" "85460656"
    
    get_this_plan_sponsor{{"🔽 <em>Collection Filter</em><br/>get this plan sponsor"}}:::collectionProcessors
    click get_this_plan_sponsor "#get_this_plan_sponsor" "1374854718"
    
    Are_there_cases_to_create{"🔀 <em></em><br/>Are there cases to create"}:::decisions
    click Are_there_cases_to_create "#are_there_cases_to_create" "2369016945"
    
    Is_there_a_sponsor{"🔀 <em></em><br/>Is there a sponsor"}:::decisions
    click Is_there_a_sponsor "#is_there_a_sponsor" "4117834490"
    
    Queue_Found_Check{"🔀 <em></em><br/>Queue Found Check"}:::decisions
    click Queue_Found_Check "#queue_found_check" "2480188884"
    
    grab_single_sponsor{{"🔁 <em></em><br/>grab single sponsor"}}:::loops
    click grab_single_sponsor "#grab_single_sponsor" "3813387949"
    
    plan_loop{{"🔁 <em></em><br/>plan loop"}}:::loops
    click plan_loop "#plan_loop" "4256626735"
    
    create_cases[("➕ <em></em><br/>create cases")]:::recordCreates
    click create_cases "#create_cases" "3088115782"
    
    Get_Compliance_Queue[("🔍 <em></em><br/>Get Compliance Queue")]:::recordLookups
    click Get_Compliance_Queue "#get_compliance_queue" "3157589337"
    
    get_plans[("🔍 <em></em><br/>get plans")]:::recordLookups
    click get_plans "#get_plans" "2368874112"
    
    get_sponsors[("🔍 <em></em><br/>get sponsors")]:::recordLookups
    click get_sponsors "#get_sponsors" "1971234324"
    
    Get_account_ids{{"♻️ <em></em><br/>Get account ids"}}:::transforms
    click Get_account_ids "#get_account_ids" "899016651"
    
    Copy_1_of_Send_Bond_Expiration_Email --> grab_single_sponsor
    Copy_1_of_Send_Bond_Expiration_Email -. Fault .->Assign_case_values
    add_case_to_collection --> grab_single_sponsor
    Assign_case_values --> add_case_to_collection
    Assign_Contacts --> Is_there_a_sponsor
    Assign_ownerId --> get_plans
    Clear_Collection --> get_this_plan_sponsor
    get_this_plan_sponsor --> Assign_Contacts
    Are_there_cases_to_create --> |"need cases"| create_cases
    Are_there_cases_to_create --> |"Default Outcome"| END_Are_there_cases_to_create
    Is_there_a_sponsor --> |"Sponsor found"| grab_single_sponsor
    Is_there_a_sponsor --> |"Default Outcome"| Assign_case_values
    Queue_Found_Check --> |"Queue Found"| Assign_ownerId
    Queue_Found_Check --> |"Default Outcome"| get_plans
    grab_single_sponsor --> |"For Each"|Copy_1_of_Send_Bond_Expiration_Email
    grab_single_sponsor ---> |"After Last"|plan_loop
    plan_loop --> |"For Each"|Clear_Collection
    plan_loop ---> |"After Last"|Are_there_cases_to_create
    create_cases --> END_create_cases
    Get_Compliance_Queue --> Queue_Found_Check
    get_plans --> Get_account_ids
    get_sponsors --> plan_loop
    START -->  Get_Compliance_Queue
    Get_account_ids --> get_sponsors
    END_Are_there_cases_to_create(( END )):::endClass
    END_create_cases(( END )):::endClass
    
    
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
    |Label|Plan | Scheduled | Send Bond Expiry Email|
    |Status|Active|
    |Description|Updated to replace compliance shared user with queue|
    |Environments|Default|
    |Interview Label|Plan | Scheduled | Send Bond Expiry Email {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Compliance_Queue](#get_compliance_queue)|
    |Next Node|[Get_Compliance_Queue](#get_compliance_queue)|
    
    
    #### Schedules
    
    |Frequency|Start Date|Start Time|
    |:-- |:--:|:--: |
    |Daily|Jun 12, 2025|12:06|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |cases2Create|SObject|✅|⬜|⬜|Case|<!-- -->|
    |caseValues|SObject|⬜|✅|⬜|Case|<!-- -->|
    |currentItem_get_this_plan_sponsor|SObject|⬜|⬜|⬜|Contact|<!-- -->|
    |ownerId|String|⬜|⬜|⬜|<!-- -->|Defaults to compliance user id.  SHould be replaced with compliance queue id|
    |primarySponsor|SObject|⬜|✅|⬜|Contact|<!-- -->|
    |sponsorContacts|SObject|✅|✅|⬜|Contact|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |needsBondEmail|Date|TODAY() + 70|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Copy_1_of_Send_Bond_Expiration_Email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Copy 1 of Send Bond Expiration Email|
    |Action Type|Email Simple|
    |Action Name|emailSimple|
    |Fault Connector|isGoTo: true<br/>targetReference: Assign_case_values<br/>|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|emailSimple|
    |Offset|0|
    |Cc Recipient Address List (input)|nqasem@colonialsurety.com|
    |Sender Type (input)|OrgWideEmailAddress|
    |Sender Address (input)|dontrespond@myubiquity.com|
    |Email Template Id (input)|00XUo000002eGWLMA2|
    |Recipient Id (input)|grab_single_sponsor.Id|
    |Related Record Id (input)|plan_loop.Id|
    |Log Email On Send (input)|✅|
    |Connector|[grab_single_sponsor](#grab_single_sponsor)|
    
    
    ### add_case_to_collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|add case to collection|
    |Connector|[grab_single_sponsor](#grab_single_sponsor)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |cases2Create| Add|caseValues|
    
    
    
    
    ### Assign_case_values
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign case values|
    |Connector|[add_case_to_collection](#add_case_to_collection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |caseValues.AccountId| Assign|plan_loop.Account__c|
    |caseValues.Plan__c| Assign|plan_loop.Id|
    |caseValues.Origin| Assign|Internal|
    |caseValues.Sender_Role__c| Assign|Sponsor|
    |caseValues.Department__c| Assign|Compliance|
    |caseValues.OwnerId| Assign|ownerId|
    |caseValues.Description| Assign|errorCaseDesc|
    |caseValues.Subject| Assign|Bond Expiration Notice Failed to Send|
    
    
    
    
    ### Assign_Contacts
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Contacts|
    |Connector|[Is_there_a_sponsor](#is_there_a_sponsor)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |sponsorContacts| Assign|[get_this_plan_sponsor](#get_this_plan_sponsor)|
    
    
    
    
    ### Assign_ownerId
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign ownerId|
    |Connector|[get_plans](#get_plans)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |ownerId| Assign|Get_Compliance_Queue.Id|
    
    
    
    
    ### Clear_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Clear Collection|
    |Connector|[get_this_plan_sponsor](#get_this_plan_sponsor)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |sponsorContacts| Assign|<!-- -->|
    
    
    
    
    ### get_this_plan_sponsor
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Collection Processor|
    |Label|get this plan sponsor|
    |Element Subtype|FilterCollectionProcessor|
    |Assign Next Value To Reference|currentItem_get_this_plan_sponsor|
    |Collection Processor Type|FilterCollectionProcessor|
    |Collection Reference|[get_sponsors](#get_sponsors)|
    |Connector|[Assign_Contacts](#assign_contacts)|
    |Condition Logic|and|
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|currentItem_get_this_plan_sponsor.AccountId| Equal To|plan_loop.Account__c|
    
    
    
    
    ### Are_there_cases_to_create
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Are there cases to create|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule need_cases (need cases)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[create_cases](#create_cases)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|cases2Create| Is Empty|⬜|
    
    
    
    
    ### Is_there_a_sponsor
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Is there a sponsor|
    |Default Connector|[Assign_case_values](#assign_case_values)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Sponsor_found (Sponsor found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[grab_single_sponsor](#grab_single_sponsor)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|sponsorContacts| Is Empty|⬜|
    
    
    
    
    ### Queue_Found_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Queue Found Check|
    |Default Connector|[get_plans](#get_plans)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Queue_Found (Queue Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_ownerId](#assign_ownerid)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|[Get_Compliance_Queue](#get_compliance_queue)| Is Null|⬜|
    
    
    
    
    ### grab_single_sponsor
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|grab single sponsor|
    |Collection Reference|sponsorContacts|
    |Iteration Order|Asc|
    |Next Value Connector|[Copy_1_of_Send_Bond_Expiration_Email](#copy_1_of_send_bond_expiration_email)|
    |No More Values Connector|[plan_loop](#plan_loop)|
    
    
    ### plan_loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|plan loop|
    |Collection Reference|[get_plans](#get_plans)|
    |Iteration Order|Asc|
    |Next Value Connector|[Clear_Collection](#clear_collection)|
    |No More Values Connector|[Are_there_cases_to_create](#are_there_cases_to_create)|
    
    
    ### create_cases
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Label|create cases|
    |Input Reference|cases2Create|
    
    
    ### Get_Compliance_Queue
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Group|
    |Label|Get Compliance Queue|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|Id|
    |Store Output Automatically|✅|
    |Connector|[Queue_Found_Check](#queue_found_check)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Type| Equal To|Queue|
    |2|DeveloperName| Equal To|Compliance|
    
    
    
    
    ### get_plans
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Plan__c|
    |Label|get plans|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Store Output Automatically|✅|
    |Connector|[Get_account_ids](#get_account_ids)|
    
    
    #### Filters (logic: **1 AND 2 AND (3 OR 4 OR 5)**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Status__c| Equal To|Active|
    |2|Bond_Expiration_Date__c| Equal To|needsBondEmail|
    |3|Service_Option__c| Equal To|Reserve(k)|
    |4|Service_Option__c| Equal To|Simply Retirement Bundled|
    |5|Service_Option__c| Equal To|Simply Retirement Unbundled|
    
    
    
    
    ### get_sponsors
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|get sponsors|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Store Output Automatically|✅|
    |Connector|[plan_loop](#plan_loop)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Primary_Plan_Sponsor__c| Equal To|✅|
    |2|Email| Is Null|<!-- -->|
    |3|AccountId| In|[Get_account_ids](#get_account_ids)|
    
    
    
    
    ### Get_account_ids
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Transform|
    |Label|Get account ids|
    |Data Type|String|
    |Is Collection|✅|
    |Scale|0|
    |Store Output Automatically|✅|
    |Connector|[get_sponsors](#get_sponsors)|
    
    
    #### Transform actions
    
    |Transform Type|Value|Output Field Api Name|
    |:-- |:--:|:--  |
    |Map|get_plans[$EachItem].Account__c|<!-- -->|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

