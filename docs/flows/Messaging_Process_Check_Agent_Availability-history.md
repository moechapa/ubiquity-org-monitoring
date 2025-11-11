# Messaging_Process_Check_Agent_Availability history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Messaging_Process_Check_Agent_Availability-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>"]):::startClass
    click START "#general-information" "3518688859"
    
    Assign_queue_id[\"🟰 <em></em><br/>Assign queue id"/]:::assignments
    click Assign_queue_id "#assign_queue_id" "2729027569"
    
    Copy_1_of_Assign_queue_id[\"🟰 <em></em><br/>Assign queue id"/]:::assignments
    click Copy_1_of_Assign_queue_id "#copy_1_of_assign_queue_id" "1816314397"
    
    Flip_Agent_Availability_Flag_to_False[\"🟰 <em></em><br/>Flip Agent Availability Flag to False"/]:::assignments
    click Flip_Agent_Availability_Flag_to_False "#flip_agent_availability_flag_to_false" "2547881489"
    
    Flip_Agent_Availability_Flag_to_Tue[\"🟰 <em></em><br/>Flip Agent Availability Flag to Tue"/]:::assignments
    click Flip_Agent_Availability_Flag_to_Tue "#flip_agent_availability_flag_to_tue" "3029466446"
    
    Increment_Counter[\"🟰 <em></em><br/>Increment Counter"/]:::assignments
    click Increment_Counter "#increment_counter" "1358901255"
    
    Increment_hasWorkCapacityAgentCount[\"🟰 <em></em><br/>Increment hasWorkCapacityAgentCount"/]:::assignments
    click Increment_hasWorkCapacityAgentCount "#increment_hasworkcapacityagentcount" "3545423355"
    
    Increment_noWorkCapacityAgentCount[\"🟰 <em></em><br/>Increment noWorkCapacityAgentCount"/]:::assignments
    click Increment_noWorkCapacityAgentCount "#increment_noworkcapacityagentcount" "1949083483"
    
    Reset_Counter[\"🟰 <em></em><br/>Reset Counter"/]:::assignments
    click Reset_Counter "#reset_counter" "2200108021"
    
    Are_any_agents_available_for_chat{"🔀 <em></em><br/>Are any agents available for chat?"}:::decisions
    click Are_any_agents_available_for_chat "#are_any_agents_available_for_chat" "935799654"
    
    Messaging_Session_Found{"🔀 <em></em><br/>Messaging Session Found?"}:::decisions
    click Messaging_Session_Found "#messaging_session_found" "2088224354"
    
    Online_Agent_Found{"🔀 <em></em><br/>Online Agent Found?"}:::decisions
    click Online_Agent_Found "#online_agent_found" "4014180594"
    
    Which_Channel{"🔀 <em></em><br/>Which Channel"}:::decisions
    click Which_Channel "#which_channel" "318124009"
    
    Work_Capacity_at_Max{"🔀 <em></em><br/>Work Capacity at Max?"}:::decisions
    click Work_Capacity_at_Max "#work_capacity_at_max" "3019645818"
    
    Loop_through_Members{{"🔁 <em></em><br/>Loop through Members"}}:::loops
    click Loop_through_Members "#loop_through_members" "1603150010"
    
    Loop_thru_Work_Items{{"🔁 <em></em><br/>Loop thru Work Items"}}:::loops
    click Loop_thru_Work_Items "#loop_thru_work_items" "884135156"
    
    Get_Agent_Work[("🔍 <em></em><br/>Get Agent Work Items")]:::recordLookups
    click Get_Agent_Work "#get_agent_work" "4152262229"
    
    Get_Messaging_Session[("🔍 <em></em><br/>Get Messaging Session")]:::recordLookups
    click Get_Messaging_Session "#get_messaging_session" "2764337450"
    
    Get_Omni_Login_Help_Queue_Id[("🔍 <em></em><br/>Get Omni Login Help Queue Id")]:::recordLookups
    click Get_Omni_Login_Help_Queue_Id "#get_omni_login_help_queue_id" "3112281307"
    
    Get_Omni_Support_Queue_Id[("🔍 <em></em><br/>Get Omni Support Queue Id")]:::recordLookups
    click Get_Omni_Support_Queue_Id "#get_omni_support_queue_id" "1120470114"
    
    Get_Online_Agents[("🔍 <em></em><br/>Get Online Agents")]:::recordLookups
    click Get_Online_Agents "#get_online_agents" "791149208"
    
    Get_Queue_Members[("🔍 <em></em><br/>Get Queue Members")]:::recordLookups
    click Get_Queue_Members "#get_queue_members" "3390349766"
    
    Assign_queue_id --> Get_Queue_Members
    Copy_1_of_Assign_queue_id --> Get_Queue_Members
    Flip_Agent_Availability_Flag_to_False --> END_Flip_Agent_Availability_Flag_to_False
    Flip_Agent_Availability_Flag_to_Tue --> END_Flip_Agent_Availability_Flag_to_Tue
    Increment_Counter --> Loop_thru_Work_Items
    Increment_hasWorkCapacityAgentCount --> Reset_Counter
    Increment_noWorkCapacityAgentCount --> Reset_Counter
    Reset_Counter --> Loop_through_Members
    Are_any_agents_available_for_chat --> |"Yes"| Flip_Agent_Availability_Flag_to_Tue
    Are_any_agents_available_for_chat --> |"Default Outcome"| Flip_Agent_Availability_Flag_to_False
    Messaging_Session_Found --> |"Found"| Which_Channel
    Messaging_Session_Found --> |"Default Outcome"| END_Messaging_Session_Found
    Online_Agent_Found --> |"Found"| Get_Agent_Work
    Online_Agent_Found --> |"Default Outcome"| Reset_Counter
    Which_Channel --> |"Omni Support"| Get_Omni_Support_Queue_Id
    Which_Channel --> |"Login Help"| Get_Omni_Login_Help_Queue_Id
    Which_Channel --> |"Default"| END_Which_Channel
    Work_Capacity_at_Max --> |"Yes"| Increment_noWorkCapacityAgentCount
    Work_Capacity_at_Max --> |"Default Outcome"| Increment_hasWorkCapacityAgentCount
    Loop_through_Members --> |"For Each"|Get_Online_Agents
    Loop_through_Members ---> |"After Last"|Are_any_agents_available_for_chat
    Loop_thru_Work_Items --> |"For Each"|Increment_Counter
    Loop_thru_Work_Items ---> |"After Last"|Work_Capacity_at_Max
    Get_Agent_Work --> Loop_thru_Work_Items
    Get_Messaging_Session --> Messaging_Session_Found
    Get_Omni_Login_Help_Queue_Id --> Copy_1_of_Assign_queue_id
    Get_Omni_Support_Queue_Id --> Assign_queue_id
    Get_Online_Agents --> Online_Agent_Found
    Get_Queue_Members --> Loop_through_Members
    START -->  Get_Messaging_Session
    END_Flip_Agent_Availability_Flag_to_False(( END )):::endClass
    END_Flip_Agent_Availability_Flag_to_Tue(( END )):::endClass
    END_Messaging_Session_Found(( END )):::endClass
    END_Which_Channel(( END )):::endClass
    
    
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
    |Label|Messaging | Process | Check Agent Availability|
    |Status|Active|
    |Environments|Default|
    |Interview Label|Messaging | Process | Get available Agents for Chat {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Messaging_Session](#get_messaging_session)|
    |Next Node|[Get_Messaging_Session](#get_messaging_session)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |agentWorkItemCount|Number|⬜|⬜|⬜|<!-- -->|Open Agent Work Items that User is currently working|
    |hasWorkCapacityAgentCount|Number|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |isAgentAvailable|Boolean|⬜|⬜|✅|<!-- -->|Do any of the online agents have capacity for extra work at this time?|
    |noWorkCapacityAgentCount|Number|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |queueId|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |recordId|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Assign_queue_id
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign queue id|
    |Connector|[Get_Queue_Members](#get_queue_members)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |queueId| Assign|Get_Omni_Support_Queue_Id.Id|
    
    
    
    
    ### Copy_1_of_Assign_queue_id
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign queue id|
    |Connector|[Get_Queue_Members](#get_queue_members)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |queueId| Assign|Get_Omni_Login_Help_Queue_Id.Id|
    
    
    
    
    ### Flip_Agent_Availability_Flag_to_False
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Flip Agent Availability Flag to False|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |isAgentAvailable| Assign|⬜|
    
    
    
    
    ### Flip_Agent_Availability_Flag_to_Tue
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Flip Agent Availability Flag to Tue|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |isAgentAvailable| Assign|✅|
    
    
    
    
    ### Increment_Counter
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Increment Counter|
    |Connector|[Loop_thru_Work_Items](#loop_thru_work_items)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |agentWorkItemCount| Add|1|
    
    
    
    
    ### Increment_hasWorkCapacityAgentCount
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Increment hasWorkCapacityAgentCount|
    |Connector|[Reset_Counter](#reset_counter)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |hasWorkCapacityAgentCount| Add|1|
    
    
    
    
    ### Increment_noWorkCapacityAgentCount
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Increment noWorkCapacityAgentCount|
    |Connector|[Reset_Counter](#reset_counter)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |noWorkCapacityAgentCount| Add|1|
    
    
    
    
    ### Reset_Counter
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Reset Counter|
    |Connector|[Loop_through_Members](#loop_through_members)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |agentWorkItemCount| Assign|numberValue: 0<br/>|
    
    
    
    
    ### Are_any_agents_available_for_chat
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Are any agents available for chat?|
    |Default Connector|[Flip_Agent_Availability_Flag_to_False](#flip_agent_availability_flag_to_false)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes_available (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Flip_Agent_Availability_Flag_to_Tue](#flip_agent_availability_flag_to_tue)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|hasWorkCapacityAgentCount| Greater Than|numberValue: 0<br/>|
    
    
    
    
    ### Messaging_Session_Found
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Messaging Session Found?|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Found1 (Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Which_Channel](#which_channel)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Messaging_Session.Id| Is Null|⬜|
    
    
    
    
    ### Online_Agent_Found
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Online Agent Found?|
    |Default Connector|[Reset_Counter](#reset_counter)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Found (Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Agent_Work](#get_agent_work)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|[Get_Online_Agents](#get_online_agents)| Is Empty|⬜|
    
    
    
    
    ### Which_Channel
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Which Channel|
    |Default Connector Label|Default|
    
    
    #### Rule Omni_Support (Omni Support)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Omni_Support_Queue_Id](#get_omni_support_queue_id)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Messaging_Session.ChannelName| Equal To|Omni Messaging|
    
    
    
    
    #### Rule Login_Help (Login Help)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Omni_Login_Help_Queue_Id](#get_omni_login_help_queue_id)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Messaging_Session.ChannelName| Equal To|Login Help|
    
    
    
    
    ### Work_Capacity_at_Max
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Work Capacity at Max?|
    |Default Connector|[Increment_hasWorkCapacityAgentCount](#increment_hasworkcapacityagentcount)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Increment_noWorkCapacityAgentCount](#increment_noworkcapacityagentcount)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|agentWorkItemCount| Greater Than|1|
    
    
    
    
    ### Loop_through_Members
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Loop through Members|
    |Collection Reference|[Get_Queue_Members](#get_queue_members)|
    |Iteration Order|Asc|
    |Next Value Connector|[Get_Online_Agents](#get_online_agents)|
    |No More Values Connector|[Are_any_agents_available_for_chat](#are_any_agents_available_for_chat)|
    
    
    ### Loop_thru_Work_Items
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Loop thru Work Items|
    |Collection Reference|[Get_Agent_Work](#get_agent_work)|
    |Iteration Order|Asc|
    |Next Value Connector|[Increment_Counter](#increment_counter)|
    |No More Values Connector|[Work_Capacity_at_Max](#work_capacity_at_max)|
    
    
    ### Get_Agent_Work
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|AgentWork|
    |Label|Get Agent Work Items|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Store Output Automatically|✅|
    |Connector|[Loop_thru_Work_Items](#loop_thru_work_items)|
    
    
    #### Filters (logic: **1 AND (2 OR 3)**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|UserId| Equal To|Loop_through_Members.UserOrGroupId|
    |2|Status| Equal To|Assigned|
    |3|Status| Equal To|Opened|
    
    
    
    
    ### Get_Messaging_Session
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|MessagingSession|
    |Label|Get Messaging Session|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Messaging_Session_Found](#messaging_session_found)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Get_Omni_Login_Help_Queue_Id
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Group|
    |Label|Get Omni Login Help Queue Id|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|- Id<br/>- DeveloperName<br/>|
    |Store Output Automatically|✅|
    |Connector|[Copy_1_of_Assign_queue_id](#copy_1_of_assign_queue_id)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Type| Equal To|Queue|
    |2|DeveloperName| Equal To|Omni_Login_Help|
    
    
    
    
    ### Get_Omni_Support_Queue_Id
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Group|
    |Label|Get Omni Support Queue Id|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|- Id<br/>- DeveloperName<br/>|
    |Store Output Automatically|✅|
    |Connector|[Assign_queue_id](#assign_queue_id)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Type| Equal To|Queue|
    |2|DeveloperName| Equal To|Omni_Support|
    
    
    
    
    ### Get_Online_Agents
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|UserServicePresence|
    |Label|Get Online Agents|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Store Output Automatically|✅|
    |Connector|[Online_Agent_Found](#online_agent_found)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|UserId| Equal To|Loop_through_Members.UserOrGroupId|
    |2|StatusEndDate| Is Null|<!-- -->|
    |3|IsAway| Equal To|⬜|
    
    
    
    
    ### Get_Queue_Members
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|GroupMember|
    |Label|Get Queue Members|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Store Output Automatically|✅|
    |Connector|[Loop_through_Members](#loop_through_members)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|GroupId| Equal To|queueId|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

