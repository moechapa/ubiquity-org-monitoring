# Update_Email_Phone history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Update_Email_Phone-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>"]):::startClass
    click START "#general-information" "841728148"
    
    Contact_or_Lead{"🔀 <em></em><br/>Contact or Lead?"}:::decisions
    click Contact_or_Lead "#contact_or_lead" "732180801"
    
    Get_Contact[("🔍 <em></em><br/>Get Contact")]:::recordLookups
    click Get_Contact "#get_contact" "3701405071"
    
    Get_Lead[("🔍 <em></em><br/>Get Lead")]:::recordLookups
    click Get_Lead "#get_lead" "1731788710"
    
    Get_Owner[("🔍 <em></em><br/>Get Owner")]:::recordLookups
    click Get_Owner "#get_owner" "641906029"
    
    Get_Task[("🔍 <em></em><br/>Get Task")]:::recordLookups
    click Get_Task "#get_task" "2863191014"
    
    Update_Task[("🛠️ <em></em><br/>Update Task")]:::recordUpdates
    click Update_Task "#update_task" "859007927"
    
    Update_Task_Lead[("🛠️ <em></em><br/>Update Task")]:::recordUpdates
    click Update_Task_Lead "#update_task_lead" "2953950433"
    
    Contact_or_Lead --> |"Contact"| Get_Contact
    Contact_or_Lead --> |"Lead"| Get_Lead
    Contact_or_Lead --> |"N/A"| END_Contact_or_Lead
    Get_Contact --> Update_Task
    Get_Lead --> Update_Task_Lead
    Get_Owner --> Contact_or_Lead
    Get_Task --> Get_Owner
    Update_Task --> END_Update_Task
    Update_Task_Lead --> END_Update_Task_Lead
    START -->  Get_Task
    END_Contact_or_Lead(( END )):::endClass
    END_Update_Task(( END )):::endClass
    END_Update_Task_Lead(( END )):::endClass
    
    
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
    |Label|Update Email & Phone on Task|
    |Status|Active|
    |Description|Updates Email & Phone on Task depending on the record type of the associated client.|
    |Interview Label|Update Email & Phone {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Task](#get_task)|
    |Next Node|[Get_Task](#get_task)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |recordId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |endDate|DateTime|{!startDate}+(05/1440)|<!-- -->|
    |startDate|DateTime|DATETIMEVALUE({!Get_Task.ActivityDate}+(1440/1440))|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Contact_or_Lead
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Contact or Lead?|
    |Default Connector Label|N/A|
    
    
    #### Rule Contact (Contact)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Contact](#get_contact)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Task.WhoId| Starts With|3|
    
    
    
    
    #### Rule Lead (Lead)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Lead](#get_lead)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Task.WhoId| Starts With|00Q|
    |2|Get_Owner.IsActive| Equal To|✅|
    
    
    
    
    ### Get_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Get Contact|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Update_Task](#update_task)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Task.WhoId|
    
    
    
    
    ### Get_Lead
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Lead|
    |Label|Get Lead|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Update_Task_Lead](#update_task_lead)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Task.WhoId|
    
    
    
    
    ### Get_Owner
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|User|
    |Label|Get Owner|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Contact_or_Lead](#contact_or_lead)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Task.OwnerId|
    
    
    
    
    ### Get_Task
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Task|
    |Label|Get Task|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Get_Owner](#get_owner)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Update_Task
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Task|
    |Label|Update Task|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Email__c|Get_Contact.Email|
    |EndDate__c|endDate|
    |Phone__c|Get_Contact.Phone|
    |StartDate__c|startDate|
    
    
    
    
    ### Update_Task_Lead
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Task|
    |Label|Update Task|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Email__c|Get_Lead.Email|
    |EndDate__c|endDate|
    |Phone__c|Get_Lead.Phone|
    |StartDate__c|startDate|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

