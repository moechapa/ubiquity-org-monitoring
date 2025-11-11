# Implementation_Before_Trigger_Update_Fees history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Implementation_Before_Trigger_Update_Fees-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record Before Save</b>"]):::startClass
    click START "#general-information" "2188344912"
    
    Assign_Sallus_EE_Fee[\"🟰 <em></em><br/>Assign Sallus EE Fee"/]:::assignments
    click Assign_Sallus_EE_Fee "#assign_sallus_ee_fee" "2310730178"
    
    Assign_Simply_EE_Fee[\"🟰 <em></em><br/>Assign Simply EE Fee"/]:::assignments
    click Assign_Simply_EE_Fee "#assign_simply_ee_fee" "160191824"
    
    Assign_UBQT_EE_Fee[\"🟰 <em></em><br/>Assign UBQT EE Fee"/]:::assignments
    click Assign_UBQT_EE_Fee "#assign_ubqt_ee_fee" "3730424344"
    
    Check_if_fee_update_needed{"🔀 <em></em><br/>Check if fee update needed"}:::decisions
    click Check_if_fee_update_needed "#check_if_fee_update_needed" "4189562139"
    
    Does_Advisor_Cred_need_update{"🔀 <em></em><br/>Does Advisor Cred need update"}:::decisions
    click Does_Advisor_Cred_need_update "#does_advisor_cred_need_update" "3683985063"
    
    Employee_Brand{"🔀 <em></em><br/>Employee Brand"}:::decisions
    click Employee_Brand "#employee_brand" "401353835"
    
    Employee_Fees_Needed{"🔀 <em></em><br/>Employee Fees Needed"}:::decisions
    click Employee_Fees_Needed "#employee_fees_needed" "2101569654"
    
    Grandfather_Date_Check{"🔀 <em></em><br/>Grandfather Date Check"}:::decisions
    click Grandfather_Date_Check "#grandfather_date_check" "1642801721"
    
    Missing_Grandfather_Date{"🔀 <em></em><br/>Missing Grandfather Date"}:::decisions
    click Missing_Grandfather_Date "#missing_grandfather_date" "17617474"
    
    Quarterly_Fees_Needed{"🔀 <em></em><br/>Quarterly Fees Needed"}:::decisions
    click Quarterly_Fees_Needed "#quarterly_fees_needed" "2158616174"
    
    Find_Proposal[("🔍 <em></em><br/>Find Proposal")]:::recordLookups
    click Find_Proposal "#find_proposal" "3461059071"
    
    Get_Opp_Products[("🔍 <em></em><br/>Get Opp Products")]:::recordLookups
    click Get_Opp_Products "#get_opp_products" "2242092246"
    
    Green_Onedigital[("🛠️ <em></em><br/>Green Onedigital")]:::recordUpdates
    click Green_Onedigital "#green_onedigital" "2850338105"
    
    Update_Employee_Fees[("🛠️ <em></em><br/>Update Employee Fees")]:::recordUpdates
    click Update_Employee_Fees "#update_employee_fees" "3269884458"
    
    Update_Imp_Grandfather_Date[("🛠️ <em></em><br/>Update Imp Grandfather Date")]:::recordUpdates
    click Update_Imp_Grandfather_Date "#update_imp_grandfather_date" "1089262508"
    
    Update_Quarterly_Fees[("🛠️ <em></em><br/>Update Quarterly Fees")]:::recordUpdates
    click Update_Quarterly_Fees "#update_quarterly_fees" "1772021624"
    
    Wilshire[("🛠️ <em></em><br/>Wilshire")]:::recordUpdates
    click Wilshire "#wilshire" "2866308319"
    
    Assign_Sallus_EE_Fee --> Update_Employee_Fees
    Assign_Simply_EE_Fee --> Update_Employee_Fees
    Assign_UBQT_EE_Fee --> Update_Employee_Fees
    Check_if_fee_update_needed --> |"Needs Quarter Fee Update"| Update_Quarterly_Fees
    Check_if_fee_update_needed --> |"Default Outcome"| Missing_Grandfather_Date
    Does_Advisor_Cred_need_update --> |"Update to green AND Onedigital"| Green_Onedigital
    Does_Advisor_Cred_need_update --> |"Wilshire 3(38)"| Wilshire
    Does_Advisor_Cred_need_update --> |"Default Outcome"| Employee_Fees_Needed
    Employee_Brand --> |"UBQT"| Assign_UBQT_EE_Fee
    Employee_Brand --> |"Simply"| Assign_Simply_EE_Fee
    Employee_Brand --> |"Sallus"| Assign_Sallus_EE_Fee
    Employee_Brand --> |"Default Outcome"| END_Employee_Brand
    Employee_Fees_Needed --> |"Employee Fees Null"| Employee_Brand
    Employee_Fees_Needed --> |"Employee Fees Present"| END_Employee_Fees_Needed
    Grandfather_Date_Check --> |"Grandfather Date Update Needed"| Update_Imp_Grandfather_Date
    Grandfather_Date_Check --> |"Default Outcome"| Does_Advisor_Cred_need_update
    Missing_Grandfather_Date --> |"Find Matching Proposal"| Find_Proposal
    Missing_Grandfather_Date --> |"Default Outcome"| Does_Advisor_Cred_need_update
    Quarterly_Fees_Needed --> |"Quarterly Fees Necessary"| Get_Opp_Products
    Quarterly_Fees_Needed --> |"Quarterly Fees Not Needed"| Employee_Fees_Needed
    Find_Proposal --> Grandfather_Date_Check
    Get_Opp_Products --> Check_if_fee_update_needed
    Green_Onedigital --> Employee_Fees_Needed
    Update_Employee_Fees --> END_Update_Employee_Fees
    Update_Imp_Grandfather_Date --> Does_Advisor_Cred_need_update
    Update_Quarterly_Fees --> Missing_Grandfather_Date
    Wilshire --> Employee_Fees_Needed
    START -->  Quarterly_Fees_Needed
    END_Employee_Brand(( END )):::endClass
    END_Employee_Fees_Needed(( END )):::endClass
    END_Update_Employee_Fees(( END )):::endClass
    
    
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
    |Label|Implementation | Before Trigger | Update Fees|
    |Status|Active|
    |Description|Updated so employee fee for Sallus is 4.5 (from 9)|
    |Environments|Default|
    |Interview Label|Implementation | Before Trigger | Update Fees {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Quarterly_Fees_Needed](#quarterly_fees_needed)|
    |Next Node|[Quarterly_Fees_Needed](#quarterly_fees_needed)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |employeeFeeVar|Currency|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |oppItemRec|SObject|⬜|⬜|⬜|OpportunityLineItem|<!-- -->|
    |propGrandfatherDate|Date|⬜|⬜|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |oneWeekAgo|Date|TODAY() - 7|<!-- -->|
    |qrtrFee|Currency|{!oppItemRec.UnitPrice}/4|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Assign_Sallus_EE_Fee
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Sallus EE Fee|
    |Connector|[Update_Employee_Fees](#update_employee_fees)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |employeeFeeVar| Assign|4.5|
    
    
    
    
    ### Assign_Simply_EE_Fee
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Simply EE Fee|
    |Connector|[Update_Employee_Fees](#update_employee_fees)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |employeeFeeVar| Assign|6|
    
    
    
    
    ### Assign_UBQT_EE_Fee
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign UBQT EE Fee|
    |Connector|[Update_Employee_Fees](#update_employee_fees)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |employeeFeeVar| Assign|6|
    
    
    
    
    ### Check_if_fee_update_needed
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check if fee update needed|
    |Default Connector|[Missing_Grandfather_Date](#missing_grandfather_date)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Needs_Quarter_Fee_Update (Needs Quarter Fee Update)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Quarterly_Fees](#update_quarterly_fees)|
    |Condition Logic|1 AND (2 OR 3)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|oppItemRec.Id| Is Null|⬜|
    |2|qrtrFee| Not Equal To|$Record.Quarterly_Fees__c|
    |3|qrtrFee| Is Null|✅|
    
    
    
    
    ### Does_Advisor_Cred_need_update
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Does Advisor Cred need update|
    |Default Connector|[Employee_Fees_Needed](#employee_fees_needed)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Update_to_green_AND_Onedigital (Update to green AND Onedigital)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Green_Onedigital](#green_onedigital)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.X3_38__c| Is Null|✅|
    |2|$Record.Opportunity_Name__r.X3_38__c| Equal To|OneDigital|
    
    
    
    
    #### Rule Wilshire_3_38 (Wilshire 3(38))
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Wilshire](#wilshire)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.X3_38__c| Is Null|✅|
    |2|$Record.Opportunity_Name__r.X3_38__c| Equal To|[Wilshire](#wilshire)|
    
    
    
    
    ### Employee_Brand
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Employee Brand|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule UBQT (UBQT)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_UBQT_EE_Fee](#assign_ubqt_ee_fee)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Brand__c| Equal To|Ubiquity Retirement + Savings|
    
    
    
    
    #### Rule Simply (Simply)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Simply_EE_Fee](#assign_simply_ee_fee)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Brand__c| Equal To|Simply Retirement|
    
    
    
    
    #### Rule Sallus (Sallus)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Sallus_EE_Fee](#assign_sallus_ee_fee)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Brand__c| Equal To|Sallus Retirement|
    
    
    
    
    ### Employee_Fees_Needed
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Employee Fees Needed|
    |Default Connector Label|Employee Fees Present|
    
    
    #### Rule Employee_Fees_Null (Employee Fees Null)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Employee_Brand](#employee_brand)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Employee_Monthly_Fees__c| Is Null|✅|
    |2|$Record.Opportunity_Name__c| Is Null|⬜|
    
    
    
    
    ### Grandfather_Date_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Grandfather Date Check|
    |Default Connector|[Does_Advisor_Cred_need_update](#does_advisor_cred_need_update)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Grandfather_Date_Update_Needed (Grandfather Date Update Needed)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Imp_Grandfather_Date](#update_imp_grandfather_date)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|propGrandfatherDate| Is Null|⬜|
    |2|propGrandfatherDate| Not Equal To|$Record.Grandfather_Date__c|
    
    
    
    
    ### Missing_Grandfather_Date
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Missing Grandfather Date|
    |Default Connector|[Does_Advisor_Cred_need_update](#does_advisor_cred_need_update)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Find_Matching_Proposal (Find Matching Proposal)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Find_Proposal](#find_proposal)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Grandfather_Date__c| Is Null|✅|
    |2|$Record.Service_Option__c| Contains|Simply Retirement|
    
    
    
    
    ### Quarterly_Fees_Needed
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Quarterly Fees Needed|
    |Default Connector|[Employee_Fees_Needed](#employee_fees_needed)|
    |Default Connector Label|Quarterly Fees Not Needed|
    
    
    #### Rule Quarterly_Fees_Necessary (Quarterly Fees Necessary)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Opp_Products](#get_opp_products)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Opportunity_Name__c| Is Null|⬜|
    |2|$Record.CreatedDate| Greater Than Or Equal To|oneWeekAgo|
    
    
    
    
    ### Find_Proposal
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Proposal__c|
    |Label|Find Proposal|
    |Assign Null Values If No Records Found|✅|
    |Output Assignments|assignToReference: propGrandfatherDate<br/>field: Grandfather_Date__c<br/>|
    |Connector|[Grandfather_Date_Check](#grandfather_date_check)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Opportunity__c| Equal To|$Record.Opportunity_Name__c|
    
    
    
    
    ### Get_Opp_Products
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|OpportunityLineItem|
    |Label|Get Opp Products|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|oppItemRec|
    |Queried Fields|- Id<br/>- UnitPrice<br/>|
    |Connector|[Check_if_fee_update_needed](#check_if_fee_update_needed)|
    
    
    #### Filters (logic: **(1 OR 3) AND 2**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Product_Family__c| Equal To|401(k)|
    |2|OpportunityId| Equal To|$Record.Opportunity_Name__c|
    |3|Product_Family__c| Equal To|Single(k)|
    
    
    
    
    ### Green_Onedigital
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Green Onedigital|
    |Input Reference|$Record|
    |Connector|[Employee_Fees_Needed](#employee_fees_needed)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Simply_Credentialed_Advisor__c|Green|
    |X3_38__c|OneDigital|
    
    
    
    
    ### Update_Employee_Fees
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Employee Fees|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Employee_Monthly_Fees__c|employeeFeeVar|
    
    
    
    
    ### Update_Imp_Grandfather_Date
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Imp Grandfather Date|
    |Input Reference|$Record|
    |Connector|[Does_Advisor_Cred_need_update](#does_advisor_cred_need_update)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Grandfather_Date__c|propGrandfatherDate|
    
    
    
    
    ### Update_Quarterly_Fees
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Quarterly Fees|
    |Input Reference|$Record|
    |Connector|[Missing_Grandfather_Date](#missing_grandfather_date)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Quarterly_Fees__c|qrtrFee|
    
    
    
    
    ### Wilshire
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|[Wilshire](#wilshire)|
    |Input Reference|$Record|
    |Connector|[Employee_Fees_Needed](#employee_fees_needed)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |X3_38__c|[Wilshire](#wilshire)|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

