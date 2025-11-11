# OnCalendlyActionCreated history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](OnCalendlyActionCreated-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>CalendlyAction__c</b></br>Type: <b>On All Changes</b>"]):::startClass
    click START "#general-information" "590475312"
    
    START --> myDecision
    myRule_11_A1("⚡ <em></em><br/>Run Create Event Flow"):::actionCalls
    click myRule_11_A1 "#myrule_11_a1" "2373359817"
    
    myRule_1_A1("⚡ <em></em><br/>Run Cancel Event Flow"):::actionCalls
    click myRule_1_A1 "#myrule_1_a1" "268726338"
    
    myRule_3_A1("⚡ <em></em><br/>Imp Calendly Flow"):::actionCalls
    click myRule_3_A1 "#myrule_3_a1" "2123548306"
    
    myRule_5_A1("⚡ <em></em><br/>PK Calendly Flow"):::actionCalls
    click myRule_5_A1 "#myrule_5_a1" "344230028"
    
    myRule_7_A1("⚡ <em></em><br/>ODs on Finance"):::actionCalls
    click myRule_7_A1 "#myrule_7_a1" "2386635867"
    
    myRule_9_A1("⚡ <em></em><br/>Advisor Onboarding Calendly Flow"):::actionCalls
    click myRule_9_A1 "#myrule_9_a1" "4152919493"
    
    myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
    click myDecision "#mydecision" "3662277218"
    
    myDecision10{"🔀 <em></em><br/>myDecision10"}:::decisions
    click myDecision10 "#mydecision10" "3277754829"
    
    myDecision2{"🔀 <em></em><br/>myDecision2"}:::decisions
    click myDecision2 "#mydecision2" "1941281965"
    
    myDecision4{"🔀 <em></em><br/>myDecision4"}:::decisions
    click myDecision4 "#mydecision4" "1852256988"
    
    myDecision6{"🔀 <em></em><br/>myDecision6"}:::decisions
    click myDecision6 "#mydecision6" "1144264960"
    
    myDecision8{"🔀 <em></em><br/>myDecision8"}:::decisions
    click myDecision8 "#mydecision8" "2927369149"
    
    myRule_11_A1 --> END_myRule_11_A1
    myRule_1_A1 --> END_myRule_1_A1
    myRule_3_A1 --> END_myRule_3_A1
    myRule_5_A1 --> END_myRule_5_A1
    myRule_7_A1 --> END_myRule_7_A1
    myRule_9_A1 --> END_myRule_9_A1
    myDecision --> |"invitee.canceled"| myRule_1_A1
    myDecision --> |"default"| myDecision2
    myDecision10 --> |"invitee.created"| myRule_11_A1
    myDecision10 --> |"default"| END_myDecision10
    myDecision2 --> |"Imps Calendly Created"| myRule_3_A1
    myDecision2 --> |"default"| myDecision4
    myDecision4 --> |"PK Calendly Event Created"| myRule_5_A1
    myDecision4 --> |"default"| myDecision6
    myDecision6 --> |"ODs on Finance Invitee Created"| myRule_7_A1
    myDecision6 --> |"default"| myDecision8
    myDecision8 --> |"Advisor Onboarding/Amanda"| myRule_9_A1
    myDecision8 --> |"default"| myDecision10
    END_myRule_11_A1(( END )):::endClass
    END_myRule_1_A1(( END )):::endClass
    END_myRule_3_A1(( END )):::endClass
    END_myRule_5_A1(( END )):::endClass
    END_myRule_7_A1(( END )):::endClass
    END_myRule_9_A1(( END )):::endClass
    END_myDecision10(( END )):::endClass
    
    
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
    |Process Type| Workflow|
    |Label|OnCalendlyActionCreated|
    |Status|Obsolete|
    |Description|When Calendly Creates a Record in Salesforce, run certain flows.|
    |Interview Label|OnCalendlyActionCreated-32_InterviewLabel|
    |Start Element Reference|[myDecision](#mydecision)|
    | Object Type (PM)|CalendlyAction__c|
    | Object Variable (PM)|myVariable_current|
    | Old Object Variable (PM)|myVariable_old|
    | Trigger Type (PM)|onAllChanges|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |myVariable_current|SObject|⬜|✅|✅|CalendlyAction__c|<!-- -->|
    |myVariable_old|SObject|⬜|✅|⬜|CalendlyAction__c|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### myRule_11_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Run Create Event Flow|
    |Action Type|Flow|
    |Action Name|CreateEvent|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|CreateEvent|
    | Action Call Type (PM)|flow|
    |Flow Selection (PM)|CreateEvent2|
    | New Calendly Action (input)|myVariable_current|
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Run Cancel Event Flow|
    |Action Type|Flow|
    |Action Name|CancelEvent|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|CancelEvent|
    | Action Call Type (PM)|flow|
    |Flow Selection (PM)|CancelEvent|
    | New Calendly Action (input)|myVariable_current|
    
    
    ### myRule_3_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Imp Calendly Flow|
    |Action Type|Flow|
    |Action Name|Calendly_Implementations|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Calendly_Implementations|
    | Action Call Type (PM)|flow|
    |Flow Selection (PM)|Calendly Implementations|
    | New Calendly Action (input)|myVariable_current|
    
    
    ### myRule_5_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|PK Calendly Flow|
    |Action Type|Flow|
    |Action Name|Calendly_Process_Create_PK_Event|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Calendly_Process_Create_PK_Event|
    | Action Call Type (PM)|flow|
    |Flow Selection (PM)|Calendly | Process | Create PK Event|
    | New Calendly Action (input)|myVariable_current|
    
    
    ### myRule_7_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|ODs on Finance|
    |Action Type|Flow|
    |Action Name|Calendly_Process_ODs_on_Finance|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Calendly_Process_ODs_on_Finance|
    | Action Call Type (PM)|flow|
    |Flow Selection (PM)|Calendly | Process | ODs on Finance|
    | New Calendly Action (input)|myVariable_current|
    
    
    ### myRule_9_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Advisor Onboarding Calendly Flow|
    |Action Type|Flow|
    |Action Name|Calendly_Process_Create_Advisor_Onboarding_Event|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Calendly_Process_Create_Advisor_Onboarding_Event|
    | Action Call Type (PM)|flow|
    |Flow Selection (PM)|Calendly | Process | Create Advisor Onboarding Event|
    | New Calendly Action (input)|myVariable_current|
    
    
    ### myDecision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision](#mydecision)|
    |Default Connector|[myDecision2](#mydecision2)|
    |Default Connector Label|default|
    |Index (PM)|numberValue: 0<br/>|
    
    
    #### Rule myRule_1 (invitee.canceled)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_A1](#myrule_1_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Name| Equal To|invitee.canceled|
    
    
    
    
    ### myDecision10
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision10](#mydecision10)|
    |Default Connector Label|default|
    |Index (PM)|5|
    
    
    #### Rule myRule_11 (invitee.created)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_11_A1](#myrule_11_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Name| Equal To|invitee.created|
    
    
    
    
    ### myDecision2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision2](#mydecision2)|
    |Default Connector|[myDecision4](#mydecision4)|
    |Default Connector Label|default|
    |Index (PM)|1|
    
    
    #### Rule myRule_3 (Imps Calendly Created)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_3_A1](#myrule_3_a1)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.EventTypeSlug__c| Contains|intro-design-call|
    |2|myVariable_current.EventTypeSlug__c| Contains|document-review-call|
    |3|myVariable_current.EventTypeSlug__c| Contains|census-review-call|
    |4|myVariable_current.EventTypeSlug__c| Contains|payroll-upload-call|
    |5|myVariable_current.EventTypeSlug__c| Contains|introductory-call-1-of-3|
    |6|myVariable_current.EventTypeSlug__c| Contains|add-your-employees-call-2-of-3|
    |7|myVariable_current.EventTypeSlug__c| Contains|final-review-and-funding|
    |8|myVariable_current.EventTypeSlug__c| Contains|introductory-call-401-k-plan-setup-call-1-of-3|
    |9|myVariable_current.EventTypeSlug__c| Contains|15min|
    |10|myVariable_current.EventTypeSlug__c| Contains|plan-setup-call-2-of-3|
    |11|myVariable_current.EventTypeSlug__c| Contains|plan-setup-call-3-of-3|
    |12|myVariable_current.EventTypeSlug__c| Contains|plan-setup-call-1-of-3|
    
    
    
    
    ### myDecision4
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision4](#mydecision4)|
    |Default Connector|[myDecision6](#mydecision6)|
    |Default Connector Label|default|
    |Index (PM)|2|
    
    
    #### Rule myRule_5 (PK Calendly Event Created)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_5_A1](#myrule_5_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.EventTypeSlug__c| Contains|oncierge|
    |2|myVariable_current.Name| Equal To|invitee.created|
    
    
    
    
    ### myDecision6
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision6](#mydecision6)|
    |Default Connector|[myDecision8](#mydecision8)|
    |Default Connector Label|default|
    |Index (PM)|3|
    
    
    #### Rule myRule_7 (ODs on Finance Invitee Created)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_7_A1](#myrule_7_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.EventTypeSlug__c| Contains|odsfinance|
    |2|myVariable_current.Name| Equal To|invitee.created|
    
    
    
    
    ### myDecision8
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision8](#mydecision8)|
    |Default Connector|[myDecision10](#mydecision10)|
    |Default Connector Label|default|
    |Index (PM)|4|
    
    
    #### Rule myRule_9 (Advisor Onboarding/Amanda)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_9_A1](#myrule_9_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.EventTypeSlug__c| Contains|advisor_onboarding|
    |2|myVariable_current.Name| Equal To|invitee.created|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

