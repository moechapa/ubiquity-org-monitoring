# Proposal_After_Save_Create_Principal_Adv_n_TPA history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Proposal_After_Save_Create_Principal_Adv_n_TPA-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "3630237154"
    
    Convert_Advisor_Lead("⚙️ <em></em><br/>Convert Advisor Lead"):::actionCalls
    click Convert_Advisor_Lead "#convert_advisor_lead" "7809986"
    
    Convert_TPA_Lead("⚙️ <em></em><br/>Convert TPA Lead"):::actionCalls
    click Convert_TPA_Lead "#convert_tpa_lead" "82380320"
    
    Advisor_Check{"🔀 <em></em><br/>Advisor Check"}:::decisions
    click Advisor_Check "#advisor_check" "739991875"
    
    Check_if_anyone_added_to_proposal{"🔀 <em></em><br/>Check if anyone added to proposal"}:::decisions
    click Check_if_anyone_added_to_proposal "#check_if_anyone_added_to_proposal" "1279159048"
    
    Owner_Role_Check{"🔀 <em></em><br/>Owner Role Check"}:::decisions
    click Owner_Role_Check "#owner_role_check" "2897131258"
    
    TPA_Check{"🔀 <em></em><br/>TPA Check"}:::decisions
    click TPA_Check "#tpa_check" "626350278"
    
    Create_Advisor_Lead[("➕ <em></em><br/>Create Advisor Lead")]:::recordCreates
    click Create_Advisor_Lead "#create_advisor_lead" "3757932038"
    
    Create_TPA_Lead[("➕ <em></em><br/>Create TPA Lead")]:::recordCreates
    click Create_TPA_Lead "#create_tpa_lead" "1295488943"
    
    Commit_Proposal_Updates[("🛠️ <em></em><br/>Commit Proposal Updates")]:::recordUpdates
    click Commit_Proposal_Updates "#commit_proposal_updates" "2029889565"
    
    Assign_Principal_Advisor_Values[["🔗 <em>Subflow</em><br/>Assign Principal Advisor Values"]]:::subflows
    click Assign_Principal_Advisor_Values "#assign_principal_advisor_values" "3132912955"
    
    Assign_Principal_TPA_Values[["🔗 <em>Subflow</em><br/>Assign Principal TPA Values"]]:::subflows
    click Assign_Principal_TPA_Values "#assign_principal_tpa_values" "2752811611"
    
    Convert_Advisor_Lead --> TPA_Check
    Convert_TPA_Lead --> Check_if_anyone_added_to_proposal
    Advisor_Check --> |"Need to create advisor"| Assign_Principal_Advisor_Values
    Advisor_Check --> |"Default Outcome"| TPA_Check
    Check_if_anyone_added_to_proposal --> |"Contact added to proposal"| Commit_Proposal_Updates
    Check_if_anyone_added_to_proposal --> |"Default Outcome"| END_Check_if_anyone_added_to_proposal
    Owner_Role_Check --> |"Owner is RPC"| Advisor_Check
    Owner_Role_Check --> |"Default Outcome"| END_Owner_Role_Check
    TPA_Check --> |"Need to create TPA"| Assign_Principal_TPA_Values
    TPA_Check --> |"Default Outcome"| Check_if_anyone_added_to_proposal
    Create_Advisor_Lead --> Convert_Advisor_Lead
    Create_TPA_Lead --> Convert_TPA_Lead
    Commit_Proposal_Updates --> END_Commit_Proposal_Updates
    START -->  Owner_Role_Check
    Assign_Principal_Advisor_Values --> Create_Advisor_Lead
    Assign_Principal_TPA_Values --> Create_TPA_Lead
    END_Check_if_anyone_added_to_proposal(( END )):::endClass
    END_Owner_Role_Check(( END )):::endClass
    END_Commit_Proposal_Updates(( END )):::endClass
    
    
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
    |Object|Proposal__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create And Update|
    |Label|Proposal | After Save | Create Principal Adv n TPA|
    |Status|Active|
    |Description|Creates Advisor and/or TPA for Simply Proposals once their information is added to the proposal and there isn't already a contact present.|
    |Environments|Default|
    |Interview Label|Proposal | Create Principal Adv n TPA {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Owner_Role_Check](#owner_role_check)|
    |Next Node|[Owner_Role_Check](#owner_role_check)|
    
    
    #### Filters (logic: **1 AND ((2 AND 3) OR (4 AND 5))**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Principal_Id__c| Is Null|<!-- -->|
    |2|Financial_Professional_Email__c| Is Null|<!-- -->|
    |3|Advisor_Contact__c| Is Null|<!-- -->|
    |4|TPA_Sales_Email__c| Is Null|<!-- -->|
    |5|TPA_Contact__c| Is Null|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |tpaState|String|BLANKVALUE({!$Record.Company_State__c}, {!$Record.Financial_Professional_State__c})|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Convert_Advisor_Lead
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Convert Advisor Lead|
    |Action Type|Apex|
    |Action Name|[ModularAutoConvertLead](../apex/ModularAutoConvertLead.md)|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|ModularAutoConvertLead|
    |Offset|0|
    |Output Parameters|- assignToReference: $Record.Advisor_Account__c<br/>&nbsp;&nbsp;name: convertedAccountId<br/>- assignToReference: $Record.Advisor_Contact__c<br/>&nbsp;&nbsp;name: convertedContactId<br/>|
    |Create Opportunity (input)|⬜|
    |Lead Id (input)|Assign_Principal_Advisor_Values.newLead.Id|
    |Connector|[TPA_Check](#tpa_check)|
    
    
    ### Convert_TPA_Lead
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Convert TPA Lead|
    |Action Type|Apex|
    |Action Name|[ModularAutoConvertLead](../apex/ModularAutoConvertLead.md)|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|ModularAutoConvertLead|
    |Offset|0|
    |Output Parameters|- assignToReference: $Record.TPA_Account__c<br/>&nbsp;&nbsp;name: convertedAccountId<br/>- assignToReference: $Record.TPA_Contact__c<br/>&nbsp;&nbsp;name: convertedContactId<br/>|
    |Create Opportunity (input)|⬜|
    |Lead Id (input)|Assign_Principal_TPA_Values.newLead.Id|
    |Connector|[Check_if_anyone_added_to_proposal](#check_if_anyone_added_to_proposal)|
    
    
    ### Advisor_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Advisor Check|
    |Default Connector|[TPA_Check](#tpa_check)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Need_to_create_advisor (Need to create advisor)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Principal_Advisor_Values](#assign_principal_advisor_values)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Financial_Professional_Email__c| Is Blank|⬜|
    |2|$Record.Financial_Professional_First_Name__c| Is Blank|⬜|
    |3|$Record.Financial_Professional_Last_Name__c| Is Blank|⬜|
    |4|$Record.Financial_Professional_State__c| Is Blank|⬜|
    |5|$Record.Firm_Name__c| Is Blank|⬜|
    |6|$Record.Advisor_Contact__c| Is Blank|✅|
    
    
    
    
    ### Check_if_anyone_added_to_proposal
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check if anyone added to proposal|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Contact_added_to_proposal (Contact added to proposal)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Commit_Proposal_Updates](#commit_proposal_updates)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Advisor_Contact__c| Was Set|✅|
    |2|$Record.TPA_Contact__c| Was Set|✅|
    
    
    
    
    ### Owner_Role_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Owner Role Check|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Owner_is_RPC (Owner is RPC)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Advisor_Check](#advisor_check)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Owner:User.UserRole.DeveloperName| Equal To|RetirementPlanConsultant|
    
    
    
    
    ### TPA_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|TPA Check|
    |Default Connector|[Check_if_anyone_added_to_proposal](#check_if_anyone_added_to_proposal)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Need_to_create_TPA (Need to create TPA)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Principal_TPA_Values](#assign_principal_tpa_values)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.TPA_Sales_Email__c| Is Blank|⬜|
    |2|$Record.TPA_Sales_First_Name__c| Is Blank|⬜|
    |3|$Record.TPA_Sales_Last_Name__c| Is Blank|⬜|
    |4|tpaState| Is Blank|⬜|
    |5|$Record.TPA_Firm_Name__c| Is Blank|⬜|
    |6|$Record.TPA_Contact__c| Is Blank|✅|
    
    
    
    
    ### Create_Advisor_Lead
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Label|Create Advisor Lead|
    |Input Reference|Assign_Principal_Advisor_Values.newLead|
    |Connector|[Convert_Advisor_Lead](#convert_advisor_lead)|
    
    
    ### Create_TPA_Lead
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Label|Create TPA Lead|
    |Input Reference|Assign_Principal_TPA_Values.newLead|
    |Connector|[Convert_TPA_Lead](#convert_tpa_lead)|
    
    
    ### Commit_Proposal_Updates
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Commit Proposal Updates|
    |Input Reference|$Record|
    
    
    ### Assign_Principal_Advisor_Values
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Subflow|
    |Label|Assign Principal Advisor Values|
    |Flow Name|Proposal_Autolaunched_Assign_Lead_Values_From_Proposal|
    |Store Output Automatically|✅|
    |Connector|[Create_Advisor_Lead](#create_advisor_lead)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |<!-- -->|Principal Advisor|
    |<!-- -->|$Record|
    
    
    
    
    ### Assign_Principal_TPA_Values
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Subflow|
    |Label|Assign Principal TPA Values|
    |Flow Name|Proposal_Autolaunched_Assign_Lead_Values_From_Proposal|
    |Store Output Automatically|✅|
    |Connector|[Create_TPA_Lead](#create_tpa_lead)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |<!-- -->|Principal TPA|
    |<!-- -->|$Record|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

