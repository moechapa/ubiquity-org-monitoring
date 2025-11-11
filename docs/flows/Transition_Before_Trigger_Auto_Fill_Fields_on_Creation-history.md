# Transition_Before_Trigger_Auto_Fill_Fields_on_Creation history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Transition_Before_Trigger_Auto_Fill_Fields_on_Creation-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record Before Save</b>"]):::startClass
    click START "#general-information" "3306953701"
    
    Custodian_Decision{"🔀 <em></em><br/>Custodian Decision"}:::decisions
    click Custodian_Decision "#custodian_decision" "1226327739"
    
    GetPlanInfo[("🔍 <em></em><br/>GetPlanInfo")]:::recordLookups
    click GetPlanInfo "#getplaninfo" "1416684887"
    
    Update_SO_TN_Custodian_and_Custodian_Id[("🛠️ <em></em><br/>Update SO, TN, Custodian, and Custodian Id")]:::recordUpdates
    click Update_SO_TN_Custodian_and_Custodian_Id "#update_so_tn_custodian_and_custodian_id" "1988899154"
    
    Update_Transition_Name_And_Service_Option[("🛠️ <em></em><br/>Update Transition Name And Service Option")]:::recordUpdates
    click Update_Transition_Name_And_Service_Option "#update_transition_name_and_service_option" "318762233"
    
    Update_with_Matrix_Info[("🛠️ <em></em><br/>Update with Matrix Info")]:::recordUpdates
    click Update_with_Matrix_Info "#update_with_matrix_info" "1181417596"
    
    Custodian_Decision --> |"No Custodian Id or Account Id"| Update_Transition_Name_And_Service_Option
    Custodian_Decision --> |"Matric 07C"| Update_with_Matrix_Info
    Custodian_Decision --> |"Custodian Id and Account Id Found"| Update_SO_TN_Custodian_and_Custodian_Id
    Custodian_Decision --> |"Default Outcome"| END_Custodian_Decision
    GetPlanInfo --> Custodian_Decision
    Update_SO_TN_Custodian_and_Custodian_Id --> END_Update_SO_TN_Custodian_and_Custodian_Id
    Update_Transition_Name_And_Service_Option --> END_Update_Transition_Name_And_Service_Option
    Update_with_Matrix_Info --> END_Update_with_Matrix_Info
    START -->  GetPlanInfo
    END_Custodian_Decision(( END )):::endClass
    END_Update_SO_TN_Custodian_and_Custodian_Id(( END )):::endClass
    END_Update_Transition_Name_And_Service_Option(( END )):::endClass
    END_Update_with_Matrix_Info(( END )):::endClass
    
    
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
    |Trigger Type| Record Before Save|
    |Record Trigger Type| Create|
    |Label|Transition | Before Trigger | Auto-Fill Fields on Creation|
    |Status|Active|
    |Description|When Transition is created, check Custodian and Custodian Account Id/Matrix 07C on Plan, and fill in Transition custodian info.|
    |Environments|Default|
    |Interview Label|Transition | Before Trigger | Auto-Fill Fields on Creation {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[GetPlanInfo](#getplaninfo)|
    |Next Node|[GetPlanInfo](#getplaninfo)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |PlanToCheck|SObject|⬜|✅|⬜|Plan__c|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Custodian_Decision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Custodian Decision|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule No_Custodian_Id_or_Account_Id (No Custodian Id or Account Id)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Transition_Name_And_Service_Option](#update_transition_name_and_service_option)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|PlanToCheck.Custodian__c| Is Null|✅|
    |2|PlanToCheck.Custodian_Account_ID__c| Is Null|✅|
    
    
    
    
    #### Rule Matric_07C (Matric 07C)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_with_Matrix_Info](#update_with_matrix_info)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|PlanToCheck.Custodian__c| Equal To|MG Trust Company, LLC.|
    |2|PlanToCheck.Matrix_07C_Account__c| Is Null|⬜|
    
    
    
    
    #### Rule Custodian_Id_or_Account_Id_Found (Custodian Id and Account Id Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_SO_TN_Custodian_and_Custodian_Id](#update_so_tn_custodian_and_custodian_id)|
    |Condition Logic|(1 AND 2 AND 3) OR (4 AND 5 AND 6)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|PlanToCheck.Custodian__c| Is Null|⬜|
    |2|PlanToCheck.Custodian_Account_ID__c| Is Null|⬜|
    |3|PlanToCheck.Custodian__c| Not Equal To|MG Trust Company, LLC.|
    |4|PlanToCheck.Custodian__c| Equal To|MG Trust Company, LLC.|
    |5|PlanToCheck.Matrix_07C_Account__c| Is Null|✅|
    |6|PlanToCheck.Custodian_Account_ID__c| Is Null|⬜|
    
    
    
    
    ### GetPlanInfo
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Plan__c|
    |Label|[GetPlanInfo](#getplaninfo)|
    |Assign Null Values If No Records Found|⬜|
    |Output Reference|PlanToCheck|
    |Queried Fields|- Id<br/>- Custodian__c<br/>- Custodian_Account_ID__c<br/>- Matrix_07C_Account__c<br/>- Name<br/>- Service_Option__c<br/>|
    |Connector|[Custodian_Decision](#custodian_decision)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$Record.Plan__c|
    
    
    
    
    ### Update_SO_TN_Custodian_and_Custodian_Id
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update SO, TN, Custodian, and Custodian Id|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Custodian_Account_ID__c|PlanToCheck.Custodian_Account_ID__c|
    |Custodian__c|PlanToCheck.Custodian__c|
    |Name|PlanToCheck.Name|
    |Service_Option__c|PlanToCheck.Service_Option__c|
    
    
    
    
    ### Update_Transition_Name_And_Service_Option
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Transition Name And Service Option|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Name|PlanToCheck.Name|
    |Service_Option__c|PlanToCheck.Service_Option__c|
    
    
    
    
    ### Update_with_Matrix_Info
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update with Matrix Info|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Custodian_Account_ID__c|PlanToCheck.Matrix_07C_Account__c|
    |Custodian__c|PlanToCheck.Custodian__c|
    |Name|PlanToCheck.Name|
    |Service_Option__c|PlanToCheck.Service_Option__c|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

