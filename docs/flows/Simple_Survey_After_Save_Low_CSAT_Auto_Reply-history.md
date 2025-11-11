# Simple_Survey_After_Save_Low_CSAT_Auto_Reply history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Simple_Survey_After_Save_Low_CSAT_Auto_Reply-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "3953048210"
    
    Send_5_Star_Follow_Up_Email("📧 <em></em><br/>Send 5 Star Follow Up Email"):::actionCalls
    click Send_5_Star_Follow_Up_Email "#send_5_star_follow_up_email" "2885273019"
    
    Send_Email_Action_1("📧 <em></em><br/>Send Email Action 1"):::actionCalls
    click Send_Email_Action_1 "#send_email_action_1" "2643719521"
    
    Send_Auto_Reply{"🔀 <em></em><br/>Send Auto Reply?"}:::decisions
    click Send_Auto_Reply "#send_auto_reply" "2156380334"
    
    Copy_2_of_Create_CSAT_Follow_Up_Case[("➕ <em></em><br/>Copy 2 of Create CSAT Follow Up Case")]:::recordCreates
    click Copy_2_of_Create_CSAT_Follow_Up_Case "#copy_2_of_create_csat_follow_up_case" "1513178917"
    
    Create_CSAT_Follow_Up_Case[("➕ <em></em><br/>Create CSAT Follow Up Case")]:::recordCreates
    click Create_CSAT_Follow_Up_Case "#create_csat_follow_up_case" "2632184784"
    
    Copy_2_of_Update_Auto_Reply_Date_on_Contact[("🛠️ <em></em><br/>Copy 2 of Update Auto Reply Date on Contact")]:::recordUpdates
    click Copy_2_of_Update_Auto_Reply_Date_on_Contact "#copy_2_of_update_auto_reply_date_on_contact" "2212701759"
    
    Update_Auto_Reply_Date_on_Contact[("🛠️ <em></em><br/>Update Auto Reply Date on Contact")]:::recordUpdates
    click Update_Auto_Reply_Date_on_Contact "#update_auto_reply_date_on_contact" "915867719"
    
    Update_Case_to_Show_Error[("🛠️ <em></em><br/>Update Case to Show Error")]:::recordUpdates
    click Update_Case_to_Show_Error "#update_case_to_show_error" "1363935417"
    
    Send_5_Star_Follow_Up_Email --> END_Send_5_Star_Follow_Up_Email
    Send_Email_Action_1 --> END_Send_Email_Action_1
    Send_Email_Action_1 -. Fault .->Update_Case_to_Show_Error
    Send_Auto_Reply --> |"Send 5 Star CSAT Auto Reply"| Copy_2_of_Update_Auto_Reply_Date_on_Contact
    Send_Auto_Reply --> |"Send Low CSAT Reply"| Update_Auto_Reply_Date_on_Contact
    Send_Auto_Reply --> |"End"| END_Send_Auto_Reply
    Copy_2_of_Create_CSAT_Follow_Up_Case --> Send_5_Star_Follow_Up_Email
    Create_CSAT_Follow_Up_Case --> Send_Email_Action_1
    Copy_2_of_Update_Auto_Reply_Date_on_Contact --> Copy_2_of_Create_CSAT_Follow_Up_Case
    Update_Auto_Reply_Date_on_Contact --> Create_CSAT_Follow_Up_Case
    Update_Case_to_Show_Error --> END_Update_Case_to_Show_Error
    START -->  Send_Auto_Reply
    END_Send_5_Star_Follow_Up_Email(( END )):::endClass
    END_Send_Email_Action_1(( END )):::endClass
    END_Send_Auto_Reply(( END )):::endClass
    END_Update_Case_to_Show_Error(( END )):::endClass
    
    
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
    |Object|simplesurvey__Survey__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create And Update|
    |Label|Simple Survey | After Save | CSAT Auto Reply|
    |Status|Active|
    |Does Require Record Changed To Meet Criteria|✅|
    |Description|Updated email template used for 5 star reply|
    |Environments|Default|
    |Interview Label|Simple Survey | After Save | Low CSAT Auto Reply {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Send_Auto_Reply](#send_auto_reply)|
    |Next Node|[Send_Auto_Reply](#send_auto_reply)|
    
    
    #### Filters (logic: **1 AND 2 AND 3 AND 7 AND (4 OR 5 OR 6)**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|simplesurvey__Contact__c| Is Null|<!-- -->|
    |2|simplesurvey__Status__c| Equal To|Completed|
    |3|simplesurvey__Survey_Score__c| Not Equal To|4|
    |4|Team__c| Equal To|Saver|
    |5|Team__c| Equal To|CST|
    |6|Team__c| Equal To|SingleK|
    |7|simplesurvey__Survey_Score__c| Is Null|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |tooSoonToSend|Boolean|IF( TODAY() - {!$Record.simplesurvey__Contact__r.Last_CSAT_Reply__c} < 30, TRUE, FALSE)|<!-- -->|
    
    
    ## Text Templates
    
    |Name|Text|Description|
    |:-- |:-- |:--  |
    |caseDesc|A Low CSAT Auto Reply was sent to this contact on {!$Flow.CurrentDate}|<!-- -->|
    |caseSubj|Low CSAT Outreach|<!-- -->|
    |emailBody|Dear {!$Record.simplesurvey__Contact__r.FirstName},<br/><br/>Thank you for taking the time to provide feedback on your recent experience with us. We noticed that your recent CSAT/NPS score was lower than we aim for, and we sincerely apologize for any inconvenience this may have caused.<br/><br/>Your satisfaction is our top priority, and we are committed to improving our services. To better understand what went wrong and how we can make things right, we would greatly appreciate any additional details you can provide about your experience.<br/><br/>Could you please take a moment to share more specific feedback? Here are a few questions to guide you:<br/><br/>1. What specific issue(s) led to your dissatisfaction?<br/>2. Were there any interactions or aspects of our service that did not meet your expectations?<br/>3. How can we improve to better meet your needs in the future?<br/><br/>We are committed to learning from your experience and making any necessary improvements. Your insights are invaluable in helping us enhance our service for you and other customers.<br/><br/>Please reply directly to this email with your feedback. We genuinely appreciate your time and input.<br/><br/>Thank you for helping us improve.<br/><br/>Best Regards|<!-- -->|
    |emailSubj|Help Us Improve: Follow-Up on Your Survey Feedback|<!-- -->|
    |errorCaseDesc|There was an error with the CSAT Auto Reply, please send the CSAT email template manually through this case.|<!-- -->|
    |errorCaseSubj|Error Sending CSAT Auto Reply|<!-- -->|
    |fiveStarDesc|A 5 star CSAT Auto Reply was sent to this contact on {!$Flow.CurrentDate}|<!-- -->|
    |fiveStarSubj|5 Star CSAT Outreach|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Send_5_Star_Follow_Up_Email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send 5 Star Follow Up Email|
    |Action Type|Email Simple|
    |Action Name|emailSimple|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|emailSimple|
    |Offset|0|
    |Sender Type (input)|OrgWideEmailAddress|
    |Sender Address (input)|support@myubiquity.com|
    |Email Template Id (input)|00XUo000002g5jhMAA|
    |Recipient Id (input)|$Record.simplesurvey__Contact__c|
    |Related Record Id (input)|[Copy_2_of_Create_CSAT_Follow_Up_Case](#copy_2_of_create_csat_follow_up_case)|
    |Log Email On Send (input)|✅|
    |Add Threading Token To Body (input)|✅|
    
    
    ### Send_Email_Action_1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send Email Action 1|
    |Action Type|Email Simple|
    |Action Name|emailSimple|
    |Fault Connector|[Update_Case_to_Show_Error](#update_case_to_show_error)|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|emailSimple|
    |Offset|0|
    |Sender Type (input)|OrgWideEmailAddress|
    |Sender Address (input)|support@myubiquity.com|
    |Email Subject (input)|emailSubj|
    |Email Body (input)|emailBody|
    |Related Record Id (input)|[Create_CSAT_Follow_Up_Case](#create_csat_follow_up_case)|
    |Recipient Id (input)|$Record.simplesurvey__Contact__c|
    |Log Email On Send (input)|✅|
    |Add Threading Token To Body (input)|✅|
    
    
    ### Send_Auto_Reply
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Send Auto Reply?|
    |Default Connector Label|End|
    
    
    #### Rule Don_t_Send (Don't Send)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|tooSoonToSend| Equal To|✅|
    
    
    
    
    #### Rule Send_5_Star_CSAT_Auto_Reply (Send 5 Star CSAT Auto Reply)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Copy_2_of_Update_Auto_Reply_Date_on_Contact](#copy_2_of_update_auto_reply_date_on_contact)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|tooSoonToSend| Equal To|⬜|
    |2|$Record.simplesurvey__Survey_Score__c| Equal To|5|
    
    
    
    
    #### Rule Send_Low_CSAT_Reply (Send Low CSAT Reply)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Auto_Reply_Date_on_Contact](#update_auto_reply_date_on_contact)|
    |Condition Logic|1 AND (2 OR 3 OR 4)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|tooSoonToSend| Equal To|⬜|
    |2|$Record.simplesurvey__Case__r.Sender_Role__c| Equal To|Sponsor|
    |3|$Record.simplesurvey__Case__r.Sender_Role__c| Equal To|Advisor|
    |4|$Record.simplesurvey__Case__r.Sender_Role__c| Equal To|TPA|
    
    
    
    
    ### Copy_2_of_Create_CSAT_Follow_Up_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Copy 2 of Create CSAT Follow Up Case|
    |Store Output Automatically|✅|
    |Connector|[Send_5_Star_Follow_Up_Email](#send_5_star_follow_up_email)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|$Record.simplesurvey__Case__r.AccountId|
    |ContactId|$Record.simplesurvey__Contact__c|
    |Description|fiveStarDesc|
    |OwnerId|00GUo000001wPtV|
    |Plan__c|$Record.simplesurvey__Case__r.Plan__c|
    |Sender_Role__c|$Record.simplesurvey__Case__r.Sender_Role__c|
    |Status|Resolved|
    |Subject|fiveStarSubj|
    
    
    
    
    ### Create_CSAT_Follow_Up_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Create CSAT Follow Up Case|
    |Store Output Automatically|✅|
    |Connector|[Send_Email_Action_1](#send_email_action_1)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|$Record.simplesurvey__Case__r.AccountId|
    |ContactId|$Record.simplesurvey__Contact__c|
    |Description|caseDesc|
    |OwnerId|00GUo000001wPtV|
    |Plan__c|$Record.simplesurvey__Case__r.Plan__c|
    |Sender_Role__c|$Record.simplesurvey__Case__r.Sender_Role__c|
    |Status|Resolved|
    |Subject|caseSubj|
    
    
    
    
    ### Copy_2_of_Update_Auto_Reply_Date_on_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Contact|
    |Label|Copy 2 of Update Auto Reply Date on Contact|
    |Connector|[Copy_2_of_Create_CSAT_Follow_Up_Case](#copy_2_of_create_csat_follow_up_case)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$Record.simplesurvey__Contact__r.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Last_CSAT_Reply__c|$Flow.CurrentDate|
    
    
    
    
    ### Update_Auto_Reply_Date_on_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Contact|
    |Label|Update Auto Reply Date on Contact|
    |Connector|[Create_CSAT_Follow_Up_Case](#create_csat_follow_up_case)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$Record.simplesurvey__Contact__r.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Last_CSAT_Reply__c|$Flow.CurrentDate|
    
    
    
    
    ### Update_Case_to_Show_Error
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Case|
    |Label|Update Case to Show Error|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|[Create_CSAT_Follow_Up_Case](#create_csat_follow_up_case)|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Description|errorCaseDesc|
    |Status|New|
    |Subject|errorCaseSubj|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

