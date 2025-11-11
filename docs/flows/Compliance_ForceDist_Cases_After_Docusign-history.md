# Compliance_ForceDist_Cases_After_Docusign history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Compliance_ForceDist_Cases_After_Docusign-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>dsfs__DocuSign_Status__c</b></br>Type: <b>On All Changes</b>"]):::startClass
    click START "#general-information" "1489115524"
    
    START --> myDecision
    myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
    click myDecision "#mydecision" "2022012606"
    
    myDecision3{"🔀 <em></em><br/>myDecision3"}:::decisions
    click myDecision3 "#mydecision3" "2208597579"
    
    myDecision6{"🔀 <em></em><br/>myDecision6"}:::decisions
    click myDecision6 "#mydecision6" "4078488212"
    
    myRule_1_pmetdec{"🔀 <em></em><br/>Previously Met Decision"}:::decisions
    click myRule_1_pmetdec "#myrule_1_pmetdec" "2061118664"
    
    myRule_4_pmetdec{"🔀 <em></em><br/>Previously Met Decision"}:::decisions
    click myRule_4_pmetdec "#myrule_4_pmetdec" "2278625859"
    
    myRule_7_pmetdec{"🔀 <em></em><br/>Previously Met Decision"}:::decisions
    click myRule_7_pmetdec "#myrule_7_pmetdec" "1718372232"
    
    myRule_1_A1[("➕ <em></em><br/>Case to Locate ExEmployee(s)")]:::recordCreates
    click myRule_1_A1 "#myrule_1_a1" "2449451851"
    
    myRule_7_A1[("➕ <em></em><br/>Case to Locate ExEmployees")]:::recordCreates
    click myRule_7_A1 "#myrule_7_a1" "2105400581"
    
    myRule_1_A2[("🛠️ <em></em><br/>FPS Date")]:::recordUpdates
    click myRule_1_A2 "#myrule_1_a2" "3217252904"
    
    myRule_4_A1[("🛠️ <em></em><br/>Parent Case Status")]:::recordUpdates
    click myRule_4_A1 "#myrule_4_a1" "1270434390"
    
    myRule_4_A2[("🛠️ <em></em><br/>FPS Date")]:::recordUpdates
    click myRule_4_A2 "#myrule_4_a2" "2991687476"
    
    myDecision --> |"Ubiquity Locates + FPS"| myRule_1_pmetdec
    myDecision --> |"default"| myDecision3
    myDecision3 --> |"Client Locates + FPS"| myRule_4_pmetdec
    myDecision3 --> |"default"| myDecision6
    myDecision6 --> |"Ubiquity Locates"| myRule_7_pmetdec
    myDecision6 --> |"default"| END_myDecision6
    myRule_1_pmetdec --> |"Previously Met - Null"| myRule_1_A1
    myRule_1_pmetdec --> |"Not Previously Met"| myRule_1_A1
    myRule_4_pmetdec --> |"Previously Met - Null"| myRule_4_A1
    myRule_4_pmetdec --> |"Not Previously Met"| myRule_4_A1
    myRule_7_pmetdec --> |"Previously Met - Null"| myRule_7_A1
    myRule_7_pmetdec --> |"Not Previously Met"| myRule_7_A1
    myRule_1_A1 --> myRule_1_A2
    myRule_7_A1 --> END_myRule_7_A1
    myRule_1_A2 --> END_myRule_1_A2
    myRule_4_A1 --> myRule_4_A2
    myRule_4_A2 --> END_myRule_4_A2
    END_myDecision6(( END )):::endClass
    END_myRule_7_A1(( END )):::endClass
    END_myRule_1_A2(( END )):::endClass
    END_myRule_4_A2(( END )):::endClass
    
    
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
    |Label|Compliance | ForceDist Cases After Docusign|
    |Status|Active|
    |Description|Creates appropriate cases when Force Out Distribution Docusigns are complete|
    |Interview Label|Compliance_ForceDist_Cases_After_Docusign-20_InterviewLabel|
    |Start Element Reference|[myDecision](#mydecision)|
    | Object Type (PM)|dsfs__DocuSign_Status__c|
    | Object Variable (PM)|myVariable_current|
    | Old Object Variable (PM)|myVariable_old|
    | Trigger Type (PM)|onAllChanges|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |myVariable_current|SObject|⬜|✅|✅|dsfs__DocuSign_Status__c|<!-- -->|
    |myVariable_old|SObject|⬜|✅|⬜|dsfs__DocuSign_Status__c|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |formula_2_myRule_1_A2_3060360435|Date|TODAY()|<!-- -->|
    |formula_5_myRule_4_A2_7968786380|Date|TODAY()|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### myDecision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision](#mydecision)|
    |Default Connector|[myDecision3](#mydecision3)|
    |Default Connector Label|default|
    |Index (PM)|numberValue: 0<br/>|
    
    
    #### Rule myRule_1 (Ubiquity Locates + FPS)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_pmetdec](#myrule_1_pmetdec)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.dsfs__Case__c| Is Null|⬜|
    |2|myVariable_current.dsfs__Case__r.Sub_Category__c| Equal To|Ubiquity Locates + FPS|
    |3|myVariable_current.dsfs__Envelope_Status__c| Equal To|Completed|
    
    
    
    
    ### myDecision3
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision3](#mydecision3)|
    |Default Connector|[myDecision6](#mydecision6)|
    |Default Connector Label|default|
    |Index (PM)|1|
    
    
    #### Rule myRule_4 (Client Locates + FPS)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_4_pmetdec](#myrule_4_pmetdec)|
    |Condition Logic|1 AND 2 AND 3 AND 4 AND (5 OR 6)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.dsfs__Case__c| Is Null|⬜|
    |2|myVariable_current.dsfs__Envelope_Status__c| Equal To|Completed|
    |3|myVariable_current.dsfs__Sender_Email__c| Equal To|distributions@myubiquity.com|
    |4|myVariable_current.dsfs__Case__r.Subject| Contains|Force Out Distribution|
    |5|myVariable_current.dsfs__Case__r.Sub_Category__c| Equal To|Client Locates + FPS|
    |6|myVariable_current.dsfs__Case__r.Sub_Category__c| Equal To|Client Locates|
    
    
    
    
    ### myDecision6
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision6](#mydecision6)|
    |Default Connector Label|default|
    |Index (PM)|2|
    
    
    #### Rule myRule_7 (Ubiquity Locates)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_7_pmetdec](#myrule_7_pmetdec)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.dsfs__Case__c| Is Null|⬜|
    |2|myVariable_current.dsfs__Envelope_Status__c| Equal To|Completed|
    |3|myVariable_current.dsfs__Case__r.Sub_Category__c| Equal To|Ubiquity Locates|
    
    
    
    
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
    |1|myVariable_old.dsfs__Case__c| Is Null|⬜|
    |2|myVariable_old.dsfs__Case__r.Sub_Category__c| Equal To|Ubiquity Locates + FPS|
    |3|myVariable_old.dsfs__Envelope_Status__c| Equal To|Completed|
    
    
    
    
    ### myRule_4_pmetdec
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Previously Met Decision|
    |Default Connector|[myRule_4_A1](#myrule_4_a1)|
    |Default Connector Label|Not Previously Met|
    
    
    #### Rule myRule_4_pmetnullrule (Previously Met - Null)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_4_A1](#myrule_4_a1)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|✅|
    
    
    
    
    #### Rule myRule_4_pmetrule (Previously Met - Prev)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|1 AND 2 AND 3 AND 4 AND (5 OR 6)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old.dsfs__Case__c| Is Null|⬜|
    |2|myVariable_old.dsfs__Envelope_Status__c| Equal To|Completed|
    |3|myVariable_old.dsfs__Sender_Email__c| Equal To|distributions@myubiquity.com|
    |4|myVariable_old.dsfs__Case__r.Subject| Contains|Force Out Distribution|
    |5|myVariable_old.dsfs__Case__r.Sub_Category__c| Equal To|Client Locates + FPS|
    |6|myVariable_old.dsfs__Case__r.Sub_Category__c| Equal To|Client Locates|
    
    
    
    
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
    |1|myVariable_old.dsfs__Case__c| Is Null|⬜|
    |2|myVariable_old.dsfs__Envelope_Status__c| Equal To|Completed|
    |3|myVariable_old.dsfs__Case__r.Sub_Category__c| Equal To|Ubiquity Locates|
    
    
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Case to Locate ExEmployee(s)|
    |Connector|[myRule_1_A2](#myrule_1_a2)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|myVariable_current.dsfs__Case__r.AccountId|
    |BusinessHoursId|01m37000000L07U|
    |Case_Type__c|Child Case|
    |Category__c|Address Look-Up|
    |ContactId|myVariable_current.dsfs__Case__r.ContactId|
    |Department__c|Reconciliations & Withdrawals|
    |Description|Review Parent Case for list of names to locate|
    |Inquiry_Source__c|Client|
    |Origin|Distributions Inbox|
    |OwnerId|005Ho00000AnvFJ|
    |ParentId|myVariable_current.dsfs__Case__r.Id|
    |Plan__c|myVariable_current.dsfs__Case__r.Plan__c|
    |Priority|Medium|
    |RecordTypeId|012Ho000000NtUeIAK|
    |Status|New|
    |Subject|Locate Ex Employees for Force Out|
    
    
    
    
    ### myRule_7_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Case to Locate ExEmployees|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|myVariable_current.dsfs__Case__r.AccountId|
    |BusinessHoursId|01m37000000L07U|
    |Case_Type__c|Child Case|
    |Category__c|Address Look-Up|
    |ContactId|myVariable_current.dsfs__Contact__c|
    |Department__c|Reconciliations & Withdrawals|
    |Description|Review Parent Case for ex employee addresses to look up|
    |Inquiry_Source__c|Client|
    |Origin|Distributions Inbox|
    |OwnerId|005Ho00000AnvFJ|
    |ParentId|myVariable_current.dsfs__Case__c|
    |Plan__c|myVariable_current.dsfs__Case__r.Plan__c|
    |Priority|Medium|
    |RecordTypeId|012Ho000000NtUeIAK|
    |Status|New|
    |Subject|Locate Ex Employees for Force Out|
    
    
    
    
    ### myRule_1_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Plan__c|
    |Label|FPS Date|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[dsfs__DocuSign_Status__c].Case.Plan|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.dsfs__Case__r.Plan__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |FPS_Agreement_Signed__c|formula_2_myRule_1_A2_3060360435|
    
    
    
    
    ### myRule_4_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Case|
    |Label|Parent Case Status|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[dsfs__DocuSign_Status__c].Case|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myRule_4_A2](#myrule_4_a2)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.dsfs__Case__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Status|Pending Client Notice Confirmation|
    
    
    
    
    ### myRule_4_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Plan__c|
    |Label|FPS Date|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[dsfs__DocuSign_Status__c].Case.Plan|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.dsfs__Case__r.Plan__c|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |FPS_Agreement_Signed__c|formula_5_myRule_4_A2_7968786380|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

