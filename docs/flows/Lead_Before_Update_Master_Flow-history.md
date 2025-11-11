# Lead_Before_Update_Master_Flow history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Lead_Before_Update_Master_Flow-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record Before Save</b>"]):::startClass
    click START "#general-information" "3963972884"
    
    Advisor_Firm{"🔀 <em></em><br/>Company Name Update Needed"}:::decisions
    click Advisor_Firm "#advisor_firm" "414496252"
    
    Association_Lead_Decision{"🔀 <em></em><br/>Association Lead?"}:::decisions
    click Association_Lead_Decision "#association_lead_decision" "3835698797"
    
    Lead_Closed{"🔀 <em></em><br/>Lead Closed"}:::decisions
    click Lead_Closed "#lead_closed" "4181339203"
    
    Update_Associated_Partner[("🛠️ <em></em><br/>Update Associated Partner")]:::recordUpdates
    click Update_Associated_Partner "#update_associated_partner" "1908500061"
    
    Update_Company_Name[("🛠️ <em></em><br/>Update Company Name")]:::recordUpdates
    click Update_Company_Name "#update_company_name" "1406128338"
    
    Update_Lead_Closed_Field[("🛠️ <em></em><br/>Update Lead Closed Field")]:::recordUpdates
    click Update_Lead_Closed_Field "#update_lead_closed_field" "1794818229"
    
    Advisor_Firm --> |"Advisory Firm Name Present"| Update_Company_Name
    Advisor_Firm --> |"Default Outcome"| Lead_Closed
    Association_Lead_Decision --> |"Association Lead"| Update_Associated_Partner
    Association_Lead_Decision --> |"Default Outcome"| Advisor_Firm
    Lead_Closed --> |"Closed"| Update_Lead_Closed_Field
    Lead_Closed --> |"Default Outcome"| END_Lead_Closed
    Update_Associated_Partner --> Advisor_Firm
    Update_Company_Name --> END_Update_Company_Name
    Update_Lead_Closed_Field --> END_Update_Lead_Closed_Field
    START -->  Association_Lead_Decision
    END_Lead_Closed(( END )):::endClass
    END_Update_Company_Name(( END )):::endClass
    END_Update_Lead_Closed_Field(( END )):::endClass
    
    
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
    |Trigger Type| Record Before Save|
    |Record Trigger Type| Create And Update|
    |Label|Lead | Before Update | Master Flow|
    |Status|Active|
    |Description|Added logic from PB Sales | Lead Closed Date Field|
    |Environments|Default|
    |Interview Label|Lead | Before Update {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Association_Lead_Decision](#association_lead_decision)|
    |Next Node|[Association_Lead_Decision](#association_lead_decision)|
    
    
    ## Flow Nodes Details
    
    ### Advisor_Firm
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Company Name Update Needed|
    |Default Connector|[Lead_Closed](#lead_closed)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Advisory_Firm_Name_Present (Advisory Firm Name Present)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Company_Name](#update_company_name)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Advisory_Firm__c| Is Null|⬜|
    |2|$Record.Company| Not Equal To|$Record.Advisory_Firm__c|
    |3|$Record.Lead_Type__c| Equal To|Advisor|
    
    
    
    
    ### Association_Lead_Decision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Association Lead?|
    |Default Connector|[Advisor_Firm](#advisor_firm)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Association_Lead (Association Lead)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Associated_Partner](#update_associated_partner)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.LeadSourceDetail__c| Equal To|Member Organization|
    |2|$Record.Associated_Partner_Id__c| Is Null|⬜|
    
    
    
    
    ### Lead_Closed
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Lead Closed|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Closed (Closed)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Lead_Closed_Field](#update_lead_closed_field)|
    |Condition Logic|1 AND (2 OR 3)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Status| Is Changed|✅|
    |2|$Record.Status| Equal To|Unable to Qualify|
    |3|$Record.Status| Equal To|Unqualified|
    
    
    
    
    ### Update_Associated_Partner
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Associated Partner|
    |Input Reference|$Record|
    |Connector|[Advisor_Firm](#advisor_firm)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Associated_Partner__c|$Record.Associated_Partner_Id__c|
    
    
    
    
    ### Update_Company_Name
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Company Name|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Company|$Record.Advisory_Firm__c|
    
    
    
    
    ### Update_Lead_Closed_Field
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Lead Closed Field|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Lead_Close_Date__c|$Flow.CurrentDate|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

