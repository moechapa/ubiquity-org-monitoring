# Implementation_After_Trigger_Update_FPS_Agreement_Signed history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Implementation_After_Trigger_Update_FPS_Agreement_Signed-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "1903457517"
    
    myRule_1_A1[("🛠️ <em></em><br/>FPS Agreement Date")]:::recordUpdates
    click myRule_1_A1 "#myrule_1_a1" "1747510386"
    
    myRule_1_A1 --> END_myRule_1_A1
    START -->  myRule_1_A1
    END_myRule_1_A1(( END )):::endClass
    
    
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
    |Object|Implementation__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create And Update|
    |Label|Implementation | After Trigger | Update FPS Agreement Signed|
    |Status|Active|
    |Does Require Record Changed To Meet Criteria|✅|
    |Filter Formula|(<br/>ISPICKVAL( {!$Record.Plan_Type__c} , "New Plan" ) <br/>&&<br/>NOT(ISNULL({!$Record.Ubiquity_Plan_Documents_Signed__c}  ))<br/>&&<br/>NOT(ISPICKVAL({!$Record.Business_Unit__c} , "Simply Retirement"))<br/>)<br/><br/>||<br/><br/>(<br/>ISPICKVAL( {!$Record.Plan_Type__c} , "Conversion Plan" ) <br/>&&<br/>CONTAINS(TEXT({!$Record.Custodian__c}), "Schwab")<br/>&&<br/>NOT(ISNULL({!$Record.Ubiquity_Plan_Documents_Signed__c} ))<br/>&&<br/>NOT(ISNULL({!$Record.Schwab_App_Client_Signed__c} ))<br/>&&<br/>NOT(ISPICKVAL({!$Record.Business_Unit__c} , "Simply Retirement"))<br/>)<br/><br/>||<br/><br/>(<br/>ISPICKVAL( {!$Record.Plan_Type__c} , "Conversion Plan" ) <br/>&&<br/>NOT(CONTAINS(TEXT({!$Record.Custodian__c}), "Schwab"))<br/>&&<br/>NOT(ISNULL({!$Record.Ubiquity_Plan_Documents_Signed__c} ))<br/>&&<br/>NOT(ISPICKVAL({!$Record.Business_Unit__c} , "Simply Retirement"))<br/>)|
    |Description|When entry formula = TRUE, update FPS Agreement Date on related plan.|
    |Environments|Default|
    |Interview Label|Implementation | After Trigger | Update FPS Agreement Date {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    |Connector|[myRule_1_A1](#myrule_1_a1)|
    |Next Node|[myRule_1_A1](#myrule_1_a1)|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |today|Date|TODAY()|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|FPS Agreement Date|
    |Input Reference|$Record.Plan__r|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |FPS_Agreement_Signed__c|today|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

