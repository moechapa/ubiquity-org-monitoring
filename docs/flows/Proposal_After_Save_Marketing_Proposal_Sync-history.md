# Proposal_After_Save_Marketing_Proposal_Sync history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Proposal_After_Save_Marketing_Proposal_Sync-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "4220549202"
    
    Copy_Over_Incoming_Proposal[\"🟰 <em></em><br/>Copy Over Incoming Proposal"/]:::assignments
    click Copy_Over_Incoming_Proposal "#copy_over_incoming_proposal" "189314996"
    
    Define_Preloaded_Proposal[\"🟰 <em></em><br/>Define Preloaded Proposal"/]:::assignments
    click Define_Preloaded_Proposal "#define_preloaded_proposal" "318619970"
    
    Proposal_Found_Check{"🔀 <em></em><br/>Proposal Found Check"}:::decisions
    click Proposal_Found_Check "#proposal_found_check" "2252091650"
    
    Delete_New_Prop[("🗑️ <em></em><br/>Delete New Prop")]:::recordDeletes
    click Delete_New_Prop "#delete_new_prop" "633721717"
    
    Find_Matched_Proposal[("🔍 <em></em><br/>Find Matched Proposal")]:::recordLookups
    click Find_Matched_Proposal "#find_matched_proposal" "652626293"
    
    Sync_New_Prop_to_Preload[("🛠️ <em></em><br/>Sync New Prop to Preload")]:::recordUpdates
    click Sync_New_Prop_to_Preload "#sync_new_prop_to_preload" "3936458705"
    
    Copy_Over_Incoming_Proposal --> Delete_New_Prop
    Define_Preloaded_Proposal --> Proposal_Found_Check
    Proposal_Found_Check --> |"Match Found"| Copy_Over_Incoming_Proposal
    Proposal_Found_Check --> |"Default Outcome"| END_Proposal_Found_Check
    Delete_New_Prop --> Sync_New_Prop_to_Preload
    Find_Matched_Proposal --> Define_Preloaded_Proposal
    Sync_New_Prop_to_Preload --> END_Sync_New_Prop_to_Preload
    START -->  Find_Matched_Proposal
    END_Proposal_Found_Check(( END )):::endClass
    END_Sync_New_Prop_to_Preload(( END )):::endClass
    
    
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
    |Object|Proposal__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create And Update|
    |Label|Proposal | After Save | Marketing Proposal Sync|
    |Status|Obsolete|
    |Environments|Default|
    |Interview Label|Proposal | After Save | Marketing Proposal Sync {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Find_Matched_Proposal](#find_matched_proposal)|
    |Next Node|[Find_Matched_Proposal](#find_matched_proposal)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Plan_ID_First_Synced__c| Equal To|dateValue: '1982-08-25'<br/>|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |preloadedProposal|SObject|⬜|⬜|⬜|Proposal__c|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |propNotesFormula|String|"Marketing proposal - became active on " + TEXT({!$Flow.CurrentDate})<br/>+ BR() + {!preloadedProposal.Proposal_Notes__c}|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Copy_Over_Incoming_Proposal
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Copy Over Incoming Proposal|
    |Description|Mass copying over the new info from the incoming proposal (triggering record) over to the preloaded marketing proposal|
    |Connector|[Delete_New_Prop](#delete_new_prop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |preloadedProposal.Service_Option__c| Assign|$Record.Service_Option__c|
    |preloadedProposal.Principal_Id__c| Assign|$Record.Principal_Id__c|
    |preloadedProposal.Plan_ID__c| Assign|$Record.Plan_ID__c|
    |preloadedProposal.Stage_Flag__c| Assign|$Record.Stage_Flag__c|
    |preloadedProposal.Plan_Type__c| Assign|$Record.Plan_Type__c|
    |preloadedProposal.Safe_Harbor__c| Assign|$Record.Safe_Harbor__c|
    |preloadedProposal.Safe_Harbor_Match_Determination_Period__c| Assign|$Record.Safe_Harbor_Match_Determination_Period__c|
    |preloadedProposal.Auto_Enrollment__c| Assign|$Record.Auto_Enrollment__c|
    |preloadedProposal.Auto_Enrollment_Deferral_Escalation_Rate__c| Assign|$Record.Auto_Enrollment_Deferral_Escalation_Rate__c|
    |preloadedProposal.Roth_Contributions__c| Assign|$Record.Roth_Contributions__c|
    |preloadedProposal.Profit_Sharing__c| Assign|$Record.Profit_Sharing__c|
    |preloadedProposal.Profit_Sharing_Match_Vesting_Schedule__c| Assign|$Record.Profit_Sharing_Match_Vesting_Schedule__c|
    |preloadedProposal.Participant_Fee_Payment__c| Assign|$Record.Participant_Fee_Payment__c|
    |preloadedProposal.Employee_Loan_Availability__c| Assign|$Record.Employee_Loan_Availability__c|
    |preloadedProposal.Employee_Match__c| Assign|$Record.Employee_Match__c|
    |preloadedProposal.Custodian__c| Assign|$Record.Custodian__c|
    |preloadedProposal.Fund_List__c| Assign|$Record.Fund_List__c|
    |preloadedProposal.X3_38__c| Assign|$Record.X3_38__c|
    |preloadedProposal.Brokerage_Accounts_PCRA__c| Assign|$Record.Brokerage_Accounts_PCRA__c|
    |preloadedProposal.Loans__c| Assign|$Record.Loans__c|
    |preloadedProposal.Hardships__c| Assign|$Record.Hardships__c|
    |preloadedProposal.Eligibility_Age__c| Assign|$Record.Eligibility_Age__c|
    |preloadedProposal.Plan_Eligibility__c| Assign|$Record.Plan_Eligibility__c|
    |preloadedProposal.Plan_Entry_Frequency__c| Assign|$Record.Plan_Entry_Frequency__c|
    |preloadedProposal.Discretionary_Match__c| Assign|$Record.Discretionary_Match__c|
    |preloadedProposal.Discretionary_Match_Formula_Notes__c| Assign|$Record.Discretionary_Match_Formula_Notes__c|
    |preloadedProposal.Employer_Contribution__c| Assign|$Record.Employer_Contribution__c|
    |preloadedProposal.Employer_Contribution_Type__c| Assign|$Record.Employer_Contribution_Type__c|
    |preloadedProposal.Employer_Contribution_Formula__c| Assign|$Record.Employer_Contribution_Formula__c|
    |preloadedProposal.Company_Zip_Postal_Code__c| Assign|$Record.Company_Zip_Postal_Code__c|
    |preloadedProposal.Contact_Job_Title__c| Assign|$Record.Contact_Job_Title__c|
    |preloadedProposal.TPA_Included__c| Assign|$Record.TPA_Included__c|
    |preloadedProposal.TPA_EIN__c| Assign|$Record.TPA_EIN__c|
    |preloadedProposal.TPA_Firm_Name__c| Assign|$Record.TPA_Firm_Name__c|
    |preloadedProposal.TPA_Sales_First_Name__c| Assign|$Record.TPA_Sales_First_Name__c|
    |preloadedProposal.TPA_Sales_Last_Name__c| Assign|$Record.TPA_Sales_Last_Name__c|
    |preloadedProposal.TPA_Sales_Email__c| Assign|$Record.TPA_Sales_Email__c|
    |preloadedProposal.Referrer_Type__c| Assign|$Record.Referrer_Type__c|
    |preloadedProposal.Referrer_Email__c| Assign|$Record.Referrer_Email__c|
    |preloadedProposal.Advisor_Broker_Dealer__c| Assign|$Record.Advisor_Broker_Dealer__c|
    |preloadedProposal.Financial_Professional_Role__c| Assign|$Record.Financial_Professional_Role__c|
    |preloadedProposal.Financial_Professional_First_Name__c| Assign|$Record.Financial_Professional_First_Name__c|
    |preloadedProposal.Financial_Professional_Last_Name__c| Assign|$Record.Financial_Professional_Last_Name__c|
    |preloadedProposal.Financial_Professional_Phone__c| Assign|$Record.Financial_Professional_Phone__c|
    |preloadedProposal.Financial_Professional_Email__c| Assign|$Record.Financial_Professional_Email__c|
    |preloadedProposal.Financial_Professional_State__c| Assign|$Record.Financial_Professional_State__c|
    |preloadedProposal.Financial_Professional_Zip_Code__c| Assign|$Record.Financial_Professional_Zip_Code__c|
    |preloadedProposal.Firm_Name__c| Assign|$Record.Firm_Name__c|
    |preloadedProposal.Plan_Effective_Date__c| Assign|$Record.Plan_Effective_Date__c|
    |preloadedProposal.Number_of_Employees__c| Assign|$Record.Number_of_Employees__c|
    |preloadedProposal.Force_Queue__c| Assign|✅|
    |preloadedProposal.Advisor_NPN__c| Assign|$Record.Advisor_NPN__c|
    |preloadedProposal.Advisor_CRD__c| Assign|$Record.Advisor_CRD__c|
    |preloadedProposal.Advisor_Contact__c| Assign|<!-- -->|
    |preloadedProposal.Advisor_Account__c| Assign|<!-- -->|
    |preloadedProposal.Master_Advisor_Account__c| Assign|$Record.Master_Advisor_Account__c|
    |preloadedProposal.TPA_Contact__c| Assign|<!-- -->|
    |preloadedProposal.TPA_Account__c| Assign|<!-- -->|
    |preloadedProposal.Proposal_Notes__c| Assign|propNotesFormula|
    
    
    
    
    ### Define_Preloaded_Proposal
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Define Preloaded Proposal|
    |Connector|[Proposal_Found_Check](#proposal_found_check)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |preloadedProposal| Assign|[Find_Matched_Proposal](#find_matched_proposal)|
    
    
    
    
    ### Proposal_Found_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Proposal Found Check|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Match_Found (Match Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Copy_Over_Incoming_Proposal](#copy_over_incoming_proposal)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|preloadedProposal.Id| Is Null|⬜|
    
    
    
    
    ### Delete_New_Prop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Delete|
    |Label|Delete New Prop|
    |Input Reference|$Record|
    |Connector|[Sync_New_Prop_to_Preload](#sync_new_prop_to_preload)|
    
    
    ### Find_Matched_Proposal
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Proposal__c|
    |Label|Find Matched Proposal|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Define_Preloaded_Proposal](#define_preloaded_proposal)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Company_Email__c| Equal To|$Record.Company_Email__c|
    |2|Stage_Flag__c| Equal To|Marketing|
    |3|Plan_ID_First_Synced__c| Is Null|<!-- -->|
    
    
    
    
    ### Sync_New_Prop_to_Preload
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Sync New Prop to Preload|
    |Input Reference|preloadedProposal|
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

