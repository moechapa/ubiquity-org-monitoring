# Opportunity_Trigger_After_Send_Email_Alerts history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Opportunity_Trigger_After_Send_Email_Alerts-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "1181193012"
    
    Alert_Partnership_Support("📧 <em></em><br/>Alert Partnership Support"):::actionCalls
    click Alert_Partnership_Support "#alert_partnership_support" "1471157986"
    
    Notyfy_A_F("📧 <em></em><br/>Notyfy A&F"):::actionCalls
    click Notyfy_A_F "#notyfy_a_f" "1321157182"
    
    Upgrade_Sold("📧 <em></em><br/>Upgrade Sold"):::actionCalls
    click Upgrade_Sold "#upgrade_sold" "4260710456"
    
    Advisor_Channel{"🔀 <em></em><br/>Advisor Channel?"}:::decisions
    click Advisor_Channel "#advisor_channel" "1647501768"
    
    Is_Product_Change_Close{"🔀 <em></em><br/>Is Product Change Close?"}:::decisions
    click Is_Product_Change_Close "#is_product_change_close" "36470220"
    
    Plan_Sale{"🔀 <em></em><br/>Plan Sale?"}:::decisions
    click Plan_Sale "#plan_sale" "3057707264"
    
    Upgrade{"🔀 <em></em><br/>Upgrade?"}:::decisions
    click Upgrade "#upgrade" "4013852983"
    
    Alert_Partnership_Support --> END_Alert_Partnership_Support
    Notyfy_A_F --> END_Notyfy_A_F
    Upgrade_Sold --> Is_Product_Change_Close
    Advisor_Channel --> |"Opp in advisor channel"| Alert_Partnership_Support
    Advisor_Channel --> |"Default Outcome"| END_Advisor_Channel
    Is_Product_Change_Close --> |"True"| Notyfy_A_F
    Is_Product_Change_Close --> |"False"| END_Is_Product_Change_Close
    Plan_Sale --> |"Opp is plan sale"| Advisor_Channel
    Plan_Sale --> |"Default Outcome"| END_Plan_Sale
    Upgrade --> |"True"| Upgrade_Sold
    Upgrade --> |"False"| Plan_Sale
    START -->  Upgrade
    END_Alert_Partnership_Support(( END )):::endClass
    END_Notyfy_A_F(( END )):::endClass
    END_Advisor_Channel(( END )):::endClass
    END_Is_Product_Change_Close(( END )):::endClass
    END_Plan_Sale(( END )):::endClass
    
    
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
    |Record Trigger Type| Update|
    |Label|Opportunity | Trigger After | Send Email Alerts|
    |Status|Active|
    |Does Require Record Changed To Meet Criteria|✅|
    |Description|For closed won opps.  Alerts A&F if an upgrade or product change is sold, and alerts partnership support if there's an ubiquity advisor sale.|
    |Environments|Default|
    |Interview Label|Opportunity | Email Alerts {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Upgrade](#upgrade)|
    |Next Node|[Upgrade](#upgrade)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|StageName| Equal To|Closed Won|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |recipientAddresses|String|✅|⬜|⬜|<!-- -->|<!-- -->|
    |Today|Date|⬜|⬜|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |LastWeek|Date|({!Today} - 7)|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Alert_Partnership_Support
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Alert Partnership Support|
    |Action Type|Email Alert|
    |Action Name|Opportunity.Ubiquity_Advisor_Plan_Sold|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Opportunity.Ubiquity_Advisor_Plan_Sold|
    |Offset|0|
    | SObject Row Id (input)|$Record.Id|
    
    
    ### Notyfy_A_F
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Notyfy A&F|
    |Action Type|Email Alert|
    |Action Name|Opportunity.Product_Change_Opp_Closed|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Opportunity.Product_Change_Opp_Closed|
    |Offset|0|
    | SObject Row Id (input)|$Record.Id|
    
    
    ### Upgrade_Sold
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Upgrade Sold|
    |Action Type|Email Alert|
    |Action Name|Opportunity.Upgrade_Sold|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Opportunity.Upgrade_Sold|
    |Offset|0|
    | SObject Row Id (input)|$Record.Id|
    |Connector|[Is_Product_Change_Close](#is_product_change_close)|
    
    
    ### Advisor_Channel
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Advisor Channel?|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Opp_in_advisor_channel (Opp in advisor channel)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Alert_Partnership_Support](#alert_partnership_support)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.LeadSource| Equal To|Partner Referral|
    |2|$Record.LeadSourceDetail__c| Equal To|Advisor|
    
    
    
    
    ### Is_Product_Change_Close
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Is Product Change Close?|
    |Default Connector Label|False|
    
    
    #### Rule True_3 (True)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Notyfy_A_F](#notyfy_a_f)|
    |Condition Logic|(1 AND NOT 2) OR (NOT 1 AND 2)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Service_Option__c| Contains|Single(k)|
    |2|$Record.Previous_Service_Option__c| Contains|Single(k)|
    
    
    
    
    ### Plan_Sale
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Plan Sale?|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Opp_is_plan_sale (Opp is plan sale)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Advisor_Channel](#advisor_channel)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Type| Equal To|401(k) Plan Sale|
    
    
    
    
    ### Upgrade
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Upgrade?|
    |Default Connector|[Plan_Sale](#plan_sale)|
    |Default Connector Label|False|
    
    
    #### Rule True (True)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Upgrade_Sold](#upgrade_sold)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Type| Equal To|[Upgrade](#upgrade)|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

