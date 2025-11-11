# Proposal_Before_Save_Grab_Promo_Codes history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Proposal_Before_Save_Grab_Promo_Codes-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record Before Save</b>"]):::startClass
    click START "#general-information" "2396397593"
    
    Add_Semi_Colon[\"🟰 <em></em><br/>Add Semi Colon"/]:::assignments
    click Add_Semi_Colon "#add_semi_colon" "1246065436"
    
    Assign_Promo_Code[\"🟰 <em></em><br/>Assign Promo Code"/]:::assignments
    click Assign_Promo_Code "#assign_promo_code" "214564257"
    
    Is_there_already_any_promo_codes_on_prop{"🔀 <em></em><br/>Is there already any promo codes on prop"}:::decisions
    click Is_there_already_any_promo_codes_on_prop "#is_there_already_any_promo_codes_on_prop" "4131151589"
    
    Is_this_code_already_on_prop{"🔀 <em></em><br/>Is this code already on prop"}:::decisions
    click Is_this_code_already_on_prop "#is_this_code_already_on_prop" "1728073254"
    
    Promo_Loop{{"🔁 <em></em><br/>Promo Loop"}}:::loops
    click Promo_Loop "#promo_loop" "1923357001"
    
    Get_Opportunity_Promotions[("🔍 <em></em><br/>Get Opportunity Promotions")]:::recordLookups
    click Get_Opportunity_Promotions "#get_opportunity_promotions" "2014189962"
    
    Add_Semi_Colon --> Assign_Promo_Code
    Assign_Promo_Code --> Promo_Loop
    Is_there_already_any_promo_codes_on_prop --> |"Codes Present"| Add_Semi_Colon
    Is_there_already_any_promo_codes_on_prop --> |"Default Outcome"| Assign_Promo_Code
    Is_this_code_already_on_prop --> |"Code on prop"| Promo_Loop
    Is_this_code_already_on_prop --> |"Prop missing code"| Is_there_already_any_promo_codes_on_prop
    Promo_Loop --> |"For Each"|Is_this_code_already_on_prop
    Promo_Loop ---> |"After Last"|END
    Get_Opportunity_Promotions --> Promo_Loop
    START -->  Get_Opportunity_Promotions
    
    
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
    |Record Trigger Type| Create And Update|
    |Label|Proposal | Before Save | Grab Promo Codes|
    |Status|Active|
    |Does Require Record Changed To Meet Criteria|✅|
    |Description|Retrieves promo codes from the attached opportunity's opportunity promotions.  Only runs once when an opportunity is newly attached AND there's no existing promo code.|
    |Environments|Default|
    |Interview Label|Proposal | Before Save | Grab Promo Codes {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Opportunity_Promotions](#get_opportunity_promotions)|
    |Next Node|[Get_Opportunity_Promotions](#get_opportunity_promotions)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Opportunity__c| Is Null|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Add_Semi_Colon
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add Semi Colon|
    |Connector|[Assign_Promo_Code](#assign_promo_code)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Promo_Code__c| Add|;|
    
    
    
    
    ### Assign_Promo_Code
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Promo Code|
    |Connector|[Promo_Loop](#promo_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Promo_Code__c| Add|Promo_Loop.Promo_Code__c|
    
    
    
    
    ### Is_there_already_any_promo_codes_on_prop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Is there already any promo codes on prop|
    |Default Connector|[Assign_Promo_Code](#assign_promo_code)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Codes_Present (Codes Present)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Add_Semi_Colon](#add_semi_colon)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Promo_Code__c| Is Blank|⬜|
    
    
    
    
    ### Is_this_code_already_on_prop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Is this code already on prop|
    |Default Connector|[Is_there_already_any_promo_codes_on_prop](#is_there_already_any_promo_codes_on_prop)|
    |Default Connector Label|Prop missing code|
    
    
    #### Rule Code_on_prop (Code on prop)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|isGoTo: true<br/>targetReference: Promo_Loop<br/>|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Promo_Code__c| Contains|Promo_Loop.Promo_Code__c|
    
    
    
    
    ### Promo_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Promo Loop|
    |Collection Reference|[Get_Opportunity_Promotions](#get_opportunity_promotions)|
    |Iteration Order|Asc|
    |Next Value Connector|[Is_this_code_already_on_prop](#is_this_code_already_on_prop)|
    
    
    ### Get_Opportunity_Promotions
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Opportunity_Promotion__c|
    |Label|Get Opportunity Promotions|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Queried Fields|- Id<br/>- Promo_Code__c<br/>|
    |Store Output Automatically|✅|
    |Connector|[Promo_Loop](#promo_loop)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Opportunity__c| Equal To|$Record.Opportunity__c|
    |2|Promo_Code__c| Is Null|<!-- -->|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

