# Plan_Before_Save_Master_Flow history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Plan_Before_Save_Master_Flow-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record Before Save</b>"]):::startClass
    click START "#general-information" "2146028660"
    
    Add_Partner_Text[\"🟰 <em></em><br/>Add Partner Text"/]:::assignments
    click Add_Partner_Text "#add_partner_text" "2546856468"
    
    Assign_Partner_Field_Value[\"🟰 <em></em><br/>Assign Partner Field Value"/]:::assignments
    click Assign_Partner_Field_Value "#assign_partner_field_value" "2008623481"
    
    Partner_Loop{{"🔁 <em></em><br/>Partner Loop"}}:::loops
    click Partner_Loop "#partner_loop" "2016562148"
    
    Get_Partners[("🔍 <em></em><br/>Get Partners")]:::recordLookups
    click Get_Partners "#get_partners" "499506539"
    
    Add_Partner_Text --> Partner_Loop
    Assign_Partner_Field_Value --> END_Assign_Partner_Field_Value
    Partner_Loop --> |"For Each"|Add_Partner_Text
    Partner_Loop ---> |"After Last"|Assign_Partner_Field_Value
    Get_Partners --> Partner_Loop
    START -->  Get_Partners
    END_Assign_Partner_Field_Value(( END )):::endClass
    
    
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
    |Object|Plan__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record Before Save|
    |Record Trigger Type| Update|
    |Label|Plan | Before Save | Master Flow|
    |Status|Active|
    |Description|For calculating field values on every save<br/><br/>Created for "Associated Partners" field|
    |Environments|Default|
    |Interview Label|Plan | Before Save | Master Flow {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Partners](#get_partners)|
    |Next Node|[Get_Partners](#get_partners)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |partnerTextRaw|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |partnerTextFormatted|String|LEFT(LEFT({!partnerTextRaw},LEN({!partnerTextRaw})-1),255)|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Add_Partner_Text
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add Partner Text|
    |Connector|[Partner_Loop](#partner_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |partnerTextRaw| Add|Partner_Loop.Account__r.Master_Account_Name__c|
    |partnerTextRaw| Add|;|
    
    
    
    
    ### Assign_Partner_Field_Value
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Partner Field Value|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Associated_Partners__c| Assign|partnerTextFormatted|
    
    
    
    
    ### Partner_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Partner Loop|
    |Collection Reference|[Get_Partners](#get_partners)|
    |Iteration Order|Asc|
    |Next Value Connector|[Add_Partner_Text](#add_partner_text)|
    |No More Values Connector|[Assign_Partner_Field_Value](#assign_partner_field_value)|
    
    
    ### Get_Partners
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Associated_Partner__c|
    |Label|Get Partners|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Queried Fields|- Id<br/>- Account__c<br/>|
    |Store Output Automatically|✅|
    |Connector|[Partner_Loop](#partner_loop)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Plan__c| Equal To|$Record.Id|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

