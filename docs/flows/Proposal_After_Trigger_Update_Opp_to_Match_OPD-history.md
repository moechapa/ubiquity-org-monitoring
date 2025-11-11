# Proposal_After_Trigger_Update_Opp_to_Match_OPD history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Proposal_After_Trigger_Update_Opp_to_Match_OPD-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "947767337"
    
    OPD_Plan_Details_Different_from_Opp{"🔀 <em></em><br/>OPD Plan Details Different from Opp"}:::decisions
    click OPD_Plan_Details_Different_from_Opp "#opd_plan_details_different_from_opp" "3222231528"
    
    Opp_Found{"🔀 <em></em><br/>Opp Found"}:::decisions
    click Opp_Found "#opp_found" "1857642300"
    
    Get_Opp[("🔍 <em></em><br/>Get Opp")]:::recordLookups
    click Get_Opp "#get_opp" "4134592584"
    
    Update_Opp_with_New_Plan_Details[("🛠️ <em></em><br/>Update Opp with New Plan Details")]:::recordUpdates
    click Update_Opp_with_New_Plan_Details "#update_opp_with_new_plan_details" "828188276"
    
    OPD_Plan_Details_Different_from_Opp --> |"Plan Details Changed"| Update_Opp_with_New_Plan_Details
    OPD_Plan_Details_Different_from_Opp --> |"Default Outcome"| END_OPD_Plan_Details_Different_from_Opp
    Opp_Found --> |"Opp Exists"| OPD_Plan_Details_Different_from_Opp
    Opp_Found --> |"Default Outcome"| END_Opp_Found
    Get_Opp --> Opp_Found
    Update_Opp_with_New_Plan_Details --> END_Update_Opp_with_New_Plan_Details
    START -->  Get_Opp
    END_OPD_Plan_Details_Different_from_Opp(( END )):::endClass
    END_Opp_Found(( END )):::endClass
    END_Update_Opp_with_New_Plan_Details(( END )):::endClass
    
    
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
    |Record Trigger Type| Create|
    |Label|Proposal | After Trigger | Update Opp to Match OPD|
    |Status|Obsolete|
    |Environments|Default|
    |Interview Label|Proposal | After Trigger | Update Opp to Match OPD {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Opp](#get_opp)|
    |Next Node|[Get_Opp](#get_opp)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|RecordTypeId| Equal To|0121G000000AjeLQAS|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |GetOpp|SObject|⬜|✅|✅|Opportunity|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### OPD_Plan_Details_Different_from_Opp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|OPD Plan Details Different from Opp|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Plan_Details_Changed (Plan Details Changed)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Opp_with_New_Plan_Details](#update_opp_with_new_plan_details)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Eligibility_Age__c| Not Equal To|GetOpp.Eligibility_Age__c|
    |2|$Record.Plan_Eligibility__c| Not Equal To|GetOpp.Plan_Eligibility__c|
    |3|$Record.Plan_Entry_Frequency__c| Not Equal To|GetOpp.Plan_Entry_Frequency__c|
    |4|$Record.Roth_Contributions__c| Not Equal To|GetOpp.Roth__c|
    |5|$Record.Auto_Enrollment__c| Not Equal To|GetOpp.AutoEnrollment__c|
    |6|$Record.Auto_Enrollment_Deferral_Escalation_Rate__c| Not Equal To|GetOpp.Auto_Enrollment_Deferral_Escalation_Rate__c|
    |7|$Record.Profit_Sharing__c| Not Equal To|GetOpp.Profit_Sharing__c|
    |8|$Record.Profit_Sharing_Match_Vesting_Schedule__c| Not Equal To|GetOpp.Profit_Sharing_Match_Vesting_Schedule__c|
    |9|$Record.Safe_Harbor__c| Not Equal To|GetOpp.Safe_Harbor__c|
    |10|$Record.Safe_Harbor_Match_Determination_Period__c| Not Equal To|GetOpp.Safe_Harbor_Match_Determination_Period__c|
    |11|$Record.QACA_Safe_Harbor_Vesting_Schedule__c| Not Equal To|GetOpp.QACA_Safe_Harbor_Vesting_Schedule__c|
    |12|$Record.Hardships__c| Not Equal To|GetOpp.Hardships__c|
    |13|$Record.Loans__c| Not Equal To|GetOpp.Loans__c|
    |14|$Record.Fund_List__c| Not Equal To|GetOpp.Fund_List__c|
    |15|$Record.Custodian__c| Not Equal To|GetOpp.Custodian__c|
    |16|$Record.Brokerage_Accounts_PCRA__c| Not Equal To|GetOpp.Brokerage_Accounts_PCRA__c|
    |17|$Record.Product_Type__c| Not Equal To|GetOpp.Product_Type__c|
    |18|$Record.Service_Option__c| Not Equal To|GetOpp.Service_Option__c|
    |19|$Record.Discretionary_Match__c| Not Equal To|GetOpp.Discretionary_Match__c|
    
    
    
    
    ### Opp_Found
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Opp Found|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Opp_Exists (Opp Exists)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[OPD_Plan_Details_Different_from_Opp](#opd_plan_details_different_from_opp)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|GetOpp.Id| Is Null|⬜|
    
    
    
    
    ### Get_Opp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Opportunity|
    |Label|Get Opp|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|GetOpp|
    |Queried Fields|- Id<br/>- Eligibility_Age__c<br/>- Plan_Eligibility__c<br/>- Plan_Entry_Frequency__c<br/>- Profit_Sharing__c<br/>- Profit_Sharing_Match_Vesting_Schedule__c<br/>- QACA_Safe_Harbor_Vesting_Schedule__c<br/>- Safe_Harbor__c<br/>- Safe_Harbor_Match_Determination_Period__c<br/>- Roth__c<br/>- AutoEnrollment__c<br/>- Auto_Enrollment_Deferral_Escalation_Rate__c<br/>- Hardships__c<br/>- Loans__c<br/>- Product_Type__c<br/>- Service_Option__c<br/>- Fund_List__c<br/>- Custodian__c<br/>- Brokerage_Accounts_PCRA__c<br/>- Discretionary_Match__c<br/>|
    |Connector|[Opp_Found](#opp_found)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$Record.Opportunity__c|
    |2|StageName| Not Equal To|Closed Won|
    
    
    
    
    ### Update_Opp_with_New_Plan_Details
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Opportunity|
    |Label|Update Opp with New Plan Details|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|GetOpp.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AutoEnrollment__c|$Record.Auto_Enrollment__c|
    |Auto_Enrollment_Deferral_Escalation_Rate__c|$Record.Auto_Enrollment_Deferral_Escalation_Rate__c|
    |Brokerage_Accounts_PCRA__c|$Record.Brokerage_Accounts_PCRA__c|
    |Custodian__c|$Record.Custodian__c|
    |Discretionary_Match__c|$Record.Discretionary_Match__c|
    |Eligibility_Age__c|$Record.Eligibility_Age__c|
    |Fund_List__c|$Record.Fund_List__c|
    |Hardships__c|$Record.Hardships__c|
    |Loans__c|$Record.Loans__c|
    |Plan_Eligibility__c|$Record.Plan_Eligibility__c|
    |Plan_Entry_Frequency__c|$Record.Plan_Entry_Frequency__c|
    |Product_Type__c|$Record.Product_Type__c|
    |Profit_Sharing_Match_Vesting_Schedule__c|$Record.Profit_Sharing_Match_Vesting_Schedule__c|
    |Profit_Sharing__c|$Record.Profit_Sharing__c|
    |QACA_Safe_Harbor_Vesting_Schedule__c|$Record.QACA_Safe_Harbor_Vesting_Schedule__c|
    |Roth__c|$Record.Roth_Contributions__c|
    |Safe_Harbor_Match_Determination_Period__c|$Record.Safe_Harbor_Match_Determination_Period__c|
    |Safe_Harbor__c|$Record.Safe_Harbor__c|
    |Service_Option__c|$Record.Service_Option__c|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

