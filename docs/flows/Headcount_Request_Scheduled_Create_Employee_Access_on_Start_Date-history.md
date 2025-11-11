# Headcount_Request_Scheduled_Create_Employee_Access_on_Start_Date history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Headcount_Request_Scheduled_Create_Employee_Access_on_Start_Date-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Scheduled</b>"]):::startClass
    click START "#general-information" "2274419934"
    
    Add_to_Collection[\"🟰 <em></em><br/>Add to Collection"/]:::assignments
    click Add_to_Collection "#add_to_collection" "821126940"
    
    Add_to_Collection_0[\"🟰 <em></em><br/>Add to Collection"/]:::assignments
    click Add_to_Collection_0 "#add_to_collection_0" "1536208830"
    
    Populate_Employee_Contact_Fields[\"🟰 <em></em><br/>Populate Employee Contact Fields"/]:::assignments
    click Populate_Employee_Contact_Fields "#populate_employee_contact_fields" "601782064"
    
    Salesforce_ETA_Values[\"🟰 <em></em><br/>Salesforce ETA Values"/]:::assignments
    click Salesforce_ETA_Values "#salesforce_eta_values" "4169859153"
    
    Salesforce_ETA_Values_0[\"🟰 <em></em><br/>Salesforce ETA Values"/]:::assignments
    click Salesforce_ETA_Values_0 "#salesforce_eta_values_0" "111291212"
    
    Contact_Requirements_Present{"🔀 <em></em><br/>Contact Requirements Present"}:::decisions
    click Contact_Requirements_Present "#contact_requirements_present" "332924287"
    
    New_Hire_s_First_Day{"🔀 <em></em><br/>New Hire's First Day"}:::decisions
    click New_Hire_s_First_Day "#new_hire_s_first_day" "1886689187"
    
    Salesforce_License_Needed{"🔀 <em></em><br/>Salesforce License Needed"}:::decisions
    click Salesforce_License_Needed "#salesforce_license_needed" "4083826445"
    
    Create_Employee_Contact[("➕ <em></em><br/>Create Employee Contact")]:::recordCreates
    click Create_Employee_Contact "#create_employee_contact" "545698148"
    
    Create_Employee_Technology_Access[("➕ <em></em><br/>Create Employee Technology Access")]:::recordCreates
    click Create_Employee_Technology_Access "#create_employee_technology_access" "3541203768"
    
    Add_to_Collection --> Salesforce_ETA_Values_0
    Add_to_Collection_0 --> Create_Employee_Technology_Access
    Populate_Employee_Contact_Fields --> Create_Employee_Contact
    Salesforce_ETA_Values --> Add_to_Collection
    Salesforce_ETA_Values_0 --> Add_to_Collection_0
    Contact_Requirements_Present --> |"Contact Name Found"| Populate_Employee_Contact_Fields
    Contact_Requirements_Present --> |"Contact Name Not Found"| END_Contact_Requirements_Present
    New_Hire_s_First_Day --> |"Actual Start = Today"| Contact_Requirements_Present
    New_Hire_s_First_Day --> |"Default Outcome"| END_New_Hire_s_First_Day
    Salesforce_License_Needed --> |"License Required"| Salesforce_ETA_Values
    Salesforce_License_Needed --> |"No License Required"| Salesforce_ETA_Values_0
    Create_Employee_Contact --> Salesforce_License_Needed
    Create_Employee_Technology_Access --> END_Create_Employee_Technology_Access
    START -->  New_Hire_s_First_Day
    END_Contact_Requirements_Present(( END )):::endClass
    END_New_Hire_s_First_Day(( END )):::endClass
    END_Create_Employee_Technology_Access(( END )):::endClass
    
    
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
    |Object|Headcount_Request__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Scheduled|
    |Label|Headcount Request | Scheduled | Create Employee & Access on Start Date|
    |Status|Active|
    |Environments|Default|
    |Interview Label|Headcount Request | Scheduled | Create Employee & Access on Start Date {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[New_Hire_s_First_Day](#new_hire_s_first_day)|
    |Next Node|[New_Hire_s_First_Day](#new_hire_s_first_day)|
    
    
    #### Schedules
    
    |Frequency|Start Date|Start Time|
    |:-- |:--:|:--: |
    |Daily|Aug 1, 2022|06:00|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Status__c| Equal To|Hired|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |employeeContact|SObject|⬜|✅|⬜|Contact|<!-- -->|
    |etaCollection|SObject|✅|✅|⬜|Employee_Technology_Access__c|<!-- -->|
    |etaNewHire|SObject|⬜|✅|⬜|Employee_Technology_Access__c|<!-- -->|
    |etaSF|SObject|⬜|✅|⬜|Employee_Technology_Access__c|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |today|Date|TODAY()|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Add_to_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add to Collection|
    |Connector|[Salesforce_ETA_Values_0](#salesforce_eta_values_0)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |etaCollection| Add|etaSF|
    
    
    
    
    ### Add_to_Collection_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add to Collection|
    |Connector|[Create_Employee_Technology_Access](#create_employee_technology_access)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |etaCollection| Add|etaNewHire|
    
    
    
    
    ### Populate_Employee_Contact_Fields
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Populate Employee Contact Fields|
    |Connector|[Create_Employee_Contact](#create_employee_contact)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |employeeContact.FirstName| Assign|$Record.First_Name__c|
    |employeeContact.LastName| Assign|$Record.Last_Name__c|
    |employeeContact.Title| Assign|$Record.Title__c|
    |employeeContact.Department| Assign|$Record.Department__c|
    |employeeContact.Team__c| Assign|$Record.Team__c|
    |employeeContact.Employee_Email__c| Assign|$Record.Employee_Email__c|
    |employeeContact.AccountId| Assign|0013700000JH68lAAD|
    |employeeContact.RecordTypeId| Assign|01237000000TgxVAAS|
    
    
    
    
    ### Salesforce_ETA_Values
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Salesforce ETA Values|
    |Connector|[Add_to_Collection](#add_to_collection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |etaSF.Access_Requested_Date__c| Assign|today|
    |etaSF.Requested_by__c| Assign|$Record.Hiring_Manager__c|
    |etaSF.Contact__c| Assign|employeeContact.Id|
    |etaSF.RecordTypeId| Assign|0121G000000g1bqQAA|
    |etaSF.Technology_Access_Owner__c| Assign|Business Intelligence|
    |etaSF.Product_Type__c| Assign|Website|
    |etaSF.Product_Name__c| Assign|Salesforce|
    |etaSF.Access_Level__c| Assign|User|
    |etaSF.License_Type__c| Assign|Individual|
    
    
    
    
    ### Salesforce_ETA_Values_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Salesforce ETA Values|
    |Connector|[Add_to_Collection_0](#add_to_collection_0)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |etaNewHire.Access_Requested_Date__c| Assign|today|
    |etaNewHire.Requested_by__c| Assign|$Record.Hiring_Manager__c|
    |etaNewHire.Contact__c| Assign|employeeContact.Id|
    |etaNewHire.RecordTypeId| Assign|0121G000000g1bvQAA|
    |etaNewHire.Product_Type__c| Assign|Standard Ubiquity Package|
    |etaNewHire.Product_Name__c| Assign|Standard Technology Package|
    |etaNewHire.Standard_Products__c| Assign|15Five;Basecamp;Box;LastPass;Zoom;Paylocity;Screensteps|
    |etaNewHire.Technology_Access_Owner__c| Assign|People & Culture|
    |etaNewHire.Date_Requested__c| Assign|today|
    
    
    
    
    ### Contact_Requirements_Present
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Contact Requirements Present|
    |Default Connector Label|Contact Name Not Found|
    
    
    #### Rule Contact_Name_Found (Contact Name Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Populate_Employee_Contact_Fields](#populate_employee_contact_fields)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.First_Name__c| Is Null|⬜|
    |2|$Record.Last_Name__c| Is Null|⬜|
    
    
    
    
    ### New_Hire_s_First_Day
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|New Hire's First Day|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Actual_Start_Today (Actual Start = Today)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Contact_Requirements_Present](#contact_requirements_present)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Actual_Start_Date__c| Equal To|today|
    
    
    
    
    ### Salesforce_License_Needed
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Salesforce License Needed|
    |Default Connector|[Salesforce_ETA_Values_0](#salesforce_eta_values_0)|
    |Default Connector Label|No License Required|
    
    
    #### Rule License_Required (License Required)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Salesforce_ETA_Values](#salesforce_eta_values)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Salesforce_License_Required__c| Equal To|✅|
    
    
    
    
    ### Create_Employee_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Label|Create Employee Contact|
    |Input Reference|employeeContact|
    |Connector|[Salesforce_License_Needed](#salesforce_license_needed)|
    
    
    ### Create_Employee_Technology_Access
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Label|Create Employee Technology Access|
    |Input Reference|etaCollection|
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

