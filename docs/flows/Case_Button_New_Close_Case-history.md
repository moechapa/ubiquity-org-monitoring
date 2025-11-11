# Case_Button_New_Close_Case history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Case_Button_New_Close_Case-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Screen Flow</b>"]):::startClass
    click START "#general-information" "2380828716"
    
    Assign_individual_case_info[\"🟰 <em></em><br/>Assign individual case info"/]:::assignments
    click Assign_individual_case_info "#assign_individual_case_info" "160496620"
    
    Assign_new_values_to_case[\"🟰 <em></em><br/>Assign new values to case"/]:::assignments
    click Assign_new_values_to_case "#assign_new_values_to_case" "1821507184"
    
    Assign_Resolved_Status[\"🟰 <em></em><br/>Assign Resolved Status"/]:::assignments
    click Assign_Resolved_Status "#assign_resolved_status" "3364549169"
    
    Assign_shared_user_var[\"🟰 <em></em><br/>Assign shared user var"/]:::assignments
    click Assign_shared_user_var "#assign_shared_user_var" "2775691761"
    
    Assin_calc_info[\"🟰 <em></em><br/>Assin calc info"/]:::assignments
    click Assin_calc_info "#assin_calc_info" "1866792779"
    
    Check_for_team_member{"🔀 <em></em><br/>Check for team member"}:::decisions
    click Check_for_team_member "#check_for_team_member" "335786741"
    
    Check_if_need_compliance_calcs_updated{"🔀 <em></em><br/>Check if need compliance calcs updated"}:::decisions
    click Check_if_need_compliance_calcs_updated "#check_if_need_compliance_calcs_updated" "1898897414"
    
    Children_and_Calcs_Resolved{"🔀 <em></em><br/>Children and Calcs Resolved"}:::decisions
    click Children_and_Calcs_Resolved "#children_and_calcs_resolved" "94613785"
    
    Is_the_current_user_the_case_owner{"🔀 <em></em><br/>Is the current user the case owner?"}:::decisions
    click Is_the_current_user_the_case_owner "#is_the_current_user_the_case_owner" "2621860277"
    
    Required_Fields_Entered{"🔀 <em></em><br/>Required Fields Entered"}:::decisions
    click Required_Fields_Entered "#required_fields_entered" "3959263030"
    
    Calc_Loop{{"🔁 <em></em><br/>Calc Loop"}}:::loops
    click Calc_Loop "#calc_loop" "1671508053"
    
    Child_Case_Loop{{"🔁 <em></em><br/>Child Case Loop"}}:::loops
    click Child_Case_Loop "#child_case_loop" "3955453264"
    
    Case_to_Close[("🔍 <em></em><br/>Case to Close")]:::recordLookups
    click Case_to_Close "#case_to_close" "1648065605"
    
    Get_Calculations[("🔍 <em></em><br/>Get Calculations")]:::recordLookups
    click Get_Calculations "#get_calculations" "3063737540"
    
    Get_Child_Case[("🔍 <em></em><br/>Get Child Cases")]:::recordLookups
    click Get_Child_Case "#get_child_case" "4024069872"
    
    Update_Calcs[("🛠️ <em></em><br/>Update Calcs")]:::recordUpdates
    click Update_Calcs "#update_calcs" "91735856"
    
    Update_Case[("🛠️ <em></em><br/>Update Case")]:::recordUpdates
    click Update_Case "#update_case" "1882545172"
    
    Case_Edit_Screen_1(["💻 <em></em><br/>Case Edit Screen 1"]):::screens
    click Case_Edit_Screen_1 "#case_edit_screen_1" "3248274118"
    
    Case_Not_Resolved(["💻 <em></em><br/>Case Not Resolved"]):::screens
    click Case_Not_Resolved "#case_not_resolved" "2798635293"
    
    CaseNotResolved2(["💻 <em></em><br/>Case Not Resolved"]):::screens
    click CaseNotResolved2 "#casenotresolved2" "2783329658"
    
    UserIsNotOwner(["💻 <em></em><br/>User Is Not Owner"]):::screens
    click UserIsNotOwner "#userisnotowner" "406227245"
    
    Assign_individual_case_info --> Child_Case_Loop
    Assign_new_values_to_case --> Check_if_need_compliance_calcs_updated
    Assign_Resolved_Status --> Update_Case
    Assign_shared_user_var --> Case_to_Close
    Assin_calc_info --> Calc_Loop
    Check_for_team_member --> |"Team member present"| Assign_new_values_to_case
    Check_for_team_member --> |"Default Outcome"| Case_Edit_Screen_1
    Check_if_need_compliance_calcs_updated --> |"Needs calc update"| Update_Calcs
    Check_if_need_compliance_calcs_updated --> |"Default Outcome"| Assign_Resolved_Status
    Children_and_Calcs_Resolved --> |"Yes"| Required_Fields_Entered
    Children_and_Calcs_Resolved --> |"No"| Child_Case_Loop
    Is_the_current_user_the_case_owner --> |"Yes"| Get_Child_Case
    Is_the_current_user_the_case_owner --> |"No"| UserIsNotOwner
    Required_Fields_Entered --> |"Sender Role/Category/Sub-Category"| Case_Edit_Screen_1
    Required_Fields_Entered --> |"Implementation"| Case_Edit_Screen_1
    Required_Fields_Entered --> |"Account/Plan"| Case_Edit_Screen_1
    Required_Fields_Entered --> |"Team Member"| Case_Edit_Screen_1
    Required_Fields_Entered --> |"Yes"| Check_if_need_compliance_calcs_updated
    Calc_Loop --> |"For Each"|Assin_calc_info
    Calc_Loop ---> |"After Last"|Case_Not_Resolved
    Child_Case_Loop --> |"For Each"|Assign_individual_case_info
    Child_Case_Loop ---> |"After Last"|Calc_Loop
    Case_to_Close --> Is_the_current_user_the_case_owner
    Get_Calculations --> Children_and_Calcs_Resolved
    Get_Child_Case --> Get_Calculations
    Update_Calcs --> Assign_Resolved_Status
    Update_Case --> END_Update_Case
    Update_Case -. Fault .->CaseNotResolved2
    Case_Edit_Screen_1 --> Check_for_team_member
    Case_Not_Resolved --> END_Case_Not_Resolved
    CaseNotResolved2 --> END_CaseNotResolved2
    UserIsNotOwner --> END_UserIsNotOwner
    START -->  Assign_shared_user_var
    END_Update_Case(( END )):::endClass
    END_Case_Not_Resolved(( END )):::endClass
    END_CaseNotResolved2(( END )):::endClass
    END_UserIsNotOwner(( END )):::endClass
    
    
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
    |Process Type| Flow|
    |Label|Case | Button | New Close Case|
    |Status|Active|
    |Description|Updated to show unresolved child case and calc info|
    |Environments|Default|
    |Interview Label|Case | Button | New Close Case {!$Flow.CurrentDateTime}|
    |Run In Mode| System Mode With Sharing|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Assign_shared_user_var](#assign_shared_user_var)|
    |Next Node|[Assign_shared_user_var](#assign_shared_user_var)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |calcInfo|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |childCaseInfo|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |isSharedUser|Boolean|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |profileId|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |profileName|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |recordId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    |selectedAccountId|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |selectedCategory|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |selectedDepartment|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |selectedImplementationId|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |selectedPlanId|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |selectedSenderRole|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |selectedSubCategory|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |undeliveredCalculations|SObject|✅|⬜|⬜|Calculation__c|<!-- -->|
    |unresolvedChildCases|SObject|✅|⬜|⬜|Case|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |calcLink|String|LEFT({!$Api.Partner_Server_URL_340}, FIND( '/services', {!$Api.Partner_Server_URL_340}))+"lightning/r/Calculation__c/"+{!Calc_Loop.Id}+"/view"|<!-- -->|
    |childCaseLink|String|LEFT({!$Api.Partner_Server_URL_340}, FIND( '/services', {!$Api.Partner_Server_URL_340}))+"lightning/r/Case/"+{!Child_Case_Loop.Id}+"/view"|<!-- -->|
    |newAccountId|String|IF(ISBLANK({!selectedAccountId}),{!Case_to_Close.AccountId},{!selectedAccountId})|Uses existing if no selection is found|
    |newImplementationId|String|IF(ISBLANK({!selectedImplementationId}),{!Case_to_Close.Implementation__c},{!selectedImplementationId})|Uses existing if no new one is found|
    |newPlanId|String|IF(ISBLANK({!selectedPlanId}),{!Case_to_Close.Plan__c},{!selectedPlanId})|Uses existing if no new one is found|
    |newSubject|String|IF(ISBLANK({!Subject}),{!Case_to_Close.Subject},{!Subject})|Uses existing if no new one is found|
    
    
    ## Text Templates
    
    |Name|Text|Description|
    |:-- |:-- |:--  |
    |calcInfoRich|<ul>{!calcInfo}</ul>|<!-- -->|
    |childCaseInfoRich|<ul>{!childCaseInfo}</ul>|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Assign_individual_case_info
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign individual case info|
    |Connector|[Child_Case_Loop](#child_case_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |childCaseInfo| Add|<li><a href="|
    |childCaseInfo| Add|childCaseLink|
    |childCaseInfo| Add|" rel="noopener noreferrer" target="_self">|
    |childCaseInfo| Add|Child_Case_Loop.CaseNumber|
    |childCaseInfo| Add|</a> -|
    |childCaseInfo| Add|Child_Case_Loop.Subject|
    |childCaseInfo| Add|</li>|
    
    
    
    
    ### Assign_new_values_to_case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign new values to case|
    |Description|Since the screen for manual selections was visited, assign screen values|
    |Connector|[Check_if_need_compliance_calcs_updated](#check_if_need_compliance_calcs_updated)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Case_to_Close.AccountId| Assign|newAccountId|
    |Case_to_Close.Implementation__c| Assign|newImplementationId|
    |Case_to_Close.Plan__c| Assign|newPlanId|
    |Case_to_Close.Subject| Assign|newSubject|
    |Case_to_Close.Sender_Role__c| Assign|selectedSenderRole|
    |Case_to_Close.Category__c| Assign|selectedCategory|
    |Case_to_Close.Sub_Category__c| Assign|selectedSubCategory|
    |Case_to_Close.Department__c| Assign|selectedDepartment|
    
    
    
    
    ### Assign_Resolved_Status
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Resolved Status|
    |Description|Woooo that's what we want let's gooooo|
    |Connector|[Update_Case](#update_case)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Case_to_Close.Status| Assign|Resolved|
    
    
    
    
    ### Assign_shared_user_var
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign shared user var|
    |Description|Not using default because it would wipe upon revisiting case edit screen after failed validation (missing required fields)|
    |Connector|[Case_to_Close](#case_to_close)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |isSharedUser| Assign|$User.Shared_User__c|
    
    
    
    
    ### Assin_calc_info
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assin calc info|
    |Connector|[Calc_Loop](#calc_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |calcInfo| Add|<li><a href="|
    |calcInfo| Add|calcLink|
    |calcInfo| Add|" rel="noopener noreferrer" target="_self">|
    |calcInfo| Add|Calc_Loop.Name|
    |calcInfo| Add|</a></li>|
    
    
    
    
    ### Check_for_team_member
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check for team member|
    |Description|For shared users, is there a team member on the record|
    |Default Connector|isGoTo: true<br/>targetReference: Case_Edit_Screen_1<br/>|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Team_member_present (Team member present)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_new_values_to_case](#assign_new_values_to_case)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Case_to_Close.Team_Member__c| Is Blank|⬜|
    |2|isSharedUser| Equal To|⬜|
    
    
    
    
    ### Check_if_need_compliance_calcs_updated
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check if need compliance calcs updated|
    |Description|Auto marks calculations under case owned by compliance as "delivered"|
    |Default Connector|[Assign_Resolved_Status](#assign_resolved_status)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Needs_calc_update (Needs calc update)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Calcs](#update_calcs)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Case_to_Close.Case_Team_New__c| Equal To|Compliance|
    |2|undeliveredCalculations| Is Empty|⬜|
    
    
    
    
    ### Children_and_Calcs_Resolved
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Children and Calcs Resolved|
    |Default Connector|[Child_Case_Loop](#child_case_loop)|
    |Default Connector Label|No|
    
    
    #### Rule YesChild (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Required_Fields_Entered](#required_fields_entered)|
    |Condition Logic|1 AND (2 OR 3)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|unresolvedChildCases| Is Empty|✅|
    |2|undeliveredCalculations| Is Empty|✅|
    |3|Case_to_Close.Case_Team_New__c| Equal To|Compliance|
    
    
    
    
    ### Is_the_current_user_the_case_owner
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Is the current user the case owner?|
    |Default Connector|[UserIsNotOwner](#userisnotowner)|
    |Default Connector Label|No|
    
    
    #### Rule Yes (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Child_Case](#get_child_case)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Case_to_Close.OwnerId| Contains|$User.Id|
    |2|$User.Can_Close_Other_Cases__c| Equal To|✅|
    
    
    
    
    ### Required_Fields_Entered
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Required Fields Entered|
    |Default Connector|[Check_if_need_compliance_calcs_updated](#check_if_need_compliance_calcs_updated)|
    |Default Connector Label|Yes|
    
    
    #### Rule NoCategory (Sender Role/Category/Sub-Category)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Case_Edit_Screen_1](#case_edit_screen_1)|
    |Condition Logic|(1 OR 4 OR 5 OR 6) AND 2 AND 3 AND 7|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Case_to_Close.Category__c| Is Null|✅|
    |2|$Profile.Id| Not Equal To|00e1G0000011hdP|
    |3|$Profile.Id| Not Equal To|00e00000006ohd0|
    |4|Case_to_Close.Sender_Role__c| Is Null|✅|
    |5|Case_to_Close.Sub_Category__c| Is Null|✅|
    |6|Case_to_Close.Department__c| Is Null|✅|
    |7|$Profile.Id| Not Equal To|00eHo000000lQRj|
    
    
    
    
    #### Rule NoImplementation (Implementation)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|isGoTo: true<br/>targetReference: Case_Edit_Screen_1<br/>|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Case_to_Close.Implementation__c| Is Null|✅|
    |2|$Profile.Name| Contains|Client Onboarding|
    
    
    
    
    #### Rule NoAccount (Account/Plan)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|isGoTo: true<br/>targetReference: Case_Edit_Screen_1<br/>|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Case_to_Close.AccountId| Is Null|✅|
    |2|Case_to_Close.Plan__c| Is Null|✅|
    
    
    
    
    #### Rule NoTeam (Team Member)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|isGoTo: true<br/>targetReference: Case_Edit_Screen_1<br/>|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Case_to_Close.Team_Member__c| Is Null|✅|
    |2|$User.Shared_User__c| Equal To|✅|
    
    
    
    
    ### Calc_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Calc Loop|
    |Collection Reference|undeliveredCalculations|
    |Iteration Order|Asc|
    |Next Value Connector|[Assin_calc_info](#assin_calc_info)|
    |No More Values Connector|[Case_Not_Resolved](#case_not_resolved)|
    
    
    ### Child_Case_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Child Case Loop|
    |Collection Reference|unresolvedChildCases|
    |Iteration Order|Asc|
    |Next Value Connector|[Assign_individual_case_info](#assign_individual_case_info)|
    |No More Values Connector|[Calc_Loop](#calc_loop)|
    
    
    ### Case_to_Close
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Case|
    |Label|Case to Close|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|- Id<br/>- OwnerId<br/>- AccountId<br/>- Plan__c<br/>- Implementation__c<br/>- Team_Member__c<br/>- RecordTypeId<br/>- Sub_Category__c<br/>- Category__c<br/>- Department__c<br/>- Subject<br/>- Sender_Role__c<br/>- Case_Team_New__c<br/>|
    |Store Output Automatically|✅|
    |Connector|[Is_the_current_user_the_case_owner](#is_the_current_user_the_case_owner)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Get_Calculations
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Calculation__c|
    |Label|Get Calculations|
    |Assign Null Values If No Records Found|⬜|
    |Output Reference|undeliveredCalculations|
    |Queried Fields|Name|
    |Connector|[Children_and_Calcs_Resolved](#children_and_calcs_resolved)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Case__c| Equal To|Case_to_Close.Id|
    |2|Status__c| Not Equal To|Delivered|
    
    
    
    
    ### Get_Child_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Case|
    |Label|Get Child Cases|
    |Assign Null Values If No Records Found|⬜|
    |Output Reference|unresolvedChildCases|
    |Queried Fields|- Subject<br/>- CaseNumber<br/>|
    |Connector|[Get_Calculations](#get_calculations)|
    
    
    #### Filters (logic: **(1 OR 3) AND 2**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|IsClosed| Not Equal To|✅|
    |2|ParentId| Equal To|Case_to_Close.Id|
    |3|Status| Equal To|Missing Info|
    
    
    
    
    ### Update_Calcs
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Calculation__c|
    |Label|Update Calcs|
    |Connector|[Assign_Resolved_Status](#assign_resolved_status)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Case__c| Equal To|recordId|
    |2|Status__c| Not Equal To|Delivered|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Status__c|Delivered|
    
    
    
    
    ### Update_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Case|
    |Fault Connector|[CaseNotResolved2](#casenotresolved2)|
    |Input Reference|[Case_to_Close](#case_to_close)|
    
    
    ### Case_Edit_Screen_1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|Case Edit Screen 1|
    |Allow Back|⬜|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Show Footer|✅|
    |Show Header|✅|
    |Connector|[Check_for_team_member](#check_for_team_member)|
    
    
    #### picklistSelector
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Extension Name|c:filteredCasePicklists|
    |Field Type| Component Instance|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Output Parameters|- assignToReference: selectedCategory<br/>&nbsp;&nbsp;name: selectedCatValue<br/>- assignToReference: selectedDepartment<br/>&nbsp;&nbsp;name: selectedDepValue<br/>- assignToReference: selectedSenderRole<br/>&nbsp;&nbsp;name: selectedRoleValue<br/>- assignToReference: selectedSubCategory<br/>&nbsp;&nbsp;name: selectedSubCatValue<br/>|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Flow Record Id (input)|recordId|
    
    
    
    
    #### Subject
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Default Value|Case_to_Close.Subject|
    |Field Text|Subject|
    |Field Type| Input Field|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Case_to_Close.Team_Member__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Object Field Reference|Case_to_Close.Team_Member__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: isSharedUser<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;booleanValue: true<br/>|
    
    
    
    
    #### Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Extension Name|flowruntime:lookup|
    |Field Type| Component Instance|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Output Parameters|assignToReference: selectedAccountId<br/>name: recordId<br/>|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Field Api Name (input)|AccountId|
    |Label (input)|Account|
    |Object Api Name (input)|Case|
    |Record Id (input)|Case_to_Close.AccountId|
    |Required (input)|✅|
    
    
    
    
    #### Plan
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Extension Name|flowruntime:lookup|
    |Field Type| Component Instance|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Output Parameters|assignToReference: selectedPlanId<br/>name: recordId<br/>|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Field Api Name (input)|Plan__c|
    |Label (input)|Plan|
    |Object Api Name (input)|Case|
    |Record Id (input)|Case_to_Close.Plan__c|
    |Required (input)|✅|
    
    
    
    
    #### Implementation
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Extension Name|flowruntime:lookup|
    |Field Type| Component Instance|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Output Parameters|assignToReference: selectedImplementationId<br/>name: recordId<br/>|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: profileName<br/>&nbsp;&nbsp;operator: Contains<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;stringValue: Client Onboarding<br/>|
    |Field Api Name (input)|Implementation__c|
    |Label (input)|Implementation|
    |Object Api Name (input)|Case|
    |Record Id (input)|Case_to_Close.Implementation__c|
    |Required (input)|✅|
    
    
    
    
    ### Case_Not_Resolved
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|Case Not Resolved|
    |Allow Back|⬜|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Next Or Finish Button Label|Exit|
    |Show Footer|✅|
    |Show Header|✅|
    
    
    #### displayCaseChildren
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p><strong style="font-size: 18px;">Cannot close case until all child cases are resolved!</strong></p><p><br></p><p>{!childCaseInfoRich}</p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: childCaseInfo<br/>&nbsp;&nbsp;operator: NotEqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;stringValue: ''<br/>|
    
    
    
    
    #### displayCalc
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p><strong style="font-size: 18px;">Cannot close case until all calculations are delivered!</strong></p><p><br></p><p>{!calcInfoRich}</p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;- leftValueReference: calcInfo<br/>&nbsp;&nbsp;&nbsp;&nbsp;operator: NotEqualTo<br/>&nbsp;&nbsp;&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;stringValue: ''<br/>&nbsp;&nbsp;- leftValueReference: Case_to_Close.Case_Team_New__c<br/>&nbsp;&nbsp;&nbsp;&nbsp;operator: NotEqualTo<br/>&nbsp;&nbsp;&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;stringValue: Compliance<br/>|
    
    
    
    
    ### CaseNotResolved2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|Case Not Resolved|
    |Allow Back|⬜|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Next Or Finish Button Label|Exit|
    |Show Footer|✅|
    |Show Header|✅|
    
    
    #### CaseNotResolved
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p style="text-align: center;"><strong style="font-size: 18px; color: rgb(234, 0, 30);">CASE NOT RESOLVED</strong></p><p><br></p><p><span style="color: rgb(234, 0, 30);">{!$Flow.FaultMessage}</span></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    ### UserIsNotOwner
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|User Is Not Owner|
    |Allow Back|⬜|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Next Or Finish Button Label|Exit|
    |Show Footer|✅|
    |Show Header|✅|
    
    
    #### Child_Cases_not_Resolved_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p><span style="font-size: 12px;">Case not resolved: Only the case owner can resolve a case.</span></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

