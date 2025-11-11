# Opportunity_After_Trigger history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Opportunity_After_Trigger-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "3765089345"
    
    Send_BI_Error_Email("📧 <em></em><br/>Send BI Error Email"):::actionCalls
    click Send_BI_Error_Email "#send_bi_error_email" "4032745153"
    
    Submit_Opp_for_Approval("⚡ <em></em><br/>Submit Opp for Approval"):::actionCalls
    click Submit_Opp_for_Approval "#submit_opp_for_approval" "149659357"
    
    Add_Default_to_Approvers[\"🟰 <em></em><br/>Add Default to Approvers"/]:::assignments
    click Add_Default_to_Approvers "#add_default_to_approvers" "151029934"
    
    Add_Opp_Owner_Manager_as_Approver[\"🟰 <em></em><br/>Add Opp Owner Manager as Approver"/]:::assignments
    click Add_Opp_Owner_Manager_as_Approver "#add_opp_owner_manager_as_approver" "1099165069"
    
    Add_UserId_to_ApproverIds[\"🟰 <em></em><br/>Add UserId to ApproverIds"/]:::assignments
    click Add_UserId_to_ApproverIds "#add_userid_to_approverids" "343416502"
    
    Approval_Submission_Check{"🔀 <em></em><br/>Approval Submission Check"}:::decisions
    click Approval_Submission_Check "#approval_submission_check" "4054571007"
    
    Assignment_Found_Check{"🔀 <em></em><br/>Assignment Found Check"}:::decisions
    click Assignment_Found_Check "#assignment_found_check" "2745366682"
    
    Check_if_Found_Active_Default_User{"🔀 <em></em><br/>Check if Found Active Default User"}:::decisions
    click Check_if_Found_Active_Default_User "#check_if_found_active_default_user" "2388226962"
    
    Partner_Found_Check{"🔀 <em></em><br/>Partner Found Check"}:::decisions
    click Partner_Found_Check "#partner_found_check" "3554623424"
    
    Partner_Referral_Advisor_Check{"🔀 <em></em><br/>Partner Referral + Advisor Check"}:::decisions
    click Partner_Referral_Advisor_Check "#partner_referral_advisor_check" "2344353996"
    
    Tag_Category_Found_Check{"🔀 <em></em><br/>Tag Category Found Check"}:::decisions
    click Tag_Category_Found_Check "#tag_category_found_check" "986538956"
    
    Tag_Found_Check{"🔀 <em></em><br/>Tag Found Check"}:::decisions
    click Tag_Found_Check "#tag_found_check" "2469040323"
    
    Get_Associated_Partners[("🔍 <em></em><br/>Get Associated Partners")]:::recordLookups
    click Get_Associated_Partners "#get_associated_partners" "2669185959"
    
    Get_Default_Partnership_User[("🔍 <em></em><br/>Get Default Partnership User")]:::recordLookups
    click Get_Default_Partnership_User "#get_default_partnership_user" "1720770524"
    
    Get_Flow_Interview[("🔍 <em></em><br/>Get Flow Interview")]:::recordLookups
    click Get_Flow_Interview "#get_flow_interview" "2291588199"
    
    Get_Tag[("🔍 <em></em><br/>Get Tag")]:::recordLookups
    click Get_Tag "#get_tag" "3452400710"
    
    Get_Tag_Assignment[("🔍 <em></em><br/>Get Tag Assignment")]:::recordLookups
    click Get_Tag_Assignment "#get_tag_assignment" "1672551898"
    
    Get_Tag_Category[("🔍 <em></em><br/>Get Tag Category")]:::recordLookups
    click Get_Tag_Category "#get_tag_category" "3633283384"
    
    Send_BI_Error_Email --> END_Send_BI_Error_Email
    Submit_Opp_for_Approval --> END_Submit_Opp_for_Approval
    Submit_Opp_for_Approval -. Fault .->Get_Flow_Interview
    Add_Default_to_Approvers --> Submit_Opp_for_Approval
    Add_Opp_Owner_Manager_as_Approver --> Submit_Opp_for_Approval
    Add_UserId_to_ApproverIds --> Submit_Opp_for_Approval
    Approval_Submission_Check --> |"Yes Upgrade"| Partner_Referral_Advisor_Check
    Approval_Submission_Check --> |"Yes Other"| Partner_Referral_Advisor_Check
    Approval_Submission_Check --> |"Default Outcome"| END_Approval_Submission_Check
    Assignment_Found_Check --> |"User With Tag"| Add_UserId_to_ApproverIds
    Assignment_Found_Check --> |"Default Outcome"| Get_Default_Partnership_User
    Check_if_Found_Active_Default_User --> |"Found Active Default"| Add_Default_to_Approvers
    Check_if_Found_Active_Default_User --> |"Default Outcome"| Add_Opp_Owner_Manager_as_Approver
    Partner_Found_Check --> |"Partner Found"| Get_Tag_Category
    Partner_Found_Check --> |"Default Outcome"| Get_Default_Partnership_User
    Partner_Referral_Advisor_Check --> |"Ubiquity Advisor Sale"| Get_Associated_Partners
    Partner_Referral_Advisor_Check --> |"Default Outcome"| Submit_Opp_for_Approval
    Tag_Category_Found_Check --> |"Found Category"| Get_Tag
    Tag_Category_Found_Check --> |"Default Outcome"| Get_Default_Partnership_User
    Tag_Found_Check --> |"Found Tag"| Get_Tag_Assignment
    Tag_Found_Check --> |"Default Outcome"| Get_Default_Partnership_User
    Get_Associated_Partners --> Partner_Found_Check
    Get_Default_Partnership_User --> Check_if_Found_Active_Default_User
    Get_Flow_Interview --> Send_BI_Error_Email
    Get_Tag --> Tag_Found_Check
    Get_Tag_Assignment --> Assignment_Found_Check
    Get_Tag_Category --> Tag_Category_Found_Check
    START -->  Approval_Submission_Check
    END_Send_BI_Error_Email(( END )):::endClass
    END_Submit_Opp_for_Approval(( END )):::endClass
    END_Approval_Submission_Check(( END )):::endClass
    
    
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
    |Object|Opportunity|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Update|
    |Label|Opportunity | After Trigger | Closure Approval Process Automation|
    |Status|Active|
    |Description|Submits won plan sales and "Verbal Commitment" upgrades for approval.  Retrieves specific PSM approver for advisor territory if sale is LS "Partner Referral" LSD "Advisor".|
    |Environments|Default|
    |Interview Label|Opportunity | After Trigger | {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Approval_Submission_Check](#approval_submission_check)|
    |Next Node|[Approval_Submission_Check](#approval_submission_check)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|StageName| Is Changed|✅|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |approverIds|String|✅|⬜|⬜|<!-- -->|<!-- -->|
    |submissionComment|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |flowGuidLink|String|LEFT({!$Api.Partner_Server_URL_340}, FIND( '/services', {!$Api.Partner_Server_URL_340}))+"builder_platform_interaction/flowBuilder.app?flowId="+{!Get_Flow_Interview.ActiveVersionId}+"&guid="+{!$Flow.InterviewGuid}|<!-- -->|
    |nameOfTag|String|MID({!Get_Associated_Partners.Account__r.n2de__Distribution_engine_details__r.n2de__Territory__c},FIND(".",{!Get_Associated_Partners.Account__r.n2de__Distribution_engine_details__r.n2de__Territory__c})+1,LEN({!Get_Associated_Partners.Account__r.n2de__Distribution_engine_details__r.n2de__Territory__c})-FIND(".",{!Get_Associated_Partners.Account__r.n2de__Distribution_engine_details__r.n2de__Territory__c}))|<!-- -->|
    |nameOfTagCollection|String|"Map." & LEFT({!Get_Associated_Partners.Account__r.n2de__Distribution_engine_details__r.n2de__Territory__c},FIND(".",{!Get_Associated_Partners.Account__r.n2de__Distribution_engine_details__r.n2de__Territory__c})-1)|<!-- -->|
    
    
    ## Constants
    
    |Name|Data Type|Value|Description|
    |:-- |:--:|:--:|:--  |
    |defaultAdvisorApproverUsername|String|pkiefer@myubiquity.com|Username of the default approver for ubiquity advisor sourced plan sales.|
    
    
    ## Flow Nodes Details
    
    ### Send_BI_Error_Email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send BI Error Email|
    |Action Type|Email Simple|
    |Action Name|emailSimple|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|emailSimple|
    |Offset|0|
    |Email Addresses (input)|bi@myubiquity.com|
    |Sender Type (input)|DefaultWorkflowUser|
    |Email Subject (input)|Opportunity approval error|
    |Email Body (input)|emailBody|
    |Send Rich Body (input)|✅|
    
    
    ### Submit_Opp_for_Approval
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Submit Opp for Approval|
    |Action Type|Submit|
    |Action Name|submit|
    |Fault Connector|[Get_Flow_Interview](#get_flow_interview)|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|submit|
    |Offset|0|
    |Store Output Automatically|✅|
    |Object Id (input)|$Record.Id|
    |Comment (input)|submissionComment|
    |Submitter Id (input)|$Record.OwnerId|
    |Next Approver Ids (input)|approverIds|
    
    
    ### Add_Default_to_Approvers
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add Default to Approvers|
    |Connector|[Submit_Opp_for_Approval](#submit_opp_for_approval)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |approverIds| Add|Get_Default_Partnership_User.Id|
    |submissionComment| Assign|Submitted through flow to default advisor approver.|
    
    
    
    
    ### Add_Opp_Owner_Manager_as_Approver
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add Opp Owner Manager as Approver|
    |Connector|[Submit_Opp_for_Approval](#submit_opp_for_approval)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |approverIds| Add|$Record.Owner.ManagerId|
    |submissionComment| Assign|Submitted through flow to owner's manager. Failed to find default advisor approver.|
    
    
    
    
    ### Add_UserId_to_ApproverIds
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add UserId to ApproverIds|
    |Connector|[Submit_Opp_for_Approval](#submit_opp_for_approval)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |approverIds| Add|Get_Tag_Assignment.n2de__User__c|
    |submissionComment| Assign|Submitted through flow to the owner of {!nameOfTag} territory in {!nameOfTagCollection}.|
    
    
    
    
    ### Approval_Submission_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Approval Submission Check|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes_Upgrade (Yes Upgrade)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[Partner_Referral_Advisor_Check](#partner_referral_advisor_check)|
    |Condition Logic|1 AND (2 OR 3)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.StageName| Equal To|Verbal Commitment|
    |2|$Record.Type| Equal To|Upgrade|
    |3|$Record.Type| Equal To|Downgrade|
    
    
    
    
    #### Rule Yes_Other (Yes Other)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[Partner_Referral_Advisor_Check](#partner_referral_advisor_check)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Owner.Team__c| Equal To|Sales|
    |2|$Record.StageName| Equal To|Closed Won|
    
    
    
    
    ### Assignment_Found_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Assignment Found Check|
    |Default Connector|isGoTo: true<br/>targetReference: Get_Default_Partnership_User<br/>|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule User_With_Tag (User With Tag)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Add_UserId_to_ApproverIds](#add_userid_to_approverids)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|[Get_Tag_Assignment](#get_tag_assignment)| Is Null|⬜|
    
    
    
    
    ### Check_if_Found_Active_Default_User
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check if Found Active Default User|
    |Default Connector|[Add_Opp_Owner_Manager_as_Approver](#add_opp_owner_manager_as_approver)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Found_Active_Default (Found Active Default)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Add_Default_to_Approvers](#add_default_to_approvers)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|[Get_Default_Partnership_User](#get_default_partnership_user)| Is Null|⬜|
    
    
    
    
    ### Partner_Found_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Partner Found Check|
    |Default Connector|[Get_Default_Partnership_User](#get_default_partnership_user)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Partner_Found (Partner Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Tag_Category](#get_tag_category)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|[Get_Associated_Partners](#get_associated_partners)| Is Null|⬜|
    
    
    
    
    ### Partner_Referral_Advisor_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Partner Referral + Advisor Check|
    |Default Connector|[Submit_Opp_for_Approval](#submit_opp_for_approval)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Ubiquity_Advisor_Sale (Ubiquity Advisor Sale)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Associated_Partners](#get_associated_partners)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.LeadSource| Equal To|Partner Referral|
    |2|$Record.LeadSourceDetail__c| Equal To|Advisor|
    
    
    
    
    ### Tag_Category_Found_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Tag Category Found Check|
    |Default Connector|isGoTo: true<br/>targetReference: Get_Default_Partnership_User<br/>|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Found_Category (Found Category)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Tag](#get_tag)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|[Get_Tag_Category](#get_tag_category)| Is Null|⬜|
    
    
    
    
    ### Tag_Found_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Tag Found Check|
    |Default Connector|isGoTo: true<br/>targetReference: Get_Default_Partnership_User<br/>|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Found_Tag (Found Tag)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Tag_Assignment](#get_tag_assignment)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|[Get_Tag](#get_tag)| Is Null|⬜|
    
    
    
    
    ### Get_Associated_Partners
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Associated_Partner__c|
    |Label|Get Associated Partners|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|- Id<br/>- Account__c<br/>|
    |Sort Field|Primary_Partner__c|
    |Sort Order|Desc|
    |Store Output Automatically|✅|
    |Connector|[Partner_Found_Check](#partner_found_check)|
    
    
    #### Filters (logic: **((1 AND 2 AND 3) OR 4) AND 5**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Partner_Role__c| Equal To|Financial Advisory Firm (Referral Only)|
    |2|Partner_Role__c| Equal To|Financial Advisory Firm|
    |3|Partner_Role__c| Equal To|Referring Partner|
    |4|Opportunity__c| Equal To|$Record.Id|
    |5|Account__c| Is Null|<!-- -->|
    
    
    
    
    ### Get_Default_Partnership_User
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|User|
    |Label|Get Default Partnership User|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|- Id<br/>- IsActive<br/>|
    |Store Output Automatically|✅|
    |Connector|[Check_if_Found_Active_Default_User](#check_if_found_active_default_user)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Username| Contains|defaultAdvisorApproverUsername|
    |2|IsActive| Equal To|✅|
    
    
    
    
    ### Get_Flow_Interview
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|FlowDefinitionView|
    |Label|Get Flow Interview|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|- Id<br/>- ActiveVersionId<br/>|
    |Store Output Automatically|✅|
    |Connector|[Send_BI_Error_Email](#send_bi_error_email)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|ApiName| Equal To|Opportunity_After_Trigger|
    
    
    
    
    ### Get_Tag
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|n2de__Tag_Value__c|
    |Label|Get Tag|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Tag_Found_Check](#tag_found_check)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|n2de__Tag_Category__c| Equal To|Get_Tag_Category.Id|
    |2|Name| Equal To|nameOfTag|
    
    
    
    
    ### Get_Tag_Assignment
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|n2de__Tag_User__c|
    |Label|Get Tag Assignment|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|- Id<br/>- n2de__User__c<br/>|
    |Store Output Automatically|✅|
    |Connector|[Assignment_Found_Check](#assignment_found_check)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|n2de__Tag_Value__c| Equal To|Get_Tag.Id|
    
    
    
    
    ### Get_Tag_Category
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|n2de__Tag_Category__c|
    |Label|Get Tag Category|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|Id|
    |Store Output Automatically|✅|
    |Connector|[Tag_Category_Found_Check](#tag_category_found_check)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Name| Equal To|nameOfTagCollection|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

