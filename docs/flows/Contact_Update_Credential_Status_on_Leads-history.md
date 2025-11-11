# Contact_Update_Credential_Status_on_Leads history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Contact_Update_Credential_Status_on_Leads-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>"]):::startClass
    click START "#general-information" "2520818030"
    
    Assign_to_Collection[\"🟰 <em></em><br/>Assign to Collection"/]:::assignments
    click Assign_to_Collection "#assign_to_collection" "2014857510"
    
    Update_Credential_Status01[\"🟰 <em></em><br/>Update Credential Status"/]:::assignments
    click Update_Credential_Status01 "#update_credential_status01" "170433026"
    
    Loop_Through_Leads{{"🔁 <em></em><br/>Loop Through Leads"}}:::loops
    click Loop_Through_Leads "#loop_through_leads" "813772312"
    
    Get_Contact[("🔍 <em></em><br/>Get Contact")]:::recordLookups
    click Get_Contact "#get_contact" "3300663040"
    
    Get_Leads[("🔍 <em></em><br/>Get Leads")]:::recordLookups
    click Get_Leads "#get_leads" "1169618390"
    
    Update_Leads[("🛠️ <em></em><br/>Update Leads")]:::recordUpdates
    click Update_Leads "#update_leads" "2090505627"
    
    Assign_to_Collection --> Loop_Through_Leads
    Update_Credential_Status01 --> Assign_to_Collection
    Loop_Through_Leads --> |"For Each"|Update_Credential_Status01
    Loop_Through_Leads ---> |"After Last"|Update_Leads
    Get_Contact --> Get_Leads
    Get_Leads --> Loop_Through_Leads
    Update_Leads --> END_Update_Leads
    START -->  Get_Contact
    END_Update_Leads(( END )):::endClass
    
    
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
    |Label|Contact | Process | Update Credential Status on Lead|
    |Status|Active|
    |Description|When Credential Status changes on Advisor Contact, update any unconverted Leads to reflect the status change.|
    |Interview Label|Contact | Update Credential Status on Leads {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Contact](#get_contact)|
    |Next Node|[Get_Contact](#get_contact)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |leadCollection|SObject|✅|✅|✅|Lead|<!-- -->|
    |recordId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Assign_to_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign to Collection|
    |Connector|[Loop_Through_Leads](#loop_through_leads)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |leadCollection| Add|[Loop_Through_Leads](#loop_through_leads)|
    
    
    
    
    ### Update_Credential_Status01
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Update Credential Status|
    |Connector|[Assign_to_Collection](#assign_to_collection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Loop_Through_Leads.Credentialed_Advisor__c| Assign|Get_Contact.Credentialed_Advisor__c|
    
    
    
    
    ### Loop_Through_Leads
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Loop Through Leads|
    |Collection Reference|[Get_Leads](#get_leads)|
    |Iteration Order|Asc|
    |Next Value Connector|[Update_Credential_Status01](#update_credential_status01)|
    |No More Values Connector|[Update_Leads](#update_leads)|
    
    
    ### Get_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Get Contact|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Get_Leads](#get_leads)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Get_Leads
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Lead|
    |Label|Get Leads|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Store Output Automatically|✅|
    |Connector|[Loop_Through_Leads](#loop_through_leads)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Associated_Contact__c| Equal To|Get_Contact.Id|
    |2|Status| Not Equal To|Qualified|
    
    
    
    
    ### Update_Leads
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Leads|
    |Input Reference|leadCollection|
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

