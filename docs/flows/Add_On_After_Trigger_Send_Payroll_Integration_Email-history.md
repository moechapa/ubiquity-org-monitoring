# Add_On_After_Trigger_Send_Payroll_Integration_Email history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Add_On_After_Trigger_Send_Payroll_Integration_Email-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "4005898820"
    
    Send_180_Completion_Email("📧 <em></em><br/>Send 180 Completion Email"):::actionCalls
    click Send_180_Completion_Email "#send_180_completion_email" "4253034117"
    
    Send_360_Return_File_Only_Completion_Email("📧 <em></em><br/>Send 360 Return File Only Completion Email"):::actionCalls
    click Send_360_Return_File_Only_Completion_Email "#send_360_return_file_only_completion_email" "3089335312"
    
    Send_Completion_Email("📧 <em></em><br/>Send Completion Email"):::actionCalls
    click Send_Completion_Email "#send_completion_email" "3587645090"
    
    Assign_Email[\"🟰 <em></em><br/>Assign Email"/]:::assignments
    click Assign_Email "#assign_email" "3746877352"
    
    Assign_Sponsor_Email[\"🟰 <em></em><br/>Assign Sponsor Email"/]:::assignments
    click Assign_Sponsor_Email "#assign_sponsor_email" "3504368986"
    
    Assign_Sponsor_Email_to_Collection[\"🟰 <em></em><br/>Assign Sponsor Email to Collection"/]:::assignments
    click Assign_Sponsor_Email_to_Collection "#assign_sponsor_email_to_collection" "1191054581"
    
    Assign_to_Email_Collection[\"🟰 <em></em><br/>Assign to Email Collection"/]:::assignments
    click Assign_to_Email_Collection "#assign_to_email_collection" "312224955"
    
    AC_Found{"🔀 <em></em><br/>AC Found?"}:::decisions
    click AC_Found "#ac_found" "3886256514"
    
    X360_or_180{"🔀 <em></em><br/>360 or 180"}:::decisions
    click X360_or_180 "#x360_or_180" "217936343"
    
    Advisor_Loop{{"🔁 <em></em><br/>Advisor Loop"}}:::loops
    click Advisor_Loop "#advisor_loop" "3033192783"
    
    Create_Case_for_Payroll[("➕ <em></em><br/>Create Case for Payroll")]:::recordCreates
    click Create_Case_for_Payroll "#create_case_for_payroll" "1418297686"
    
    Get_AC[("🔍 <em></em><br/>Get AC")]:::recordLookups
    click Get_AC "#get_ac" "3890424958"
    
    Get_Advisor_ACs[("🔍 <em></em><br/>Get Advisor ACs")]:::recordLookups
    click Get_Advisor_ACs "#get_advisor_acs" "4176927941"
    
    Get_Sponsor_Contact[("🔍 <em></em><br/>Get Sponsor Contact")]:::recordLookups
    click Get_Sponsor_Contact "#get_sponsor_contact" "3531905418"
    
    Send_180_Completion_Email --> END_Send_180_Completion_Email
    Send_360_Return_File_Only_Completion_Email --> END_Send_360_Return_File_Only_Completion_Email
    Send_Completion_Email --> END_Send_Completion_Email
    Assign_Email --> Assign_to_Email_Collection
    Assign_Sponsor_Email --> Get_Advisor_ACs
    Assign_Sponsor_Email_to_Collection --> X360_or_180
    Assign_to_Email_Collection --> Advisor_Loop
    AC_Found --> |"Yes, AC Found"| Get_Sponsor_Contact
    AC_Found --> |"Default Outcome"| Create_Case_for_Payroll
    X360_or_180 --> |"360"| Send_Completion_Email
    X360_or_180 --> |"360 Return File Only"| Send_360_Return_File_Only_Completion_Email
    X360_or_180 --> |"180"| Send_180_Completion_Email
    X360_or_180 --> |"Default Outcome"| END_X360_or_180
    Advisor_Loop --> |"For Each"|Assign_Email
    Advisor_Loop ---> |"After Last"|Assign_Sponsor_Email_to_Collection
    Create_Case_for_Payroll --> END_Create_Case_for_Payroll
    Get_AC --> AC_Found
    Get_Advisor_ACs --> Advisor_Loop
    Get_Sponsor_Contact --> Assign_Sponsor_Email
    START -->  Get_AC
    END_Send_180_Completion_Email(( END )):::endClass
    END_Send_360_Return_File_Only_Completion_Email(( END )):::endClass
    END_Send_Completion_Email(( END )):::endClass
    END_X360_or_180(( END )):::endClass
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
    |Object|Add_On_Products__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Update|
    |Label|Add-On | After Trigger | Send Payroll Integration Email|
    |Status|Obsolete|
    |Environments|Default|
    |Interview Label|Add-On | After Trigger | Send Payroll Integration Email {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_AC](#get_ac)|
    |Next Node|[Get_AC](#get_ac)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Sent_Completion_Email__c| Is Null|<!-- -->|
    |2|Sent_Completion_Email__c| Is Changed|✅|
    |3|Service_Option__c| Equal To|Enhanced Payroll Service|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |aCon|SObject|⬜|✅|⬜|Associated_Contact__c|<!-- -->|
    |advisorACons|SObject|✅|✅|⬜|Associated_Contact__c|<!-- -->|
    |advisorEmail|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |emailstoSend|String|✅|✅|⬜|<!-- -->|<!-- -->|
    |sponsorEmail|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |isNew|Boolean|ISNEW()|<!-- -->|
    
    
    ## Text Templates
    
    |Name|Text|Description|
    |:-- |:-- |:--  |
    |desc|<p>No plan sponsor was found when searching the payroll integration opportunity. Please create associated contact record for plan sponsor and link it to the opportunity, then send the Initial Email manually. Once the associated contact record is created and linked, the subsequent emails will send automatically.</p>|<!-- -->|
    |subject|<p>No Sponsor Found for Email Alerts for {!$Record.Account__r.Name}</p>|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Send_180_Completion_Email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send 180 Completion Email|
    |Action Type|Email Simple|
    |Action Name|emailSimple|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|emailSimple|
    |Email Addresses Array (input)|emailstoSend|
    |Sender Type (input)|OrgWideEmailAddress|
    |Sender Address (input)|ubiquitypayroll@myubiquity.com|
    |Related Record Id (input)|$Record.Id|
    |Recipient Id (input)|Get_Sponsor_Contact.Id|
    |Log Email On Send (input)|✅|
    |Email Template Id (input)|00XUo0000015wHJ|
    
    
    ### Send_360_Return_File_Only_Completion_Email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send 360 Return File Only Completion Email|
    |Action Type|Email Simple|
    |Action Name|emailSimple|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|emailSimple|
    |Email Addresses Array (input)|emailstoSend|
    |Sender Type (input)|OrgWideEmailAddress|
    |Sender Address (input)|ubiquitypayroll@myubiquity.com|
    |Related Record Id (input)|$Record.Id|
    |Recipient Id (input)|Get_Sponsor_Contact.Id|
    |Log Email On Send (input)|✅|
    |Email Template Id (input)|00XUo0000015wHK|
    
    
    ### Send_Completion_Email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send Completion Email|
    |Action Type|Email Simple|
    |Action Name|emailSimple|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|emailSimple|
    |Email Addresses Array (input)|emailstoSend|
    |Sender Type (input)|OrgWideEmailAddress|
    |Sender Address (input)|ubiquitypayroll@myubiquity.com|
    |Related Record Id (input)|$Record.Id|
    |Recipient Id (input)|Get_Sponsor_Contact.Id|
    |Log Email On Send (input)|✅|
    |Email Template Id (input)|00XUo000000wSf3|
    
    
    ### Assign_Email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Email|
    |Connector|[Assign_to_Email_Collection](#assign_to_email_collection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |advisorEmail| Assign|Advisor_Loop.Useable_Email__c|
    
    
    
    
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
    |Connector|[X360_or_180](#x360_or_180)|
    
    
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
    
    
    
    
    ### AC_Found
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|AC Found?|
    |Default Connector|[Create_Case_for_Payroll](#create_case_for_payroll)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes_AC_Found (Yes, AC Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Sponsor_Contact](#get_sponsor_contact)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|aCon.Id| Is Null|⬜|
    
    
    
    
    ### X360_or_180
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|360 or 180|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule X360 (360)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Send_Completion_Email](#send_completion_email)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Integration_Type__c| Equal To|360|
    
    
    
    
    #### Rule X360_Return_File_Only (360 Return File Only)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Send_360_Return_File_Only_Completion_Email](#send_360_return_file_only_completion_email)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Integration_Type__c| Equal To|360 - Return File Only|
    
    
    
    
    #### Rule X180 (180)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Send_180_Completion_Email](#send_180_completion_email)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Integration_Type__c| Contains|180|
    
    
    
    
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
    |AccountId|$Record.Account__c|
    |Department__c|Payroll|
    |Description|desc|
    |Opportunity__c|$Record.Opportunity__c|
    |OwnerId|00537000002STLD|
    |Plan__c|$Record.Plan__c|
    |Sender_Role__c|Sponsor|
    |Subject|subject|
    
    
    
    
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
    |2|Opportunity__c| Equal To|$Record.Opportunity__c|
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
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Opportunity__c| Equal To|$Record.Opportunity__c|
    |2|Useable_Email__c| Is Null|<!-- -->|
    |3|Contact_Role__c| Equal To|Financial Advisor|
    
    
    
    
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

