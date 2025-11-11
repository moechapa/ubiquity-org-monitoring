# Opportunity_Process_Create_Upgrade_Products history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Opportunity_Process_Create_Upgrade_Products-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>"]):::startClass
    click START "#general-information" "1209288971"
    
    Add_to_Collection[\"🟰 <em></em><br/>Add to Collection"/]:::assignments
    click Add_to_Collection "#add_to_collection" "4197751062"
    
    Add_to_Collection_0[\"🟰 <em></em><br/>Add to Collection"/]:::assignments
    click Add_to_Collection_0 "#add_to_collection_0" "1924124352"
    
    New_Service_Option_Product[\"🟰 <em></em><br/>New Service Option Product"/]:::assignments
    click New_Service_Option_Product "#new_service_option_product" "2893262026"
    
    Previous_Service_Option_Product[\"🟰 <em></em><br/>Previous Service Option Product"/]:::assignments
    click Previous_Service_Option_Product "#previous_service_option_product" "2340982556"
    
    Do_Existing_Products_Exist{"🔀 <em></em><br/>Do Existing Products Exist?"}:::decisions
    click Do_Existing_Products_Exist "#do_existing_products_exist" "421967334"
    
    Create_Opportunity_Products[("➕ <em></em><br/>Create Opportunity Products")]:::recordCreates
    click Create_Opportunity_Products "#create_opportunity_products" "549921025"
    
    Delete_Existing_Products[("🗑️ <em></em><br/>Delete Existing Products")]:::recordDeletes
    click Delete_Existing_Products "#delete_existing_products" "2362333442"
    
    Get_401k_Product[("🔍 <em></em><br/>Get 401(k) Product")]:::recordLookups
    click Get_401k_Product "#get_401k_product" "2301671120"
    
    Get_Existing_Products[("🔍 <em></em><br/>Get Existing Products")]:::recordLookups
    click Get_Existing_Products "#get_existing_products" "997468129"
    
    Get_Opp[("🔍 <em></em><br/>Get Opp")]:::recordLookups
    click Get_Opp "#get_opp" "1860830798"
    
    Get_Previous_401k_Product[("🔍 <em></em><br/>Get Previous 401(k) Product")]:::recordLookups
    click Get_Previous_401k_Product "#get_previous_401k_product" "3712709559"
    
    Get_Price_Book_Entry[("🔍 <em></em><br/>Get Price Book Entry")]:::recordLookups
    click Get_Price_Book_Entry "#get_price_book_entry" "2211839007"
    
    Get_Price_Book_Entry_0[("🔍 <em></em><br/>Get Price Book Entry")]:::recordLookups
    click Get_Price_Book_Entry_0 "#get_price_book_entry_0" "3514767478"
    
    Update_Opp[("🛠️ <em></em><br/>Update Opp")]:::recordUpdates
    click Update_Opp "#update_opp" "1254132895"
    
    Add_to_Collection --> Get_401k_Product
    Add_to_Collection_0 --> Update_Opp
    New_Service_Option_Product --> Add_to_Collection_0
    Previous_Service_Option_Product --> Add_to_Collection
    Do_Existing_Products_Exist --> |"Yes"| Delete_Existing_Products
    Do_Existing_Products_Exist --> |"No"| Get_Opp
    Create_Opportunity_Products --> END_Create_Opportunity_Products
    Delete_Existing_Products --> Get_Opp
    Get_401k_Product --> Get_Price_Book_Entry_0
    Get_Existing_Products --> Do_Existing_Products_Exist
    Get_Opp --> Get_Previous_401k_Product
    Get_Previous_401k_Product --> Get_Price_Book_Entry
    Get_Price_Book_Entry --> Previous_Service_Option_Product
    Get_Price_Book_Entry_0 --> New_Service_Option_Product
    Update_Opp --> Create_Opportunity_Products
    START -->  Get_Existing_Products
    END_Create_Opportunity_Products(( END )):::endClass
    
    
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
    |Label|Opportunity | Process | Create Upgrade Products|
    |Status|Active|
    |Description|Changed "Service Option" in get elements to account for Simply products|
    |Environments|Default|
    |Interview Label|Opportunity | Process | Create Upgrade Products {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Existing_Products](#get_existing_products)|
    |Next Node|[Get_Existing_Products](#get_existing_products)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |existingProducts|SObject|✅|✅|✅|OpportunityLineItem|<!-- -->|
    |newOppProduct|SObject|⬜|✅|✅|OpportunityLineItem|<!-- -->|
    |oppProduct|SObject|⬜|✅|✅|OpportunityLineItem|<!-- -->|
    |oppProductCollection|SObject|✅|✅|✅|OpportunityLineItem|<!-- -->|
    |recordId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |EmployeesNew|String|IF(ISPICKVAL({!Get_Opp.Service_Option__c},"Simply Retirement Unbundled"), "1+",<br/>IF(ISPICKVAL({!Get_Opp.Service_Option__c},"Simply Retirement Bundled"), "1+",<br/>IF({!Get_Opp.Number_of_Employees__c} <= 15, "2-15",<br/>IF({!Get_Opp.Number_of_Employees__c} <= 30, "16-30",<br/>IF({!Get_Opp.Number_of_Employees__c} <= 50, "31-50",<br/>IF({!Get_Opp.Number_of_Employees__c} <= 75, "51-75",<br/>IF({!Get_Opp.Number_of_Employees__c} <= 100, "76-100",<br/>"101+")))))))|<!-- -->|
    |EmployeesOld|String|IF(ISPICKVAL({!Get_Opp.Previous_Service_Option__c},"Simply Retirement Unbundled"), "1+",<br/>IF(ISPICKVAL({!Get_Opp.Previous_Service_Option__c},"Simply Retirement Bundled"), "1+",<br/>IF({!Get_Opp.Number_of_Employees__c} <= 15, "2-15",<br/>IF({!Get_Opp.Number_of_Employees__c} <= 30, "16-30",<br/>IF({!Get_Opp.Number_of_Employees__c} <= 50, "31-50",<br/>IF({!Get_Opp.Number_of_Employees__c} <= 75, "51-75",<br/>IF({!Get_Opp.Number_of_Employees__c} <= 100, "76-100",<br/>"101+")))))))|<!-- -->|
    |FormattedPreviousServiceOption|String|IF(TEXT({!Get_Opp.Previous_Service_Option__c})="Simply Retirement Unbundled", "Simply TPA",<br/>IF(TEXT({!Get_Opp.Previous_Service_Option__c})="Simply Retirement Bundled", "Simply |",<br/>TEXT({!Get_Opp.Previous_Service_Option__c})<br/>))|<!-- -->|
    |FormattedServiceOption|String|IF(TEXT({!Get_Opp.Service_Option__c})="Simply Retirement Unbundled", "Simply TPA",<br/>IF(TEXT({!Get_Opp.Service_Option__c})="Simply Retirement Bundled", "Simply |",<br/>TEXT({!Get_Opp.Service_Option__c})<br/>))|<!-- -->|
    |NewComp|String|"New Comp"|<!-- -->|
    |prevDiscount|Number|{!Get_Price_Book_Entry.UnitPrice} * 2|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Add_to_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add to Collection|
    |Connector|[Get_401k_Product](#get_401k_product)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |oppProductCollection| Add|oppProduct|
    
    
    
    
    ### Add_to_Collection_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add to Collection|
    |Connector|[Update_Opp](#update_opp)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |oppProductCollection| Add|newOppProduct|
    
    
    
    
    ### New_Service_Option_Product
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|New Service Option Product|
    |Connector|[Add_to_Collection_0](#add_to_collection_0)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |newOppProduct.OpportunityId| Assign|Get_Opp.Id|
    |newOppProduct.Product2Id| Assign|Get_401k_Product.Id|
    |newOppProduct.Description| Assign|New Service Option|
    
    
    
    
    ### Previous_Service_Option_Product
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Previous Service Option Product|
    |Connector|[Add_to_Collection](#add_to_collection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |oppProduct.Product2Id| Assign|Get_Previous_401k_Product.Id|
    |oppProduct.OpportunityId| Assign|Get_Opp.Id|
    |oppProduct.Discount__c| Assign|prevDiscount|
    |oppProduct.Description| Assign|Previous Service Option|
    
    
    
    
    ### Do_Existing_Products_Exist
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Do Existing Products Exist?|
    |Default Connector|[Get_Opp](#get_opp)|
    |Default Connector Label|No|
    
    
    #### Rule Yes (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Delete_Existing_Products](#delete_existing_products)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|existingProducts| Is Null|⬜|
    
    
    
    
    ### Create_Opportunity_Products
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Label|Create Opportunity Products|
    |Input Reference|oppProductCollection|
    
    
    ### Delete_Existing_Products
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Delete|
    |Label|Delete Existing Products|
    |Input Reference|existingProducts|
    |Connector|[Get_Opp](#get_opp)|
    
    
    ### Get_401k_Product
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Product2|
    |Label|Get 401(k) Product|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Get_Price_Book_Entry_0](#get_price_book_entry_0)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Name| Contains|FormattedServiceOption|
    |2|Name| Contains|EmployeesNew|
    |3|Family| Equal To|401(k)|
    
    
    
    
    ### Get_Existing_Products
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|OpportunityLineItem|
    |Label|Get Existing Products|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|existingProducts|
    |Queried Fields|Id|
    |Connector|[Do_Existing_Products_Exist](#do_existing_products_exist)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|OpportunityId| Equal To|recordId|
    |2|Description| Contains|Service Option|
    
    
    
    
    ### Get_Opp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Opportunity|
    |Label|Get Opp|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Get_Previous_401k_Product](#get_previous_401k_product)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Get_Previous_401k_Product
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Product2|
    |Label|Get Previous 401(k) Product|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Get_Price_Book_Entry](#get_price_book_entry)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Name| Contains|FormattedPreviousServiceOption|
    |2|Name| Contains|EmployeesOld|
    |3|Family| Equal To|401(k)|
    
    
    
    
    ### Get_Price_Book_Entry
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|PricebookEntry|
    |Label|Get Price Book Entry|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Previous_Service_Option_Product](#previous_service_option_product)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Pricebook2Id| Equal To|01s1G000001tb0hQAA|
    |2|Product2Id| Equal To|Get_Previous_401k_Product.Id|
    
    
    
    
    ### Get_Price_Book_Entry_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|PricebookEntry|
    |Label|Get Price Book Entry|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[New_Service_Option_Product](#new_service_option_product)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Pricebook2Id| Equal To|01s1G000001tb0hQAA|
    |2|Product2Id| Equal To|Get_401k_Product.Id|
    
    
    
    
    ### Update_Opp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Opportunity|
    |Label|Update Opp|
    |Connector|[Create_Opportunity_Products](#create_opportunity_products)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Pricebook2Id|01s1G000001tb0hQAA|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

