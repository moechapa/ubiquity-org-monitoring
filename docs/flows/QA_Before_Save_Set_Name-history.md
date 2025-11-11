# QA_Before_Save_Set_Name history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](QA_Before_Save_Set_Name-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record Before Save</b>"]):::startClass
    click START "#general-information" "2274446808"
    
    Add_Spacer[\"🟰 <em></em><br/>Add Spacer"/]:::assignments
    click Add_Spacer "#add_spacer" "2801759231"
    
    Add_Value[\"🟰 <em></em><br/>Add Value"/]:::assignments
    click Add_Value "#add_value" "2377571861"
    
    Assign_CE_Name_Parts[\"🟰 <em></em><br/>Assign CE Name Parts"/]:::assignments
    click Assign_CE_Name_Parts "#assign_ce_name_parts" "104054245"
    
    Assign_Default_Name_Parts[\"🟰 <em></em><br/>Assign Default Name Parts"/]:::assignments
    click Assign_Default_Name_Parts "#assign_default_name_parts" "1744899986"
    
    Assign_Name_Legacy_Logic[\"🟰 <em></em><br/>Assign Name Legacy Logic"/]:::assignments
    click Assign_Name_Legacy_Logic "#assign_name_legacy_logic" "654606957"
    
    Set_QA_Name[\"🟰 <em></em><br/>Set QA Name"/]:::assignments
    click Set_QA_Name "#set_qa_name" "3885608709"
    
    Check_if_part_blank{"🔀 <em></em><br/>Check if part blank"}:::decisions
    click Check_if_part_blank "#check_if_part_blank" "2443761596"
    
    Department_Specific_Check{"🔀 <em></em><br/>Department Specific Check"}:::decisions
    click Department_Specific_Check "#department_specific_check" "166195172"
    
    First_Check{"🔀 <em></em><br/>First Check"}:::decisions
    click First_Check "#first_check" "3269708679"
    
    Record_Type_Check{"🔀 <em></em><br/>Record Type Check"}:::decisions
    click Record_Type_Check "#record_type_check" "2297769917"
    
    NameLoop{{"🔁 <em></em><br/>NameLoop"}}:::loops
    click NameLoop "#nameloop" "2063611439"
    
    Add_Spacer --> Add_Value
    Add_Value --> NameLoop
    Assign_CE_Name_Parts --> NameLoop
    Assign_Default_Name_Parts --> NameLoop
    Assign_Name_Legacy_Logic --> Set_QA_Name
    Set_QA_Name --> END_Set_QA_Name
    Check_if_part_blank --> |"Has Value"| First_Check
    Check_if_part_blank --> |"Default Outcome"| NameLoop
    Department_Specific_Check --> |"Client Experience"| Assign_CE_Name_Parts
    Department_Specific_Check --> |"Default Outcome"| Assign_Default_Name_Parts
    First_Check --> |"First"| Add_Value
    First_Check --> |"Default Outcome"| Add_Spacer
    Record_Type_Check --> |"Dynamic"| Department_Specific_Check
    Record_Type_Check --> |"Old"| Assign_Name_Legacy_Logic
    NameLoop --> |"For Each"|Check_if_part_blank
    NameLoop ---> |"After Last"|Set_QA_Name
    START -->  Record_Type_Check
    END_Set_QA_Name(( END )):::endClass
    
    
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
    |Object|Quality_Assurance_QA__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record Before Save|
    |Record Trigger Type| Create And Update|
    |Label|QA | Before Save | Set Name|
    |Status|Active|
    |Description|Added CE naming convention.  Put things into a loop to account for different standards and when parts are missing.|
    |Environments|Default|
    |Interview Label|QA | Before Save | Set Name {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Record_Type_Check](#record_type_check)|
    |Next Node|[Record_Type_Check](#record_type_check)|
    
    
    #### Filters (logic: **or**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Name| Is Null|<!-- -->|
    |2|Date__c| Is Changed|✅|
    |3|Ubiquity_Employee__c| Is Changed|✅|
    |4|Case__c| Is Changed|✅|
    |5|Implementation__c| Is Changed|✅|
    |6|QA_Type_Dyn__c| Is Changed|✅|
    |7|Department_Dyn__c| Is Changed|✅|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |nameList|String|✅|⬜|⬜|<!-- -->|<!-- -->|
    |qaName|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |Spacer|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |ceAccountName|String|SUBSTITUTE(BLANKVALUE({!$Record.Case__r.Account.Name},{!$Record.Implementation__r.Account__r.Name})," ","")|Account name derived from case if possible, else from implementation, else blank.  Spaces removed|
    |ceDate|String|IF(MONTH({!$Record.Date__c})<10,"0","") + TEXT(MONTH({!$Record.Date__c})) +<br/>IF(DAY({!$Record.Date__c})<10,"0","") + TEXT(DAY({!$Record.Date__c})) +<br/>RIGHT(TEXT(YEAR({!$Record.Date__c})),2)|QA's date formatted as mmddyy|
    |ceEmployeeName|String|LEFT({!$Record.Ubiquity_Employee__r.FirstName},1) +{!$Record.Ubiquity_Employee__r.LastName}|Capitalized first initial + last name.  "Colin Campbell" becomes "CCampbell"|
    |ceType|String|IF(CONTAINS(TEXT({!$Record.QA_Type_Dyn__c})," "),<br/>RIGHT(TEXT({!$Record.QA_Type_Dyn__c}),FIND(" ", REVERSE(TEXT({!$Record.QA_Type_Dyn__c})))-1),<br/>TEXT({!$Record.QA_Type_Dyn__c})) + "QA"|Keeps final word from type and adds QA.  "Phone Call" becomes "CallQA"|
    |employeeName|String|IF(ISBLANK({!$Record.Ubiquity_Employee__r.FirstName}),"",{!$Record.Ubiquity_Employee__r.FirstName} & " ") & {!$Record.Ubiquity_Employee__r.LastName}|Standard employee name "first last"|
    |fancyDate|String|IF(ISBLANK({!$Record.Date__c}),"",TEXT(MONTH({!$Record.Date__c}))&"/"&TEXT(DAY({!$Record.Date__c}))&"/"&TEXT(YEAR({!$Record.Date__c})))|<!-- -->|
    |legacyName|String|IF(OR(ISPICKVAL({!$Record.QA_Type__c},"Implementation"),ISPICKVAL({!$Record.QA_Type__c},"Operations Case"),ISPICKVAL({!$Record.QA_Type__c},"BI"),ISPICKVAL({!$Record.QA_Type__c},"Accounting"),ISPICKVAL({!$Record.QA_Type__c},"PRKS")),<br/>TEXT({!$Record.QA_Type__c}) + " - " + IF(ISBLANK({!employeeName}),"NO EMPLOYEE",{!employeeName})  + " - " + TEXT({!$Record.Date__c}),<br/>TEXT({!$Record.QA_Type__c}) + " - " + IF(ISBLANK({!employeeName}),"NO EMPLOYEE",{!employeeName}) + " - " + {!$Record.Case__r.Plan__r.Name}<br/>)|<!-- -->|
    |qaNameTrimmed|String|IF(LEN({!qaName}) > 80, LEFT({!qaName},77) + "...", {!qaName})|Shortens the name to 80 characters if necessary|
    
    
    ## Flow Nodes Details
    
    ### Add_Spacer
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add Spacer|
    |Connector|[Add_Value](#add_value)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |qaName| Add|Spacer|
    
    
    
    
    ### Add_Value
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add Value|
    |Connector|[NameLoop](#nameloop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |qaName| Add|[NameLoop](#nameloop)|
    
    
    
    
    ### Assign_CE_Name_Parts
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign CE Name Parts|
    |Connector|[NameLoop](#nameloop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |nameList| Add|ceEmployeeName|
    |nameList| Add|ceType|
    |nameList| Add|ceDate|
    |nameList| Add|ceAccountName|
    |Spacer| Assign|_|
    
    
    
    
    ### Assign_Default_Name_Parts
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Default Name Parts|
    |Connector|[NameLoop](#nameloop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |nameList| Add|$Record.QA_Type_Dyn__c|
    |nameList| Add|employeeName|
    |nameList| Add|fancyDate|
    |Spacer| Assign|-|
    
    
    
    
    ### Assign_Name_Legacy_Logic
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Name Legacy Logic|
    |Description|Migrated from old process|
    |Connector|[Set_QA_Name](#set_qa_name)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |qaName| Assign|legacyName|
    
    
    
    
    ### Set_QA_Name
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Set QA Name|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Name| Assign|qaNameTrimmed|
    
    
    
    
    ### Check_if_part_blank
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check if part blank|
    |Default Connector|[NameLoop](#nameloop)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Has_Value (Has Value)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[First_Check](#first_check)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|[NameLoop](#nameloop)| Not Equal To|<!-- -->|
    
    
    
    
    ### Department_Specific_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Department Specific Check|
    |Default Connector|[Assign_Default_Name_Parts](#assign_default_name_parts)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Client_Experience (Client Experience)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_CE_Name_Parts](#assign_ce_name_parts)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Department_Dyn__c| Equal To|Client Experience|
    
    
    
    
    ### First_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|First Check|
    |Default Connector|[Add_Spacer](#add_spacer)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule First (First)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Add_Value](#add_value)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|qaName| Is Blank|✅|
    
    
    
    
    ### Record_Type_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Record Type Check|
    |Default Connector|[Assign_Name_Legacy_Logic](#assign_name_legacy_logic)|
    |Default Connector Label|Old|
    
    
    #### Rule Dynamic (Dynamic)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Department_Specific_Check](#department_specific_check)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.RecordType.Name| Contains|Dynamic|
    
    
    
    
    ### NameLoop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|[NameLoop](#nameloop)|
    |Collection Reference|nameList|
    |Iteration Order|Asc|
    |Next Value Connector|[Check_if_part_blank](#check_if_part_blank)|
    |No More Values Connector|[Set_QA_Name](#set_qa_name)|
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

