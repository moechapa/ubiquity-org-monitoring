# Transitions_After_Trigger_Automated_Cases_and_Emails history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Transitions_After_Trigger_Automated_Cases_and_Emails-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "1341417924"
    
    Copy_1_of_Send_Final_Jotform("📧 <em></em><br/>Send Final Termination Jotform"):::actionCalls
    click Copy_1_of_Send_Final_Jotform "#copy_1_of_send_final_jotform" "915417951"
    
    Send_Email_for_Company_Closing("📧 <em></em><br/>Send Email for Company Closing"):::actionCalls
    click Send_Email_for_Company_Closing "#send_email_for_company_closing" "3554763213"
    
    Send_Email_for_Term_Mergers("📧 <em></em><br/>Send Email for Term/Mergers"):::actionCalls
    click Send_Email_for_Term_Mergers "#send_email_for_term_mergers" "658327506"
    
    Send_Final_Jotform("📧 <em></em><br/>Send Final Decon Jotform"):::actionCalls
    click Send_Final_Jotform "#send_final_jotform" "4084261715"
    
    Send_Final_Val_Email_to_Terms("📧 <em></em><br/>Send Final Val Email to Terms"):::actionCalls
    click Send_Final_Val_Email_to_Terms "#send_final_val_email_to_terms" "2553613424"
    
    Assign_Comp_Id[\"🟰 <em></em><br/>Assign Comp Id"/]:::assignments
    click Assign_Comp_Id "#assign_comp_id" "402884190"
    
    Check_to_See_if_Owner_has_been_changed{"🔀 <em></em><br/>Check to See if Owner has been changed"}:::decisions
    click Check_to_See_if_Owner_has_been_changed "#check_to_see_if_owner_has_been_changed" "2331456523"
    
    Decon_Completed_Final_Jotform{"🔀 <em></em><br/>Decon Completed Final Jotform"}:::decisions
    click Decon_Completed_Final_Jotform "#decon_completed_final_jotform" "3996041821"
    
    Forfeiture_Amount_Entered{"🔀 <em></em><br/>Forfeiture Amount Entered"}:::decisions
    click Forfeiture_Amount_Entered "#forfeiture_amount_entered" "1955447391"
    
    Queue_Found_Check{"🔀 <em></em><br/>Queue Found Check"}:::decisions
    click Queue_Found_Check "#queue_found_check" "3720635087"
    
    Safe_Harbor{"🔀 <em></em><br/>Safe Harbor?"}:::decisions
    click Safe_Harbor "#safe_harbor" "2981022378"
    
    Term_Fee_Case_to_A_F_Decision{"🔀 <em></em><br/>Term Fee Case to A&F?"}:::decisions
    click Term_Fee_Case_to_A_F_Decision "#term_fee_case_to_a_f_decision" "322841421"
    
    Term_Merger_or_Company_Closing{"🔀 <em></em><br/>Term/Merger or Company Closing?"}:::decisions
    click Term_Merger_or_Company_Closing "#term_merger_or_company_closing" "3669328894"
    
    Type{"🔀 <em></em><br/>Type?"}:::decisions
    click Type "#type" "1695741081"
    
    What_Updated{"🔀 <em></em><br/>What Updated?"}:::decisions
    click What_Updated "#what_updated" "1043324177"
    
    Case_to_A_F_to_Turn_Off_Subscription[("➕ <em></em><br/>Case to A&F to Turn Off Subscription")]:::recordCreates
    click Case_to_A_F_to_Turn_Off_Subscription "#case_to_a_f_to_turn_off_subscription" "1533079997"
    
    Case_to_Compliance_to_Allocate_Forfeitures[("➕ <em></em><br/>Case to Compliance to Allocate Forfeitures")]:::recordCreates
    click Case_to_Compliance_to_Allocate_Forfeitures "#case_to_compliance_to_allocate_forfeitures" "1320974025"
    
    Case_to_Compliance_to_Calculate_Safe_Harbor_Contributions[("➕ <em></em><br/>Case to Compliance to Calculate Safe Harbor Contributions")]:::recordCreates
    click Case_to_Compliance_to_Calculate_Safe_Harbor_Contributions "#case_to_compliance_to_calculate_safe_harbor_contributions" "4273802824"
    
    Case_to_RW[("➕ <em></em><br/>Case to RW")]:::recordCreates
    click Case_to_RW "#case_to_rw" "293782589"
    
    Case_to_RW_to_Liquidate_Forfeitures[("➕ <em></em><br/>Case to RW to Liquidate Forfeitures")]:::recordCreates
    click Case_to_RW_to_Liquidate_Forfeitures "#case_to_rw_to_liquidate_forfeitures" "4200500388"
    
    Case_to_Transitions[("➕ <em></em><br/>Case to Transitions")]:::recordCreates
    click Case_to_Transitions "#case_to_transitions" "2708347369"
    
    Copy_1_of_Case_to_Transitions[("➕ <em></em><br/>Copy 1 of Case to Transitions")]:::recordCreates
    click Copy_1_of_Case_to_Transitions "#copy_1_of_case_to_transitions" "2822953783"
    
    Copy_1_of_Copy_1_of_Case_to_Transitions[("➕ <em></em><br/>Fault Email 2 Case to Transitions")]:::recordCreates
    click Copy_1_of_Copy_1_of_Case_to_Transitions "#copy_1_of_copy_1_of_case_to_transitions" "3887862611"
    
    Copy_2_of_Copy_1_of_Copy_1_of_Case_to_Transitions[("➕ <em></em><br/>Fault Email 1 Case to Alexa")]:::recordCreates
    click Copy_2_of_Copy_1_of_Copy_1_of_Case_to_Transitions "#copy_2_of_copy_1_of_copy_1_of_case_to_transitions" "3267810926"
    
    Copy_2_of_Fault_Email_2_Case_to_Transitions[("➕ <em></em><br/>Copy 2 of Fault Email 2 Case to Transitions")]:::recordCreates
    click Copy_2_of_Fault_Email_2_Case_to_Transitions "#copy_2_of_fault_email_2_case_to_transitions" "1802992562"
    
    Term_Fee_Case_to_A_F[("➕ <em></em><br/>Term Fee Case to A&F")]:::recordCreates
    click Term_Fee_Case_to_A_F "#term_fee_case_to_a_f" "2550321065"
    
    Get_Compliance_Queue[("🔍 <em></em><br/>Get Compliance Queue")]:::recordLookups
    click Get_Compliance_Queue "#get_compliance_queue" "270842448"
    
    Copy_1_of_Update_Owner_to_RW[("🛠️ <em></em><br/>Copy 1 of Update Owner to Transitions")]:::recordUpdates
    click Copy_1_of_Update_Owner_to_RW "#copy_1_of_update_owner_to_rw" "2214224429"
    
    Update_Owner_to_Transitions[("🛠️ <em></em><br/>Update Owner to Transitions")]:::recordUpdates
    click Update_Owner_to_Transitions "#update_owner_to_transitions" "3764195444"
    
    Update_Plan_Status[("🛠️ <em></em><br/>Update Plan Status")]:::recordUpdates
    click Update_Plan_Status "#update_plan_status" "13693855"
    
    Update_Plan_to_Inactive[("🛠️ <em></em><br/>Update Plan to Inactive")]:::recordUpdates
    click Update_Plan_to_Inactive "#update_plan_to_inactive" "3738607939"
    
    Launch_Send_Docusign_Flow[["🔗 <em>Subflow</em><br/>Launch Send Docusign Flow"]]:::subflows
    click Launch_Send_Docusign_Flow "#launch_send_docusign_flow" "2455528894"
    
    Copy_1_of_Send_Final_Jotform --> END_Copy_1_of_Send_Final_Jotform
    Copy_1_of_Send_Final_Jotform -. Fault .->Copy_2_of_Copy_1_of_Copy_1_of_Case_to_Transitions
    Send_Email_for_Company_Closing --> Launch_Send_Docusign_Flow
    Send_Email_for_Company_Closing -. Fault .->Copy_1_of_Copy_1_of_Case_to_Transitions
    Send_Email_for_Term_Mergers --> Launch_Send_Docusign_Flow
    Send_Email_for_Term_Mergers -. Fault .->Copy_1_of_Copy_1_of_Case_to_Transitions
    Send_Final_Jotform --> END_Send_Final_Jotform
    Send_Final_Jotform -. Fault .->Copy_2_of_Copy_1_of_Copy_1_of_Case_to_Transitions
    Send_Final_Val_Email_to_Terms --> END_Send_Final_Val_Email_to_Terms
    Send_Final_Val_Email_to_Terms -. Fault .->Copy_2_of_Fault_Email_2_Case_to_Transitions
    Assign_Comp_Id --> What_Updated
    Check_to_See_if_Owner_has_been_changed --> |"No, still queue"| Copy_1_of_Update_Owner_to_RW
    Check_to_See_if_Owner_has_been_changed --> |"Default Outcome"| Update_Plan_Status
    Decon_Completed_Final_Jotform --> |"Yes, Decon"| Case_to_Transitions
    Decon_Completed_Final_Jotform --> |"Default Outcome"| Check_to_See_if_Owner_has_been_changed
    Forfeiture_Amount_Entered --> |"Yes, Amount Entered"| Case_to_RW_to_Liquidate_Forfeitures
    Forfeiture_Amount_Entered --> |"Default Outcome"| Safe_Harbor
    Queue_Found_Check --> |"Queue Found"| Assign_Comp_Id
    Queue_Found_Check --> |"Default Outcome"| What_Updated
    Safe_Harbor --> |"Yes, Safe Harbor"| Case_to_Compliance_to_Calculate_Safe_Harbor_Contributions
    Safe_Harbor --> |"Default Outcome"| END_Safe_Harbor
    Term_Fee_Case_to_A_F_Decision --> |"Yes, Create Term Fee Case"| Term_Fee_Case_to_A_F
    Term_Fee_Case_to_A_F_Decision --> |"Default Outcome"| Term_Merger_or_Company_Closing
    Term_Merger_or_Company_Closing --> |"Yes, Term Merger"| Send_Email_for_Term_Mergers
    Term_Merger_or_Company_Closing --> |"Yes, Company Closing"| Send_Email_for_Company_Closing
    Term_Merger_or_Company_Closing --> |"Default Outcome"| Launch_Send_Docusign_Flow
    Type --> |"Term"| Copy_1_of_Send_Final_Jotform
    Type --> |"Decon"| Send_Final_Jotform
    Type --> |"Default Outcome"| END_Type
    What_Updated --> |"Status to Final Questionnaire Sent"| Update_Owner_to_Transitions
    What_Updated --> |"Status to DS in Progress"| Decon_Completed_Final_Jotform
    What_Updated --> |"Safe Harbor or Forfeiture Updates"| Forfeiture_Amount_Entered
    What_Updated --> |"Final Val Complete for Termination"| Case_to_RW
    What_Updated --> |"Status Set to Complete"| Update_Plan_to_Inactive
    What_Updated --> |"Default Outcome"| END_What_Updated
    Case_to_A_F_to_Turn_Off_Subscription --> END_Case_to_A_F_to_Turn_Off_Subscription
    Case_to_Compliance_to_Allocate_Forfeitures --> Safe_Harbor
    Case_to_Compliance_to_Calculate_Safe_Harbor_Contributions --> END_Case_to_Compliance_to_Calculate_Safe_Harbor_Contributions
    Case_to_RW --> Send_Final_Val_Email_to_Terms
    Case_to_RW_to_Liquidate_Forfeitures --> Case_to_Compliance_to_Allocate_Forfeitures
    Case_to_Transitions --> Update_Plan_Status
    Copy_1_of_Case_to_Transitions --> Update_Plan_Status
    Copy_1_of_Copy_1_of_Case_to_Transitions --> Launch_Send_Docusign_Flow
    Copy_2_of_Copy_1_of_Copy_1_of_Case_to_Transitions --> END_Copy_2_of_Copy_1_of_Copy_1_of_Case_to_Transitions
    Copy_2_of_Fault_Email_2_Case_to_Transitions --> END_Copy_2_of_Fault_Email_2_Case_to_Transitions
    Term_Fee_Case_to_A_F --> Term_Merger_or_Company_Closing
    Get_Compliance_Queue --> Queue_Found_Check
    Copy_1_of_Update_Owner_to_RW --> Copy_1_of_Case_to_Transitions
    Update_Owner_to_Transitions --> Type
    Update_Plan_Status --> Term_Fee_Case_to_A_F_Decision
    Update_Plan_to_Inactive --> Case_to_A_F_to_Turn_Off_Subscription
    START -->  Get_Compliance_Queue
    Launch_Send_Docusign_Flow --> END_Launch_Send_Docusign_Flow
    END_Copy_1_of_Send_Final_Jotform(( END )):::endClass
    END_Send_Final_Jotform(( END )):::endClass
    END_Send_Final_Val_Email_to_Terms(( END )):::endClass
    END_Safe_Harbor(( END )):::endClass
    END_Type(( END )):::endClass
    END_What_Updated(( END )):::endClass
    END_Case_to_A_F_to_Turn_Off_Subscription(( END )):::endClass
    END_Case_to_Compliance_to_Calculate_Safe_Harbor_Contributions(( END )):::endClass
    END_Copy_2_of_Copy_1_of_Copy_1_of_Case_to_Transitions(( END )):::endClass
    END_Copy_2_of_Fault_Email_2_Case_to_Transitions(( END )):::endClass
    END_Launch_Send_Docusign_Flow(( END )):::endClass
    
    
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
    |Object|Transition__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create And Update|
    |Label|Transitions | After Trigger | Automated Cases and Emails|
    |Status|Active|
    |Description|Replaced compliance shared user with new compliance queue|
    |Environments|Default|
    |Interview Label|Transitions | After Trigger | Automated Cases and Emails {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Compliance_Queue](#get_compliance_queue)|
    |Next Node|[Get_Compliance_Queue](#get_compliance_queue)|
    
    
    #### Filters (logic: **1 OR 2 OR 3 OR (4 AND 5) OR (5 AND 6) OR (5 AND 7) OR (5 AND 8)**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Status__c| Equal To|DocuSign in Progress|
    |2|Safe_Harbor_Plan__c| Is Null|<!-- -->|
    |3|Forfeiture_Amount__c| Is Null|<!-- -->|
    |4|Status__c| Equal To|Transition Complete|
    |5|Status__c| Is Changed|✅|
    |6|Status__c| Equal To|Final Questionnaire Sent|
    |7|Status__c| Equal To|Save in Process|
    |8|Status__c| Equal To|Final Valuation Complete|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |activeAddOn|SObject|⬜|✅|⬜|Add_On_Products__c|<!-- -->|
    |caseForA_F|SObject|⬜|✅|⬜|Case|<!-- -->|
    |complianceId|String|⬜|⬜|⬜|<!-- -->|Defaults to compliance shared user.  Should be replaced with compliance queue id|
    |finalFormTemplateId|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |schwabTemplateId|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |doesAFNeedTermFeeCase|Boolean|NOT(ISPICKVAL({!$Record.Service_Option__c}, "Single(k)")) && NOT(ISPICKVAL({!$Record.Service_Option__c}, "Mega Roth Single(k)"))|<!-- -->|
    |formattedName|String|TRIM( LEFT(  {!$Record.Name}, 60))|<!-- -->|
    |isNew|Boolean|ISNEW()|<!-- -->|
    |linkToRecord|String|LEFT($Api.Partner_Server_URL_260, FIND( '/services', $Api.Partner_Server_URL_260)) & {!$Record.Id}|<!-- -->|
    
    
    ## Text Templates
    
    |Name|Text|Description|
    |:-- |:-- |:--  |
    |afCaseSubj|Bill Fee for {!formattedName}'s Transition|<!-- -->|
    |caseSubj|{!$Record.Plan__r.Name} Decon Completed Final Jotform|<!-- -->|
    |finalValErrorDesc|The Final Valuation Complete Email failed to send, most likely because there is no Contact linked on the Transition record or because their email is invalid. Please send the Final Valuation Complete Email template manually.|<!-- -->|
    |payrollCaseDesc|{!$Record.Account__r.Name} has started the Transition process. Please turn off payroll integration for this plan.|<!-- -->|
    |payrollCaseSubj|Turn off Payroll Integration for {!formattedName}|<!-- -->|
    |rpcAlertDesc|{!formattedName} is beginning the transitions process. Please reach out to the original opportunity owner, {!$Record.Plan__r.Opportunity__r.Owner_Full_Name__c}, so they can begin saving the plan. <br/><br/>Link to the transition record here: {!linkToRecord}|<!-- -->|
    |rpcAlertSubj|{!formattedName} is Beginning the Transition Process|<!-- -->|
    |schwabCaseSubjA_FCase|Bill Schwab Transition Fee for {!formattedName}|<!-- -->|
    |shForfeitureCaseDesc|Final Jotform was completed for {!$Record.Name}, please check for Safe Harbor and Forfeitures. If Forfeitures are present, please update the Forfeiture Amount field, if Safe Harbor is "yes", please update Safe Harbor Plan field to "Yes".|<!-- -->|
    |transCaseSubj|Check Forfeiture Balance and Safe Harbor for {!formattedName}|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Copy_1_of_Send_Final_Jotform
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send Final Termination Jotform|
    |Action Type|Email Simple|
    |Action Name|emailSimple|
    |Fault Connector|isGoTo: true<br/>targetReference: Copy_2_of_Copy_1_of_Copy_1_of_Case_to_Transitions<br/>|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|emailSimple|
    |Offset|0|
    |Version String|1.0.1|
    |Sender Type (input)|OrgWideEmailAddress|
    |Sender Address (input)|dontrespond@myubiquity.com|
    |Use Email Template (input)|True|
    |Email Template Id (input)|00XUo000002hWOWMA2|
    |Recipient Id (input)|$Record.Contact__c|
    |Related Record Id (input)|$Record.Id|
    |Log Email On Send (input)|✅|
    
    
    ### Send_Email_for_Company_Closing
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send Email for Company Closing|
    |Action Type|Email Simple|
    |Action Name|emailSimple|
    |Fault Connector|isGoTo: true<br/>targetReference: Copy_1_of_Copy_1_of_Case_to_Transitions<br/>|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|emailSimple|
    |Offset|0|
    |Version String|1.0.1|
    |Sender Type (input)|OrgWideEmailAddress|
    |Sender Address (input)|dontrespond@myubiquity.com|
    |Use Email Template (input)|True|
    |Email Template Id (input)|00XUo000002hWOYMA2|
    |Recipient Id (input)|$Record.Contact__c|
    |Related Record Id (input)|$Record.Id|
    |Log Email On Send (input)|✅|
    |Connector|[Launch_Send_Docusign_Flow](#launch_send_docusign_flow)|
    
    
    ### Send_Email_for_Term_Mergers
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send Email for Term/Mergers|
    |Action Type|Email Simple|
    |Action Name|emailSimple|
    |Fault Connector|[Copy_1_of_Copy_1_of_Case_to_Transitions](#copy_1_of_copy_1_of_case_to_transitions)|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|emailSimple|
    |Offset|0|
    |Version String|1.0.1|
    |Sender Type (input)|OrgWideEmailAddress|
    |Sender Address (input)|dontrespond@myubiquity.com|
    |Use Email Template (input)|True|
    |Email Template Id (input)|00XUo000002hWOXMA2|
    |Recipient Id (input)|$Record.Contact__c|
    |Related Record Id (input)|$Record.Id|
    |Log Email On Send (input)|✅|
    |Connector|[Launch_Send_Docusign_Flow](#launch_send_docusign_flow)|
    
    
    ### Send_Final_Jotform
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send Final Decon Jotform|
    |Action Type|Email Simple|
    |Action Name|emailSimple|
    |Fault Connector|[Copy_2_of_Copy_1_of_Copy_1_of_Case_to_Transitions](#copy_2_of_copy_1_of_copy_1_of_case_to_transitions)|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|emailSimple|
    |Offset|0|
    |Version String|1.0.1|
    |Sender Type (input)|OrgWideEmailAddress|
    |Sender Address (input)|dontrespond@myubiquity.com|
    |Use Email Template (input)|True|
    |Email Template Id (input)|00XUo000002hWOTMA2|
    |Recipient Id (input)|$Record.Contact__c|
    |Related Record Id (input)|$Record.Id|
    |Log Email On Send (input)|✅|
    
    
    ### Send_Final_Val_Email_to_Terms
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send Final Val Email to Terms|
    |Action Type|Email Simple|
    |Action Name|emailSimple|
    |Fault Connector|[Copy_2_of_Fault_Email_2_Case_to_Transitions](#copy_2_of_fault_email_2_case_to_transitions)|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|emailSimple|
    |Offset|0|
    |Version String|1.0.1|
    |Sender Type (input)|OrgWideEmailAddress|
    |Sender Address (input)|dontrespond@myubiquity.com|
    |Use Email Template (input)|True|
    |Email Template Id (input)|00XUo000002hWOVMA2|
    |Recipient Id (input)|$Record.Contact__c|
    |Related Record Id (input)|$Record.Id|
    |Log Email On Send (input)|✅|
    
    
    ### Assign_Comp_Id
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Comp Id|
    |Connector|[What_Updated](#what_updated)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |complianceId| Assign|Get_Compliance_Queue.Id|
    
    
    
    
    ### Check_to_See_if_Owner_has_been_changed
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check to See if Owner has been changed|
    |Default Connector|[Update_Plan_Status](#update_plan_status)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule No_still_queue (No, still queue)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Copy_1_of_Update_Owner_to_RW](#copy_1_of_update_owner_to_rw)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.OwnerId| Not Equal To|00500000006xUkf|
    
    
    
    
    ### Decon_Completed_Final_Jotform
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Decon Completed Final Jotform|
    |Default Connector|[Check_to_See_if_Owner_has_been_changed](#check_to_see_if_owner_has_been_changed)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes_Decon (Yes, Decon)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Case_to_Transitions](#case_to_transitions)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Transition_Type__c| Equal To|Deconversion|
    
    
    
    
    ### Forfeiture_Amount_Entered
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Forfeiture Amount Entered|
    |Default Connector|[Safe_Harbor](#safe_harbor)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes_Amount_Entered (Yes, Amount Entered)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[Case_to_RW_to_Liquidate_Forfeitures](#case_to_rw_to_liquidate_forfeitures)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Forfeiture_Amount__c| Is Blank|⬜|
    
    
    
    
    ### Queue_Found_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Queue Found Check|
    |Default Connector|[What_Updated](#what_updated)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Queue_Found (Queue Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Comp_Id](#assign_comp_id)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|[Get_Compliance_Queue](#get_compliance_queue)| Is Null|⬜|
    
    
    
    
    ### Safe_Harbor
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Safe Harbor?|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes_Safe_Harbor (Yes, Safe Harbor)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[Case_to_Compliance_to_Calculate_Safe_Harbor_Contributions](#case_to_compliance_to_calculate_safe_harbor_contributions)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Safe_Harbor_Plan__c| Equal To|Yes|
    |2|$Record.Safe_Harbor_Funded_In_Term_Year__c| Equal To|No|
    
    
    
    
    #### Rule No_Not_Safe_Harbor (No, Not Safe Harbor)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Safe_Harbor_Plan__c| Equal To|No|
    
    
    
    
    ### Term_Fee_Case_to_A_F_Decision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Term Fee Case to A&F?|
    |Description|Single(k) and Mega Roth Single(k) do not need this case.|
    |Default Connector|[Term_Merger_or_Company_Closing](#term_merger_or_company_closing)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes_Create_Term_Fee_Case (Yes, Create Term Fee Case)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Term_Fee_Case_to_A_F](#term_fee_case_to_a_f)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|doesAFNeedTermFeeCase| Equal To|✅|
    
    
    
    
    ### Term_Merger_or_Company_Closing
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Term/Merger or Company Closing?|
    |Default Connector|[Launch_Send_Docusign_Flow](#launch_send_docusign_flow)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes_Term_Merger (Yes, Term Merger)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Send_Email_for_Term_Mergers](#send_email_for_term_mergers)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Transition_Type__c| Equal To|Termination/Merger|
    
    
    
    
    #### Rule Yes_Company_Closing (Yes, Company Closing)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Send_Email_for_Company_Closing](#send_email_for_company_closing)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Transition_Reason__c| Equal To|Company Closing|
    
    
    
    
    ### Type
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Type?|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Term (Term)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Copy_1_of_Send_Final_Jotform](#copy_1_of_send_final_jotform)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Transition_Type__c| Equal To|Termination|
    
    
    
    
    #### Rule Decon (Decon)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Send_Final_Jotform](#send_final_jotform)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Transition_Type__c| Equal To|Deconversion|
    
    
    
    
    ### What_Updated
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|What Updated?|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Status_to_Final_Questionnaire_Sent (Status to Final Questionnaire Sent)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[Update_Owner_to_Transitions](#update_owner_to_transitions)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Status__c| Equal To|Final Questionnaire Sent|
    
    
    
    
    #### Rule Status_to_DS_in_Progress (Status to DS in Progress)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[Decon_Completed_Final_Jotform](#decon_completed_final_jotform)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Status__c| Equal To|DocuSign in Progress|
    
    
    
    
    #### Rule Safe_Harbor_or_Forfeiture_Updates (Safe Harbor or Forfeiture Updates)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Forfeiture_Amount_Entered](#forfeiture_amount_entered)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Safe_Harbor_Plan__c| Is Changed|✅|
    |2|$Record.Forfeiture_Amount__c| Is Changed|✅|
    
    
    
    
    #### Rule Final_Val_Complete_for_Termination (Final Val Complete for Termination)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[Case_to_RW](#case_to_rw)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Status__c| Equal To|Final Valuation Complete|
    |2|$Record.Transition_Type__c| Equal To|Termination|
    
    
    
    
    #### Rule Status_Set_to_Complete (Status Set to Complete)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[Update_Plan_to_Inactive](#update_plan_to_inactive)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Status__c| Equal To|Transition Complete|
    
    
    
    
    ### Case_to_A_F_to_Turn_Off_Subscription
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Case to A&F to Turn Off Subscription|
    |Store Output Automatically|✅|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|$Record.Account__c|
    |Department__c|Accounting & Finance|
    |Origin|Internal|
    |OwnerId|00500000006yEak|
    |Plan__c|$Record.Plan__c|
    |Sender_Role__c|Sponsor|
    |Subject|Transition Complete, Turn Off Subscription|
    |Transition__c|$Record.Id|
    
    
    
    
    ### Case_to_Compliance_to_Allocate_Forfeitures
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Case to Compliance to Allocate Forfeitures|
    |Store Output Automatically|✅|
    |Connector|[Safe_Harbor](#safe_harbor)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|$Record.Account__c|
    |Department__c|Compliance|
    |Origin|Internal|
    |OwnerId|complianceId|
    |Plan__c|$Record.Plan__c|
    |Sender_Role__c|Sponsor|
    |Subject|Allocate Forfeitures|
    |Transition__c|$Record.Id|
    
    
    
    
    ### Case_to_Compliance_to_Calculate_Safe_Harbor_Contributions
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Case to Compliance to Calculate Safe Harbor Contributions|
    |Store Output Automatically|✅|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|$Record.Account__c|
    |Department__c|Compliance|
    |Origin|Internal|
    |OwnerId|complianceId|
    |Plan__c|$Record.Plan__c|
    |Sender_Role__c|Sponsor|
    |Subject|Calculate Safe Harbor Contributions|
    |Transition__c|$Record.Id|
    
    
    
    
    ### Case_to_RW
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Case to RW|
    |Store Output Automatically|✅|
    |Connector|[Send_Final_Val_Email_to_Terms](#send_final_val_email_to_terms)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|$Record.Account__c|
    |Category__c|Distribution|
    |Department__c|Reconciliations and Withdrawals|
    |Description|Process all pending distribution requests – final valuation complete|
    |Origin|Internal|
    |OwnerId|005Ho00000AnvFJ|
    |Plan__c|$Record.Plan__c|
    |RecordTypeId|012Ho000000NtUeIAK|
    |Sender_Role__c|Saver|
    |Sub_Category__c|Plan Termination|
    |Subject|Final Valuation Complete|
    |Transition__c|$Record.Id|
    
    
    
    
    ### Case_to_RW_to_Liquidate_Forfeitures
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Case to RW to Liquidate Forfeitures|
    |Store Output Automatically|✅|
    |Connector|[Case_to_Compliance_to_Allocate_Forfeitures](#case_to_compliance_to_allocate_forfeitures)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|$Record.Account__c|
    |Department__c|Reconciliations and Withdrawals|
    |Origin|Internal|
    |OwnerId|005Ho00000AnvFJ|
    |Plan__c|$Record.Plan__c|
    |Sender_Role__c|Sponsor|
    |Subject|Liquidate Forfeitures|
    |Transition__c|$Record.Id|
    
    
    
    
    ### Case_to_Transitions
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Case to Transitions|
    |Store Output Automatically|✅|
    |Connector|[Update_Plan_Status](#update_plan_status)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|$Record.Account__c|
    |Department__c|Transitions|
    |Description|Decon transition has completed the final Jotform|
    |Origin|Internal|
    |OwnerId|00500000006xUkf|
    |Plan__c|$Record.Plan__c|
    |Status|New|
    |Subject|caseSubj|
    |Transition__c|$Record.Id|
    
    
    
    
    ### Copy_1_of_Case_to_Transitions
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Copy 1 of Case to Transitions|
    |Store Output Automatically|✅|
    |Connector|[Update_Plan_Status](#update_plan_status)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|$Record.Account__c|
    |Department__c|Transitions|
    |Description|No Attempt Was Made by CE to Save This Plan. Please begin work transitioning plan. Thank you.|
    |Origin|Internal|
    |OwnerId|00500000006xUkf|
    |Plan__c|$Record.Plan__c|
    |Status|New|
    |Subject|Begin Transition Process|
    |Transition__c|$Record.Id|
    
    
    
    
    ### Copy_1_of_Copy_1_of_Case_to_Transitions
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Fault Email 2 Case to Transitions|
    |Store Output Automatically|✅|
    |Connector|isGoTo: true<br/>targetReference: Launch_Send_Docusign_Flow<br/>|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|$Record.Account__c|
    |Department__c|Transitions|
    |Description|Final Email for Company Closing or Term/Merger Failed to Send|
    |Origin|Internal|
    |OwnerId|00500000006xUkf|
    |Plan__c|$Record.Plan__c|
    |Status|New|
    |Subject|Auto Email Failure|
    |Transition__c|$Record.Id|
    
    
    
    
    ### Copy_2_of_Copy_1_of_Copy_1_of_Case_to_Transitions
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Fault Email 1 Case to Alexa|
    |Store Output Automatically|✅|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|$Record.Account__c|
    |Department__c|Transitions|
    |Description|Final Jotform Email Failed to Send. Please send manually.|
    |Origin|Internal|
    |OwnerId|00500000006xUkf|
    |Plan__c|$Record.Plan__c|
    |Status|New|
    |Subject|Auto Email Failure|
    |Transition__c|$Record.Id|
    
    
    
    
    ### Copy_2_of_Fault_Email_2_Case_to_Transitions
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Copy 2 of Fault Email 2 Case to Transitions|
    |Store Output Automatically|✅|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|$Record.Account__c|
    |Department__c|Transitions|
    |Description|finalValErrorDesc|
    |Origin|Internal|
    |OwnerId|00500000006xUkf|
    |Plan__c|$Record.Plan__c|
    |Status|New|
    |Subject|Auto Email Failure|
    |Transition__c|$Record.Id|
    
    
    
    
    ### Term_Fee_Case_to_A_F
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Term Fee Case to A&F|
    |Store Output Automatically|✅|
    |Connector|[Term_Merger_or_Company_Closing](#term_merger_or_company_closing)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|$Record.Account__c|
    |Department__c|Accounting & Finance|
    |Origin|Internal|
    |OwnerId|00500000006yEak|
    |Plan__c|$Record.Plan__c|
    |Sender_Role__c|Sponsor|
    |Subject|Charge Term Fee|
    |Transition__c|$Record.Id|
    
    
    
    
    ### Get_Compliance_Queue
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Group|
    |Label|Get Compliance Queue|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|Id|
    |Store Output Automatically|✅|
    |Connector|[Queue_Found_Check](#queue_found_check)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|DeveloperName| Equal To|Compliance|
    |2|[Type](#type)| Equal To|Queue|
    
    
    
    
    ### Copy_1_of_Update_Owner_to_RW
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Copy 1 of Update Owner to Transitions|
    |Input Reference|$Record|
    |Connector|[Copy_1_of_Case_to_Transitions](#copy_1_of_case_to_transitions)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |OwnerId|00500000006xUkf|
    
    
    
    
    ### Update_Owner_to_Transitions
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Owner to Transitions|
    |Input Reference|$Record|
    |Connector|[Type](#type)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |OwnerId|00500000006xUkf|
    
    
    
    
    ### Update_Plan_Status
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Plan Status|
    |Input Reference|$Record.Plan__r|
    |Connector|[Term_Fee_Case_to_A_F_Decision](#term_fee_case_to_a_f_decision)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Status__c|Transition Pending|
    
    
    
    
    ### Update_Plan_to_Inactive
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Plan__c|
    |Label|Update Plan to Inactive|
    |Connector|[Case_to_A_F_to_Turn_Off_Subscription](#case_to_a_f_to_turn_off_subscription)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$Record__Prior.Plan__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Plan_Transition_Date__c|$Flow.CurrentDate|
    |Status__c|Inactive|
    
    
    
    
    ### Launch_Send_Docusign_Flow
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Subflow|
    |Label|Launch Send Docusign Flow|
    |Flow Name|Docusign_Autolaunched_Send_Transition_Docusign|
    |Store Output Automatically|✅|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |<!-- -->|$Record.Id|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

