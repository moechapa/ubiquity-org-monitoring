# Close_Create_Follow_Up_Task history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Close_Create_Follow_Up_Task-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Screen Flow</b>"]):::startClass
    click START "#general-information" "1519152670"
    
    Follow_Up_Task[("➕ <em></em><br/>Follow-Up Task")]:::recordCreates
    click Follow_Up_Task "#follow_up_task" "2167145366"
    
    Existing_Record[("🔍 <em></em><br/>Existing Record")]:::recordLookups
    click Existing_Record "#existing_record" "3261550129"
    
    Close_Task[("🛠️ <em></em><br/>Close Task")]:::recordUpdates
    click Close_Task "#close_task" "2914135109"
    
    Create_Follow_Up_Task(["💻 <em></em><br/>Create Follow Up Task"]):::screens
    click Create_Follow_Up_Task "#create_follow_up_task" "4194872853"
    
    Follow_Up_Task --> END_Follow_Up_Task
    Existing_Record --> Close_Task
    Close_Task --> Create_Follow_Up_Task
    Create_Follow_Up_Task --> Follow_Up_Task
    START -->  Existing_Record
    END_Follow_Up_Task(( END )):::endClass
    
    
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
    |Label|Task | Button | Close & Create Follow-Up Task|
    |Status|Active|
    |Description|Closes current task, and clones details when creating a follow-up|
    |Interview Label|Close & Create Follow-Up Task {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Existing_Record](#existing_record)|
    |Next Node|[Existing_Record](#existing_record)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |AssignedTo|SObject|⬜|✅|✅|User|<!-- -->|
    |NewTask|SObject|⬜|✅|✅|Task|<!-- -->|
    |recordId|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |User|SObject|⬜|✅|⬜|User|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Follow_Up_Task
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Task|
    |Label|Follow-Up Task|
    |Assign Record Id To Reference|NewTask.Id|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |ActivityDate|NewDue_Date|
    |Campaign__c|Existing_Record.Campaign__c|
    |Description|Comments|
    |OwnerId|Existing_Record.OwnerId|
    |Priority|NewPriority|
    |Status|NewStatus|
    |Subject|NewSubject|
    |Type|Existing_Record.Type|
    |WhatId|Existing_Record.WhatId|
    |WhoId|Existing_Record.WhoId|
    
    
    
    
    ### Existing_Record
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Task|
    |Label|Existing Record|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|- Id<br/>- OwnerId<br/>- Type<br/>- Subject<br/>- Priority<br/>- WhoId<br/>- WhatId<br/>- Campaign__c<br/>- ActivityDate<br/>- IsReminderSet<br/>- ReminderDateTime<br/>- Status<br/>- Description<br/>|
    |Store Output Automatically|✅|
    |Connector|[Close_Task](#close_task)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Close_Task
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Task|
    |Label|Close Task|
    |Connector|[Create_Follow_Up_Task](#create_follow_up_task)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Status|Completed|
    
    
    
    
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
    |Connector|[Follow_Up_Task](#follow_up_task)|
    
    
    #### createnewtask
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p>Please enter the subject, priority level &amp; due date of your follow-up task.</p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### NewStatus
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|Status|
    |Field Text|Status|
    |Field Type| Dropdown Box|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### NewPriority
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|String|
    |Choice References|- ExistingPriority<br/>- Priority<br/>|
    |Field Text|Priority|
    |Field Type| Dropdown Box|
    |Is Required|✅|
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
    
    
    
    
    #### NewDue_Date
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|Date|
    |Field Text|Due Date|
    |Field Type| Input Field|
    |Is Required|⬜|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Comments
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Default Value|{!Existing_Record.Description}|
    |Field Text|Comments|
    |Field Type| Large Text Area|
    |Is Required|⬜|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

