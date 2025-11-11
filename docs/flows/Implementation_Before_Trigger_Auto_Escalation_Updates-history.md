# Implementation_Before_Trigger_Auto_Escalation_Updates history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Implementation_Before_Trigger_Auto_Escalation_Updates-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record Before Save</b>"]):::startClass
    click START "#general-information" "1847910171"
    
    Assign_Auto[\"🟰 <em></em><br/>Assign Auto"/]:::assignments
    click Assign_Auto "#assign_auto" "762132892"
    
    Assign_Flat[\"🟰 <em></em><br/>Assign Flat"/]:::assignments
    click Assign_Flat "#assign_flat" "3265260957"
    
    Bundled_Max[\"🟰 <em></em><br/>Bundled Max"/]:::assignments
    click Bundled_Max "#bundled_max" "2526866370"
    
    Saver_Max[\"🟰 <em></em><br/>Saver Max"/]:::assignments
    click Saver_Max "#saver_max" "326478941"
    
    Unbundled_Max[\"🟰 <em></em><br/>Unbundled Max"/]:::assignments
    click Unbundled_Max "#unbundled_max" "1055946230"
    
    Flat_or_Auto{"🔀 <em></em><br/>Flat or Auto"}:::decisions
    click Flat_or_Auto "#flat_or_auto" "1655482255"
    
    Max_Rate_Determination{"🔀 <em></em><br/>Max Rate Determination"}:::decisions
    click Max_Rate_Determination "#max_rate_determination" "3306974153"
    
    Update_Imp[("🛠️ <em></em><br/>Update Imp")]:::recordUpdates
    click Update_Imp "#update_imp" "3602646433"
    
    Assign_Auto --> Max_Rate_Determination
    Assign_Flat --> Update_Imp
    Bundled_Max --> Update_Imp
    Saver_Max --> Update_Imp
    Unbundled_Max --> Update_Imp
    Flat_or_Auto --> |"Flat"| Assign_Flat
    Flat_or_Auto --> |"Auto"| Assign_Auto
    Flat_or_Auto --> |"Default Outcome"| END_Flat_or_Auto
    Max_Rate_Determination --> |"Unbundled"| Unbundled_Max
    Max_Rate_Determination --> |"Saver(k), Custom(k), and Reserve(k)"| Saver_Max
    Max_Rate_Determination --> |"Bundled"| Bundled_Max
    Max_Rate_Determination --> |"Default"| END_Max_Rate_Determination
    Update_Imp --> END_Update_Imp
    START -->  Flat_or_Auto
    END_Flat_or_Auto(( END )):::endClass
    END_Max_Rate_Determination(( END )):::endClass
    END_Update_Imp(( END )):::endClass
    
    
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
    |Object|Implementation__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record Before Save|
    |Record Trigger Type| Create And Update|
    |Label|Implementation | Before Trigger | Auto Escalation Updates|
    |Status|Active|
    |Description|3/2/23 Modified initialRate formula to allow for double digit (10%) initial rate|
    |Environments|Default|
    |Interview Label|Implementation | Before Trigger | Auto Escalation Updates {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Flat_or_Auto](#flat_or_auto)|
    |Next Node|[Flat_or_Auto](#flat_or_auto)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Auto_Enrollment_Deferral_Escalation_Rate__c| Is Null|<!-- -->|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |aeType|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |maxRate|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |initialRate|String|LEFT(TEXT({!$Record.Auto_Enrollment_Deferral_Escalation_Rate__c}), FIND("%", TEXT({!$Record.Auto_Enrollment_Deferral_Escalation_Rate__c}))-1)|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Assign_Auto
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Auto|
    |Connector|[Max_Rate_Determination](#max_rate_determination)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |aeType| Assign|Auto-Escalate|
    
    
    
    
    ### Assign_Flat
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Flat|
    |Connector|[Update_Imp](#update_imp)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |aeType| Assign|Flat|
    |maxRate| Assign|initialRate|
    
    
    
    
    ### Bundled_Max
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Bundled Max|
    |Connector|[Update_Imp](#update_imp)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |maxRate| Assign|10|
    
    
    
    
    ### Saver_Max
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Saver Max|
    |Connector|[Update_Imp](#update_imp)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |maxRate| Assign|6|
    
    
    
    
    ### Unbundled_Max
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Unbundled Max|
    |Connector|[Update_Imp](#update_imp)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |maxRate| Assign|15|
    
    
    
    
    ### Flat_or_Auto
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Flat or Auto|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Flat (Flat)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Flat](#assign_flat)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Auto_Enrollment_Deferral_Escalation_Rate__c| Contains|Flat|
    
    
    
    
    #### Rule Auto (Auto)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Auto](#assign_auto)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Auto_Enrollment_Deferral_Escalation_Rate__c| Contains|Auto-Escalate|
    
    
    
    
    ### Max_Rate_Determination
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Max Rate Determination|
    |Default Connector Label|Default|
    
    
    #### Rule Unbundled (Unbundled)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Unbundled_Max](#unbundled_max)|
    |Condition Logic|1 AND (2 or 3)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Service_Option__c| Contains|Unbundled|
    |2|$Record.Service_Option__c| Is Changed|✅|
    |3|$Record.Maximum_Deferral_Rate__c| Is Null|✅|
    
    
    
    
    #### Rule Saver_k (Saver(k), Custom(k), and Reserve(k))
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Saver_Max](#saver_max)|
    |Condition Logic|(1 OR 2 OR 3) AND (4 OR 5)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Service_Option__c| Contains|Saver|
    |2|$Record.Service_Option__c| Equal To|Custom(k)|
    |3|$Record.Service_Option__c| Equal To|Reserve(k)|
    |4|$Record.Service_Option__c| Is Changed|✅|
    |5|$Record.Maximum_Deferral_Rate__c| Is Null|✅|
    
    
    
    
    #### Rule Bundled (Bundled)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Bundled_Max](#bundled_max)|
    |Condition Logic|1 AND (2 OR 3)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Service_Option__c| Equal To|Simply Retirement Bundled|
    |2|$Record.Service_Option__c| Is Changed|✅|
    |3|$Record.Maximum_Deferral_Rate__c| Is Changed|✅|
    
    
    
    
    ### Update_Imp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Imp|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Auto_Enroll_Escalation_Type__c|aeType|
    |Initial_Deferral_Rate__c|initialRate|
    |Maximum_Deferral_Rate__c|maxRate|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

