# Opportunity_Apply_Discount_when_Flat_Amount_is_Entered history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Opportunity_Apply_Discount_when_Flat_Amount_is_Entered-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>"]):::startClass
    click START "#general-information" "1911897929"
    
    Add_to_Totals[\"🟰 <em></em><br/>Add to Totals"/]:::assignments
    click Add_to_Totals "#add_to_totals" "674091604"
    
    Flat_Fee_Update[\"🟰 <em></em><br/>Flat Fee Update"/]:::assignments
    click Flat_Fee_Update "#flat_fee_update" "1905955945"
    
    Grab_Total_Price[\"🟰 <em></em><br/>Grab Total Price"/]:::assignments
    click Grab_Total_Price "#grab_total_price" "3817816677"
    
    Hourly_Update[\"🟰 <em></em><br/>Hourly Update"/]:::assignments
    click Hourly_Update "#hourly_update" "2855006099"
    
    Ancillary_Opp{"🔀 <em></em><br/>Ancillary Opp?"}:::decisions
    click Ancillary_Opp "#ancillary_opp" "4051899060"
    
    Discount_Type{"🔀 <em></em><br/>Discount Type"}:::decisions
    click Discount_Type "#discount_type" "4019311948"
    
    Does_Schedule_Exist{"🔀 <em></em><br/>Does Schedule Exist?"}:::decisions
    click Does_Schedule_Exist "#does_schedule_exist" "2171017833"
    
    Simply_Product{"🔀 <em></em><br/>Simply Product?"}:::decisions
    click Simply_Product "#simply_product" "650566412"
    
    Which_has_changed{"🔀 <em></em><br/>Which has changed?"}:::decisions
    click Which_has_changed "#which_has_changed" "2532877693"
    
    Discount_Loop{{"🔁 <em></em><br/>Discount Loop"}}:::loops
    click Discount_Loop "#discount_loop" "1102524514"
    
    Delete_Schedule[("🗑️ <em></em><br/>Delete Schedule")]:::recordDeletes
    click Delete_Schedule "#delete_schedule" "2467562197"
    
    Get_All_Products[("🔍 <em></em><br/>Get All Products")]:::recordLookups
    click Get_All_Products "#get_all_products" "2139441604"
    
    Get_Line_Item[("🔍 <em></em><br/>Get Line Item")]:::recordLookups
    click Get_Line_Item "#get_line_item" "3567278520"
    
    Get_Opp[("🔍 <em></em><br/>Get Opp")]:::recordLookups
    click Get_Opp "#get_opp" "2198198344"
    
    Get_Schedule[("🔍 <em></em><br/>Get Schedule")]:::recordLookups
    click Get_Schedule "#get_schedule" "484552355"
    
    Update_Flat_Fee_Product[("🛠️ <em></em><br/>Update Flat Fee Product")]:::recordUpdates
    click Update_Flat_Fee_Product "#update_flat_fee_product" "3400617298"
    
    Update_Hourly_Product[("🛠️ <em></em><br/>Update Hourly Product")]:::recordUpdates
    click Update_Hourly_Product "#update_hourly_product" "1415546872"
    
    Update_Line_Item[("🛠️ <em></em><br/>Update Line Item with $")]:::recordUpdates
    click Update_Line_Item "#update_line_item" "316468781"
    
    Update_Line_Item_0[("🛠️ <em></em><br/>Update Line Item with %")]:::recordUpdates
    click Update_Line_Item_0 "#update_line_item_0" "3711157370"
    
    Update_Sales_Price[("🛠️ <em></em><br/>Update Sales Price")]:::recordUpdates
    click Update_Sales_Price "#update_sales_price" "2229097934"
    
    Update_Sales_Price_0[("🛠️ <em></em><br/>Update Sales Price")]:::recordUpdates
    click Update_Sales_Price_0 "#update_sales_price_0" "3443119025"
    
    Update_Total_Discount_on_Opp[("🛠️ <em></em><br/>Update Total Discount on Opp")]:::recordUpdates
    click Update_Total_Discount_on_Opp "#update_total_discount_on_opp" "1053859958"
    
    Void_Line_Item_Discount[("🛠️ <em></em><br/>Void Line Item Discount")]:::recordUpdates
    click Void_Line_Item_Discount "#void_line_item_discount" "859475482"
    
    Add_to_Totals --> Discount_Loop
    Flat_Fee_Update --> Update_Flat_Fee_Product
    Grab_Total_Price --> Get_Schedule
    Hourly_Update --> Update_Hourly_Product
    Ancillary_Opp --> |"Yes, Flat Fee"| Flat_Fee_Update
    Ancillary_Opp --> |"Yes, Hourly"| Hourly_Update
    Ancillary_Opp --> |"No"| Grab_Total_Price
    Discount_Type --> |"$"| Update_Sales_Price
    Discount_Type --> |"%"| Update_Sales_Price_0
    Discount_Type --> |"Both"| Which_has_changed
    Discount_Type --> |"Neither"| Which_has_changed
    Does_Schedule_Exist --> |"Yes"| Delete_Schedule
    Does_Schedule_Exist --> |"No"| Discount_Type
    Simply_Product --> |"No"| Get_Opp
    Simply_Product --> |"Simply"| END_Simply_Product
    Which_has_changed --> |"0'd Out"| Void_Line_Item_Discount
    Which_has_changed --> |"$"| Update_Sales_Price
    Which_has_changed --> |"%"| Update_Sales_Price_0
    Which_has_changed --> |"Neither"| END_Which_has_changed
    Discount_Loop --> |"For Each"|Add_to_Totals
    Discount_Loop ---> |"After Last"|Update_Total_Discount_on_Opp
    Delete_Schedule --> Discount_Type
    Get_All_Products --> Discount_Loop
    Get_Line_Item --> Simply_Product
    Get_Opp --> Ancillary_Opp
    Get_Schedule --> Does_Schedule_Exist
    Update_Flat_Fee_Product --> END_Update_Flat_Fee_Product
    Update_Hourly_Product --> END_Update_Hourly_Product
    Update_Line_Item --> Get_All_Products
    Update_Line_Item_0 --> Get_All_Products
    Update_Sales_Price --> Update_Line_Item
    Update_Sales_Price_0 --> Update_Line_Item_0
    Update_Total_Discount_on_Opp --> END_Update_Total_Discount_on_Opp
    Void_Line_Item_Discount --> Get_All_Products
    START -->  Get_Line_Item
    END_Simply_Product(( END )):::endClass
    END_Which_has_changed(( END )):::endClass
    END_Update_Flat_Fee_Product(( END )):::endClass
    END_Update_Hourly_Product(( END )):::endClass
    END_Update_Total_Discount_on_Opp(( END )):::endClass
    
    
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
    |Label|Opportunity | Apply Discount when Flat Amount is Entered|
    |Status|Obsolete|
    |Environments|Default|
    |Interview Label|Opportunity | Apply Discount when Flat Amount is Entered {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Line_Item](#get_line_item)|
    |Next Node|[Get_Line_Item](#get_line_item)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |currentPrice|Currency|⬜|✅|✅|<!-- -->|<!-- -->|
    |oppDiscount|Number|⬜|✅|✅|<!-- -->|<!-- -->|
    |productLoop|SObject|⬜|✅|✅|OpportunityLineItem|<!-- -->|
    |recordId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    |revSchedule|SObject|✅|✅|✅|OpportunityLineItemSchedule|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |amountChanged|Currency|{!Get_Line_Item.ListPrice} - {!Get_Line_Item.Discount__c}|<!-- -->|
    |discountAmount|Currency|{!Get_Line_Item.ListPrice} * {!Get_Line_Item.Discount_Percentage__c}|<!-- -->|
    |discountPercentage|Number|({!Get_Line_Item.Discount__c} / {!Get_Line_Item.ListPrice}) * 100|<!-- -->|
    |discountTotal|Currency|IF (ISBLANK({!Get_Line_Item.Discount__c}), {!Get_Line_Item.ListPrice} - ({!Get_Line_Item.Discount_Percentage__c} * {!Get_Line_Item.ListPrice}), IF(NOT(ISBLANK({!Get_Line_Item.Discount__c}))&&NOT(ISBLANK({!Get_Line_Item.Discount__c})),{!Get_Line_Item.ListPrice} - {!Get_Line_Item.Discount__c}, 0))|<!-- -->|
    |flatfeeCalculation|Currency|{!Get_Opp.Amount_Before_Discount__c}  * (1-{!Get_Opp.Discount_Percentage__c} )|<!-- -->|
    |hourlyAmount|Currency|IF(<br/><br/>ISBLANK({!Get_Opp.Actual_Hours_Worked__c}),<br/> <br/>(({!Get_Opp.Estimated_Hours_Needed__c} *{!Get_Opp.Rate__c}) )*<br/>(1-{!Get_Opp.Discount_Percentage__c} ),<br/><br/>(({!Get_Opp.Actual_Hours_Worked__c} * {!Get_Opp.Rate__c} ) )*<br/>(1-{!Get_Opp.Discount_Percentage__c} )<br/>)|<!-- -->|
    |percentChanged|Currency|{!Get_Line_Item.ListPrice} - ({!Get_Line_Item.Discount_Percentage__c} * {!Get_Line_Item.ListPrice})|<!-- -->|
    
    
    ## Constants
    
    |Name|Data Type|Value|Description|
    |:-- |:--:|:--:|:--  |
    |null|Number|<!-- -->|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Add_to_Totals
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add to Totals|
    |Connector|[Discount_Loop](#discount_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |oppDiscount| Add|Discount_Loop.Discount__c|
    
    
    
    
    ### Flat_Fee_Update
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Flat Fee Update|
    |Connector|[Update_Flat_Fee_Product](#update_flat_fee_product)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Get_Line_Item.UnitPrice| Assign|flatfeeCalculation|
    |Get_Line_Item.Discount_Percentage__c| Assign|Get_Opp.Discount_Percentage__c|
    |Get_Line_Item.Discount__c| Assign|discountAmount|
    
    
    
    
    ### Grab_Total_Price
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Grab Total Price|
    |Connector|[Get_Schedule](#get_schedule)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |currentPrice| Assign|Get_Line_Item.TotalPrice|
    
    
    
    
    ### Hourly_Update
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Hourly Update|
    |Connector|[Update_Hourly_Product](#update_hourly_product)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Get_Line_Item.UnitPrice| Assign|hourlyAmount|
    |Get_Line_Item.Discount__c| Assign|discountAmount|
    |Get_Line_Item.Discount_Percentage__c| Assign|Get_Opp.Discount_Percentage__c|
    |Get_Line_Item.Quantity__c| Assign|Get_Opp.Actual_Hours_Worked__c|
    
    
    
    
    ### Ancillary_Opp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Ancillary Opp?|
    |Default Connector|[Grab_Total_Price](#grab_total_price)|
    |Default Connector Label|No|
    
    
    #### Rule Yes_Flat_Fee (Yes, Flat Fee)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Flat_Fee_Update](#flat_fee_update)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Opp.RecordTypeId| Equal To|0121G000000g1YIQAY|
    
    
    
    
    #### Rule Yes_Hourly (Yes, Hourly)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Hourly_Update](#hourly_update)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Opp.RecordTypeId| Equal To|01237000000RiRoAAK|
    
    
    
    
    ### Discount_Type
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Discount Type|
    |Default Connector|[Which_has_changed](#which_has_changed)|
    |Default Connector Label|Neither|
    
    
    #### Rule UniqueName ($)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Sales_Price](#update_sales_price)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Line_Item.Discount__c| Is Null|⬜|
    |2|Get_Line_Item.Discount_Percentage__c| Is Null|✅|
    |3|Get_Line_Item.UnitPrice| Equal To|Get_Line_Item.ListPrice|
    
    
    
    
    #### Rule Percent (%)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Sales_Price_0](#update_sales_price_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Line_Item.Discount_Percentage__c| Is Null|⬜|
    |2|Get_Line_Item.Discount__c| Is Null|✅|
    |3|Get_Line_Item.UnitPrice| Equal To|Get_Line_Item.ListPrice|
    
    
    
    
    #### Rule Both (Both)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Which_has_changed](#which_has_changed)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Line_Item.Discount__c| Is Null|⬜|
    |2|Get_Line_Item.Discount_Percentage__c| Is Null|⬜|
    
    
    
    
    ### Does_Schedule_Exist
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Does Schedule Exist?|
    |Default Connector|[Discount_Type](#discount_type)|
    |Default Connector Label|No|
    
    
    #### Rule YesSchedule (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Delete_Schedule](#delete_schedule)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|revSchedule| Is Null|⬜|
    
    
    
    
    ### Simply_Product
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Simply Product?|
    |Default Connector Label|Simply|
    
    
    #### Rule No (No)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Opp](#get_opp)|
    |Condition Logic|NOT 1|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Line_Item.Price_Book__c| Contains|Simply|
    
    
    
    
    ### Which_has_changed
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Which has changed?|
    |Default Connector Label|Neither|
    
    
    #### Rule X0_d_Out (0'd Out)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Void_Line_Item_Discount](#void_line_item_discount)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Line_Item.Discount__c| Is Null|✅|
    |2|Get_Line_Item.Discount_Percentage__c| Is Null|✅|
    
    
    
    
    #### Rule UniqueNameAmountChanged ($)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Sales_Price](#update_sales_price)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|currentPrice| Not Equal To|amountChanged|
    
    
    
    
    #### Rule UniqueNamePercentChanged (%)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Sales_Price_0](#update_sales_price_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|currentPrice| Not Equal To|percentChanged|
    
    
    
    
    ### Discount_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Discount Loop|
    |Collection Reference|[Get_All_Products](#get_all_products)|
    |Iteration Order|Asc|
    |Next Value Connector|[Add_to_Totals](#add_to_totals)|
    |No More Values Connector|[Update_Total_Discount_on_Opp](#update_total_discount_on_opp)|
    
    
    ### Delete_Schedule
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Delete|
    |Label|Delete Schedule|
    |Input Reference|revSchedule|
    |Connector|[Discount_Type](#discount_type)|
    
    
    ### Get_All_Products
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|OpportunityLineItem|
    |Label|Get All Products|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Store Output Automatically|✅|
    |Connector|[Discount_Loop](#discount_loop)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|OpportunityId| Equal To|Get_Opp.Id|
    
    
    
    
    ### Get_Line_Item
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|OpportunityLineItem|
    |Label|Get Line Item|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Simply_Product](#simply_product)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Get_Opp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Opportunity|
    |Label|Get Opp|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Ancillary_Opp](#ancillary_opp)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Line_Item.OpportunityId|
    
    
    
    
    ### Get_Schedule
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|OpportunityLineItemSchedule|
    |Label|Get Schedule|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|revSchedule|
    |Queried Fields|Id|
    |Connector|[Does_Schedule_Exist](#does_schedule_exist)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|OpportunityLineItemId| Equal To|Get_Line_Item.Id|
    
    
    
    
    ### Update_Flat_Fee_Product
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|OpportunityLineItem|
    |Label|Update Flat Fee Product|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Discount_Percentage__c|Get_Opp.Discount_Percentage__c|
    |Discount__c|discountAmount|
    |UnitPrice|flatfeeCalculation|
    
    
    
    
    ### Update_Hourly_Product
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|OpportunityLineItem|
    |Label|Update Hourly Product|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Discount_Percentage__c|Get_Opp.Discount_Percentage__c|
    |Discount__c|discountAmount|
    |Quantity__c|Get_Opp.Actual_Hours_Worked__c|
    |UnitPrice|hourlyAmount|
    
    
    
    
    ### Update_Line_Item
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|OpportunityLineItem|
    |Label|Update Line Item with $|
    |Connector|[Get_All_Products](#get_all_products)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Line_Item.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Discount_Percentage__c|discountPercentage|
    |TotalPrice|amountChanged|
    
    
    
    
    ### Update_Line_Item_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|OpportunityLineItem|
    |Label|Update Line Item with %|
    |Connector|[Get_All_Products](#get_all_products)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Line_Item.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Discount__c|discountAmount|
    |TotalPrice|percentChanged|
    
    
    
    
    ### Update_Sales_Price
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|OpportunityLineItem|
    |Label|Update Sales Price|
    |Connector|[Update_Line_Item](#update_line_item)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Line_Item.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |UnitPrice|Get_Line_Item.ListPrice|
    
    
    
    
    ### Update_Sales_Price_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|OpportunityLineItem|
    |Label|Update Sales Price|
    |Connector|[Update_Line_Item_0](#update_line_item_0)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Line_Item.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |UnitPrice|Get_Line_Item.ListPrice|
    
    
    
    
    ### Update_Total_Discount_on_Opp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Opportunity|
    |Label|Update Total Discount on Opp|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Opp.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Discount__c|oppDiscount|
    
    
    
    
    ### Void_Line_Item_Discount
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|OpportunityLineItem|
    |Label|Void Line Item Discount|
    |Connector|[Get_All_Products](#get_all_products)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Line_Item.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Discount_Percentage__c|null|
    |Discount__c|null|
    |TotalPrice|Get_Line_Item.ListPrice|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

