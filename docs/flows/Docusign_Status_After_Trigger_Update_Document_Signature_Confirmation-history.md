# Docusign_Status_After_Trigger_Update_Document_Signature_Confirmation history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Docusign_Status_After_Trigger_Update_Document_Signature_Confirmation-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "1853436789"
    
    Doc_Type_Validation{"🔀 <em></em><br/>Doc Type Validation"}:::decisions
    click Doc_Type_Validation "#doc_type_validation" "945989540"
    
    Update_Implementation[("🛠️ <em></em><br/>Update Implementation")]:::recordUpdates
    click Update_Implementation "#update_implementation" "905410580"
    
    Doc_Type_Validation --> |"Adoption Agreement"| Update_Implementation
    Doc_Type_Validation --> |"Default Outcome"| END_Doc_Type_Validation
    Update_Implementation --> END_Update_Implementation
    START -->  Doc_Type_Validation
    END_Doc_Type_Validation(( END )):::endClass
    END_Update_Implementation(( END )):::endClass
    
    
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
    |Object|dsfs__DocuSign_Status__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create And Update|
    |Label|Docusign Status | After Trigger | Update Document Signature Confirmation|
    |Status|Active|
    |Does Require Record Changed To Meet Criteria|✅|
    |Description|Added Onedigital Morley doc|
    |Environments|Default|
    |Interview Label|Docusign Status | After Trigger | {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Doc_Type_Validation](#doc_type_validation)|
    |Next Node|[Doc_Type_Validation](#doc_type_validation)|
    
    
    #### Filters (logic: **1 AND (2 OR 3)**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Implementation__c| Is Null|<!-- -->|
    |2|dsfs__Completed_Date_Time__c| Is Null|<!-- -->|
    |3|dsfs__Envelope_Status__c| Equal To|Completed|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |completionDate|Date|DATEVALUE({!$Record.dsfs__Completed_Date_Time__c})|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Doc_Type_Validation
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Doc Type Validation|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Adoption_Agreement (Adoption Agreement)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Implementation](#update_implementation)|
    |Condition Logic|(1 OR 2) AND ((3 AND (NOT 5)) OR (4 AND 5) OR (5 AND 6 AND 7))|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Implementation__r.Ubiquity_Plan_Documents_Signed__c| Is Null|✅|
    |2|$Record.Implementation__r.Adoption_Agreement__c| Equal To|⬜|
    |3|$Record.dsfs__Subject__c| Contains|Adoption|
    |4|$Record.dsfs__Subject__c| Contains|Wilshire|
    |5|$Record.Implementation__r.Service_Option__c| Equal To|Simply Retirement Unbundled|
    |6|$Record.dsfs__Subject__c| Contains|Morley Stable Value abbreviated Participation|
    |7|$Record.Implementation__r.X3_38__c| Equal To|OneDigital|
    
    
    
    
    ### Update_Implementation
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Implementation__c|
    |Label|Update Implementation|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$Record.Implementation__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Adoption_Agreement__c|✅|
    |Ubiquity_Plan_Documents_Signed__c|completionDate|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

