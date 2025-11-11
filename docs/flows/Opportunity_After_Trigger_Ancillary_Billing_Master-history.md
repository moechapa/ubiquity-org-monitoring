# Opportunity_After_Trigger_Ancillary_Billing_Master history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Opportunity_After_Trigger_Ancillary_Billing_Master-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "672842729"
    
    Case_Type{"🔀 <em></em><br/>Case Type"}:::decisions
    click Case_Type "#case_type" "2846377126"
    
    Which_Process{"🔀 <em></em><br/>Which Process?"}:::decisions
    click Which_Process "#which_process" "2510567407"
    
    Copy_1_of_Create_Case_for_A_F[("➕ <em></em><br/>Copy 1 of Create Case for A&F")]:::recordCreates
    click Copy_1_of_Create_Case_for_A_F "#copy_1_of_create_case_for_a_f" "1258533097"
    
    Copy_2_of_Create_Case_for_A_F[("➕ <em></em><br/>Copy 2 of Create Case for A&F")]:::recordCreates
    click Copy_2_of_Create_Case_for_A_F "#copy_2_of_create_case_for_a_f" "1249218999"
    
    Get_Opp_Case[("🔍 <em></em><br/>Get Opp Case")]:::recordLookups
    click Get_Opp_Case "#get_opp_case" "843051453"
    
    Copy_1_of_Update_Opp_s_Case[("🛠️ <em></em><br/>Copy 1 of Update Opp's Case")]:::recordUpdates
    click Copy_1_of_Update_Opp_s_Case "#copy_1_of_update_opp_s_case" "3739249846"
    
    Copy_1_of_UpdateActualAmounts[("🛠️ <em></em><br/>Copy 1 of UpdateActualAmounts")]:::recordUpdates
    click Copy_1_of_UpdateActualAmounts "#copy_1_of_updateactualamounts" "3275952939"
    
    Copy_2_of_Update_Opp_s_Case[("🛠️ <em></em><br/>Copy 2 of Update Opp's Case")]:::recordUpdates
    click Copy_2_of_Update_Opp_s_Case "#copy_2_of_update_opp_s_case" "344150311"
    
    Update_New_Flat_Opp[("🛠️ <em></em><br/>Update New Flat Opp")]:::recordUpdates
    click Update_New_Flat_Opp "#update_new_flat_opp" "3475264382"
    
    Update_New_Hourly_Opp[("🛠️ <em></em><br/>Update New Hourly Opp")]:::recordUpdates
    click Update_New_Hourly_Opp "#update_new_hourly_opp" "2117715613"
    
    Update_Opp_s_Case[("🛠️ <em></em><br/>Update Opp's Case")]:::recordUpdates
    click Update_Opp_s_Case "#update_opp_s_case" "1001688796"
    
    Case_Type --> |"Parent Case"| Update_Opp_s_Case
    Case_Type --> |"Child Case"| Copy_1_of_Update_Opp_s_Case
    Case_Type --> |"Default Outcome"| Copy_2_of_Update_Opp_s_Case
    Which_Process --> |"Hourly Ancillary Created"| Update_New_Hourly_Opp
    Which_Process --> |"Flat Rate Created"| Update_New_Flat_Opp
    Which_Process --> |"Actual Hours Entered"| Copy_1_of_UpdateActualAmounts
    Which_Process --> |"Default Outcome"| END_Which_Process
    Copy_1_of_Create_Case_for_A_F --> END_Copy_1_of_Create_Case_for_A_F
    Copy_2_of_Create_Case_for_A_F --> Case_Type
    Get_Opp_Case --> Which_Process
    Copy_1_of_Update_Opp_s_Case --> END_Copy_1_of_Update_Opp_s_Case
    Copy_1_of_UpdateActualAmounts --> Copy_1_of_Create_Case_for_A_F
    Copy_2_of_Update_Opp_s_Case --> END_Copy_2_of_Update_Opp_s_Case
    Update_New_Flat_Opp --> Copy_2_of_Create_Case_for_A_F
    Update_New_Hourly_Opp --> Case_Type
    Update_Opp_s_Case --> END_Update_Opp_s_Case
    START -->  Get_Opp_Case
    END_Which_Process(( END )):::endClass
    END_Copy_1_of_Create_Case_for_A_F(( END )):::endClass
    END_Copy_1_of_Update_Opp_s_Case(( END )):::endClass
    END_Copy_2_of_Update_Opp_s_Case(( END )):::endClass
    END_Update_Opp_s_Case(( END )):::endClass
    
    
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
    |Record Trigger Type| Create And Update|
    |Label|Opportunity | After Trigger | Ancillary Billing Master|
    |Status|Active|
    |Description|Flow replaces 3 PBs that deal with ancillary billing opps being created or edited.|
    |Environments|Default|
    |Interview Label|Opportunity | After Trigger | Ancillary Billing Master {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Opp_Case](#get_opp_case)|
    |Next Node|[Get_Opp_Case](#get_opp_case)|
    
    
    #### Filters (logic: **1**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Type| Contains|Ancillary Billing|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |actualAmountBeforeDiscount|Currency|{!$Record.Rate__c} * {!$Record.Actual_Hours_Worked__c}|<!-- -->|
    |actualHourlyAmount|Currency|{!actualAmountBeforeDiscount} * (1-{!$Record.Discount_Percentage__c}/100)|<!-- -->|
    |ancBillingAmount|Currency|({!$Record.Actual_Hours_Worked__c} * {!$Record.Rate__c}) - {!$Record.Discount__c}|<!-- -->|
    |closeDate|Date|TODAY() + 14|<!-- -->|
    |flatAmount|Currency|{!$Record.Amount_Before_Discount__c} * (1-({!$Record.Discount_Percentage__c}/100))|<!-- -->|
    |hourlyAmount|Currency|({!$Record.Rate__c} * {!$Record.Estimated_Hours_Needed__c}) * (1 - ({!$Record.Discount_Percentage__c}/100))|<!-- -->|
    |hourlyAmountBeforeDiscount|Currency|{!$Record.Rate__c} * {!$Record.Estimated_Hours_Needed__c}|<!-- -->|
    |isNew|Boolean|ISNEW()|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Case_Type
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Case Type|
    |Default Connector|[Copy_2_of_Update_Opp_s_Case](#copy_2_of_update_opp_s_case)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Parent_Case (Parent Case)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Opp_s_Case](#update_opp_s_case)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Opp_Case.ParentId| Is Null|✅|
    
    
    
    
    #### Rule Child_Case (Child Case)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Copy_1_of_Update_Opp_s_Case](#copy_1_of_update_opp_s_case)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Opp_Case.ParentId| Is Null|⬜|
    
    
    
    
    ### Which_Process
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Which Process?|
    |Description|This flow combines 3 process builders so this decision determines which process to follow|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Hourly_Ancillary_Created (Hourly Ancillary Created)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_New_Hourly_Opp](#update_new_hourly_opp)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|isNew| Equal To|✅|
    |2|$Record.Type| Equal To|Ancillary Billing Hourly Rate|
    |3|Get_Opp_Case.Id| Is Null|⬜|
    
    
    
    
    #### Rule Flat_Rate_Created (Flat Rate Created)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_New_Flat_Opp](#update_new_flat_opp)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Type| Equal To|Ancillary Billing Flat Fee|
    |2|isNew| Equal To|✅|
    |3|Get_Opp_Case.Id| Equal To|$Record.Case__c|
    
    
    
    
    #### Rule Actual_Hours_Entered (Actual Hours Entered)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Copy_1_of_UpdateActualAmounts](#copy_1_of_updateactualamounts)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Type| Equal To|Ancillary Billing Hourly Rate|
    |2|$Record.Actual_Hours_Worked__c| Is Changed|✅|
    |3|$Record.Actual_Hours_Worked__c| Is Null|⬜|
    
    
    
    
    ### Copy_1_of_Create_Case_for_A_F
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Copy 1 of Create Case for A&F|
    |Description|Creates case for A&F with subject, "Please Process Ancillary Billing"|
    |Store Output Automatically|✅|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|$Record.AccountId|
    |Ancillary_Billing_Amount__c|$Record.Amount|
    |Case_Source__c|Internal|
    |Case_Type__c|Child Case|
    |Category__c|Billing, Commissions, and Fees|
    |Department__c|Accounting & Finance|
    |Is_Ancillary_Billing_Needed__c|Yes|
    |Origin|Internal|
    |OwnerId|00500000006yEak|
    |ParentId|$Record.Case__c|
    |Plan__c|$Record.Plan__c|
    |RecordTypeId|01237000000Xu63|
    |Request_Reason__c|Form Processing|
    |Sender_Role__c|Sponsor|
    |Status|New|
    |Sub_Category__c|Ancillary Services|
    |Subject|Please Process Ancillary Billing|
    
    
    
    
    ### Copy_2_of_Create_Case_for_A_F
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Copy 2 of Create Case for A&F|
    |Description|Creates case for A&F with subject, "Please Process Ancillary Billing"|
    |Store Output Automatically|✅|
    |Connector|[Case_Type](#case_type)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|$Record.AccountId|
    |Ancillary_Billing_Amount__c|$Record.Amount|
    |Case_Source__c|Internal|
    |Case_Type__c|Child Case|
    |Category__c|Billing, Commissions, and Fees|
    |Department__c|Accounting & Finance|
    |Is_Ancillary_Billing_Needed__c|Yes|
    |Origin|Internal|
    |OwnerId|00500000006yEak|
    |ParentId|$Record.Case__c|
    |Plan__c|$Record.Plan__c|
    |RecordTypeId|01237000000Xu63|
    |Request_Reason__c|Form Processing|
    |Sender_Role__c|Sponsor|
    |Status|New|
    |Sub_Category__c|Ancillary Services|
    |Subject|Please Process Ancillary Billing|
    
    
    
    
    ### Get_Opp_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Case|
    |Label|Get Opp Case|
    |Description|All Ancillary Billing opps need to be linked to a case|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Which_Process](#which_process)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$Record.Case__c|
    
    
    
    
    ### Copy_1_of_Update_Opp_s_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Case|
    |Label|Copy 1 of Update Opp's Case|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Opp_Case.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Case_Type__c|Child Case w/ Ancillary Billing Opp|
    
    
    
    
    ### Copy_1_of_UpdateActualAmounts
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Copy 1 of UpdateActualAmounts|
    |Input Reference|$Record|
    |Connector|[Copy_1_of_Create_Case_for_A_F](#copy_1_of_create_case_for_a_f)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Amount|actualHourlyAmount|
    |Amount_Before_Discount__c|actualAmountBeforeDiscount|
    
    
    
    
    ### Copy_2_of_Update_Opp_s_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Case|
    |Label|Copy 2 of Update Opp's Case|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Opp_Case.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Status|In Progress|
    
    
    
    
    ### Update_New_Flat_Opp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update New Flat Opp|
    |Input Reference|$Record|
    |Connector|[Copy_2_of_Create_Case_for_A_F](#copy_2_of_create_case_for_a_f)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|Get_Opp_Case.AccountId|
    |Amount|flatAmount|
    |CloseDate|closeDate|
    |Plan__c|Get_Opp_Case.Plan__c|
    |Product_Type__c|Get_Opp_Case.Plan__r.Product_Type1__c|
    |Service_Option__c|Get_Opp_Case.Plan__r.Service_Option__c|
    |StageName|Billing In Progress|
    
    
    
    
    ### Update_New_Hourly_Opp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update New Hourly Opp|
    |Input Reference|$Record|
    |Connector|[Case_Type](#case_type)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|Get_Opp_Case.AccountId|
    |Amount|hourlyAmount|
    |Amount_Before_Discount__c|hourlyAmountBeforeDiscount|
    |CloseDate|closeDate|
    |Plan__c|Get_Opp_Case.Plan__c|
    |Product_Type__c|Get_Opp_Case.Plan__r.Product_Type1__c|
    |Service_Option__c|Get_Opp_Case.Plan__r.Service_Option__c|
    
    
    
    
    ### Update_Opp_s_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Case|
    |Label|Update Opp's Case|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Opp_Case.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Case_Type__c|Parent Case w/ Ancillary Billing Opp|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

