# Update_Partner_Status history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Update_Partner_Status-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>"]):::startClass
    click START "#general-information" "2433872553"
    
    Email_Sales("📧 <em></em><br/>Email Sales"):::actionCalls
    click Email_Sales "#email_sales" "1206651222"
    
    Assign_Partner_Status[\"🟰 <em></em><br/>Assign Partner Status"/]:::assignments
    click Assign_Partner_Status "#assign_partner_status" "1795505656"
    
    Active_Referrers{"🔀 <em></em><br/>Active Referrers?"}:::decisions
    click Active_Referrers "#active_referrers" "2157425421"
    
    Does_Associated_Contact_Exist{"🔀 <em></em><br/>Does Associated Contact Exist?"}:::decisions
    click Does_Associated_Contact_Exist "#does_associated_contact_exist" "1315613188"
    
    Grandfathered_Advisor{"🔀 <em></em><br/>Grandfathered Advisor?"}:::decisions
    click Grandfathered_Advisor "#grandfathered_advisor" "1659134778"
    
    More_Recent_Lead_Exists{"🔀 <em></em><br/>More Recent Lead Exists"}:::decisions
    click More_Recent_Lead_Exists "#more_recent_lead_exists" "2203955792"
    
    Update_Account{"🔀 <em></em><br/>Update Account?"}:::decisions
    click Update_Account "#update_account" "1889865754"
    
    Check_for_Active_Referrers{{"🔁 <em></em><br/>Check for Active Referrers"}}:::loops
    click Check_for_Active_Referrers "#check_for_active_referrers" "1535785232"
    
    Loop_Through_Leads{{"🔁 <em></em><br/>Loop Through Leads"}}:::loops
    click Loop_Through_Leads "#loop_through_leads" "2473353142"
    
    Get_All_Associates[("🔍 <em></em><br/>Get All Associates")]:::recordLookups
    click Get_All_Associates "#get_all_associates" "3482310141"
    
    Get_All_Leads[("🔍 <em></em><br/>Get All Leads")]:::recordLookups
    click Get_All_Leads "#get_all_leads" "2253598033"
    
    Get_Associated_Contact[("🔍 <em></em><br/>Get Associated Contact")]:::recordLookups
    click Get_Associated_Contact "#get_associated_contact" "1118417288"
    
    Get_Lead[("🔍 <em></em><br/>Get Lead")]:::recordLookups
    click Get_Lead "#get_lead" "4181916262"
    
    Update_Account_Record[("🛠️ <em></em><br/>Update Account")]:::recordUpdates
    click Update_Account_Record "#update_account_record" "3687219683"
    
    Update_Advisor[("🛠️ <em></em><br/>Update Advisor")]:::recordUpdates
    click Update_Advisor "#update_advisor" "2702375587"
    
    Email_Sales --> Get_All_Associates
    Assign_Partner_Status --> Check_for_Active_Referrers
    Active_Referrers --> |"No"| Assign_Partner_Status
    Active_Referrers --> |"Yes"| Check_for_Active_Referrers
    Does_Associated_Contact_Exist --> |"Yes"| Get_Associated_Contact
    Does_Associated_Contact_Exist --> |"Default Outcome"| END_Does_Associated_Contact_Exist
    Grandfathered_Advisor --> |"Yes"| Email_Sales
    Grandfathered_Advisor --> |"No"| Get_All_Associates
    More_Recent_Lead_Exists --> |"No"| Loop_Through_Leads
    Update_Account --> |"Yes"| Update_Account_Record
    Update_Account --> |"No"| END_Update_Account
    Check_for_Active_Referrers --> |"For Each"|Active_Referrers
    Check_for_Active_Referrers ---> |"After Last"|Update_Account
    Loop_Through_Leads --> |"For Each"|More_Recent_Lead_Exists
    Loop_Through_Leads ---> |"After Last"|Update_Advisor
    Get_All_Associates --> Check_for_Active_Referrers
    Get_All_Leads --> Loop_Through_Leads
    Get_Associated_Contact --> Get_All_Leads
    Get_Lead --> Does_Associated_Contact_Exist
    Update_Account_Record --> END_Update_Account_Record
    Update_Advisor --> Grandfathered_Advisor
    START -->  Get_Lead
    END_Does_Associated_Contact_Exist(( END )):::endClass
    END_Update_Account(( END )):::endClass
    END_Update_Account_Record(( END )):::endClass
    
    
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
    |Label|Lead | Process | Update Partner Status|
    |Status|Active|
    |Description|Update Partner Status on Contact if all Associated Leads are older than 1 year.|
    |Interview Label|Update Partner Status {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Lead](#get_lead)|
    |Next Node|[Get_Lead](#get_lead)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |LeadLoop|SObject|⬜|✅|✅|Lead|<!-- -->|
    |NewCollection|SObject|✅|✅|✅|Lead|<!-- -->|
    |partnerStatus|String|⬜|✅|✅|<!-- -->|<!-- -->|
    |recordId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Email_Sales
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Email Sales|
    |Action Type|Email Alert|
    |Action Name|Contact.Grandfathered_Partner_No_Longer_Active|
    |Name Segment|Contact.Grandfathered_Partner_No_Longer_Active|
    | SObject Row Id (input)|Get_Associated_Contact.Id|
    |Connector|[Get_All_Associates](#get_all_associates)|
    
    
    ### Assign_Partner_Status
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Partner Status|
    |Connector|[Check_for_Active_Referrers](#check_for_active_referrers)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |partnerStatus| Assign|Passive Referrer|
    
    
    
    
    ### Active_Referrers
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Active Referrers?|
    |Default Connector|[Check_for_Active_Referrers](#check_for_active_referrers)|
    |Default Connector Label|Yes|
    
    
    #### Rule NoActiveReferrers (No)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Partner_Status](#assign_partner_status)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Check_for_Active_Referrers.Partner_Status__c| Equal To|Passive Referrer|
    
    
    
    
    ### Does_Associated_Contact_Exist
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Does Associated Contact Exist?|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Associated_Contact](#get_associated_contact)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Lead.Associated_Contact__c| Is Null|⬜|
    
    
    
    
    ### Grandfathered_Advisor
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Grandfathered Advisor?|
    |Default Connector|[Get_All_Associates](#get_all_associates)|
    |Default Connector Label|No|
    
    
    #### Rule YesGFA (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Email_Sales](#email_sales)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Associated_Contact.Territory__c| Equal To|Grandfathered|
    
    
    
    
    ### More_Recent_Lead_Exists
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|More Recent Lead Exists|
    |Default Connector|[Loop_Through_Leads](#loop_through_leads)|
    |Default Connector Label|No|
    
    
    #### Rule YesNewer (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|LeadLoop.CreatedDate| Greater Than|Get_Lead.CreatedDate|
    
    
    
    
    ### Update_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Update Account?|
    |Default Connector Label|No|
    
    
    #### Rule YesUpdate (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Account_Record](#update_account_record)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|partnerStatus| Equal To|Passive Referrer|
    
    
    
    
    ### Check_for_Active_Referrers
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Check for Active Referrers|
    |Collection Reference|[Get_All_Associates](#get_all_associates)|
    |Iteration Order|Asc|
    |Next Value Connector|[Active_Referrers](#active_referrers)|
    |No More Values Connector|[Update_Account](#update_account)|
    
    
    ### Loop_Through_Leads
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Loop Through Leads|
    |Assign Next Value To Reference|LeadLoop|
    |Collection Reference|[Get_All_Leads](#get_all_leads)|
    |Iteration Order|Asc|
    |Next Value Connector|[More_Recent_Lead_Exists](#more_recent_lead_exists)|
    |No More Values Connector|[Update_Advisor](#update_advisor)|
    
    
    ### Get_All_Associates
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Get All Associates|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Store Output Automatically|✅|
    |Connector|[Check_for_Active_Referrers](#check_for_active_referrers)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|AccountId| Equal To|Get_Associated_Contact.AccountId|
    
    
    
    
    ### Get_All_Leads
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Lead|
    |Label|Get All Leads|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Store Output Automatically|✅|
    |Connector|[Loop_Through_Leads](#loop_through_leads)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Associated_Contact__c| Equal To|Get_Associated_Contact.Id|
    
    
    
    
    ### Get_Associated_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Get Associated Contact|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Get_All_Leads](#get_all_leads)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Lead.Associated_Contact__c|
    
    
    
    
    ### Get_Lead
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Lead|
    |Label|Get Lead|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Does_Associated_Contact_Exist](#does_associated_contact_exist)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Update_Account_Record
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Account|
    |Label|Update Account|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Associated_Contact.AccountId|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Partner_Status__c|Passive Referrer|
    
    
    
    
    ### Update_Advisor
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Contact|
    |Label|Update Advisor|
    |Connector|[Grandfathered_Advisor](#grandfathered_advisor)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Associated_Contact.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Partner_Status__c|Passive Referrer|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

