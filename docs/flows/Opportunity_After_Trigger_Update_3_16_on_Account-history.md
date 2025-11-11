# Opportunity_After_Trigger_Update_3_16_on_Account history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Opportunity_After_Trigger_Update_3_16_on_Account-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "2997922492"
    
    Which_Connected_Partner{"🔀 <em></em><br/>Which Connected Partner(CP)"}:::decisions
    click Which_Connected_Partner "#which_connected_partner" "2128241787"
    
    X3_16_Check{"🔀 <em></em><br/>3(16) is False?"}:::decisions
    click X3_16_Check "#x3_16_check" "3617546335"
    
    Get_Account[("🔍 <em></em><br/>Get Account")]:::recordLookups
    click Get_Account "#get_account" "2911938214"
    
    Copy_1_of_Update_Connected_Partner_on_Account[("🛠️ <em></em><br/>Update CP on Account")]:::recordUpdates
    click Copy_1_of_Update_Connected_Partner_on_Account "#copy_1_of_update_connected_partner_on_account" "1274617992"
    
    Copy_2_of_Update_Connected_Partner_on_Account[("🛠️ <em></em><br/>Update CP on Account")]:::recordUpdates
    click Copy_2_of_Update_Connected_Partner_on_Account "#copy_2_of_update_connected_partner_on_account" "2607944112"
    
    Copy_3_of_Update_Connected_Partner_on_Account[("🛠️ <em></em><br/>Update CP on Account")]:::recordUpdates
    click Copy_3_of_Update_Connected_Partner_on_Account "#copy_3_of_update_connected_partner_on_account" "3448795245"
    
    Copy_4_of_Update_Connected_Partner_on_Account[("🛠️ <em></em><br/>Update CP on Account")]:::recordUpdates
    click Copy_4_of_Update_Connected_Partner_on_Account "#copy_4_of_update_connected_partner_on_account" "2376875084"
    
    Update_Acct[("🛠️ <em></em><br/>Update Acct")]:::recordUpdates
    click Update_Acct "#update_acct" "2875038899"
    
    Which_Connected_Partner --> |"Schwab LeadSourceDetail"| Copy_1_of_Update_Connected_Partner_on_Account
    Which_Connected_Partner --> |"Custodian Schwab"| Copy_2_of_Update_Connected_Partner_on_Account
    Which_Connected_Partner --> |"Simply Retirement"| Copy_3_of_Update_Connected_Partner_on_Account
    Which_Connected_Partner --> |"Non Schwab or JPM"| Copy_4_of_Update_Connected_Partner_on_Account
    Which_Connected_Partner --> |"Default Outcome"| X3_16_Check
    X3_16_Check --> |"False"| Update_Acct
    X3_16_Check --> |"Default Outcome"| END_X3_16_Check
    Get_Account --> Which_Connected_Partner
    Copy_1_of_Update_Connected_Partner_on_Account --> X3_16_Check
    Copy_2_of_Update_Connected_Partner_on_Account --> X3_16_Check
    Copy_3_of_Update_Connected_Partner_on_Account --> X3_16_Check
    Copy_4_of_Update_Connected_Partner_on_Account --> X3_16_Check
    Update_Acct --> END_Update_Acct
    START -->  Get_Account
    END_X3_16_Check(( END )):::endClass
    END_Update_Acct(( END )):::endClass
    
    
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
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create And Update|
    |Label|Opportunity | After Trigger | Update 3(16) and Connected Partner on Account|
    |Status|Active|
    |Description|Updated to avoid flipping connected partner back and forth, noticed for simply accounts.<br/><br/>If product type = PEP or service option = Reserve(k), check the 3(16) box on the account. Also update Connected Partner from Lead Source|
    |Environments|Default|
    |Interview Label|Opportunity | After Trigger | Update 3(16) on Account {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Account](#get_account)|
    |Next Node|[Get_Account](#get_account)|
    
    
    ## Flow Nodes Details
    
    ### Which_Connected_Partner
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Which Connected Partner(CP)|
    |Description|Identify Connected Partner based on LeadSource Detail and Custodian|
    |Default Connector|[X3_16_Check](#x3_16_check)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Lead_Source_Detail_Schwab (Schwab LeadSourceDetail)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Copy_1_of_Update_Connected_Partner_on_Account](#copy_1_of_update_connected_partner_on_account)|
    |Condition Logic|(1 OR 2) AND 3 AND 4|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.LeadSourceDetail__c| Equal To|Schwab|
    |2|$Record.LeadSourceDetail__c| Equal To|Schwab-CC|
    |3|$Record.AccountId| Is Null|⬜|
    |4|$Record.Account.Connected_Partner__c| Not Equal To|Schwab|
    
    
    
    
    #### Rule Custodian_Schwab (Custodian Schwab)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Copy_2_of_Update_Connected_Partner_on_Account](#copy_2_of_update_connected_partner_on_account)|
    |Condition Logic|(1 OR 2) AND 3 AND 4|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Custodian__c| Equal To|Schwab & Co., Inc.|
    |2|$Record.Custodian__c| Equal To|Schwab Trust|
    |3|$Record.AccountId| Is Null|⬜|
    |4|$Record.Account.Connected_Partner__c| Not Equal To|Chase Bank|
    
    
    
    
    #### Rule Simply_Retirement (Simply Retirement)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Copy_3_of_Update_Connected_Partner_on_Account](#copy_3_of_update_connected_partner_on_account)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Service_Option__c| Contains|Simply|
    |2|$Record.AccountId| Is Null|⬜|
    |3|$Record.Account.Connected_Partner__c| Not Equal To|Simply Retirement|
    
    
    
    
    #### Rule Non_Schwab_or_JPM (Non Schwab or JPM)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Copy_4_of_Update_Connected_Partner_on_Account](#copy_4_of_update_connected_partner_on_account)|
    |Condition Logic|5 AND ( (1 AND 2) OR (3 AND 4)) AND 6|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.LeadSourceDetail__c| Not Equal To|Schwab|
    |2|$Record.LeadSourceDetail__c| Not Equal To|Schwab-CC|
    |3|$Record.Custodian__c| Not Equal To|Schwab & Co., Inc.|
    |4|$Record.Custodian__c| Not Equal To|Schwab Trust|
    |5|$Record.AccountId| Is Null|⬜|
    |6|$Record.Account.Connected_Partner__c| Equal To|Schwab|
    
    
    
    
    ### X3_16_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|3(16) is False?|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule X3_16_is_False (False)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Acct](#update_acct)|
    |Condition Logic|1 AND 2 AND (3 OR 4)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Account.X3_16__c| Equal To|⬜|
    |2|$Record.StageName| Equal To|Closed Won|
    |3|$Record.Service_Option__c| Equal To|Reserve(k)|
    |4|$Record.Product_Type__c| Equal To|PEP|
    
    
    
    
    ### Get_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Account|
    |Label|Get Account|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|- Id<br/>- X3_16__c<br/>|
    |Store Output Automatically|✅|
    |Connector|[Which_Connected_Partner](#which_connected_partner)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$Record.AccountId|
    
    
    
    
    ### Copy_1_of_Update_Connected_Partner_on_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update CP on Account|
    |Description|Connected Partner = Schwab|
    |Input Reference|$Record.Account|
    |Connector|[X3_16_Check](#x3_16_check)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Connected_Partner__c|Schwab|
    
    
    
    
    ### Copy_2_of_Update_Connected_Partner_on_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update CP on Account|
    |Description|Connected Partner = Schwab|
    |Input Reference|$Record.Account|
    |Connector|[X3_16_Check](#x3_16_check)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Connected_Partner__c|Schwab|
    
    
    
    
    ### Copy_3_of_Update_Connected_Partner_on_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update CP on Account|
    |Description|Connected Partner = Simply Retirement|
    |Input Reference|$Record.Account|
    |Connector|[X3_16_Check](#x3_16_check)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Connected_Partner__c|Simply Retirement|
    
    
    
    
    ### Copy_4_of_Update_Connected_Partner_on_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update CP on Account|
    |Description|Connected Partner = '' (empty string)|
    |Input Reference|$Record.Account|
    |Connector|[X3_16_Check](#x3_16_check)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Connected_Partner__c|stringValue: ''<br/>|
    
    
    
    
    ### Update_Acct
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Account|
    |Label|Update Acct|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_Account.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |X3_16__c|✅|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

