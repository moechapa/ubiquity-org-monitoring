# Case_Split history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Case_Split-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Screen Flow</b>"]):::startClass
    click START "#general-information" "3443468526"
    
    Clone_Documents("⚙️ <em></em><br/>Clone Documents"):::actionCalls
    click Clone_Documents "#clone_documents" "875430610"
    
    Assign_to_Collection[\"🟰 <em></em><br/>Assign to Collection"/]:::assignments
    click Assign_to_Collection "#assign_to_collection" "4004055385"
    
    Assign_to_Delete_Collection[\"🟰 <em></em><br/>Assign to Delete Collection"/]:::assignments
    click Assign_to_Delete_Collection "#assign_to_delete_collection" "116612453"
    
    Update_Parent[\"🟰 <em></em><br/>Update Parent"/]:::assignments
    click Update_Parent "#update_parent" "4152395"
    
    Wipe_HTML[\"🟰 <em></em><br/>Wipe HTML"/]:::assignments
    click Wipe_HTML "#wipe_html" "4024711969"
    
    Email_Selected{"🔀 <em></em><br/>Email Selected?"}:::decisions
    click Email_Selected "#email_selected" "2387812131"
    
    Emails_Available{"🔀 <em></em><br/>Emails Available?"}:::decisions
    click Emails_Available "#emails_available" "2786043940"
    
    Selected2{"🔀 <em></em><br/>Email Selected?"}:::decisions
    click Selected2 "#selected2" "3728443801"
    
    Too_Many_HTML_Characters{"🔀 <em></em><br/>Too Many HTML Characters?"}:::decisions
    click Too_Many_HTML_Characters "#too_many_html_characters" "2830074656"
    
    Email_Loop{{"🔁 <em></em><br/>Email Loop"}}:::loops
    click Email_Loop "#email_loop" "1529240979"
    
    Loop_Through_To_Delete{{"🔁 <em></em><br/>Loop Through To Delete"}}:::loops
    click Loop_Through_To_Delete "#loop_through_to_delete" "3914295082"
    
    Clone_Selected_Emails[("➕ <em></em><br/>Clone Selected Emails")]:::recordCreates
    click Clone_Selected_Emails "#clone_selected_emails" "1538079341"
    
    New_Record[("➕ <em></em><br/>New Record")]:::recordCreates
    click New_Record "#new_record" "1014146731"
    
    Delete_Emails[("🗑️ <em></em><br/>Delete Emails")]:::recordDeletes
    click Delete_Emails "#delete_emails" "3618341597"
    
    EmailstoLink[("🔍 <em></em><br/>Emails to Link")]:::recordLookups
    click EmailstoLink "#emailstolink" "895123837"
    
    Existing_Case[("🔍 <em></em><br/>Existing Case")]:::recordLookups
    click Existing_Case "#existing_case" "1588388911"
    
    Get_Person[("🔍 <em></em><br/>Get Person")]:::recordLookups
    click Get_Person "#get_person" "1999698056"
    
    Case_Split_Completed(["💻 <em></em><br/>Case Split Completed"]):::screens
    click Case_Split_Completed "#case_split_completed" "2933673397"
    
    Split_Case(["💻 <em></em><br/>Split Case"]):::screens
    click Split_Case "#split_case" "223584644"
    
    Clone_Documents --> Loop_Through_To_Delete
    Assign_to_Collection --> Email_Loop
    Assign_to_Delete_Collection --> Loop_Through_To_Delete
    Update_Parent --> Assign_to_Collection
    Wipe_HTML --> Update_Parent
    Email_Selected --> |"Yes"| Too_Many_HTML_Characters
    Email_Selected --> |"Default Outcome"| Email_Loop
    Emails_Available --> |"Emails Available"| Delete_Emails
    Emails_Available --> |"Emails Not Available"| Case_Split_Completed
    Emails_Available --> |"Default Outcome"| END_Emails_Available
    Selected2 --> |"Yes"| Assign_to_Delete_Collection
    Selected2 --> |"Default Outcome"| Loop_Through_To_Delete
    Too_Many_HTML_Characters --> |"Yes"| Wipe_HTML
    Too_Many_HTML_Characters --> |"No"| Update_Parent
    Email_Loop --> |"For Each"|Email_Selected
    Email_Loop ---> |"After Last"|Clone_Selected_Emails
    Loop_Through_To_Delete --> |"For Each"|Selected2
    Loop_Through_To_Delete ---> |"After Last"|Emails_Available
    Clone_Selected_Emails --> Clone_Documents
    New_Record --> EmailstoLink
    Delete_Emails --> Case_Split_Completed
    EmailstoLink --> Email_Loop
    Existing_Case --> Split_Case
    Get_Person --> New_Record
    Case_Split_Completed --> END_Case_Split_Completed
    Split_Case --> Get_Person
    START -->  Existing_Case
    END_Emails_Available(( END )):::endClass
    END_Case_Split_Completed(( END )):::endClass
    
    
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
    |Label|Case | Button | Case Split|
    |Status|Active|
    |Description|Splits selected details and assets of current case into a new case|
    |Interview Label|Case Split {!$Flow.CurrentDateTime}|
    |Run In Mode| System Mode Without Sharing|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Existing_Case](#existing_case)|
    |Next Node|[Existing_Case](#existing_case)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |AssociatedComments|SObject|✅|✅|✅|CaseComment|<!-- -->|
    |AssociatedEmails|SObject|✅|✅|✅|EmailMessage|<!-- -->|
    |CommentLoop|SObject|⬜|✅|✅|CaseComment|<!-- -->|
    |CommentSelection|String|⬜|✅|✅|<!-- -->|<!-- -->|
    |CommentstoLink|SObject|✅|✅|✅|CaseComment|<!-- -->|
    |DeletedComments|SObject|✅|✅|✅|CaseComment|<!-- -->|
    |DeletedEmails|SObject|✅|✅|✅|EmailMessage|<!-- -->|
    |deletiongroup|SObject|✅|✅|✅|ContentDocumentLink|<!-- -->|
    |EmailSelection|String|⬜|✅|✅|<!-- -->|<!-- -->|
    |linkstodelete|SObject|✅|✅|✅|ContentDocumentLink|<!-- -->|
    |LoopVar|SObject|⬜|✅|✅|EmailMessage|<!-- -->|
    |NewCase|SObject|⬜|✅|✅|Case|<!-- -->|
    |NewCaseId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    |ownerId|SObject|⬜|✅|✅|User|<!-- -->|
    |recordId|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |BodyLimit|Boolean|IF(LEN({!LoopVar.HtmlBody}) > 131072, true, false)|<!-- -->|
    |Last30Days|Date|TODAY()-30|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Clone_Documents
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Clone Documents|
    |Action Type|Apex|
    |Action Name|[CloneDocuments](../apex/CloneDocuments.md)|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|CloneDocuments|
    | Ids (input)|NewCaseId|
    |Connector|[Loop_Through_To_Delete](#loop_through_to_delete)|
    
    
    ### Assign_to_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign to Collection|
    |Connector|[Email_Loop](#email_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |AssociatedEmails| Add|LoopVar|
    
    
    
    
    ### Assign_to_Delete_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign to Delete Collection|
    |Connector|[Loop_Through_To_Delete](#loop_through_to_delete)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |DeletedEmails| Add|LoopVar|
    
    
    
    
    ### Update_Parent
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Update Parent|
    |Connector|[Assign_to_Collection](#assign_to_collection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |LoopVar.ParentId| Assign|NewCaseId|
    |LoopVar.HtmlBody| Assign|stringValue: ''<br/>|
    
    
    
    
    ### Wipe_HTML
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Wipe HTML|
    |Connector|[Update_Parent](#update_parent)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |LoopVar.HtmlBody| Assign|stringValue: ''<br/>|
    
    
    
    
    ### Email_Selected
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Email Selected?|
    |Default Connector|[Email_Loop](#email_loop)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Too_Many_HTML_Characters](#too_many_html_characters)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Emails| Contains|LoopVar.Id|
    
    
    
    
    ### Emails_Available
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Emails Available?|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Emails_Available2 (Emails Available)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Delete_Emails](#delete_emails)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|DeletedEmails| Is Null|⬜|
    
    
    
    
    #### Rule Emails_Not_Available (Emails Not Available)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Case_Split_Completed](#case_split_completed)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|DeletedEmails| Is Null|✅|
    
    
    
    
    ### Selected2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Email Selected?|
    |Default Connector|[Loop_Through_To_Delete](#loop_through_to_delete)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes2 (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_to_Delete_Collection](#assign_to_delete_collection)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Emails| Contains|LoopVar.Id|
    
    
    
    
    ### Too_Many_HTML_Characters
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Too Many HTML Characters?|
    |Default Connector|[Update_Parent](#update_parent)|
    |Default Connector Label|No|
    
    
    #### Rule YesTooLarge (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Wipe_HTML](#wipe_html)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|BodyLimit| Equal To|✅|
    
    
    
    
    ### Email_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Email Loop|
    |Assign Next Value To Reference|LoopVar|
    |Collection Reference|[EmailstoLink](#emailstolink)|
    |Iteration Order|Asc|
    |Next Value Connector|[Email_Selected](#email_selected)|
    |No More Values Connector|[Clone_Selected_Emails](#clone_selected_emails)|
    
    
    ### Loop_Through_To_Delete
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Loop Through To Delete|
    |Assign Next Value To Reference|LoopVar|
    |Collection Reference|[EmailstoLink](#emailstolink)|
    |Iteration Order|Asc|
    |Next Value Connector|[Selected2](#selected2)|
    |No More Values Connector|[Emails_Available](#emails_available)|
    
    
    ### Clone_Selected_Emails
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Label|Clone Selected Emails|
    |Input Reference|AssociatedEmails|
    |Connector|[Clone_Documents](#clone_documents)|
    
    
    ### New_Record
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|New Record|
    |Assign Record Id To Reference|NewCaseId|
    |Connector|[EmailstoLink](#emailstolink)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|Existing_Case.AccountId|
    |ContactId|Existing_Case.ContactId|
    |Department__c|Existing_Case.Department__c|
    |Description|Description|
    |Implementation__c|Existing_Case.Implementation__c|
    |Origin|Existing_Case.Origin|
    |OwnerId|Get_Person.ID__c|
    |ParentId|Existing_Case.ParentId|
    |Plan__c|Existing_Case.Plan__c|
    |Priority|Existing_Case.Priority|
    |Reason|Existing_Case.Reason|
    |Splited_From__c|Existing_Case.Id|
    |Status|New|
    |Subject|Subject|
    
    
    
    
    ### Delete_Emails
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Delete|
    |Label|Delete Emails|
    |Input Reference|DeletedEmails|
    |Connector|[Case_Split_Completed](#case_split_completed)|
    
    
    ### EmailstoLink
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|EmailMessage|
    |Label|Emails to Link|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Queried Fields|- Id<br/>- MessageDate<br/>- Incoming<br/>- Status<br/>- Email_Type__c<br/>- Emails__c<br/>- FromAddress<br/>- FromName<br/>- ToAddress<br/>- CcAddress<br/>- BccAddress<br/>- Subject<br/>- HtmlBody<br/>- TextBody<br/>- HasAttachment<br/>- RelatedToId<br/>|
    |Store Output Automatically|✅|
    |Connector|[Email_Loop](#email_loop)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|CreatedDate| Greater Than|Last30Days|
    |2|ParentId| Equal To|Existing_Case.Id|
    
    
    
    
    ### Existing_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Case|
    |Label|Existing Case|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Split_Case](#split_case)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Get_Person
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Person__c|
    |Label|Get Person|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[New_Record](#new_record)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Owner.recordId|
    
    
    
    
    ### Case_Split_Completed
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|Case Split Completed|
    |Allow Back|⬜|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Show Footer|✅|
    |Show Header|✅|
    
    
    #### CaseSplitSuccessful
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p>Case Split Successful!</p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    ### Split_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|Split Case|
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
    
    
    
    
    #### Subject
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Default Value|Existing_Case.Subject|
    |Field Text|Subject|
    |Field Type| Input Field|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Description
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Default Value|{!Existing_Case.Description}|
    |Field Text|Description|
    |Field Type| Large Text Area|
    |Is Required|⬜|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Emails
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|Related_Emails|
    |Field Text|Emails|
    |Field Type| Multi Select Checkboxes|
    |Is Required|⬜|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

