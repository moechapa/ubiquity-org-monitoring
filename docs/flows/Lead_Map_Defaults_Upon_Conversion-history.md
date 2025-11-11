# Lead_Map_Defaults_Upon_Conversion history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Lead_Map_Defaults_Upon_Conversion-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Lead</b></br>Type: <b>On All Changes</b>"]):::startClass
    click START "#general-information" "1162974082"
    
    START --> myDecision
    myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
    click myDecision "#mydecision" "3313851236"
    
    myDecision2{"🔀 <em></em><br/>myDecision2"}:::decisions
    click myDecision2 "#mydecision2" "2667511253"
    
    myDecision4{"🔀 <em></em><br/>myDecision4"}:::decisions
    click myDecision4 "#mydecision4" "1560356391"
    
    myDecision6{"🔀 <em></em><br/>myDecision6"}:::decisions
    click myDecision6 "#mydecision6" "3167131003"
    
    myRule_3_pmetdec{"🔀 <em></em><br/>Previously Met Decision"}:::decisions
    click myRule_3_pmetdec "#myrule_3_pmetdec" "2518558205"
    
    myRule_5_pmetdec{"🔀 <em></em><br/>Previously Met Decision"}:::decisions
    click myRule_5_pmetdec "#myrule_5_pmetdec" "3062791513"
    
    myRule_7_pmetdec{"🔀 <em></em><br/>Previously Met Decision"}:::decisions
    click myRule_7_pmetdec "#myrule_7_pmetdec" "2874477461"
    
    myRule_1_A1[("🛠️ <em></em><br/>Update Account")]:::recordUpdates
    click myRule_1_A1 "#myrule_1_a1" "1271738638"
    
    myRule_3_A1[("🛠️ <em></em><br/>Update Contact")]:::recordUpdates
    click myRule_3_A1 "#myrule_3_a1" "795002866"
    
    myRule_3_A2[("🛠️ <em></em><br/>Update Account")]:::recordUpdates
    click myRule_3_A2 "#myrule_3_a2" "375631850"
    
    myRule_5_A1[("🛠️ <em></em><br/>Update Contact")]:::recordUpdates
    click myRule_5_A1 "#myrule_5_a1" "421602575"
    
    myRule_5_A2[("🛠️ <em></em><br/>Update Account")]:::recordUpdates
    click myRule_5_A2 "#myrule_5_a2" "3411144783"
    
    myRule_7_A1[("🛠️ <em></em><br/>Update Opp")]:::recordUpdates
    click myRule_7_A1 "#myrule_7_a1" "958526197"
    
    myDecision --> |"Connected Partner Lead Converted"| myRule_1_A1
    myDecision --> |"default"| myDecision2
    myDecision2 --> |"Advisor Lead Converted"| myRule_3_pmetdec
    myDecision2 --> |"default"| myDecision4
    myDecision4 --> |"TPA Lead Converted"| myRule_5_pmetdec
    myDecision4 --> |"default"| myDecision6
    myDecision6 --> |"Single(k) Schwab Lead Converted"| myRule_7_pmetdec
    myDecision6 --> |"default"| END_myDecision6
    myRule_3_pmetdec --> |"Previously Met - Null"| myRule_3_A1
    myRule_3_pmetdec --> |"Previously Met - Prev"| myDecision4
    myRule_3_pmetdec --> |"Not Previously Met"| myRule_3_A1
    myRule_5_pmetdec --> |"Previously Met - Null"| myRule_5_A1
    myRule_5_pmetdec --> |"Previously Met - Prev"| myDecision6
    myRule_5_pmetdec --> |"Not Previously Met"| myRule_5_A1
    myRule_7_pmetdec --> |"Previously Met - Null"| myRule_7_A1
    myRule_7_pmetdec --> |"Not Previously Met"| myRule_7_A1
    myRule_1_A1 --> myDecision2
    myRule_3_A1 --> myRule_3_A2
    myRule_3_A2 --> myDecision4
    myRule_5_A1 --> myRule_5_A2
    myRule_5_A2 --> myDecision6
    myRule_7_A1 --> END_myRule_7_A1
    END_myDecision6(( END )):::endClass
    END_myRule_7_A1(( END )):::endClass
    
    
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
    |Label|Lead | Map Defaults Upon Conversion|
    |Status|Obsolete|
    |Description|Map Account and Contact Field Defaults Based on conditional Lead data|
    |Interview Label|Lead_Map_Defaults_Upon_Conversion-9_InterviewLabel|
    |Start Element Reference|[myDecision](#mydecision)|
    | Object Type (PM)|Lead|
    | Object Variable (PM)|myVariable_current|
    | Old Object Variable (PM)|myVariable_old|
    | Trigger Type (PM)|onAllChanges|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |myVariable_current|SObject|⬜|✅|✅|Lead|<!-- -->|
    |myVariable_old|SObject|⬜|✅|⬜|Lead|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### myDecision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision](#mydecision)|
    |Default Connector|[myDecision2](#mydecision2)|
    |Default Connector Label|default|
    |Index (PM)|numberValue: 0<br/>|
    
    
    #### Rule myRule_1 (Connected Partner Lead Converted)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_A1](#myrule_1_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Connected_Partner_Rep__c| Is Null|⬜|
    |2|myVariable_current.IsConverted| Equal To|✅|
    
    
    
    
    ### myDecision2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision2](#mydecision2)|
    |Default Connector|[myDecision4](#mydecision4)|
    |Default Connector Label|default|
    |Index (PM)|1|
    
    
    #### Rule myRule_3 (Advisor Lead Converted)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_3_pmetdec](#myrule_3_pmetdec)|
    |Condition Logic|1 AND 2 AND 3 AND 4 AND (5 OR 6)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.IsConverted| Equal To|✅|
    |2|myVariable_current.ConvertedContactId| Is Null|⬜|
    |3|myVariable_current.ConvertedAccountId| Is Null|⬜|
    |4|myVariable_current.Lead_Type__c| Equal To|Advisor|
    |5|myVariable_current.RecordTypeId| Equal To|012000000000n0fAAA|
    |6|myVariable_current.Business_Unit__c| Equal To|Simply Retirement|
    
    
    
    
    ### myDecision4
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision4](#mydecision4)|
    |Default Connector|[myDecision6](#mydecision6)|
    |Default Connector Label|default|
    |Index (PM)|2|
    
    
    #### Rule myRule_5 (TPA Lead Converted)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_5_pmetdec](#myrule_5_pmetdec)|
    |Condition Logic|1 AND 2 AND 3 AND 4 AND (5 OR 6)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.IsConverted| Equal To|✅|
    |2|myVariable_current.ConvertedContactId| Is Null|⬜|
    |3|myVariable_current.ConvertedAccountId| Is Null|⬜|
    |4|myVariable_current.Lead_Type__c| Equal To|TPA|
    |5|myVariable_current.RecordTypeId| Equal To|012000000000n0fAAA|
    |6|myVariable_current.Business_Unit__c| Equal To|Simply Retirement|
    
    
    
    
    ### myDecision6
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision6](#mydecision6)|
    |Default Connector Label|default|
    |Index (PM)|3|
    
    
    #### Rule myRule_7 (Single(k) Schwab Lead Converted)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_7_pmetdec](#myrule_7_pmetdec)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.IsConverted| Equal To|✅|
    |2|myVariable_current.LeadSourceDetail__c| Contains|Schwab|
    |3|myVariable_current.Product_Type__c| Equal To|Single(k)|
    
    
    
    
    ### myRule_3_pmetdec
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Previously Met Decision|
    |Default Connector|[myRule_3_A1](#myrule_3_a1)|
    |Default Connector Label|Not Previously Met|
    
    
    #### Rule myRule_3_pmetnullrule (Previously Met - Null)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_3_A1](#myrule_3_a1)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|✅|
    
    
    
    
    #### Rule myRule_3_pmetrule (Previously Met - Prev)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myDecision4](#mydecision4)|
    |Condition Logic|1 AND 2 AND 3 AND 4 AND (5 OR 6)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old.IsConverted| Equal To|✅|
    |2|myVariable_old.ConvertedContactId| Is Null|⬜|
    |3|myVariable_old.ConvertedAccountId| Is Null|⬜|
    |4|myVariable_old.Lead_Type__c| Equal To|Advisor|
    |5|myVariable_old.RecordTypeId| Equal To|012000000000n0fAAA|
    |6|myVariable_old.Business_Unit__c| Equal To|Simply Retirement|
    
    
    
    
    ### myRule_5_pmetdec
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Previously Met Decision|
    |Default Connector|[myRule_5_A1](#myrule_5_a1)|
    |Default Connector Label|Not Previously Met|
    
    
    #### Rule myRule_5_pmetnullrule (Previously Met - Null)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_5_A1](#myrule_5_a1)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|✅|
    
    
    
    
    #### Rule myRule_5_pmetrule (Previously Met - Prev)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myDecision6](#mydecision6)|
    |Condition Logic|1 AND 2 AND 3 AND 4 AND (5 OR 6)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old.IsConverted| Equal To|✅|
    |2|myVariable_old.ConvertedContactId| Is Null|⬜|
    |3|myVariable_old.ConvertedAccountId| Is Null|⬜|
    |4|myVariable_old.Lead_Type__c| Equal To|TPA|
    |5|myVariable_old.RecordTypeId| Equal To|012000000000n0fAAA|
    |6|myVariable_old.Business_Unit__c| Equal To|Simply Retirement|
    
    
    
    
    ### myRule_7_pmetdec
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Previously Met Decision|
    |Default Connector|[myRule_7_A1](#myrule_7_a1)|
    |Default Connector Label|Not Previously Met|
    
    
    #### Rule myRule_7_pmetnullrule (Previously Met - Null)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_7_A1](#myrule_7_a1)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|✅|
    
    
    
    
    #### Rule myRule_7_pmetrule (Previously Met - Prev)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old.IsConverted| Equal To|✅|
    |2|myVariable_old.LeadSourceDetail__c| Contains|Schwab|
    |3|myVariable_old.Product_Type__c| Equal To|Single(k)|
    
    
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Account|
    |Label|Update Account|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Lead].Converted Account ID|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myDecision2](#mydecision2)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.ConvertedAccountId|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Connected_Partner_Rep__c|myVariable_current.Connected_Partner_Rep__c|
    
    
    
    
    ### myRule_3_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Contact|
    |Label|Update Contact|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Lead].Converted Contact ID|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myRule_3_A2](#myrule_3_a2)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.ConvertedContactId|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |NPN_Number__c|myVariable_current.Advisor_NPN__c|
    |Partner_Client_Status__c|No Clients|
    |Partner_Status__c|Prospect|
    |RecordTypeId|0121G000000bptXQAQ|
    |Role__c|Advisor|
    
    
    
    
    ### myRule_3_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Account|
    |Label|Update Account|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Lead].Converted Account ID|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myDecision4](#mydecision4)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.ConvertedAccountId|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Channel__c|Advisors|
    |Partner_Client_Status__c|No Clients|
    |Partner_Status__c|Prospect|
    |RecordTypeId|01200000000CecZAAS|
    
    
    
    
    ### myRule_5_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Contact|
    |Label|Update Contact|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Lead].Converted Contact ID|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myRule_5_A2](#myrule_5_a2)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.ConvertedContactId|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Partner_Client_Status__c|No Clients|
    |Partner_Status__c|Prospect|
    |RecordTypeId|0121G000000bptXQAQ|
    |Role__c|TPA - Sales|
    
    
    
    
    ### myRule_5_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Account|
    |Label|Update Account|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Lead].Converted Account ID|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myDecision6](#mydecision6)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.ConvertedAccountId|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Channel__c|TPA|
    |Partner_Client_Status__c|No Clients|
    |Partner_Status__c|Prospect|
    |RecordTypeId|01200000000CecZAAS|
    
    
    
    
    ### myRule_7_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Opportunity|
    |Label|Update Opp|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Lead].Converted Opportunity ID|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.ConvertedOpportunityId|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Custodian__c|Schwab & Co., Inc.|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

