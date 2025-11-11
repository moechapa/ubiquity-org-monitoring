# Contact_Upsert_Assign_Territory history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Contact_Upsert_Assign_Territory-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>"]):::startClass
    click START "#general-information" "4151261016"
    
    Major_Partner_Territory[\"🟰 <em></em><br/>Major Partner Territory"/]:::assignments
    click Major_Partner_Territory "#major_partner_territory" "2519550265"
    
    Schwab[\"🟰 <em></em><br/>Schwab"/]:::assignments
    click Schwab "#schwab" "3589638250"
    
    Standard_Territory[\"🟰 <em></em><br/>Standard Territory"/]:::assignments
    click Standard_Territory "#standard_territory" "1464749489"
    
    Eligible_for_Territory_Assignment{"🔀 <em></em><br/>Eligible for Territory Assignment?"}:::decisions
    click Eligible_for_Territory_Assignment "#eligible_for_territory_assignment" "2017340779"
    
    Linked_Partners{"🔀 <em></em><br/>Linked Partners?"}:::decisions
    click Linked_Partners "#linked_partners" "2065342975"
    
    Schwab_Found{"🔀 <em></em><br/>Schwab Found"}:::decisions
    click Schwab_Found "#schwab_found" "1211520682"
    
    Verify_Schwab_Partnership{{"🔁 <em></em><br/>Verify Schwab Partnership"}}:::loops
    click Verify_Schwab_Partnership "#verify_schwab_partnership" "2568289830"
    
    Get_Contact[("🔍 <em></em><br/>Get Contact")]:::recordLookups
    click Get_Contact "#get_contact" "793579691"
    
    Get_Partnership[("🔍 <em></em><br/>Get Partnership")]:::recordLookups
    click Get_Partnership "#get_partnership" "2693752301"
    
    Update_Contact[("🛠️ <em></em><br/>Update Contact")]:::recordUpdates
    click Update_Contact "#update_contact" "1092011614"
    
    Major_Partner_Territory --> Update_Contact
    Schwab --> Update_Contact
    Standard_Territory --> Update_Contact
    Eligible_for_Territory_Assignment --> |"Yes"| Get_Partnership
    Eligible_for_Territory_Assignment --> |"Default Outcome"| END_Eligible_for_Territory_Assignment
    Linked_Partners --> |"Yes"| Verify_Schwab_Partnership
    Linked_Partners --> |"No"| Standard_Territory
    Schwab_Found --> |"Yes"| Schwab
    Schwab_Found --> |"No"| Verify_Schwab_Partnership
    Verify_Schwab_Partnership --> |"For Each"|Schwab_Found
    Verify_Schwab_Partnership ---> |"After Last"|Major_Partner_Territory
    Get_Contact --> Eligible_for_Territory_Assignment
    Get_Partnership --> Linked_Partners
    Update_Contact --> END_Update_Contact
    START -->  Get_Contact
    END_Eligible_for_Territory_Assignment(( END )):::endClass
    END_Update_Contact(( END )):::endClass
    
    
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
    |Label|Contact | Upsert | Assign Territory|
    |Status|Active|
    |Environments|Default|
    |Interview Label|Contact | Upsert | Assign Territory {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Contact](#get_contact)|
    |Next Node|[Get_Contact](#get_contact)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |partnerCollection|SObject|✅|✅|✅|Partner_Partner_Association__c|<!-- -->|
    |recordId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Major_Partner_Territory
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Major Partner Territory|
    |Connector|[Update_Contact](#update_contact)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Get_Contact.Territory__c| Assign|Major Partner|
    |Get_Contact.n2de__DE_Status__c| Assign|Waiting|
    |Get_Contact.OwnerId| Assign|0051G0000069uOp|
    
    
    
    
    ### Schwab
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|[Schwab](#schwab)|
    |Connector|[Update_Contact](#update_contact)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Get_Contact.Territory__c| Assign|[Schwab](#schwab)|
    |Get_Contact.n2de__DE_Status__c| Assign|Waiting|
    |Get_Contact.OwnerId| Assign|0051G0000069uOp|
    
    
    
    
    ### Standard_Territory
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Standard Territory|
    |Connector|[Update_Contact](#update_contact)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Get_Contact.Territory__c| Assign|Standard|
    |Get_Contact.n2de__DE_Status__c| Assign|Waiting|
    |Get_Contact.OwnerId| Assign|00500000006xUkgAAE|
    
    
    
    
    ### Eligible_for_Territory_Assignment
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Eligible for Territory Assignment?|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule YesEligible (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Partnership](#get_partnership)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Contact.Territory__c| Not Equal To|Grandfathered|
    
    
    
    
    ### Linked_Partners
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Linked Partners?|
    |Default Connector|[Standard_Territory](#standard_territory)|
    |Default Connector Label|No|
    
    
    #### Rule YesPartners (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Verify_Schwab_Partnership](#verify_schwab_partnership)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|partnerCollection| Is Null|⬜|
    
    
    
    
    ### Schwab_Found
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Schwab Found|
    |Default Connector|[Verify_Schwab_Partnership](#verify_schwab_partnership)|
    |Default Connector Label|No|
    
    
    #### Rule YesSchwab (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Schwab](#schwab)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Verify_Schwab_Partnership.Partner_Competitor__r.Name| Contains|[Schwab](#schwab)|
    
    
    
    
    ### Verify_Schwab_Partnership
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Verify Schwab Partnership|
    |Collection Reference|partnerCollection|
    |Iteration Order|Asc|
    |Next Value Connector|[Schwab_Found](#schwab_found)|
    |No More Values Connector|[Major_Partner_Territory](#major_partner_territory)|
    
    
    ### Get_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Get Contact|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Eligible_for_Territory_Assignment](#eligible_for_territory_assignment)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Get_Partnership
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Partner_Partner_Association__c|
    |Label|Get Partnership|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|partnerCollection|
    |Queried Fields|- Id<br/>- Partner_Competitor__c<br/>|
    |Connector|[Linked_Partners](#linked_partners)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Partner__c| Equal To|Get_Contact.AccountId|
    
    
    
    
    ### Update_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Contact|
    |Input Reference|[Get_Contact](#get_contact)|
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

