# Lead_NPN_Assignment_1 history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Lead_NPN_Assignment_1-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "3688332453"
    
    myRule_1{"🔀 <em></em><br/>Lead Includes NPN"}:::decisions
    click myRule_1 "#myrule_1" "1783629327"
    
    myRule_4{"🔀 <em></em><br/>Unqualified Lead"}:::decisions
    click myRule_4 "#myrule_4" "3216963447"
    
    myRule_4_A1[("🛠️ <em></em><br/>Update Lead Status")]:::recordUpdates
    click myRule_4_A1 "#myrule_4_a1" "2257136253"
    
    myRule_1_A1[["🔗 <em>Subflow</em><br/>Attach Advisor"]]:::subflows
    click myRule_1_A1 "#myrule_1_a1" "2754582283"
    
    myRule_1 --> |"TRUE_Lead Includes NPN"| myRule_1_A1
    myRule_1 --> |"FALSE_Lead Includes NPN"| myRule_4
    myRule_4 --> |"TRUE_Unqualified Lead"| myRule_4_A1
    myRule_4 --> |"FALSE_Unqualified Lead"| END_myRule_4
    myRule_4_A1 --> END_myRule_4_A1
    START -->  myRule_1
    myRule_1_A1 --> myRule_4
    END_myRule_4(( END )):::endClass
    END_myRule_4_A1(( END )):::endClass
    
    
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
    |Object|Lead|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create And Update|
    |Label|Lead | NPN Assignment_1|
    |Status|Active|
    |Description|Specifically excluded leads with "Converted When Created" checked.  For new automations supporting advisor form.<br/><br/>Migrated from the Lead | NPN Assignment process using multiple criteria.<br/>Find relevant advisor to either assign to employer lead, or update with new advisor lead info|
    |Environments|Default|
    |Interview Label|Lead | NPN Assignment_1 {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    |Connector|[myRule_1](#myrule_1)|
    |Next Node|[myRule_1](#myrule_1)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|IsConvertedOnCreate__c| Equal To|⬜|
    
    
    ## Flow Nodes Details
    
    ### myRule_1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Lead Includes NPN|
    |Default Connector|[myRule_4](#myrule_4)|
    |Default Connector Label|FALSE_Lead Includes NPN|
    
    
    #### Rule TRUE_myRule_1 (TRUE_Lead Includes NPN)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_A1](#myrule_1_a1)|
    |Condition Logic|(2 OR 8 OR 9) AND (((3 AND 4 AND 5) OR (5 AND 7)) OR (1 AND (NOT 5))) AND 6|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.OwnerId| Starts With|5|
    |2|$Record.Business_Unit__c| Equal To|Simply Retirement|
    |3|$Record.Associated_Contact__c| Is Null|✅|
    |4|$Record.Referrer_s_Email__c| Is Null|⬜|
    |5|$Record.Lead_Type__c| Equal To|Employer|
    |6|$Record.IsConverted| Equal To|⬜|
    |7|$Record.Referrer_s_Email__c| Is Changed|✅|
    |8|$Record.LeadSource| Contains|Sallus|
    |9|$Record.LeadSourceDetail__c| Contains|Sallus|
    
    
    
    
    ### myRule_4
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Unqualified Lead|
    |Default Connector Label|FALSE_Unqualified Lead|
    
    
    #### Rule TRUE_myRule_4 (TRUE_Unqualified Lead)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_4_A1](#myrule_4_a1)|
    |Condition Logic|3 AND 6 AND 7 AND (1 OR 2 OR 4 OR 5 OR 8 OR 9)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Industry| Equal To|Not For Profit|
    |2|$Record.NumberOfEmployees| Greater Than Or Equal To|100|
    |3|$Record.Business_Unit__c| Equal To|Simply Retirement|
    |4|$Record.Contribution_Type__c| Equal To|notContributing|
    |5|$Record.Contribution_Type__c| Equal To|No Employee Contributions|
    |6|$Record.IsConverted| Equal To|⬜|
    |7|$Record.Lead_Type__c| Not Equal To|Advisor|
    |8|$Record.Current_Plan__c| Equal To|401(k)|
    |9|$Record.Current_Plan__c| Equal To|SEP IRA|
    
    
    
    
    ### myRule_4_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Lead Status|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Status|Unqualified|
    
    
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Subflow|
    |Label|Attach Advisor|
    |Flow Name|Map_Advisor_Based_on_NPN|
    |Connector|[myRule_4](#myrule_4)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |<!-- -->|$Record.Id|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

