# Support_Client_Health_Image_Creation history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Support_Client_Health_Image_Creation-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Plan__c</b></br>Type: <b>On All Changes</b>"]):::startClass
    click START "#general-information" "766954670"
    
    START --> myDecision
    myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
    click myDecision "#mydecision" "2784158745"
    
    myRule_1_A1[("🛠️ <em></em><br/>Calculate Score")]:::recordUpdates
    click myRule_1_A1 "#myrule_1_a1" "3460557959"
    
    myRule_1_A2[("🛠️ <em></em><br/>Update Health Information Field")]:::recordUpdates
    click myRule_1_A2 "#myrule_1_a2" "1140954470"
    
    myDecision --> |"Client Health Changes"| myRule_1_A1
    myDecision --> |"default"| END_myDecision
    myRule_1_A1 --> myRule_1_A2
    myRule_1_A2 --> END_myRule_1_A2
    END_myDecision(( END )):::endClass
    END_myRule_1_A2(( END )):::endClass
    
    
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
    |Process Type| Workflow|
    |Label|Support | Client Health Score Calculation|
    |Status|⚠️ Draft|
    |Description|Used to Generate client health scores|
    |Interview Label|Support_Client_Health_Image_Creation-7_InterviewLabel|
    |Start Element Reference|[myDecision](#mydecision)|
    | Object Type (PM)|Plan__c|
    | Object Variable (PM)|myVariable_current|
    | Old Object Variable (PM)|myVariable_old|
    | Trigger Type (PM)|onAllChanges|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |myVariable_current|SObject|⬜|✅|✅|Plan__c|<!-- -->|
    |myVariable_old|SObject|⬜|✅|⬜|Plan__c|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |formula_2_myRule_1_A2_1920025426|String|CASE({!myVariable_current.Billing_HM_Score__c},1,"Billing Current",-1,"Billing Behind","") & CASE({!myVariable_current.Payroll_HM_Score__c},1,", Payroll Submission Current",-1,", Payroll Submission Behind","") & CASE({!myVariable_current.CSAT_HM_Score__c},1,", Positive CSAT",-1,", Negative CSAT","") & CASE({!myVariable_current.NPS_HM_Score__c} ,1,", Positive NPS",-1,", Negative NPS","") & CASE({!myVariable_current.Review_HM_Score__c} ,1,", Positive Review",-1,", Negative Review","") & CASE({!myVariable_current.Sentiment_HM_Score__c}  ,1,", Positive Sentiment",-1,", Negative Sentiment","") & IF({!myVariable_current.Referral_HM_Score__c} =1,", Referral Given","")|<!-- -->|
    |formula_3_myRule_1_A1_5559596271|Number|{!myVariable_current.Client_Health_Metric_Score__c}|<!-- -->|
    |formula_myRule_1|Boolean|✅|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### myDecision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision](#mydecision)|
    |Default Connector Label|default|
    |Index (PM)|numberValue: 0<br/>|
    
    
    #### Rule myRule_1 (Client Health Changes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_A1](#myrule_1_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|formula_myRule_1| Equal To|✅|
    
    
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Plan__c|
    |Label|Calculate Score|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Plan__c]|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myRule_1_A2](#myrule_1_a2)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Client_Health_Score__c|formula_3_myRule_1_A1_5559596271|
    
    
    
    
    ### myRule_1_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Plan__c|
    |Label|Update Health Information Field|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Plan__c]|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Client_Health_Information__c|formula_2_myRule_1_A2_1920025426|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

