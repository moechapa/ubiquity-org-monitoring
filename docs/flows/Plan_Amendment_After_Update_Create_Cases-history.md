# Plan_Amendment_After_Update_Create_Cases history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Plan_Amendment_After_Update_Create_Cases-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "1891300835"
    
    Add_to_Collection[\"🟰 <em></em><br/>Add to Collection"/]:::assignments
    click Add_to_Collection "#add_to_collection" "2157810584"
    
    Assign_Case_Values[\"🟰 <em></em><br/>Assign Case Values"/]:::assignments
    click Assign_Case_Values "#assign_case_values" "2321300727"
    
    Assign_Owner[\"🟰 <em></em><br/>Assign Owner"/]:::assignments
    click Assign_Owner "#assign_owner" "3346148097"
    
    Assign_Payroll_as_Owner[\"🟰 <em></em><br/>Assign Payroll as Owner"/]:::assignments
    click Assign_Payroll_as_Owner "#assign_payroll_as_owner" "3072177632"
    
    Who_Needs_Cases[\"🟰 <em></em><br/>Who Needs Cases"/]:::assignments
    click Who_Needs_Cases "#who_needs_cases" "594957840"
    
    What_Cases_to_Create{"🔀 <em></em><br/>What Cases to Create"}:::decisions
    click What_Cases_to_Create "#what_cases_to_create" "1956374672"
    
    Loop_Through_Owners{{"🔁 <em></em><br/>Loop Through Owners"}}:::loops
    click Loop_Through_Owners "#loop_through_owners" "2542226111"
    
    Create_Case_for_Payroll[("➕ <em></em><br/>Create Case for Payroll")]:::recordCreates
    click Create_Case_for_Payroll "#create_case_for_payroll" "2414551264"
    
    Create_Cases[("➕ <em></em><br/>Create Cases")]:::recordCreates
    click Create_Cases "#create_cases" "2812397562"
    
    Add_to_Collection --> Loop_Through_Owners
    Assign_Case_Values --> What_Cases_to_Create
    Assign_Owner --> Add_to_Collection
    Assign_Payroll_as_Owner --> Create_Case_for_Payroll
    Who_Needs_Cases --> Loop_Through_Owners
    What_Cases_to_Create --> |"Category = Plan Source Update"| Assign_Payroll_as_Owner
    What_Cases_to_Create --> |"Category = Plan Information Update"| Who_Needs_Cases
    What_Cases_to_Create --> |"Default Outcome"| END_What_Cases_to_Create
    Loop_Through_Owners --> |"For Each"|Assign_Owner
    Loop_Through_Owners ---> |"After Last"|Create_Cases
    Create_Case_for_Payroll --> END_Create_Case_for_Payroll
    Create_Cases --> END_Create_Cases
    START -->  Assign_Case_Values
    END_What_Cases_to_Create(( END )):::endClass
    END_Create_Case_for_Payroll(( END )):::endClass
    END_Create_Cases(( END )):::endClass
    
    
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
    |Object|Plan_Amendment__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Update|
    |Label|Plan Amendment | After Update | Create Cases|
    |Status|Active|
    |Does Require Record Changed To Meet Criteria|✅|
    |Environments|Default|
    |Interview Label|Plan Amendment | After Update | Create Cases {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Assign_Case_Values](#assign_case_values)|
    |Next Node|[Assign_Case_Values](#assign_case_values)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Amendment_Status__c| Equal To|Amendment Completed|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |caseOwners|String|✅|⬜|⬜|<!-- -->|<!-- -->|
    |casesToCreate|SObject|✅|⬜|⬜|Case|<!-- -->|
    |caseToWork|SObject|⬜|⬜|⬜|Case|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |recordURL|String|LEFT($Api.Partner_Server_URL_260, FIND( '/services', $Api.Partner_Server_URL_260)) & {!$Record.Id}|<!-- -->|
    
    
    ## Constants
    
    |Name|Data Type|Value|Description|
    |:-- |:--:|:--:|:--  |
    |accountingFinance|String|00500000006yEak|<!-- -->|
    |payroll|String|00537000002STLD|<!-- -->|
    |rW|String|005Ho00000AnvFJ|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Add_to_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add to Collection|
    |Connector|[Loop_Through_Owners](#loop_through_owners)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |casesToCreate| Add|caseToWork|
    
    
    
    
    ### Assign_Case_Values
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Case Values|
    |Connector|[What_Cases_to_Create](#what_cases_to_create)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |caseToWork.AccountId| Assign|$Record.Plan__r.Account__c|
    |caseToWork.Plan__c| Assign|$Record.Plan__c|
    |caseToWork.Sender_Role__c| Assign|Sponsor|
    |caseToWork.Origin| Assign|Internal|
    |caseToWork.Subject| Assign|Plan Amendment Complete, Please Review|
    |caseToWork.Description| Assign|caseDesc|
    
    
    
    
    ### Assign_Owner
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Owner|
    |Connector|[Add_to_Collection](#add_to_collection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |caseToWork.OwnerId| Assign|[Loop_Through_Owners](#loop_through_owners)|
    
    
    
    
    ### Assign_Payroll_as_Owner
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Payroll as Owner|
    |Connector|[Create_Case_for_Payroll](#create_case_for_payroll)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |caseToWork.OwnerId| Assign|payroll|
    
    
    
    
    ### Who_Needs_Cases
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Who Needs Cases|
    |Description|Payroll<br/>A&F<br/>RW|
    |Connector|[Loop_Through_Owners](#loop_through_owners)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |caseOwners| Add|accountingFinance|
    |caseOwners| Add|payroll|
    |caseOwners| Add|rW|
    
    
    
    
    ### What_Cases_to_Create
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|What Cases to Create|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Category_Plan_Source_Update (Category = Plan Source Update)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Payroll_as_Owner](#assign_payroll_as_owner)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Category__c| Equal To|Plan Source Update|
    
    
    
    
    #### Rule Category_Plan_Information_Update (Category = Plan Information Update)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Who_Needs_Cases](#who_needs_cases)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Category__c| Equal To|Plan Information Update|
    
    
    
    
    ### Loop_Through_Owners
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Loop Through Owners|
    |Collection Reference|caseOwners|
    |Iteration Order|Asc|
    |Next Value Connector|[Assign_Owner](#assign_owner)|
    |No More Values Connector|[Create_Cases](#create_cases)|
    
    
    ### Create_Case_for_Payroll
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Label|Create Case for Payroll|
    |Input Reference|caseToWork|
    
    
    ### Create_Cases
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Label|Create Cases|
    |Input Reference|casesToCreate|
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

