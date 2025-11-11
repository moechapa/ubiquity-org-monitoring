# Purchase_API_Callout_Trigger history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Purchase_API_Callout_Trigger-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "1083527316"
    
    Copy_1_of_Email_Exception_to_Dev("📧 <em></em><br/>Email Exception to Dev"):::actionCalls
    click Copy_1_of_Email_Exception_to_Dev "#copy_1_of_email_exception_to_dev" "758972733"
    
    Email_Exception_to_Dev("📧 <em></em><br/>Email Exception to Dev"):::actionCalls
    click Email_Exception_to_Dev "#email_exception_to_dev" "808156726"
    
    Error_Log("⚙️ <em></em><br/>Error Log"):::actionCalls
    click Error_Log "#error_log" "3398132307"
    
    Success_Log("⚙️ <em></em><br/>Success Log"):::actionCalls
    click Success_Log "#success_log" "3193334"
    
    Assign_link_URL[\"🟰 <em></em><br/>Assign link URL"/]:::assignments
    click Assign_link_URL "#assign_link_url" "3749895103"
    
    Assign_Purchase_Erros[\"🟰 <em></em><br/>Assign Purchase Erros"/]:::assignments
    click Assign_Purchase_Erros "#assign_purchase_erros" "461101015"
    
    Assign_Token_Errors[\"🟰 <em></em><br/>Assign Token Errors"/]:::assignments
    click Assign_Token_Errors "#assign_token_errors" "2488039474"
    
    Callout_Result{"🔀 <em></em><br/>Callout Result"}:::decisions
    click Callout_Result "#callout_result" "1556751818"
    
    Copy_1_of_Which_Org{"🔀 <em></em><br/>Which Org ?"}:::decisions
    click Copy_1_of_Which_Org "#copy_1_of_which_org" "2882289903"
    
    Which_Org{"🔀 <em></em><br/>Which Org ?"}:::decisions
    click Which_Org "#which_org" "888736391"
    
    Get_Org_Info[("🔍 <em></em><br/>Get Org Info")]:::recordLookups
    click Get_Org_Info "#get_org_info" "2355224671"
    
    Copy_1_of_Update_Triggering_Proposal[("🛠️ <em></em><br/>Update Triggering Proposal")]:::recordUpdates
    click Copy_1_of_Update_Triggering_Proposal "#copy_1_of_update_triggering_proposal" "3344783827"
    
    Copy_2_of_Update_Triggering_Proposal[("🛠️ <em></em><br/>Update Triggering Proposal")]:::recordUpdates
    click Copy_2_of_Update_Triggering_Proposal "#copy_2_of_update_triggering_proposal" "3050154812"
    
    Update_Triggering_Proposal[("🛠️ <em></em><br/>Update Triggering Proposal")]:::recordUpdates
    click Update_Triggering_Proposal "#update_triggering_proposal" "2050364521"
    
    Purchase_API_Get_Purchase_Link[["🔗 <em>Subflow</em><br/>Purchase API | Get Purchase Link"]]:::subflows
    click Purchase_API_Get_Purchase_Link "#purchase_api_get_purchase_link" "1013371927"
    
    Copy_1_of_Email_Exception_to_Dev --> END_Copy_1_of_Email_Exception_to_Dev
    Email_Exception_to_Dev --> END_Email_Exception_to_Dev
    Error_Log --> Which_Org
    Success_Log --> END_Success_Log
    Assign_link_URL --> Update_Triggering_Proposal
    Assign_Purchase_Erros --> Copy_1_of_Update_Triggering_Proposal
    Assign_Token_Errors --> Copy_2_of_Update_Triggering_Proposal
    Callout_Result --> |"Purchase Success"| Assign_link_URL
    Callout_Result --> |"Purchase Failure"| Assign_Purchase_Erros
    Callout_Result --> |"Access Token 400"| Assign_Token_Errors
    Callout_Result --> |"Default Outcome"| END_Callout_Result
    Copy_1_of_Which_Org --> |"PROD"| Copy_1_of_Email_Exception_to_Dev
    Copy_1_of_Which_Org --> |"Default Outcome"| END_Copy_1_of_Which_Org
    Which_Org --> |"PROD"| Email_Exception_to_Dev
    Which_Org --> |"Default Outcome"| END_Which_Org
    Get_Org_Info --> Purchase_API_Get_Purchase_Link
    Copy_1_of_Update_Triggering_Proposal --> Error_Log
    Copy_2_of_Update_Triggering_Proposal --> Copy_1_of_Which_Org
    Update_Triggering_Proposal --> Success_Log
    START --> |"Run Immediately"| Get_Org_Info
    Purchase_API_Get_Purchase_Link --> Callout_Result
    END_Copy_1_of_Email_Exception_to_Dev(( END )):::endClass
    END_Email_Exception_to_Dev(( END )):::endClass
    END_Success_Log(( END )):::endClass
    END_Callout_Result(( END )):::endClass
    END_Copy_1_of_Which_Org(( END )):::endClass
    END_Which_Org(( END )):::endClass
    
    
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
    |Object|Proposal__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create|
    |Label|Purchase API - Callout Trigger|
    |Status|Active|
    |Description|Changing sender email to dontrepond@ and adding logging|
    |Environments|Default|
    |Interview Label|Purchase API - Trigger Callout {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    
    
    #### Scheduled Paths
    
    |Label|Name|Offset Number|Offset Unit|Record Field|Time Source|Connector|
    |:-- |:-- |:-- |:-- |:-- |:-- |:--  |
    |<!-- -->|<!-- -->|<!-- -->|<!-- -->|<!-- -->|<!-- -->|[Get_Org_Info](#get_org_info)|
    
    
    #### Filters (logic: **1 AND 2**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Lead_Source__c| Equal To|MML|
    |2|isCalloutTriggered__c| Equal To|⬜|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |advisorCalloutResponceException|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |advisorCalloutResponseCode|Number|⬜|✅|⬜|<!-- -->|<!-- -->|
    |firmCalloutResponseCode|Number|⬜|✅|⬜|<!-- -->|<!-- -->|
    |firmCalloutResponseException|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |planId|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |proposalToUpdate|SObject|⬜|⬜|⬜|Proposal__c|<!-- -->|
    |purchaseCalloutResponseCode|Number|⬜|✅|⬜|<!-- -->|<!-- -->|
    |purchaseCalloutResponseException|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |purchaseLink|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |responseCode|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |tokenCalloutResponseCode|Number|⬜|✅|⬜|<!-- -->|<!-- -->|
    |tokenCalloutResponseException|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    
    
    ## Constants
    
    |Name|Data Type|Value|Description|
    |:-- |:--:|:--:|:--  |
    |emailSubject|String|Purchase API Trigger Callout Flow Executed|<!-- -->|
    
    
    ## Text Templates
    
    |Name|Text|Description|
    |:-- |:-- |:--  |
    |emailBodyAuthenticationException|<p>Hello Moe,</p><p><br></p><p>This is to inform you that Callout Trigger Flow was executed and exception occurred while retrieving the authentication token.</p><p><br></p><p>Response Code : {!tokenCalloutResponseCode}</p><p>Errors : {!tokenCalloutResponseException}</p>|<!-- -->|
    |emailBodyPurchaseException|<p>Hello Moe,</p><p><br></p><p>This is to inform you that Callout Trigger Flow was executed and exception occurred while retrieving the purchase link.</p><p><br></p><p>Response Code : {!purchaseCalloutResponseCode}</p><p>Errors : {!purchaseCalloutResponseException}</p>|<!-- -->|
    |ErrorLog|Purchase API - Callout Trigger failed for  MML {!$Record.Name} - {!$Record.Client_Company_Name__c}<br/>Purchase Errors: {!purchaseCalloutResponseException}|<!-- -->|
    |SuccessLog|MML {!$Record.Name} Proposal was sent successfully to Paradigm!<br/>Purchase Link - {!purchaseLink}<br/>Plan id - {!planId}|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Copy_1_of_Email_Exception_to_Dev
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Email Exception to Dev|
    |Action Type|Email Simple|
    |Action Name|emailSimple|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|emailSimple|
    |Offset|0|
    |Sender Type (input)|OrgWideEmailAddress|
    |Sender Address (input)|dontrespond@myubiquity.com|
    |Email Subject (input)|MML Proposal - failed to get authentication token|
    |Email Body (input)|emailBodyAuthenticationException|
    |Send Rich Body (input)|✅|
    |Related Record Id (input)|$Record.Id|
    |Recipient Id (input)|0031G00001UG0HZQA1|
    |Log Email On Send (input)|✅|
    
    
    ### Email_Exception_to_Dev
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Email Exception to Dev|
    |Action Type|Email Simple|
    |Action Name|emailSimple|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|emailSimple|
    |Offset|0|
    |Sender Type (input)|OrgWideEmailAddress|
    |Sender Address (input)|dontrespond@myubiquity.com|
    |Email Subject (input)|MML Proposal - failed to get purchase link|
    |Email Body (input)|{!emailBodyPurchaseException}|
    |Send Rich Body (input)|✅|
    |Related Record Id (input)|$Record.Id|
    |Recipient Id (input)|0031G00001UG0HZQA1|
    |Log Email On Send (input)|✅|
    
    
    ### Error_Log
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Error Log|
    |Action Type|Apex|
    |Action Name|FlowLogEntry|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|FlowLogEntry|
    |Offset|0|
    |Store Output Automatically|✅|
    |Flow Name (input)|Purchase API - Callout Trigger|
    |Logging Level Name (input)|error|
    |Message (input)|ErrorLog|
    |Record Id (input)|$Record.Id|
    |Save Log (input)|✅|
    |Connector|[Which_Org](#which_org)|
    
    
    ### Success_Log
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Success Log|
    |Action Type|Apex|
    |Action Name|FlowLogEntry|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|FlowLogEntry|
    |Offset|0|
    |Store Output Automatically|✅|
    |Flow Name (input)|Purchase API - Callout Trigger|
    |Logging Level Name (input)|info|
    |Message (input)|SuccessLog|
    |Record Id (input)|$Record.Id|
    |Save Log (input)|✅|
    
    
    ### Assign_link_URL
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign link URL|
    |Connector|[Update_Triggering_Proposal](#update_triggering_proposal)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Paradigm_Purchase_Link__c| Assign|purchaseLink|
    |$Record.Plan_ID__c| Assign|planId|
    |$Record.isCalloutTriggered__c| Assign|✅|
    |$Record.Status__c| Assign|Submitted for Purchase|
    
    
    
    
    ### Assign_Purchase_Erros
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Purchase Erros|
    |Connector|[Copy_1_of_Update_Triggering_Proposal](#copy_1_of_update_triggering_proposal)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Errors__c| Assign|purchaseCalloutResponseException|
    |$Record.isCalloutTriggered__c| Assign|✅|
    
    
    
    
    ### Assign_Token_Errors
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Token Errors|
    |Connector|[Copy_2_of_Update_Triggering_Proposal](#copy_2_of_update_triggering_proposal)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Errors__c| Assign|tokenCalloutResponseException|
    |$Record.isCalloutTriggered__c| Assign|✅|
    
    
    
    
    ### Callout_Result
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Callout Result|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Purchase_Success (Purchase Success)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_link_URL](#assign_link_url)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|purchaseCalloutResponseCode| Equal To|200|
    |2|purchaseLink| Is Null|⬜|
    |3|planId| Is Null|⬜|
    
    
    
    
    #### Rule Purchase_Failure (Purchase Failure)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Purchase_Erros](#assign_purchase_erros)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|purchaseCalloutResponseCode| Greater Than Or Equal To|400|
    
    
    
    
    #### Rule Access_Token_400 (Access Token 400)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Token_Errors](#assign_token_errors)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|tokenCalloutResponseCode| Greater Than Or Equal To|400|
    
    
    
    
    ### Copy_1_of_Which_Org
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Which Org ?|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Copy_1_of_PROD (PROD)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Copy_1_of_Email_Exception_to_Dev](#copy_1_of_email_exception_to_dev)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Org_Info.IsSandbox| Equal To|⬜|
    
    
    
    
    ### Which_Org
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Which Org ?|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule PROD (PROD)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Email_Exception_to_Dev](#email_exception_to_dev)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Org_Info.IsSandbox| Equal To|⬜|
    
    
    
    
    ### Get_Org_Info
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Organization|
    |Label|Get Org Info|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Purchase_API_Get_Purchase_Link](#purchase_api_get_purchase_link)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$Organization.Id|
    
    
    
    
    ### Copy_1_of_Update_Triggering_Proposal
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Triggering Proposal|
    |Input Reference|$Record|
    |Connector|[Error_Log](#error_log)|
    
    
    ### Copy_2_of_Update_Triggering_Proposal
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Triggering Proposal|
    |Input Reference|$Record|
    |Connector|[Copy_1_of_Which_Org](#copy_1_of_which_org)|
    
    
    ### Update_Triggering_Proposal
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Triggering Proposal|
    |Input Reference|$Record|
    |Connector|[Success_Log](#success_log)|
    
    
    ### Purchase_API_Get_Purchase_Link
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Subflow|
    |Label|Purchase API | Get Purchase Link|
    |Description|Makes Callout to Paradigm to get purchase Link|
    |Flow Name|[Purchase_API_Get_Purchase_Link](#purchase_api_get_purchase_link)|
    |Output Assignments|- assignToReference: advisorCalloutResponceException<br/>&nbsp;&nbsp;name: advisorCalloutResponceException<br/>- assignToReference: advisorCalloutResponseCode<br/>&nbsp;&nbsp;name: advisorCalloutResponseCode<br/>- assignToReference: firmCalloutResponseCode<br/>&nbsp;&nbsp;name: firmCalloutResponseCode<br/>- assignToReference: firmCalloutResponseException<br/>&nbsp;&nbsp;name: firmCalloutResponseException<br/>- assignToReference: planId<br/>&nbsp;&nbsp;name: planId<br/>- assignToReference: purchaseCalloutResponseCode<br/>&nbsp;&nbsp;name: purchaseCalloutResponseCode<br/>- assignToReference: purchaseCalloutResponseException<br/>&nbsp;&nbsp;name: purchaseCalloutResponseException<br/>- assignToReference: purchaseLink<br/>&nbsp;&nbsp;name: purchaseLink<br/>- assignToReference: tokenCalloutResponseCode<br/>&nbsp;&nbsp;name: tokenCalloutResponseCode<br/>- assignToReference: tokenCalloutResponseException<br/>&nbsp;&nbsp;name: tokenCalloutResponseException<br/>|
    |Connector|[Callout_Result](#callout_result)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |<!-- -->|$Record.Id|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

