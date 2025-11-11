# Opportunity_After_Update_Create_Add_On_Product history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Opportunity_After_Update_Create_Add_On_Product-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "2879054565"
    
    Copy_2_of_EPS_Values[\"🟰 <em></em><br/>Copy 2 of EPS Values"/]:::assignments
    click Copy_2_of_EPS_Values "#copy_2_of_eps_values" "227642888"
    
    Default_Add_On_Values[\"🟰 <em></em><br/>Default Add-On Values"/]:::assignments
    click Default_Add_On_Values "#default_add_on_values" "1962144061"
    
    Direct_Integration_Values[\"🟰 <em></em><br/>Direct Integration Values"/]:::assignments
    click Direct_Integration_Values "#direct_integration_values" "49366813"
    
    EPS_Values[\"🟰 <em></em><br/>EPS Values"/]:::assignments
    click EPS_Values "#eps_values" "1835170267"
    
    Gusto_Assignment[\"🟰 <em></em><br/>Gusto Assignment"/]:::assignments
    click Gusto_Assignment "#gusto_assignment" "2656688124"
    
    Assign_to_Aaron_or_Stormy{"🔀 <em></em><br/>Assign to Aaron or Stormy?"}:::decisions
    click Assign_to_Aaron_or_Stormy "#assign_to_aaron_or_stormy" "2718509324"
    
    Service_Option{"🔀 <em></em><br/>Service Option"}:::decisions
    click Service_Option "#service_option" "464482424"
    
    Copy_1_of_Create_Add_On[("➕ <em></em><br/>Copy 1 of Create Add-On")]:::recordCreates
    click Copy_1_of_Create_Add_On "#copy_1_of_create_add_on" "3225043097"
    
    Copy_2_of_EPS_Values --> Copy_1_of_Create_Add_On
    Default_Add_On_Values --> Service_Option
    Direct_Integration_Values --> Copy_1_of_Create_Add_On
    EPS_Values --> Copy_1_of_Create_Add_On
    Gusto_Assignment --> Copy_1_of_Create_Add_On
    Assign_to_Aaron_or_Stormy --> |"Aaron"| EPS_Values
    Assign_to_Aaron_or_Stormy --> |"Default Outcome"| Copy_2_of_EPS_Values
    Service_Option --> |"Gusto"| Gusto_Assignment
    Service_Option --> |"Direct Integration"| Direct_Integration_Values
    Service_Option --> |"Enhanced Payroll Services"| Assign_to_Aaron_or_Stormy
    Service_Option --> |"Default Outcome"| END_Service_Option
    Copy_1_of_Create_Add_On --> END_Copy_1_of_Create_Add_On
    START -->  Default_Add_On_Values
    END_Service_Option(( END )):::endClass
    END_Copy_1_of_Create_Add_On(( END )):::endClass
    
    
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
    |Label|Opportunity | After Update | Create Add-On Product|
    |Status|Active|
    |Description|When opp is marked closed/won, create related add-on product record.|
    |Environments|Default|
    |Interview Label|Opportunity | After Update | Create Add-On Product {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Default_Add_On_Values](#default_add_on_values)|
    |Next Node|[Default_Add_On_Values](#default_add_on_values)|
    
    
    #### Filters (logic: **(1 OR 2) AND 3 AND 4**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Service_Option__c| Equal To|Direct Integration|
    |2|Service_Option__c| Equal To|Enhanced Payroll Service|
    |3|StageName| Equal To|Closed Won|
    |4|StageName| Is Changed|✅|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |ACs|SObject|✅|✅|⬜|Associated_Contact__c|<!-- -->|
    |addOn|SObject|⬜|✅|⬜|Add_On_Products__c|<!-- -->|
    |emailsToSend|String|✅|✅|⬜|<!-- -->|<!-- -->|
    |sponsorFound|Boolean|⬜|✅|⬜|<!-- -->|<!-- -->|
    |sponsorId|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |templateId|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |estimatedCompletionDate|Date|{!$Record.Authorization_Form_Received__c} + 42|<!-- -->|
    |oppName|String|TRIM( LEFT(  {!$Record.Name}, 80))|<!-- -->|
    |today|Date|TODAY()|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Copy_2_of_EPS_Values
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Copy 2 of EPS Values|
    |Connector|[Copy_1_of_Create_Add_On](#copy_1_of_create_add_on)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |addOn.Product_Status__c| Assign|New|
    |addOn.RecordTypeId| Assign|01237000000N0q6AAC|
    |addOn.Product_Type__c| Assign|Enhanced Payroll Services|
    |addOn.Product_Stage__c| Assign|Pending Provider Access|
    |addOn.Last_Stage_Change__c| Assign|$Flow.CurrentDate|
    |addOn.Service_Option__c| Assign|Enhanced Payroll Service|
    |addOn.Team_Member__c| Assign|Stormy Bearry|
    
    
    
    
    ### Default_Add_On_Values
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Default Add-On Values|
    |Connector|[Service_Option](#service_option)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |addOn.Account__c| Assign|$Record.AccountId|
    |addOn.Enhanced_Payroll_Services_Type__c| Assign|$Record.Enhanced_Payroll_Services_Type__c|
    |addOn.Integration_Type__c| Assign|$Record.Integration_Type__c|
    |addOn.Name| Assign|oppName|
    |addOn.Opportunity_Notes__c| Assign|$Record.Opportunity_Notes__c|
    |addOn.Opportunity__c| Assign|$Record.Id|
    |addOn.Payroll_Reconciliation_Frequency__c| Assign|$Record.Payroll_Reconciliation_Frequency__c|
    |addOn.Service_Option__c| Assign|$Record.Service_Option__c|
    |addOn.Plan__c| Assign|$Record.Plan__c|
    
    
    
    
    ### Direct_Integration_Values
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Direct Integration Values|
    |Connector|[Copy_1_of_Create_Add_On](#copy_1_of_create_add_on)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |addOn.Product_Status__c| Assign|New|
    |addOn.RecordTypeId| Assign|012Uo000001cqZhIAI|
    |addOn.Product_Type__c| Assign|Payroll Integration|
    |addOn.Service_Option__c| Assign|Direct Integration|
    |addOn.Product_Stage__c| Assign|Awaiting Response|
    |addOn.Last_Stage_Change__c| Assign|$Flow.CurrentDate|
    
    
    
    
    ### EPS_Values
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|EPS Values|
    |Connector|[Copy_1_of_Create_Add_On](#copy_1_of_create_add_on)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |addOn.Product_Status__c| Assign|New|
    |addOn.RecordTypeId| Assign|01237000000N0q6AAC|
    |addOn.Product_Type__c| Assign|Enhanced Payroll Services|
    |addOn.Product_Stage__c| Assign|Pending Provider Access|
    |addOn.Last_Stage_Change__c| Assign|$Flow.CurrentDate|
    |addOn.Service_Option__c| Assign|Enhanced Payroll Service|
    |addOn.Team_Member__c| Assign|Aaron Fekete|
    
    
    
    
    ### Gusto_Assignment
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Gusto Assignment|
    |Connector|[Copy_1_of_Create_Add_On](#copy_1_of_create_add_on)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |addOn.Product_Status__c| Assign|Completed Setup|
    |addOn.RecordTypeId| Assign|01237000000N0q6AAC|
    |addOn.Product_Type__c| Assign|Enhanced Payroll Services|
    |addOn.Service_Option__c| Assign|Enhanced_Payroll_Services|
    |addOn.Product_Stage__c| Assign|Integration Complete|
    |addOn.Team_Member__c| Assign|Aaron Fekete|
    
    
    
    
    ### Assign_to_Aaron_or_Stormy
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Assign to Aaron or Stormy?|
    |Default Connector|[Copy_2_of_EPS_Values](#copy_2_of_eps_values)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Aaron (Aaron)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[EPS_Values](#eps_values)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Payroll_Provider__r.Name| Equal To|ADP Run|
    |2|$Record.Payroll_Provider__r.Name| Equal To|Gusto|
    
    
    
    
    ### Service_Option
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Service Option|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Gusto (Gusto)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Gusto_Assignment](#gusto_assignment)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Payroll_Provider__r.Name| Contains|Gusto|
    
    
    
    
    #### Rule Direct_Integration (Direct Integration)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Direct_Integration_Values](#direct_integration_values)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Service_Option__c| Equal To|Direct Integration|
    
    
    
    
    #### Rule Enhanced_Payroll_Services (Enhanced Payroll Services)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_to_Aaron_or_Stormy](#assign_to_aaron_or_stormy)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Service_Option__c| Equal To|Enhanced Payroll Service|
    
    
    
    
    ### Copy_1_of_Create_Add_On
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Label|Copy 1 of Create Add-On|
    |Input Reference|addOn|
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

