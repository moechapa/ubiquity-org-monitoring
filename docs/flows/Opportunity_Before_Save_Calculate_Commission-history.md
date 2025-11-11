# Opportunity_Before_Save_Calculate_Commission history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Opportunity_Before_Save_Calculate_Commission-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record Before Save</b>"]):::startClass
    click START "#general-information" "3915344501"
    
    Add_fee[\"🟰 <em></em><br/>Add fee"/]:::assignments
    click Add_fee "#add_fee" "3456582266"
    
    Add_item_comm[\"🟰 <em></em><br/>Add item comm"/]:::assignments
    click Add_item_comm "#add_item_comm" "1522767260"
    
    Match_comm_to_amount[\"🟰 <em></em><br/>Match comm to amount"/]:::assignments
    click Match_comm_to_amount "#match_comm_to_amount" "1362484132"
    
    Set_comm_on_opp[\"🟰 <em></em><br/>Set comm on opp"/]:::assignments
    click Set_comm_on_opp "#set_comm_on_opp" "3938015093"
    
    Set_Fee_From_PB[\"🟰 <em></em><br/>Set Fee From PB"/]:::assignments
    click Set_Fee_From_PB "#set_fee_from_pb" "2865723757"
    
    Subtract_Partner_Fee[\"🟰 <em></em><br/>Subtract Partner Fee"/]:::assignments
    click Subtract_Partner_Fee "#subtract_partner_fee" "3558686213"
    
    Is_there_already_a_fee{"🔀 <em></em><br/>Is there already a fee"}:::decisions
    click Is_there_already_a_fee "#is_there_already_a_fee" "194399827"
    
    Partner_Fee_Check{"🔀 <em></em><br/>Partner Fee Check"}:::decisions
    click Partner_Fee_Check "#partner_fee_check" "167148516"
    
    prod_found_check{"🔀 <em></em><br/>prod found check"}:::decisions
    click prod_found_check "#prod_found_check" "544752013"
    
    Prod_Loop{{"🔁 <em></em><br/>Prod Loop"}}:::loops
    click Prod_Loop "#prod_loop" "2107129069"
    
    Grab_Opp_Products[("🔍 <em></em><br/>Grab Opp Products")]:::recordLookups
    click Grab_Opp_Products "#grab_opp_products" "2707457599"
    
    Add_fee --> Prod_Loop
    Add_item_comm --> Partner_Fee_Check
    Match_comm_to_amount --> END_Match_comm_to_amount
    Set_comm_on_opp --> END_Set_comm_on_opp
    Set_Fee_From_PB --> Subtract_Partner_Fee
    Subtract_Partner_Fee --> Set_comm_on_opp
    Is_there_already_a_fee --> |"Fee present overriding PB"| Subtract_Partner_Fee
    Is_there_already_a_fee --> |"Default Outcome"| Set_Fee_From_PB
    Partner_Fee_Check --> |"Fee Present"| Add_fee
    Partner_Fee_Check --> |"Default Outcome"| Prod_Loop
    prod_found_check --> |"prods present"| Prod_Loop
    prod_found_check --> |"Default Outcome"| Match_comm_to_amount
    Prod_Loop --> |"For Each"|Add_item_comm
    Prod_Loop ---> |"After Last"|Is_there_already_a_fee
    Grab_Opp_Products --> prod_found_check
    START -->  Grab_Opp_Products
    END_Match_comm_to_amount(( END )):::endClass
    END_Set_comm_on_opp(( END )):::endClass
    
    
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
    |Object|Opportunity|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record Before Save|
    |Record Trigger Type| Update|
    |Label|Opportunity | Before Save | Calculate Commission|
    |Status|⚠️ Draft|
    |Description|Fixed null commission amount to properly mirror null amount|
    |Environments|Default|
    |Interview Label|Opportunity | Before Save | Calculate Commission {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Grab_Opp_Products](#grab_opp_products)|
    |Next Node|[Grab_Opp_Products](#grab_opp_products)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |partnerFee|Currency|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |totalComm|Currency|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |totalDiscount|Currency|⬜|⬜|⬜|<!-- -->|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Add_fee
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add fee|
    |Connector|[Prod_Loop](#prod_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |partnerFee| Add|Prod_Loop.PricebookEntry.Partner_Fee__c|
    
    
    
    
    ### Add_item_comm
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add item comm|
    |Connector|[Partner_Fee_Check](#partner_fee_check)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |totalComm| Add|Prod_Loop.Commissionable_Amount_Editable__c|
    |totalDiscount| Add|Prod_Loop.Discount__c|
    
    
    
    
    ### Match_comm_to_amount
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Match comm to amount|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Commissionable_Amount_Editable__c| Assign|$Record.Amount|
    |$Record.Discount__c| Assign|numberValue: 0<br/>|
    
    
    
    
    ### Set_comm_on_opp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Set comm on opp|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Commissionable_Amount_Editable__c| Assign|totalComm|
    |$Record.Discount__c| Assign|totalDiscount|
    
    
    
    
    ### Set_Fee_From_PB
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Set Fee From PB|
    |Connector|[Subtract_Partner_Fee](#subtract_partner_fee)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |partnerFee| Assign|$Record.Pricebook2.Partner_Fee__c|
    
    
    
    
    ### Subtract_Partner_Fee
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Subtract Partner Fee|
    |Connector|[Set_comm_on_opp](#set_comm_on_opp)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |totalComm| Subtract|partnerFee|
    
    
    
    
    ### Is_there_already_a_fee
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Is there already a fee|
    |Default Connector|[Set_Fee_From_PB](#set_fee_from_pb)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Fee_present_overriding_PB (Fee present overriding PB)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Subtract_Partner_Fee](#subtract_partner_fee)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|partnerFee| Is Null|⬜|
    
    
    
    
    ### Partner_Fee_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Partner Fee Check|
    |Default Connector|[Prod_Loop](#prod_loop)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Fee_Present (Fee Present)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Add_fee](#add_fee)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Prod_Loop.PricebookEntry.Partner_Fee__c| Is Blank|⬜|
    
    
    
    
    ### prod_found_check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|prod found check|
    |Default Connector|[Match_comm_to_amount](#match_comm_to_amount)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule prods_present (prods present)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Prod_Loop](#prod_loop)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|[Grab_Opp_Products](#grab_opp_products)| Is Empty|⬜|
    
    
    
    
    ### Prod_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Prod Loop|
    |Collection Reference|[Grab_Opp_Products](#grab_opp_products)|
    |Iteration Order|Asc|
    |Next Value Connector|[Add_item_comm](#add_item_comm)|
    |No More Values Connector|[Is_there_already_a_fee](#is_there_already_a_fee)|
    
    
    ### Grab_Opp_Products
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|OpportunityLineItem|
    |Label|Grab Opp Products|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Queried Fields|- Id<br/>- PricebookEntryId<br/>- Commissionable_Amount_Editable__c<br/>- Discount__c<br/>|
    |Store Output Automatically|✅|
    |Connector|[prod_found_check](#prod_found_check)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|OpportunityId| Equal To|$Record.Id|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

