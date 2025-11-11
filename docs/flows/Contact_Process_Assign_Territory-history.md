# Contact_Process_Assign_Territory history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Contact_Process_Assign_Territory-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>"]):::startClass
    click START "#general-information" "3282797899"
    
    Major_Partner_Assignment[\"🟰 <em></em><br/>Major Partner Assignment"/]:::assignments
    click Major_Partner_Assignment "#major_partner_assignment" "2377650160"
    
    Schwab_Assignment[\"🟰 <em></em><br/>Schwab Assignment"/]:::assignments
    click Schwab_Assignment "#schwab_assignment" "985028360"
    
    Standard_Assignment[\"🟰 <em></em><br/>Standard Assignment"/]:::assignments
    click Standard_Assignment "#standard_assignment" "2523667301"
    
    Object_Evaluation{"🔀 <em></em><br/>Object Evaluation"}:::decisions
    click Object_Evaluation "#object_evaluation" "3812892331"
    
    Territory_Reassignment{"🔀 <em></em><br/>Territory Reassignment"}:::decisions
    click Territory_Reassignment "#territory_reassignment" "3755288562"
    
    Get_Contact[("🔍 <em></em><br/>Get Contact")]:::recordLookups
    click Get_Contact "#get_contact" "1170922908"
    
    Get_Contact_s_Account[("🔍 <em></em><br/>Get Contact's Account")]:::recordLookups
    click Get_Contact_s_Account "#get_contact_s_account" "2857419923"
    
    Update_Advisor_Contact[("🛠️ <em></em><br/>Update Advisor Contact")]:::recordUpdates
    click Update_Advisor_Contact "#update_advisor_contact" "3041453831"
    
    Major_Partner_Assignment --> Update_Advisor_Contact
    Schwab_Assignment --> Update_Advisor_Contact
    Standard_Assignment --> Update_Advisor_Contact
    Object_Evaluation --> |"Contact"| Get_Contact
    Object_Evaluation --> |"Default Outcome"| END_Object_Evaluation
    Territory_Reassignment --> |"Schwab"| Schwab_Assignment
    Territory_Reassignment --> |"Major Partner"| Major_Partner_Assignment
    Territory_Reassignment --> |"Standard"| Standard_Assignment
    Territory_Reassignment --> |"Default Outcome"| END_Territory_Reassignment
    Get_Contact --> Get_Contact_s_Account
    Get_Contact_s_Account --> Territory_Reassignment
    Update_Advisor_Contact --> END_Update_Advisor_Contact
    START -->  Object_Evaluation
    END_Object_Evaluation(( END )):::endClass
    END_Territory_Reassignment(( END )):::endClass
    END_Update_Advisor_Contact(( END )):::endClass
    
    
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
    |Label|Contact | Process | Assign Territory|
    |Status|⚠️ Draft|
    |Description|When Contact or Account are Updated, Evaluate Territory Assignment|
    |Interview Label|Contact | Process | Assign Territory {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Object_Evaluation](#object_evaluation)|
    |Next Node|[Object_Evaluation](#object_evaluation)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |recordId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Major_Partner_Assignment
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Major Partner Assignment|
    |Connector|[Update_Advisor_Contact](#update_advisor_contact)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Get_Contact.Territory__c| Assign|Major Partner|
    |Get_Contact.n2de__DE_Status__c| Assign|Waiting|
    |Get_Contact.OwnerId| Assign|00500000006xUkgAAE|
    
    
    
    
    ### Schwab_Assignment
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Schwab Assignment|
    |Connector|[Update_Advisor_Contact](#update_advisor_contact)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Get_Contact.Territory__c| Assign|Schwab|
    |Get_Contact.n2de__DE_Status__c| Assign|Waiting|
    |Get_Contact.OwnerId| Assign|00500000006xUkgAAE|
    
    
    
    
    ### Standard_Assignment
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Standard Assignment|
    |Connector|[Update_Advisor_Contact](#update_advisor_contact)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Get_Contact.Territory__c| Assign|Standard|
    |Get_Contact.n2de__DE_Status__c| Assign|Waiting|
    |Get_Contact.OwnerId| Assign|00500000006xUkgAAE|
    
    
    
    
    ### Object_Evaluation
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Object Evaluation|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Account (Account)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|recordId| Starts With|1|
    
    
    
    
    #### Rule Lead (Lead)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|recordId| Starts With|00Q|
    
    
    
    
    #### Rule Contact (Contact)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Contact](#get_contact)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|recordId| Starts With|3|
    
    
    
    
    ### Territory_Reassignment
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Territory Reassignment|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Schwab (Schwab)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Schwab_Assignment](#schwab_assignment)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Contact_s_Account.Connected_Partner__c| Equal To|Schwab|
    |2|Get_Contact.Territory__c| Not Equal To|Schwab|
    |3|Get_Contact.Territory__c| Not Equal To|Grandfathered|
    
    
    
    
    #### Rule Major_Partner (Major Partner)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Major_Partner_Assignment](#major_partner_assignment)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Contact_s_Account.Connected_Partner__c| Not Equal To|Schwab|
    |2|Get_Contact_s_Account.Connected_Partner__c| Is Null|⬜|
    |3|Get_Contact.Territory__c| Not Equal To|Major Partner|
    |4|Get_Contact.Territory__c| Not Equal To|Grandfathered|
    
    
    
    
    #### Rule Standard (Standard)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Standard_Assignment](#standard_assignment)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Contact_s_Account.Connected_Partner__c| Is Null|✅|
    |2|Get_Contact.Territory__c| Not Equal To|Standard|
    |3|Get_Contact.Territory__c| Not Equal To|Grandfathered|
    
    
    
    
    ### Get_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Get Contact|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Get_Contact_s_Account](#get_contact_s_account)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Get_Contact_s_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Account|
    |Label|Get Contact's Account|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Territory_Reassignment](#territory_reassignment)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Contact.AccountId|
    
    
    
    
    ### Update_Advisor_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Advisor Contact|
    |Input Reference|[Get_Contact](#get_contact)|
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

