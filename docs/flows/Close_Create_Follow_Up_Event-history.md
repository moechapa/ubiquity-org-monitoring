# Close_Create_Follow_Up_Event history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Close_Create_Follow_Up_Event-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Screen Flow</b>"]):::startClass
    click START "#general-information" "786751931"
    
    Create_Event[("➕ <em></em><br/>Create Event")]:::recordCreates
    click Create_Event "#create_event" "398779416"
    
    Existing_Record[("🔍 <em></em><br/>Existing Record")]:::recordLookups
    click Existing_Record "#existing_record" "3938371684"
    
    Create_Follow_Up_Task(["💻 <em></em><br/>Create Follow Up Task"]):::screens
    click Create_Follow_Up_Task "#create_follow_up_task" "708733051"
    
    Create_Event --> END_Create_Event
    Existing_Record --> Create_Follow_Up_Task
    Create_Follow_Up_Task --> Create_Event
    START -->  Existing_Record
    END_Create_Event(( END )):::endClass
    
    
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
    |Process Type| Flow|
    |Label|Event | Button | Close & Create Follow-Up Event|
    |Status|Active|
    |Description|Closes event while cloning details for follow-up|
    |Interview Label|Close & Create Follow-Up Event {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Existing_Record](#existing_record)|
    |Next Node|[Existing_Record](#existing_record)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |AssignedTo|SObject|⬜|✅|✅|User|<!-- -->|
    |NewTask|SObject|⬜|✅|✅|Task|<!-- -->|
    |recordId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    |User|SObject|⬜|✅|⬜|User|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Create_Event
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Event|
    |Label|Create Event|
    |Assign Record Id To Reference|Existing_Record.Id|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Activity_Type__c|Existing_Record.Activity_Type__c|
    |Calendly_Event_Slug__c|Existing_Record.Calendly_Event_Slug__c|
    |Campaign__c|Existing_Record.Campaign__c|
    |Description|Comments_Notes|
    |Email__c|Existing_Record.Email__c|
    |EndDateTime|End_Time|
    |Implementation__c|Existing_Record.Implementation__c|
    |IsAllDayEvent|Existing_Record.IsAllDayEvent|
    |IsPrivate|Existing_Record.IsPrivate|
    |Location|Existing_Record.Location|
    |Phone__c|Existing_Record.Phone__c|
    |ShowAs|Existing_Record.ShowAs|
    |StartDateTime|Start_Time|
    |Subject|NewSubject|
    |Type|Existing_Record.Type|
    |WhatId|Existing_Record.WhatId|
    |WhoId|Existing_Record.WhoId|
    
    
    
    
    ### Existing_Record
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Event|
    |Label|Existing Record|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Create_Follow_Up_Task](#create_follow_up_task)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Create_Follow_Up_Task
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|Create Follow Up Task|
    |Allow Back|⬜|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Help Text|<p>Please enter the priority level and due date of your follow up task.</p>|
    |Show Footer|✅|
    |Show Header|⬜|
    |Connector|[Create_Event](#create_event)|
    
    
    #### createnewevent
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p>Please enter the subject, priority level &amp; due date of your follow-up event.</p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### NewSubject
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Default Value|Existing_Record.Subject|
    |Field Text|Subject|
    |Field Type| Input Field|
    |Is Required|⬜|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Start_Time
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|DateTime|
    |Field Text|Start Time|
    |Field Type| Input Field|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### End_Time
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|DateTime|
    |Field Text|End Time|
    |Field Type| Input Field|
    |Is Required|⬜|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Comments_Notes
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Default Value|{!Existing_Record.Description}|
    |Field Text|Comments & Notes|
    |Field Type| Large Text Area|
    |Is Required|⬜|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

