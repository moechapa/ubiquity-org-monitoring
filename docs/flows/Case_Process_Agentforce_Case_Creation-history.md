# Case_Process_Agentforce_Case_Creation history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Case_Process_Agentforce_Case_Creation-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>"]):::startClass
    click START "#general-information" "4091206977"
    
    Assign_Contact_from_the_Loop[\"🟰 <em></em><br/>Assign Contact from the Loop"/]:::assignments
    click Assign_Contact_from_the_Loop "#assign_contact_from_the_loop" "2524597721"
    
    Increment_by_1[\"🟰 <em></em><br/>Increment by 1"/]:::assignments
    click Increment_by_1 "#increment_by_1" "1898103716"
    
    Does_Contact_Exist{"🔀 <em></em><br/>Does Contact Exist"}:::decisions
    click Does_Contact_Exist "#does_contact_exist" "3636784187"
    
    Multiple_Contacts_found{"🔀 <em></em><br/>Multiple Contacts found?"}:::decisions
    click Multiple_Contacts_found "#multiple_contacts_found" "1669029330"
    
    Pre_chat_Contact_Info_Present{"🔀 <em></em><br/>Pre-chat Contact Info Present?"}:::decisions
    click Pre_chat_Contact_Info_Present "#pre_chat_contact_info_present" "1732751592"
    
    Determine_Size_of_contacts{{"🔁 <em></em><br/>Determine Size of contacts"}}:::loops
    click Determine_Size_of_contacts "#determine_size_of_contacts" "3607105894"
    
    Loop_Contacts{{"🔁 <em></em><br/>Loop Contacts"}}:::loops
    click Loop_Contacts "#loop_contacts" "3544966871"
    
    Create_Case[("➕ <em></em><br/>Create Case")]:::recordCreates
    click Create_Case "#create_case" "2583283670"
    
    Create_Case_1_Contact[("➕ <em></em><br/>Create Case Single Contact")]:::recordCreates
    click Create_Case_1_Contact "#create_case_1_contact" "1593132371"
    
    Create_Case_with_no_Contact_Record[("➕ <em></em><br/>Create Case with no Contact Record")]:::recordCreates
    click Create_Case_with_no_Contact_Record "#create_case_with_no_contact_record" "634106231"
    
    Create_Case_with_no_PreChat_Info[("➕ <em></em><br/>Create Case with no PreChat Info")]:::recordCreates
    click Create_Case_with_no_PreChat_Info "#create_case_with_no_prechat_info" "3322591332"
    
    Find_Contact_with_Prechat_Info[("🔍 <em></em><br/>Find Contact with Prechat Info")]:::recordLookups
    click Find_Contact_with_Prechat_Info "#find_contact_with_prechat_info" "1239708351"
    
    Get_Case_no_Contact[("🔍 <em></em><br/>Get Case")]:::recordLookups
    click Get_Case_no_Contact "#get_case_no_contact" "3776736192"
    
    Get_Case_No_Prechat[("🔍 <em></em><br/>Get Case")]:::recordLookups
    click Get_Case_No_Prechat "#get_case_no_prechat" "2252829443"
    
    Get_Case_Record[("🔍 <em></em><br/>Get Case Record")]:::recordLookups
    click Get_Case_Record "#get_case_record" "2557961771"
    
    Get_Case_Single_Contact[("🔍 <em></em><br/>Get Case")]:::recordLookups
    click Get_Case_Single_Contact "#get_case_single_contact" "2327092544"
    
    Get_Contact[("🔍 <em></em><br/>Get Contact")]:::recordLookups
    click Get_Contact "#get_contact" "1207995096"
    
    Assign_Contact_from_the_Loop --> Loop_Contacts
    Increment_by_1 --> Determine_Size_of_contacts
    Does_Contact_Exist --> |"Yes"| Create_Case
    Does_Contact_Exist --> |"Default Outcome"| Pre_chat_Contact_Info_Present
    Multiple_Contacts_found --> |"Multiple"| Create_Case_with_no_Contact_Record
    Multiple_Contacts_found --> |"Only 1"| Loop_Contacts
    Multiple_Contacts_found --> |"None"| Create_Case_with_no_Contact_Record
    Pre_chat_Contact_Info_Present --> |"Present"| Find_Contact_with_Prechat_Info
    Pre_chat_Contact_Info_Present --> |"Default Outcome"| Create_Case_with_no_PreChat_Info
    Determine_Size_of_contacts --> |"For Each"|Increment_by_1
    Determine_Size_of_contacts ---> |"After Last"|Multiple_Contacts_found
    Loop_Contacts --> |"For Each"|Assign_Contact_from_the_Loop
    Loop_Contacts ---> |"After Last"|Create_Case_1_Contact
    Create_Case --> Get_Case_Record
    Create_Case_1_Contact --> Get_Case_Single_Contact
    Create_Case_with_no_Contact_Record --> Get_Case_no_Contact
    Create_Case_with_no_PreChat_Info --> Get_Case_No_Prechat
    Find_Contact_with_Prechat_Info --> Determine_Size_of_contacts
    Get_Case_no_Contact --> END_Get_Case_no_Contact
    Get_Case_No_Prechat --> END_Get_Case_No_Prechat
    Get_Case_Record --> END_Get_Case_Record
    Get_Case_Single_Contact --> END_Get_Case_Single_Contact
    Get_Contact --> Does_Contact_Exist
    START -->  Get_Contact
    END_Get_Case_no_Contact(( END )):::endClass
    END_Get_Case_No_Prechat(( END )):::endClass
    END_Get_Case_Record(( END )):::endClass
    END_Get_Case_Single_Contact(( END )):::endClass
    
    
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
    |Label|Case | Process | Agentforce Case Creation|
    |Status|Obsolete|
    |Description|Adding additional logic for single contact found from prechat values|
    |Environments|Default|
    |Interview Label|Case | {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Contact](#get_contact)|
    |Next Node|[Get_Contact](#get_contact)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |caseDescription|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |caseRecord|SObject|⬜|⬜|✅|Case|<!-- -->|
    |caseSubject|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |contactEmail|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |contactRecord|SObject|⬜|✅|⬜|Contact|<!-- -->|
    |contactRecordCount|Number|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |messagingSessionRecordId|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |prechatEmail|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |prechatFirstName|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |prechatLastName|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |RecordTypeId|String|IF({!Get_Contact.RecordType.Name} = 'Servicing',{!Get_Contact.RecordTypeId},'')|<!-- -->|
    
    
    ## Text Templates
    
    |Name|Text|Description|
    |:-- |:-- |:--  |
    |caseNotes|A customer reached out via web chat and opted in to create a case. The system wasn't able to identify this contact in Salesforce. Here is the info we have on this customer:<br/>First Name: {!prechatFirstName} <br/>Last Name:  {!prechatLastName}<br/>Email:  {!prechatEmail}|<!-- -->|
    |caseNotesNoPrechatInfo|A customer reached out via web chat and opted in to create a case. The system wasn't able to identify this contact in Salesforce. Here is the info we have on this customer:<br/>Email: {!contactEmail}|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Assign_Contact_from_the_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Contact from the Loop|
    |Connector|[Loop_Contacts](#loop_contacts)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |contactRecord| Assign|[Loop_Contacts](#loop_contacts)|
    
    
    
    
    ### Increment_by_1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Increment by 1|
    |Connector|[Determine_Size_of_contacts](#determine_size_of_contacts)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |contactRecordCount| Add|1|
    
    
    
    
    ### Does_Contact_Exist
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Does Contact Exist|
    |Default Connector|[Pre_chat_Contact_Info_Present](#pre_chat_contact_info_present)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule ContactExist (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Create_Case](#create_case)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Contact.Id| Is Null|⬜|
    
    
    
    
    ### Multiple_Contacts_found
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Multiple Contacts found?|
    |Default Connector|isGoTo: true<br/>targetReference: Create_Case_with_no_Contact_Record<br/>|
    |Default Connector Label|None|
    
    
    #### Rule Multiple (Multiple)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Create_Case_with_no_Contact_Record](#create_case_with_no_contact_record)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|contactRecordCount| Greater Than|1|
    
    
    
    
    #### Rule Only_1 (Only 1)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Loop_Contacts](#loop_contacts)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|contactRecordCount| Equal To|1|
    
    
    
    
    ### Pre_chat_Contact_Info_Present
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Pre-chat Contact Info Present?|
    |Default Connector|[Create_Case_with_no_PreChat_Info](#create_case_with_no_prechat_info)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Present (Present)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Find_Contact_with_Prechat_Info](#find_contact_with_prechat_info)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|prechatFirstName| Is Blank|⬜|
    |2|prechatLastName| Is Blank|⬜|
    |3|prechatEmail| Is Blank|⬜|
    
    
    
    
    ### Determine_Size_of_contacts
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Determine Size of contacts|
    |Collection Reference|[Find_Contact_with_Prechat_Info](#find_contact_with_prechat_info)|
    |Iteration Order|Asc|
    |Next Value Connector|[Increment_by_1](#increment_by_1)|
    |No More Values Connector|[Multiple_Contacts_found](#multiple_contacts_found)|
    
    
    ### Loop_Contacts
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Loop Contacts|
    |Collection Reference|[Find_Contact_with_Prechat_Info](#find_contact_with_prechat_info)|
    |Iteration Order|Asc|
    |Next Value Connector|[Assign_Contact_from_the_Loop](#assign_contact_from_the_loop)|
    |No More Values Connector|[Create_Case_1_Contact](#create_case_1_contact)|
    
    
    ### Create_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Create Case|
    |Store Output Automatically|✅|
    |Connector|[Get_Case_Record](#get_case_record)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|Get_Contact.AccountId|
    |ContactId|Get_Contact.Id|
    |Department__c|Servicing|
    |Description|caseDescription|
    |Origin|Chat|
    |OwnerId|00GHo000002SIjQ|
    |Priority|Medium|
    |RecordTypeId|01237000000AZr4AAG|
    |Status|New|
    |Subject|caseSubject|
    
    
    
    
    ### Create_Case_1_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Create Case Single Contact|
    |Store Output Automatically|✅|
    |Connector|[Get_Case_Single_Contact](#get_case_single_contact)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|contactRecord.AccountId|
    |ContactId|contactRecord.Id|
    |Department__c|Servicing|
    |Description|caseDescription|
    |Origin|Chat|
    |OwnerId|00GHo000002SIjQ|
    |Priority|Medium|
    |RecordTypeId|01237000000AZr4AAG|
    |Status|New|
    |Subject|caseSubject|
    
    
    
    
    ### Create_Case_with_no_Contact_Record
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Create Case with no Contact Record|
    |Store Output Automatically|✅|
    |Connector|[Get_Case_no_Contact](#get_case_no_contact)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Case_notes_new__c|caseNotes|
    |Department__c|Servicing|
    |Description|caseDescription|
    |Origin|Chat|
    |OwnerId|00GHo000002SIjQ|
    |Priority|Medium|
    |RecordTypeId|01237000000AZr4AAG|
    |Status|New|
    |Subject|caseSubject|
    
    
    
    
    ### Create_Case_with_no_PreChat_Info
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Create Case with no PreChat Info|
    |Store Output Automatically|✅|
    |Connector|[Get_Case_No_Prechat](#get_case_no_prechat)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Case_notes_new__c|caseNotesNoPrechatInfo|
    |Department__c|Servicing|
    |Description|caseDescription|
    |Origin|Chat|
    |OwnerId|00GHo000002SIjQ|
    |Priority|Medium|
    |RecordTypeId|01237000000AZr4AAG|
    |Status|New|
    |Subject|caseSubject|
    
    
    
    
    ### Find_Contact_with_Prechat_Info
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Find Contact with Prechat Info|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Store Output Automatically|✅|
    |Connector|[Determine_Size_of_contacts](#determine_size_of_contacts)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|FirstName| Equal To|prechatFirstName|
    |2|LastName| Equal To|prechatLastName|
    
    
    
    
    ### Get_Case_no_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Case|
    |Label|Get Case|
    |Assign Null Values If No Records Found|⬜|
    |Output Reference|caseRecord|
    |Queried Fields|- Id<br/>- Subject<br/>- Description<br/>- ContactEmail<br/>- CreatedDate<br/>- Status<br/>- CaseNumber<br/>|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|[Create_Case_with_no_Contact_Record](#create_case_with_no_contact_record)|
    
    
    
    
    ### Get_Case_No_Prechat
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Case|
    |Label|Get Case|
    |Assign Null Values If No Records Found|⬜|
    |Output Reference|caseRecord|
    |Queried Fields|- Id<br/>- Subject<br/>- Description<br/>- ContactEmail<br/>- CreatedDate<br/>- Status<br/>- CaseNumber<br/>|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|[Create_Case_with_no_PreChat_Info](#create_case_with_no_prechat_info)|
    
    
    
    
    ### Get_Case_Record
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Case|
    |Label|Get Case Record|
    |Assign Null Values If No Records Found|⬜|
    |Output Reference|caseRecord|
    |Queried Fields|- Id<br/>- Subject<br/>- Description<br/>- ContactEmail<br/>- CreatedDate<br/>- Status<br/>- CaseNumber<br/>|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|[Create_Case](#create_case)|
    
    
    
    
    ### Get_Case_Single_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Case|
    |Label|Get Case|
    |Assign Null Values If No Records Found|⬜|
    |Output Reference|caseRecord|
    |Queried Fields|- Id<br/>- Subject<br/>- Description<br/>- ContactEmail<br/>- CreatedDate<br/>- Status<br/>- CaseNumber<br/>|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|[Create_Case_1_Contact](#create_case_1_contact)|
    
    
    
    
    ### Get_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Get Contact|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Does_Contact_Exist](#does_contact_exist)|
    
    
    #### Filters (logic: **or**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Email| Equal To|contactEmail|
    |2|Email| Equal To|prechatEmail|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

