# Opportunity_Promotion_After_Delete_Remove_Code_From_Proposal history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Opportunity_Promotion_After_Delete_Remove_Code_From_Proposal-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record Before Delete</b>"]):::startClass
    click START "#general-information" "1469686660"
    
    Add_to_update_collection[\"🟰 <em></em><br/>Add to update collection"/]:::assignments
    click Add_to_update_collection "#add_to_update_collection" "2049453085"
    
    Wipe_Proposal_Field[\"🟰 <em></em><br/>Wipe Proposal Field"/]:::assignments
    click Wipe_Proposal_Field "#wipe_proposal_field" "1806270284"
    
    Wipe_This_Code[\"🟰 <em></em><br/>Wipe This Code"/]:::assignments
    click Wipe_This_Code "#wipe_this_code" "688857698"
    
    Are_there_props_needing_update{"🔀 <em></em><br/>Are there props needing update"}:::decisions
    click Are_there_props_needing_update "#are_there_props_needing_update" "438567987"
    
    Check_if_proposal_contains_this_promo_code{"🔀 <em></em><br/>Check if proposal contains this promo code"}:::decisions
    click Check_if_proposal_contains_this_promo_code "#check_if_proposal_contains_this_promo_code" "1373810230"
    
    Proposal_Loop{{"🔁 <em></em><br/>Proposal Loop"}}:::loops
    click Proposal_Loop "#proposal_loop" "181282360"
    
    Get_Related_Proposals[("🔍 <em></em><br/>Get Related Proposals")]:::recordLookups
    click Get_Related_Proposals "#get_related_proposals" "578815697"
    
    Update_Proposals[("🛠️ <em></em><br/>Update Proposals")]:::recordUpdates
    click Update_Proposals "#update_proposals" "1899585918"
    
    Add_to_update_collection --> Proposal_Loop
    Wipe_Proposal_Field --> Add_to_update_collection
    Wipe_This_Code --> Add_to_update_collection
    Are_there_props_needing_update --> |"Need prop update"| Update_Proposals
    Are_there_props_needing_update --> |"Default Outcome"| END_Are_there_props_needing_update
    Check_if_proposal_contains_this_promo_code --> |"Contains only this promo code"| Wipe_Proposal_Field
    Check_if_proposal_contains_this_promo_code --> |"Contains Multiple Codes"| Wipe_This_Code
    Check_if_proposal_contains_this_promo_code --> |"Does not contain this code"| Proposal_Loop
    Proposal_Loop --> |"For Each"|Check_if_proposal_contains_this_promo_code
    Proposal_Loop ---> |"After Last"|Are_there_props_needing_update
    Get_Related_Proposals --> Proposal_Loop
    Update_Proposals --> END_Update_Proposals
    START -->  Get_Related_Proposals
    END_Are_there_props_needing_update(( END )):::endClass
    END_Update_Proposals(( END )):::endClass
    
    
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
    |Object|Opportunity_Promotion__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record Before Delete|
    |Record Trigger Type| Delete|
    |Label|Opportunity Promotion | After Delete | Remove Code From Proposal|
    |Status|Active|
    |Description|Removes this promotion's promo code (if present) from any proposals related to opportunity|
    |Environments|Default|
    |Interview Label|Opportunity Promotion | After Delete | Remove Code From Proposal {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Related_Proposals](#get_related_proposals)|
    |Next Node|[Get_Related_Proposals](#get_related_proposals)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Opportunity__c| Is Null|<!-- -->|
    |2|Promo_Code__c| Is Null|<!-- -->|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |props2Update|SObject|✅|⬜|⬜|Proposal__c|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |removedPromoCode|String|IF(<br/>FIND(";", {!Proposal_Loop.Promo_Code__c}, FIND({!$Record.Promo_Code__c}, {!Proposal_Loop.Promo_Code__c})) > 0,<br/>SUBSTITUTE({!Proposal_Loop.Promo_Code__c}, {!$Record.Promo_Code__c}&";", ""),<br/>SUBSTITUTE({!Proposal_Loop.Promo_Code__c}, ";"&{!$Record.Promo_Code__c}, ""))|Formula that removes promo code of deleted promotion from proposal field|
    
    
    ## Flow Nodes Details
    
    ### Add_to_update_collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add to update collection|
    |Connector|[Proposal_Loop](#proposal_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |props2Update| Add|[Proposal_Loop](#proposal_loop)|
    
    
    
    
    ### Wipe_Proposal_Field
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Wipe Proposal Field|
    |Connector|[Add_to_update_collection](#add_to_update_collection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Proposal_Loop.Promo_Code__c| Assign|stringValue: ''<br/>|
    
    
    
    
    ### Wipe_This_Code
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Wipe This Code|
    |Connector|isGoTo: true<br/>targetReference: Add_to_update_collection<br/>|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Proposal_Loop.Promo_Code__c| Assign|removedPromoCode|
    
    
    
    
    ### Are_there_props_needing_update
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Are there props needing update|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Need_prop_update (Need prop update)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Proposals](#update_proposals)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|props2Update| Is Empty|⬜|
    
    
    
    
    ### Check_if_proposal_contains_this_promo_code
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check if proposal contains this promo code|
    |Default Connector|[Proposal_Loop](#proposal_loop)|
    |Default Connector Label|Does not contain this code|
    
    
    #### Rule Contains_only_this_promo_code (Contains only this promo code)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Wipe_Proposal_Field](#wipe_proposal_field)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Proposal_Loop.Promo_Code__c| Equal To|$Record.Promo_Code__c|
    
    
    
    
    #### Rule Contains_Multiple_Codes (Contains Multiple Codes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Wipe_This_Code](#wipe_this_code)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Proposal_Loop.Promo_Code__c| Contains|;|
    |2|Proposal_Loop.Promo_Code__c| Contains|$Record.Promo_Code__c|
    
    
    
    
    ### Proposal_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Proposal Loop|
    |Collection Reference|[Get_Related_Proposals](#get_related_proposals)|
    |Iteration Order|Asc|
    |Next Value Connector|[Check_if_proposal_contains_this_promo_code](#check_if_proposal_contains_this_promo_code)|
    |No More Values Connector|[Are_there_props_needing_update](#are_there_props_needing_update)|
    
    
    ### Get_Related_Proposals
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Proposal__c|
    |Label|Get Related Proposals|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Queried Fields|- Id<br/>- Promo_Code__c<br/>|
    |Store Output Automatically|✅|
    |Connector|[Proposal_Loop](#proposal_loop)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Opportunity__c| Equal To|$Record.Opportunity__c|
    
    
    
    
    ### Update_Proposals
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Proposals|
    |Input Reference|props2Update|
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

