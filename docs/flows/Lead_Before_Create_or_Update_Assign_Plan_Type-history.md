# Lead_Before_Create_or_Update_Assign_Plan_Type history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Lead_Before_Create_or_Update_Assign_Plan_Type-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record Before Save</b>"]):::startClass
    click START "#general-information" "3455439106"
    
    Assign_New_Plan_Type[\"🟰 <em></em><br/>Assign New Plan Type"/]:::assignments
    click Assign_New_Plan_Type "#assign_new_plan_type" "4217580221"
    
    Assign_Plan_Type_Conversion[\"🟰 <em></em><br/>Assign Conversion Plan Type"/]:::assignments
    click Assign_Plan_Type_Conversion "#assign_plan_type_conversion" "759437097"
    
    Conversion_Plan{"🔀 <em></em><br/>Conversion Plan?"}:::decisions
    click Conversion_Plan "#conversion_plan" "1262089401"
    
    New_Plan{"🔀 <em></em><br/>New Plan?"}:::decisions
    click New_Plan "#new_plan" "3722893184"
    
    Single_k_Plan{"🔀 <em></em><br/>Single(k) Plan?"}:::decisions
    click Single_k_Plan "#single_k_plan" "2163146068"
    
    Default_of_Employees[("🛠️ <em></em><br/>Default # of Employees")]:::recordUpdates
    click Default_of_Employees "#default_of_employees" "453024328"
    
    Assign_New_Plan_Type --> END_Assign_New_Plan_Type
    Assign_Plan_Type_Conversion --> END_Assign_Plan_Type_Conversion
    Conversion_Plan --> |"True"| Assign_Plan_Type_Conversion
    Conversion_Plan --> |"Default Outcome"| New_Plan
    New_Plan --> |"True"| Assign_New_Plan_Type
    New_Plan --> |"Default Outcome"| END_New_Plan
    Single_k_Plan --> |"Yes"| Default_of_Employees
    Single_k_Plan --> |"Default Outcome"| Conversion_Plan
    Default_of_Employees --> Conversion_Plan
    START -->  Single_k_Plan
    END_Assign_New_Plan_Type(( END )):::endClass
    END_Assign_Plan_Type_Conversion(( END )):::endClass
    END_New_Plan(( END )):::endClass
    
    
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
    |Object|Lead|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record Before Save|
    |Record Trigger Type| Create And Update|
    |Label|Lead | Before Create or Update | Assign Plan Type & # of Employees for Singel(k)|
    |Status|Active|
    |Description|This Flow was converted from Sales | Lead Plan Type Updates Process Builder. It assigns default number of employees for Single(k) Plans and assigns Conversion vs New Plan Types on Lead Create and Update.|
    |Environments|Default|
    |Interview Label|Lead | Before Create or Update | Assign Plan Type {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Single_k_Plan](#single_k_plan)|
    |Next Node|[Single_k_Plan](#single_k_plan)|
    
    
    ## Flow Nodes Details
    
    ### Assign_New_Plan_Type
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign New Plan Type|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Plan_Type__c| Assign|New Plan|
    
    
    
    
    ### Assign_Plan_Type_Conversion
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Conversion Plan Type|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Plan_Type__c| Assign|Conversion Plan|
    
    
    
    
    ### Conversion_Plan
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Conversion Plan?|
    |Default Connector|[New_Plan](#new_plan)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule True (True)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Plan_Type_Conversion](#assign_plan_type_conversion)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Product_Type__c| Equal To|401(k)|
    |2|$Record.Current_Plan__c| Equal To|401(k)|
    |3|$Record.Plan_Type__c| Is Null|✅|
    
    
    
    
    ### New_Plan
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|New Plan?|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule New (True)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_New_Plan_Type](#assign_new_plan_type)|
    |Condition Logic|1 AND 8 AND (2 OR 3 OR 4 OR 5 OR 6 OR 7)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Product_Type__c| Equal To|401(k)|
    |2|$Record.Current_Plan__c| Equal To|None|
    |3|$Record.Current_Plan__c| Equal To|SIMPLE|
    |4|$Record.Current_Plan__c| Equal To|SEP IRA|
    |5|$Record.Current_Plan__c| Equal To|Defined Benefit|
    |6|$Record.Current_Plan__c| Equal To|Money Purchase|
    |7|$Record.Current_Plan__c| Equal To|KEOGH|
    |8|$Record.Plan_Type__c| Is Null|✅|
    
    
    
    
    ### Single_k_Plan
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Single(k) Plan?|
    |Default Connector|[Conversion_Plan](#conversion_plan)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Default_of_Employees](#default_of_employees)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Service_Option__c| Contains|Single(k)|
    |2|$Record.Product_Type__c| Equal To|Single(k)|
    
    
    
    
    ### Default_of_Employees
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Default # of Employees|
    |Input Reference|$Record|
    |Connector|[Conversion_Plan](#conversion_plan)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|NumberOfEmployees| Is Null|<!-- -->|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |NumberOfEmployees|1|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

