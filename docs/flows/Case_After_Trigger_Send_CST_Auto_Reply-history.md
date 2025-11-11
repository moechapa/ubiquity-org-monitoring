# Case_After_Trigger_Send_CST_Auto_Reply history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Case_After_Trigger_Send_CST_Auto_Reply-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "3877714040"
    
    Alert_to_auto_response_fail("📧 <em></em><br/>Alert to auto response fail"):::actionCalls
    click Alert_to_auto_response_fail "#alert_to_auto_response_fail" "232437033"
    
    Copy_1_of_Standard_Auto_Response("📧 <em></em><br/>Copy 1 of Standard Auto Response"):::actionCalls
    click Copy_1_of_Standard_Auto_Response "#copy_1_of_standard_auto_response" "1776514807"
    
    Standard_Auto_Response("📧 <em></em><br/>Standard Auto Response"):::actionCalls
    click Standard_Auto_Response "#standard_auto_response" "3575809174"
    
    Define_sender_saver[\"🟰 <em></em><br/>Define sender saver"/]:::assignments
    click Define_sender_saver "#define_sender_saver" "3746198523"
    
    Define_sender_single_k[\"🟰 <em></em><br/>Define sender single(k)"/]:::assignments
    click Define_sender_single_k "#define_sender_single_k" "1157080370"
    
    Define_sender_support[\"🟰 <em></em><br/>Define sender support"/]:::assignments
    click Define_sender_support "#define_sender_support" "3317991153"
    
    Define_sender_tpa[\"🟰 <em></em><br/>Define sender tpa"/]:::assignments
    click Define_sender_tpa "#define_sender_tpa" "3509476161"
    
    Is_this_a_bounce_check{"🔀 <em></em><br/>Is this a bounce check"}:::decisions
    click Is_this_a_bounce_check "#is_this_a_bounce_check" "153265463"
    
    Needs_Response_and_From_Address_Check{"🔀 <em></em><br/>Needs Response and From Address Check"}:::decisions
    click Needs_Response_and_From_Address_Check "#needs_response_and_from_address_check" "2320148603"
    
    Response_Loop_Catch{"🔀 <em></em><br/>Response Loop Catch"}:::decisions
    click Response_Loop_Catch "#response_loop_catch" "3453788246"
    
    Response_Split{"🔀 <em></em><br/>Response Split"}:::decisions
    click Response_Split "#response_split" "576839199"
    
    Search_Recent_Responses[("🔍 <em></em><br/>Search Recent Responses")]:::recordLookups
    click Search_Recent_Responses "#search_recent_responses" "3314049321"
    
    Wipe_bounce_from_contact[("🛠️ <em></em><br/>Wipe bounce from contact")]:::recordUpdates
    click Wipe_bounce_from_contact "#wipe_bounce_from_contact" "2149340474"
    
    Alert_to_auto_response_fail --> END_Alert_to_auto_response_fail
    Copy_1_of_Standard_Auto_Response --> END_Copy_1_of_Standard_Auto_Response
    Copy_1_of_Standard_Auto_Response -. Fault .->Alert_to_auto_response_fail
    Standard_Auto_Response --> END_Standard_Auto_Response
    Standard_Auto_Response -. Fault .->Is_this_a_bounce_check
    Define_sender_saver --> Search_Recent_Responses
    Define_sender_single_k --> Search_Recent_Responses
    Define_sender_support --> Search_Recent_Responses
    Define_sender_tpa --> Search_Recent_Responses
    Is_this_a_bounce_check --> |"Bounce - Retry Once"| Wipe_bounce_from_contact
    Is_this_a_bounce_check --> |"Default Outcome"| Alert_to_auto_response_fail
    Needs_Response_and_From_Address_Check --> |"tpasupport@"| Define_sender_tpa
    Needs_Response_and_From_Address_Check --> |"Info@"| Define_sender_saver
    Needs_Response_and_From_Address_Check --> |"support@"| Define_sender_support
    Needs_Response_and_From_Address_Check --> |"singlek@"| Define_sender_single_k
    Needs_Response_and_From_Address_Check --> |"Default Outcome"| END_Needs_Response_and_From_Address_Check
    Response_Loop_Catch --> |"Default Outcome"| Response_Split
    Response_Split --> |"CST Response Contact"| Standard_Auto_Response
    Response_Split --> |"CST Response Web Email"| Copy_1_of_Standard_Auto_Response
    Response_Split --> |"Default Outcome"| END_Response_Split
    Search_Recent_Responses --> Response_Loop_Catch
    Wipe_bounce_from_contact --> Standard_Auto_Response
    START -->  Needs_Response_and_From_Address_Check
    END_Alert_to_auto_response_fail(( END )):::endClass
    END_Copy_1_of_Standard_Auto_Response(( END )):::endClass
    END_Standard_Auto_Response(( END )):::endClass
    END_Needs_Response_and_From_Address_Check(( END )):::endClass
    END_Response_Split(( END )):::endClass
    
    
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
    |Record Trigger Type| Create|
    |Label|Case | After Trigger | Send CST Auto Reply|
    |Status|Active|
    |Description|Updated email body per Peggy's request.  Adding some additional formatting + links to help center topics.|
    |Environments|Default|
    |Interview Label|Case | After Trigger | Send CST Auto Reply {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Needs_Response_and_From_Address_Check](#needs_response_and_from_address_check)|
    |Next Node|[Needs_Response_and_From_Address_Check](#needs_response_and_from_address_check)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|ParentId| Is Null|<!-- -->|
    |2|Sub_Category__c| Not Equal To|Implementation Complete|
    |3|CreatedById| Equal To|00500000006xUkg|
    |4|SuppliedEmail| Is Null|<!-- -->|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |emailSubject|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |senderAddress|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |last5Minutes|DateTime|{!$Flow.CurrentDateTime} - (5/60/24)|<!-- -->|
    |recipientEmail|String|IF(ISBLANK({!$Record.ContactEmail})||CONTAINS({!$Record.SuppliedEmail},"noreply"),{!$Record.SuppliedEmail},{!$Record.ContactEmail})|<!-- -->|
    |recipientName|String|IF(ISBLANK({!$Record.ContactId}),{!$Record.SuppliedName},{!$Record.Contact.FirstName})|<!-- -->|
    |threeMonthsAgo|DateTime|{!$Flow.InterviewStartTime} - 90|<!-- -->|
    
    
    ## Text Templates
    
    |Name|Text|Description|
    |:-- |:-- |:--  |
    |emailBody|<table class="ql-table-blob" border="0" style="color: rgb(0, 0, 0); font-family: Arial, helvetica, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);" width="100%"><tbody><tr><td align="center" class="header" valign="top" style="border-collapse: collapse;"><table align="left" border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td align="left" valign="top" style="border-collapse: collapse;"><table cellspacing="0" cellpadding="0" style="width: 600px;"><tbody><tr><td class="responsive-td" valign="top" style="border-collapse: collapse; width: 600px;"><table cellpadding="0" cellspacing="0" width="100%" role="presentation" class="stylingblock-content-wrapper" style="background-color: rgb(244, 244, 244); min-width: 100%;"><tbody><tr><td class="stylingblock-content-wrapper camarker-inner" style="border-collapse: collapse; padding: 0px;"><table width="100%" cellspacing="0" cellpadding="0" role="presentation"><tbody><tr><td align="center" style="border-collapse: collapse;"><img data-assetid="34822" src="https://image.email.myubiquity.com/lib/fe2a11737164047a7c1c71/m/1/d486fde8-fe6d-43ce-b6af-2167db93936e.png" alt="Ubiquity Retirement + Savings" height="25" width="137" style="outline: 0px; display: block; padding: 35px; text-align: center; height: 25px; width: 137px; border-width: 1px; border-style: solid; border-color: transparent;"></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></td></tr><tr><td align="center" class="header" valign="top" style="border-collapse: collapse;"><table align="left" border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td align="left" valign="top" style="border-collapse: collapse;"><table cellspacing="0" cellpadding="0" style="width: 600px;"><tbody><tr><td class="responsive-td" valign="top" style="border-collapse: collapse; width: 600px;"><table cellpadding="0" cellspacing="0" width="100%" role="presentation" class="stylingblock-content-wrapper" style="background-color: transparent; min-width: 100%;"><tbody><tr><td class="stylingblock-content-wrapper camarker-inner" style="border-collapse: collapse; padding: 35px 35px 15px;"><div style="line-height: 24px;">Hello {!recipientName},<br><br>Thank you for reaching out to Ubiquity Retirement + Savings. We have received your inquiry and will work diligently to address your concern. Your Case ID is: {!$Record.CaseNumber}.<br>&nbsp;<br><b>For Immediate Assistance:</b><br>If you need immediate assistance, we recommend using our live chat during business hours. Simply&nbsp;<a alias="log in" conversion="false" data-linkto="https://" href="https://secure.myubiquity.com/login" title="log in" style="color: rgb(255, 69, 46); text-decoration-line: underline;">log in</a>&nbsp;to your account or visit the&nbsp;<a alias="Contact Us" conversion="false" data-linkto="https://" href="https://www.myubiquity.com/contact-us" title="Contact Us" style="color: rgb(255, 69, 46); text-decoration-line: underline;">Contact Us</a>&nbsp;page on our website, then click the Chat icon located in the lower-right corner.&nbsp;<br><br>We will respond to your inquiry within three business days. In the meantime, we appreciate your patience and will keep you informed of any significant updates regarding your case.<br>&nbsp;<br>Please note that our business days are Monday through Friday, excluding weekends and holidays.<br>&nbsp;<br>Thank you for choosing Ubiquity Retirement + Savings.<br>&nbsp;<br>Best,<br>The Ubiquity Team<br>&nbsp;</div></td></tr></tbody></table><table cellpadding="0" cellspacing="0" width="100%" role="presentation" class="stylingblock-content-wrapper" style="background-color: transparent; border: 0px solid transparent; min-width: 100%;"><tbody><tr><td class="stylingblock-content-wrapper camarker-inner" style="border-collapse: collapse; padding: 9px 35px 0px;"><div style="line-height: 24px;"><b>Helpful Resources:</b><br>For answers to frequently asked questions including help with payroll, distributions, and login questions, you can also explore the following resources:</div></td></tr></tbody></table><table cellpadding="0" cellspacing="0" width="100%" role="presentation" class="stylingblock-content-wrapper" style="background-color: transparent; min-width: 100%;"><tbody><tr><td class="stylingblock-content-wrapper camarker-inner" style="border-collapse: collapse; padding: 10px 35px;"><table cellspacing="0" cellpadding="0" role="presentation" style="width: 530px;"><tbody><tr><td style="border-collapse: collapse;"><table cellspacing="0" cellpadding="0" role="presentation" style="width: 530px;"><tbody><tr><td valign="top" class="responsive-td" style="border-collapse: collapse; width: 124.5px; padding-right: 8px;"><table cellpadding="0" cellspacing="0" width="100%" role="presentation" class="stylingblock-content-wrapper" style="min-width: 100%;"><tbody><tr><td class="stylingblock-content-wrapper camarker-inner" style="border-collapse: collapse;"><table width="100%" cellspacing="0" cellpadding="0" role="presentation"><tbody><tr><td align="center" style="border-collapse: collapse;"><img data-assetid="51977" src="https://image.email.myubiquity.com/lib/fe2a11737164047a7c1c71/m/1/d45b93eb-a58c-44f8-8c3d-ef5330563c71.png" alt="Knowledge base " height="100" width="100" style="outline: 0px; display: block; padding: 0px 0px 16px; text-align: center; height: 100px; width: 100px;"></td></tr></tbody></table></td></tr></tbody></table></td><td valign="top" class="responsive-td" style="border-collapse: collapse; width: 389.5px; padding-left: 8px;"><table cellpadding="0" cellspacing="0" width="100%" role="presentation" class="stylingblock-content-wrapper" style="background-color: transparent; min-width: 100%;"><tbody><tr><td class="stylingblock-content-wrapper camarker-inner" style="border-collapse: collapse; padding: 0px;"><div style="line-height: 24px;"><a alias="" conversion="false" data-linkto="https://" data-outlook-id="91fbf5d7-6fd3-4f6b-800f-dd6e448f81ec" href="https://myubiquity.my.site.com/help/s/topic/0TOUo0000003TrtOAE/secure-act-changes-effective-january-1-2025" originalsrc="https://myubiquity.my.site.com/help/s/topic/0TOUo0000003TrtOAE/secure-act-changes-effective-january-1-2025" target="_blank" title="Secure Act Changes Effective January 1, 2025" style="color: rgb(255, 69, 46); text-decoration-line: underline;">Secure Act Changes Effective January 1, 2025</a><br><a alias="" conversion="false" data-linkto="https://" data-outlook-id="91fbf5d7-6fd3-4f6b-800f-dd6e448f81ec" href="https://myubiquity.my.site.com/help/s/topic/0TOHo000000HRNqOAO/making-contributions-to-your-plan" originalsrc="https://myubiquity.my.site.com/help/s/topic/0TOHo000000HRNqOAO/making-contributions-to-your-plan" target="_blank" title="Making Contributions to Your Plan" style="color: rgb(255, 69, 46); text-decoration-line: underline;">Making Contributions to Your Plan</a><br><a alias="" conversion="false" data-linkto="https://" data-outlook-id="dd5455eb-a94c-49d1-9665-20286b8bd13d" href="https://myubiquity.my.site.com/help/s/topic/0TOHo000000HUaqOAG/taking-money-out-of-the-plan" originalsrc="https://myubiquity.my.site.com/help/s/topic/0TOHo000000HUaqOAG/taking-money-out-of-the-plan" target="_blank" title="Taking Money Out of the Plan" style="color: rgb(255, 69, 46); text-decoration-line: underline;">Taking Money Out of the Plan</a><br><a alias="" conversion="false" data-linkto="https://" data-outlook-id="da555c9c-96c2-4b00-8df1-7157a4c6f431" href="https://myubiquity.my.site.com/help/s/topic/0TOHo000000HRNwOAO/logging-in-to-your-account" originalsrc="https://myubiquity.my.site.com/help/s/topic/0TOHo000000HRNwOAO/logging-in-to-your-account" target="_blank" title="Logging in to Your Account" style="color: rgb(255, 69, 46); text-decoration-line: underline;">Logging in to Your Account</a></div></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></td></tr><tr><td align="center" class="header" valign="top" style="border-collapse: collapse;"><table align="left" border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td align="left" valign="top" style="border-collapse: collapse;"><table cellspacing="0" cellpadding="0" style="width: 600px;"><tbody><tr><td class="responsive-td" valign="top" style="border-collapse: collapse; width: 600px;"><table cellpadding="0" cellspacing="0" width="100%" role="presentation" class="stylingblock-content-wrapper" style="background-color: rgb(244, 244, 244); min-width: 100%;"><tbody><tr><td class="stylingblock-content-wrapper camarker-inner" style="border-collapse: collapse; padding: 35px;"><div style="text-align: center; line-height: 24px;"><table border="0" cellpadding="0" cellspacing="0" style="margin: 0px auto;"><tbody><tr><td style="border-collapse: collapse;"><a alias="" conversion="false" data-linkto="https://" href="https://www.linkedin.com/company/ubiquity-retirement-savings/" title="LinkedIn"><img alt="LinkedIn" data-assetid="34827" height="25" src="https://image.email.myubiquity.com/lib/fe2a11737164047a7c1c71/m/1/4ac62e52-aef4-4806-9da7-00e8b25a7a8d.png" width="25" style="outline: 0px; padding: 0px; text-align: center; height: 25px; width: 25px;"></a></td><td width="10" style="border-collapse: collapse;"></td><td style="border-collapse: collapse;"><a alias="" conversion="false" data-linkto="https://" href="https://twitter.com/ubiquitysavings" title="Twitter"><img alt="Twitter" data-assetid="34826" height="25" src="https://image.email.myubiquity.com/lib/fe2a11737164047a7c1c71/m/1/221506f8-027c-43bb-82f5-5de49d4cb8b2.png" width="25" style="outline: 0px; border-style: solid; border-color: transparent; padding: 0px; text-align: center; height: 25px; width: 25px;"></a></td><td width="10" style="border-collapse: collapse;"></td><td style="border-collapse: collapse;"><a alias="" conversion="false" data-linkto="https://" href="https://www.facebook.com/ubiquitysavings" title="Facebook"><img alt="Facebook" data-assetid="34825" height="25" src="https://image.email.myubiquity.com/lib/fe2a11737164047a7c1c71/m/1/9156a044-6c37-4815-b267-0b0878b227be.png" width="25" style="outline: 0px; border-style: solid; border-color: transparent; padding: 0px; text-align: center; height: 25px; width: 25px;"></a></td><td width="10" style="border-collapse: collapse;"></td><td style="border-collapse: collapse;"><a alias="" conversion="false" data-linkto="https://" href="https://www.youtube.com/c/ubiquityretirementsavings" title="YouTube"><img alt="YouTube" data-assetid="34824" height="25" src="https://image.email.myubiquity.com/lib/fe2a11737164047a7c1c71/m/1/602dfd00-eacd-446e-bfd0-3b93efb5ae23.png" width="25" style="outline: 0px; border-style: solid; border-color: transparent; padding: 0px; text-align: center; height: 25px; width: 25px;"></a></td></tr></tbody></table><br><span style="font-size: 13px;"><span style="color: rgb(96, 98, 98);"><a alias="myubiquity.com" conversion="false" data-linkto="https://" href="https://www.myubiquity.com/" title="myubiquity.com" style="color: rgb(96, 98, 98); text-decoration-line: underline;">myubiquity.com</a><br>© 2024 Ubiquity Retirement + Savings<br>44 Montgomery St. Suite 300, San Francisco, CA, 94104, US</span></span></div></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table><p><br></p>|<!-- -->|
    |errorBody|Hello,<br/>The case auto response flow has encountered an error.<br/>Intended recipient: {!recipientEmail}<br/>______<br/>^Derived from. . .<br/>Contact email: {!$Record.ContactEmail}<br/>Web Email: {!$Record.SuppliedEmail}<br/>______<br/>Sender: {!senderAddress}<br/>Time: {!$Flow.CurrentDateTime}<br/>Error message: {!$Flow.FaultMessage}|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Alert_to_auto_response_fail
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Alert to auto response fail|
    |Action Type|Email Simple|
    |Action Name|emailSimple|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|emailSimple|
    |Email Addresses (input)|ccampbell@myubiquity.com|
    |Sender Type (input)|DefaultWorkflowUser|
    |Email Subject (input)|Case auto response error|
    |Email Body (input)|errorBody|
    
    
    ### Copy_1_of_Standard_Auto_Response
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Copy 1 of Standard Auto Response|
    |Action Type|Email Simple|
    |Action Name|emailSimple|
    |Fault Connector|isGoTo: true<br/>targetReference: Alert_to_auto_response_fail<br/>|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|emailSimple|
    |Email Addresses (input)|recipientEmail|
    |Sender Type (input)|OrgWideEmailAddress|
    |Sender Address (input)|senderAddress|
    |Email Subject (input)|emailSubject|
    |Email Body (input)|emailBody|
    |Send Rich Body (input)|✅|
    |Use Line Breaks (input)|✅|
    |Related Record Id (input)|$Record.Id|
    |Log Email On Send (input)|✅|
    |Add Threading Token To Body (input)|✅|
    |Add Threading Token To Subject (input)|✅|
    
    
    ### Standard_Auto_Response
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Standard Auto Response|
    |Action Type|Email Simple|
    |Action Name|emailSimple|
    |Fault Connector|[Is_this_a_bounce_check](#is_this_a_bounce_check)|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|emailSimple|
    |Email Addresses (input)|recipientEmail|
    |Sender Type (input)|OrgWideEmailAddress|
    |Sender Address (input)|senderAddress|
    |Email Subject (input)|emailSubject|
    |Email Body (input)|emailBody|
    |Send Rich Body (input)|✅|
    |Use Line Breaks (input)|✅|
    |Related Record Id (input)|$Record.Id|
    |Recipient Id (input)|$Record.ContactId|
    |Log Email On Send (input)|✅|
    |Add Threading Token To Body (input)|✅|
    |Add Threading Token To Subject (input)|✅|
    
    
    ### Define_sender_saver
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Define sender saver|
    |Connector|[Search_Recent_Responses](#search_recent_responses)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |senderAddress| Assign|info@myubiquity.com|
    
    
    
    
    ### Define_sender_single_k
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Define sender single(k)|
    |Connector|[Search_Recent_Responses](#search_recent_responses)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |senderAddress| Assign|singlek@myubiquity.com|
    
    
    
    
    ### Define_sender_support
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Define sender support|
    |Connector|[Search_Recent_Responses](#search_recent_responses)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |senderAddress| Assign|support@myubiquity.com|
    
    
    
    
    ### Define_sender_tpa
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Define sender tpa|
    |Connector|[Search_Recent_Responses](#search_recent_responses)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |senderAddress| Assign|tpasupport@myubiquity.com|
    
    
    
    
    ### Is_this_a_bounce_check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Is this a bounce check|
    |Default Connector|[Alert_to_auto_response_fail](#alert_to_auto_response_fail)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Bounce_Retry_Once (Bounce - Retry Once)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Wipe_bounce_from_contact](#wipe_bounce_from_contact)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Flow.FaultMessage| Contains|currently marked as bounced|
    |2|$Record.Contact.EmailBouncedDate| Less Than|threeMonthsAgo|
    |3|[Wipe_bounce_from_contact](#wipe_bounce_from_contact)| Was Visited|⬜|
    
    
    
    
    ### Needs_Response_and_From_Address_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Needs Response and From Address Check|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Internal_or_Noreply_SPAM (Internal or Noreply SPAM)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|recipientEmail| Contains|noreply|
    |2|recipientEmail| Contains|no-reply|
    |3|recipientEmail| Contains|donotreply|
    |4|$Record.OwnerId| Contains|00G37000000prxX|
    |5|$Record.Subject| Starts With|Automatic Reply|
    |6|recipientEmail| Contains|mailerdaemon|
    |7|recipientEmail| Contains|mailer-daemon|
    |8|recipientEmail| Contains|@myubiquity.com|
    
    
    
    
    #### Rule tpasupport (tpasupport@)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Define_sender_tpa](#define_sender_tpa)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.RecordTypeId| Contains|01237000000AZr4|
    |2|$Record.Origin| Contains|TPA|
    
    
    
    
    #### Rule Info (Info@)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Define_sender_saver](#define_sender_saver)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.RecordTypeId| Contains|01237000000AhiO|
    |2|$Record.Origin| Equal To|Saver Inbox|
    
    
    
    
    #### Rule support (support@)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Define_sender_support](#define_sender_support)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.RecordTypeId| Contains|01237000000AZr4|
    |2|$Record.Origin| Equal To|Support Inbox|
    
    
    
    
    #### Rule singlek (singlek@)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Define_sender_single_k](#define_sender_single_k)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.RecordTypeId| Contains|01237000000Xu9b|
    |2|$Record.Origin| Equal To|Single(k) Inbox|
    
    
    
    
    ### Response_Loop_Catch
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Response Loop Catch|
    |Default Connector|[Response_Split](#response_split)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Recent_Response_Found (Recent Response Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Search_Recent_Responses.Id| Is Null|⬜|
    
    
    
    
    ### Response_Split
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Response Split|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule CST_Response_Contact (CST Response Contact)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Standard_Auto_Response](#standard_auto_response)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.ContactEmail| Is Blank|⬜|
    
    
    
    
    #### Rule CST_Response_Web_Email (CST Response Web Email)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Copy_1_of_Standard_Auto_Response](#copy_1_of_standard_auto_response)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|recipientEmail| Is Blank|⬜|
    
    
    
    
    ### Search_Recent_Responses
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|EmailMessage|
    |Label|Search Recent Responses|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Response_Loop_Catch](#response_loop_catch)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|FromAddress| Equal To|senderAddress|
    |2|ToAddress| Equal To|recipientEmail|
    |3|CreatedDate| Greater Than Or Equal To|last5Minutes|
    
    
    
    
    ### Wipe_bounce_from_contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Wipe bounce from contact|
    |Input Reference|$Record.Contact|
    |Connector|isGoTo: true<br/>targetReference: Standard_Auto_Response<br/>|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |EmailBouncedDate|<!-- -->|
    |EmailBouncedReason|<!-- -->|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

