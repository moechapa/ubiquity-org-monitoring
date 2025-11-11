# Case_Scheduled_Create_Weekly_3_16_Compliance_Case history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Case_Scheduled_Create_Weekly_3_16_Compliance_Case-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Scheduled</b>"]):::startClass
    click START "#general-information" "858541920"
    
    Set_ownerId[\"🟰 <em></em><br/>Set ownerId"/]:::assignments
    click Set_ownerId "#set_ownerid" "1464115168"
    
    Queue_Found_Check{"🔀 <em></em><br/>Queue Found Check"}:::decisions
    click Queue_Found_Check "#queue_found_check" "1576366861"
    
    Create_Weekly_3_16_Case[("➕ <em></em><br/>Create Weekly 3(16) Case")]:::recordCreates
    click Create_Weekly_3_16_Case "#create_weekly_3_16_case" "1653470005"
    
    Get_Compliance_Queue[("🔍 <em></em><br/>Get Compliance Queue")]:::recordLookups
    click Get_Compliance_Queue "#get_compliance_queue" "3157589337"
    
    Set_ownerId --> Create_Weekly_3_16_Case
    Queue_Found_Check --> |"Queue Found"| Set_ownerId
    Queue_Found_Check --> |"Default Outcome"| Create_Weekly_3_16_Case
    Create_Weekly_3_16_Case --> END_Create_Weekly_3_16_Case
    Get_Compliance_Queue --> Queue_Found_Check
    START -->  Get_Compliance_Queue
    END_Create_Weekly_3_16_Case(( END )):::endClass
    
    
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
    |Label|Case | Scheduled | Create Weekly 3(16) Compliance Case|
    |Status|⚠️ Draft|
    |Description|Updated to create cases for compliance queue, not shared user<br/><br/>Creates case every monday based on criteria in case #01144416|
    |Environments|Default|
    |Interview Label|Case | Scheduled | Create Weekly 3(16) Compliance Case {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Compliance_Queue](#get_compliance_queue)|
    |Next Node|[Get_Compliance_Queue](#get_compliance_queue)|
    
    
    #### Schedules
    
    |Frequency|Start Date|Start Time|
    |:-- |:--:|:--: |
    |Weekly|Jul 3, 2023|05:00|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |ownerId|String|⬜|⬜|⬜|<!-- -->|Defaults to shared compliance user Id.  Should be replaced with queue id|
    
    
    ## Text Templates
    
    |Name|Text|Description|
    |:-- |:-- |:--  |
    |reportLink|<p><a href="https://myubiquity.lightning.force.com/lightning/r/Report/00OHo000002v4wRMAQ/view?queryScope=userFolders" rel="noopener noreferrer" target="_blank">https://myubiquity.lightning.force.com/lightning/r/Report/00OHo000002v4wRMAQ/view?queryScope=userFolders</a></p>|<!-- -->|
    |weeklyDesc|<p>Please check the following items for all 3(16) clients listed on the report:</p><p><br></p><ul><li>Review of Automatic Start Dates</li><li>Evaluation of Payroll Submissions</li><li>Evaluation of Loan Payment Submissions</li></ul><p><br></p>|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Set_ownerId
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Set ownerId|
    |Connector|[Create_Weekly_3_16_Case](#create_weekly_3_16_case)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |ownerId| Assign|Get_Compliance_Queue.Id|
    
    
    
    
    ### Queue_Found_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Queue Found Check|
    |Default Connector|[Create_Weekly_3_16_Case](#create_weekly_3_16_case)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Queue_Found (Queue Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Set_ownerId](#set_ownerid)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|[Get_Compliance_Queue](#get_compliance_queue)| Is Null|⬜|
    
    
    
    
    ### Create_Weekly_3_16_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Create Weekly 3(16) Case|
    |Store Output Automatically|✅|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|0013700000JH68lAAD|
    |Case_notes_new__c|reportLink|
    |Category__c|3(16) Weekly Monitoring|
    |Department__c|Compliance|
    |Description|weeklyDesc|
    |Origin|Internal|
    |OwnerId|ownerId|
    |Plan__c|a2o1G000000oQW5QAM|
    |RecordTypeId|01237000000Xs6BAAS|
    |Status|New|
    |Subject|3(16) Weekly Monitoring|
    
    
    
    
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
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

