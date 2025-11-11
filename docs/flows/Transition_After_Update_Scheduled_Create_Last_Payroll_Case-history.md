# Transition_After_Update_Scheduled_Create_Last_Payroll_Case history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Transition_After_Update_Scheduled_Create_Last_Payroll_Case-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "1601129113"
    
    Active_Add_On_Found{"🔀 <em></em><br/>Active Add-On Found?"}:::decisions
    click Active_Add_On_Found "#active_add_on_found" "3918142086"
    
    Copy_2_of_Active_Add_On_Found{"🔀 <em></em><br/>Copy 2 of Active Add-On Found?"}:::decisions
    click Copy_2_of_Active_Add_On_Found "#copy_2_of_active_add_on_found" "334575005"
    
    Copy_2_of_Create_Case_for_Payroll[("➕ <em></em><br/>Copy 2 of Create Case for Payroll")]:::recordCreates
    click Copy_2_of_Create_Case_for_Payroll "#copy_2_of_create_case_for_payroll" "960370870"
    
    Create_Case_for_Payroll[("➕ <em></em><br/>Create Case for Payroll")]:::recordCreates
    click Create_Case_for_Payroll "#create_case_for_payroll" "3317133959"
    
    Copy_1_of_Get_Add_On[("🔍 <em></em><br/>Copy 1 of Get Add-On")]:::recordLookups
    click Copy_1_of_Get_Add_On "#copy_1_of_get_add_on" "2272581061"
    
    Get_Add_On[("🔍 <em></em><br/>Get Add-On")]:::recordLookups
    click Get_Add_On "#get_add_on" "3494000765"
    
    Active_Add_On_Found --> |"Found"| Create_Case_for_Payroll
    Active_Add_On_Found --> |"Not Found"| END_Active_Add_On_Found
    Copy_2_of_Active_Add_On_Found --> |"Copy 2 of Found"| Copy_2_of_Create_Case_for_Payroll
    Copy_2_of_Active_Add_On_Found --> |"Not Found"| END_Copy_2_of_Active_Add_On_Found
    Copy_2_of_Create_Case_for_Payroll --> END_Copy_2_of_Create_Case_for_Payroll
    Create_Case_for_Payroll --> END_Create_Case_for_Payroll
    Copy_1_of_Get_Add_On --> Copy_2_of_Active_Add_On_Found
    Get_Add_On --> Active_Add_On_Found
    START --> |"Termination"| Get_Add_On
    START --> |"Deconversion"| Copy_1_of_Get_Add_On
    END_Active_Add_On_Found(( END )):::endClass
    END_Copy_2_of_Active_Add_On_Found(( END )):::endClass
    END_Copy_2_of_Create_Case_for_Payroll(( END )):::endClass
    END_Create_Case_for_Payroll(( END )):::endClass
    
    
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
    |Label|Transition | After Update/Scheduled | Create Last Payroll Case|
    |Status|Obsolete|
    |Does Require Record Changed To Meet Criteria|✅|
    |Environments|Default|
    |Interview Label|Transition | After Update/Scheduled | Create Last Payroll Case {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    
    
    #### Scheduled Paths
    
    |Label|Name|Offset Number|Offset Unit|Record Field|Time Source|Connector|
    |:-- |:-- |:-- |:-- |:-- |:-- |:--  |
    |Termination|Termination|0|Minutes|Final_Valuation_Completed__c|RecordField|[Get_Add_On](#get_add_on)|
    |Deconversion|Deconversion|0|Minutes|Blackout_Start_Date__c|RecordField|[Copy_1_of_Get_Add_On](#copy_1_of_get_add_on)|
    
    
    #### Filters (logic: **(1 AND 3) OR (2 AND 4)**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Final_Valuation_Completed__c| Is Null|<!-- -->|
    |2|Blackout_Start_Date__c| Is Null|<!-- -->|
    |3|Transition_Type__c| Equal To|Termination|
    |4|Transition_Type__c| Equal To|Deconversion|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |addOn|SObject|⬜|✅|⬜|Add_On_Products__c|<!-- -->|
    |addOnOpp|SObject|⬜|✅|⬜|Opportunity|<!-- -->|
    
    
    ## Text Templates
    
    |Name|Text|Description|
    |:-- |:-- |:--  |
    |caseDesc|A Transition record has been created for {!$Record.Plan__r.Name}, please begin the process to terminate payroll services.|<!-- -->|
    |caseSubj|Terminate Integration Services for: {!$Record.Plan__r.Name}|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Active_Add_On_Found
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Active Add-On Found?|
    |Default Connector Label|Not Found|
    
    
    #### Rule Found (Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Create_Case_for_Payroll](#create_case_for_payroll)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|addOn.Id| Is Null|⬜|
    |2|$Record.Transition_Type__c| Equal To|Termination|
    
    
    
    
    ### Copy_2_of_Active_Add_On_Found
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Copy 2 of Active Add-On Found?|
    |Default Connector Label|Not Found|
    
    
    #### Rule Copy_2_of_Found (Copy 2 of Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Copy_2_of_Create_Case_for_Payroll](#copy_2_of_create_case_for_payroll)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|addOn.Id| Is Null|⬜|
    |2|$Record.Transition_Type__c| Equal To|Deconversion|
    
    
    
    
    ### Copy_2_of_Create_Case_for_Payroll
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Copy 2 of Create Case for Payroll|
    |Store Output Automatically|✅|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|$Record.Account__c|
    |Case_Type__c|Single Case|
    |Category__c|Contribution and Payroll|
    |Department__c|Payroll|
    |Description|caseDesc|
    |Is_Ancillary_Billing_Needed__c|No|
    |Origin|Internal|
    |OwnerId|00537000002STLD|
    |Plan__c|$Record.Plan__c|
    |RecordTypeId|01237000000XwGFAA0|
    |Status|New|
    |Sub_Category__c|Disable Payroll Integration|
    |Subject|caseSubj|
    
    
    
    
    ### Create_Case_for_Payroll
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Create Case for Payroll|
    |Store Output Automatically|✅|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|$Record.Account__c|
    |Case_Type__c|Single Case|
    |Category__c|Contribution and Payroll|
    |Department__c|Payroll|
    |Description|caseDesc|
    |Is_Ancillary_Billing_Needed__c|No|
    |Origin|Internal|
    |OwnerId|00537000002STLD|
    |Plan__c|$Record.Plan__c|
    |RecordTypeId|01237000000XwGFAA0|
    |Status|New|
    |Sub_Category__c|Disable Payroll Integration|
    |Subject|caseSubj|
    
    
    
    
    ### Copy_1_of_Get_Add_On
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Add_On_Products__c|
    |Label|Copy 1 of Get Add-On|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|addOn|
    |Queried Fields|- Id<br/>- Service_Option__c<br/>- Product_Status__c<br/>- Plan__c<br/>|
    |Connector|[Copy_2_of_Active_Add_On_Found](#copy_2_of_active_add_on_found)|
    
    
    #### Filters (logic: **1 AND 2 AND 3 AND 4 AND 5 AND (6 OR 7)**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Plan__c| Equal To|$Record.Plan__c|
    |2|Product_Status__c| Not Equal To|Cancelled Setup|
    |3|Product_Status__c| Not Equal To|Product_Terminated|
    |4|Product_Status__c| Not Equal To|Terminated Integration|
    |5|Product_Status__c| Not Equal To|No Start|
    |6|Service_Option__c| Equal To|Enhanced Payroll Service|
    |7|Service_Option__c| Equal To|Direct Integration|
    
    
    
    
    ### Get_Add_On
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Add_On_Products__c|
    |Label|Get Add-On|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|addOn|
    |Queried Fields|- Id<br/>- Service_Option__c<br/>- Product_Status__c<br/>- Plan__c<br/>|
    |Connector|[Active_Add_On_Found](#active_add_on_found)|
    
    
    #### Filters (logic: **1 AND 2 AND 3 AND 4 AND 5 AND (6 OR 7)**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Plan__c| Equal To|$Record.Plan__c|
    |2|Product_Status__c| Not Equal To|Cancelled Setup|
    |3|Product_Status__c| Not Equal To|Product_Terminated|
    |4|Product_Status__c| Not Equal To|Terminated Integration|
    |5|Product_Status__c| Not Equal To|No Start|
    |6|Service_Option__c| Equal To|Enhanced Payroll Service|
    |7|Service_Option__c| Equal To|Direct Integration|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

