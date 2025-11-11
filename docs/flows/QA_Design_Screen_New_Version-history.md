# QA_Design_Screen_New_Version history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](QA_Design_Screen_New_Version-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Screen Flow</b>"]):::startClass
    click START "#general-information" "3075054489"
    
    Navigate_to_new_design_version("⚡ <em></em><br/>Navigate to new design version"):::actionCalls
    click Navigate_to_new_design_version "#navigate_to_new_design_version" "4156098881"
    
    Assign_version_info_from_current_version[\"🟰 <em></em><br/>Assign version info from current version"/]:::assignments
    click Assign_version_info_from_current_version "#assign_version_info_from_current_version" "3182838333"
    
    Assign_version_info_from_design[\"🟰 <em></em><br/>Assign version info from design"/]:::assignments
    click Assign_version_info_from_design "#assign_version_info_from_design" "2923227795"
    
    Check_that_design_found{"🔀 <em></em><br/>Check that design found"}:::decisions
    click Check_that_design_found "#check_that_design_found" "2238112661"
    
    Check_that_qa_version_present{"🔀 <em></em><br/>Check that qa version present"}:::decisions
    click Check_that_qa_version_present "#check_that_qa_version_present" "1323179953"
    
    Copy_Questions_Check{"🔀 <em></em><br/>Copy Questions Check"}:::decisions
    click Copy_Questions_Check "#copy_questions_check" "1592790587"
    
    recordId_check{"🔀 <em></em><br/>recordId check"}:::decisions
    click recordId_check "#recordid_check" "3894271278"
    
    Create_new_qa_design_version[("➕ <em></em><br/>Create new qa design version")]:::recordCreates
    click Create_new_qa_design_version "#create_new_qa_design_version" "3717175163"
    
    Create_new_question_info[("➕ <em></em><br/>Create new question info")]:::recordCreates
    click Create_new_question_info "#create_new_question_info" "2951891234"
    
    Get_questions_from_current_version[("🔍 <em></em><br/>Get questions from current version")]:::recordLookups
    click Get_questions_from_current_version "#get_questions_from_current_version" "274551828"
    
    Grab_Current_Version[("🔍 <em></em><br/>Grab Current Version")]:::recordLookups
    click Grab_Current_Version "#grab_current_version" "1475592550"
    
    Grab_Design[("🔍 <em></em><br/>Grab Design")]:::recordLookups
    click Grab_Design "#grab_design" "2923199625"
    
    initScreen(["💻 <em></em><br/>initScreen"]):::screens
    click initScreen "#initscreen" "2896925946"
    
    Missing_record_screen(["💻 <em></em><br/>Missing record screen"]):::screens
    click Missing_record_screen "#missing_record_screen" "4215623440"
    
    Copy_Question_Info_Data{{"♻️ <em></em><br/>Copy Question Info Data"}}:::transforms
    click Copy_Question_Info_Data "#copy_question_info_data" "3044957761"
    
    Navigate_to_new_design_version --> END_Navigate_to_new_design_version
    Assign_version_info_from_current_version --> initScreen
    Assign_version_info_from_design --> initScreen
    Check_that_design_found --> |"Design found"| Assign_version_info_from_design
    Check_that_design_found --> |"Default Outcome"| Missing_record_screen
    Check_that_qa_version_present --> |"Record Found"| Assign_version_info_from_current_version
    Check_that_qa_version_present --> |"Default Outcome"| Missing_record_screen
    Copy_Questions_Check --> |"Copy questions yas"| Get_questions_from_current_version
    Copy_Questions_Check --> |"Default Outcome"| Navigate_to_new_design_version
    recordId_check --> |"recordId present"| Grab_Current_Version
    recordId_check --> |"designId present"| Grab_Design
    recordId_check --> |"Whoopsie"| Missing_record_screen
    Create_new_qa_design_version --> Copy_Questions_Check
    Create_new_question_info --> Navigate_to_new_design_version
    Get_questions_from_current_version --> Copy_Question_Info_Data
    Grab_Current_Version --> Check_that_qa_version_present
    Grab_Design --> Check_that_design_found
    initScreen --> Create_new_qa_design_version
    Missing_record_screen --> END_Missing_record_screen
    START -->  recordId_check
    Copy_Question_Info_Data --> Create_new_question_info
    END_Navigate_to_new_design_version(( END )):::endClass
    END_Missing_record_screen(( END )):::endClass
    
    
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
    |Label|QA Design | Screen | New Version|
    |Status|Active|
    |Description|Added new fields (pass/fail, require comment) to question copy<br/><br/>Creates a new version of a QA design.  Either from existing version or from scratch.|
    |Environments|Default|
    |Interview Label|QA Design | Screen | New Version {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[recordId_check](#recordid_check)|
    |Next Node|[recordId_check](#recordid_check)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |designId|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |newQaVersionId|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |newVersionName|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |questionInfo2Create|SObject|✅|⬜|⬜|QA_Question_Info__c|<!-- -->|
    |recordId|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Navigate_to_new_design_version
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Navigate to new design version|
    |Action Type|Component|
    |Action Name|ecflc:flowIdRedirect|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|ecflc:flowIdRedirect|
    |Store Output Automatically|✅|
    |Record Id (input)|newQaVersionId|
    
    
    ### Assign_version_info_from_current_version
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign version info from current version|
    |Description|Name and Design Id|
    |Connector|[initScreen](#initscreen)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |designId| Assign|Grab_Current_Version.QA_Design__c|
    |newVersionName| Assign|Grab_Current_Version.QA_Design__r.Name|
    
    
    
    
    ### Assign_version_info_from_design
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign version info from design|
    |Connector|[initScreen](#initscreen)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |newVersionName| Assign|Grab_Design.Name|
    
    
    
    
    ### Check_that_design_found
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check that design found|
    |Default Connector|isGoTo: true<br/>targetReference: Missing_record_screen<br/>|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Design_found (Design found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_version_info_from_design](#assign_version_info_from_design)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|[Grab_Design](#grab_design)| Is Null|⬜|
    
    
    
    
    ### Check_that_qa_version_present
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check that qa version present|
    |Default Connector|isGoTo: true<br/>targetReference: Missing_record_screen<br/>|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Record_Found (Record Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_version_info_from_current_version](#assign_version_info_from_current_version)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|[Grab_Current_Version](#grab_current_version)| Is Null|⬜|
    
    
    
    
    ### Copy_Questions_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Copy Questions Check|
    |Default Connector|[Navigate_to_new_design_version](#navigate_to_new_design_version)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Copy_questions_yas (Copy questions yas)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_questions_from_current_version](#get_questions_from_current_version)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Copy_Questions| Equal To|✅|
    
    
    
    
    ### recordId_check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|recordId check|
    |Description|Was this flow started from a QA Design version record page, or the list view?  Should have at least one Id|
    |Default Connector|[Missing_record_screen](#missing_record_screen)|
    |Default Connector Label|Whoopsie|
    
    
    #### Rule recordId_present (recordId present)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Grab_Current_Version](#grab_current_version)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|recordId| Is Blank|⬜|
    
    
    
    
    #### Rule designId_present (designId present)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Grab_Design](#grab_design)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|designId| Is Null|⬜|
    
    
    
    
    ### Create_new_qa_design_version
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|QA_Design_Version__c|
    |Label|Create new qa design version|
    |Assign Record Id To Reference|newQaVersionId|
    |Connector|[Copy_Questions_Check](#copy_questions_check)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Name|newVersionName|
    |QA_Design__c|designId|
    
    
    
    
    ### Create_new_question_info
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Label|Create new question info|
    |Input Reference|[Copy_Question_Info_Data](#copy_question_info_data)|
    |Connector|[Navigate_to_new_design_version](#navigate_to_new_design_version)|
    
    
    ### Get_questions_from_current_version
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|QA_Question_Info__c|
    |Label|Get questions from current version|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Store Output Automatically|✅|
    |Connector|[Copy_Question_Info_Data](#copy_question_info_data)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|QA_Design__c| Equal To|recordId|
    
    
    
    
    ### Grab_Current_Version
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|QA_Design_Version__c|
    |Label|Grab Current Version|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Check_that_qa_version_present](#check_that_qa_version_present)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Grab_Design
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|QA_Design__c|
    |Label|Grab Design|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Check_that_design_found](#check_that_design_found)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|designId|
    
    
    
    
    ### initScreen
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|[initScreen](#initscreen)|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Show Footer|✅|
    |Show Header|⬜|
    |Connector|[Create_new_qa_design_version](#create_new_qa_design_version)|
    
    
    #### initHeader
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p><strong style="font-size: 18px;">{!newVersionName} - New Version</strong></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Copy_Questions
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|Boolean|
    |Default Value|false|
    |Field Text|Copy Questions|
    |Field Type| Input Field|
    |Help Text|<p>Copied questions can be edited before activation.</p>|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Disabled|false|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: recordId<br/>&nbsp;&nbsp;operator: IsNull<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;booleanValue: false<br/>|
    
    
    
    
    #### noQuestionsText
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p>No questions to copy</p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: recordId<br/>&nbsp;&nbsp;operator: IsNull<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;booleanValue: true<br/>|
    
    
    
    
    ### Missing_record_screen
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|Missing record screen|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Show Footer|✅|
    |Show Header|✅|
    
    
    #### noRecordText
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p><span style="color: rgb(234, 0, 30);">Something went wrong, please alert your salesforce admin and include a screenshot of this message:</span></p><p><br></p><p><span style="color: rgb(234, 0, 30);">Interview Timestamp: {!$Flow.CurrentDateTime}</span></p><p><span style="color: rgb(234, 0, 30);">Running user: {!$User.Username}</span></p><p><span style="color: rgb(234, 0, 30);">recordId: {!recordId}</span></p><p><span style="color: rgb(234, 0, 30);">designId: {!designId}</span></p><p><span style="color: rgb(234, 0, 30);">Interview GUID: {!$Flow.InterviewGuid}</span></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    ### Copy_Question_Info_Data
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Transform|
    |Label|Copy Question Info Data|
    |Data Type|SObject|
    |Object Type|QA_Question_Info__c|
    |Is Collection|✅|
    |Scale|0|
    |Store Output Automatically|✅|
    |Connector|[Create_new_question_info](#create_new_question_info)|
    
    
    #### Transform actions
    
    |Transform Type|Value|Output Field Api Name|
    |:-- |:--:|:--  |
    |Map|Get_questions_from_current_version[$EachItem].Order__c|Order__c|
    |Map|newQaVersionId|QA_Design__c|
    |Map|Get_questions_from_current_version[$EachItem].Type__c|Type__c|
    |Map|Get_questions_from_current_version[$EachItem].Response_4__c|Response_4__c|
    |Map|Get_questions_from_current_version[$EachItem].Response_4_Score__c|Response_4_Score__c|
    |Map|Get_questions_from_current_version[$EachItem].Score_Value__c|Score_Value__c|
    |Map|Get_questions_from_current_version[$EachItem].Response_3_Score__c|Response_3_Score__c|
    |Map|Get_questions_from_current_version[$EachItem].Response_3__c|Response_3__c|
    |Map|Get_questions_from_current_version[$EachItem].Response_2_Score__c|Response_2_Score__c|
    |Map|Get_questions_from_current_version[$EachItem].Response_2__c|Response_2__c|
    |Map|Get_questions_from_current_version[$EachItem].Response_1__c|Response_1__c|
    |Map|Get_questions_from_current_version[$EachItem].Response_1_Score__c|Response_1_Score__c|
    |Map|Get_questions_from_current_version[$EachItem].Question_Prompt__c|Question_Prompt__c|
    |Map|Get_questions_from_current_version[$EachItem].Help_Text__c|Help_Text__c|
    |Map|Get_questions_from_current_version[$EachItem].Pass_Fail__c|Pass_Fail__c|
    |Map|Get_questions_from_current_version[$EachItem].Require_Comment__c|Require_Comment__c|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

