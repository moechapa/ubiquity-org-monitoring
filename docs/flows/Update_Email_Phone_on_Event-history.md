# Update_Email_Phone_on_Event history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Update_Email_Phone_on_Event-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>"]):::startClass
    click START "#general-information" "3156007313"
    
    Contact_or_Lead{"🔀 <em></em><br/>Contact or Lead?"}:::decisions
    click Contact_or_Lead "#contact_or_lead" "3711636148"
    
    Get_Contact[("🔍 <em></em><br/>Get Contact")]:::recordLookups
    click Get_Contact "#get_contact" "745028920"
    
    Get_Event[("🔍 <em></em><br/>Get Event")]:::recordLookups
    click Get_Event "#get_event" "751175504"
    
    Get_Lead[("🔍 <em></em><br/>Get Lead")]:::recordLookups
    click Get_Lead "#get_lead" "1849395346"
    
    Update_Event[("🛠️ <em></em><br/>Update Event")]:::recordUpdates
    click Update_Event "#update_event" "3359211102"
    
    Update_Lead_Event[("🛠️ <em></em><br/>Update Event")]:::recordUpdates
    click Update_Lead_Event "#update_lead_event" "2056532312"
    
    Contact_or_Lead --> |"Contact"| Get_Contact
    Contact_or_Lead --> |"Lead"| Get_Lead
    Get_Contact --> Update_Event
    Get_Event --> Contact_or_Lead
    Get_Lead --> Update_Lead_Event
    Update_Event --> END_Update_Event
    Update_Lead_Event --> END_Update_Lead_Event
    START -->  Get_Event
    END_Update_Event(( END )):::endClass
    END_Update_Lead_Event(( END )):::endClass
    
    
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
    |Label|Update Email & Phone on Event|
    |Status|Active|
    |Interview Label|Update Email & Phone on Event {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Event](#get_event)|
    |Next Node|[Get_Event](#get_event)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |recordId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Contact_or_Lead
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Contact or Lead?|
    |Default Connector|[Get_Lead](#get_lead)|
    |Default Connector Label|Lead|
    
    
    #### Rule Contact (Contact)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Contact](#get_contact)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Event.WhoId| Starts With|3|
    
    
    
    
    ### Get_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Get Contact|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Update_Event](#update_event)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Event.WhoId|
    
    
    
    
    ### Get_Event
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Event|
    |Label|Get Event|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Contact_or_Lead](#contact_or_lead)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Get_Lead
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Lead|
    |Label|Get Lead|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Update_Lead_Event](#update_lead_event)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Event.WhoId|
    
    
    
    
    ### Update_Event
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Event|
    |Label|Update Event|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Email__c|Get_Contact.Email|
    |Phone__c|Get_Contact.Phone|
    
    
    
    
    ### Update_Lead_Event
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Event|
    |Label|Update Event|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Email__c|Get_Lead.Email|
    |Phone__c|Get_Lead.Phone|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

