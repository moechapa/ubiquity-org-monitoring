# CancelEvent history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](CancelEvent-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>"]):::startClass
    click START "#general-information" "1133353230"
    
    Custom_UUID_Match{"🔀 <em></em><br/>Custom UUID Match?"}:::decisions
    click Custom_UUID_Match "#custom_uuid_match" "2334193815"
    
    Fallback_UUID_Match{"🔀 <em></em><br/>Fallback UUID Match?"}:::decisions
    click Fallback_UUID_Match "#fallback_uuid_match" "588951133"
    
    Custom_Lookup[("🔍 <em></em><br/>Custom Lookup")]:::recordLookups
    click Custom_Lookup "#custom_lookup" "2638278676"
    
    Fallback_Lookup[("🔍 <em></em><br/>Fallback Lookup")]:::recordLookups
    click Fallback_Lookup "#fallback_lookup" "3813113187"
    
    UpdateEvent[("🛠️ <em></em><br/>UpdateEvent")]:::recordUpdates
    click UpdateEvent "#updateevent" "1789608478"
    
    Custom_UUID_Match --> |"Event Found via Custom Field"| UpdateEvent
    Custom_UUID_Match --> |"Event Not Found"| Fallback_Lookup
    Fallback_UUID_Match --> |"Event Found via Subject"| UpdateEvent
    Fallback_UUID_Match --> |"Exit Flow"| END_Fallback_UUID_Match
    Custom_Lookup --> Custom_UUID_Match
    Fallback_Lookup --> Fallback_UUID_Match
    UpdateEvent --> END_UpdateEvent
    START -->  Custom_Lookup
    END_Fallback_UUID_Match(( END )):::endClass
    END_UpdateEvent(( END )):::endClass
    
    
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
    |Process Type| Auto Launched Flow|
    |Label|Event | Process | Cancel Event|
    |Status|Active|
    |Description|Marks Event record as Canceled - updated to show time as free/open|
    |Environments|Default|
    |Interview Label|CancelFlow {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    |Connector|[Custom_Lookup](#custom_lookup)|
    |Next Node|[Custom_Lookup](#custom_lookup)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |EventRecordId|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |NewCalendlyAction|SObject|⬜|✅|⬜|CalendlyAction__c|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Custom_UUID_Match
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Custom UUID Match?|
    |Default Connector|[Fallback_Lookup](#fallback_lookup)|
    |Default Connector Label|Event Not Found|
    
    
    #### Rule Event_Found_via_Custom_Field (Event Found via Custom Field)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[UpdateEvent](#updateevent)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|EventRecordId| Is Null|⬜|
    
    
    
    
    ### Fallback_UUID_Match
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Fallback UUID Match?|
    |Default Connector Label|Exit Flow|
    
    
    #### Rule Event_Found_via_Subject (Event Found via Subject)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[UpdateEvent](#updateevent)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|EventRecordId| Is Null|⬜|
    
    
    
    
    ### Custom_Lookup
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Event|
    |Label|Custom Lookup|
    |Assign Null Values If No Records Found|⬜|
    |Output Assignments|assignToReference: EventRecordId<br/>field: Id<br/>|
    |Connector|[Custom_UUID_Match](#custom_uuid_match)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|InviteeUuid__c| Equal To|NewCalendlyAction.InviteeUuid__c|
    
    
    
    
    ### Fallback_Lookup
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Event|
    |Label|Fallback Lookup|
    |Assign Null Values If No Records Found|⬜|
    |Output Assignments|assignToReference: EventRecordId<br/>field: Id<br/>|
    |Connector|[Fallback_UUID_Match](#fallback_uuid_match)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Subject| Contains|NewCalendlyAction.InviteeUuid__c|
    
    
    
    
    ### UpdateEvent
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Event|
    |Label|[UpdateEvent](#updateevent)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|EventRecordId|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Description|NewCalendlyAction.EventDescription__c|
    |ShowAs|Free|
    |Subject|{!NewCalendlyAction.EventSubject__c} - Calendly - {!NewCalendlyAction.InviteeUuid__c}|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

