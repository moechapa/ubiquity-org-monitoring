# Sales_Simply_Default_Fields history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Sales_Simply_Default_Fields-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Opportunity</b></br>Type: <b>On All Changes</b>"]):::startClass
    click START "#general-information" "3854980624"
    
    START --> myDecision
    myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
    click myDecision "#mydecision" "1006527339"
    
    myDecision2{"🔀 <em></em><br/>myDecision2"}:::decisions
    click myDecision2 "#mydecision2" "3471574163"
    
    myDecision4{"🔀 <em></em><br/>myDecision4"}:::decisions
    click myDecision4 "#mydecision4" "3676137930"
    
    myRule_1_pmetdec{"🔀 <em></em><br/>Previously Met Decision"}:::decisions
    click myRule_1_pmetdec "#myrule_1_pmetdec" "1991038471"
    
    myRule_3_pmetdec{"🔀 <em></em><br/>Previously Met Decision"}:::decisions
    click myRule_3_pmetdec "#myrule_3_pmetdec" "1613550218"
    
    myRule_5_pmetdec{"🔀 <em></em><br/>Previously Met Decision"}:::decisions
    click myRule_5_pmetdec "#myrule_5_pmetdec" "3049434709"
    
    myRule_1_A1[("🛠️ <em></em><br/>Add Associations")]:::recordUpdates
    click myRule_1_A1 "#myrule_1_a1" "40264498"
    
    myRule_3_A1[("🛠️ <em></em><br/>Populate Defaults")]:::recordUpdates
    click myRule_3_A1 "#myrule_3_a1" "1135174229"
    
    myRule_5_A1[("🛠️ <em></em><br/>Populate Defaults")]:::recordUpdates
    click myRule_5_A1 "#myrule_5_a1" "3492913747"
    
    myDecision --> |"Lead Source Detail = PSIvet"| myRule_1_pmetdec
    myDecision --> |"default"| myDecision2
    myDecision2 --> |"Service Option = Simply"| myRule_3_pmetdec
    myDecision2 --> |"default"| myDecision4
    myDecision4 --> |"Service option = Sallus"| myRule_5_pmetdec
    myDecision4 --> |"default"| END_myDecision4
    myRule_1_pmetdec --> |"Previously Met - Null"| myRule_1_A1
    myRule_1_pmetdec --> |"Previously Met - Prev"| myDecision2
    myRule_1_pmetdec --> |"Not Previously Met"| myRule_1_A1
    myRule_3_pmetdec --> |"Previously Met - Null"| myRule_3_A1
    myRule_3_pmetdec --> |"Not Previously Met"| myRule_3_A1
    myRule_5_pmetdec --> |"Previously Met - Null"| myRule_5_A1
    myRule_5_pmetdec --> |"Not Previously Met"| myRule_5_A1
    myRule_1_A1 --> myDecision2
    myRule_3_A1 --> END_myRule_3_A1
    myRule_5_A1 --> END_myRule_5_A1
    END_myDecision4(( END )):::endClass
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
    |Process Type| Workflow|
    |Label|Sales | Simply Default Fields|
    |Status|Obsolete|
    |Description|Default Fields on Simply and Sallus Opportunities|
    |Interview Label|Sales_Simply_Default_Fields-11_InterviewLabel|
    |Start Element Reference|[myDecision](#mydecision)|
    | Object Type (PM)|Opportunity|
    | Object Variable (PM)|myVariable_current|
    | Old Object Variable (PM)|myVariable_old|
    | Trigger Type (PM)|onAllChanges|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |myVariable_current|SObject|⬜|✅|✅|Opportunity|<!-- -->|
    |myVariable_old|SObject|⬜|✅|⬜|Opportunity|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### myDecision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision](#mydecision)|
    |Default Connector|[myDecision2](#mydecision2)|
    |Default Connector Label|default|
    |Index (PM)|numberValue: 0<br/>|
    
    
    #### Rule myRule_1 (Lead Source Detail = PSIvet)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_pmetdec](#myrule_1_pmetdec)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.LeadSourceDetail__c| Equal To|PSIvet|
    |2|myVariable_current.Service_Option__c| Equal To|Simply Retirement|
    |3|myVariable_current.Associated_Contact__c| Is Null|✅|
    
    
    
    
    ### myDecision2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision2](#mydecision2)|
    |Default Connector|[myDecision4](#mydecision4)|
    |Default Connector Label|default|
    |Index (PM)|1|
    
    
    #### Rule myRule_3 (Service Option = Simply)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_3_pmetdec](#myrule_3_pmetdec)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Service_Option__c| Contains|Simply Retirement|
    
    
    
    
    ### myDecision4
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision4](#mydecision4)|
    |Default Connector Label|default|
    |Index (PM)|2|
    
    
    #### Rule myRule_5 (Service option = Sallus)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_5_pmetdec](#myrule_5_pmetdec)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Service_Option__c| Equal To|Starter|
    |2|myVariable_current.Service_Option__c| Equal To|Builder|
    |3|myVariable_current.Service_Option__c| Equal To|Partner|
    |4|myVariable_current.Service_Option__c| Equal To|Franchise|
    
    
    
    
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
    |Connector|[myDecision2](#mydecision2)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old.LeadSourceDetail__c| Equal To|PSIvet|
    |2|myVariable_old.Service_Option__c| Equal To|Simply Retirement|
    |3|myVariable_old.Associated_Contact__c| Is Null|✅|
    
    
    
    
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
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old.Service_Option__c| Contains|Simply Retirement|
    
    
    
    
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
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old.Service_Option__c| Equal To|Starter|
    |2|myVariable_old.Service_Option__c| Equal To|Builder|
    |3|myVariable_old.Service_Option__c| Equal To|Partner|
    |4|myVariable_old.Service_Option__c| Equal To|Franchise|
    
    
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Opportunity|
    |Label|Add Associations|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Opportunity]|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myDecision2](#mydecision2)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Associated_Contact__c|0031G00001BRfkT|
    |Associated_Partner__c|00100000002oXaR|
    
    
    
    
    ### myRule_3_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Opportunity|
    |Label|Populate Defaults|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Opportunity]|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Advisor_Fees_Paid_from_ESA__c|No|
    |AutoEnrollment__c|EACA|
    |Brokerage_Accounts_PCRA__c|No|
    |Business_Unit__c|Simply Retirement|
    |Custodian__c|MG Trust Company, LLC.|
    |Deferral_Change_Frequency__c|Per Pay Period|
    |Discretionary_Match_Vesting_Schedule__c|Immediate|
    |Eligibility_Age__c|21|
    |Hardships__c|No|
    |Loans__c|Yes|
    |Participant_Fees_Paid_from_ESA__c|No|
    |Plan_Entry_Frequency__c|Immediate|
    |Profit_Sharing_Match_Vesting_Schedule__c|Immediate|
    |Profit_Sharing__c|Pro Rata|
    |Roth__c|Yes|
    |Ubiquity_Admin_Fees_Paid_by_ESA__c|No|
    |X3_38__c|Wilshire|
    
    
    
    
    ### myRule_5_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Opportunity|
    |Label|Populate Defaults|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Opportunity]|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Auto_Enrollment_Deferral_Escalation_Rate__c|6% Auto-Escalate|
    |Brokerage_Accounts_PCRA__c|No|
    |Custodian__c|MG Trust Company, LLC.|
    |Eligibility_Age__c|21|
    |Hardships__c|Yes|
    |Plan_Entry_Frequency__c|Immediate|
    |Profit_Sharing__c|Pro Rata|
    |Roth__c|Yes|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

