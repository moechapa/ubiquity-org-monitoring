# Case_Tab_Marketing_Request history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Case_Tab_Marketing_Request-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Screen Flow</b>"]):::startClass
    click START "#general-information" "848971346"
    
    Send_Marketing_Email("📧 <em></em><br/>Send Marketing Email"):::actionCalls
    click Send_Marketing_Email "#send_marketing_email" "3330479366"
    
    Copy_1_of_Email_List_Required{"🔀 <em></em><br/>Email List Required"}:::decisions
    click Copy_1_of_Email_List_Required "#copy_1_of_email_list_required" "372521926"
    
    Case_for_BI[("➕ <em></em><br/>Case for BI")]:::recordCreates
    click Case_for_BI "#case_for_bi" "2161976295"
    
    Create_Marketing_Case[("➕ <em></em><br/>Create Marketing Case")]:::recordCreates
    click Create_Marketing_Case "#create_marketing_case" "2017415517"
    
    Get_Case[("🔍 <em></em><br/>Get Case")]:::recordLookups
    click Get_Case "#get_case" "1859630324"
    
    Content_Information(["💻 <em></em><br/>Content Information"]):::screens
    click Content_Information "#content_information" "730354423"
    
    Finished(["💻 <em></em><br/>Finished"]):::screens
    click Finished "#finished" "962422157"
    
    Initial_Information(["💻 <em></em><br/>Initial Information"]):::screens
    click Initial_Information "#initial_information" "1780369533"
    
    RequestDetails(["💻 <em></em><br/>RequestDetails"]):::screens
    click RequestDetails "#requestdetails" "1681481409"
    
    Send_Marketing_Email --> Copy_1_of_Email_List_Required
    Copy_1_of_Email_List_Required --> |"List Required"| Case_for_BI
    Copy_1_of_Email_List_Required --> |"No List Required"| END_Copy_1_of_Email_List_Required
    Case_for_BI --> END_Case_for_BI
    Create_Marketing_Case --> Finished
    Get_Case --> Send_Marketing_Email
    Content_Information --> Create_Marketing_Case
    Finished --> Get_Case
    Initial_Information --> RequestDetails
    RequestDetails --> Content_Information
    START -->  Initial_Information
    END_Copy_1_of_Email_List_Required(( END )):::endClass
    END_Case_for_BI(( END )):::endClass
    
    
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
    |Label|Case | Tab | Marketing Request|
    |Status|Obsolete|
    |Description|Updated to run in system context to fix access issues popping up for certain profiles.|
    |Environments|Default|
    |Interview Label|Case | Tab | Marketing Request {!$Flow.CurrentDateTime}|
    |Run In Mode| System Mode With Sharing|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Initial_Information](#initial_information)|
    |Next Node|[Initial_Information](#initial_information)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |parentId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |BICaseSubject|String|"Marketing List Request - Preferred Completion Date:  " + TEXT({!Target_Completion_Date})|<!-- -->|
    |CurrentUser|String|{!$User.FirstName} + " " + {!$User.LastName}|<!-- -->|
    |PriorityDefault|Date|IF({!Priority} = "Normal (SLA - 10 Business Days)", (TODAY() + 10), <br/>IF({!Priority} = "Critical/Urgent (SLA - Same Business Day)", TODAY(), <br/>IF({!Priority} = "High (SLA - 3 Business Days)", (TODAY() + 3), (TODAY() + 15))))|<!-- -->|
    |RequestDescripton|String|"Requestor: " + {!Requestor} + BR() +<br/>"Department: " +  {!Department} + BR() +<br/>"Today's Date: " + TEXT({!Today_s_Date}) + BR() +<br/>"Priority: " + {!Priority} + BR() +<br/>"Request Type: " + IF({!Marketing_Request_Type} = "Other", {!Please_Specify}, {!Marketing_Request_Type}) + BR() +<br/>"Preferred Completion Date: " + TEXT({!Target_Completion_Date}) + BR() +BR()+<br/>"Title of Project: " + {!Title_of_Project_File_Name}  + BR() +<br/>"New Project or Revision: " + {!Is_This_a_New_Project_or_a_Revision_Update_of_an_Existing_Asset} + BR() +<br/>"Requires Additional Collateral: " +{!Will_the_Content_in_this_Project_Require_Any_Existing_Collateral_to_be_Updated}+ BR()+ <br/>IF({!Will_the_Content_in_this_Project_Require_Any_Existing_Collateral_to_be_Updated}= "Yes", {!If_Yes_Please_Provide_Link_s_or_Upload_the_Collateral_Content_that_will_Require}, NULL) +BR()+BR()+<br/>"Target Audience: " + {!Who_is_the_Target_Audience} + BR() +<br/>"Anyone to Exclude: " + {!Are_There_Any_Specific_Audiences_that_should_be_Excluded_as_Recipients} +BR()+<br/>IF({!Are_There_Any_Specific_Audiences_that_should_be_Excluded_as_Recipients}= "Yes", "Please Exclude: ", NULL) +IF({!Principal1} = TRUE, "Principal", Null) +" " +IF({!Sallus1} = TRUE, "Sallus", NULL) +" "+ IF({!JP_Morgan1}=TRUE, "JP Morgan", NULL)+" " + IF({!Schwab1}=TRUE, "Schwab", NULL)+" " + IF({!RewardJet1}=TRUE, "RewardJet", NULL)+" " + IF({!Other1}=TRUE, {!Please_Specify_Audience_to_Exclude}, NULL)+BR()+BR()+<br/>"Co-Branding with Partner(s)?: " + {!Does_this_Project_Need_Co_Branding_with_a_Partner}+BR()+<br/>IF({!Does_this_Project_Need_Co_Branding_with_a_Partner}= "Yes", "Co-Brand With:", Null)+" "+IF({!Principal2} = TRUE, "Principal/Simply Retirement", Null) +" " +IF({!Sallus2} = TRUE, "Sallus", NULL) +" "+ IF({!Sallus_NFP2}=TRUE, "Sallus/NFP", NULL)+" " + IF({!Prospective_Partner_s2}=TRUE || {!Other2}=TRUE, {!If_Prospective_Partner_s_or_Other_Please_Specify}, NULL)+BR()+BR()+<br/>"Goal/Desired Outcome: " + {!What_is_the_Goal_Desired_Outcome_of_this_Project}+BR()+<br/>"Most Important Key Points/Ideas to Convey: " + {!sBriefly_What_are_the_Most_Important_Key_Point_s_or_Idea_s_You_Want_to_Convey}+BR()+<br/>"Does the Recipient of this Material Need to Perform a Task that Requires Instruction?: " + {!Are_You_Asking_the_Recipient_of_this_Material_to_Perform_a_Task_that_Requires_In}+ " "+IF({!Are_You_Asking_the_Recipient_of_this_Material_to_Perform_a_Task_that_Requires_In}= "Yes", {!Please_Provide_a_SharePoint_Document_Link_Containing_Instructions_and_any_Releva}, NULL)+ BR()+BR()+<br/>"What Phone, Email, and URL(s) Should be Used in the Project?: " + {!What_Phone_Email_and_URL_s_Should_be_Used_in_the_Project}+BR()+<br/>"Do You Know Which Box Folder You Want this Document Saved In?: " + {!Do_You_Know_Which_Folder_You_Want_this_Document_Saved_in_Box}+ " "+ IF({!Do_You_Know_Which_Folder_You_Want_this_Document_Saved_in_Box}= "Yes", {!Please_Enter_Box_Folder_URL}, Null)+BR()+BR()+<br/>"Notes: " +{!Notes}|<!-- -->|
    |Subject|String|{!Title_of_Project_File_Name}|<!-- -->|
    |Today|Date|TODAY()|<!-- -->|
    |UserDepartment|String|{!$User.Department}|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Send_Marketing_Email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send Marketing Email|
    |Action Type|Email Alert|
    |Action Name|Case.New_Marketing_Request|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Case.New_Marketing_Request|
    | SObject Row Id (input)|Get_Case.Id|
    |Connector|[Copy_1_of_Email_List_Required](#copy_1_of_email_list_required)|
    
    
    ### Copy_1_of_Email_List_Required
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Email List Required|
    |Default Connector Label|No List Required|
    
    
    #### Rule List_Required (List Required)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Case_for_BI](#case_for_bi)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Marketing_Request_Type| Equal To|MarketingEmailCampaign|
    |2|Marketing_Request_Type| Equal To|Webinar|
    |3|Marketing_Request_Type| Equal To|Newsletter|
    
    
    
    
    ### Case_for_BI
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Case for BI|
    |Store Output Automatically|✅|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|0013700000JH68lAAD|
    |Department__c|Business Intelligence|
    |Description|RequestDescripton|
    |Origin|Flow-Based Submission|
    |OwnerId|00G37000000ztuWEAQ|
    |ParentId|parentId|
    |Plan__c|a2o1G000000oQW5QAM|
    |Reason|Email List|
    |RecordTypeId|01237000000Ez81AAC|
    |Request_Level__c|1 - Existing Process Management|
    |Status|New|
    |Subject|BICaseSubject|
    |SuppliedEmail|$User.Email|
    
    
    
    
    ### Create_Marketing_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Create Marketing Case|
    |Assign Record Id To Reference|parentId|
    |Connector|[Finished](#finished)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|0013700000JH68lAAD|
    |Alert_Email__c|marketing@myubiquity.com|
    |Date_Requested__c|Today|
    |Department__c|Marketing|
    |Description|RequestDescripton|
    |Origin|Flow-Based Submission|
    |OwnerId|00500000006vmbu|
    |Plan__c|a2o1G000000oQW5QAM|
    |Preferred_Completion_Date__c|Target_Completion_Date|
    |RecordTypeId|0121G000000RlPVQA0|
    |Status|New|
    |Subject|Subject|
    |SuppliedEmail|$User.Email|
    
    
    
    
    ### Get_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Case|
    |Label|Get Case|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Send_Marketing_Email](#send_marketing_email)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|parentId|
    
    
    
    
    ### Content_Information
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|Content Information|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Next Or Finish Button Label|Submit|
    |Show Footer|✅|
    |Show Header|⬜|
    |Connector|[Create_Marketing_Case](#create_marketing_case)|
    
    
    #### Logo3
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Extension Name|flowruntime:image|
    |Field Type| Component Instance|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Store Output Automatically|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Image Name (input)|ubqtLogo|
    |Horizontal Alignment (input)|center|
    
    
    
    
    #### ContentInfoScreen
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p style="text-align: center;"><strong style="font-size: 20px;">Content Information</strong></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### What_is_the_Goal_Desired_Outcome_of_this_Project
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Field Text|What is the Goal/Desired Outcome of this Project|
    |Field Type| Input Field|
    |Help Text|<p>What is the objective or what are we trying to accomplish? E.g., share information, educate, alert about deadline, reminder to take action, etc.</p>|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### sBriefly_What_are_the_Most_Important_Key_Point_s_or_Idea_s_You_Want_to_Convey
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|Briefly, What are the Most Important Key Point(s) or Idea(s) You Want to Convey?|
    |Field Type| Large Text Area|
    |Help Text|<p><span style="color: rgb(68, 68, 68); font-size: 12px;">E.g., why auto-enrollment should be included in your plan, you'll save more over 30 years because of flat fees, fill out this form so you don't get in trouble with the IRS, etc.</span></p>|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Are_You_Asking_the_Recipient_of_this_Material_to_Perform_a_Task_that_Requires_In
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|- 'Yes'<br/>- 'No'<br/>|
    |Field Text|Are You Asking the Recipient of this Material to Perform a Task that Requires Instructions?|
    |Field Type| Dropdown Box|
    |Help Text|<p><span style="color: rgb(68, 68, 68); font-size: 12px; background-color: rgb(255, 255, 255);"> E.g. instructions to request a distribution, how to submit payroll, etc.</span></p>|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Please_Provide_a_SharePoint_Document_Link_Containing_Instructions_and_any_Releva
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Field Text|Please Provide a SharePoint Document Link Containing Instructions and any Relevant Screenshots:|
    |Field Type| Input Field|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: >-<br/>&nbsp;&nbsp;&nbsp;&nbsp;Are_You_Asking_the_Recipient_of_this_Material_to_Perform_a_Task_that_Requires_In<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;elementReference: 'Yes'<br/>|
    
    
    
    
    #### What_Phone_Email_and_URL_s_Should_be_Used_in_the_Project
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|What Phone, Email, and URL(s) Should be Used in the Project?|
    |Field Type| Large Text Area|
    |Help Text|<p>If necessary, add the URL(s) and/or contact information displayed for the receipient, e.g., your team's contact information, login webpage, hyperlink to additional piece of collateral, etc. If you don't know, enter TBD.</p>|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Do_You_Know_Which_Folder_You_Want_this_Document_Saved_in_Box
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|- 'Yes'<br/>- 'No'<br/>|
    |Field Text|Do You Know Which Folder You Want this Document Saved in Box?|
    |Field Type| Dropdown Box|
    |Help Text|<p><span style="color: rgb(68, 68, 68); font-size: 12px; background-color: rgb(255, 255, 255);">E.g., UB1 - Sales Collateral, UB2 - Client + Saver Success, etc.</span></p>|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Please_Enter_Box_Folder_URL
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Field Text|Please Enter Box Folder URL:|
    |Field Type| Input Field|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Do_You_Know_Which_Folder_You_Want_this_Document_Saved_in_Box<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;elementReference: 'Yes'<br/>|
    
    
    
    
    #### Notes
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|Notes|
    |Field Type| Large Text Area|
    |Help Text|<p>Any additional context, requirements, or directions for your request.</p>|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    ### Finished
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|[Finished](#finished)|
    |Allow Back|⬜|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Next Or Finish Button Label|Done|
    |Show Footer|✅|
    |Show Header|⬜|
    |Connector|[Get_Case](#get_case)|
    
    
    #### Confirmation
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p style="text-align: center;"><strong style="color: rgb(21, 45, 202); font-size: 16px;">Thank you, your request has been created. Please press the "Done" button to exit this screen.</strong></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### File
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Extension Name|forceContent:fileUpload|
    |Field Type| Component Instance|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Store Output Automatically|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Label (input)|If there are any files you'd like to include, upload them here.|
    |Record Id (input)|parentId|
    |Multiple (input)|✅|
    
    
    
    
    ### Initial_Information
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|Initial Information|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Show Footer|✅|
    |Show Header|⬜|
    |Connector|[RequestDetails](#requestdetails)|
    
    
    #### t
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Extension Name|flowruntime:image|
    |Field Type| Component Instance|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Store Output Automatically|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Image Name (input)|ubqtLogo|
    |Horizontal Alignment (input)|center|
    
    
    
    
    #### InitialInfo
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p style="text-align: center;"><strong style="font-size: 20px;">Initial Information</strong></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Priority
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|- Critical<br/>- High<br/>- Normal<br/>- Minor<br/>|
    |Default Selected Choice Reference|Normal|
    |Field Text|Priority|
    |Field Type| Dropdown Box|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Today_s_Date
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|Date|
    |Default Value|Today|
    |Field Text|Today's Date|
    |Field Type| Input Field|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Requestor
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Field Text|Your Name|
    |Field Type| Input Field|
    |Help Text|<p>Your Name</p>|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Department
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Default Value|UserDepartment|
    |Field Text|Department|
    |Field Type| Input Field|
    |Help Text|<p>Your Department</p>|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Marketing_Request_Type
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|- Ads<br/>- Blog<br/>- Collateral<br/>- EmailTemplate<br/>- Form<br/>- MarketingEmailCampaign<br/>- Newsletter<br/>- PlatformBanners<br/>- Presentation<br/>- SocialMedia<br/>- Video<br/>- Webinar<br/>- Whitepaper<br/>- landingPage<br/>- Other<br/>|
    |Field Text|Marketing Request Type|
    |Field Type| Dropdown Box|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Please_Specify
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Field Text|Please Specify:|
    |Field Type| Input Field|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Marketing_Request_Type<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;elementReference: Other<br/>|
    
    
    
    
    #### Target_Completion_Date
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|Date|
    |Field Text|Preferred Completion Date|
    |Field Type| Input Field|
    |Help Text|<p><span style="font-size: 12px;">Desired Date for Finalized Product</span></p>|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Validation Rule|errorMessage: <p>Please enter a valid date</p><br/>formulaExpression: '{!Target_Completion_Date}>=TODAY()'<br/>|
    
    
    
    
    ### RequestDetails
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|[RequestDetails](#requestdetails)|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Show Footer|✅|
    |Show Header|⬜|
    |Connector|[Content_Information](#content_information)|
    
    
    #### Logo2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Extension Name|flowruntime:image|
    |Field Type| Component Instance|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Store Output Automatically|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Image Name (input)|ubqtLogo|
    |Horizontal Alignment (input)|center|
    
    
    
    
    #### RequestDetailScreen
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p style="text-align: center;"><strong style="font-size: 20px; color: rgb(0, 0, 0);">Request Details</strong></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Title_of_Project_File_Name
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Field Text|Title of Project/File Name|
    |Field Type| Input Field|
    |Help Text|<p><span style="background-color: rgb(255, 255, 255); font-size: 12px; color: rgb(68, 68, 68);">Enter the title of project or document/file name, etc. Marketing may rename and will provide alternate title for review.</span></p>|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Is_This_a_New_Project_or_a_Revision_Update_of_an_Existing_Asset
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|- New<br/>- Revision<br/>|
    |Field Text|Is This a New Project or a Revision/Update of an Existing Asset?|
    |Field Type| Dropdown Box|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Will_the_Content_in_this_Project_Require_Any_Existing_Collateral_to_be_Updated
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|- 'Yes'<br/>- 'No'<br/>|
    |Field Text|Will the Content in this Project Require Any Existing Collateral to be Updated?|
    |Field Type| Dropdown Box|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### If_Yes_Please_Provide_Link_s_or_Upload_the_Collateral_Content_that_will_Require
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Field Text|If Yes, Please Provide Link(s) for Collateral/Content that will Require Updates:|
    |Field Type| Input Field|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: >-<br/>&nbsp;&nbsp;&nbsp;&nbsp;Will_the_Content_in_this_Project_Require_Any_Existing_Collateral_to_be_Updated<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;elementReference: 'Yes'<br/>|
    
    
    
    
    #### Who_is_the_Target_Audience
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Field Text|Who is the Target Audience|
    |Field Type| Input Field|
    |Help Text|<p><span style="color: rgb(68, 68, 68); font-size: 12px; background-color: rgb(255, 255, 255);">E.g., all eligible but not enrolled Savers who do not have a termination date, small business owners in California, financial advisors who have a plan in Implementations, etc.</span></p>|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Are_There_Any_Specific_Audiences_that_should_be_Excluded_as_Recipients
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|- 'Yes'<br/>- 'No'<br/>|
    |Field Text|Are There Any Specific Audiences that should be Excluded as Recipients|
    |Field Type| Dropdown Box|
    |Help Text|<p><span style="color: rgb(68, 68, 68); font-size: 12px; background-color: rgb(255, 255, 255);">E.g. Ubiquity partners, clients with advisors should not receive emails advertising investment advisory services, terminated employees with a balance , etc.</span></p>|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### AudiencesToExclude
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p>Which Audiences Should Be Excluded?</p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Are_There_Any_Specific_Audiences_that_should_be_Excluded_as_Recipients<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;elementReference: 'Yes'<br/>|
    
    
    
    
    #### Principal1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|Boolean|
    |Field Text|Principal|
    |Field Type| Input Field|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Are_There_Any_Specific_Audiences_that_should_be_Excluded_as_Recipients<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;elementReference: 'Yes'<br/>|
    
    
    
    
    #### Sallus1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|Boolean|
    |Field Text|Sallus|
    |Field Type| Input Field|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Are_There_Any_Specific_Audiences_that_should_be_Excluded_as_Recipients<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;elementReference: 'Yes'<br/>|
    
    
    
    
    #### JP_Morgan1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|Boolean|
    |Field Text|JP Morgan|
    |Field Type| Input Field|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Are_There_Any_Specific_Audiences_that_should_be_Excluded_as_Recipients<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;elementReference: 'Yes'<br/>|
    
    
    
    
    #### Schwab1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|Boolean|
    |Field Text|Schwab|
    |Field Type| Input Field|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Are_There_Any_Specific_Audiences_that_should_be_Excluded_as_Recipients<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;elementReference: 'Yes'<br/>|
    
    
    
    
    #### RewardJet1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|Boolean|
    |Field Text|RewardJet|
    |Field Type| Input Field|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Are_There_Any_Specific_Audiences_that_should_be_Excluded_as_Recipients<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;elementReference: 'Yes'<br/>|
    
    
    
    
    #### Other1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|Boolean|
    |Field Text|Other|
    |Field Type| Input Field|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Are_There_Any_Specific_Audiences_that_should_be_Excluded_as_Recipients<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;elementReference: 'Yes'<br/>|
    
    
    
    
    #### Please_Specify_Audience_to_Exclude
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Field Text|Please Specify Audience to Exclude|
    |Field Type| Input Field|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Other1<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;booleanValue: true<br/>|
    
    
    
    
    #### Does_this_Project_Need_Co_Branding_with_a_Partner
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|- 'Yes'<br/>- 'No'<br/>|
    |Field Text|Does this Project Need Co-Branding with a Partner?|
    |Field Type| Dropdown Box|
    |Help Text|<p><span style="color: rgb(68, 68, 68); font-size: 12px; background-color: rgb(255, 255, 255);">If this is being created for a partner, do we need to add their logo in addition to Ubiquity's?</span></p>|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### SpecifyPartnersToCoBrand
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p>Which Partners? (Select All That Apply)</p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Does_this_Project_Need_Co_Branding_with_a_Partner<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;elementReference: 'Yes'<br/>|
    
    
    
    
    #### Principal2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|Boolean|
    |Field Text|Principal/Simply Retirement|
    |Field Type| Input Field|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Does_this_Project_Need_Co_Branding_with_a_Partner<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;elementReference: 'Yes'<br/>|
    
    
    
    
    #### Sallus2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|Boolean|
    |Field Text|Sallus|
    |Field Type| Input Field|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Does_this_Project_Need_Co_Branding_with_a_Partner<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;elementReference: 'Yes'<br/>|
    
    
    
    
    #### Sallus_NFP2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|Boolean|
    |Field Text|Sallus/NFP|
    |Field Type| Input Field|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Does_this_Project_Need_Co_Branding_with_a_Partner<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;elementReference: 'Yes'<br/>|
    
    
    
    
    #### Prospective_Partner_s2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|Boolean|
    |Field Text|Prospective Partner(s)|
    |Field Type| Input Field|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Does_this_Project_Need_Co_Branding_with_a_Partner<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;elementReference: 'Yes'<br/>|
    
    
    
    
    #### Other2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|Boolean|
    |Field Text|Other|
    |Field Type| Input Field|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: Does_this_Project_Need_Co_Branding_with_a_Partner<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;elementReference: 'Yes'<br/>|
    
    
    
    
    #### If_Prospective_Partner_s_or_Other_Please_Specify
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Field Text|If Prospective Partner(s) or Other, Please Specify:|
    |Field Type| Input Field|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|⬜|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: or<br/>conditions:<br/>&nbsp;&nbsp;- leftValueReference: Prospective_Partner_s2<br/>&nbsp;&nbsp;&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;booleanValue: true<br/>&nbsp;&nbsp;- leftValueReference: Other2<br/>&nbsp;&nbsp;&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;booleanValue: true<br/>|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

