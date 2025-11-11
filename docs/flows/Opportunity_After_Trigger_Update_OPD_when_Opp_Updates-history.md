# Opportunity_After_Trigger_Update_OPD_when_Opp_Updates history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Opportunity_After_Trigger_Update_OPD_when_Opp_Updates-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "65387167"
    
    OPD_Exists{"🔀 <em></em><br/>OPD Exists"}:::decisions
    click OPD_Exists "#opd_exists" "3836703842"
    
    Get_OPD[("🔍 <em></em><br/>Get OPD")]:::recordLookups
    click Get_OPD "#get_opd" "4245506731"
    
    Update_OPD[("🛠️ <em></em><br/>Update OPD")]:::recordUpdates
    click Update_OPD "#update_opd" "1820458864"
    
    OPD_Exists --> |"OPD Found"| Update_OPD
    OPD_Exists --> |"Default Outcome"| END_OPD_Exists
    Get_OPD --> OPD_Exists
    Update_OPD --> END_Update_OPD
    START -->  Get_OPD
    END_OPD_Exists(( END )):::endClass
    END_Update_OPD(( END )):::endClass
    
    
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
    |Object|Opportunity|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Update|
    |Label|Opportunity | After Trigger | Update OPD when Opp Updates|
    |Status|Obsolete|
    |Environments|Default|
    |Interview Label|Opportunity | After Trigger | Update OPD when Opp Updates {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_OPD](#get_opd)|
    |Next Node|[Get_OPD](#get_opd)|
    
    
    #### Filters (logic: **or**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Roth__c| Is Changed|✅|
    |2|Loans__c| Is Changed|✅|
    |3|Hardships__c| Is Changed|✅|
    |4|Safe_Harbor__c| Is Changed|✅|
    |5|Safe_Harbor_Match_Determination_Period__c| Is Changed|✅|
    |6|Eligibility_Age__c| Is Changed|✅|
    |7|Plan_Eligibility__c| Is Changed|✅|
    |8|Plan_Entry_Frequency__c| Is Changed|✅|
    |9|AutoEnrollment__c| Is Changed|✅|
    |10|Auto_Enrollment_Deferral_Escalation_Rate__c| Is Changed|✅|
    |11|Profit_Sharing__c| Is Changed|✅|
    |12|Profit_Sharing_Match_Vesting_Schedule__c| Is Changed|✅|
    |13|QACA_Safe_Harbor_Vesting_Schedule__c| Is Changed|✅|
    |14|Brokerage_Accounts_PCRA__c| Is Changed|✅|
    |15|Fund_List__c| Is Changed|✅|
    |16|Custodian__c| Is Changed|✅|
    |17|Service_Option__c| Is Changed|✅|
    |18|Product_Type__c| Is Changed|✅|
    |19|Discretionary_Match__c| Is Changed|✅|
    
    
    ## Flow Nodes Details
    
    ### OPD_Exists
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|OPD Exists|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule OPD_Found (OPD Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_OPD](#update_opd)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_OPD.Id| Is Null|⬜|
    
    
    
    
    ### Get_OPD
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Proposal__c|
    |Label|Get OPD|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[OPD_Exists](#opd_exists)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Opportunity__c| Equal To|$Record.Id|
    |2|RecordTypeId| Equal To|0121G000000AjeLQAS|
    
    
    
    
    ### Update_OPD
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Proposal__c|
    |Label|Update OPD|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_OPD.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Auto_Enrollment_Deferral_Escalation_Rate__c|$Record.Auto_Enrollment_Deferral_Escalation_Rate__c|
    |Auto_Enrollment__c|$Record.AutoEnrollment__c|
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
    |Roth_Contributions__c|$Record.Roth__c|
    |Safe_Harbor_Match_Determination_Period__c|$Record.Safe_Harbor_Match_Determination_Period__c|
    |Safe_Harbor__c|$Record.Safe_Harbor__c|
    |Service_Option__c|$Record.Service_Option__c|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

