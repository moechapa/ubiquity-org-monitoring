# Plan_After_Update_Update_Priority_Service_on_Acct history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Plan_After_Update_Update_Priority_Service_on_Acct-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "2000236544"
    
    Priority_Service_Turned_On_or_Turned_Off{"🔀 <em></em><br/>Priority Service Turned On or Turned Off"}:::decisions
    click Priority_Service_Turned_On_or_Turned_Off "#priority_service_turned_on_or_turned_off" "1771558992"
    
    Update_Acct[("🛠️ <em></em><br/>Update Acct")]:::recordUpdates
    click Update_Acct "#update_acct" "48292002"
    
    Update_Acct_2[("🛠️ <em></em><br/>Update Acct 2")]:::recordUpdates
    click Update_Acct_2 "#update_acct_2" "2217346479"
    
    Priority_Service_Turned_On_or_Turned_Off --> |"Turned On"| Update_Acct
    Priority_Service_Turned_On_or_Turned_Off --> |"Turned Off"| Update_Acct_2
    Update_Acct --> END_Update_Acct
    Update_Acct_2 --> END_Update_Acct_2
    START -->  Priority_Service_Turned_On_or_Turned_Off
    END_Update_Acct(( END )):::endClass
    END_Update_Acct_2(( END )):::endClass
    
    
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
    |Object|Plan__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Update|
    |Label|Plan | After Update | Update Priority Service on Acct|
    |Status|Active|
    |Environments|Default|
    |Interview Label|Plan | After Update | Update Priority Service on Acct {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Priority_Service_Turned_On_or_Turned_Off](#priority_service_turned_on_or_turned_off)|
    |Next Node|[Priority_Service_Turned_On_or_Turned_Off](#priority_service_turned_on_or_turned_off)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Priority_Service__c| Is Changed|✅|
    
    
    ## Flow Nodes Details
    
    ### Priority_Service_Turned_On_or_Turned_Off
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Priority Service Turned On or Turned Off|
    |Default Connector|[Update_Acct_2](#update_acct_2)|
    |Default Connector Label|Turned Off|
    
    
    #### Rule Turned_On (Turned On)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Acct](#update_acct)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Priority_Service__c| Equal To|✅|
    
    
    
    
    ### Update_Acct
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Account|
    |Label|Update Acct|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$Record.Account__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Priority_Service__c|✅|
    
    
    
    
    ### Update_Acct_2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Account|
    |Label|Update Acct 2|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$Record.Account__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Priority_Service__c|⬜|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

