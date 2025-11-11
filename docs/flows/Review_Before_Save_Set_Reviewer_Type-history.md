# Review_Before_Save_Set_Reviewer_Type history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Review_Before_Save_Set_Reviewer_Type-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record Before Save</b>"]):::startClass
    click START "#general-information" "3019340134"
    
    Reviewer_Type_Saver[\"🟰 <em></em><br/>Reviewer Type = Saver"/]:::assignments
    click Reviewer_Type_Saver "#reviewer_type_saver" "320478659"
    
    Reviewer_Type_ST[\"🟰 <em></em><br/>Reviewer Type = ST"/]:::assignments
    click Reviewer_Type_ST "#reviewer_type_st" "2298912374"
    
    Check_contact_role{"🔀 <em></em><br/>Check contact role"}:::decisions
    click Check_contact_role "#check_contact_role" "3214017759"
    
    Reviewer_Type_Saver --> END_Reviewer_Type_Saver
    Reviewer_Type_ST --> END_Reviewer_Type_ST
    Check_contact_role --> |"Sponsor / Trustee"| Reviewer_Type_ST
    Check_contact_role --> |"Saver"| Reviewer_Type_Saver
    Check_contact_role --> |"Default Outcome"| END_Check_contact_role
    START -->  Check_contact_role
    END_Reviewer_Type_Saver(( END )):::endClass
    END_Reviewer_Type_ST(( END )):::endClass
    END_Check_contact_role(( END )):::endClass
    
    
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
    |Object|Reviews__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record Before Save|
    |Record Trigger Type| Create And Update|
    |Label|Review | Before Save | Set Reviewer Type|
    |Status|Active|
    |Description|Uses the contact's role to set a reviewer type|
    |Environments|Default|
    |Interview Label|Review | Before Save | Set Reviewer Type {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Check_contact_role](#check_contact_role)|
    |Next Node|[Check_contact_role](#check_contact_role)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Reviewer_Contact__c| Is Null|<!-- -->|
    |2|Reviewer_Type__c| Is Null|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Reviewer_Type_Saver
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Reviewer Type = Saver|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Reviewer_Type__c| Assign|Saver|
    
    
    
    
    ### Reviewer_Type_ST
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Reviewer Type = ST|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Reviewer_Type__c| Assign|Sponsor and/or Trustee|
    
    
    
    
    ### Check_contact_role
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check contact role|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Sponsor_Trustee (Sponsor / Trustee)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Reviewer_Type_ST](#reviewer_type_st)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Reviewer_Contact__r.Role__c| Contains|Sponsor|
    |2|$Record.Reviewer_Contact__r.Role__c| Contains|Trustee|
    
    
    
    
    #### Rule Saver (Saver)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Reviewer_Type_Saver](#reviewer_type_saver)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Reviewer_Contact__r.Role__c| Contains|Saver|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

