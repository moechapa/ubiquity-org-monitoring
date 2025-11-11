# Clone_Parent_Details history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Clone_Parent_Details-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Screen Flow</b>"]):::startClass
    click START "#general-information" "671033811"
    
    Upload_Files{"🔀 <em></em><br/>Upload Files?"}:::decisions
    click Upload_Files "#upload_files" "421161704"
    
    Child_Case[("➕ <em></em><br/>Child Case")]:::recordCreates
    click Child_Case "#child_case" "189002993"
    
    Get_Person[("🔍 <em></em><br/>Get Person")]:::recordLookups
    click Get_Person "#get_person" "371176998"
    
    Parent_Case_Details[("🔍 <em></em><br/>Parent Case Details")]:::recordLookups
    click Parent_Case_Details "#parent_case_details" "3344704125"
    
    Create_Child_Case(["💻 <em></em><br/>Create Child Case"]):::screens
    click Create_Child_Case "#create_child_case" "2484274836"
    
    Upload_Files_0(["💻 <em></em><br/>Upload Files"]):::screens
    click Upload_Files_0 "#upload_files_0" "1538843541"
    
    Upload_Files --> |"Yes"| Upload_Files_0
    Upload_Files --> |"Default Outcome"| END_Upload_Files
    Child_Case --> Upload_Files
    Get_Person --> Child_Case
    Parent_Case_Details --> Create_Child_Case
    Create_Child_Case --> Get_Person
    Upload_Files_0 --> END_Upload_Files_0
    START -->  Parent_Case_Details
    END_Upload_Files(( END )):::endClass
    END_Upload_Files_0(( END )):::endClass
    
    
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
    |Label|Case | Button | Create Child Case|
    |Status|Active|
    |Description|Related List button that clones parent details when creating a child case|
    |Environments|Default|
    |Interview Label|Clone Parent Details {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Parent_Case_Details](#parent_case_details)|
    |Next Node|[Parent_Case_Details](#parent_case_details)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |contentDocuments|String|✅|✅|⬜|<!-- -->|<!-- -->|
    |recordId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    |userId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Upload_Files
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Upload Files?|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Upload_Files_0](#upload_files_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Upload_File_s| Equal To|✅|
    
    
    
    
    ### Child_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Child Case|
    |Assign Record Id To Reference|recordId|
    |Connector|[Upload_Files](#upload_files)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|Parent_Case_Details.AccountId|
    |Category__c|Parent_Case_Details.Category__c|
    |Child_Case_Instructions__c|Child_Case_Instructions|
    |ContactId|Contact.recordId|
    |Description|Description|
    |Implementation__c|Parent_Case_Details.Implementation__c|
    |Origin|Internal|
    |OwnerId|Get_Person.ID__c|
    |ParentId|Parent_Case_Details.Id|
    |Plan__c|Parent_Case_Details.Plan__c|
    |Priority|Medium|
    |Status|New|
    |Sub_Category__c|Parent_Case_Details.Sub_Category__c|
    |Subject|Subject|
    |Type|"Child Case"|
    
    
    
    
    ### Get_Person
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Person__c|
    |Label|Get Person|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Child_Case](#child_case)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Owner.recordId|
    
    
    
    
    ### Parent_Case_Details
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Case|
    |Label|Parent Case Details|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|- Id<br/>- OwnerId<br/>- AccountId<br/>- ContactId<br/>- Plan__c<br/>- Department__c<br/>- Reason<br/>- Type<br/>- Origin<br/>- Status<br/>- Date_Requested__c<br/>- Estimated_Due_Date__c<br/>- Last_Activity_Date__c<br/>- Priority<br/>- IsEscalated<br/>- ParentId<br/>- Implementation__c<br/>- Subject<br/>- Description<br/>- Case_Next_Steps__c<br/>- Child_Case_Instructions__c<br/>- Case_notes_new__c<br/>- Team_Member__c<br/>- Category__c<br/>- Sub_Category__c<br/>|
    |Store Output Automatically|✅|
    |Connector|[Create_Child_Case](#create_child_case)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Create_Child_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|Create Child Case|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Show Footer|✅|
    |Show Header|✅|
    |Connector|[Get_Person](#get_person)|
    
    
    #### Owner
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Extension Name|flowruntime:lookup|
    |Field Type| Component Instance|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Store Output Automatically|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Field Api Name (input)|Person__c|
    |Label (input)|New Case Owner|
    |Object Api Name (input)|Case|
    |Required (input)|✅|
    
    
    
    
    #### Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Extension Name|flowruntime:lookup|
    |Field Type| Component Instance|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Store Output Automatically|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Field Api Name (input)|ContactId|
    |Label (input)|Contact|
    |Object Api Name (input)|Case|
    
    
    
    
    #### Subject
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Default Value|Parent_Case_Details.Subject|
    |Field Text|Subject|
    |Field Type| Input Field|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Description
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Default Value|{!Parent_Case_Details.Description}|
    |Field Text|Description|
    |Field Type| Large Text Area|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Child_Case_Instructions
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Default Value|{!Parent_Case_Details.Child_Case_Instructions__c}|
    |Field Text|Child Case Instructions|
    |Field Type| Large Text Area|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Upload_File_s
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|Boolean|
    |Field Text|Upload File(s)|
    |Field Type| Input Field|
    |Help Text|<p>Check this box if you'd like to upload files to the newly created child case.</p>|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    ### Upload_Files_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|Upload Files|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Show Footer|✅|
    |Show Header|✅|
    
    
    #### Attachments_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Extension Name|forceContent:fileUpload|
    |Field Type| Component Instance|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Store Output Automatically|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Label (input)|Upload File(s)|
    |Multiple (input)|✅|
    |Content Doc Ids (input)|contentDocuments|
    |Accept (input)|.jpg, .png, .txt, .pdf, .xml, .doc, .csv, .docx, .xlsx|
    |Record Id (input)|recordId|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

