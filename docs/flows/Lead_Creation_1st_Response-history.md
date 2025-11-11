# Lead_Creation_1st_Response history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Lead_Creation_1st_Response-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Lead</b></br>Type: <b>On All Changes</b>"]):::startClass
    click START "#general-information" "3371119244"
    
    START --> isChangedDecision2_myRule_1_Status
    myRule_1_A3("📧 <em></em><br/>Send Email"):::actionCalls
    click myRule_1_A3 "#myrule_1_a3" "1075052294"
    
    myRule_5_A3("📧 <em></em><br/>Email Lead"):::actionCalls
    click myRule_5_A3 "#myrule_5_a3" "1016026128"
    
    isChangedDecision2_myRule_1_Status{"🔀 <em></em><br/>isChangedDecision2_myRule_1_Status"}:::decisions
    click isChangedDecision2_myRule_1_Status "#ischangeddecision2_myrule_1_status" "938129494"
    
    isChangedDecision6_myRule_5_Status{"🔀 <em></em><br/>isChangedDecision6_myRule_5_Status"}:::decisions
    click isChangedDecision6_myRule_5_Status "#ischangeddecision6_myrule_5_status" "3582616435"
    
    myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
    click myDecision "#mydecision" "3580147916"
    
    myDecision4{"🔀 <em></em><br/>myDecision4"}:::decisions
    click myDecision4 "#mydecision4" "3786426436"
    
    myRule_1_A2[("➕ <em></em><br/>Auto Email Task")]:::recordCreates
    click myRule_1_A2 "#myrule_1_a2" "3061702620"
    
    myRule_5_A2[("➕ <em></em><br/>Auto Email Task")]:::recordCreates
    click myRule_5_A2 "#myrule_5_a2" "409497442"
    
    myRule_1_A1[("🛠️ <em></em><br/>Update Lead")]:::recordUpdates
    click myRule_1_A1 "#myrule_1_a1" "2076693279"
    
    myRule_5_A1[("🛠️ <em></em><br/>Update Lead")]:::recordUpdates
    click myRule_5_A1 "#myrule_5_a1" "669996412"
    
    myRule_1_A3 --> END_myRule_1_A3
    myRule_5_A3 --> END_myRule_5_A3
    isChangedDecision2_myRule_1_Status --> |"isChangedRule_2_myRule_1_Status"| isChangedDecision6_myRule_5_Status
    isChangedDecision2_myRule_1_Status --> |"default"| isChangedDecision6_myRule_5_Status
    isChangedDecision6_myRule_5_Status --> |"isChangedRule_6_myRule_5_Status"| myDecision
    isChangedDecision6_myRule_5_Status --> |"default"| myDecision
    myDecision --> |"Single(k) Lead Assigned"| myRule_1_A1
    myDecision --> |"default"| myDecision4
    myDecision4 --> |"Other Lead Assigned"| myRule_5_A1
    myDecision4 --> |"default"| END_myDecision4
    myRule_1_A2 --> myRule_1_A3
    myRule_5_A2 --> myRule_5_A3
    myRule_1_A1 --> myRule_1_A2
    myRule_5_A1 --> myRule_5_A2
    END_myRule_1_A3(( END )):::endClass
    END_myRule_5_A3(( END )):::endClass
    END_myDecision4(( END )):::endClass
    
    
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
    |Label|Lead Creation 1st Response|
    |Status|Obsolete|
    |Description|Used to auto reply to leads when created - Excluding SingleK which is through Pardot/Marketing|
    |Interview Label|Lead_Creation_1st_Response-19_InterviewLabel|
    |Start Element Reference|[isChangedDecision2_myRule_1_Status](#ischangeddecision2_myrule_1_status)|
    | Object Type (PM)|Lead|
    | Object Variable (PM)|myVariable_current|
    | Old Object Variable (PM)|myVariable_old|
    | Trigger Type (PM)|onAllChanges|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |myVariable_current|SObject|⬜|✅|✅|Lead|<!-- -->|
    |myVariable_old|SObject|⬜|✅|⬜|Lead|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |formula_3_myRule_1_A2_5196173093|Date|TODAY()|<!-- -->|
    |formula_7_myRule_5_A2_2679506041|Date|TODAY()|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### myRule_1_A3
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send Email|
    |Action Type|Email Alert|
    |Action Name|Lead.Single_k_Lead_1st_Email|
    |Name Segment|Lead.Single_k_Lead_1st_Email|
    |Email Alert Selection (PM)|Single_k_Lead_1st_Email|
    | SObject Row Id (input)|myVariable_current.Id|
    
    
    ### myRule_5_A3
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Email Lead|
    |Action Type|Email Alert|
    |Action Name|Lead.X401k_Lead_1st_Email|
    |Name Segment|Lead.X401k_Lead_1st_Email|
    |Email Alert Selection (PM)|X401k_Lead_1st_Email|
    | SObject Row Id (input)|myVariable_current.Id|
    
    
    ### isChangedDecision2_myRule_1_Status
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision2_myRule_1_Status](#ischangeddecision2_myrule_1_status)|
    |Default Connector|[isChangedDecision6_myRule_5_Status](#ischangeddecision6_myrule_5_status)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_2_myRule_1_Status (isChangedRule_2_myRule_1_Status)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision6_myRule_5_Status](#ischangeddecision6_myrule_5_status)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Status| Not Equal To|myVariable_current.Status|
    
    
    
    
    ### isChangedDecision6_myRule_5_Status
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision6_myRule_5_Status](#ischangeddecision6_myrule_5_status)|
    |Default Connector|[myDecision](#mydecision)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_6_myRule_5_Status (isChangedRule_6_myRule_5_Status)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myDecision](#mydecision)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Status| Not Equal To|myVariable_current.Status|
    
    
    
    
    ### myDecision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision](#mydecision)|
    |Default Connector|[myDecision4](#mydecision4)|
    |Default Connector Label|default|
    |Index (PM)|numberValue: 0<br/>|
    
    
    #### Rule myRule_1 (Single(k) Lead Assigned)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_A1](#myrule_1_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|isChangedRule_2_myRule_1_Status| Equal To|✅|
    |2|myVariable_current.Status| Equal To|Assigned|
    |3|myVariable_current.n2de__Time_to_action_mins__c| Is Null|✅|
    |4|myVariable_current.Business_Unit__c| Equal To|Ubiquity|
    |5|myVariable_current.Product_Type__c| Equal To|Single(k)|
    |6|myVariable_current.LeadSourceDetail__c| Not Equal To|Recommendation Engine|
    
    
    
    
    ### myDecision4
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision4](#mydecision4)|
    |Default Connector Label|default|
    |Index (PM)|1|
    
    
    #### Rule myRule_5 (Other Lead Assigned)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_5_A1](#myrule_5_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|isChangedRule_6_myRule_5_Status| Equal To|✅|
    |2|myVariable_current.Status| Equal To|Assigned|
    |3|myVariable_current.Business_Unit__c| Equal To|Ubiquity|
    |4|myVariable_current.Product_Type__c| Not Equal To|Single(k)|
    |5|myVariable_current.LeadSourceDetail__c| Not Equal To|Recommendation Engine|
    
    
    
    
    ### myRule_1_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Task|
    |Label|Auto Email Task|
    |Connector|[myRule_1_A3](#myrule_1_a3)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |ActivityDate|formula_3_myRule_1_A2_5196173093|
    |Activity_Type__c|Email|
    |Description|Auto Email sent|
    |OwnerId|myVariable_current.OwnerId|
    |Priority|Normal|
    |Status|Completed|
    |Subject|Next Steps: Ubiquity Single(k) Retirement Plan|
    |Type|Email|
    |WhoId|myVariable_current.Id|
    
    
    
    
    ### myRule_5_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Task|
    |Label|Auto Email Task|
    |Connector|[myRule_5_A3](#myrule_5_a3)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |ActivityDate|formula_7_myRule_5_A2_2679506041|
    |Activity_Type__c|Email|
    |Description|Auto email sent|
    |OwnerId|myVariable_current.OwnerId|
    |Priority|Normal|
    |Status|Completed|
    |Subject|Next Steps: Ubiquity 401(k) Retirement Plan|
    |Type|Email|
    |WhoId|myVariable_current.Id|
    
    
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Lead|
    |Label|Update Lead|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Lead]|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myRule_1_A2](#myrule_1_a2)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Status|Working|
    |n2de__Time_to_action_mins__c|1|
    
    
    
    
    ### myRule_5_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Lead|
    |Label|Update Lead|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Lead]|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myRule_5_A2](#myrule_5_a2)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Status|Working|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

