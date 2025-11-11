# Account_Screen_Create_Box_Folder history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Account_Screen_Create_Box_Folder-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Screen Flow</b>"]):::startClass
    click START "#general-information" "3927389689"
    
    Create_Account_Folder("⚙️ <em></em><br/>Create Account Folder"):::actionCalls
    click Create_Account_Folder "#create_account_folder" "1032017595"
    
    Create_Templated_Account_Folder("⚙️ <em></em><br/>Create Templated Account Folder"):::actionCalls
    click Create_Templated_Account_Folder "#create_templated_account_folder" "3317566098"
    
    Move_to_subfolder("⚙️ <em></em><br/>Move to subfolder"):::actionCalls
    click Move_to_subfolder "#move_to_subfolder" "805968066"
    
    Assign_Account_Box_Fields[\"🟰 <em></em><br/>Assign Account Box Fields"/]:::assignments
    click Assign_Account_Box_Fields "#assign_account_box_fields" "454919816"
    
    Assign_Conversion_Template_Id[\"🟰 <em></em><br/>Assign Conversion Template Id"/]:::assignments
    click Assign_Conversion_Template_Id "#assign_conversion_template_id" "874758415"
    
    Assign_New_Template_Id[\"🟰 <em></em><br/>Assign New Template Id"/]:::assignments
    click Assign_New_Template_Id "#assign_new_template_id" "2054899861"
    
    Template_Check{"🔀 <em></em><br/>Template Check"}:::decisions
    click Template_Check "#template_check" "901847451"
    
    Find_Subfolder[("🔍 <em></em><br/>Find Subfolder")]:::recordLookups
    click Find_Subfolder "#find_subfolder" "799056437"
    
    Get_Account[("🔍 <em></em><br/>Get Account")]:::recordLookups
    click Get_Account "#get_account" "740508262"
    
    Update_Account_Box_Fields[("🛠️ <em></em><br/>Update Account Box Fields")]:::recordUpdates
    click Update_Account_Box_Fields "#update_account_box_fields" "1642485192"
    
    initScreen(["💻 <em></em><br/>initScreen"]):::screens
    click initScreen "#initscreen" "1477895448"
    
    Create_Account_Folder --> Find_Subfolder
    Create_Templated_Account_Folder --> Find_Subfolder
    Move_to_subfolder --> Assign_Account_Box_Fields
    Assign_Account_Box_Fields --> Update_Account_Box_Fields
    Assign_Conversion_Template_Id --> Create_Templated_Account_Folder
    Assign_New_Template_Id --> Create_Templated_Account_Folder
    Template_Check --> |"New Plan Folder"| Assign_New_Template_Id
    Template_Check --> |"Conversion Plan Folder"| Assign_Conversion_Template_Id
    Template_Check --> |"None"| Create_Account_Folder
    Find_Subfolder --> Move_to_subfolder
    Get_Account --> initScreen
    Update_Account_Box_Fields --> END_Update_Account_Box_Fields
    initScreen --> Template_Check
    START -->  Get_Account
    END_Update_Account_Box_Fields(( END )):::endClass
    
    
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
    |Label|Account | Screen | Create Box Folder|
    |Status|Active|
    |Description|Manually creates box folder in proper subfolder w/ template options.|
    |Environments|Default|
    |Interview Label|Account | Screen | Create Box Folder {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Account](#get_account)|
    |Next Node|[Get_Account](#get_account)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |accountRecord|SObject|⬜|⬜|⬜|Account|<!-- -->|
    |newFolderId|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |recordId|String|⬜|✅|⬜|<!-- -->|Account Id|
    |templateId|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |targetAccountSubFolderName|String|IF(ISNUMBER(LEFT({!accountRecord.Name}, 1)),<br/>"#",<br/>UPPER(LEFT({!accountRecord.Name}, 1)))|<!-- -->|
    
    
    ## Constants
    
    |Name|Data Type|Value|Description|
    |:-- |:--:|:--:|:--  |
    |conversionPlanFolderId|String|263971360305|<!-- -->|
    |newPlanFolderId|String|263971360305|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Create_Account_Folder
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Create Account Folder|
    |Action Type|Apex|
    |Action Name|box__CreateFolderForRecordId_v2|
    |Flow Transaction Model|Automatic|
    |Name Segment|box__CreateFolderForRecordId_v2|
    |Output Parameters|assignToReference: newFolderId<br/>name: folderId<br/>|
    |Record Id (input)|accountRecord.Id|
    |Connector|[Find_Subfolder](#find_subfolder)|
    
    
    ### Create_Templated_Account_Folder
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Create Templated Account Folder|
    |Action Type|Apex|
    |Action Name|box__CreateFolderForRecordIdFromTemplate_v2|
    |Flow Transaction Model|Automatic|
    |Name Segment|box__CreateFolderForRecordIdFromTemplate_v2|
    |Output Parameters|assignToReference: newFolderId<br/>name: folderId<br/>|
    |Record Id (input)|accountRecord.Id|
    |Template Folder Id (input)|templateId|
    |Connector|[Find_Subfolder](#find_subfolder)|
    
    
    ### Move_to_subfolder
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Move to subfolder|
    |Action Type|Apex|
    |Action Name|box__MoveFolder_v2|
    |Flow Transaction Model|Automatic|
    |Name Segment|box__MoveFolder_v2|
    |Store Output Automatically|✅|
    |Folder Id (input)|newFolderId|
    |New Parent Folder Id (input)|Find_Subfolder.box__FolderId__c|
    |Connector|[Assign_Account_Box_Fields](#assign_account_box_fields)|
    
    
    ### Assign_Account_Box_Fields
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Account Box Fields|
    |Connector|[Update_Account_Box_Fields](#update_account_box_fields)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |accountRecord.Box_Folder_Linked__c| Assign|✅|
    |accountRecord.Box_Folder_Id__c| Assign|newFolderId|
    
    
    
    
    ### Assign_Conversion_Template_Id
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Conversion Template Id|
    |Connector|isGoTo: true<br/>targetReference: Create_Templated_Account_Folder<br/>|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |templateId| Assign|conversionPlanFolderId|
    
    
    
    
    ### Assign_New_Template_Id
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign New Template Id|
    |Connector|[Create_Templated_Account_Folder](#create_templated_account_folder)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |templateId| Assign|newPlanFolderId|
    
    
    
    
    ### Template_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Template Check|
    |Default Connector|[Create_Account_Folder](#create_account_folder)|
    |Default Connector Label|None|
    
    
    #### Rule New_Plan_Folder (New Plan Folder)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_New_Template_Id](#assign_new_template_id)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Folder_Template| Equal To|New Plan|
    
    
    
    
    #### Rule Conversion_Plan_Folder (Conversion Plan Folder)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Conversion_Template_Id](#assign_conversion_template_id)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Folder_Template| Equal To|Conversion Plan|
    
    
    
    
    ### Find_Subfolder
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|box__Folder_Details__c|
    |Label|Find Subfolder|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|- Id<br/>- box__FolderId__c<br/>|
    |Store Output Automatically|✅|
    |Connector|[Move_to_subfolder](#move_to_subfolder)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Name| Equal To|targetAccountSubFolderName|
    
    
    
    
    ### Get_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Account|
    |Label|Get Account|
    |Assign Null Values If No Records Found|⬜|
    |Output Reference|accountRecord|
    |Queried Fields|- Id<br/>- Name<br/>|
    |Connector|[initScreen](#initscreen)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Update_Account_Box_Fields
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Account Box Fields|
    |Input Reference|accountRecord|
    
    
    ### initScreen
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|[initScreen](#initscreen)|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Show Footer|✅|
    |Show Header|✅|
    |Connector|[Template_Check](#template_check)|
    
    
    #### Folder_Template
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|- newPlanChoice<br/>- conversionPlanChoice<br/>- noTemplateChoice<br/>|
    |Field Text|Folder Template|
    |Field Type| Radio Buttons|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

