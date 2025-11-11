# Contact_After_Trigger_Match_Account_to_AC_and_Update_Advisor_Credentialing history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Contact_After_Trigger_Match_Account_to_AC_and_Update_Advisor_Credentialing-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "4281352855"
    
    Did_Account_Change{"🔀 <em></em><br/>Did Account Change?"}:::decisions
    click Did_Account_Change "#did_account_change" "68958034"
    
    Did_Credentialed_Advisor_Change{"🔀 <em></em><br/>Did Credentialed Advisor Change?"}:::decisions
    click Did_Credentialed_Advisor_Change "#did_credentialed_advisor_change" "1574242823"
    
    Update_AC[("🛠️ <em></em><br/>Update Account on AC")]:::recordUpdates
    click Update_AC "#update_ac" "2863938524"
    
    Update_Credentialed_Advisor_on_Lead[["🔗 <em>Subflow</em><br/>Update Credentialed Advisor on Lead"]]:::subflows
    click Update_Credentialed_Advisor_on_Lead "#update_credentialed_advisor_on_lead" "2325657190"
    
    Did_Account_Change --> |"Yes"| Update_AC
    Did_Account_Change --> |"Default Outcome"| Did_Credentialed_Advisor_Change
    Did_Credentialed_Advisor_Change --> |"Yes"| Update_Credentialed_Advisor_on_Lead
    Did_Credentialed_Advisor_Change --> |"Default Outcome"| END_Did_Credentialed_Advisor_Change
    Update_AC --> Did_Credentialed_Advisor_Change
    START -->  Did_Account_Change
    Update_Credentialed_Advisor_on_Lead --> END_Update_Credentialed_Advisor_on_Lead
    END_Did_Credentialed_Advisor_Change(( END )):::endClass
    END_Update_Credentialed_Advisor_on_Lead(( END )):::endClass
    
    
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
    |Object|Contact|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create And Update|
    |Label|Contact | After Trigger | Match Account to AC and Update Advisor Credentialing|
    |Status|Active|
    |Description|When Account changes, update AC record or when credentialed Advisor is changed, update it on the related Leads.|
    |Environments|Default|
    |Interview Label|Contact | After Trigger | Match Account to AC and Update Advisor Credentialing on Lead {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    |Connector|[Did_Account_Change](#did_account_change)|
    |Next Node|[Did_Account_Change](#did_account_change)|
    
    
    #### Filters (logic: **(1 AND 2) OR 3**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|AccountId| Is Changed|✅|
    |2|AccountId| Is Null|<!-- -->|
    |3|Credentialed_Advisor__c| Is Changed|✅|
    
    
    ## Flow Nodes Details
    
    ### Did_Account_Change
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Did Account Change?|
    |Default Connector|[Did_Credentialed_Advisor_Change](#did_credentialed_advisor_change)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes_changed (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_AC](#update_ac)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.AccountId| Is Changed|✅|
    |2|$Record.AccountId| Is Null|⬜|
    
    
    
    
    ### Did_Credentialed_Advisor_Change
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Did Credentialed Advisor Change?|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Credentialed_Advisor_on_Lead](#update_credentialed_advisor_on_lead)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Credentialed_Advisor__c| Is Changed|✅|
    
    
    
    
    ### Update_AC
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Account on AC|
    |Input Reference|$Record.Master_Contact_Associations__r|
    |Connector|[Did_Credentialed_Advisor_Change](#did_credentialed_advisor_change)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Account__c|$Record.AccountId|
    
    
    
    
    ### Update_Credentialed_Advisor_on_Lead
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Subflow|
    |Label|Update Credentialed Advisor on Lead|
    |Flow Name|Contact_Update_Credential_Status_on_Leads|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |<!-- -->|$Record.Id|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

