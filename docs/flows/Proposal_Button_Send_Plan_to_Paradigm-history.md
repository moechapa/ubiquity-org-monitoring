# Proposal_Button_Send_Plan_to_Paradigm history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Proposal_Button_Send_Plan_to_Paradigm-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Screen Flow</b>"]):::startClass
    click START "#general-information" "1829928055"
    
    Error_Log("⚙️ <em></em><br/>Error Log"):::actionCalls
    click Error_Log "#error_log" "693435213"
    
    Send_Failure_Email_to_Dev("📧 <em></em><br/>Send Failure Email to Dev"):::actionCalls
    click Send_Failure_Email_to_Dev "#send_failure_email_to_dev" "2654424177"
    
    Success_Log("⚙️ <em></em><br/>Success Log"):::actionCalls
    click Success_Log "#success_log" "4262441474"
    
    Callout_Success{"🔀 <em></em><br/>Callout Success ?"}:::decisions
    click Callout_Success "#callout_success" "4132856810"
    
    Get_Proposal[("🔍 <em></em><br/>Get Proposal")]:::recordLookups
    click Get_Proposal "#get_proposal" "1949544092"
    
    Update_errors_r[("🛠️ <em></em><br/>Update errors")]:::recordUpdates
    click Update_errors_r "#update_errors_r" "3382305479"
    
    Update_Purchase_Link[("🛠️ <em></em><br/>Update Purchase Link")]:::recordUpdates
    click Update_Purchase_Link "#update_purchase_link" "1712803335"
    
    Error_Screen(["💻 <em></em><br/>Error Screen"]):::screens
    click Error_Screen "#error_screen" "3964289826"
    
    Success_Screen(["💻 <em></em><br/>Success Screen"]):::screens
    click Success_Screen "#success_screen" "4036635979"
    
    Get_purchase_link[["🔗 <em>Subflow</em><br/>Get purchase link"]]:::subflows
    click Get_purchase_link "#get_purchase_link" "3457638852"
    
    Error_Log --> Send_Failure_Email_to_Dev
    Send_Failure_Email_to_Dev --> Error_Screen
    Success_Log --> Success_Screen
    Callout_Success --> |"Yes"| Update_Purchase_Link
    Callout_Success --> |"Default Outcome"| Update_errors_r
    Get_Proposal --> Get_purchase_link
    Update_errors_r --> Error_Log
    Update_Purchase_Link --> Success_Log
    Error_Screen --> END_Error_Screen
    Success_Screen --> END_Success_Screen
    START -->  Get_Proposal
    Get_purchase_link --> Callout_Success
    END_Error_Screen(( END )):::endClass
    END_Success_Screen(( END )):::endClass
    
    
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
    |Label|Proposal | Button | Send Plan to Paradigm|
    |Status|Active|
    |Description|Adding Status = Submitted for Purchase after successful callout.<br/>Adding Success and Error Logs|
    |Environments|Default|
    |Interview Label|Proposal | Button | Send Plan to Paradigm {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Proposal](#get_proposal)|
    |Next Node|[Get_Proposal](#get_proposal)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |planID|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |purchaseCalloutResponseCode|Number|⬜|✅|⬜|<!-- -->|<!-- -->|
    |purchaseCalloutResponseException|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |purchaseLink|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |recordId|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |tokenCalloutResponseCode|Number|⬜|✅|⬜|<!-- -->|<!-- -->|
    |tokenCalloutResponseException|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |OrgURLFormula|String|LEFT({!$Api.Partner_Server_URL_260}, FIND( '/services', {!$Api.Partner_Server_URL_260}))|Dynamic link for the Proposal|
    |ProposalLinkURL|String|{!OrgURLFormula}+'lightning/r/Proposal__c/'+{!recordId}+'/view'|<!-- -->|
    
    
    ## Text Templates
    
    |Name|Text|Description|
    |:-- |:-- |:--  |
    |emailBodyPurchaseException|<p>Hi Moe,</p><p><br></p><p>This is to inform you that Proposal | Button | Send Plan to Paradigm Failed for <strong>{!Get_Proposal.Name} - {!Get_Proposal.Client_Company_Name__c}</strong></p><p><br></p><p>Auth Errors: {!tokenCalloutResponseException}</p><p>Purchase Errors: {!purchaseCalloutResponseException}</p><p><br></p>|<!-- -->|
    |Error_Notification|<div class="slds-scoped-notification slds-theme_error" role="status">|<!-- -->|
    |ErrorLog|Proposal | Button | Send Plan to Paradigm Failed for {!Get_Proposal.Name} - {!Get_Proposal.Client_Company_Name__c}<br/>Purchase Errors: {!purchaseCalloutResponseException}|<!-- -->|
    |Success_Notification|<div class="slds-scoped-notification slds-theme_success" role="status">|<!-- -->|
    |SuccessLog|<p>{!$User.Full_Name__c} successfully sent {!Get_Proposal.Name} Proposal to Paradigm!</p><p><br></p><p>Proposal Link - {!ProposalLinkURL}</p><p>Purchase Link - {!purchaseLink}</p><p>Plan id - {!planID}</p>|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Error_Log
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Error Log|
    |Action Type|Apex|
    |Action Name|FlowLogEntry|
    |Flow Transaction Model|Automatic|
    |Name Segment|FlowLogEntry|
    |Offset|0|
    |Store Output Automatically|✅|
    |Flow Name (input)|Proposal | Button | Send Plan to Paradigm|
    |Logging Level Name (input)|error|
    |Message (input)|ErrorLog|
    |Record Id (input)|Get_Proposal.Id|
    |Save Log (input)|✅|
    |Connector|[Send_Failure_Email_to_Dev](#send_failure_email_to_dev)|
    
    
    ### Send_Failure_Email_to_Dev
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send Failure Email to Dev|
    |Action Type|Email Simple|
    |Action Name|emailSimple|
    |Description|Sends email to dev to notify about failed manual callout to Paradigm for purchase link retrieval.|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|emailSimple|
    |Offset|0|
    |Email Addresses (input)|mchapa@myubiquity.com|
    |Sender Type (input)|OrgWideEmailAddress|
    |Sender Address (input)|dontrespond@myubiquity.com|
    |Email Subject (input)|Attention! Proposal | Button | Send Plan to Paradigm  Flow Failed|
    |Email Body (input)|emailBodyPurchaseException|
    |Send Rich Body (input)|✅|
    |Connector|[Error_Screen](#error_screen)|
    
    
    ### Success_Log
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Success Log|
    |Action Type|Apex|
    |Action Name|FlowLogEntry|
    |Flow Transaction Model|Automatic|
    |Name Segment|FlowLogEntry|
    |Offset|0|
    |Store Output Automatically|✅|
    |Flow Name (input)|Proposal | Button | Send Plan to Paradigm|
    |Logging Level Name (input)|info|
    |Message (input)|SuccessLog|
    |Record Id (input)|Get_Proposal.Id|
    |Save Log (input)|✅|
    |Connector|[Success_Screen](#success_screen)|
    
    
    ### Callout_Success
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Callout Success ?|
    |Default Connector|[Update_errors_r](#update_errors_r)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Purchase_Link](#update_purchase_link)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|purchaseLink| Is Blank|⬜|
    
    
    
    
    ### Get_Proposal
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Proposal__c|
    |Label|Get Proposal|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Get_purchase_link](#get_purchase_link)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Update_errors_r
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Proposal__c|
    |Label|Update errors|
    |Connector|[Error_Log](#error_log)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Proposal.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Errors__c|purchaseCalloutResponseException|
    
    
    
    
    ### Update_Purchase_Link
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Proposal__c|
    |Label|Update Purchase Link|
    |Connector|[Success_Log](#success_log)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Proposal.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Manual_Callout__c|✅|
    |Paradigm_Purchase_Link__c|purchaseLink|
    |Plan_ID__c|planID|
    |Status__c|Submitted for Purchase|
    
    
    
    
    ### Error_Screen
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|Error Screen|
    |Allow Back|⬜|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Show Footer|⬜|
    |Show Header|⬜|
    
    
    #### Copy_1_of_Success_Message
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p style="text-align: center;">{!$Label.FlowStyles_ErrorNotification}</p><p style="text-align: center;"><span style="font-size: 18px;">Error! Please give your Admin the following errors, click on Proposal Link, and close this window.</span></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[Error_Screen_Section1_Column1](#error_screen_section1_column1)|
    
    
    
    
    #### Copy_1_of_Purchase_Link
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p><strong style="font-size: 14px;">Errors</strong><span style="font-size: 14px;">: {!purchaseCalloutResponseException}</span></p><p><strong style="font-size: 14px; background-color: rgb(255, 255, 255);">Proposal Link </strong><span style="font-size: 14px; background-color: rgb(255, 255, 255);">: </span><a href="{!ProposalLinkURL}" rel="noopener noreferrer" target="_blank" style="font-size: 14px; background-color: rgb(255, 255, 255);">Go To Proposal</a></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[Error_Screen_Section1_Column1](#error_screen_section1_column1)|
    
    
    
    
    #### Error_Screen_Section1_Column1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region|
    |Is Required|⬜|
    |Parent Field|[Error_Screen_Section1](#error_screen_section1)|
    |Width (input)|12|
    
    
    
    
    #### Error_Screen_Section1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region Container|
    |Is Required|⬜|
    |Region Container Type| Section Without Header|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    ### Success_Screen
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|Success Screen|
    |Allow Back|⬜|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Show Footer|⬜|
    |Show Header|⬜|
    
    
    #### DisplaySuccess
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p style="text-align: center;">{!$Label.FlowStyles_SuccessNotification}</p><p><span style="font-size: 18px;">Success! Plan has been sent to Paradigm. Please click on one of the links below and close this window.</span></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[Success_Screen_Section1_Column1](#success_screen_section1_column1)|
    
    
    
    
    #### Purchase_Link
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p><strong style="font-size: 14px;">Purchase Link</strong><span style="font-size: 14px;"> : </span><a href="{!purchaseLink}" rel="noopener noreferrer" target="_blank" style="font-size: 14px;">{!purchaseLink}</a></p><p><strong style="font-size: 14px;">Plan Id </strong><span style="font-size: 14px;">: {!planID}</span></p><p><strong style="font-size: 14px; background-color: rgb(255, 255, 255); color: rgb(68, 68, 68);">Proposal Link </strong><span style="font-size: 14px; background-color: rgb(255, 255, 255); color: rgb(68, 68, 68);">: </span><a href="{!ProposalLinkURL}" rel="noopener noreferrer" target="_blank" style="font-size: 14px; background-color: rgb(255, 255, 255); color: rgb(68, 68, 68);"><u>Go To Proposal</u></a></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Parent Field|[Success_Screen_Section1_Column1](#success_screen_section1_column1)|
    
    
    
    
    #### Success_Screen_Section1_Column1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region|
    |Is Required|⬜|
    |Parent Field|[Success_Screen_Section1](#success_screen_section1)|
    |Width (input)|12|
    
    
    
    
    #### Success_Screen_Section1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region Container|
    |Is Required|⬜|
    |Region Container Type| Section Without Header|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    ### Get_purchase_link
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Subflow|
    |Label|Get purchase link|
    |Flow Name|Purchase_API_Get_Purchase_Link|
    |Output Assignments|- assignToReference: planID<br/>&nbsp;&nbsp;name: planId<br/>- assignToReference: purchaseCalloutResponseCode<br/>&nbsp;&nbsp;name: purchaseCalloutResponseCode<br/>- assignToReference: purchaseCalloutResponseException<br/>&nbsp;&nbsp;name: purchaseCalloutResponseException<br/>- assignToReference: purchaseLink<br/>&nbsp;&nbsp;name: purchaseLink<br/>- assignToReference: tokenCalloutResponseCode<br/>&nbsp;&nbsp;name: tokenCalloutResponseCode<br/>- assignToReference: tokenCalloutResponseException<br/>&nbsp;&nbsp;name: tokenCalloutResponseException<br/>|
    |Connector|[Callout_Success](#callout_success)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |<!-- -->|Get_Proposal.Id|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

