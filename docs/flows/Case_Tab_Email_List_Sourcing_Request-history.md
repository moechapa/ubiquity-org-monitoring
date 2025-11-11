# Case_Tab_Email_List_Sourcing_Request history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Case_Tab_Email_List_Sourcing_Request-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Screen Flow</b>"]):::startClass
    click START "#general-information" "851036566"
    
    X2_Weeks[\"🟰 <em></em><br/>2 Weeks"/]:::assignments
    click X2_Weeks "#x2_weeks" "3570426830"
    
    Email_List_Required{"🔀 <em></em><br/>Email List Required"}:::decisions
    click Email_List_Required "#email_list_required" "3838160580"
    
    Create_Child_Case_to_BI[("➕ <em></em><br/>Create Child Case to BI")]:::recordCreates
    click Create_Child_Case_to_BI "#create_child_case_to_bi" "101127526"
    
    Create_Marketing_Case[("➕ <em></em><br/>Create Marketing Case")]:::recordCreates
    click Create_Marketing_Case "#create_marketing_case" "239664417"
    
    Create_Parent_Case_to_Submitter[("➕ <em></em><br/>Create Parent Case to Submitter")]:::recordCreates
    click Create_Parent_Case_to_Submitter "#create_parent_case_to_submitter" "3558868325"
    
    Email_List_Request_Successfully_Submitted(["💻 <em></em><br/>Email List Request Successfully Submitted"]):::screens
    click Email_List_Request_Successfully_Submitted "#email_list_request_successfully_submitted" "2008720965"
    
    Email_List_Sourcing_Request(["💻 <em></em><br/>Email List Sourcing Request"]):::screens
    click Email_List_Sourcing_Request "#email_list_sourcing_request" "75159260"
    
    Email_List_Sourcing_Request_0(["💻 <em></em><br/>Email List Sourcing Request"]):::screens
    click Email_List_Sourcing_Request_0 "#email_list_sourcing_request_0" "1798117352"
    
    Marketing_Request_Required_Info(["💻 <em></em><br/>Marketing Request - Required Info"]):::screens
    click Marketing_Request_Required_Info "#marketing_request_required_info" "2325103459"
    
    Marketing_Request_Submission(["💻 <em></em><br/>Marketing Request Submission"]):::screens
    click Marketing_Request_Submission "#marketing_request_submission" "1636378648"
    
    X2_Weeks --> Marketing_Request_Required_Info
    Email_List_Required --> |"List Required"| Email_List_Sourcing_Request
    Email_List_Required --> |"List Not Required"| Create_Marketing_Case
    Create_Child_Case_to_BI --> Email_List_Sourcing_Request_0
    Create_Marketing_Case --> Email_List_Sourcing_Request_0
    Create_Parent_Case_to_Submitter --> Create_Child_Case_to_BI
    Email_List_Request_Successfully_Submitted --> END_Email_List_Request_Successfully_Submitted
    Email_List_Sourcing_Request --> Create_Parent_Case_to_Submitter
    Email_List_Sourcing_Request_0 --> Email_List_Request_Successfully_Submitted
    Marketing_Request_Required_Info --> Email_List_Required
    Marketing_Request_Submission --> X2_Weeks
    START -->  Marketing_Request_Submission
    END_Email_List_Request_Successfully_Submitted(( END )):::endClass
    
    
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
    |Label|Case | Tab | Marketing Email & List Sourcing Request|
    |Status|Obsolete|
    |Description|Creates a case for Marketing and BI when user submits Email List Sourcing Request|
    |Environments|Default|
    |Interview Label|Case | Tab | {!$Flow.CurrentDateTime}|
    |Run In Mode| System Mode Without Sharing|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Marketing_Request_Submission](#marketing_request_submission)|
    |Next Node|[Marketing_Request_Submission](#marketing_request_submission)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |deploymentDate|Date|⬜|✅|⬜|<!-- -->|<!-- -->|
    |parentId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    |requestType|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |ChildCaseDescription|String|"Please review and approve the following request, and any subsequent prospect list delivered:" + BR() +<br/>BR() +<br/>"Requestor: " + {!Requestor} + BR() +<br/>"Ubiquity Leader: " + TEXT({!UbiquityLeader}) + BR() +<br/>"Additional Stakeholders: " + {!Additional_Stakeholders} + BR() +<br/>"Products Marketed: " + {!List_the_product_s_you_are_marketing_advertising_in_this_campaign} + BR() +<br/>"Campaign Type: " + {!Campaign_Type} + BR() +<br/>"Who gets this?: " + {!Who_gets_this_email} + BR() +<br/>"Who should NOT get this?: " + {!Who_should_NOT_get_this_email} + BR() +<br/>"Include Principal? " + IF({!Principal} = false, "no", "yes") + BR() +<br/>"Include Schwab? " + IF({!Schwab} = false, "no", "yes") + BR() +<br/>"Include RewardJet? " + IF({!RewardJet} = false, "no", "yes") + BR() +<br/>"Include JP Morgan? " + IF({!JP_Morgan} = false, "no", "yes") + BR() +<br/>"Exclude all Partners? " + IF({!Keep_all_Partners_excluded_from_list} = false, "no", "yes") + BR() +<br/>"Additional Notes: " + {!Notes}|<!-- -->|
    |fortnight|Date|TODAY()+14|<!-- -->|
    |MarketingDescription|String|IF({!Link_to_SharePoint_Draft} != null, "Link to SharePoint Draft: " + {!Link_to_SharePoint_Draft}, "") + <br/>BR() +<br/>IF({!Link_to_Follow_Up_Email_Draft}!=null, "Link to Follow-Up Draft: " + {!Link_to_Follow_Up_Email_Draft}, "")|<!-- -->|
    |marketingRequestSubject|String|"Marketing Request - " + {!Marketing_Request_Type} + " - " + TEXT({!deploymentDate})|<!-- -->|
    |parentDescription|String|"Use this case to track your list request. The child case is for BI to prepare the list. Grandchildren cases are for stakeholders to review/approve."|<!-- -->|
    |RequestDescription|String|"Requestor: " + {!Requestor} + BR() +<br/>"Ubiquity Leader: " + TEXT({!UbiquityLeader}) + BR() +<br/>"Additional Stakeholders: " + {!Additional_Stakeholders} + BR() +<br/>"Products Marketed: " + {!List_the_product_s_you_are_marketing_advertising_in_this_campaign} + BR() +<br/>"Campaign Type: " + {!Campaign_Type} + BR() +<br/>"Who gets this?: " + {!Who_gets_this_email} + BR() +<br/>"Who should NOT get this?: " + {!Who_should_NOT_get_this_email} + BR() +<br/>"Include Principal? " + IF({!Principal} = false, "no", "yes") + BR() +<br/>"Include Schwab? " + IF({!Schwab} = false, "no", "yes") + BR() +<br/>"Include RewardJet? " + IF({!RewardJet} = false, "no", "yes") + BR() +<br/>"Include JP Morgan? " + IF({!JP_Morgan} = false, "no", "yes") + BR() +<br/>"Exclude all Partners? " + IF({!Keep_all_Partners_excluded_from_list} = false, "no", "yes") + BR() +<br/>"Additional Notes: " + {!Notes}|<!-- -->|
    |Subject|String|"List Sourcing Request - " + {!Requestor} + " - " + TEXT({!Desired_Send_Date})|<!-- -->|
    |today|Date|TODAY()|<!-- -->|
    |X1Week|Date|TODAY()+7|<!-- -->|
    |X2Weeks|Date|TODAY()+14|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### X2_Weeks
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|2 Weeks|
    |Connector|[Marketing_Request_Required_Info](#marketing_request_required_info)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |deploymentDate| Assign|X2Weeks|
    |requestType| Assign|Marketing_Request_Type|
    
    
    
    
    ### Email_List_Required
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Email List Required|
    |Default Connector|[Create_Marketing_Case](#create_marketing_case)|
    |Default Connector Label|List Not Required|
    
    
    #### Rule List_Required (List Required)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Email_List_Sourcing_Request](#email_list_sourcing_request)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Marketing_Request_Type| Equal To|quarterlyNewsletter|
    |2|Marketing_Request_Type| Equal To|emailCampaignRequest|
    |3|Marketing_Request_Type| Equal To|webinar|
    
    
    
    
    ### Create_Child_Case_to_BI
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Create Child Case to BI|
    |Store Output Automatically|✅|
    |Connector|[Email_List_Sourcing_Request_0](#email_list_sourcing_request_0)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|0013700000JH68lAAD|
    |Case_notes_new__c|RequestDescription|
    |Date_Requested__c|Today_s_Date|
    |EntitlementId|5501G000001ckB1|
    |Estimated_Due_Date__c|Desired_Send_Date|
    |List_Link__c|Link_to_SharePoint_Draft|
    |List_Source__c|List_Source|
    |Origin|Flow-Based Submission|
    |OwnerId|00G37000000ztuW|
    |ParentId|parentId|
    |Plan__c|a2o1G000000oQW5QAM|
    |Reason|Email List|
    |RecordTypeId|01237000000Ez81AAC|
    |Subject|Subject|
    
    
    
    
    ### Create_Marketing_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Create Marketing Case|
    |Store Output Automatically|✅|
    |Connector|[Email_List_Sourcing_Request_0](#email_list_sourcing_request_0)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|0013700000JH68lAAD|
    |Case_notes_new__c|Description_Notes|
    |Date_Requested__c|Today_s_Date|
    |Description|MarketingDescription|
    |EntitlementId|5501G000001ckB1|
    |Estimated_Due_Date__c|deploymentDate|
    |List_Source__c|List_Source|
    |Origin|Flow-Based Submission|
    |OwnerId|00500000006vmbu|
    |Plan__c|a2o1G000000oQW5QAM|
    |RecordTypeId|0121G000000RlPVQA0|
    |Subject|marketingRequestSubject|
    
    
    
    
    ### Create_Parent_Case_to_Submitter
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Create Parent Case to Submitter|
    |Assign Record Id To Reference|parentId|
    |Connector|[Create_Child_Case_to_BI](#create_child_case_to_bi)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|0013700000JH68lAAD|
    |Case_notes_new__c|RequestDescription|
    |Date_Requested__c|Today_s_Date|
    |EntitlementId|5501G000001ckB1|
    |Estimated_Due_Date__c|Desired_Send_Date|
    |List_Source__c|List_Source|
    |Origin|Flow-Based Submission|
    |OwnerId|$User.User_ID__c|
    |Plan__c|a2o1G000000oQW5QAM|
    |Reason|Email List|
    |RecordTypeId|01237000000Ez81AAC|
    |Subject|Subject|
    
    
    
    
    ### Email_List_Request_Successfully_Submitted
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|Email List Request Successfully Submitted|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|✅|
    |Show Footer|✅|
    |Show Header|⬜|
    
    
    #### Success
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p>Your {!requestType} was successfully submitted. Please allow 1 business day for first response regarding this request.</p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    ### Email_List_Sourcing_Request
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|Email List Sourcing Request|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|✅|
    |Show Footer|✅|
    |Show Header|⬜|
    |Connector|[Create_Parent_Case_to_Submitter](#create_parent_case_to_submitter)|
    
    
    #### MailingListDetails
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p><span style="background-color: rgb(255, 255, 255); color: rgb(62, 62, 60);">{!requestType}: Mailing List Details</span></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Requestor
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Field Text|Requestor|
    |Field Type| Input Field|
    |Help Text|<p><span style="background-color: rgb(255, 255, 255); color: rgb(62, 62, 60);">Your Name</span></p>|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Today_s_Date
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|Date|
    |Default Value|today|
    |Field Text|Today's Date|
    |Field Type| Input Field|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Desired_Send_Date
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|Date|
    |Default Value|fortnight|
    |Field Text|Desired Send Date|
    |Field Type| Input Field|
    |Help Text|<p>Please allow 2 weeks for list to be sourced and approved by all stakeholders.</p>|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Does_this_email_market_any_Ubiquity_or_partner_products
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|YN|
    |Field Text|Does this email market any Ubiquity or partner products?|
    |Field Type| Dropdown Box|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### List_the_product_s_you_are_marketing_advertising_in_this_campaign
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Field Text|List the product(s) you are marketing/advertising in this campaign|
    |Field Type| Input Field|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Ubiquity_Leader
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|- None<br/>- UbiquityLeader<br/>|
    |Default Selected Choice Reference|None|
    |Field Text|Ubiquity Leader|
    |Field Type| Dropdown Box|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Campaign_Type
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Field Text|Campaign Type|
    |Field Type| Input Field|
    |Help Text|<p>Welcome Email Series, Standard Promotional Campaign, Education, Seasonal Campaign, Post-Purchase Drip, Connect-Via-Social Campaign, Newsletter, Cart Abandonment Campaign, Re-Engagement Campaign</p>|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Additional_Stakeholders
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Field Text|Additional Stakeholders|
    |Field Type| Input Field|
    |Help Text|<p>Please list any individuals or teams that should be included in the review of the final list.</p>|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Who_gets_this_email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Field Text|Who gets this email?|
    |Field Type| Input Field|
    |Help Text|<p>(Be as specific as possible!) i.e., All Morningstar clients, all advisor prospects</p>|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Who_should_NOT_get_this_email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Field Text|Who should NOT get this email?|
    |Field Type| Input Field|
    |Help Text|<p>&nbsp;i.e., Clients with advisors should not receive emails advertising investment advisory services</p>|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### PartnerCheck
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p>Should any contacts connected to Ubiquity partners receive this email?</p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Principal
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|Boolean|
    |Field Text|Principal|
    |Field Type| Input Field|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### JP_Morgan
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|Boolean|
    |Field Text|JP Morgan|
    |Field Type| Input Field|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Schwab
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|Boolean|
    |Field Text|Schwab|
    |Field Type| Input Field|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### RewardJet
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|Boolean|
    |Field Text|RewardJet|
    |Field Type| Input Field|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Keep_all_Partners_excluded_from_list
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|Boolean|
    |Field Text|Keep all Partners excluded from list|
    |Field Type| Input Field|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### List_Source
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|ListSource|
    |Field Text|List Source|
    |Field Type| Dropdown Box|
    |Help Text|<p>Is there a specific location for the data you are looking for or do you want the list pulled from a specific location?&nbsp;</p>|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Notes
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|Notes|
    |Field Type| Large Text Area|
    |Is Required|⬜|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    ### Email_List_Sourcing_Request_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|Email List Sourcing Request|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|✅|
    |Show Footer|✅|
    |Show Header|⬜|
    |Connector|[Email_List_Request_Successfully_Submitted](#email_list_request_successfully_submitted)|
    
    
    #### PleaseAttach
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p>Please attach any relevant marketing assets that will be used for this request. </p><p>If not applicable, please select <b>Next</b> to complete your request.</p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Email_Content_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Extension Name|forceContent:fileUpload|
    |Field Type| Component Instance|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Store Output Automatically|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Label (input)|Email Content|
    |Multiple (input)|✅|
    |Record Id (input)|[Create_Child_Case_to_BI](#create_child_case_to_bi)|
    
    
    
    
    ### Marketing_Request_Required_Info
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|Marketing Request - Required Info|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|✅|
    |Show Footer|✅|
    |Show Header|⬜|
    |Connector|[Email_List_Required](#email_list_required)|
    
    
    #### RequestTypeScreen2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p>{!requestType}: Details</p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Link_to_SharePoint_Draft
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Field Text|Link to SharePoint Draft|
    |Field Type| Input Field|
    |Is Required|⬜|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Validation Rule|errorMessage: >-<br/>&nbsp;&nbsp;<p><span style=background-color: rgb(255, 255, 255); color: rgb(62, 62,<br/>&nbsp;&nbsp;60);>Must be a valid SharePoint URL.</span></p><br/>formulaExpression: CONTAINS( {!Link_to_SharePoint_Draft}, myubiquity-my.sharepoint.com)<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;- leftValueReference: requestType<br/>&nbsp;&nbsp;&nbsp;&nbsp;operator: NotEqualTo<br/>&nbsp;&nbsp;&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;stringValue: New Presentation<br/>&nbsp;&nbsp;- leftValueReference: requestType<br/>&nbsp;&nbsp;&nbsp;&nbsp;operator: NotEqualTo<br/>&nbsp;&nbsp;&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;stringValue: Video Creation/Edit<br/>|
    
    
    
    
    #### Link_to_Follow_Up_Email_Draft
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Field Text|Link to Follow-Up Email Draft|
    |Field Type| Input Field|
    |Is Required|⬜|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Validation Rule|errorMessage: <p>Must be a valid SharePoint URL.</p><br/>formulaExpression: CONTAINS( {!Link_to_Follow_Up_Email_Draft}, myubiquity-my.sharepoint.com)<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: requestType<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;stringValue: Webinar<br/>|
    
    
    
    
    #### Deployment_Date
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|Date|
    |Default Value|deploymentDate|
    |Field Text|Deployment Date|
    |Field Type| Input Field|
    |Is Required|⬜|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Number_of_Emails_in_Campaign
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|Number|
    |Field Text|Number of Emails in Campaign|
    |Field Type| Input Field|
    |Is Required|⬜|
    |Scale|0|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: requestType<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;stringValue: Email Campaign Request<br/>|
    
    
    
    
    #### Description_Notes
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|Description/Notes|
    |Field Type| Large Text Area|
    |Is Required|⬜|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    ### Marketing_Request_Submission
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|Marketing Request Submission|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|✅|
    |Show Footer|✅|
    |Show Header|⬜|
    |Connector|[X2_Weeks](#x2_weeks)|
    
    
    #### MarketingEmailListSourcingRequest
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p>Marketing Email &amp; List Sourcing Request</p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Marketing_Request_Type
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|- None<br/>- quarterlyNewsletter<br/>- emailCampaignRequest<br/>- webinar<br/>|
    |Field Text|Marketing Request Type|
    |Field Type| Dropdown Box|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

