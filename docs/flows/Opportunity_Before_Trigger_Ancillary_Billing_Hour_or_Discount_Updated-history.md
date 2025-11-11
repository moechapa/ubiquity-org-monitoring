# Opportunity_Before_Trigger_Ancillary_Billing_Hour_or_Discount_Updated history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Opportunity_Before_Trigger_Ancillary_Billing_Hour_or_Discount_Updated-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record Before Save</b>"]):::startClass
    click START "#general-information" "1345697509"
    
    Amount_Entry_Condition_Check{"🔀 <em></em><br/>Amount Entry Condition Check"}:::decisions
    click Amount_Entry_Condition_Check "#amount_entry_condition_check" "731177668"
    
    Check_if_account_exists{"🔀 <em></em><br/>Check if account exists"}:::decisions
    click Check_if_account_exists "#check_if_account_exists" "875178323"
    
    Flat_or_Hourly{"🔀 <em></em><br/>Flat or Hourly?"}:::decisions
    click Flat_or_Hourly "#flat_or_hourly" "699825699"
    
    Need_account_added_check{"🔀 <em></em><br/>Need account added check"}:::decisions
    click Need_account_added_check "#need_account_added_check" "237149011"
    
    Add_account[("🛠️ <em></em><br/>Add account")]:::recordUpdates
    click Add_account "#add_account" "109831618"
    
    updateFlatAmount[("🛠️ <em></em><br/>updateFlatAmount")]:::recordUpdates
    click updateFlatAmount "#updateflatamount" "4027230168"
    
    updateHourlyAmount[("🛠️ <em></em><br/>updateHourlyAmount")]:::recordUpdates
    click updateHourlyAmount "#updatehourlyamount" "3155111157"
    
    Amount_Entry_Condition_Check --> |"Needs amount update"| Flat_or_Hourly
    Amount_Entry_Condition_Check --> |"Default Outcome"| Need_account_added_check
    Check_if_account_exists --> |"Account found"| Add_account
    Check_if_account_exists --> |"Default Outcome"| END_Check_if_account_exists
    Flat_or_Hourly --> |"Hourly"| updateHourlyAmount
    Flat_or_Hourly --> |"Flat"| updateFlatAmount
    Need_account_added_check --> |"Needs account"| Check_if_account_exists
    Need_account_added_check --> |"Default Outcome"| END_Need_account_added_check
    Add_account --> END_Add_account
    updateFlatAmount --> Need_account_added_check
    updateHourlyAmount --> Need_account_added_check
    START -->  Amount_Entry_Condition_Check
    END_Check_if_account_exists(( END )):::endClass
    END_Need_account_added_check(( END )):::endClass
    END_Add_account(( END )):::endClass
    
    
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
    |Record Trigger Type| Create And Update|
    |Label|Opportunity | Before Trigger | Ancillary Billing Hour or Discount Updated|
    |Status|Active|
    |Description|Added path that adds account to opp from case if it's missing<br/><br/>When an Ancillary Billing opp's hours or discount fields are updated, update the amount field.|
    |Environments|Default|
    |Interview Label|Opportunity | Before Trigger | Ancillary Billing Hour or Discount Updated {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Amount_Entry_Condition_Check](#amount_entry_condition_check)|
    |Next Node|[Amount_Entry_Condition_Check](#amount_entry_condition_check)|
    
    
    #### Filters (logic: **1 AND (((2 AND 4) OR 3 OR 5) OR (6 AND 7))**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Type| Contains|Ancillary Billing|
    |2|Estimated_Hours_Needed__c| Is Changed|✅|
    |3|Discount_Percentage__c| Is Changed|✅|
    |4|Amount| Greater Than|numberValue: 0<br/>|
    |5|Amount_Before_Discount__c| Is Changed|✅|
    |6|AccountId| Is Null|<!-- -->|
    |7|Case__c| Is Null|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |flatAmount|Currency|{!$Record.Amount_Before_Discount__c} * (1-({!$Record.Discount_Percentage__c}/100))|<!-- -->|
    |hourlyAmount|Currency|IF(ISBLANK({!$Record.Actual_Hours_Worked__c}), (({!$Record.Estimated_Hours_Needed__c} * {!$Record.Rate__c}) * (1- ({!$Record.Discount_Percentage__c}/100))), (({!$Record.Actual_Hours_Worked__c}* {!$Record.Rate__c}) * (1-({!$Record.Discount_Percentage__c}/100) )))|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Amount_Entry_Condition_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Amount Entry Condition Check|
    |Default Connector|[Need_account_added_check](#need_account_added_check)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Needs_amount_update (Needs amount update)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Flat_or_Hourly](#flat_or_hourly)|
    |Condition Logic|(1 AND 2) OR 3 OR 4|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Amount| Greater Than|numberValue: 0<br/>|
    |2|$Record.Estimated_Hours_Needed__c| Is Changed|✅|
    |3|$Record.Discount_Percentage__c| Is Changed|✅|
    |4|$Record.Amount_Before_Discount__c| Is Changed|✅|
    
    
    
    
    ### Check_if_account_exists
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check if account exists|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Account_found (Account found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Add_account](#add_account)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Case__r.AccountId| Is Null|⬜|
    
    
    
    
    ### Flat_or_Hourly
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Flat or Hourly?|
    |Default Connector|[updateFlatAmount](#updateflatamount)|
    |Default Connector Label|Flat|
    
    
    #### Rule Hourly (Hourly)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[updateHourlyAmount](#updatehourlyamount)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Type| Equal To|Ancillary Billing Hourly Rate|
    
    
    
    
    ### Need_account_added_check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Need account added check|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Needs_account (Needs account)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Check_if_account_exists](#check_if_account_exists)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Case__c| Is Null|⬜|
    |2|$Record.AccountId| Is Null|✅|
    
    
    
    
    ### Add_account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Add account|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|$Record.Case__r.AccountId|
    
    
    
    
    ### updateFlatAmount
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|[updateFlatAmount](#updateflatamount)|
    |Input Reference|$Record|
    |Connector|[Need_account_added_check](#need_account_added_check)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Amount|flatAmount|
    
    
    
    
    ### updateHourlyAmount
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|[updateHourlyAmount](#updatehourlyamount)|
    |Input Reference|$Record|
    |Connector|[Need_account_added_check](#need_account_added_check)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Amount|hourlyAmount|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

