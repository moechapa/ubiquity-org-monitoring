# OnCalendlyActionCreated_1 history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](OnCalendlyActionCreated_1-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "1096365622"
    
    Advisor_Onboarding_Event_Check{"🔀 <em></em><br/>Advisor Onboarding Event Check"}:::decisions
    click Advisor_Onboarding_Event_Check "#advisor_onboarding_event_check" "214708794"
    
    Cancel_Check{"🔀 <em></em><br/>Cancel Check"}:::decisions
    click Cancel_Check "#cancel_check" "3459187974"
    
    Onboarding_Event_Check{"🔀 <em></em><br/>Onboarding Event Check"}:::decisions
    click Onboarding_Event_Check "#onboarding_event_check" "1390464030"
    
    General_Create_Event_Flow[["🔗 <em>Subflow</em><br/>General Create Event Flow"]]:::subflows
    click General_Create_Event_Flow "#general_create_event_flow" "3231638590"
    
    myRule_1_A1[["🔗 <em>Subflow</em><br/>Run Cancel Event Flow"]]:::subflows
    click myRule_1_A1 "#myrule_1_a1" "519425790"
    
    myRule_3_A1[["🔗 <em>Subflow</em><br/>Imp Calendly Flow"]]:::subflows
    click myRule_3_A1 "#myrule_3_a1" "2897590137"
    
    myRule_9_A1[["🔗 <em>Subflow</em><br/>Advisor Onboarding Calendly Flow"]]:::subflows
    click myRule_9_A1 "#myrule_9_a1" "1686437252"
    
    Advisor_Onboarding_Event_Check --> |"Advisor Onboarding Event Created"| myRule_9_A1
    Advisor_Onboarding_Event_Check --> |"Default"| General_Create_Event_Flow
    Cancel_Check --> |"Invitee Canceled"| myRule_1_A1
    Cancel_Check --> |"Default"| Onboarding_Event_Check
    Onboarding_Event_Check --> |"Onboarding Event Created"| myRule_3_A1
    Onboarding_Event_Check --> |"Default"| Advisor_Onboarding_Event_Check
    START -->  Cancel_Check
    General_Create_Event_Flow --> END_General_Create_Event_Flow
    myRule_1_A1 --> END_myRule_1_A1
    myRule_3_A1 --> END_myRule_3_A1
    myRule_9_A1 --> END_myRule_9_A1
    END_General_Create_Event_Flow(( END )):::endClass
    END_myRule_1_A1(( END )):::endClass
    END_myRule_3_A1(( END )):::endClass
    END_myRule_9_A1(( END )):::endClass
    
    
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
    |Object|CalendlyAction__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create|
    |Label|Calendly | After Trigger | Launch Sub-Flows|
    |Status|Active|
    |Description|Migrated from the OnCalendlyActionCreated process using multiple criteria.<br/>When Calendly Creates a Record in Salesforce, run certain flows.|
    |Environments|Default|
    |Interview Label|Calendly | After Trigger | Launch Sub-Flows {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    |Connector|[Cancel_Check](#cancel_check)|
    |Next Node|[Cancel_Check](#cancel_check)|
    
    
    #### Filters (logic: **or**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Name| Equal To|invitee.created|
    |2|Name| Equal To|invitee.canceled|
    
    
    ## Flow Nodes Details
    
    ### Advisor_Onboarding_Event_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Advisor Onboarding Event Check|
    |Default Connector|[General_Create_Event_Flow](#general_create_event_flow)|
    |Default Connector Label|Default|
    
    
    #### Rule Advisor_Onboarding_Event_Created (Advisor Onboarding Event Created)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_9_A1](#myrule_9_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.EventTypeSlug__c| Contains|advisor_onboarding|
    
    
    
    
    ### Cancel_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Cancel Check|
    |Default Connector|[Onboarding_Event_Check](#onboarding_event_check)|
    |Default Connector Label|Default|
    
    
    #### Rule Invitee_Canceled (Invitee Canceled)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_A1](#myrule_1_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Name| Equal To|invitee.canceled|
    
    
    
    
    ### Onboarding_Event_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Onboarding Event Check|
    |Default Connector|[Advisor_Onboarding_Event_Check](#advisor_onboarding_event_check)|
    |Default Connector Label|Default|
    
    
    #### Rule Onboarding_Event_Created (Onboarding Event Created)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_3_A1](#myrule_3_a1)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.EventTypeSlug__c| Contains|introductory-call-1-of-3|
    |2|$Record.EventTypeSlug__c| Contains|add-your-employees-call-2-of-3|
    |3|$Record.EventTypeSlug__c| Contains|final-review-and-funding|
    |4|$Record.EventTypeSlug__c| Contains|introductory-call-401-k-plan-setup-call-1-of-3|
    |5|$Record.EventTypeSlug__c| Equal To|15min|
    |6|$Record.EventTypeSlug__c| Contains|plan-setup-call-2-of-3|
    |7|$Record.EventTypeSlug__c| Contains|plan-setup-call-3-of-3|
    |8|$Record.EventTypeSlug__c| Contains|plan-setup-call-1-of-3|
    
    
    
    
    ### General_Create_Event_Flow
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Subflow|
    |Label|General Create Event Flow|
    |Flow Name|CreateEvent|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |<!-- -->|$Record|
    
    
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Subflow|
    |Label|Run Cancel Event Flow|
    |Flow Name|CancelEvent|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |<!-- -->|$Record|
    
    
    
    
    ### myRule_3_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Subflow|
    |Label|Imp Calendly Flow|
    |Flow Name|Calendly_Implementations|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |<!-- -->|$Record|
    
    
    
    
    ### myRule_9_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Subflow|
    |Label|Advisor Onboarding Calendly Flow|
    |Flow Name|Calendly_Process_Create_Advisor_Onboarding_Event|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |<!-- -->|$Record|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

