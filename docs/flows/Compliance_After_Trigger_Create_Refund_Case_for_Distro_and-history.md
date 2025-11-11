# Compliance_After_Trigger_Create_Refund_Case_for_Distro_and history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Compliance_After_Trigger_Create_Refund_Case_for_Distro_and-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "2013119312"
    
    Create_Case_for_Distro[("➕ <em></em><br/>Create Case for Distro")]:::recordCreates
    click Create_Case_for_Distro "#create_case_for_distro" "1942763554"
    
    Create_Case_for_Distro --> END_Create_Case_for_Distro
    START -->  Create_Case_for_Distro
    END_Create_Case_for_Distro(( END )):::endClass
    
    
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
    |Object|Compliance__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create And Update|
    |Label|Compliance | After Trigger | Create Refund Case|
    |Status|Active|
    |Description|If Correction Method Chosen = "Refund", create case for Distributions, and if there is a dollar value greater than $0 in Attributable Match also create a case for Ops.|
    |Environments|Default|
    |Interview Label|Compliance | After Trigger | Create Refund Case for Distro and {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Create_Case_for_Distro](#create_case_for_distro)|
    |Next Node|[Create_Case_for_Distro](#create_case_for_distro)|
    
    
    #### Filters (logic: **1 AND 6 AND (2 OR 3 OR 4 OR 5)**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Correction_Method_Selected__c| Equal To|Refund|
    |2|Attributable_Match__c| Greater Than|numberValue: 0<br/>|
    |3|Corrective_Distribution_Pre_Tax__c| Greater Than|numberValue: 0<br/>|
    |4|Corrective_Distribution_Roth__c| Greater Than|numberValue: 0<br/>|
    |5|Corrective_Distribution_Match__c| Greater Than|numberValue: 0<br/>|
    |6|Correction_Method_Selected__c| Is Changed|✅|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |DistroCaseSubject|String|"ADP/ACP Refund for " + $Record.Plan__r.Name|<!-- -->|
    |DistroDescription|String|"The Correction Method Selected for " + $Record.Plan__r.Name + "'s ADP/ACP Test was Refund." + " Attributable Match amount is " +TEXT($Record.Attributable_Match__c) + "."|<!-- -->|
    |OpsDescription|String|"ADP/ACP Refund for " + $Record.Plan__r.Name + "." + "Attributable Match amount is " +TEXT($Record.Attributable_Match__c)|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Create_Case_for_Distro
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Create Case for Distro|
    |Store Output Automatically|✅|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|$Record.Account__c|
    |BusinessHoursId|01m37000000L07P|
    |Case_Source__c|Internal|
    |Case_Type__c|Single Case|
    |Category__c|ADP ACP Refund|
    |Child_Case_Instructions__c|distroChildCaseInstructions|
    |Department__c|Reconciliations & Withdrawals|
    |Description|DistroDescription|
    |Origin|Internal|
    |OwnerId|005Ho00000AnvFJ|
    |Plan__c|$Record.Plan__c|
    |RecordTypeId|012Ho000000NtUe|
    |Status|New|
    |Subject|DistroCaseSubject|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

