# Create_Partner_After_Conversion history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Create_Partner_After_Conversion-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>"]):::startClass
    click START "#general-information" "991153604"
    
    Create_Junction[("➕ <em></em><br/>Create Junction")]:::recordCreates
    click Create_Junction "#create_junction" "609689804"
    
    Get_Account[("🔍 <em></em><br/>Get Account")]:::recordLookups
    click Get_Account "#get_account" "2729826500"
    
    Get_Contact[("🔍 <em></em><br/>Get Contact")]:::recordLookups
    click Get_Contact "#get_contact" "2306511350"
    
    Get_Lead[("🔍 <em></em><br/>Get Lead")]:::recordLookups
    click Get_Lead "#get_lead" "3972217938"
    
    Get_Opportunity[("🔍 <em></em><br/>Get Opportunity")]:::recordLookups
    click Get_Opportunity "#get_opportunity" "3744315010"
    
    Create_Junction --> END_Create_Junction
    Get_Account --> Get_Opportunity
    Get_Contact --> Get_Account
    Get_Lead --> Get_Contact
    Get_Opportunity --> Create_Junction
    START -->  Get_Lead
    END_Create_Junction(( END )):::endClass
    
    
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
    |Label|Lead | Process | Create Partner Junction|
    |Status|Active|
    |Description|Creates Associated Partner Junction if needed when Lead is Converted|
    |Interview Label|Create Partner After Conversion {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Lead](#get_lead)|
    |Next Node|[Get_Lead](#get_lead)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |leadId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |Today|Date|TODAY()|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Create_Junction
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Associated_Contact__c|
    |Label|Create Junction|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Account__c|Get_Account.Id|
    |Contact_Role__c|Original Lead|
    |Contact__c|Get_Contact.Id|
    |Opportunity__c|Get_Opportunity.Id|
    
    
    
    
    ### Get_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Account|
    |Label|Get Account|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|Id|
    |Store Output Automatically|✅|
    |Connector|[Get_Opportunity](#get_opportunity)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Contact.AccountId|
    
    
    
    
    ### Get_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Get Contact|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|- Id<br/>- AccountId<br/>|
    |Store Output Automatically|✅|
    |Connector|[Get_Account](#get_account)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Lead.ConvertedContactId|
    
    
    
    
    ### Get_Lead
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Lead|
    |Label|Get Lead|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|- Id<br/>- Email<br/>- ConvertedOpportunityId<br/>- ConvertedContactId<br/>|
    |Store Output Automatically|✅|
    |Connector|[Get_Contact](#get_contact)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|leadId|
    
    
    
    
    ### Get_Opportunity
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Opportunity|
    |Label|Get Opportunity|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|Id|
    |Store Output Automatically|✅|
    |Connector|[Create_Junction](#create_junction)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Lead.ConvertedOpportunityId|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

