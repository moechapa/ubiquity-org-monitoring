# Implementation_Plan_Hold_14_Day_Reminder history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Implementation_Plan_Hold_14_Day_Reminder-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Scheduled</b>"]):::startClass
    click START "#general-information" "3035678774"
    
    Case_to_Implementations[("➕ <em></em><br/>Case to Implementations")]:::recordCreates
    click Case_to_Implementations "#case_to_implementations" "2389081932"
    
    Case_to_Implementations --> END_Case_to_Implementations
    START -->  Case_to_Implementations
    END_Case_to_Implementations(( END )):::endClass
    
    
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
    |Object|Implementation__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Scheduled|
    |Label|Implementation | Scheduled | Plan Hold 14 Day Reminder|
    |Status|Active|
    |Description|Triggers checkbox/process to create Implementations case when a plan that is "On Hold" is within 14 days of the Expected Plan Hold Release date.|
    |Interview Label|Implementation | Plan Hold 14 Day Reminder {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Case_to_Implementations](#case_to_implementations)|
    |Next Node|[Case_to_Implementations](#case_to_implementations)|
    
    
    #### Schedules
    
    |Frequency|Start Date|Start Time|
    |:-- |:--:|:--: |
    |Daily|Apr 7, 2020|04:00|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Days_to_End_of_Plan_Hold__c| Equal To|14|
    |2|Implementation_Status__c| Equal To|On Hold|
    |3|Plan_Hold_Release_Reminder__c| Equal To|⬜|
    
    
    ## Flow Nodes Details
    
    ### Case_to_Implementations
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Case to Implementations|
    |Description|Create Implementation Case|
    |Store Output Automatically|✅|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|$Record.Account__c|
    |BusinessHoursId|01m1G000000XaE1|
    |Case_Source__c|Internal|
    |Case_Type__c|Single Case|
    |Department__c|Implementations|
    |Description|Contact client as appropriate to verify if plan hold will be lifted and next steps to take.   See "Plan Hold" section of Implementation to verify days until expected plan hold release.|
    |Implementation__c|$Record.Id|
    |OwnerId|$Record.OwnerId|
    |Plan__c|$Record.Plan__c|
    |Priority|High|
    |RecordTypeId|012370000005thqAAA|
    |Status|New|
    |Subject|"On Hold" plan within 14 Days of "Plan Hold Release" Date|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

