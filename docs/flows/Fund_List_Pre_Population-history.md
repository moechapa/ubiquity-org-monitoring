# Fund_List_Pre_Population history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Fund_List_Pre_Population-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Fund_List__c</b></br>Type: <b>On All Changes</b>"]):::startClass
    click START "#general-information" "1968518302"
    
    START --> myDecision
    myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
    click myDecision "#mydecision" "3243837359"
    
    myDecision10{"🔀 <em></em><br/>myDecision10"}:::decisions
    click myDecision10 "#mydecision10" "4059543465"
    
    myDecision12{"🔀 <em></em><br/>myDecision12"}:::decisions
    click myDecision12 "#mydecision12" "128114946"
    
    myDecision2{"🔀 <em></em><br/>myDecision2"}:::decisions
    click myDecision2 "#mydecision2" "3916506701"
    
    myDecision4{"🔀 <em></em><br/>myDecision4"}:::decisions
    click myDecision4 "#mydecision4" "2998780989"
    
    myDecision6{"🔀 <em></em><br/>myDecision6"}:::decisions
    click myDecision6 "#mydecision6" "1190679542"
    
    myDecision8{"🔀 <em></em><br/>myDecision8"}:::decisions
    click myDecision8 "#mydecision8" "1313306385"
    
    myRule_11_A1[("🛠️ <em></em><br/>Funds to Text")]:::recordUpdates
    click myRule_11_A1 "#myrule_11_a1" "3704157211"
    
    myRule_13_A1[("🛠️ <em></em><br/>Total Funds")]:::recordUpdates
    click myRule_13_A1 "#myrule_13_a1" "1892044686"
    
    myRule_1_A1[("🛠️ <em></em><br/>R2 SmartRetirement")]:::recordUpdates
    click myRule_1_A1 "#myrule_1_a1" "3269185336"
    
    myRule_1_A2[("🛠️ <em></em><br/>R2 SmartRetirement Blend")]:::recordUpdates
    click myRule_1_A2 "#myrule_1_a2" "3780077669"
    
    myRule_3_A1[("🛠️ <em></em><br/>R3 SmartRetirement")]:::recordUpdates
    click myRule_3_A1 "#myrule_3_a1" "3371808279"
    
    myRule_3_A2[("🛠️ <em></em><br/>R3 SmartRetirement Blend")]:::recordUpdates
    click myRule_3_A2 "#myrule_3_a2" "1307584124"
    
    myRule_5_A1[("🛠️ <em></em><br/>R4 SmartRetirement")]:::recordUpdates
    click myRule_5_A1 "#myrule_5_a1" "1010862173"
    
    myRule_5_A2[("🛠️ <em></em><br/>R4 SmartRetirement Blend")]:::recordUpdates
    click myRule_5_A2 "#myrule_5_a2" "2696823387"
    
    myRule_7_A1[("🛠️ <em></em><br/>R5 SmartRetirement")]:::recordUpdates
    click myRule_7_A1 "#myrule_7_a1" "520852590"
    
    myRule_7_A2[("🛠️ <em></em><br/>R5 SmartRetirement Blend")]:::recordUpdates
    click myRule_7_A2 "#myrule_7_a2" "2955530911"
    
    myRule_9_A1[("🛠️ <em></em><br/>R6 SmartRetirement")]:::recordUpdates
    click myRule_9_A1 "#myrule_9_a1" "2145418416"
    
    myRule_9_A2[("🛠️ <em></em><br/>R6 SmartRetirement Blend")]:::recordUpdates
    click myRule_9_A2 "#myrule_9_a2" "416880272"
    
    myDecision --> |"R2"| myRule_1_A1
    myDecision --> |"default"| myDecision2
    myDecision10 --> |"Funds to Text"| myRule_11_A1
    myDecision10 --> |"default"| myDecision12
    myDecision12 --> |"Total Funds"| myRule_13_A1
    myDecision12 --> |"default"| END_myDecision12
    myDecision2 --> |"R3"| myRule_3_A1
    myDecision2 --> |"default"| myDecision4
    myDecision4 --> |"R4"| myRule_5_A1
    myDecision4 --> |"default"| myDecision6
    myDecision6 --> |"R5"| myRule_7_A1
    myDecision6 --> |"default"| myDecision8
    myDecision8 --> |"R6"| myRule_9_A1
    myDecision8 --> |"default"| myDecision10
    myRule_11_A1 --> myDecision12
    myRule_13_A1 --> END_myRule_13_A1
    myRule_1_A1 --> myRule_1_A2
    myRule_1_A2 --> myDecision2
    myRule_3_A1 --> myRule_3_A2
    myRule_3_A2 --> myDecision4
    myRule_5_A1 --> myRule_5_A2
    myRule_5_A2 --> myDecision6
    myRule_7_A1 --> myRule_7_A2
    myRule_7_A2 --> myDecision8
    myRule_9_A1 --> myRule_9_A2
    myRule_9_A2 --> myDecision10
    END_myDecision12(( END )):::endClass
    END_myRule_13_A1(( END )):::endClass
    
    
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
    |Label|Fund List Pre Population|
    |Status|Active|
    |Description|Adds target date funs to JPM lists depending on Share Classes|
    |Interview Label|Fund_List_Pre_Population-5_InterviewLabel|
    |Start Element Reference|[myDecision](#mydecision)|
    | Object Type (PM)|Fund_List__c|
    | Object Variable (PM)|myVariable_current|
    | Old Object Variable (PM)|myVariable_old|
    | Recursive Count Variable (PM)|RecursiveCountVariable|
    | Trigger Type (PM)|onAllChanges|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |myVariable_current|SObject|⬜|✅|✅|Fund_List__c|<!-- -->|
    |myVariable_old|SObject|⬜|✅|⬜|Fund_List__c|<!-- -->|
    |RecursiveCountVariable|Number|⬜|✅|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |formula_14_myRule_13_A1_4607772074|String|{!myVariable_current.Asset_Allocation_Funds_Text__c} &";"&{!myVariable_current.Fixed_Income_Taxable_Funds_Text__c} &";"&{!myVariable_current.International_Equity_Funds_Text__c} &";"&{!myVariable_current.Money_Market_Funds_Text__c} &";"&{!myVariable_current.SmartRetirement_Blend_Funds_Text__c} &";"&{!myVariable_current.SmartRetirement_Funds_Text__c} &";"&{!myVariable_current.SmartRetirement_Income_Funds_Text__c} &";"&{!myVariable_current.US_Equity_Funds_Text__c}|<!-- -->|
    |formula_myRule_11|Boolean|✅|<!-- -->|
    |formula_myRule_13|Boolean|✅|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### myDecision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision](#mydecision)|
    |Default Connector|[myDecision2](#mydecision2)|
    |Default Connector Label|default|
    |Index (PM)|numberValue: 0<br/>|
    
    
    #### Rule myRule_1 (R2)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_A1](#myrule_1_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Share_Class__c| Equal To|R2|
    
    
    
    
    ### myDecision10
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision10](#mydecision10)|
    |Default Connector|[myDecision12](#mydecision12)|
    |Default Connector Label|default|
    |Index (PM)|5|
    
    
    #### Rule myRule_11 (Funds to Text)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_11_A1](#myrule_11_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|formula_myRule_11| Equal To|✅|
    
    
    
    
    ### myDecision12
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision12](#mydecision12)|
    |Default Connector Label|default|
    |Index (PM)|6|
    
    
    #### Rule myRule_13 (Total Funds)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_13_A1](#myrule_13_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|formula_myRule_13| Equal To|✅|
    
    
    
    
    ### myDecision2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision2](#mydecision2)|
    |Default Connector|[myDecision4](#mydecision4)|
    |Default Connector Label|default|
    |Index (PM)|1|
    
    
    #### Rule myRule_3 (R3)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_3_A1](#myrule_3_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Share_Class__c| Equal To|R3|
    
    
    
    
    ### myDecision4
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision4](#mydecision4)|
    |Default Connector|[myDecision6](#mydecision6)|
    |Default Connector Label|default|
    |Index (PM)|2|
    
    
    #### Rule myRule_5 (R4)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_5_A1](#myrule_5_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Share_Class__c| Equal To|R4|
    
    
    
    
    ### myDecision6
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision6](#mydecision6)|
    |Default Connector|[myDecision8](#mydecision8)|
    |Default Connector Label|default|
    |Index (PM)|3|
    
    
    #### Rule myRule_7 (R5)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_7_A1](#myrule_7_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Share_Class__c| Equal To|R5|
    
    
    
    
    ### myDecision8
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision8](#mydecision8)|
    |Default Connector|[myDecision10](#mydecision10)|
    |Default Connector Label|default|
    |Index (PM)|4|
    
    
    #### Rule myRule_9 (R6)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_9_A1](#myrule_9_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Share_Class__c| Equal To|R6|
    
    
    
    
    ### myRule_11_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Fund_List__c|
    |Label|Funds to Text|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Fund_List__c]|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myDecision12](#mydecision12)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Asset_Allocation_Funds_Text__c|myVariable_current.Asset_Allocation_Funds__c|
    |Fixed_Income_Taxable_Funds_Text__c|myVariable_current.Fixed_Income_Taxable_Funds__c|
    |International_Equity_Funds_Text__c|myVariable_current.International_Equity_Funds__c|
    |Money_Market_Funds_Text__c|myVariable_current.Money_Market_Funds__c|
    |SmartRetirement_Blend_Funds_Text__c|myVariable_current.SmartRetirement_Blend_Funds__c|
    |SmartRetirement_Funds_Text__c|myVariable_current.SmartRetirement_Funds__c|
    |SmartRetirement_Income_Funds_Text__c|myVariable_current.SmartRetirement_Income_Funds__c|
    |US_Equity_Funds_Text__c|myVariable_current.US_Equity_Funds__c|
    
    
    
    
    ### myRule_13_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Fund_List__c|
    |Label|Total Funds|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Fund_List__c]|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Total_Fund_List__c|formula_14_myRule_13_A1_4607772074|
    
    
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Fund_List__c|
    |Label|R2 SmartRetirement|
    |Evaluation Type (PM)|criteria|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Fund_List__c]|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myRule_1_A2](#myrule_1_a2)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    |2|QDIA_Investment_Strategy__c| Equal To|J.P. Morgan SmartRetirement|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Money_Market_Funds__c|Federated Trust for U.S. Treasury Obligations (TTIXX)|
    |SmartRetirement_Funds__c|SmartRetirement 2020 Fund (JTTZX); SmartRetirement 2025 Fund (JNSZX); SmartRetirement 2030 Fund (JSMZX); SmartRetirement 2035 Fund (SRJZX); SmartRetirement 2040 Fund (SMTZX); SmartRetirement 2045 Fund (JSAZX); SmartRetirement 2050 Fund (JTSZX); SmartRetirement 2055 Fund (JFFRX); SmartRetirement 2060 Fund (JAKZX)|
    |SmartRetirement_Income_Funds__c|SmartRetirement Income Fund (JSIZX)|
    
    
    
    
    ### myRule_1_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Fund_List__c|
    |Label|R2 SmartRetirement Blend|
    |Evaluation Type (PM)|criteria|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Fund_List__c]|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myDecision2](#mydecision2)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    |2|QDIA_Investment_Strategy__c| Equal To|J.P. Morgan SmartRetirement Blend|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Money_Market_Funds__c|Federated Trust for U.S. Treasury Obligations (TTIXX)|
    |SmartRetirement_Blend_Funds__c|SmartRetirement Blend 2020 Fund (JIORX); SmartRetirement Blend 2025 Fund (JBRSX); SmartRetirement Blend 2030 Fund (JRBRX); SmartRetirement Blend 2035 Fund (JPRRX); SmartRetirement Blend 2040 Fund (JOBRX); SmartRetirement Blend 2045 Fund (JNARX); SmartRetirement Blend 2050 Fund (JNNRX); SmartRetirement Blend 2055 Fund (JTRBX); SmartRetirement Blend 2060 Fund (JATPX)|
    |SmartRetirement_Income_Funds__c|SmartRetirement Blend Income Fund (JIRBX)|
    
    
    
    
    ### myRule_3_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Fund_List__c|
    |Label|R3 SmartRetirement|
    |Evaluation Type (PM)|criteria|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Fund_List__c]|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myRule_3_A2](#myrule_3_a2)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    |2|QDIA_Investment_Strategy__c| Equal To|J.P. Morgan SmartRetirement|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Money_Market_Funds__c|US Government Money Market Fund Reserve (RJGXX)|
    |SmartRetirement_Funds__c|SmartRetirement 2020 Fund (JTTPX); SmartRetirement 2025 Fund (JNSPX); SmartRetirement 2030 Fund (JSMNX); SmartRetirement 2035 Fund (SRJPX); SmartRetirement 2040 Fund (SMTPX); SmartRetirement 2045 Fund (JSAPX); SmartRetirement 2050 Fund (JTSPX); SmartRetirement 2055 Fund (JFFPX); SmartRetirement 2060 Fund (JAKPX)|
    |SmartRetirement_Income_Funds__c|SmartRetirement Income Fund (JSIPX)|
    
    
    
    
    ### myRule_3_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Fund_List__c|
    |Label|R3 SmartRetirement Blend|
    |Evaluation Type (PM)|criteria|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Fund_List__c]|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myDecision4](#mydecision4)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    |2|QDIA_Investment_Strategy__c| Equal To|J.P. Morgan SmartRetirement Blend|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Money_Market_Funds__c|US Government Money Market Fund Reserve (RJGXX)|
    |SmartRetirement_Blend_Funds__c|SmartRetirement Blend 2020 Fund (JSTKX); SmartRetirement Blend 2025 Fund (JBTUX); SmartRetirement Blend 2030 Fund (JUTPX); SmartRetirement Blend 2035 Fund (JPTLX); SmartRetirement Blend 2040 Fund (JNTEX); SmartRetirement Blend 2045 Fund (JNTOX); SmartRetirement Blend 2050 Fund (JNTKX); SmartRetirement Blend 2055 Fund (JTTUX); SmartRetirement Blend 2060 Fund (JATQX)|
    |SmartRetirement_Income_Funds__c|SmartRetirement Blend Income Fund (JITLX)|
    
    
    
    
    ### myRule_5_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Fund_List__c|
    |Label|R4 SmartRetirement|
    |Evaluation Type (PM)|criteria|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Fund_List__c]|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myRule_5_A2](#myrule_5_a2)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    |2|QDIA_Investment_Strategy__c| Equal To|J.P. Morgan SmartRetirement|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Money_Market_Funds__c|US Government Money Market Fund Premier (OGSXX)|
    |SmartRetirement_Funds__c|SmartRetirement 2020 Fund (JTTQX); SmartRetirement 2025 Fund (JNSQX); SmartRetirement 2030 Fund (JSMQX); SmartRetirement 2035 Fund (SRJQX); SmartRetirement 2040 Fund (SMTQX); SmartRetirement 2045 Fund (JSAQX); SmartRetirement 2050 Fund (JTSQX); SmartRetirement 2055 Fund (JFFQX); SmartRetirement 2060 Fund (JAKQX)|
    |SmartRetirement_Income_Funds__c|SmartRetirement Income Fund (JSIQX)|
    
    
    
    
    ### myRule_5_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Fund_List__c|
    |Label|R4 SmartRetirement Blend|
    |Evaluation Type (PM)|criteria|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Fund_List__c]|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myDecision6](#mydecision6)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    |2|QDIA_Investment_Strategy__c| Equal To|J.P. Morgan SmartRetirement Blend|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Money_Market_Funds__c|US Government Money Market Fund Premier (OGSXX)|
    |SmartRetirement_Blend_Funds__c|SmartRetirement Blend 2020 Fund (JSTLX); SmartRetirement Blend 2025 Fund (JBTBX); SmartRetirement Blend 2030 Fund (JUTUX); SmartRetirement Blend 2035 Fund (JPTKX); SmartRetirement Blend 2040 Fund (JNTNX); SmartRetirement Blend 2045 Fund (JNTLX); SmartRetirement Blend 2050 Fund (JNTPX); SmartRetirement Blend 2055 Fund (JTTLX); SmartRetirement Blend 2060 Fund (JATUX)|
    |SmartRetirement_Income_Funds__c|SmartRetirement Blend Income Fund (JITKX)|
    
    
    
    
    ### myRule_7_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Fund_List__c|
    |Label|R5 SmartRetirement|
    |Evaluation Type (PM)|criteria|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Fund_List__c]|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myRule_7_A2](#myrule_7_a2)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    |2|QDIA_Investment_Strategy__c| Equal To|J.P. Morgan SmartRetirement|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Money_Market_Funds__c|PIMCO Government Money Market (PGPXX)|
    |SmartRetirement_Funds__c|SmartRetirement 2020 Fund (JTTIX); SmartRetirement 2025 Fund (JNSIX); SmartRetirement 2030 Fund (JSMIX); SmartRetirement 2035 Fund (SRJIX); SmartRetirement 2040 Fund (SMTIX); SmartRetirement 2045 Fund (JSAIX); SmartRetirement 2050 Fund (JTSIX); SmartRetirement 2055 Fund (JFFIX); SmartRetirement 2060 Fund (JAKIX)|
    |SmartRetirement_Income_Funds__c|SmartRetirement Income Fund (JSIIX)|
    
    
    
    
    ### myRule_7_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Fund_List__c|
    |Label|R5 SmartRetirement Blend|
    |Evaluation Type (PM)|criteria|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Fund_List__c]|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myDecision8](#mydecision8)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    |2|QDIA_Investment_Strategy__c| Equal To|J.P. Morgan SmartRetirement Blend|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Money_Market_Funds__c|PIMCO Government Money Market (PGPXX)|
    |SmartRetirement_Blend_Funds__c|SmartRetirement Blend 2020 Fund (JBSRX); SmartRetirement Blend 2025 Fund (JBBSX); SmartRetirement Blend 2030 Fund (JRBBX); SmartRetirement Blend 2035 Fund (JPBRX); SmartRetirement Blend 2040 Fund (JOBBX); SmartRetirement Blend 2045 Fund (JMBRX); SmartRetirement Blend 2050 Fund (JNABX); SmartRetirement Blend 2055 Fund (JTBBX); SmartRetirement Blend 2060 Fund (JAABX)|
    |SmartRetirement_Income_Funds__c|SmartRetirement Blend Income Fund (JIBBX)|
    
    
    
    
    ### myRule_9_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Fund_List__c|
    |Label|R6 SmartRetirement|
    |Evaluation Type (PM)|criteria|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Fund_List__c]|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myRule_9_A2](#myrule_9_a2)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    |2|QDIA_Investment_Strategy__c| Equal To|J.P. Morgan SmartRetirement|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Money_Market_Funds__c|US Government Money Market Fund Capital (OGVXX)|
    |SmartRetirement_Funds__c|SmartRetirement 2020 Fund (JTTYX); SmartRetirement 2025 Fund (JNSYX); SmartRetirement 2030 Fund (JSMYX); SmartRetirement 2035 Fund (SRJYX); SmartRetirement 2040 Fund (SMTYX); SmartRetirement 2045 Fund (JSAYX); SmartRetirement 2050 Fund (JTSYX); SmartRetirement 2055 Fund (JFFYX); SmartRetirement 2060 Fund (JAKYX)|
    |SmartRetirement_Income_Funds__c|SmartRetirement Income Fund (JSIYX)|
    
    
    
    
    ### myRule_9_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Fund_List__c|
    |Label|R6 SmartRetirement Blend|
    |Evaluation Type (PM)|criteria|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Fund_List__c]|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myDecision10](#mydecision10)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    |2|QDIA_Investment_Strategy__c| Equal To|J.P. Morgan SmartRetirement Blend|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Money_Market_Funds__c|US Government Money Market Fund Capital (OGVXX)|
    |SmartRetirement_Blend_Funds__c|SmartRetirement Blend 2020 Fund (JSYRX); SmartRetirement Blend 2025 Fund (JBYSX); SmartRetirement Blend 2030 Fund (JRBYX); SmartRetirement Blend 2035 Fund (JPYRX); SmartRetirement Blend 2040 Fund (JOBYX); SmartRetirement Blend 2045 Fund (JMYAX); SmartRetirement Blend 2050 Fund (JNYAX); SmartRetirement Blend 2055 Fund (JTYBX); SmartRetirement Blend 2060 Fund (JAAYX)|
    |SmartRetirement_Income_Funds__c|SmartRetirement Blend Income Fund (JIYBX)|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

