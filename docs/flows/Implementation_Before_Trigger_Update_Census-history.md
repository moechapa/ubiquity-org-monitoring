# Implementation_Before_Trigger_Update_Census history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Implementation_Before_Trigger_Update_Census-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record Before Save</b>"]):::startClass
    click START "#general-information" "3952345570"
    
    CensusCompletePercentageOver1{"🔀 <em></em><br/>CensusCompletePercentageOver1"}:::decisions
    click CensusCompletePercentageOver1 "#censuscompletepercentageover1" "4182444632"
    
    Kotapay_Completed{"🔀 <em></em><br/>Kotapay Completed?"}:::decisions
    click Kotapay_Completed "#kotapay_completed" "239040272"
    
    Check_ACH_Box[("🛠️ <em></em><br/>Check ACH Box")]:::recordUpdates
    click Check_ACH_Box "#check_ach_box" "2432512127"
    
    Update_Census_and_Eligibility_Date[("🛠️ <em></em><br/>Update Census and Eligibility Date")]:::recordUpdates
    click Update_Census_and_Eligibility_Date "#update_census_and_eligibility_date" "2212336854"
    
    CensusCompletePercentageOver1 --> |"Yes"| Update_Census_and_Eligibility_Date
    CensusCompletePercentageOver1 --> |"No/Already Recorded"| END_CensusCompletePercentageOver1
    Kotapay_Completed --> |"Kotapay Complete But Box Already Checked"| CensusCompletePercentageOver1
    Kotapay_Completed --> |"Kotapay Complete"| Check_ACH_Box
    Kotapay_Completed --> |"Not Complete"| CensusCompletePercentageOver1
    Check_ACH_Box --> CensusCompletePercentageOver1
    Update_Census_and_Eligibility_Date --> END_Update_Census_and_Eligibility_Date
    START -->  Kotapay_Completed
    END_CensusCompletePercentageOver1(( END )):::endClass
    END_Update_Census_and_Eligibility_Date(( END )):::endClass
    
    
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
    |Record Trigger Type| Update|
    |Label|Implementation | Before Trigger | Update Census and Eligibility Upload Date|
    |Status|Active|
    |Description|When Count of Employees changes, check Census Eligibility Percentage, if greater or equal to 1, stamp Census and Eligibility Uploaded. Added check for Schwab in kotapay decision 12-1-22|
    |Environments|Default|
    |Interview Label|Implementation | Before Trigger | Update Census {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Kotapay_Completed](#kotapay_completed)|
    |Next Node|[Kotapay_Completed](#kotapay_completed)|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |CensusCompletePercentage|Number|{!$Record.Count_of_Employees_Census__c}/{!$Record.Account__r.NumberOfEmployees}|<!-- -->|
    |Today|Date|TODAY()|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### CensusCompletePercentageOver1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[CensusCompletePercentageOver1](#censuscompletepercentageover1)|
    |Default Connector Label|No/Already Recorded|
    
    
    #### Rule Yes (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Census_and_Eligibility_Date](#update_census_and_eligibility_date)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|CensusCompletePercentage| Greater Than Or Equal To|1|
    |2|$Record.Census_and_Eligibility_Uploaded__c| Is Null|✅|
    |3|$Record.Implementation_Status__c| Not Equal To|No Start|
    |4|$Record.Implementation_Status__c| Not Equal To|Completed|
    
    
    
    
    ### Kotapay_Completed
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Kotapay Completed?|
    |Default Connector|[CensusCompletePercentageOver1](#censuscompletepercentageover1)|
    |Default Connector Label|Not Complete|
    
    
    #### Rule Kotapay_Complete_But_Box_Already_Checked (Kotapay Complete But Box Already Checked)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[CensusCompletePercentageOver1](#censuscompletepercentageover1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Kotapay_Complete__c| Is Null|⬜|
    |2|$Record.ACH_Application__c| Equal To|✅|
    
    
    
    
    #### Rule Kotapay_Complete (Kotapay Complete)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Check_ACH_Box](#check_ach_box)|
    |Condition Logic|1 AND 2 AND (3 OR 4)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Kotapay_Complete__c| Is Null|⬜|
    |2|$Record.ACH_Application__c| Equal To|⬜|
    |3|$Record.Custodian__c| Equal To|Schwab & Co., Inc.|
    |4|$Record.Custodian__c| Equal To|Schwab Trust|
    
    
    
    
    ### Check_ACH_Box
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Check ACH Box|
    |Input Reference|$Record|
    |Connector|[CensusCompletePercentageOver1](#censuscompletepercentageover1)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |ACH_Application__c|✅|
    
    
    
    
    ### Update_Census_and_Eligibility_Date
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Census and Eligibility Date|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Census_and_Eligibility_Uploaded__c|Today|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

