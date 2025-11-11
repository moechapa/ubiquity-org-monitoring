# Case_Before_Trigger_Update_Account_Plan_Based_on_Imp_Plan history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Case_Before_Trigger_Update_Account_Plan_Based_on_Imp_Plan-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record Before Save</b>"]):::startClass
    click START "#general-information" "1786292520"
    
    What_Changed_on_Case{"🔀 <em></em><br/>What Changed on Case"}:::decisions
    click What_Changed_on_Case "#what_changed_on_case" "872045920"
    
    Update_Account[("🛠️ <em></em><br/>Update Account")]:::recordUpdates
    click Update_Account "#update_account" "2389350438"
    
    Update_Account_from_Plan[("🛠️ <em></em><br/>Update Account from Plan")]:::recordUpdates
    click Update_Account_from_Plan "#update_account_from_plan" "398910260"
    
    Update_Plan[("🛠️ <em></em><br/>Update Plan")]:::recordUpdates
    click Update_Plan "#update_plan" "502626325"
    
    Update_Plan_and_Account[("🛠️ <em></em><br/>Update Plan and Account")]:::recordUpdates
    click Update_Plan_and_Account "#update_plan_and_account" "3688017201"
    
    What_Changed_on_Case --> |"Imp not Null, Plan Null"| Update_Plan
    What_Changed_on_Case --> |"Imp not Null, Account Null"| Update_Account
    What_Changed_on_Case --> |"Imp not Null, Plan and Account Null"| Update_Plan_and_Account
    What_Changed_on_Case --> |"Plan not Null"| Update_Account_from_Plan
    What_Changed_on_Case --> |"Default Outcome"| END_What_Changed_on_Case
    Update_Account --> END_Update_Account
    Update_Account_from_Plan --> END_Update_Account_from_Plan
    Update_Plan --> END_Update_Plan
    Update_Plan_and_Account --> END_Update_Plan_and_Account
    START -->  What_Changed_on_Case
    END_What_Changed_on_Case(( END )):::endClass
    END_Update_Account(( END )):::endClass
    END_Update_Account_from_Plan(( END )):::endClass
    END_Update_Plan(( END )):::endClass
    END_Update_Plan_and_Account(( END )):::endClass
    
    
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
    |Object|Case|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record Before Save|
    |Record Trigger Type| Create And Update|
    |Label|Case | Before Trigger | Update Account/Plan Based on Imp/Plan|
    |Status|⚠️ Draft|
    |Environments|Default|
    |Interview Label|Case | Before Trigger | Update Account/Plan Based on Imp/Plan {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[What_Changed_on_Case](#what_changed_on_case)|
    |Next Node|[What_Changed_on_Case](#what_changed_on_case)|
    
    
    #### Filters (logic: **(1 AND 2 AND (3 OR 4)) OR (5 AND 6 AND 4)**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Implementation__c| Is Changed|✅|
    |2|Implementation__c| Is Null|<!-- -->|
    |3|Plan__c| Is Null|<!-- -->|
    |4|AccountId| Is Null|<!-- -->|
    |5|Plan__c| Is Changed|✅|
    |6|Plan__c| Is Null|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### What_Changed_on_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|What Changed on Case|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Imp_not_Null (Imp not Null, Plan Null)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Plan](#update_plan)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Implementation__c| Is Null|⬜|
    |2|$Record.Plan__c| Is Null|✅|
    |3|$Record.Implementation__c| Is Changed|✅|
    |4|$Record.AccountId| Is Null|⬜|
    
    
    
    
    #### Rule Imp_not_Null_Account_Null (Imp not Null, Account Null)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Account](#update_account)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Implementation__c| Is Null|⬜|
    |2|$Record.AccountId| Is Null|✅|
    |3|$Record.Implementation__c| Is Changed|✅|
    |4|$Record.Plan__c| Is Null|⬜|
    
    
    
    
    #### Rule Imp_not_Null_Plan_and_Account_Null (Imp not Null, Plan and Account Null)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Plan_and_Account](#update_plan_and_account)|
    |Condition Logic|1 AND 4 AND (3 or 2)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Implementation__c| Is Null|⬜|
    |2|$Record.AccountId| Is Null|✅|
    |3|$Record.Plan__c| Is Null|✅|
    |4|$Record.Implementation__c| Is Changed|✅|
    
    
    
    
    #### Rule Plan_not_Null (Plan not Null)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Account_from_Plan](#update_account_from_plan)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Plan__c| Is Null|⬜|
    |2|$Record.Plan__c| Is Changed|✅|
    |3|$Record.AccountId| Is Null|✅|
    
    
    
    
    ### Update_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Account|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|$Record.Implementation__r.Account__c|
    
    
    
    
    ### Update_Account_from_Plan
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Account from Plan|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|$Record.Plan__r.Account__c|
    
    
    
    
    ### Update_Plan
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Plan|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Plan__c|$Record.Implementation__r.Plan__c|
    
    
    
    
    ### Update_Plan_and_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Plan and Account|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|$Record.Implementation__r.Account__c|
    |Plan__c|$Record.Implementation__r.Plan__c|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

