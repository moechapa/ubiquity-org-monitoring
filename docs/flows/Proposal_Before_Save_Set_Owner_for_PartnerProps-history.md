# Proposal_Before_Save_Set_Owner_for_PartnerProps history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Proposal_Before_Save_Set_Owner_for_PartnerProps-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record Before Save</b>"]):::startClass
    click START "#general-information" "2056976828"
    
    Record_Type_Split{"🔀 <em></em><br/>Record Type Split"}:::decisions
    click Record_Type_Split "#record_type_split" "3478613841"
    
    Find_Partner_Proposal_Queue_Id[("🔍 <em></em><br/>Find Partner Proposal Queue Id")]:::recordLookups
    click Find_Partner_Proposal_Queue_Id "#find_partner_proposal_queue_id" "739479527"
    
    Get_and_Set_Sallus_Record_Type[("🔍 <em></em><br/>Get and Set Sallus Record Type")]:::recordLookups
    click Get_and_Set_Sallus_Record_Type "#get_and_set_sallus_record_type" "3003823011"
    
    Get_and_Set_Simply_Record_Type[("🔍 <em></em><br/>Get and Set Simply Record Type")]:::recordLookups
    click Get_and_Set_Simply_Record_Type "#get_and_set_simply_record_type" "2657503221"
    
    Record_Type_Split --> |"Needs Simply Record Type"| Get_and_Set_Simply_Record_Type
    Record_Type_Split --> |"Sallus"| Get_and_Set_Sallus_Record_Type
    Find_Partner_Proposal_Queue_Id --> Record_Type_Split
    Get_and_Set_Sallus_Record_Type --> END_Get_and_Set_Sallus_Record_Type
    Get_and_Set_Simply_Record_Type --> END_Get_and_Set_Simply_Record_Type
    START -->  Find_Partner_Proposal_Queue_Id
    END_Get_and_Set_Sallus_Record_Type(( END )):::endClass
    END_Get_and_Set_Simply_Record_Type(( END )):::endClass
    
    
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
    |Object|Proposal__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record Before Save|
    |Record Trigger Type| Create|
    |Label|Proposal | Before Save | Owner and RecType for PartnerProps|
    |Status|Active|
    |Description|Sets default owner and recordtype for proposals created from partner API|
    |Environments|Default|
    |Interview Label|Proposal | Before Save | Set Owner for PartnerProps {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Find_Partner_Proposal_Queue_Id](#find_partner_proposal_queue_id)|
    |Next Node|[Find_Partner_Proposal_Queue_Id](#find_partner_proposal_queue_id)|
    
    
    #### Filters (logic: **or**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Principal_Id__c| Is Null|<!-- -->|
    |2|Sallus_ID__c| Is Null|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Record_Type_Split
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Record Type Split|
    |Default Connector|[Get_and_Set_Sallus_Record_Type](#get_and_set_sallus_record_type)|
    |Default Connector Label|Sallus|
    
    
    #### Rule Needs_Simply_Record_Type (Needs Simply Record Type)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_and_Set_Simply_Record_Type](#get_and_set_simply_record_type)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Principal_Id__c| Is Blank|⬜|
    
    
    
    
    ### Find_Partner_Proposal_Queue_Id
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Group|
    |Label|Find Partner Proposal Queue Id|
    |Assign Null Values If No Records Found|⬜|
    |Output Assignments|assignToReference: $Record.OwnerId<br/>field: Id<br/>|
    |Connector|[Record_Type_Split](#record_type_split)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|DeveloperName| Equal To|Partner_Proposal|
    
    
    
    
    ### Get_and_Set_Sallus_Record_Type
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|RecordType|
    |Label|Get and Set Sallus Record Type|
    |Assign Null Values If No Records Found|⬜|
    |Output Assignments|assignToReference: $Record.RecordTypeId<br/>field: Id<br/>|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|SobjectType| Equal To|Proposal__c|
    |2|DeveloperName| Equal To|Sallus_Proposal|
    
    
    
    
    ### Get_and_Set_Simply_Record_Type
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|RecordType|
    |Label|Get and Set Simply Record Type|
    |Assign Null Values If No Records Found|⬜|
    |Output Assignments|assignToReference: $Record.RecordTypeId<br/>field: Id<br/>|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|SobjectType| Equal To|Proposal__c|
    |2|DeveloperName| Equal To|Simply_Proposal|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

