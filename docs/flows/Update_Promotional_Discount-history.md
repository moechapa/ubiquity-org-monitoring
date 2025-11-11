# Update_Promotional_Discount history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Update_Promotional_Discount-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>"]):::startClass
    click START "#general-information" "2923920411"
    
    Add_Discount[\"🟰 <em></em><br/>Add Discount"/]:::assignments
    click Add_Discount "#add_discount" "946307711"
    
    Add_to_update_collection[\"🟰 <em></em><br/>Add to update collection"/]:::assignments
    click Add_to_update_collection "#add_to_update_collection" "1561543412"
    
    Assign_new_comm_and_disc[\"🟰 <em></em><br/>Assign new comm and disc"/]:::assignments
    click Assign_new_comm_and_disc "#assign_new_comm_and_disc" "272448008"
    
    Remove_promo_applied[\"🟰 <em></em><br/>Remove promo applied"/]:::assignments
    click Remove_promo_applied "#remove_promo_applied" "778532309"
    
    Reset_Update_Flag[\"🟰 <em></em><br/>Reset Update Flag"/]:::assignments
    click Reset_Update_Flag "#reset_update_flag" "1235871235"
    
    Check_if_prods_2_update{"🔀 <em></em><br/>Check if prods 2 update"}:::decisions
    click Check_if_prods_2_update "#check_if_prods_2_update" "2489906500"
    
    Family_Check{"🔀 <em></em><br/>Family Check"}:::decisions
    click Family_Check "#family_check" "1945900883"
    
    Prod_Discounted_Check{"🔀 <em></em><br/>Prod Discounted Check"}:::decisions
    click Prod_Discounted_Check "#prod_discounted_check" "3098665397"
    
    Prod_Loop{{"🔁 <em></em><br/>Prod Loop"}}:::loops
    click Prod_Loop "#prod_loop" "2978198867"
    
    Promo_Loop{{"🔁 <em></em><br/>Promo Loop"}}:::loops
    click Promo_Loop "#promo_loop" "861756744"
    
    Get_Products[("🔍 <em></em><br/>Get Products")]:::recordLookups
    click Get_Products "#get_products" "991883517"
    
    Get_Promotions[("🔍 <em></em><br/>Get Promotions")]:::recordLookups
    click Get_Promotions "#get_promotions" "817263125"
    
    Commit_updates[("🛠️ <em></em><br/>Commit updates")]:::recordUpdates
    click Commit_updates "#commit_updates" "3775596448"
    
    Add_Discount --> Promo_Loop
    Add_to_update_collection --> Prod_Loop
    Assign_new_comm_and_disc --> Add_to_update_collection
    Remove_promo_applied --> Add_to_update_collection
    Reset_Update_Flag --> Promo_Loop
    Check_if_prods_2_update --> |"update coll not empty"| Commit_updates
    Check_if_prods_2_update --> |"Default Outcome"| END_Check_if_prods_2_update
    Family_Check --> |"Fam Match"| Add_Discount
    Family_Check --> |"Default Outcome"| Promo_Loop
    Prod_Discounted_Check --> |"Needs Promo Applied"| Assign_new_comm_and_disc
    Prod_Discounted_Check --> |"Needs Promo Removed"| Remove_promo_applied
    Prod_Discounted_Check --> |"Default Outcome"| Prod_Loop
    Prod_Loop --> |"For Each"|Reset_Update_Flag
    Prod_Loop ---> |"After Last"|Check_if_prods_2_update
    Promo_Loop --> |"For Each"|Family_Check
    Promo_Loop ---> |"After Last"|Prod_Discounted_Check
    Get_Products --> Get_Promotions
    Get_Promotions --> Prod_Loop
    Commit_updates --> END_Commit_updates
    START -->  Get_Products
    END_Check_if_prods_2_update(( END )):::endClass
    END_Commit_updates(( END )):::endClass
    
    
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
    |Label|Opportunity | Process | Update Promotional Discount|
    |Status|Active|
    |Description|If a Promotion is present, apply specified discount to Products|
    |Environments|Default|
    |Interview Label|Update Promotional Discount {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Products](#get_products)|
    |Next Node|[Get_Products](#get_products)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |comm|Currency|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |deletedPromoId|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |disc|Number|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |needsUpdate|Boolean|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |prods2Update|SObject|✅|⬜|⬜|OpportunityLineItem|<!-- -->|
    |recordId|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |defaultComm|Currency|({!Prod_Loop.ListPrice} * {!Prod_Loop.Quantity})|Commission before partner fee, discount, promo|
    |discountDollarAmount|Currency|{!defaultComm} * ({!Promo_Loop.Discount__c} / 100)|<!-- -->|
    |subtractFromComm|Currency|{!discountDollarAmount} - ({!discountDollarAmount} * ({!Promo_Loop.Commission__c} / 100))|The amount to be taken from commission for this promotion|
    
    
    ## Flow Nodes Details
    
    ### Add_Discount
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add Discount|
    |Connector|[Promo_Loop](#promo_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |disc| Add|Promo_Loop.Discount__c|
    |comm| Subtract|subtractFromComm|
    |needsUpdate| Assign|✅|
    
    
    
    
    ### Add_to_update_collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add to update collection|
    |Connector|[Prod_Loop](#prod_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |prods2Update| Add|[Prod_Loop](#prod_loop)|
    
    
    
    
    ### Assign_new_comm_and_disc
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign new comm and disc|
    |Connector|[Add_to_update_collection](#add_to_update_collection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Prod_Loop.Commissionable_Amount_Editable__c| Assign|comm|
    |Prod_Loop.Discount_Percentage__c| Assign|disc|
    |Prod_Loop.Promotion_Applied__c| Assign|✅|
    
    
    
    
    ### Remove_promo_applied
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Remove promo applied|
    |Connector|isGoTo: true<br/>targetReference: Add_to_update_collection<br/>|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Prod_Loop.Promotion_Applied__c| Assign|⬜|
    |Prod_Loop.Discount_Percentage__c| Assign|<!-- -->|
    
    
    
    
    ### Reset_Update_Flag
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Reset Update Flag|
    |Connector|[Promo_Loop](#promo_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |needsUpdate| Assign|⬜|
    |comm| Assign|defaultComm|
    |disc| Assign|numberValue: 0<br/>|
    
    
    
    
    ### Check_if_prods_2_update
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check if prods 2 update|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule update_coll_not_empty (update coll not empty)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Commit_updates](#commit_updates)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|prods2Update| Is Empty|⬜|
    
    
    
    
    ### Family_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Family Check|
    |Default Connector|[Promo_Loop](#promo_loop)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Fam_Match (Fam Match)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Add_Discount](#add_discount)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Prod_Loop.Product_Family__c| Equal To|Promo_Loop.Product_Family__c|
    
    
    
    
    ### Prod_Discounted_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Prod Discounted Check|
    |Default Connector|[Prod_Loop](#prod_loop)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Needs_Promo_Applied (Needs Promo Applied)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_new_comm_and_disc](#assign_new_comm_and_disc)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|needsUpdate| Equal To|✅|
    
    
    
    
    #### Rule Needs_Promo_Removed (Needs Promo Removed)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Remove_promo_applied](#remove_promo_applied)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Prod_Loop.Promotion_Applied__c| Equal To|✅|
    |2|needsUpdate| Equal To|⬜|
    
    
    
    
    ### Prod_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Prod Loop|
    |Collection Reference|[Get_Products](#get_products)|
    |Iteration Order|Asc|
    |Next Value Connector|[Reset_Update_Flag](#reset_update_flag)|
    |No More Values Connector|[Check_if_prods_2_update](#check_if_prods_2_update)|
    
    
    ### Promo_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Promo Loop|
    |Collection Reference|[Get_Promotions](#get_promotions)|
    |Iteration Order|Asc|
    |Next Value Connector|[Family_Check](#family_check)|
    |No More Values Connector|[Prod_Discounted_Check](#prod_discounted_check)|
    
    
    ### Get_Products
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|OpportunityLineItem|
    |Label|Get Products|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Queried Fields|- Id<br/>- Product_Family__c<br/>- Discount<br/>- OpportunityId<br/>- Discount_Percentage__c<br/>- Commissionable_Amount_Editable__c<br/>- ListPrice<br/>- Quantity<br/>- Promotion_Applied__c<br/>|
    |Store Output Automatically|✅|
    |Connector|[Get_Promotions](#get_promotions)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|OpportunityId| Equal To|recordId|
    
    
    
    
    ### Get_Promotions
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Opportunity_Promotion__c|
    |Label|Get Promotions|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Queried Fields|- Id<br/>- Product_Family__c<br/>- Opportunity__c<br/>- Discount__c<br/>- Commission__c<br/>|
    |Store Output Automatically|✅|
    |Connector|[Prod_Loop](#prod_loop)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Opportunity__c| Equal To|recordId|
    |2|Id| Not Equal To|deletedPromoId|
    
    
    
    
    ### Commit_updates
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Commit updates|
    |Input Reference|prods2Update|
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

