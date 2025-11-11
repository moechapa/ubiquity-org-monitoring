# Update_Opportunity_Line_Items history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Update_Opportunity_Line_Items-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>"]):::startClass
    click START "#general-information" "2727569889"
    
    Assign_Id[\"🟰 <em></em><br/>Assign Id"/]:::assignments
    click Assign_Id "#assign_id" "2987391593"
    
    Referral_Discount[\"🟰 <em></em><br/>Referral Discount"/]:::assignments
    click Referral_Discount "#referral_discount" "919949723"
    
    Referral_Discount_Amount[\"🟰 <em></em><br/>Referral Discount Amount"/]:::assignments
    click Referral_Discount_Amount "#referral_discount_amount" "2206036500"
    
    Discount_Needed{"🔀 <em></em><br/>Discount Needed?"}:::decisions
    click Discount_Needed "#discount_needed" "2511412269"
    
    Do_Products_Exist{"🔀 <em></em><br/>Do Products Exist?"}:::decisions
    click Do_Products_Exist "#do_products_exist" "3795596547"
    
    Does_Product_Exist{"🔀 <em></em><br/>Does Product Exist?"}:::decisions
    click Does_Product_Exist "#does_product_exist" "3646145745"
    
    Is_Price_Book_Already_Set{"🔀 <em></em><br/>Is Price Book Already Set?"}:::decisions
    click Is_Price_Book_Already_Set "#is_price_book_already_set" "400390113"
    
    Product_Type{"🔀 <em></em><br/>Product Type"}:::decisions
    click Product_Type "#product_type" "41120679"
    
    Products_To_Delete{"🔀 <em></em><br/>Products To Delete?"}:::decisions
    click Products_To_Delete "#products_to_delete" "526167981"
    
    Products_to_Replace{"🔀 <em></em><br/>Products to Replace"}:::decisions
    click Products_to_Replace "#products_to_replace" "2018943462"
    
    Product_Loop{{"🔁 <em></em><br/>Product Loop"}}:::loops
    click Product_Loop "#product_loop" "2104519334"
    
    Create_Product[("➕ <em></em><br/>Create Product")]:::recordCreates
    click Create_Product "#create_product" "2925005922"
    
    Delete_Old_Product[("🗑️ <em></em><br/>Delete Old Product")]:::recordDeletes
    click Delete_Old_Product "#delete_old_product" "1558769537"
    
    Delete_Related_Products[("🗑️ <em></em><br/>Delete Related Products")]:::recordDeletes
    click Delete_Related_Products "#delete_related_products" "3393570188"
    
    CreatedBy[("🔍 <em></em><br/>CreatedBy")]:::recordLookups
    click CreatedBy "#createdby" "4094551722"
    
    Get_Opp[("🔍 <em></em><br/>Get Opp")]:::recordLookups
    click Get_Opp "#get_opp" "409224399"
    
    Get_Products[("🔍 <em></em><br/>Get Products")]:::recordLookups
    click Get_Products "#get_products" "3271729327"
    
    Get_Products_0[("🔍 <em></em><br/>Get Products")]:::recordLookups
    click Get_Products_0 "#get_products_0" "1400728139"
    
    Add_On_Pricebook[("🛠️ <em></em><br/>Add-On Pricebook")]:::recordUpdates
    click Add_On_Pricebook "#add_on_pricebook" "4263672840"
    
    Update_Pricebook[("🛠️ <em></em><br/>401(k) Pricebook")]:::recordUpdates
    click Update_Pricebook "#update_pricebook" "2369094395"
    
    Update_Pricebook_0[("🛠️ <em></em><br/>Single(k) Pricebook")]:::recordUpdates
    click Update_Pricebook_0 "#update_pricebook_0" "2925520172"
    
    Update_Pricebook_0_0[("🛠️ <em></em><br/>Upgrade Pricebook")]:::recordUpdates
    click Update_Pricebook_0_0 "#update_pricebook_0_0" "2446206412"
    
    Update_Pricebook_0_0_0[("🛠️ <em></em><br/>Simply Pricebook")]:::recordUpdates
    click Update_Pricebook_0_0_0 "#update_pricebook_0_0_0" "4050864074"
    
    Update_Pricebook_0_0_0_0[("🛠️ <em></em><br/>RewardJet Pricebook")]:::recordUpdates
    click Update_Pricebook_0_0_0_0 "#update_pricebook_0_0_0_0" "1419741244"
    
    Update_Pricebook_0_0_0_0_0[("🛠️ <em></em><br/>JPM Pricebook")]:::recordUpdates
    click Update_Pricebook_0_0_0_0_0 "#update_pricebook_0_0_0_0_0" "4195040998"
    
    Update_Pricebook_0_0_0_0_0_0[("🛠️ <em></em><br/>Rippling Pricebook")]:::recordUpdates
    click Update_Pricebook_0_0_0_0_0_0 "#update_pricebook_0_0_0_0_0_0" "2736878292"
    
    Update_Pricebook_0_0_0_0_0_0_0[("🛠️ <em></em><br/>Sallus Pricebook")]:::recordUpdates
    click Update_Pricebook_0_0_0_0_0_0_0 "#update_pricebook_0_0_0_0_0_0_0" "2759818925"
    
    Check_for_Promotions[["🔗 <em>Subflow</em><br/>Check for Promotions"]]:::subflows
    click Check_for_Promotions "#check_for_promotions" "1918846995"
    
    Assign_Id --> Product_Loop
    Referral_Discount --> Create_Product
    Referral_Discount_Amount --> Create_Product
    Discount_Needed --> |"Yes, Referral"| Referral_Discount
    Discount_Needed --> |"Yes, ProBeauty"| Referral_Discount
    Discount_Needed --> |"Yes, PSIVet"| Referral_Discount_Amount
    Discount_Needed --> |"No"| Create_Product
    Do_Products_Exist --> |"Yes"| Delete_Related_Products
    Do_Products_Exist --> |"No"| Product_Type
    Does_Product_Exist --> |"No"| Discount_Needed
    Does_Product_Exist --> |"Yes"| Product_Loop
    Is_Price_Book_Already_Set --> |"Yes"| Get_Products_0
    Is_Price_Book_Already_Set --> |"No"| Product_Type
    Product_Type --> |"Add-On"| Add_On_Pricebook
    Product_Type --> |"Upgrade"| Update_Pricebook_0_0
    Product_Type --> |"Single(k)"| Update_Pricebook_0
    Product_Type --> |"JPM"| Update_Pricebook_0_0_0_0_0
    Product_Type --> |"RewardJet"| Update_Pricebook_0_0_0_0
    Product_Type --> |"Rippling"| Update_Pricebook_0_0_0_0_0_0
    Product_Type --> |"401(K)"| Update_Pricebook
    Product_Type --> |"Simply Retirement"| Update_Pricebook_0_0_0
    Product_Type --> |"Sallus"| Update_Pricebook_0_0_0_0_0_0_0
    Product_Type --> |"Default Outcome"| END_Product_Type
    Products_To_Delete --> |"Yes"| Delete_Old_Product
    Products_To_Delete --> |"No"| Discount_Needed
    Products_to_Replace --> |"Replacement Found"| Assign_Id
    Products_to_Replace --> |"No Replacement"| Product_Loop
    Product_Loop --> |"For Each"|Products_to_Replace
    Product_Loop ---> |"After Last"|Products_To_Delete
    Create_Product --> Check_for_Promotions
    Delete_Old_Product --> Discount_Needed
    Delete_Related_Products --> Product_Type
    CreatedBy --> Is_Price_Book_Already_Set
    Get_Opp --> CreatedBy
    Get_Products --> Does_Product_Exist
    Get_Products_0 --> Do_Products_Exist
    Add_On_Pricebook --> Get_Products
    Update_Pricebook --> Get_Products
    Update_Pricebook_0 --> Get_Products
    Update_Pricebook_0_0 --> Get_Products
    Update_Pricebook_0_0_0 --> Get_Products
    Update_Pricebook_0_0_0_0 --> Get_Products
    Update_Pricebook_0_0_0_0_0 --> Get_Products
    Update_Pricebook_0_0_0_0_0_0 --> Get_Products
    Update_Pricebook_0_0_0_0_0_0_0 --> Get_Products
    START -->  Get_Opp
    Check_for_Promotions --> END_Check_for_Promotions
    END_Product_Type(( END )):::endClass
    END_Check_for_Promotions(( END )):::endClass
    
    
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
    |Label|Opportunity | Process | Add/Edit Products|
    |Status|Active|
    |Description|When Opportunity is created or edited, add or edit the associated products.|
    |Environments|Default|
    |Interview Label|Update Opportunity Line Items {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Opp](#get_opp)|
    |Next Node|[Get_Opp](#get_opp)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |Discount|Number|⬜|✅|✅|<!-- -->|<!-- -->|
    |DiscountAmount|Currency|⬜|✅|⬜|<!-- -->|<!-- -->|
    |LoopVar|SObject|⬜|✅|✅|OpportunityLineItem|<!-- -->|
    |Opp|SObject|⬜|✅|✅|Opportunity|<!-- -->|
    |PriceBook|SObject|⬜|✅|✅|Pricebook2|<!-- -->|
    |ProductFamily|String|⬜|✅|✅|<!-- -->|<!-- -->|
    |productId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    |ProductsToDelete|SObject|✅|✅|✅|OpportunityLineItem|<!-- -->|
    |recordId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    |relatedProduct|SObject|⬜|✅|✅|OpportunityLineItem|<!-- -->|
    |RelatedProducts|SObject|✅|✅|✅|OpportunityLineItem|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Assign_Id
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Id|
    |Connector|[Product_Loop](#product_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |ProductsToDelete| Add|LoopVar|
    
    
    
    
    ### Referral_Discount
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Referral Discount|
    |Connector|[Create_Product](#create_product)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Discount| Assign|100|
    
    
    
    
    ### Referral_Discount_Amount
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Referral Discount Amount|
    |Connector|[Create_Product](#create_product)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |DiscountAmount| Assign|300|
    
    
    
    
    ### Discount_Needed
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Discount Needed?|
    |Default Connector|[Create_Product](#create_product)|
    |Default Connector Label|No|
    
    
    #### Rule YesReferral (Yes, Referral)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Referral_Discount](#referral_discount)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Opp.LeadSource| Equal To|Referral|
    |2|ProductFamily| Equal To|Setup|
    |3|CreatedBy.UserRoleId| Not Equal To|00E00000006xFiWEAU|
    
    
    
    
    #### Rule Yes_ProBeauty (Yes, ProBeauty)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Referral_Discount](#referral_discount)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Opp.LeadSourceDetail__c| Equal To|ProBeauty|
    |2|ProductFamily| Equal To|Setup|
    
    
    
    
    #### Rule Yes_PSIVet (Yes, PSIVet)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Referral_Discount_Amount](#referral_discount_amount)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Opp.LeadSourceDetail__c| Equal To|PSIvet|
    |2|ProductFamily| Equal To|401(k)|
    
    
    
    
    ### Do_Products_Exist
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Do Products Exist?|
    |Default Connector|[Product_Type](#product_type)|
    |Default Connector Label|No|
    
    
    #### Rule YesExistsAgain (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Delete_Related_Products](#delete_related_products)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|RelatedProducts| Is Null|⬜|
    
    
    
    
    ### Does_Product_Exist
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Does Product Exist?|
    |Default Connector|[Product_Loop](#product_loop)|
    |Default Connector Label|Yes|
    
    
    #### Rule NoProduct (No)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Discount_Needed](#discount_needed)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|RelatedProducts| Is Null|✅|
    
    
    
    
    ### Is_Price_Book_Already_Set
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Is Price Book Already Set?|
    |Default Connector|[Product_Type](#product_type)|
    |Default Connector Label|No|
    
    
    #### Rule YesPriceBookExists (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Products_0](#get_products_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Opp.Pricebook2Id| Is Null|⬜|
    
    
    
    
    ### Product_Type
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Product Type|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Add_On (Add-On)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Add_On_Pricebook](#add_on_pricebook)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Opp.Product_Type__c| Equal To|Add-On Product|
    |2|Opp.Product_Type__c| Equal To|Plan Amendment|
    
    
    
    
    #### Rule Upgrade (Upgrade)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Pricebook_0_0](#update_pricebook_0_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Opp.Product_Type__c| Equal To|Upgrade|
    
    
    
    
    #### Rule Single_k (Single(k))
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Pricebook_0](#update_pricebook_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Opp.Product_Type__c| Equal To|Single(k)|
    
    
    
    
    #### Rule JPM (JPM)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Pricebook_0_0_0_0_0](#update_pricebook_0_0_0_0_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Opp.LeadSourceDetail__c| Equal To|JPM|
    
    
    
    
    #### Rule RewardJet (RewardJet)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Pricebook_0_0_0_0](#update_pricebook_0_0_0_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Opp.LeadSourceDetail__c| Equal To|RewardJet|
    
    
    
    
    #### Rule Rippling (Rippling)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Pricebook_0_0_0_0_0_0](#update_pricebook_0_0_0_0_0_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Opp.LeadSourceDetail__c| Equal To|Rippling|
    
    
    
    
    #### Rule X401_K (401(K))
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Pricebook](#update_pricebook)|
    |Condition Logic|1 AND NOT 2|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Opp.Product_Type__c| Equal To|401(k)|
    |2|Opp.Service_Option__c| Contains|Simply Retirement|
    
    
    
    
    #### Rule Simply_Retirement (Simply Retirement)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Pricebook_0_0_0](#update_pricebook_0_0_0)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Opp.Service_Option__c| Equal To|Simply Retirement Bundled|
    |2|Opp.Service_Option__c| Equal To|Simply Retirement Unbundled|
    
    
    
    
    #### Rule Sallus (Sallus)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Pricebook_0_0_0_0_0_0_0](#update_pricebook_0_0_0_0_0_0_0)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Opp.Service_Option__c| Equal To|Starter|
    |2|Opp.Service_Option__c| Equal To|Franchise|
    |3|Opp.Service_Option__c| Equal To|Builder|
    |4|Opp.Service_Option__c| Equal To|Partner|
    
    
    
    
    ### Products_To_Delete
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Products To Delete?|
    |Default Connector|[Discount_Needed](#discount_needed)|
    |Default Connector Label|No|
    
    
    #### Rule Yes (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Delete_Old_Product](#delete_old_product)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|ProductsToDelete| Is Null|⬜|
    
    
    
    
    ### Products_to_Replace
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Products to Replace|
    |Default Connector|[Product_Loop](#product_loop)|
    |Default Connector Label|No Replacement|
    
    
    #### Rule Replacement_Found (Replacement Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Id](#assign_id)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|LoopVar.Product_Family__c| Equal To|ProductFamily|
    |2|Opp.Product_Type__c| Not Equal To|Upgrade|
    
    
    
    
    ### Product_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Product Loop|
    |Assign Next Value To Reference|LoopVar|
    |Collection Reference|RelatedProducts|
    |Iteration Order|Asc|
    |Next Value Connector|[Products_to_Replace](#products_to_replace)|
    |No More Values Connector|[Products_To_Delete](#products_to_delete)|
    
    
    ### Create_Product
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|OpportunityLineItem|
    |Label|Create Product|
    |Connector|[Check_for_Promotions](#check_for_promotions)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Discount_Amount__c|DiscountAmount|
    |Discount_Percentage__c|Discount|
    |OpportunityId|Opp.Id|
    |Product2Id|productId|
    
    
    
    
    ### Delete_Old_Product
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Delete|
    |Label|Delete Old Product|
    |Input Reference|ProductsToDelete|
    |Connector|[Discount_Needed](#discount_needed)|
    
    
    ### Delete_Related_Products
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Delete|
    |Label|Delete Related Products|
    |Input Reference|RelatedProducts|
    |Connector|[Product_Type](#product_type)|
    
    
    ### CreatedBy
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|User|
    |Label|[CreatedBy](#createdby)|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Is_Price_Book_Already_Set](#is_price_book_already_set)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Opp.OwnerId|
    
    
    
    
    ### Get_Opp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Opportunity|
    |Label|Get Opp|
    |Assign Null Values If No Records Found|✅|
    |Output Assignments|- assignToReference: Opp.Id<br/>&nbsp;&nbsp;field: Id<br/>- assignToReference: Opp.LeadSource<br/>&nbsp;&nbsp;field: LeadSource<br/>- assignToReference: Opp.LeadSourceDetail__c<br/>&nbsp;&nbsp;field: LeadSourceDetail__c<br/>- assignToReference: Opp.OwnerId<br/>&nbsp;&nbsp;field: OwnerId<br/>- assignToReference: Opp.Pricebook2Id<br/>&nbsp;&nbsp;field: Pricebook2Id<br/>- assignToReference: Opp.Product_Type__c<br/>&nbsp;&nbsp;field: Product_Type__c<br/>- assignToReference: Opp.Service_Option__c<br/>&nbsp;&nbsp;field: Service_Option__c<br/>|
    |Connector|[CreatedBy](#createdby)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Get_Products
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|OpportunityLineItem|
    |Label|Get Products|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|RelatedProducts|
    |Queried Fields|- Id<br/>- Product_Family__c<br/>|
    |Connector|[Does_Product_Exist](#does_product_exist)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|OpportunityId| Equal To|recordId|
    
    
    
    
    ### Get_Products_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|OpportunityLineItem|
    |Label|Get Products|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|RelatedProducts|
    |Queried Fields|- Id<br/>- Product_Family__c<br/>|
    |Connector|[Do_Products_Exist](#do_products_exist)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|OpportunityId| Equal To|recordId|
    |2|Product_Family__c| Equal To|ProductFamily|
    
    
    
    
    ### Add_On_Pricebook
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Opportunity|
    |Label|Add-On Pricebook|
    |Connector|[Get_Products](#get_products)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Opp.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Pricebook2Id|01s1G000001tb0rQAA|
    
    
    
    
    ### Update_Pricebook
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Opportunity|
    |Label|401(k) Pricebook|
    |Connector|[Get_Products](#get_products)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Opp.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Pricebook2Id|01s000000009U37AAE|
    
    
    
    
    ### Update_Pricebook_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Opportunity|
    |Label|Single(k) Pricebook|
    |Connector|[Get_Products](#get_products)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Opp.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Pricebook2Id|01s000000009U3vAAE|
    
    
    
    
    ### Update_Pricebook_0_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Opportunity|
    |Label|Upgrade Pricebook|
    |Connector|[Get_Products](#get_products)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Opp.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Pricebook2Id|01s1G000001tb0hQAA|
    
    
    
    
    ### Update_Pricebook_0_0_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Opportunity|
    |Label|Simply Pricebook|
    |Connector|[Get_Products](#get_products)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Opp.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Pricebook2Id|01s1G000001hXGxQAM|
    
    
    
    
    ### Update_Pricebook_0_0_0_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Opportunity|
    |Label|RewardJet Pricebook|
    |Connector|[Get_Products](#get_products)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Opp.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Pricebook2Id|01s1G000001tb0IQAQ|
    
    
    
    
    ### Update_Pricebook_0_0_0_0_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Opportunity|
    |Label|JPM Pricebook|
    |Connector|[Get_Products](#get_products)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Opp.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Pricebook2Id|01s1G000001taK0QAI|
    
    
    
    
    ### Update_Pricebook_0_0_0_0_0_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Opportunity|
    |Label|Rippling Pricebook|
    |Connector|[Get_Products](#get_products)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Opp.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Pricebook2Id|01s1G000001tb1GQAQ|
    
    
    
    
    ### Update_Pricebook_0_0_0_0_0_0_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Opportunity|
    |Label|Sallus Pricebook|
    |Connector|[Get_Products](#get_products)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Opp.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Pricebook2Id|01s1G000001H7oiQAC|
    
    
    
    
    ### Check_for_Promotions
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Subflow|
    |Label|Check for Promotions|
    |Flow Name|Update_Promotional_Discount|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |<!-- -->|recordId|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

