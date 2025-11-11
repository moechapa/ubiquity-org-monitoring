# Account_Before_Update_Physical_Address_Same_as_Billing history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Account_Before_Update_Physical_Address_Same_as_Billing-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record Before Save</b>"]):::startClass
    click START "#general-information" "3570017747"
    
    Physical_Address_Billing_Address{"🔀 <em></em><br/>Physical Address, Billing Address"}:::decisions
    click Physical_Address_Billing_Address "#physical_address_billing_address" "1149200878"
    
    Match_Address[("🛠️ <em></em><br/>Match Address")]:::recordUpdates
    click Match_Address "#match_address" "4254117955"
    
    Physical_Address_Billing_Address --> |"Physical Matches Billing"| Match_Address
    Physical_Address_Billing_Address --> |"Default Outcome"| END_Physical_Address_Billing_Address
    Match_Address --> END_Match_Address
    START -->  Physical_Address_Billing_Address
    END_Physical_Address_Billing_Address(( END )):::endClass
    END_Match_Address(( END )):::endClass
    
    
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
    |Object|Account|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record Before Save|
    |Record Trigger Type| Create And Update|
    |Label|Account | Before Update | Physical Address Same as Billing|
    |Status|Active|
    |Interview Label|Account | Before Update {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Physical_Address_Billing_Address](#physical_address_billing_address)|
    |Next Node|[Physical_Address_Billing_Address](#physical_address_billing_address)|
    
    
    ## Flow Nodes Details
    
    ### Physical_Address_Billing_Address
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Physical Address, Billing Address|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Physical_Matches_Billing (Physical Matches Billing)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Match_Address](#match_address)|
    |Condition Logic|(1 AND 2) OR (1 AND 3) OR (1 AND 4) OR (1 AND 5) OR (1 AND 6)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Physical_Address_Same_as_Billing__c| Equal To|✅|
    |2|$Record.Physical_Address_Same_as_Billing__c| Is Changed|✅|
    |3|$Record.BillingState| Is Changed|✅|
    |4|$Record.BillingCity| Is Changed|✅|
    |5|$Record.BillingStreet| Is Changed|✅|
    |6|$Record.BillingPostalCode| Is Changed|✅|
    
    
    
    
    ### Match_Address
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Match Address|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Physical_City__c|$Record.BillingCity|
    |Physical_State__c|$Record.BillingState|
    |Physical_Street_Address__c|$Record.BillingStreet|
    |Physical_Zip_Code__c|$Record.BillingPostalCode|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

