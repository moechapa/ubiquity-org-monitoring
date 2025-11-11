# Implementation_ONETIME_Update_Active_Imps_List history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Implementation_ONETIME_Update_Active_Imps_List-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>"]):::startClass
    click START "#general-information" "1163524742"
    
    Add_to_Collection_0[\"🟰 <em></em><br/>Add to Collection"/]:::assignments
    click Add_to_Collection_0 "#add_to_collection_0" "797839153"
    
    Assign_Imps_List[\"🟰 <em></em><br/>Assign Imps List"/]:::assignments
    click Assign_Imps_List "#assign_imps_list" "2652319239"
    
    Collect_Active_Implementations[\"🟰 <em></em><br/>Collect Active Implementations"/]:::assignments
    click Collect_Active_Implementations "#collect_active_implementations" "3994940188"
    
    Direct_or_Advisor_Sourced{"🔀 <em></em><br/>Direct or Advisor-Sourced?"}:::decisions
    click Direct_or_Advisor_Sourced "#direct_or_advisor_sourced" "832015"
    
    Imp_Completed{"🔀 <em></em><br/>Imp Completed?"}:::decisions
    click Imp_Completed "#imp_completed" "2865247903"
    
    Grab_Imp_Info{{"🔁 <em></em><br/>Grab Imp Info"}}:::loops
    click Grab_Imp_Info "#grab_imp_info" "1730940859"
    
    Loop_Through_Advisors_Related_to_Imp{{"🔁 <em></em><br/>Loop Through Advisors Related to Imp"}}:::loops
    click Loop_Through_Advisors_Related_to_Imp "#loop_through_advisors_related_to_imp" "3997424906"
    
    Get_Associated_Advisors[("🔍 <em></em><br/>Get Associated Advisors")]:::recordLookups
    click Get_Associated_Advisors "#get_associated_advisors" "1612937304"
    
    Get_Associations_to_other_Plans[("🔍 <em></em><br/>Get Associations to other Plans")]:::recordLookups
    click Get_Associations_to_other_Plans "#get_associations_to_other_plans" "1210654408"
    
    Update_Contacts[("🛠️ <em></em><br/>Update Contacts")]:::recordUpdates
    click Update_Contacts "#update_contacts" "2200796604"
    
    Add_to_Collection_0 --> Loop_Through_Advisors_Related_to_Imp
    Assign_Imps_List --> Add_to_Collection_0
    Collect_Active_Implementations --> Grab_Imp_Info
    Direct_or_Advisor_Sourced --> |"Advisor-Sourced"| Loop_Through_Advisors_Related_to_Imp
    Direct_or_Advisor_Sourced --> |"Direct"| END_Direct_or_Advisor_Sourced
    Imp_Completed --> |"Yes"| Grab_Imp_Info
    Imp_Completed --> |"No"| Collect_Active_Implementations
    Grab_Imp_Info --> |"For Each"|Imp_Completed
    Grab_Imp_Info ---> |"After Last"|Assign_Imps_List
    Loop_Through_Advisors_Related_to_Imp --> |"For Each"|Get_Associations_to_other_Plans
    Loop_Through_Advisors_Related_to_Imp ---> |"After Last"|Update_Contacts
    Get_Associated_Advisors --> Direct_or_Advisor_Sourced
    Get_Associations_to_other_Plans --> Grab_Imp_Info
    Update_Contacts --> END_Update_Contacts
    START -->  Get_Associated_Advisors
    END_Direct_or_Advisor_Sourced(( END )):::endClass
    END_Update_Contacts(( END )):::endClass
    
    
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
    |Label|Implementation | ONETIME | Update Active Imps List|
    |Status|⚠️ Draft|
    |Interview Label|Implementation | ONETIME | Update Active Imps List {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Associated_Advisors](#get_associated_advisors)|
    |Next Node|[Get_Associated_Advisors](#get_associated_advisors)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |advisorContact|SObject|⬜|✅|✅|Contact|<!-- -->|
    |advisorContactCollection|SObject|✅|✅|✅|Contact|<!-- -->|
    |allActiveImps|String|⬜|✅|✅|<!-- -->|<!-- -->|
    |associatedAdvisors|SObject|✅|✅|✅|Associated_Contact__c|<!-- -->|
    |recordId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |implementationStatus|String|IF({!Grab_Imp_Info.Implementation_Stage__c} = "Pending Document Signature",<br/>{!Grab_Imp_Info.Implementation__r.Name} + " is on Step 1 of 7. Their next step is to sign the remaining plan documents." + BR() + BR(),<br/><br/>IF({!Grab_Imp_Info.Implementation_Stage__c} = "Pending Funding Account Setup",<br/>{!Grab_Imp_Info.Implementation__r.Name} + " is on Step 2 of 7. Their next step is to enter the payroll schedule, funding account and company information on the Ubiquity site to facilitate the plan’s ACH setup." + BR() + BR(),<br/><br/>IF({!Grab_Imp_Info.Implementation_Stage__c} = "Pending Client ACH Signature",<br/>{!Grab_Imp_Info.Implementation__r.Name} + " is on Step 3 of 7. Their next step is to sign the ACH application. This was emailed to the trustee from dse@docusign.net." + BR() + BR(),<br/><br/>IF({!Grab_Imp_Info.Implementation_Stage__c} = "Census and Payroll Instructions Sent",<br/>{!Grab_Imp_Info.Implementation__r.Name} + " is on Step 4 of 7. Their next step is to watch the census video and upload the required employee census data to the Ubiquity site."+ BR() + BR(),<br/><br/>IF(AND({!Grab_Imp_Info.Implementation_Stage__c} = "Census/Eligibility Uploaded", ISNULL({!Grab_Imp_Info.Intro_to_K_oncierge_Complete__c}),<br/>ISNULL({!Grab_Imp_Info.K_oncierge_Initial_Call__c}),<br/>ISNULL({!Grab_Imp_Info.X1st_Payroll_Date__c})),<br/>{!Grab_Imp_Info.Implementation__r.Name} + " is on Step 5 of 7. Their next step is to ensure the Enrollment Kit is sent to employees." + BR() + BR(),<br/><br/>IF(AND({!Grab_Imp_Info.Implementation_Stage__c} = "Census/Eligibility Uploaded", NOT(ISNULL({!Grab_Imp_Info.Intro_to_K_oncierge_Complete__c})),<br/>ISNULL({!Grab_Imp_Info.K_oncierge_Initial_Call__c}),<br/>ISNULL({!Grab_Imp_Info.X1st_Payroll_Date__c})),<br/>{!Grab_Imp_Info.Implementation__r.Name} + " is on Step 6 of 7. Their next step is the complete the questionnaire and schedule a call with our Payroll (K)oncierge to complete initial payroll setup." + BR() + BR(),<br/><br/>IF(AND({!Grab_Imp_Info.Implementation_Stage__c} = "Census/Eligibility Uploaded", NOT(ISNULL({!Grab_Imp_Info.Intro_to_K_oncierge_Complete__c})),<br/>NOT(ISNULL({!Grab_Imp_Info.K_oncierge_Initial_Call__c})),<br/>ISNULL({!Grab_Imp_Info.X1st_Payroll_Date__c})),<br/>{!Grab_Imp_Info.Implementation__r.Name} + " is on Step 7 of 7. Their next step is to schedule and attend a training call to report the plan’s first 401(k) contributions. If your client is enrolling in payroll integration services, they will be responsible for reporting 401(k) contributions until the one-time payroll integration setup has been completed." + BR() + BR(),<br/><br/>IF({!Grab_Imp_Info.Implementation_Stage__c} = "1st Payroll Submitted",<br/>{!Grab_Imp_Info.Implementation__r.Name} + " has reported the plan’s first 401(k) contributions. . Their next step is to wait for contributions to process and wrap up any outstanding payroll setup items with our Payroll (K)oncierge." + BR() + BR(),<br/><br/>{!Grab_Imp_Info.Implementation__r.Name} + " is currently working with their Implementation Specialist on the plan setup."+ BR() + BR()))))))))|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Add_to_Collection_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add to Collection|
    |Connector|[Loop_Through_Advisors_Related_to_Imp](#loop_through_advisors_related_to_imp)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |advisorContactCollection| Add|advisorContact|
    
    
    
    
    ### Assign_Imps_List
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Imps List|
    |Connector|[Add_to_Collection_0](#add_to_collection_0)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |advisorContact.Current_Active_Clients__c| Assign|allActiveImps|
    |advisorContact.Id| Assign|Loop_Through_Advisors_Related_to_Imp.Contact__c|
    
    
    
    
    ### Collect_Active_Implementations
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Collect Active Implementations|
    |Connector|[Grab_Imp_Info](#grab_imp_info)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |allActiveImps| Add|implementationStatus|
    
    
    
    
    ### Direct_or_Advisor_Sourced
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Direct or Advisor-Sourced?|
    |Default Connector Label|Direct|
    
    
    #### Rule Advisor_Sourced (Advisor-Sourced)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Loop_Through_Advisors_Related_to_Imp](#loop_through_advisors_related_to_imp)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|associatedAdvisors| Is Null|⬜|
    
    
    
    
    ### Imp_Completed
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Imp Completed?|
    |Default Connector|[Collect_Active_Implementations](#collect_active_implementations)|
    |Default Connector Label|No|
    
    
    #### Rule Yes (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Grab_Imp_Info](#grab_imp_info)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Grab_Imp_Info.Implementation_Status__c| Equal To|Completed|
    
    
    
    
    ### Grab_Imp_Info
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Grab Imp Info|
    |Collection Reference|[Get_Associations_to_other_Plans](#get_associations_to_other_plans)|
    |Iteration Order|Asc|
    |Next Value Connector|[Imp_Completed](#imp_completed)|
    |No More Values Connector|[Assign_Imps_List](#assign_imps_list)|
    
    
    ### Loop_Through_Advisors_Related_to_Imp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Loop Through Advisors Related to Imp|
    |Collection Reference|associatedAdvisors|
    |Iteration Order|Asc|
    |Next Value Connector|[Get_Associations_to_other_Plans](#get_associations_to_other_plans)|
    |No More Values Connector|[Update_Contacts](#update_contacts)|
    
    
    ### Get_Associated_Advisors
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Associated_Contact__c|
    |Label|Get Associated Advisors|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|associatedAdvisors|
    |Queried Fields|- Id<br/>- Contact__c<br/>- Implementation_Stage__c<br/>- Implementation_Status__c<br/>|
    |Connector|[Direct_or_Advisor_Sourced](#direct_or_advisor_sourced)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Implementation__c| Equal To|recordId|
    |2|Contact_Role__c| Equal To|Financial Advisor|
    |3|Implementation_Status__c| Not Equal To|Completed|
    
    
    
    
    ### Get_Associations_to_other_Plans
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Associated_Contact__c|
    |Label|Get Associations to other Plans|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Store Output Automatically|✅|
    |Connector|[Grab_Imp_Info](#grab_imp_info)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Contact__c| Equal To|Loop_Through_Advisors_Related_to_Imp.Contact__c|
    |2|Implementation__c| Is Null|<!-- -->|
    
    
    
    
    ### Update_Contacts
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Contacts|
    |Input Reference|advisorContactCollection|
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

