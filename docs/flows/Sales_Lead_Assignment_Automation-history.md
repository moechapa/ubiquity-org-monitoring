# Sales_Lead_Assignment_Automation history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Sales_Lead_Assignment_Automation-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "2396938008"
    
    myRule_1{"🔀 <em></em><br/>Non-Test Lead Created"}:::decisions
    click myRule_1 "#myrule_1" "3158266382"
    
    myRule_3{"🔀 <em></em><br/>JPM Microsite Lead Created"}:::decisions
    click myRule_3 "#myrule_3" "3766555598"
    
    myRule_5{"🔀 <em></em><br/>Test Lead Created"}:::decisions
    click myRule_5 "#myrule_5" "757345612"
    
    Copy_1_of_Update_Lead_Fields[("🛠️ <em></em><br/>Copy 1 of Update Lead Fields")]:::recordUpdates
    click Copy_1_of_Update_Lead_Fields "#copy_1_of_update_lead_fields" "2680171400"
    
    myRule_1_A1[("🛠️ <em></em><br/>Update Lead Fields")]:::recordUpdates
    click myRule_1_A1 "#myrule_1_a1" "551351349"
    
    myRule_3_A1[("🛠️ <em></em><br/>Update Lead Fields")]:::recordUpdates
    click myRule_3_A1 "#myrule_3_a1" "255539218"
    
    myRule_5_A1[("🛠️ <em></em><br/>Update Lead Fields")]:::recordUpdates
    click myRule_5_A1 "#myrule_5_a1" "2799932965"
    
    myRule_1 --> |"TRUE_Non-Test Lead Created"| myRule_1_A1
    myRule_1 --> |"Google PPC Lead"| Copy_1_of_Update_Lead_Fields
    myRule_1 --> |"FALSE_Non-Test Lead Created"| myRule_3
    myRule_3 --> |"TRUE_JPM Microsite Lead Created"| myRule_3_A1
    myRule_3 --> |"FALSE_JPM Microsite Lead Created"| myRule_5
    myRule_5 --> |"TRUE_Test Lead Created"| myRule_5_A1
    myRule_5 --> |"FALSE_Test Lead Created"| END_myRule_5
    Copy_1_of_Update_Lead_Fields --> END_Copy_1_of_Update_Lead_Fields
    myRule_1_A1 --> END_myRule_1_A1
    myRule_3_A1 --> END_myRule_3_A1
    myRule_5_A1 --> END_myRule_5_A1
    START -->  myRule_1
    END_myRule_5(( END )):::endClass
    END_Copy_1_of_Update_Lead_Fields(( END )):::endClass
    END_myRule_1_A1(( END )):::endClass
    END_myRule_3_A1(( END )):::endClass
    END_myRule_5_A1(( END )):::endClass
    
    
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
    |Object|Lead|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create|
    |Label|Sales | Lead Assignment Automation|
    |Status|Active|
    |Description|Rolled Google PPC flow into this. Updated the decision element to check the new GCLID field instead of the deprecated field.|
    |Environments|Default|
    |Interview Label|Sales | Lead Assignment Automation {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    |Connector|[myRule_1](#myrule_1)|
    |Next Node|[myRule_1](#myrule_1)|
    
    
    #### Filters (logic: **or**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|GCLID__c| Is Null|<!-- -->|
    |2|Recommendation_Engine_Results__c| Is Null|<!-- -->|
    |3|campaign_code__c| Equal To|JPM Microsite|
    |4|Email| Contains|@prksqasimply.com|
    |5|Email| Contains|@test.com|
    |6|Email| Contains|@mailinator.com|
    
    
    ## Flow Nodes Details
    
    ### myRule_1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Non-Test Lead Created|
    |Default Connector|[myRule_3](#myrule_3)|
    |Default Connector Label|FALSE_Non-Test Lead Created|
    
    
    #### Rule TRUE_myRule_1 (TRUE_Non-Test Lead Created)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_A1](#myrule_1_a1)|
    |Condition Logic|1 AND NOT 2 AND 3|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Recommendation_Engine_Results__c| Is Null|⬜|
    |2|$Record.Email| Contains|@test.com|
    |3|$Record.gaconnector_GCLID__c| Is Null|✅|
    
    
    
    
    #### Rule Google_PPC_Lead (Google PPC Lead)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Copy_1_of_Update_Lead_Fields](#copy_1_of_update_lead_fields)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.gaconnector_GCLID__c| Is Null|⬜|
    
    
    
    
    ### myRule_3
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|JPM Microsite Lead Created|
    |Default Connector|[myRule_5](#myrule_5)|
    |Default Connector Label|FALSE_JPM Microsite Lead Created|
    
    
    #### Rule TRUE_myRule_3 (TRUE_JPM Microsite Lead Created)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_3_A1](#myrule_3_a1)|
    |Condition Logic|1 AND NOT 2|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.campaign_code__c| Equal To|JPM Microsite|
    |2|$Record.Email| Contains|@test.com|
    
    
    
    
    ### myRule_5
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Test Lead Created|
    |Default Connector Label|FALSE_Test Lead Created|
    
    
    #### Rule TRUE_myRule_5 (TRUE_Test Lead Created)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_5_A1](#myrule_5_a1)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Email| Contains|@test.com|
    |2|$Record.Email| Contains|@mailinator.com|
    |3|$Record.Email| Contains|@prksqasimply.com|
    
    
    
    
    ### Copy_1_of_Update_Lead_Fields
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Copy 1 of Update Lead Fields|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |LeadSource|Paid Ads|
    |LeadSourceDetail__c|Google Ads|
    |Method_of_First_Contact__c|Recommendation Engine|
    |OwnerId|00G37000000ksAD|
    |Product_Type__c|$Record.Product_Type_Recommendation__c|
    |Service_Option__c|$Record.Service_Option_Recommendation__c|
    
    
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Lead Fields|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Method_of_First_Contact__c|Recommendation Engine|
    |OwnerId|00G37000000ksAD|
    |Product_Type__c|$Record.Product_Type_Recommendation__c|
    |Service_Option__c|$Record.Service_Option_Recommendation__c|
    
    
    
    
    ### myRule_3_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Lead Fields|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |OwnerId|00G37000000ksAD|
    
    
    
    
    ### myRule_5_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Lead Fields|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |OwnerId|00500000006vmbu|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

