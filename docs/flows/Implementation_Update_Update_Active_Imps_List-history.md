# Implementation_Update_Update_Active_Imps_List history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Implementation_Update_Update_Active_Imps_List-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "3345430579"
    
    Add_to_Collection_0[\"🟰 <em></em><br/>Add to Collection"/]:::assignments
    click Add_to_Collection_0 "#add_to_collection_0" "797839153"
    
    Assign_Imps_List[\"🟰 <em></em><br/>Assign Imps List"/]:::assignments
    click Assign_Imps_List "#assign_imps_list" "2652319239"
    
    Collect_CustomReserve_Imp[\"🟰 <em></em><br/>Collect Custom/Reserve Imp"/]:::assignments
    click Collect_CustomReserve_Imp "#collect_customreserve_imp" "3962894351"
    
    Collect_Sallus_Imp[\"🟰 <em></em><br/>Collect Sallus Imp"/]:::assignments
    click Collect_Sallus_Imp "#collect_sallus_imp" "1733029600"
    
    Collect_Saver_Imp[\"🟰 <em></em><br/>Collect Saver Imp"/]:::assignments
    click Collect_Saver_Imp "#collect_saver_imp" "1972788215"
    
    Collect_Simply_Imp[\"🟰 <em></em><br/>Collect Simply Imp"/]:::assignments
    click Collect_Simply_Imp "#collect_simply_imp" "2023024667"
    
    Collect_Simply_RKO[\"🟰 <em></em><br/>Collect Simply RKO"/]:::assignments
    click Collect_Simply_RKO "#collect_simply_rko" "2908033007"
    
    Collect_Simply_TPA[\"🟰 <em></em><br/>Collect Simply TPA"/]:::assignments
    click Collect_Simply_TPA "#collect_simply_tpa" "801971814"
    
    Wipe_Variable[\"🟰 <em></em><br/>Wipe Variable"/]:::assignments
    click Wipe_Variable "#wipe_variable" "3631934970"
    
    Direct_or_Advisor_Sourced{"🔀 <em></em><br/>Direct or Advisor-Sourced?"}:::decisions
    click Direct_or_Advisor_Sourced "#direct_or_advisor_sourced" "832015"
    
    Imp_Completed{"🔀 <em></em><br/>Imp Completed?"}:::decisions
    click Imp_Completed "#imp_completed" "2390488112"
    
    Service_Option_Check{"🔀 <em></em><br/>Service Option Check"}:::decisions
    click Service_Option_Check "#service_option_check" "2294719508"
    
    Step_Type{"🔀 <em></em><br/>Step Type"}:::decisions
    click Step_Type "#step_type" "983333829"
    
    Grab_Imp_Info{{"🔁 <em></em><br/>Grab Imp Info"}}:::loops
    click Grab_Imp_Info "#grab_imp_info" "1730940859"
    
    Loop_Through_Advisors_Related_to_Imp{{"🔁 <em></em><br/>Loop Through Advisors Related to Imp"}}:::loops
    click Loop_Through_Advisors_Related_to_Imp "#loop_through_advisors_related_to_imp" "3997424906"
    
    Get_Associated_Advisors[("🔍 <em></em><br/>Get Associated Advisors")]:::recordLookups
    click Get_Associated_Advisors "#get_associated_advisors" "2712121392"
    
    Get_Associations_to_other_Plans[("🔍 <em></em><br/>Get Associations to other Plans")]:::recordLookups
    click Get_Associations_to_other_Plans "#get_associations_to_other_plans" "2370892511"
    
    Update_Contacts[("🛠️ <em></em><br/>Update Contacts")]:::recordUpdates
    click Update_Contacts "#update_contacts" "2200796604"
    
    Update_Plan[("🛠️ <em></em><br/>Update Plan")]:::recordUpdates
    click Update_Plan "#update_plan" "256944112"
    
    Add_to_Collection_0 --> Loop_Through_Advisors_Related_to_Imp
    Assign_Imps_List --> Add_to_Collection_0
    Collect_CustomReserve_Imp --> Grab_Imp_Info
    Collect_Sallus_Imp --> Grab_Imp_Info
    Collect_Saver_Imp --> Grab_Imp_Info
    Collect_Simply_Imp --> Grab_Imp_Info
    Collect_Simply_RKO --> Grab_Imp_Info
    Collect_Simply_TPA --> Grab_Imp_Info
    Wipe_Variable --> Grab_Imp_Info
    Direct_or_Advisor_Sourced --> |"Advisor-Sourced"| Loop_Through_Advisors_Related_to_Imp
    Direct_or_Advisor_Sourced --> |"Direct"| END_Direct_or_Advisor_Sourced
    Imp_Completed --> |"Yes"| Grab_Imp_Info
    Imp_Completed --> |"No"| Step_Type
    Service_Option_Check --> |"Service Option Changed"| Update_Plan
    Service_Option_Check --> |"Service Option Unchanged"| Get_Associated_Advisors
    Step_Type --> |"Custom/Reserve"| Collect_CustomReserve_Imp
    Step_Type --> |"Saver"| Collect_Saver_Imp
    Step_Type --> |"Simply"| Collect_Simply_Imp
    Step_Type --> |"Simply TPA"| Collect_Simply_TPA
    Step_Type --> |"Simply RKO"| Collect_Simply_RKO
    Step_Type --> |"Sallus"| Collect_Sallus_Imp
    Step_Type --> |"Default Outcome"| END_Step_Type
    Grab_Imp_Info --> |"For Each"|Imp_Completed
    Grab_Imp_Info ---> |"After Last"|Assign_Imps_List
    Loop_Through_Advisors_Related_to_Imp --> |"For Each"|Get_Associations_to_other_Plans
    Loop_Through_Advisors_Related_to_Imp ---> |"After Last"|Update_Contacts
    Get_Associated_Advisors --> Direct_or_Advisor_Sourced
    Get_Associations_to_other_Plans --> Wipe_Variable
    Update_Contacts --> END_Update_Contacts
    Update_Plan --> Get_Associated_Advisors
    START -->  Service_Option_Check
    END_Direct_or_Advisor_Sourced(( END )):::endClass
    END_Step_Type(( END )):::endClass
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
    |Object|Implementation__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create And Update|
    |Label|Implementation | Update | Update Active Imps List|
    |Status|Obsolete|
    |Interview Label|Implementation | Update | Update Active Imps List {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Service_Option_Check](#service_option_check)|
    |Next Node|[Service_Option_Check](#service_option_check)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |advisorContact|SObject|⬜|✅|✅|Contact|<!-- -->|
    |advisorContactCollection|SObject|✅|✅|✅|Contact|<!-- -->|
    |allActiveImps|String|⬜|✅|✅|<!-- -->|<!-- -->|
    |associatedAdvisors|SObject|✅|✅|✅|Associated_Contact__c|<!-- -->|
    |enrollmentLink|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |customReserveStatus|String|IF(({!Grab_Imp_Info.Implementation_Stage__c} = "Implementation Started" ||<br/>{!Grab_Imp_Info.Implementation_Stage__c} = "OPD/PRR Requested" ||<br/>{!Grab_Imp_Info.Implementation_Stage__c} = "OPD/PRR Scheduled"),<br/><br/>{!Grab_Imp_Info.Implementation__r.Name} + " is on Step 1 of 8. Their next step is to schedule the introductory call with their Implementation Specialist." + BR() + BR(),<br/><br/>IF(AND({!Grab_Imp_Info.Implementation_Stage__c} = "OPD/PRR Complete",<br/>ISNULL({!Grab_Imp_Info.Payroll_Schedule_Confirmed__c}),<br/>ISNULL({!Grab_Imp_Info.Funding_Account_Confirmed__c}),<br/>ISNULL({!Grab_Imp_Info.Intro_to_K_oncierge_Complete__c})),<br/>{!Grab_Imp_Info.Implementation__r.Name} + " is on Step 2 of 8. Their next step is to enter the payroll schedule, funding account and company information on the Ubiquity site to facilitate the plan’s ACH setup." + BR() + BR(),<br/><br/>IF(AND({!Grab_Imp_Info.Implementation_Stage__c} = "OPD/PRR Complete",<br/>NOT(ISNULL({!Grab_Imp_Info.Payroll_Schedule_Confirmed__c})),<br/>NOT(ISNULL({!Grab_Imp_Info.Funding_Account_Confirmed__c})),<br/>ISNULL({!Grab_Imp_Info.Intro_to_K_oncierge_Complete__c})),<br/>{!Grab_Imp_Info.Implementation__r.Name} + " is on Step 3 of 8. Their next step is to sign the ACH application. This was emailed to the trustee from dse@docusign.net." + BR() + BR(),<br/><br/>IF({!Grab_Imp_Info.Implementation_Stage__c} = "Pending Document Signature",<br/>{!Grab_Imp_Info.Implementation__r.Name} + " is on Step 4 of 8 Their next step is to sign the remaining plan documents." + BR() + BR(),<br/><br/>IF({!Grab_Imp_Info.Implementation_Stage__c} = "Census and Payroll Instructions Sent",<br/>{!Grab_Imp_Info.Implementation__r.Name} + " is on Step 5 of 8. Their next step is to watch the census video and upload the required employee census data to the Ubiquity site." + BR() + BR(),<br/><br/>IF(AND({!Grab_Imp_Info.Implementation_Stage__c} = "Census/Eligibility Uploaded", ISNULL({!Grab_Imp_Info.Intro_to_K_oncierge_Complete__c}),<br/>ISNULL({!Grab_Imp_Info.K_oncierge_Initial_Call__c}),<br/>ISNULL({!Grab_Imp_Info.X1st_Payroll_Date__c})),<br/>{!Grab_Imp_Info.Implementation__r.Name} + " is on Step 6 of 8. Their next step is to ensure the Enrollment Kit is sent to employees and set up an enrollment training session with Ubiquity." + BR() + BR(),<br/><br/>IF(AND({!Grab_Imp_Info.Implementation_Stage__c} = "Census/Eligibility Uploaded", NOT(ISNULL({!Grab_Imp_Info.Intro_to_K_oncierge_Complete__c})),<br/>ISNULL({!Grab_Imp_Info.K_oncierge_Initial_Call__c}),<br/>ISNULL({!Grab_Imp_Info.X1st_Payroll_Date__c})),<br/>{!Grab_Imp_Info.Implementation__r.Name} + " is on Step 7 of 8. Their next step is the complete the questionnaire and schedule a call with our Payroll (K)oncierge to complete initial payroll setup." + BR() + BR(),<br/><br/>IF(AND({!Grab_Imp_Info.Implementation_Stage__c} = "Census/Eligibility Uploaded", NOT(ISNULL({!Grab_Imp_Info.Intro_to_K_oncierge_Complete__c})),<br/>NOT(ISNULL({!Grab_Imp_Info.K_oncierge_Initial_Call__c})),<br/>ISNULL({!Grab_Imp_Info.X1st_Payroll_Date__c})),<br/>{!Grab_Imp_Info.Implementation__r.Name} + " is on Step 8 of 8. Their next step is to schedule and attend a training call to report the plan’s first 401(k) contributions. If your client is enrolling in payroll integration services, they will be responsible for reporting 401(k) contributions until the one-time payroll integration setup has been completed." + BR() + BR(),<br/><br/>IF({!Grab_Imp_Info.Implementation_Stage__c} = "1st Payroll Submitted",<br/>{!Grab_Imp_Info.Implementation__r.Name} + " has reported the plan’s first 401(k) contributions. Their next step is to wait for contributions to process and wrap up any outstanding payroll setup items with our Payroll (K)oncierge." + BR() + BR(),<br/><br/>{!Grab_Imp_Info.Implementation__r.Name} + " is currently working with their Implementation Specialist on the plan setup." + BR() + BR())))))))))|<!-- -->|
    |sallusStatus|String|IF({!Grab_Imp_Info.Implementation_Stage__c} = "Pending Document Signature",<br/>{!Grab_Imp_Info.Implementation__r.Name} + " is on Step 1 of 7. Their next step is to sign the remaining plan documents." + BR() + BR(),<br/><br/>IF({!Grab_Imp_Info.Implementation_Stage__c} = "Pending Funding Account Setup",<br/>{!Grab_Imp_Info.Implementation__r.Name} + " is on Step 2 of 7. Their next step is to enter the payroll schedule, funding account and company information on the Ubiquity site to facilitate the plan’s ACH setup." + BR() + BR(),<br/><br/>IF({!Grab_Imp_Info.Implementation_Stage__c} = "Pending Client ACH Signature",<br/>{!Grab_Imp_Info.Implementation__r.Name} + " is on Step 3 of 7. Their next step is to sign the ACH application. This was emailed to the trustee from dse@docusign.net." + BR() + BR(),<br/><br/>IF({!Grab_Imp_Info.Implementation_Stage__c} = "Census and Payroll Instructions Sent",<br/>{!Grab_Imp_Info.Implementation__r.Name} + " is on Step 4 of 7. Their next step is to watch the census video and upload the required employee census data to the Ubiquity site."+ BR() + BR(),<br/><br/>IF(AND({!Grab_Imp_Info.Implementation_Stage__c} = "Census/Eligibility Uploaded", ISNULL({!Grab_Imp_Info.Intro_to_K_oncierge_Complete__c}),<br/>ISNULL({!Grab_Imp_Info.K_oncierge_Initial_Call__c}),<br/>ISNULL({!Grab_Imp_Info.X1st_Payroll_Date__c})),<br/>{!Grab_Imp_Info.Implementation__r.Name} + " is on Step 5 of 7. Their next step is to ensure the Enrollment Kit is sent to employees. " + BR() + BR(),<br/><br/>IF(AND({!Grab_Imp_Info.Implementation_Stage__c} = "Census/Eligibility Uploaded", NOT(ISNULL({!Grab_Imp_Info.Intro_to_K_oncierge_Complete__c})),<br/>ISNULL({!Grab_Imp_Info.K_oncierge_Initial_Call__c}),<br/>ISNULL({!Grab_Imp_Info.X1st_Payroll_Date__c})),<br/>{!Grab_Imp_Info.Implementation__r.Name} + " is on Step 6 of 7. Their next step is the complete the questionnaire and schedule a call with our Payroll (K)oncierge to complete initial payroll setup." + BR() + BR(),<br/><br/>IF(AND({!Grab_Imp_Info.Implementation_Stage__c} = "Census/Eligibility Uploaded", NOT(ISNULL({!Grab_Imp_Info.Intro_to_K_oncierge_Complete__c})),<br/>NOT(ISNULL({!Grab_Imp_Info.K_oncierge_Initial_Call__c})),<br/>ISNULL({!Grab_Imp_Info.X1st_Payroll_Date__c})),<br/>{!Grab_Imp_Info.Implementation__r.Name} + " is on Step 7 of 7. Their next step is to schedule and attend a training call to report the plan’s first 401(k) contributions. If your client is enrolling in payroll integration services, they will be responsible for reporting 401(k) contributions until the one-time payroll integration setup has been completed." + BR() + BR(),<br/><br/>IF({!Grab_Imp_Info.Implementation_Stage__c} = "1st Payroll Submitted",<br/>{!Grab_Imp_Info.Implementation__r.Name} + " has reported the plan’s first 401(k) contributions. . Their next step is to wait for contributions to process and wrap up any outstanding payroll setup items with our Payroll (K)oncierge." + BR() + BR(),<br/><br/>{!Grab_Imp_Info.Implementation__r.Name} + " is currently working with their Implementation Specialist on the plan setup."+ BR() + BR()))))))))|<!-- -->|
    |saverStatus|String|IF(({!Grab_Imp_Info.Implementation_Stage__c} = "Implementation Started" ||<br/>{!Grab_Imp_Info.Implementation_Stage__c} = "OPD/PRR Requested" ||<br/>{!Grab_Imp_Info.Implementation_Stage__c} = "OPD/PRR Scheduled"),<br/>{!Grab_Imp_Info.Implementation__r.Name} + " is on Step 1 of 8. Their next step is to schedule the introductory call with their Implementation Specialist." + BR() + BR(),<br/><br/>IF(AND({!Grab_Imp_Info.Implementation_Stage__c} = "OPD/PRR Complete",<br/>ISNULL({!Grab_Imp_Info.Payroll_Schedule_Confirmed__c}),<br/>ISNULL({!Grab_Imp_Info.Funding_Account_Confirmed__c}),<br/>ISNULL({!Grab_Imp_Info.Intro_to_K_oncierge_Complete__c})),<br/>{!Grab_Imp_Info.Implementation__r.Name} + " is on Step 2 of 8. Their next step is to enter the payroll schedule, funding account and company information on the Ubiquity site to facilitate the plan’s ACH setup." + BR() + BR(),<br/><br/>IF(AND({!Grab_Imp_Info.Implementation_Stage__c} = "OPD/PRR Complete",<br/>NOT(ISNULL({!Grab_Imp_Info.Payroll_Schedule_Confirmed__c})),<br/>NOT(ISNULL({!Grab_Imp_Info.Funding_Account_Confirmed__c})),<br/>ISNULL({!Grab_Imp_Info.Intro_to_K_oncierge_Complete__c})),<br/>{!Grab_Imp_Info.Implementation__r.Name} + " is on Step 3 of 8. Their next step is to sign the ACH application. This was emailed to the trustee from dse@docusign.net." + BR() + BR(),<br/><br/>IF({!Grab_Imp_Info.Implementation_Stage__c} = "Pending Document Signature",<br/>{!Grab_Imp_Info.Implementation__r.Name} + " is on Step 4 of 8 Their next step is to sign the remaining plan documents." + BR() + BR(),<br/><br/>IF({!Grab_Imp_Info.Implementation_Stage__c} = "Census and Payroll Instructions Sent",<br/>{!Grab_Imp_Info.Implementation__r.Name} + " is on Step 5 of 8. Their next step is to watch the census video and upload the required employee census data to the Ubiquity site." + BR() + BR(),<br/><br/>IF(AND({!Grab_Imp_Info.Implementation_Stage__c} = "Census/Eligibility Uploaded", ISNULL({!Grab_Imp_Info.Intro_to_K_oncierge_Complete__c}),<br/>ISNULL({!Grab_Imp_Info.K_oncierge_Initial_Call__c}),<br/>ISNULL({!Grab_Imp_Info.X1st_Payroll_Date__c})),<br/>{!Grab_Imp_Info.Implementation__r.Name} + " is on Step 6 of 8. Their next step is to ensure the Enrollment Kit is sent to employees." + BR() + BR(),<br/><br/>IF(AND({!Grab_Imp_Info.Implementation_Stage__c} = "Census/Eligibility Uploaded", NOT(ISNULL({!Grab_Imp_Info.Intro_to_K_oncierge_Complete__c})),<br/>ISNULL({!Grab_Imp_Info.K_oncierge_Initial_Call__c}),<br/>ISNULL({!Grab_Imp_Info.X1st_Payroll_Date__c})),<br/>{!Grab_Imp_Info.Implementation__r.Name} + " is on Step 7 of 8. Their next step is the complete the questionnaire and schedule a call with our Payroll (K)oncierge to complete initial payroll setup." + BR() + BR(),<br/><br/>IF(AND({!Grab_Imp_Info.Implementation_Stage__c} = "Census/Eligibility Uploaded", NOT(ISNULL({!Grab_Imp_Info.Intro_to_K_oncierge_Complete__c})),<br/>NOT(ISNULL({!Grab_Imp_Info.K_oncierge_Initial_Call__c})),<br/>ISNULL({!Grab_Imp_Info.X1st_Payroll_Date__c})),<br/>{!Grab_Imp_Info.Implementation__r.Name} + " is on Step 8 of 8. Their next step is to schedule and attend a training call to report the plan’s first 401(k) contributions. If your client is enrolling in payroll integration services, they will be responsible for reporting 401(k) contributions until the one-time payroll integration setup has been completed." + BR() + BR(),<br/><br/>IF({!Grab_Imp_Info.Implementation_Stage__c} = "1st Payroll Submitted",<br/>{!Grab_Imp_Info.Implementation__r.Name} + " has reported the plan’s first 401(k) contributions. Their next step is to wait for contributions to process and wrap up any outstanding payroll setup items with our Payroll (K)oncierge." + BR() + BR(),<br/><br/>{!Grab_Imp_Info.Implementation__r.Name} + " is currently working with their Implementation Specialist on the plan setup." + BR() + BR())))))))))|<!-- -->|
    |simplyImplementationStatus|String|IF(({!Grab_Imp_Info.Implementation_Stage__c} = "Implementation Started" || {!Grab_Imp_Info.Implementation_Stage__c} = "Pending Document Signature"),<br/>{!Grab_Imp_Info.Implementation__r.Name} + " is on Step 1 of 6. Their next step is to sign the remaining plan documents." + BR() + BR(),<br/><br/>IF({!Grab_Imp_Info.Implementation_Stage__c} = "Pending Funding Account Setup",<br/>{!Grab_Imp_Info.Implementation__r.Name} + " is on Step 2 of 6. Their next step is to enter the payroll schedule, funding account and company information on the Ubiquity site to facilitate the plan’s ACH setup." + BR() + BR(),<br/><br/>IF({!Grab_Imp_Info.Implementation_Stage__c} = "Pending Client ACH Signature",<br/>{!Grab_Imp_Info.Implementation__r.Name} + " is on Step 3 of 6. Their next step is to sign the ACH application. This was emailed to the trustee from dse@docusign.net." + BR() + BR(),<br/><br/>IF({!Grab_Imp_Info.Implementation_Stage__c} = "Census and Payroll Instructions Sent",<br/>{!Grab_Imp_Info.Implementation__r.Name} + " is on Step 4 of 6. Their next step is to watch the census video and upload the required employee census data to the Ubiquity site."+ BR() + BR(),<br/><br/>IF(AND({!Grab_Imp_Info.Implementation_Stage__c} = "Census/Eligibility Uploaded", ISNULL({!Grab_Imp_Info.Intro_to_K_oncierge_Complete__c})),<br/>{!Grab_Imp_Info.Implementation__r.Name} + " is on Step 5 of 6. Their next step is to ensure the Enrollment Kit is sent to employees. " + BR() + BR(),<br/><br/>IF(AND({!Grab_Imp_Info.Implementation_Stage__c} = "Census/Eligibility Uploaded", NOT(ISNULL({!Grab_Imp_Info.Intro_to_K_oncierge_Complete__c}))),<br/>{!Grab_Imp_Info.Implementation__r.Name} + " is on Step 6 of 6. Their next step is to complete the questionnaire, schedule a call with our Payroll (K)oncierge to complete initial payroll setup, and attend a training call to report the plan’s first 401(k) contributions. If your client is enrolling in payroll integration services, they will be responsible for reporting 401(k) contributions until the one-time payroll integration setup has been completed." + BR() + BR(),<br/><br/><br/>IF({!Grab_Imp_Info.Implementation_Stage__c} = "1st Payroll Submitted",<br/>{!Grab_Imp_Info.Implementation__r.Name} + " has reported the plan’s first 401(k) contributions. . Their next step is to wait for contributions to process and wrap up any outstanding payroll setup items with our Payroll (K)oncierge." + BR() + BR(),<br/><br/>{!Grab_Imp_Info.Implementation__r.Name} + " is currently working with their Implementation Specialist on the plan setup."+ BR() + BR())))))))|<!-- -->|
    |simplyRKOImplementationStatus|String|IF(({!Grab_Imp_Info.Implementation_Stage__c} = "Implementation Started" || {!Grab_Imp_Info.Implementation_Stage__c} = "Pending Document Signature"),<br/>{!Grab_Imp_Info.Implementation__r.Name} + " is on Step 1 of 7 Their next step is to sign the remaining plan documents and (optional) schedule the introductory call with their Implementation Specialist." + BR() + BR(),<br/><br/>IF(AND({!Grab_Imp_Info.Implementation_Stage__c} = "Pending Funding Account Setup",<br/>ISNULL({!Grab_Imp_Info.TPA_Documents_Uploaded__c})),<br/>{!Grab_Imp_Info.Implementation__r.Name} + " is on Step 2 of 7. The next step is for the TPA to upload the Summary Plan Description (SPD) and Fee Disclosure (if available)." + BR() + BR(),<br/><br/>IF(AND({!Grab_Imp_Info.Implementation_Stage__c} = "Pending Funding Account Setup",<br/>NOT(ISNULL({!Grab_Imp_Info.TPA_Documents_Uploaded__c}))),<br/>{!Grab_Imp_Info.Implementation__r.Name} + " is on Step 3 of 7. Their next step is to enter the payroll schedule, funding account and company information on the Ubiquity site to facilitate the plan’s ACH setup." + BR() + BR(),<br/><br/>IF(AND({!Grab_Imp_Info.Implementation_Stage__c} = "Pending Client ACH Signature",<br/>ISNULL({!Grab_Imp_Info.TPA_Documents_Uploaded__c})),<br/>{!Grab_Imp_Info.Implementation__r.Name} + " is on Step 4 of 7. Their next step is to sign the ACH application. This was emailed to the trustee from dse@docusign.net. Also, the TPA needs to upload the Summary Plan Description (SPD) and Fee Disclosure (if available)." + BR() + BR(),<br/><br/>IF(AND({!Grab_Imp_Info.Implementation_Stage__c} = "Pending Client ACH Signature",<br/>NOT(ISNULL({!Grab_Imp_Info.TPA_Documents_Uploaded__c}))),<br/>{!Grab_Imp_Info.Implementation__r.Name} + "is on Step 4 of 7. Their next step is to sign the ACH application. This was emailed to the trustee from dse@docusign.net." + BR() + BR(),<br/><br/>IF({!Grab_Imp_Info.Implementation_Stage__c} = "Census and Payroll Instructions Sent",<br/>{!Grab_Imp_Info.Implementation__r.Name} + " is on Step 5 of 7. Their next step is to watch the census video and upload the required employee census data to the Ubiquity site." + BR() + BR(),<br/><br/>IF(AND({!Grab_Imp_Info.Implementation_Stage__c} = "Census/Eligibility Uploaded", ISNULL({!Grab_Imp_Info.Intro_to_K_oncierge_Complete__c})),<br/>{!Grab_Imp_Info.Implementation__r.Name} + " is on Step 6 of 7. Their next step is to ensure the Enrollment Kit is sent to employees." + BR() + BR(),<br/><br/>IF(AND({!Grab_Imp_Info.Implementation_Stage__c} = "Census/Eligibility Uploaded", NOT(ISNULL({!Grab_Imp_Info.Intro_to_K_oncierge_Complete__c}))),<br/>{!Grab_Imp_Info.Implementation__r.Name} + " is on Step 7 of 7. Their next step is to follow the payroll setup instructions that were emailed to them, and if more support is needed, to schedule a call with our Payroll (K)oncierge. If your client would like to enroll in payroll integration services, they will need to schedule a call with the (K)oncierge. Note: In the meantime, they will still need to manually report 401(k) contributions." + BR() + BR(),<br/><br/><br/>IF({!Grab_Imp_Info.Implementation_Stage__c} = "1st Payroll Submitted",<br/>{!Grab_Imp_Info.Implementation__r.Name} + " has reported the plan’s first 401(k) contributions. Their next step is to wait for contributions to process and wrap up any outstanding payroll setup items with our Payroll (K)oncierge." + BR() + BR(),<br/><br/>{!Grab_Imp_Info.Implementation__r.Name} + " is currently working with their Implementation Specialist on the plan setup."+ BR() + BR())))))))))|<!-- -->|
    |simplyStatusRKOTPA|String|IF(({!Grab_Imp_Info.Implementation_Stage__c} = "Implementation Started" || {!Grab_Imp_Info.Implementation_Stage__c} = "Pending Document Signature"),<br/>{!Grab_Imp_Info.Implementation__r.Name} + " is on Step 1 of 7 Their next step is to sign the remaining plan documents and (optional) schedule the introductory call with their Implementation Specialist." + BR() + BR(),<br/><br/>IF(AND({!Grab_Imp_Info.Implementation_Stage__c} = "Pending Funding Account Setup",<br/>ISNULL({!Grab_Imp_Info.TPA_Documents_Uploaded__c})),<br/>{!Grab_Imp_Info.Implementation__r.Name} + " is on Step 2 of 7. The next step is for you, the TPA, is to upload the Summary Plan Description (SPD) and Fee Disclosure (if available)." + BR() + BR(),<br/><br/>IF(AND({!Grab_Imp_Info.Implementation_Stage__c} = "Pending Funding Account Setup",<br/>NOT(ISNULL({!Grab_Imp_Info.TPA_Documents_Uploaded__c}))),<br/>{!Grab_Imp_Info.Implementation__r.Name} + " is on Step 3 of 7. Their next step is to enter the payroll schedule, funding account and company information on the Ubiquity site to facilitate the plan’s ACH setup." + BR() + BR(),<br/><br/>IF(AND({!Grab_Imp_Info.Implementation_Stage__c} = "Pending Client ACH Signature",<br/>ISNULL({!Grab_Imp_Info.TPA_Documents_Uploaded__c})),<br/>{!Grab_Imp_Info.Implementation__r.Name} + " is on Step 4 of 7. Their next step is to sign the ACH application. This was emailed to the trustee from dse@docusign.net. The next step for you, the TPA, is to upload the Summary Plan Description (SPD) and Fee Disclosure (if available)." + BR() + BR(),<br/><br/>IF(AND({!Grab_Imp_Info.Implementation_Stage__c} = "Pending Client ACH Signature",<br/>NOT(ISNULL({!Grab_Imp_Info.TPA_Documents_Uploaded__c}))),<br/>{!Grab_Imp_Info.Implementation__r.Name} + "is on Step 4 of 7. Their next step is to sign the ACH application. This was emailed to the trustee from dse@docusign.net." + BR() + BR(),<br/><br/>IF({!Grab_Imp_Info.Implementation_Stage__c} = "Census and Payroll Instructions Sent",<br/>{!Grab_Imp_Info.Implementation__r.Name} + " is on Step 5 of 7. Their next step is to watch the census video and upload the required employee census data to the Ubiquity site." + BR() + BR(),<br/><br/>IF(AND({!Grab_Imp_Info.Implementation_Stage__c} = "Census/Eligibility Uploaded", ISNULL({!Grab_Imp_Info.Intro_to_K_oncierge_Complete__c})),<br/>{!Grab_Imp_Info.Implementation__r.Name} + " is on Step 6 of 7. Their next step is to ensure the Enrollment Kit is sent to employees." + BR() + BR(),<br/><br/>IF(AND({!Grab_Imp_Info.Implementation_Stage__c} = "Census/Eligibility Uploaded", NOT(ISNULL({!Grab_Imp_Info.Intro_to_K_oncierge_Complete__c}))),<br/>{!Grab_Imp_Info.Implementation__r.Name} + " is on Step 7 of 7. Their next step is to follow the payroll setup instructions that were emailed to them, and if more support is needed, to schedule a call with our Payroll (K)oncierge. If your client would like to enroll in payroll integration services, they will need to schedule a call with the (K)oncierge. Note: In the meantime, they will still need to manually report 401(k) contributions." + BR() + BR(),<br/><br/><br/>IF({!Grab_Imp_Info.Implementation_Stage__c} = "1st Payroll Submitted",<br/>{!Grab_Imp_Info.Implementation__r.Name} + " has reported the plan’s first 401(k) contributions. Their next step is to wait for contributions to process and wrap up any outstanding payroll setup items with our Payroll (K)oncierge." + BR() + BR(),<br/><br/>{!Grab_Imp_Info.Implementation__r.Name} + " is currently working with their Implementation Specialist on the plan setup."+ BR() + BR())))))))))|<!-- -->|
    
    
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
    
    
    
    
    ### Collect_CustomReserve_Imp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Collect Custom/Reserve Imp|
    |Connector|[Grab_Imp_Info](#grab_imp_info)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |allActiveImps| Add|customReserveStatus|
    
    
    
    
    ### Collect_Sallus_Imp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Collect Sallus Imp|
    |Connector|[Grab_Imp_Info](#grab_imp_info)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |allActiveImps| Add|sallusStatus|
    
    
    
    
    ### Collect_Saver_Imp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Collect Saver Imp|
    |Connector|[Grab_Imp_Info](#grab_imp_info)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |allActiveImps| Add|saverStatus|
    
    
    
    
    ### Collect_Simply_Imp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Collect Simply Imp|
    |Connector|[Grab_Imp_Info](#grab_imp_info)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |allActiveImps| Add|simplyImplementationStatus|
    
    
    
    
    ### Collect_Simply_RKO
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Collect Simply RKO|
    |Connector|[Grab_Imp_Info](#grab_imp_info)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |allActiveImps| Add|simplyRKOImplementationStatus|
    
    
    
    
    ### Collect_Simply_TPA
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Collect Simply TPA|
    |Connector|[Grab_Imp_Info](#grab_imp_info)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |allActiveImps| Add|simplyStatusRKOTPA|
    
    
    
    
    ### Wipe_Variable
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Wipe Variable|
    |Connector|[Grab_Imp_Info](#grab_imp_info)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |allActiveImps| Assign|stringValue: ''<br/>|
    
    
    
    
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
    |Default Connector|[Step_Type](#step_type)|
    |Default Connector Label|No|
    
    
    #### Rule Yes (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Grab_Imp_Info](#grab_imp_info)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Grab_Imp_Info.Implementation_Status__c| Equal To|Completed|
    |2|Grab_Imp_Info.Implementation_Status__c| Equal To|No Start|
    |3|Grab_Imp_Info.Implementation_Status__c| Equal To|Plan Stalled|
    |4|Grab_Imp_Info.Implementation_Status__c| Equal To|On Hold|
    |5|Grab_Imp_Info.Implementation_Status__c| Equal To|Passive|
    
    
    
    
    ### Service_Option_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Service Option Check|
    |Default Connector|[Get_Associated_Advisors](#get_associated_advisors)|
    |Default Connector Label|Service Option Unchanged|
    
    
    #### Rule Service_Option_Changed (Service Option Changed)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Plan](#update_plan)|
    |Condition Logic|(1 OR 2) AND 3|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Service_Option__c| Is Changed|✅|
    |2|$Record.OwnerId| Is Changed|✅|
    |3|$Record.Implementation_Status__c| Contains|In Progress|
    
    
    
    
    ### Step_Type
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Step Type|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Custom_Reserve (Custom/Reserve)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Collect_CustomReserve_Imp](#collect_customreserve_imp)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Service_Option__c| Equal To|Custom(k)|
    |2|$Record.Service_Option__c| Equal To|Reserve(k)|
    
    
    
    
    #### Rule Saver (Saver)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Collect_Saver_Imp](#collect_saver_imp)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Service_Option__c| Equal To|Saver(k)|
    
    
    
    
    #### Rule Simply (Simply)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Collect_Simply_Imp](#collect_simply_imp)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Service_Option__c| Equal To|Simply Retirement Bundled|
    |2|$Record.Service_Option__c| Equal To|Simply Retirement|
    
    
    
    
    #### Rule Simply_TPA (Simply TPA)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Collect_Simply_TPA](#collect_simply_tpa)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Grab_Imp_Info.Contact_Role__c| Contains|TPA|
    |2|$Record.Service_Option__c| Equal To|Simply Retirement Unbundled|
    
    
    
    
    #### Rule Simply_RKO (Simply RKO)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Collect_Simply_RKO](#collect_simply_rko)|
    |Condition Logic|1 AND NOT 2|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Service_Option__c| Equal To|Simply Retirement Unbundled|
    |2|Grab_Imp_Info.Contact_Role__c| Contains|TPA|
    
    
    
    
    #### Rule Sallus (Sallus)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Collect_Sallus_Imp](#collect_sallus_imp)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Service_Option__c| Contains|Builder|
    |2|$Record.Service_Option__c| Contains|Partner|
    
    
    
    
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
    
    
    #### Filters (logic: **1 AND (2 OR 3)**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Implementation__c| Equal To|$Record.Id|
    |2|Contact_Role__c| Equal To|Financial Advisor|
    |3|Contact_Role__c| Contains|TPA|
    
    
    
    
    ### Get_Associations_to_other_Plans
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Associated_Contact__c|
    |Label|Get Associations to other Plans|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Store Output Automatically|✅|
    |Connector|[Wipe_Variable](#wipe_variable)|
    
    
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
    
    
    ### Update_Plan
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Plan__c|
    |Label|Update Plan|
    |Connector|[Get_Associated_Advisors](#get_associated_advisors)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Implementation__c| Equal To|$Record.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |OwnerId|$Record.OwnerId|
    |Service_Option__c|$Record.Service_Option__c|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

