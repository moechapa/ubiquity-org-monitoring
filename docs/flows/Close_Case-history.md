# Close_Case history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Close_Case-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Screen Flow</b>"]):::startClass
    click START "#general-information" "3854424457"
    
    Child_Cases_Resolved{"🔀 <em></em><br/>Child Cases Resolved"}:::decisions
    click Child_Cases_Resolved "#child_cases_resolved" "1526085797"
    
    Is_the_current_user_the_case_owner{"🔀 <em></em><br/>Is the current user the case owner?"}:::decisions
    click Is_the_current_user_the_case_owner "#is_the_current_user_the_case_owner" "2772324062"
    
    Required_Fields_Entered{"🔀 <em></em><br/>Required Fields Entered"}:::decisions
    click Required_Fields_Entered "#required_fields_entered" "2630529783"
    
    Case_to_Close[("🔍 <em></em><br/>Case to Close")]:::recordLookups
    click Case_to_Close "#case_to_close" "792865210"
    
    Get_Calculations[("🔍 <em></em><br/>Get Calculations")]:::recordLookups
    click Get_Calculations "#get_calculations" "3459052327"
    
    Get_Child_Case[("🔍 <em></em><br/>Get Child Cases")]:::recordLookups
    click Get_Child_Case "#get_child_case" "2547040390"
    
    Get_Profile[("🔍 <em></em><br/>Get Profile")]:::recordLookups
    click Get_Profile "#get_profile" "3397677143"
    
    User[("🔍 <em></em><br/>User")]:::recordLookups
    click User "#user" "706328872"
    
    Update_Case[("🛠️ <em></em><br/>Update Case")]:::recordUpdates
    click Update_Case "#update_case" "4191718002"
    
    Case_Not_Resolved(["💻 <em></em><br/>Case Not Resolved"]):::screens
    click Case_Not_Resolved "#case_not_resolved" "3648175984"
    
    Enter_Required_Fields(["💻 <em></em><br/>Enter Required Fields"]):::screens
    click Enter_Required_Fields "#enter_required_fields" "2319875882"
    
    UserIsNotOwner(["💻 <em></em><br/>User Is Not Owner"]):::screens
    click UserIsNotOwner "#userisnotowner" "724054387"
    
    Child_Cases_Resolved --> |"Yes"| Required_Fields_Entered
    Child_Cases_Resolved --> |"No"| Case_Not_Resolved
    Is_the_current_user_the_case_owner --> |"Yes"| Child_Cases_Resolved
    Is_the_current_user_the_case_owner --> |"No"| UserIsNotOwner
    Required_Fields_Entered --> |"Sender Role/Category/Sub-Category"| Enter_Required_Fields
    Required_Fields_Entered --> |"Yes"| Update_Case
    Case_to_Close --> Get_Child_Case
    Get_Calculations --> Is_the_current_user_the_case_owner
    Get_Child_Case --> Get_Calculations
    Get_Profile --> Case_to_Close
    User --> Get_Profile
    Update_Case --> END_Update_Case
    Case_Not_Resolved --> END_Case_Not_Resolved
    Enter_Required_Fields --> END_Enter_Required_Fields
    UserIsNotOwner --> END_UserIsNotOwner
    START -->  User
    END_Update_Case(( END )):::endClass
    END_Case_Not_Resolved(( END )):::endClass
    END_Enter_Required_Fields(( END )):::endClass
    END_UserIsNotOwner(( END )):::endClass
    
    
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
    |Label|Case | Button | Close Case|
    |Status|Obsolete|
    |Description|Modified case close screen to add "subject" as an editable field for CO cases<br/><br/>Surfaces required fields before closing case, depending on case type and user requirements. Added checkbox to allow users to close other peoples' cases.|
    |Environments|Default|
    |Interview Label|Close Case {!$Flow.CurrentDateTime}|
    |Run In Mode| System Mode Without Sharing|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[User](#user)|
    |Next Node|[User](#user)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |Calculation|SObject|⬜|✅|✅|Calculation__c|<!-- -->|
    |recordId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    |UnresolvedChildCase|SObject|⬜|✅|✅|Case|<!-- -->|
    |userId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Child_Cases_Resolved
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Child Cases Resolved|
    |Default Connector|[Case_Not_Resolved](#case_not_resolved)|
    |Default Connector Label|No|
    
    
    #### Rule YesChild (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Required_Fields_Entered](#required_fields_entered)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|UnresolvedChildCase.Id| Is Null|✅|
    |2|Calculation| Is Null|✅|
    
    
    
    
    ### Is_the_current_user_the_case_owner
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Is the current user the case owner?|
    |Default Connector|[UserIsNotOwner](#userisnotowner)|
    |Default Connector Label|No|
    
    
    #### Rule Yes (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Child_Cases_Resolved](#child_cases_resolved)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Case_to_Close.OwnerId| Contains|userId|
    |2|$User.Can_Close_Other_Cases__c| Equal To|✅|
    
    
    
    
    ### Required_Fields_Entered
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Required Fields Entered|
    |Default Connector|[Update_Case](#update_case)|
    |Default Connector Label|Yes|
    
    
    #### Rule NoImplementation (Implementation)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Case_to_Close.Implementation__c| Is Null|✅|
    |2|Get_Profile.Name| Contains|Client Onboarding|
    
    
    
    
    #### Rule NoAccount (Account)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Case_to_Close.AccountId| Is Null|✅|
    
    
    
    
    #### Rule NoPlans (Plan)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Case_to_Close.Plan__c| Is Null|✅|
    |2|User.Profile_ID__c| Not Equal To|00e1G0000011hjw|
    |3|User.Profile_ID__c| Not Equal To|00e1G000000tIss|
    
    
    
    
    #### Rule NoTeam (Team Member)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|(1 AND 2) OR (1 AND 3) OR (1 AND 4) OR (1 AND 5) OR (1 AND 6) OR (1 AND 7) OR (1 AND 8) OR (1 AND 9)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Case_to_Close.Team_Member__c| Is Null|✅|
    |2|Case_to_Close.OwnerId| Equal To|00500000006vmbuAAA|
    |3|Case_to_Close.OwnerId| Equal To|00500000006wpUQAAY|
    |4|Case_to_Close.OwnerId| Equal To|00500000006xUkfAAE|
    |5|Case_to_Close.OwnerId| Equal To|00537000002STLDAA4|
    |6|Case_to_Close.OwnerId| Equal To|00537000002SL2SAAW|
    |7|Case_to_Close.OwnerId| Equal To|00500000006yEakAAE|
    |8|Case_to_Close.OwnerId| Equal To|005370000039BHYAA2|
    |9|Case_to_Close.OwnerId| Equal To|00537000001tb5HAAQ|
    
    
    
    
    #### Rule NoCategory (Sender Role/Category/Sub-Category)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Enter_Required_Fields](#enter_required_fields)|
    |Condition Logic|(1 OR 7 OR 8) AND 2 AND 3 AND 4 AND 5 AND 6|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Case_to_Close.Category__c| Is Null|✅|
    |2|User.Profile_ID__c| Not Equal To|00e1G0000011hdP|
    |3|User.Profile_ID__c| Not Equal To|00e00000006ohd0|
    |4|User.Profile_ID__c| Not Equal To|00e37000000MnJU|
    |5|User.Profile_ID__c| Not Equal To|00e1G0000011hjw|
    |6|User.Profile_ID__c| Not Equal To|00e1G000000tIss|
    |7|Case_to_Close.Sender_Role__c| Is Null|✅|
    |8|Case_to_Close.Sub_Category__c| Is Null|✅|
    
    
    
    
    ### Case_to_Close
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Case|
    |Label|Case to Close|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|- Id<br/>- OwnerId<br/>- AccountId<br/>- ContactId<br/>- Plan__c<br/>- Implementation__c<br/>- Team_Member__c<br/>- Case_Sentiment__c<br/>- RecordTypeId<br/>- Sub_Category__c<br/>- Category__c<br/>- Department__c<br/>- Request_Level__c<br/>- Subject<br/>- Sender_Role__c<br/>|
    |Store Output Automatically|✅|
    |Connector|[Get_Child_Case](#get_child_case)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Get_Calculations
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Calculation__c|
    |Label|Get Calculations|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|Calculation|
    |Queried Fields|Id|
    |Connector|[Is_the_current_user_the_case_owner](#is_the_current_user_the_case_owner)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Case__c| Equal To|Case_to_Close.Id|
    |2|Status__c| Not Equal To|Delivered|
    
    
    
    
    ### Get_Child_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Case|
    |Label|Get Child Cases|
    |Assign Null Values If No Records Found|⬜|
    |Output Reference|UnresolvedChildCase|
    |Queried Fields|Id|
    |Connector|[Get_Calculations](#get_calculations)|
    
    
    #### Filters (logic: **(1 OR 3) AND 2**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|IsClosed| Not Equal To|✅|
    |2|ParentId| Equal To|Case_to_Close.Id|
    |3|Status| Equal To|Missing Info|
    
    
    
    
    ### Get_Profile
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Profile|
    |Label|Get Profile|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Case_to_Close](#case_to_close)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$User.ProfileId|
    
    
    
    
    ### User
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|[User](#user)|
    |Label|[User](#user)|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|- Id<br/>- User_ID__c<br/>- Profile_ID__c<br/>- Department<br/>- ProfileId<br/>|
    |Store Output Automatically|✅|
    |Connector|[Get_Profile](#get_profile)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|userId|
    
    
    
    
    ### Update_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Case|
    |Label|Update Case|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Status|Resolved|
    
    
    
    
    ### Case_Not_Resolved
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|Case Not Resolved|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Show Footer|✅|
    |Show Header|✅|
    
    
    #### Child_Cases_not_Resolved
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p><span style="font-size: 12px;">Case not resolved: </span><span style="font-size: 12px; color: rgb(0, 0, 0);">Confirm all Child Cases are "Resolved" and all Compliance Calculations are "Delivered".</span></p><p><br></p><p><span style="font-size: 12px; color: rgb(0, 0, 0);">Please Resolve this issue and try again.</span></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    ### Enter_Required_Fields
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|Enter Required Fields|
    |Allow Back|⬜|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Next Or Finish Button Label|Exit|
    |Show Footer|✅|
    |Show Header|⬜|
    
    
    #### exitFlowToEnterFields
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p style="text-align: center;"><span style="font-size: 18px;">Please make sure Sender Role, Category, and Sub-Category are filled out before resolving the case.</span></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    ### UserIsNotOwner
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|User Is Not Owner|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Show Footer|✅|
    |Show Header|✅|
    
    
    #### Child_Cases_not_Resolved_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p><span style="font-size: 12px;">Case not resolved: Only the case owner can resolve a case.</span></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

