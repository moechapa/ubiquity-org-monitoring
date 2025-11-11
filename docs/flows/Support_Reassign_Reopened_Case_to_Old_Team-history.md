# Support_Reassign_Reopened_Case_to_Old_Team history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Support_Reassign_Reopened_Case_to_Old_Team-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Case</b></br>Type: <b>On All Changes</b>"]):::startClass
    click START "#general-information" "3734605653"
    
    START --> isChangedDecision4_myRule_3_IsClosed
    isChangedDecision12_myRule_11_IsClosed{"🔀 <em></em><br/>isChangedDecision12_myRule_11_IsClosed"}:::decisions
    click isChangedDecision12_myRule_11_IsClosed "#ischangeddecision12_myrule_11_isclosed" "1771356987"
    
    isChangedDecision4_myRule_3_IsClosed{"🔀 <em></em><br/>isChangedDecision4_myRule_3_IsClosed"}:::decisions
    click isChangedDecision4_myRule_3_IsClosed "#ischangeddecision4_myrule_3_isclosed" "2158230723"
    
    isChangedDecision9_myRule_8_IsClosed{"🔀 <em></em><br/>isChangedDecision9_myRule_8_IsClosed"}:::decisions
    click isChangedDecision9_myRule_8_IsClosed "#ischangeddecision9_myrule_8_isclosed" "1499782935"
    
    myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
    click myDecision "#mydecision" "1492324936"
    
    myDecision10{"🔀 <em></em><br/>myDecision10"}:::decisions
    click myDecision10 "#mydecision10" "1422001142"
    
    myDecision13{"🔀 <em></em><br/>myDecision13"}:::decisions
    click myDecision13 "#mydecision13" "4126947097"
    
    myDecision15{"🔀 <em></em><br/>myDecision15"}:::decisions
    click myDecision15 "#mydecision15" "3582321137"
    
    myDecision2{"🔀 <em></em><br/>myDecision2"}:::decisions
    click myDecision2 "#mydecision2" "3537468340"
    
    myDecision5{"🔀 <em></em><br/>myDecision5"}:::decisions
    click myDecision5 "#mydecision5" "1900500246"
    
    myDecision7{"🔀 <em></em><br/>myDecision7"}:::decisions
    click myDecision7 "#mydecision7" "1186447561"
    
    myRule_1_pmetdec{"🔀 <em></em><br/>Previously Met Decision"}:::decisions
    click myRule_1_pmetdec "#myrule_1_pmetdec" "2280851136"
    
    myRule_11_A1[("🛠️ <em></em><br/>Back to Tier 1")]:::recordUpdates
    click myRule_11_A1 "#myrule_11_a1" "3256966149"
    
    myRule_14_A1[("🛠️ <em></em><br/>BI Queue")]:::recordUpdates
    click myRule_14_A1 "#myrule_14_a1" "1752139335"
    
    myRule_16_A1[("🛠️ <em></em><br/>Back to Tier 1")]:::recordUpdates
    click myRule_16_A1 "#myrule_16_a1" "2632393994"
    
    myRule_1_A1[("🛠️ <em></em><br/>Back to Tier 1")]:::recordUpdates
    click myRule_1_A1 "#myrule_1_a1" "194538785"
    
    myRule_3_A1[("🛠️ <em></em><br/>Back to Tier 1")]:::recordUpdates
    click myRule_3_A1 "#myrule_3_a1" "3730439550"
    
    myRule_6_A1[("🛠️ <em></em><br/>To Tier 1")]:::recordUpdates
    click myRule_6_A1 "#myrule_6_a1" "240729950"
    
    myRule_8_A1[("🛠️ <em></em><br/>Back to Tier 1")]:::recordUpdates
    click myRule_8_A1 "#myrule_8_a1" "540653806"
    
    isChangedDecision12_myRule_11_IsClosed --> |"isChangedRule_12_myRule_11_IsClosed"| myDecision
    isChangedDecision12_myRule_11_IsClosed --> |"default"| myDecision
    isChangedDecision4_myRule_3_IsClosed --> |"isChangedRule_4_myRule_3_IsClosed"| isChangedDecision9_myRule_8_IsClosed
    isChangedDecision4_myRule_3_IsClosed --> |"default"| isChangedDecision9_myRule_8_IsClosed
    isChangedDecision9_myRule_8_IsClosed --> |"isChangedRule_9_myRule_8_IsClosed"| isChangedDecision12_myRule_11_IsClosed
    isChangedDecision9_myRule_8_IsClosed --> |"default"| isChangedDecision12_myRule_11_IsClosed
    myDecision --> |"Estee Cases Reopened"| myRule_1_pmetdec
    myDecision --> |"default"| myDecision2
    myDecision10 --> |"Platinum Case Reopened"| myRule_11_A1
    myDecision10 --> |"default"| myDecision13
    myDecision13 --> |"John Cases to BI Queue"| myRule_14_A1
    myDecision13 --> |"default"| myDecision15
    myDecision15 --> |"Inactive CE Team Member"| myRule_16_A1
    myDecision15 --> |"default"| END_myDecision15
    myDecision2 --> |"Send Back to Client Support"| myRule_3_A1
    myDecision2 --> |"default"| myDecision5
    myDecision5 --> |"Darrell | Rosie | Mark Old Cases"| myRule_6_A1
    myDecision5 --> |"default"| myDecision7
    myDecision7 --> |"Client Support Case Reopened"| myRule_8_A1
    myDecision7 --> |"default"| myDecision10
    myRule_1_pmetdec --> |"Previously Met - Null"| myRule_1_A1
    myRule_1_pmetdec --> |"Not Previously Met"| myRule_1_A1
    myRule_11_A1 --> END_myRule_11_A1
    myRule_14_A1 --> END_myRule_14_A1
    myRule_16_A1 --> END_myRule_16_A1
    myRule_1_A1 --> END_myRule_1_A1
    myRule_3_A1 --> END_myRule_3_A1
    myRule_6_A1 --> END_myRule_6_A1
    myRule_8_A1 --> END_myRule_8_A1
    END_myDecision15(( END )):::endClass
    END_myRule_11_A1(( END )):::endClass
    END_myRule_14_A1(( END )):::endClass
    END_myRule_16_A1(( END )):::endClass
    END_myRule_1_A1(( END )):::endClass
    END_myRule_3_A1(( END )):::endClass
    END_myRule_6_A1(( END )):::endClass
    END_myRule_8_A1(( END )):::endClass
    
    
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
    |Label|Support | Reassign Reopened Case to Old Team|
    |Status|Active|
    |Description|Reassigns reopened cases to original team queue if Case Owner is no longer on the Service Team that closed the case. Updated 10-23-23 to send all the reopened support cases to Tier 1 Support queue|
    |Interview Label|Support_Reassign_Reopened_Case_to_Old_Team-30_InterviewLabel|
    |Start Element Reference|[isChangedDecision4_myRule_3_IsClosed](#ischangeddecision4_myrule_3_isclosed)|
    | Object Type (PM)|Case|
    | Object Variable (PM)|myVariable_current|
    | Old Object Variable (PM)|myVariable_old|
    | Trigger Type (PM)|onAllChanges|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |myVariable_current|SObject|⬜|✅|✅|Case|<!-- -->|
    |myVariable_old|SObject|⬜|✅|⬜|Case|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### isChangedDecision12_myRule_11_IsClosed
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision12_myRule_11_IsClosed](#ischangeddecision12_myrule_11_isclosed)|
    |Default Connector|[myDecision](#mydecision)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_12_myRule_11_IsClosed (isChangedRule_12_myRule_11_IsClosed)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myDecision](#mydecision)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.IsClosed| Not Equal To|myVariable_current.IsClosed|
    
    
    
    
    ### isChangedDecision4_myRule_3_IsClosed
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision4_myRule_3_IsClosed](#ischangeddecision4_myrule_3_isclosed)|
    |Default Connector|[isChangedDecision9_myRule_8_IsClosed](#ischangeddecision9_myrule_8_isclosed)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_4_myRule_3_IsClosed (isChangedRule_4_myRule_3_IsClosed)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision9_myRule_8_IsClosed](#ischangeddecision9_myrule_8_isclosed)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|✅|
    |2|myVariable_old.IsClosed| Equal To|myVariable_current.IsClosed|
    
    
    
    
    ### isChangedDecision9_myRule_8_IsClosed
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision9_myRule_8_IsClosed](#ischangeddecision9_myrule_8_isclosed)|
    |Default Connector|[isChangedDecision12_myRule_11_IsClosed](#ischangeddecision12_myrule_11_isclosed)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_9_myRule_8_IsClosed (isChangedRule_9_myRule_8_IsClosed)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision12_myRule_11_IsClosed](#ischangeddecision12_myrule_11_isclosed)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.IsClosed| Not Equal To|myVariable_current.IsClosed|
    
    
    
    
    ### myDecision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision](#mydecision)|
    |Default Connector|[myDecision2](#mydecision2)|
    |Default Connector Label|default|
    |Index (PM)|numberValue: 0<br/>|
    
    
    #### Rule myRule_1 (Estee Cases Reopened)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_pmetdec](#myrule_1_pmetdec)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.OwnerId| Equal To|00537000001tWbhAAE|
    |2|myVariable_current.Status| Equal To|Response Received|
    
    
    
    
    ### myDecision10
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision10](#mydecision10)|
    |Default Connector|[myDecision13](#mydecision13)|
    |Default Connector Label|default|
    |Index (PM)|4|
    
    
    #### Rule myRule_11 (Platinum Case Reopened)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_11_A1](#myrule_11_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|isChangedRule_12_myRule_11_IsClosed| Equal To|✅|
    |2|myVariable_current.IsClosed| Equal To|⬜|
    |3|myVariable_current.Status| Equal To|Response_Received|
    |4|myVariable_current.Case_Team__c| Not Equal To|Platinum Servicing|
    |5|myVariable_current.Case_Team_New__c| Equal To|Platinum Servicing|
    
    
    
    
    ### myDecision13
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision13](#mydecision13)|
    |Default Connector|[myDecision15](#mydecision15)|
    |Default Connector Label|default|
    |Index (PM)|5|
    
    
    #### Rule myRule_14 (John Cases to BI Queue)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_14_A1](#myrule_14_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.OwnerId| Equal To|00500000006xxo2AAA|
    |2|myVariable_current.Status| Equal To|Response Received|
    
    
    
    
    ### myDecision15
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision15](#mydecision15)|
    |Default Connector Label|default|
    |Index (PM)|6|
    
    
    #### Rule myRule_16 (Inactive CE Team Member)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_16_A1](#myrule_16_a1)|
    |Condition Logic|1 AND 5 AND (2 OR 3 OR 4)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Owner:User.IsActive| Equal To|⬜|
    |2|myVariable_current.Owner:User.Profile.Name| Contains|Service|
    |3|myVariable_current.Owner:User.Profile.Name| Contains|Saver|
    |4|myVariable_current.Owner:User.Profile.Name| Contains|Single|
    |5|myVariable_current.IsClosed| Equal To|⬜|
    
    
    
    
    ### myDecision2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision2](#mydecision2)|
    |Default Connector|[myDecision5](#mydecision5)|
    |Default Connector Label|default|
    |Index (PM)|1|
    
    
    #### Rule myRule_3 (Send Back to Client Support)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_3_A1](#myrule_3_a1)|
    |Condition Logic|1 AND 2 AND (3 OR 4 OR 5 OR 6)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|isChangedRule_4_myRule_3_IsClosed| Equal To|✅|
    |2|myVariable_current.IsClosed| Equal To|⬜|
    |3|myVariable_current.OwnerId| Equal To|0051G0000069y2JQAQ|
    |4|myVariable_current.OwnerId| Contains|00537000004oRLa|
    |5|myVariable_current.OwnerId| Contains|00537000004JOIT|
    |6|myVariable_current.OwnerId| Contains|0051G0000069pAsQAI|
    
    
    
    
    ### myDecision5
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision5](#mydecision5)|
    |Default Connector|[myDecision7](#mydecision7)|
    |Default Connector Label|default|
    |Index (PM)|2|
    
    
    #### Rule myRule_6 (Darrell | Rosie | Mark Old Cases)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_6_A1](#myrule_6_a1)|
    |Condition Logic|(1 OR 2 OR 5) AND 3 AND 4|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.OwnerId| Equal To|00537000003kzJOAAY|
    |2|myVariable_current.OwnerId| Equal To|00537000003kzJYAAY|
    |3|myVariable_current.Case_Team_New__c| Contains|Saver|
    |4|myVariable_current.Status| Equal To|Response Received|
    |5|myVariable_current.OwnerId| Equal To|0051G0000069LNwQAM|
    
    
    
    
    ### myDecision7
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision7](#mydecision7)|
    |Default Connector|[myDecision10](#mydecision10)|
    |Default Connector Label|default|
    |Index (PM)|3|
    
    
    #### Rule myRule_8 (Client Support Case Reopened)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_8_A1](#myrule_8_a1)|
    |Condition Logic|1 AND 2 AND 3 AND (4 OR 5 OR 6 OR 7 OR 8)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|isChangedRule_9_myRule_8_IsClosed| Equal To|✅|
    |2|myVariable_current.IsClosed| Equal To|⬜|
    |3|myVariable_current.Case_Team__c| Not Equal To|Client Support|
    |4|myVariable_current.Case_Team_New__c| Equal To|Client Support|
    |5|myVariable_current.Case_Team_New__c| Equal To|East Coast Servicing|
    |6|myVariable_current.Case_Team_New__c| Equal To|Mountain/Central Servicing|
    |7|myVariable_current.Case_Team_New__c| Equal To|West Coast Servicing|
    |8|myVariable_current.Case_Team_New__c| Equal To|Zenefits Servicing|
    
    
    
    
    ### myRule_1_pmetdec
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Previously Met Decision|
    |Default Connector|[myRule_1_A1](#myrule_1_a1)|
    |Default Connector Label|Not Previously Met|
    
    
    #### Rule myRule_1_pmetnullrule (Previously Met - Null)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_A1](#myrule_1_a1)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|✅|
    
    
    
    
    #### Rule myRule_1_pmetrule (Previously Met - Prev)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old.OwnerId| Equal To|00537000001tWbhAAE|
    |2|myVariable_old.Status| Equal To|Response Received|
    
    
    
    
    ### myRule_11_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Case|
    |Label|Back to Tier 1|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Case]|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |OwnerId|00GHo000002SIjQ|
    
    
    
    
    ### myRule_14_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Case|
    |Label|BI Queue|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Case]|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |OwnerId|00G37000000ztuW|
    
    
    
    
    ### myRule_16_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Case|
    |Label|Back to Tier 1|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Case]|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |OwnerId|00GHo000002SIjQ|
    
    
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Case|
    |Label|Back to Tier 1|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Case]|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |OwnerId|00GHo000002SIjQ|
    
    
    
    
    ### myRule_3_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Case|
    |Label|Back to Tier 1|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Case]|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |OwnerId|00GHo000002SIjQ|
    
    
    
    
    ### myRule_6_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Case|
    |Label|To Tier 1|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Case]|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |OwnerId|00GHo000002SIjQ|
    
    
    
    
    ### myRule_8_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Case|
    |Label|Back to Tier 1|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Case]|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |OwnerId|00GHo000002SIjQ|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

