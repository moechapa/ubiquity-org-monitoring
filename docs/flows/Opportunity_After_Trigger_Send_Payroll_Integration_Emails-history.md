# Opportunity_After_Trigger_Send_Payroll_Integration_Emails history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Opportunity_After_Trigger_Send_Payroll_Integration_Emails-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "2753856697"
    
    Send_Stage_2_Emails("📧 <em></em><br/>Send Stage 2 Emails"):::actionCalls
    click Send_Stage_2_Emails "#send_stage_2_emails" "3039879857"
    
    Assign_Case_Subj_and_Desc[\"🟰 <em></em><br/>Assign Case Subj and Desc"/]:::assignments
    click Assign_Case_Subj_and_Desc "#assign_case_subj_and_desc" "3402430616"
    
    Assign_Email[\"🟰 <em></em><br/>Assign Email"/]:::assignments
    click Assign_Email "#assign_email" "2708768146"
    
    Assign_Sponsor_Email[\"🟰 <em></em><br/>Assign Sponsor Email"/]:::assignments
    click Assign_Sponsor_Email "#assign_sponsor_email" "3504368986"
    
    Assign_Sponsor_Email_to_Collection[\"🟰 <em></em><br/>Assign Sponsor Email to Collection"/]:::assignments
    click Assign_Sponsor_Email_to_Collection "#assign_sponsor_email_to_collection" "710468531"
    
    Assign_to_Email_Collection[\"🟰 <em></em><br/>Assign to Email Collection"/]:::assignments
    click Assign_to_Email_Collection "#assign_to_email_collection" "312224955"
    
    Copy_2_of_Assign_Fault_Subj_and_Desc[\"🟰 <em></em><br/>Copy 2 of Assign Fault Subj and Desc"/]:::assignments
    click Copy_2_of_Assign_Fault_Subj_and_Desc "#copy_2_of_assign_fault_subj_and_desc" "3399627274"
    
    AC_Found{"🔀 <em></em><br/>AC Found?"}:::decisions
    click AC_Found "#ac_found" "2864546911"
    
    Send_Stage_2_Email{"🔀 <em></em><br/>Send Stage 2 Email"}:::decisions
    click Send_Stage_2_Email "#send_stage_2_email" "1128007982"
    
    Advisor_Loop{{"🔁 <em></em><br/>Advisor Loop"}}:::loops
    click Advisor_Loop "#advisor_loop" "3033192783"
    
    Create_Case_for_Payroll[("➕ <em></em><br/>Create Case for Payroll")]:::recordCreates
    click Create_Case_for_Payroll "#create_case_for_payroll" "1238557588"
    
    Get_AC[("🔍 <em></em><br/>Get AC")]:::recordLookups
    click Get_AC "#get_ac" "2730667544"
    
    Get_Advisor_ACs[("🔍 <em></em><br/>Get Advisor ACs")]:::recordLookups
    click Get_Advisor_ACs "#get_advisor_acs" "4113972373"
    
    Get_Sponsor_Contact[("🔍 <em></em><br/>Get Sponsor Contact")]:::recordLookups
    click Get_Sponsor_Contact "#get_sponsor_contact" "3531905418"
    
    Send_Stage_2_Emails --> END_Send_Stage_2_Emails
    Send_Stage_2_Emails -. Fault .->Copy_2_of_Assign_Fault_Subj_and_Desc
    Assign_Case_Subj_and_Desc --> Create_Case_for_Payroll
    Assign_Email --> Assign_to_Email_Collection
    Assign_Sponsor_Email --> Get_Advisor_ACs
    Assign_Sponsor_Email_to_Collection --> Send_Stage_2_Email
    Assign_to_Email_Collection --> Advisor_Loop
    Copy_2_of_Assign_Fault_Subj_and_Desc --> Create_Case_for_Payroll
    AC_Found --> |"Yes, AC Found"| Get_Sponsor_Contact
    AC_Found --> |"Default Outcome"| Assign_Case_Subj_and_Desc
    Send_Stage_2_Email --> |"Send Stage 2"| Send_Stage_2_Emails
    Send_Stage_2_Email --> |"Default Outcome"| END_Send_Stage_2_Email
    Advisor_Loop --> |"For Each"|Assign_Email
    Advisor_Loop ---> |"After Last"|Assign_Sponsor_Email_to_Collection
    Create_Case_for_Payroll --> END_Create_Case_for_Payroll
    Get_AC --> AC_Found
    Get_Advisor_ACs --> Advisor_Loop
    Get_Sponsor_Contact --> Assign_Sponsor_Email
    START -->  Get_AC
    END_Send_Stage_2_Emails(( END )):::endClass
    END_Send_Stage_2_Email(( END )):::endClass
    END_Create_Case_for_Payroll(( END )):::endClass
    
    
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
    |Record Trigger Type| Create And Update|
    |Label|Opportunity | After Trigger | Send Payroll Integration Emails|
    |Status|Active|
    |Does Require Record Changed To Meet Criteria|✅|
    |Filter Formula|{!$Record.RecordTypeId} = "01237000000N0d7AAC"<br/>&&<br/> ISPICKVAL({!$Record.Service_Option__c}, "Enhanced Payroll Service" )<br/>&&<br/>NOT(ISBLANK({!$Record.Login_Credentials_Received__c}))<br/>&&<br/>{!$Record.Payroll_Provider__c} != 'a34Uo0000008P4cIAE'|
    |Environments|Default|
    |Interview Label|Opportunity | After Trigger | Send Payroll Integration Emails {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_AC](#get_ac)|
    |Next Node|[Get_AC](#get_ac)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |aCon|SObject|⬜|✅|⬜|Associated_Contact__c|<!-- -->|
    |advisorACons|SObject|✅|✅|⬜|Associated_Contact__c|<!-- -->|
    |advisorEmail|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |caseDesc|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |caseSubj|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |emailstoSend|String|✅|✅|⬜|<!-- -->|<!-- -->|
    |sponsorEmail|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    
    
    ## Text Templates
    
    |Name|Text|Description|
    |:-- |:-- |:--  |
    |desc|No plan sponsor was found when searching the payroll integration opportunity. Please create associated contact record for plan sponsor and link it to the opportunity, then send the 2nd Email manually.|<!-- -->|
    |faultDesc|There was an error when the automation tried to send the 2nd eps integration email. Please manually send the email to: {!emailstoSend}.|<!-- -->|
    |faultSubj|Error Sending Second EPS Email for: {!$Record.Account.Name}|<!-- -->|
    |subject|No Sponsor Found for EPS Email Alert for: {!$Record.Account.Name}|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Send_Stage_2_Emails
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send Stage 2 Emails|
    |Action Type|Email Simple|
    |Action Name|emailSimple|
    |Fault Connector|[Copy_2_of_Assign_Fault_Subj_and_Desc](#copy_2_of_assign_fault_subj_and_desc)|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|emailSimple|
    |Email Addresses Array (input)|emailstoSend|
    |Sender Type (input)|OrgWideEmailAddress|
    |Sender Address (input)|ubiquitypayroll@myubiquity.com|
    |Related Record Id (input)|$Record.Id|
    |Recipient Id (input)|Get_Sponsor_Contact.Id|
    |Log Email On Send (input)|✅|
    |Email Template Id (input)|00XUo000000wSaD|
    
    
    ### Assign_Case_Subj_and_Desc
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Case Subj and Desc|
    |Connector|[Create_Case_for_Payroll](#create_case_for_payroll)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |caseDesc| Assign|desc|
    |caseSubj| Assign|subject|
    
    
    
    
    ### Assign_Email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Email|
    |Connector|[Assign_to_Email_Collection](#assign_to_email_collection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |advisorEmail| Assign|Advisor_Loop.Email__c|
    
    
    
    
    ### Assign_Sponsor_Email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Sponsor Email|
    |Connector|[Get_Advisor_ACs](#get_advisor_acs)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |sponsorEmail| Assign|Get_Sponsor_Contact.Email|
    
    
    
    
    ### Assign_Sponsor_Email_to_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Sponsor Email to Collection|
    |Connector|[Send_Stage_2_Email](#send_stage_2_email)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |emailstoSend| Add|sponsorEmail|
    
    
    
    
    ### Assign_to_Email_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign to Email Collection|
    |Connector|[Advisor_Loop](#advisor_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |emailstoSend| Add|advisorEmail|
    
    
    
    
    ### Copy_2_of_Assign_Fault_Subj_and_Desc
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Copy 2 of Assign Fault Subj and Desc|
    |Connector|isGoTo: true<br/>targetReference: Create_Case_for_Payroll<br/>|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |caseDesc| Assign|faultDesc|
    |caseSubj| Assign|faultSubj|
    
    
    
    
    ### AC_Found
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|AC Found?|
    |Default Connector|[Assign_Case_Subj_and_Desc](#assign_case_subj_and_desc)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes_AC_Found (Yes, AC Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Sponsor_Contact](#get_sponsor_contact)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|aCon.Id| Is Null|⬜|
    
    
    
    
    ### Send_Stage_2_Email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Send Stage 2 Email|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Send_Stage_2 (Send Stage 2)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[Send_Stage_2_Emails](#send_stage_2_emails)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Login_Credentials_Received__c| Is Blank|⬜|
    
    
    
    
    ### Advisor_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Advisor Loop|
    |Collection Reference|advisorACons|
    |Iteration Order|Asc|
    |Next Value Connector|[Assign_Email](#assign_email)|
    |No More Values Connector|[Assign_Sponsor_Email_to_Collection](#assign_sponsor_email_to_collection)|
    
    
    ### Create_Case_for_Payroll
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Create Case for Payroll|
    |Store Output Automatically|✅|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|$Record.AccountId|
    |Department__c|Payroll|
    |Description|caseDesc|
    |OwnerId|00537000002STLD|
    |Plan__c|$Record.Plan__c|
    |Sender_Role__c|Sponsor|
    |Subject|caseSubj|
    
    
    
    
    ### Get_AC
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Associated_Contact__c|
    |Label|Get AC|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|aCon|
    |Queried Fields|- Id<br/>- Email__c<br/>- Contact_Role__c<br/>- Opportunity__c<br/>- Contact__c<br/>|
    |Connector|[AC_Found](#ac_found)|
    
    
    #### Filters (logic: **(1 OR 3) AND 2 AND 4**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Contact_Role__c| Contains|Sponsor|
    |2|Opportunity__c| Equal To|$Record.Id|
    |3|Contact_Role__c| Equal To|Authorized Buyer|
    |4|Useable_Email__c| Is Null|<!-- -->|
    
    
    
    
    ### Get_Advisor_ACs
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Associated_Contact__c|
    |Label|Get Advisor ACs|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|advisorACons|
    |Queried Fields|- Id<br/>- Useable_Email__c<br/>- Contact_Role__c<br/>|
    |Connector|[Advisor_Loop](#advisor_loop)|
    
    
    #### Filters (logic: **1 AND 5 AND (2 OR 3 OR 4)**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Opportunity__c| Equal To|$Record.Id|
    |2|Contact_Role__c| Equal To|Financial Advisor|
    |3|Contact_Role__c| Contains|Trustee|
    |4|Contact_Role__c| Contains|Plan Sponsor|
    |5|Id| Not Equal To|aCon.Id|
    
    
    
    
    ### Get_Sponsor_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Get Sponsor Contact|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Assign_Sponsor_Email](#assign_sponsor_email)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|aCon.Contact__c|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

