# Support_Child_Case_Category_Wipe history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Support_Child_Case_Category_Wipe-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Case</b></br>Type: <b>On Create Only</b>"]):::startClass
    click START "#general-information" "4104153277"
    
    START --> myDecision
    myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
    click myDecision "#mydecision" "2411482614"
    
    myDecision2{"🔀 <em></em><br/>myDecision2"}:::decisions
    click myDecision2 "#mydecision2" "2747368800"
    
    myDecision4{"🔀 <em></em><br/>myDecision4"}:::decisions
    click myDecision4 "#mydecision4" "144112648"
    
    myDecision6{"🔀 <em></em><br/>myDecision6"}:::decisions
    click myDecision6 "#mydecision6" "4209975361"
    
    myDecision8{"🔀 <em></em><br/>myDecision8"}:::decisions
    click myDecision8 "#mydecision8" "3088701631"
    
    myRule_1_A1[("🛠️ <em></em><br/>Category Field")]:::recordUpdates
    click myRule_1_A1 "#myrule_1_a1" "4290896617"
    
    myRule_1_A2[("🛠️ <em></em><br/>Sub-Category Field")]:::recordUpdates
    click myRule_1_A2 "#myrule_1_a2" "3823011141"
    
    myRule_1_A3[("🛠️ <em></em><br/>Team Member Field")]:::recordUpdates
    click myRule_1_A3 "#myrule_1_a3" "2899018866"
    
    myRule_3_A1[("🛠️ <em></em><br/>AncilBill Category")]:::recordUpdates
    click myRule_3_A1 "#myrule_3_a1" "2161954176"
    
    myRule_5_A1[("🛠️ <em></em><br/>Category & Team Member")]:::recordUpdates
    click myRule_5_A1 "#myrule_5_a1" "2965961388"
    
    myRule_7_A1[("🛠️ <em></em><br/>Cat|SubCat")]:::recordUpdates
    click myRule_7_A1 "#myrule_7_a1" "2112542682"
    
    myRule_9_A1[("🛠️ <em></em><br/>Cat")]:::recordUpdates
    click myRule_9_A1 "#myrule_9_a1" "381126334"
    
    myDecision --> |"Child Case Created"| myRule_1_A1
    myDecision --> |"default"| myDecision2
    myDecision2 --> |"Add Back AncilBill"| myRule_3_A1
    myDecision2 --> |"default"| myDecision4
    myDecision4 --> |"Add Back Adjustment"| myRule_5_A1
    myDecision4 --> |"default"| myDecision6
    myDecision6 --> |"Add Back ReAm"| myRule_7_A1
    myDecision6 --> |"default"| myDecision8
    myDecision8 --> |"Add Back Reissue"| myRule_9_A1
    myDecision8 --> |"default"| END_myDecision8
    myRule_1_A1 --> myRule_1_A2
    myRule_1_A2 --> myRule_1_A3
    myRule_1_A3 --> myDecision2
    myRule_3_A1 --> END_myRule_3_A1
    myRule_5_A1 --> END_myRule_5_A1
    myRule_7_A1 --> END_myRule_7_A1
    myRule_9_A1 --> END_myRule_9_A1
    END_myDecision8(( END )):::endClass
    END_myRule_3_A1(( END )):::endClass
    END_myRule_5_A1(( END )):::endClass
    END_myRule_7_A1(( END )):::endClass
    END_myRule_9_A1(( END )):::endClass
    
    
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
    |Label|Support | Child Case Category and Team Member Wipe|
    |Status|Active|
    |Description|Blanks out the category and sub-category fields and team member after child case creation.|
    |Interview Label|Support_Child_Case_Category_Wipe-25_InterviewLabel|
    |Start Element Reference|[myDecision](#mydecision)|
    | Object Type (PM)|Case|
    | Object Variable (PM)|myVariable_current|
    | Old Object Variable (PM)|myVariable_old|
    | Trigger Type (PM)|onCreateOnly|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |myVariable_current|SObject|⬜|✅|✅|Case|<!-- -->|
    |myVariable_old|SObject|⬜|✅|⬜|Case|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### myDecision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision](#mydecision)|
    |Default Connector|[myDecision2](#mydecision2)|
    |Default Connector Label|default|
    |Index (PM)|numberValue: 0<br/>|
    
    
    #### Rule myRule_1 (Child Case Created)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_A1](#myrule_1_a1)|
    |Condition Logic|1 AND NOT(2 OR 3 OR 4 OR 5 OR 6 OR 7 OR 8 OR 9)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.ParentId| Is Null|⬜|
    |2|myVariable_current.JIRA_Priority__c| Is Null|⬜|
    |3|myVariable_current.Category__c| Equal To|Ancillary Billing|
    |4|myVariable_current.Subject| Equal To|Address Look-Up|
    |5|myVariable_current.Subject| Equal To|Amendment - Force-Out Threshold Increase|
    |6|myVariable_current.Subject| Equal To|Certified Mailings|
    |7|myVariable_current.Subject| Equal To|Process Fees for Force Out Distribution Work|
    |8|myVariable_current.Subject| Equal To|Process $195 Plan Amendment Fee|
    |9|myVariable_current.Subject| Equal To|Locate Ex Employees for Force Out|
    
    
    
    
    ### myDecision2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision2](#mydecision2)|
    |Default Connector|[myDecision4](#mydecision4)|
    |Default Connector Label|default|
    |Index (PM)|1|
    
    
    #### Rule myRule_3 (Add Back AncilBill)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_3_A1](#myrule_3_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Ancillary_Billing_Amount__c| Greater Than|numberValue: 0<br/>|
    
    
    
    
    ### myDecision4
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision4](#mydecision4)|
    |Default Connector|[myDecision6](#mydecision6)|
    |Default Connector Label|default|
    |Index (PM)|2|
    
    
    #### Rule myRule_5 (Add Back Adjustment)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_5_A1](#myrule_5_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Adjustment_Type__c| Is Null|⬜|
    
    
    
    
    ### myDecision6
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision6](#mydecision6)|
    |Default Connector|[myDecision8](#mydecision8)|
    |Default Connector Label|default|
    |Index (PM)|3|
    
    
    #### Rule myRule_7 (Add Back ReAm)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_7_A1](#myrule_7_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.ReAm_Loan_type__c| Is Null|⬜|
    
    
    
    
    ### myDecision8
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision8](#mydecision8)|
    |Default Connector Label|default|
    |Index (PM)|4|
    
    
    #### Rule myRule_9 (Add Back Reissue)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_9_A1](#myrule_9_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Reissue_Method__c| Is Null|⬜|
    
    
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Case|
    |Label|Category Field|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Case]|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myRule_1_A2](#myrule_1_a2)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Category__c|<!-- -->|
    
    
    
    
    ### myRule_1_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Case|
    |Label|Sub-Category Field|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Case]|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myRule_1_A3](#myrule_1_a3)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Sub_Category__c|<!-- -->|
    
    
    
    
    ### myRule_1_A3
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Case|
    |Label|Team Member Field|
    |Evaluation Type (PM)|criteria|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Case]|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myDecision2](#mydecision2)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    |2|CreatedDate| Equal To|myVariable_current.LastModifiedDate|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Team_Member__c|<!-- -->|
    
    
    
    
    ### myRule_3_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Case|
    |Label|AncilBill Category|
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
    |Category__c|Ancillary Billing|
    
    
    
    
    ### myRule_5_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Case|
    |Label|Category & Team Member|
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
    |Category__c|Adjustments|
    |Team_Member__c|Jessica Orcutt|
    
    
    
    
    ### myRule_7_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Case|
    |Label|Cat|SubCat|
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
    |Category__c|Loans|
    |Sub_Category__c|Reamortization Request|
    
    
    
    
    ### myRule_9_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Case|
    |Label|Cat|
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
    |Category__c|Reissues|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

