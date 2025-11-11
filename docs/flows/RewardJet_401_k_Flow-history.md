# RewardJet_401_k_Flow history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](RewardJet_401_k_Flow-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>"]):::startClass
    click START "#general-information" "2120670859"
    
    Set_Default_Last_Name[\"🟰 <em></em><br/>Set Default Last Name"/]:::assignments
    click Set_Default_Last_Name "#set_default_last_name" "1352322671"
    
    Set_Invitee_Last_Name[\"🟰 <em></em><br/>Set Invitee Last Name"/]:::assignments
    click Set_Invitee_Last_Name "#set_invitee_last_name" "3204971400"
    
    Account{"🔀 <em></em><br/>Account?"}:::decisions
    click Account "#account" "1733522207"
    
    Campaign{"🔀 <em></em><br/>Campaign?"}:::decisions
    click Campaign "#campaign" "3491724626"
    
    Case{"🔀 <em></em><br/>Case?"}:::decisions
    click Case "#case" "1230678837"
    
    Contact{"🔀 <em></em><br/>Contact?"}:::decisions
    click Contact "#contact" "3178388536"
    
    Contact_Matched{"🔀 <em></em><br/>Contact Matched?"}:::decisions
    click Contact_Matched "#contact_matched" "3168942434"
    
    Contract{"🔀 <em></em><br/>Contract?"}:::decisions
    click Contract "#contract" "1073123053"
    
    Do_we_have_a_Record{"🔀 <em></em><br/>Do we have a Record?"}:::decisions
    click Do_we_have_a_Record "#do_we_have_a_record" "2081568349"
    
    Event_Owner{"🔀 <em></em><br/>Event Owner?"}:::decisions
    click Event_Owner "#event_owner" "389653027"
    
    Invitee_Last_Name_Exists{"🔀 <em></em><br/>Invitee Last Name Exists?"}:::decisions
    click Invitee_Last_Name_Exists "#invitee_last_name_exists" "2707107715"
    
    Is_it_Converted{"🔀 <em></em><br/>Is it Converted?"}:::decisions
    click Is_it_Converted "#is_it_converted" "768448972"
    
    Lead{"🔀 <em></em><br/>Lead?"}:::decisions
    click Lead "#lead" "3294554012"
    
    Lead_Matched{"🔀 <em></em><br/>Lead Matched?"}:::decisions
    click Lead_Matched "#lead_matched" "423309487"
    
    Opportunity{"🔀 <em></em><br/>Opportunity?"}:::decisions
    click Opportunity "#opportunity" "502924481"
    
    Profile_Found{"🔀 <em></em><br/>Profile Found?"}:::decisions
    click Profile_Found "#profile_found" "3841289622"
    
    SFID_Provided{"🔀 <em></em><br/>SFID Provided?"}:::decisions
    click SFID_Provided "#sfid_provided" "938932101"
    
    User_Found{"🔀 <em></em><br/>User Found?"}:::decisions
    click User_Found "#user_found" "3085405955"
    
    Create_Event[("➕ <em></em><br/>Create Event")]:::recordCreates
    click Create_Event "#create_event" "2454894484"
    
    Create_New_Lead[("➕ <em></em><br/>Create New Lead")]:::recordCreates
    click Create_New_Lead "#create_new_lead" "4241148818"
    
    Find_Account[("🔍 <em></em><br/>Find Account")]:::recordLookups
    click Find_Account "#find_account" "2842678966"
    
    Find_Campaign[("🔍 <em></em><br/>Find Campaign")]:::recordLookups
    click Find_Campaign "#find_campaign" "1879486718"
    
    Find_Case[("🔍 <em></em><br/>Find Case")]:::recordLookups
    click Find_Case "#find_case" "517225444"
    
    Find_Contact[("🔍 <em></em><br/>Find Contact")]:::recordLookups
    click Find_Contact "#find_contact" "2694905427"
    
    Find_Contract[("🔍 <em></em><br/>Find Contract")]:::recordLookups
    click Find_Contract "#find_contract" "3744558789"
    
    Find_Converted_Contact[("🔍 <em></em><br/>Find Converted Contact")]:::recordLookups
    click Find_Converted_Contact "#find_converted_contact" "645459235"
    
    Find_Lead[("🔍 <em></em><br/>Find Lead")]:::recordLookups
    click Find_Lead "#find_lead" "1688073548"
    
    Find_Opportunity[("🔍 <em></em><br/>Find Opportunity")]:::recordLookups
    click Find_Opportunity "#find_opportunity" "2074119098"
    
    Find_Profile[("🔍 <em></em><br/>Find Profile")]:::recordLookups
    click Find_Profile "#find_profile" "3792337150"
    
    Find_Publisher[("🔍 <em></em><br/>Find Publisher")]:::recordLookups
    click Find_Publisher "#find_publisher" "1661181542"
    
    Find_User[("🔍 <em></em><br/>Find User")]:::recordLookups
    click Find_User "#find_user" "1654776160"
    
    Match_Contact[("🔍 <em></em><br/>Match Contact")]:::recordLookups
    click Match_Contact "#match_contact" "1460924030"
    
    Match_Lead[("🔍 <em></em><br/>Match Lead")]:::recordLookups
    click Match_Lead "#match_lead" "3222282258"
    
    Set_Default_Last_Name --> Create_New_Lead
    Set_Invitee_Last_Name --> Invitee_Last_Name_Exists
    Account --> |"SFID matches Account"| Find_Publisher
    Account --> |"SFID not Account"| Find_Opportunity
    Campaign --> |"SFID matches Campaign"| Find_Publisher
    Campaign --> |"SFID not Campaign"| Find_Contact
    Case --> |"SFID matches Case"| Find_Publisher
    Case --> |"SFID not Case"| Find_Contract
    Contact --> |"SFID matches Contact"| Find_Publisher
    Contact --> |"SFID not Contact"| Find_Lead
    Contact_Matched --> |"Invitee Email matches Contact"| Find_Publisher
    Contact_Matched --> |"No Contact Found with Invitee Email"| Match_Lead
    Contract --> |"SFID matches Contract"| Find_Publisher
    Contract --> |"SFID not Contract"| Find_Campaign
    Do_we_have_a_Record --> |"Create Lead"| Set_Invitee_Last_Name
    Do_we_have_a_Record --> |"Record Found"| Create_Event
    Event_Owner --> |"Event Owner Present"| Do_we_have_a_Record
    Event_Owner --> |"Event Owner not Present"| Find_Profile
    Invitee_Last_Name_Exists --> |"Present"| Create_New_Lead
    Invitee_Last_Name_Exists --> |"Set Last Name"| Set_Default_Last_Name
    Is_it_Converted --> |"Lead Converted"| Find_Converted_Contact
    Is_it_Converted --> |"Lead Active"| Find_Publisher
    Lead --> |"SFID matches Lead"| Is_it_Converted
    Lead --> |"SFID not Lead"| Match_Contact
    Lead_Matched --> |"Invitee Email matches Lead"| Is_it_Converted
    Lead_Matched --> |"No Records Found"| Find_Publisher
    Opportunity --> |"SFID matches Opportunity"| Find_Publisher
    Opportunity --> |"SFID not Opportunity"| Find_Case
    Profile_Found --> |"System Admin Profile Found"| Find_User
    Profile_Found --> |"Exit Flow"| END_Profile_Found
    SFID_Provided --> |"SFID"| Find_Account
    SFID_Provided --> |"No SFID"| Match_Contact
    User_Found --> |"System Admin Found"| Do_we_have_a_Record
    User_Found --> |"Exit Flow"| END_User_Found
    Create_Event --> END_Create_Event
    Create_New_Lead --> Create_Event
    Find_Account --> Account
    Find_Account -. Fault .->Find_Opportunity
    Find_Campaign --> Campaign
    Find_Campaign -. Fault .->Find_Contact
    Find_Case --> Case
    Find_Case -. Fault .->Find_Contract
    Find_Contact --> Contact
    Find_Contact -. Fault .->Find_Lead
    Find_Contract --> Contract
    Find_Contract -. Fault .->Find_Campaign
    Find_Converted_Contact --> Find_Publisher
    Find_Lead --> Lead
    Find_Lead -. Fault .->Match_Contact
    Find_Opportunity --> Opportunity
    Find_Opportunity -. Fault .->Find_Case
    Find_Profile --> Profile_Found
    Find_Publisher --> Event_Owner
    Find_User --> User_Found
    Match_Contact --> Contact_Matched
    Match_Lead --> Lead_Matched
    START -->  SFID_Provided
    END_Profile_Found(( END )):::endClass
    END_User_Found(( END )):::endClass
    END_Create_Event(( END )):::endClass
    
    
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
    |Label|RewardJet 401(k) Flow|
    |Status|Obsolete|
    |Interview Label|RewardJet 401(k) Flow {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    |Connector|[SFID_Provided](#sfid_provided)|
    |Next Node|[SFID_Provided](#sfid_provided)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |ConvertedContactId|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |LeadConvertedAt|DateTime|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |LeadLastName|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |NewCalendlyAction|SObject|⬜|✅|⬜|CalendlyAction__c|<!-- -->|
    |OwnerId|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |ProfileId|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |WhatRecordId|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |WhoRecordId|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Set_Default_Last_Name
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Set Default Last Name|
    |Connector|[Create_New_Lead](#create_new_lead)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |LeadLastName| Assign|NotProvided|
    
    
    
    
    ### Set_Invitee_Last_Name
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Set Invitee Last Name|
    |Connector|[Invitee_Last_Name_Exists](#invitee_last_name_exists)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |LeadLastName| Assign|NewCalendlyAction.InviteeLastName__c|
    
    
    
    
    ### Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Account?|
    |Default Connector|[Find_Opportunity](#find_opportunity)|
    |Default Connector Label|SFID not Account|
    
    
    #### Rule SFID_matches_Account (SFID matches Account)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Find_Publisher](#find_publisher)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|WhatRecordId| Is Null|⬜|
    
    
    
    
    ### Campaign
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Campaign?|
    |Default Connector|[Find_Contact](#find_contact)|
    |Default Connector Label|SFID not Campaign|
    
    
    #### Rule SFID_matches_Campaign (SFID matches Campaign)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Find_Publisher](#find_publisher)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|WhatRecordId| Is Null|⬜|
    
    
    
    
    ### Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Case?|
    |Default Connector|[Find_Contract](#find_contract)|
    |Default Connector Label|SFID not Case|
    
    
    #### Rule SFID_matches_Case (SFID matches Case)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Find_Publisher](#find_publisher)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|WhatRecordId| Is Null|⬜|
    
    
    
    
    ### Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Contact?|
    |Default Connector|[Find_Lead](#find_lead)|
    |Default Connector Label|SFID not Contact|
    
    
    #### Rule SFID_matches_Contact (SFID matches Contact)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Find_Publisher](#find_publisher)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|WhoRecordId| Is Null|⬜|
    
    
    
    
    ### Contact_Matched
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Contact Matched?|
    |Default Connector|[Match_Lead](#match_lead)|
    |Default Connector Label|No Contact Found with Invitee Email|
    
    
    #### Rule Invitee_Email_matches_Contact (Invitee Email matches Contact)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Find_Publisher](#find_publisher)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|WhoRecordId| Is Null|⬜|
    
    
    
    
    ### Contract
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Contract?|
    |Default Connector|[Find_Campaign](#find_campaign)|
    |Default Connector Label|SFID not Contract|
    
    
    #### Rule SFID_matches_Contract (SFID matches Contract)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Find_Publisher](#find_publisher)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|WhatRecordId| Is Null|⬜|
    
    
    
    
    ### Do_we_have_a_Record
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Do we have a Record?|
    |Description|The main goal of this flow is to create an Event ( a type of Activity ).  But we must create that Event within an existing record.<br/><br/>If all previous attempts at finding a record failed ( via SFID, or Invitee Email ): then we need to create a record.<br/><br/>We will always create a Lead when we couldn't find a record.|
    |Default Connector|[Create_Event](#create_event)|
    |Default Connector Label|Record Found|
    
    
    #### Rule Create_Lead (Create Lead)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Set_Invitee_Last_Name](#set_invitee_last_name)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|WhoRecordId| Is Null|✅|
    |2|WhatRecordId| Is Null|✅|
    
    
    
    
    ### Event_Owner
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Event Owner?|
    |Description|While looking up the records, if we found one, we would have set the OwnerId as the record owner.<br/><br/>In the last step, we attempted to overwrite the OwnerId with the id of the user whose email matches the publisher.<br/><br/>So at this point, we hope to have an owner defined.  If we don't we'll have to look up the system admin.|
    |Default Connector|[Find_Profile](#find_profile)|
    |Default Connector Label|Event Owner not Present|
    
    
    #### Rule Event_Owner_Present (Event Owner Present)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Do_we_have_a_Record](#do_we_have_a_record)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|OwnerId| Is Null|⬜|
    
    
    
    
    ### Invitee_Last_Name_Exists
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Invitee Last Name Exists?|
    |Default Connector|[Set_Default_Last_Name](#set_default_last_name)|
    |Default Connector Label|Set Last Name|
    
    
    #### Rule Present (Present)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Create_New_Lead](#create_new_lead)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|LeadLastName| Is Null|⬜|
    
    
    
    
    ### Is_it_Converted
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Is it Converted?|
    |Description|We cannot update a converted lead.  If the lead is converted, we need to try and find the contact it was converted to.|
    |Default Connector|[Find_Publisher](#find_publisher)|
    |Default Connector Label|Lead Active|
    
    
    #### Rule Lead_Converted (Lead Converted)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Find_Converted_Contact](#find_converted_contact)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|LeadConvertedAt| Is Null|⬜|
    
    
    
    
    ### Lead
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Lead?|
    |Default Connector|[Match_Contact](#match_contact)|
    |Default Connector Label|SFID not Lead|
    
    
    #### Rule SFID_matches_Lead (SFID matches Lead)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Is_it_Converted](#is_it_converted)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|WhoRecordId| Is Null|⬜|
    
    
    
    
    ### Lead_Matched
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Lead Matched?|
    |Default Connector|[Find_Publisher](#find_publisher)|
    |Default Connector Label|No Records Found|
    
    
    #### Rule Invitee_Email_matches_Lead (Invitee Email matches Lead)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Is_it_Converted](#is_it_converted)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|WhoRecordId| Is Null|⬜|
    
    
    
    
    ### Opportunity
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Opportunity?|
    |Default Connector|[Find_Case](#find_case)|
    |Default Connector Label|SFID not Opportunity|
    
    
    #### Rule SFID_matches_Opportunity (SFID matches Opportunity)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Find_Publisher](#find_publisher)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|WhatRecordId| Is Null|⬜|
    
    
    
    
    ### Profile_Found
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Profile Found?|
    |Description|If we cannot find the system admin profile, we cannot find the system admin.  And if we're at this point in the logic, we have no other owner.<br/><br/>So there's no path forward if the profile is not found.|
    |Default Connector Label|Exit Flow|
    
    
    #### Rule System_Admin_Profile_Found (System Admin Profile Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Find_User](#find_user)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|ProfileId| Is Null|⬜|
    
    
    
    
    ### SFID_Provided
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|SFID Provided?|
    |Default Connector|[Match_Contact](#match_contact)|
    |Default Connector Label|No SFID|
    
    
    #### Rule SFID (SFID)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Find_Account](#find_account)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|NewCalendlyAction.ObjectId__c| Is Null|⬜|
    
    
    
    
    ### User_Found
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|User Found?|
    |Description|So there's no path forward if the system admin is not found.|
    |Default Connector Label|Exit Flow|
    
    
    #### Rule System_Admin_Found (System Admin Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Do_we_have_a_Record](#do_we_have_a_record)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|OwnerId| Is Null|⬜|
    
    
    
    
    ### Create_Event
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Event|
    |Label|Create Event|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Description|NewCalendlyAction.EventDescription__c|
    |EndDateTime|NewCalendlyAction.EventEndTime__c|
    |InviteeUuid__c|NewCalendlyAction.InviteeUuid__c|
    |OwnerId|OwnerId|
    |StartDateTime|NewCalendlyAction.EventStartTime__c|
    |Subject|{!NewCalendlyAction.EventSubject__c} - Calendly - {!NewCalendlyAction.InviteeUuid__c}|
    |WhatId|WhatRecordId|
    |WhoId|WhoRecordId|
    
    
    
    
    ### Create_New_Lead
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|[Lead](#lead)|
    |Label|Create New Lead|
    |Assign Record Id To Reference|WhoRecordId|
    |Connector|[Create_Event](#create_event)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |CalendlyCreated__c|✅|
    |Company|NewCalendlyAction.CustomResponse1__c|
    |Email|NewCalendlyAction.InviteeEmail__c|
    |FirstName|NewCalendlyAction.InviteeFirstName__c|
    |LastName|LeadLastName|
    |LeadSource|Member Organization|
    |LeadSourceDetail__c|RewardJet|
    |Lead_Notes__c|NewCalendlyAction.CustomResponse4__c|
    |OwnerId|OwnerId|
    |Product_Type__c|401(k)|
    |Status|Open|
    
    
    
    
    ### Find_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|[Account](#account)|
    |Label|Find Account|
    |Assign Null Values If No Records Found|⬜|
    |Fault Connector|[Find_Opportunity](#find_opportunity)|
    |Output Assignments|- assignToReference: WhatRecordId<br/>&nbsp;&nbsp;field: Id<br/>- assignToReference: OwnerId<br/>&nbsp;&nbsp;field: OwnerId<br/>|
    |Connector|[Account](#account)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|NewCalendlyAction.ObjectId__c|
    
    
    
    
    ### Find_Campaign
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|[Campaign](#campaign)|
    |Label|Find Campaign|
    |Assign Null Values If No Records Found|⬜|
    |Fault Connector|[Find_Contact](#find_contact)|
    |Output Assignments|- assignToReference: WhatRecordId<br/>&nbsp;&nbsp;field: Id<br/>- assignToReference: OwnerId<br/>&nbsp;&nbsp;field: OwnerId<br/>|
    |Connector|[Campaign](#campaign)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|NewCalendlyAction.ObjectId__c|
    
    
    
    
    ### Find_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|[Case](#case)|
    |Label|Find Case|
    |Assign Null Values If No Records Found|⬜|
    |Fault Connector|[Find_Contract](#find_contract)|
    |Output Assignments|- assignToReference: WhatRecordId<br/>&nbsp;&nbsp;field: Id<br/>- assignToReference: OwnerId<br/>&nbsp;&nbsp;field: OwnerId<br/>|
    |Connector|[Case](#case)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|NewCalendlyAction.ObjectId__c|
    
    
    
    
    ### Find_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|[Contact](#contact)|
    |Label|Find Contact|
    |Assign Null Values If No Records Found|⬜|
    |Fault Connector|[Find_Lead](#find_lead)|
    |Output Assignments|- assignToReference: WhoRecordId<br/>&nbsp;&nbsp;field: Id<br/>- assignToReference: OwnerId<br/>&nbsp;&nbsp;field: OwnerId<br/>|
    |Connector|[Contact](#contact)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|NewCalendlyAction.ObjectId__c|
    
    
    
    
    ### Find_Contract
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|[Contract](#contract)|
    |Label|Find Contract|
    |Assign Null Values If No Records Found|⬜|
    |Fault Connector|[Find_Campaign](#find_campaign)|
    |Output Assignments|- assignToReference: WhatRecordId<br/>&nbsp;&nbsp;field: Id<br/>- assignToReference: OwnerId<br/>&nbsp;&nbsp;field: OwnerId<br/>|
    |Connector|[Contract](#contract)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|NewCalendlyAction.ObjectId__c|
    
    
    
    
    ### Find_Converted_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|[Contact](#contact)|
    |Label|Find Converted Contact|
    |Description|This lookup with find the converted contact, or set RecordId to null since the converted lead cannot be updated.|
    |Assign Null Values If No Records Found|✅|
    |Output Assignments|- assignToReference: WhoRecordId<br/>&nbsp;&nbsp;field: Id<br/>- assignToReference: OwnerId<br/>&nbsp;&nbsp;field: OwnerId<br/>|
    |Connector|[Find_Publisher](#find_publisher)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|ConvertedContactId|
    
    
    
    
    ### Find_Lead
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|[Lead](#lead)|
    |Label|Find Lead|
    |Assign Null Values If No Records Found|⬜|
    |Fault Connector|[Match_Contact](#match_contact)|
    |Output Assignments|- assignToReference: ConvertedContactId<br/>&nbsp;&nbsp;field: ConvertedContactId<br/>- assignToReference: LeadConvertedAt<br/>&nbsp;&nbsp;field: ConvertedDate<br/>- assignToReference: WhoRecordId<br/>&nbsp;&nbsp;field: Id<br/>- assignToReference: OwnerId<br/>&nbsp;&nbsp;field: OwnerId<br/>|
    |Connector|[Lead](#lead)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|NewCalendlyAction.ObjectId__c|
    
    
    
    
    ### Find_Opportunity
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|[Opportunity](#opportunity)|
    |Label|Find Opportunity|
    |Assign Null Values If No Records Found|⬜|
    |Fault Connector|[Find_Case](#find_case)|
    |Output Assignments|- assignToReference: WhatRecordId<br/>&nbsp;&nbsp;field: Id<br/>- assignToReference: OwnerId<br/>&nbsp;&nbsp;field: OwnerId<br/>|
    |Connector|[Opportunity](#opportunity)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|NewCalendlyAction.ObjectId__c|
    
    
    
    
    ### Find_Profile
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Profile|
    |Label|Find Profile|
    |Assign Null Values If No Records Found|⬜|
    |Output Assignments|assignToReference: ProfileId<br/>field: Id<br/>|
    |Connector|[Profile_Found](#profile_found)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Name| Equal To|System Administrator|
    
    
    
    
    ### Find_Publisher
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|User|
    |Label|Find Publisher|
    |Assign Null Values If No Records Found|⬜|
    |Output Assignments|assignToReference: OwnerId<br/>field: Id<br/>|
    |Connector|[Event_Owner](#event_owner)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Email| Equal To|NewCalendlyAction.EventPrimaryPublisherEmail__c|
    |2|IsActive| Equal To|✅|
    
    
    
    
    ### Find_User
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|User|
    |Label|Find User|
    |Assign Null Values If No Records Found|⬜|
    |Output Assignments|assignToReference: OwnerId<br/>field: Id<br/>|
    |Connector|[User_Found](#user_found)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|ProfileId| Equal To|ProfileId|
    
    
    
    
    ### Match_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|[Contact](#contact)|
    |Label|Match Contact|
    |Assign Null Values If No Records Found|⬜|
    |Output Assignments|- assignToReference: WhoRecordId<br/>&nbsp;&nbsp;field: Id<br/>- assignToReference: OwnerId<br/>&nbsp;&nbsp;field: OwnerId<br/>|
    |Sort Field|LastModifiedDate|
    |Sort Order|Desc|
    |Connector|[Contact_Matched](#contact_matched)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Email| Equal To|NewCalendlyAction.InviteeEmail__c|
    
    
    
    
    ### Match_Lead
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|[Lead](#lead)|
    |Label|Match Lead|
    |Assign Null Values If No Records Found|⬜|
    |Output Assignments|- assignToReference: ConvertedContactId<br/>&nbsp;&nbsp;field: ConvertedContactId<br/>- assignToReference: LeadConvertedAt<br/>&nbsp;&nbsp;field: ConvertedDate<br/>- assignToReference: WhoRecordId<br/>&nbsp;&nbsp;field: Id<br/>- assignToReference: OwnerId<br/>&nbsp;&nbsp;field: OwnerId<br/>|
    |Connector|[Lead_Matched](#lead_matched)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Email| Equal To|NewCalendlyAction.InviteeEmail__c|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

