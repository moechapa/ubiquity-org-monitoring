# Docusign_Autolaunched_Send_Transition_Docusign history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Docusign_Autolaunched_Send_Transition_Docusign-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>"]):::startClass
    click START "#general-information" "3483768559"
    
    xf("⚙️ <em></em><br/>xf"):::actionCalls
    click xf "#xf" "738208825"
    
    Assign_Template_Id[\"🟰 <em></em><br/>Assign Template Id"/]:::assignments
    click Assign_Template_Id "#assign_template_id" "177729785"
    
    Copy_10_of_Assign_Template_Id[\"🟰 <em></em><br/>Copy 10 of Assign Template Id"/]:::assignments
    click Copy_10_of_Assign_Template_Id "#copy_10_of_assign_template_id" "1403150882"
    
    Copy_1_of_Assign_Template_Id[\"🟰 <em></em><br/>Copy 1 of Assign Template Id"/]:::assignments
    click Copy_1_of_Assign_Template_Id "#copy_1_of_assign_template_id" "4343377"
    
    Copy_2_of_Assign_Template_Id[\"🟰 <em></em><br/>Copy 2 of Assign Template Id"/]:::assignments
    click Copy_2_of_Assign_Template_Id "#copy_2_of_assign_template_id" "3497773891"
    
    Copy_3_of_Assign_Template_Id[\"🟰 <em></em><br/>Copy 3 of Assign Template Id"/]:::assignments
    click Copy_3_of_Assign_Template_Id "#copy_3_of_assign_template_id" "22403164"
    
    Copy_4_of_Assign_Template_Id[\"🟰 <em></em><br/>Copy 4 of Assign Template Id"/]:::assignments
    click Copy_4_of_Assign_Template_Id "#copy_4_of_assign_template_id" "2594924727"
    
    Copy_5_of_Assign_Template_Id[\"🟰 <em></em><br/>Copy 5 of Assign Template Id"/]:::assignments
    click Copy_5_of_Assign_Template_Id "#copy_5_of_assign_template_id" "1843745996"
    
    Copy_7_of_Assign_Template_Id[\"🟰 <em></em><br/>Copy 7 of Assign Template Id"/]:::assignments
    click Copy_7_of_Assign_Template_Id "#copy_7_of_assign_template_id" "3536505712"
    
    Copy_8_of_Assign_Template_Id[\"🟰 <em></em><br/>Copy 8 of Assign Template Id"/]:::assignments
    click Copy_8_of_Assign_Template_Id "#copy_8_of_assign_template_id" "2305107494"
    
    Copy_9_of_Assign_Template_Id[\"🟰 <em></em><br/>Copy 9 of Assign Template Id"/]:::assignments
    click Copy_9_of_Assign_Template_Id "#copy_9_of_assign_template_id" "1831252095"
    
    Found{"🔀 <em></em><br/>Found?"}:::decisions
    click Found "#found" "1604142871"
    
    Which_Docusign_to_Send{"🔀 <em></em><br/>Which Docusign to Send?"}:::decisions
    click Which_Docusign_to_Send "#which_docusign_to_send" "3607719700"
    
    Case_To_Transitions[("➕ <em></em><br/>Case To Transitions")]:::recordCreates
    click Case_To_Transitions "#case_to_transitions" "2161531010"
    
    Can_you_Find_Active_Payroll_Integration[("🔍 <em></em><br/>Can you Find Active Payroll Integration?")]:::recordLookups
    click Can_you_Find_Active_Payroll_Integration "#can_you_find_active_payroll_integration" "4096156581"
    
    Get_Transition[("🔍 <em></em><br/>Get Transition")]:::recordLookups
    click Get_Transition "#get_transition" "2235486961"
    
    xf --> END_xf
    xf -. Fault .->Case_To_Transitions
    Assign_Template_Id --> xf
    Copy_10_of_Assign_Template_Id --> xf
    Copy_1_of_Assign_Template_Id --> xf
    Copy_2_of_Assign_Template_Id --> xf
    Copy_3_of_Assign_Template_Id --> xf
    Copy_4_of_Assign_Template_Id --> xf
    Copy_5_of_Assign_Template_Id --> xf
    Copy_7_of_Assign_Template_Id --> xf
    Copy_8_of_Assign_Template_Id --> xf
    Copy_9_of_Assign_Template_Id --> xf
    Found --> |"Default Outcome"| END_Found
    Which_Docusign_to_Send --> |"RKO Simply Term"| Assign_Template_Id
    Which_Docusign_to_Send --> |"Full Service Simply Term"| Copy_2_of_Assign_Template_Id
    Which_Docusign_to_Send --> |"RKO Non-Simply"| Copy_1_of_Assign_Template_Id
    Which_Docusign_to_Send --> |"Full Service Schwab Trust"| Copy_3_of_Assign_Template_Id
    Which_Docusign_to_Send --> |"Full Service Matrix or Schwab BD Term"| Copy_4_of_Assign_Template_Id
    Which_Docusign_to_Send --> |"Simply Decons and RKO Simply Term/Merger"| Copy_5_of_Assign_Template_Id
    Which_Docusign_to_Send --> |"RKO Non-Simply w/ Integration"| Can_you_Find_Active_Payroll_Integration
    Which_Docusign_to_Send --> |"Full Service Schwab Trust Decon"| Copy_7_of_Assign_Template_Id
    Which_Docusign_to_Send --> |"Full Service Simply Term/Merger"| Copy_8_of_Assign_Template_Id
    Which_Docusign_to_Send --> |"Full Service Schwab Trust Term Merger"| Copy_9_of_Assign_Template_Id
    Which_Docusign_to_Send --> |"Full Service Term Merger - Matrix or Schwab BD"| Copy_10_of_Assign_Template_Id
    Which_Docusign_to_Send --> |"Default Outcome"| END_Which_Docusign_to_Send
    Case_To_Transitions --> END_Case_To_Transitions
    Can_you_Find_Active_Payroll_Integration --> Found
    Get_Transition --> Which_Docusign_to_Send
    START -->  Get_Transition
    END_xf(( END )):::endClass
    END_Found(( END )):::endClass
    END_Which_Docusign_to_Send(( END )):::endClass
    END_Case_To_Transitions(( END )):::endClass
    
    
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
    |Process Type| Auto Launched Flow|
    |Label|Docusign | Autolaunched | Send Transition Docusign|
    |Status|Active|
    |Environments|Default|
    |Interview Label|Docusign | Autolaunched | Send Transition Docusign {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Transition](#get_transition)|
    |Next Node|[Get_Transition](#get_transition)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |activeAddOn|SObject|⬜|✅|⬜|Add_On_Products__c|<!-- -->|
    |recordId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    |templateId|String|⬜|✅|⬜|<!-- -->|Docusign Template Id|
    
    
    ## Flow Nodes Details
    
    ### xf
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|[xf](#xf)|
    |Action Type|Apex|
    |Action Name|dfsle__EnvelopeConfigurationBulkRequest|
    |Fault Connector|[Case_To_Transitions](#case_to_transitions)|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|dfsle__EnvelopeConfigurationBulkRequest|
    |Offset|0|
    |Envelope Configuration Id (input)|templateId|
    |Source Id (input)|Get_Transition.Id|
    
    
    ### Assign_Template_Id
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Template Id|
    |Connector|[xf](#xf)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |templateId| Assign|a6RUo000000EhOTMA0|
    
    
    
    
    ### Copy_10_of_Assign_Template_Id
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Copy 10 of Assign Template Id|
    |Connector|[xf](#xf)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |templateId| Assign|a6RUo000000F5aTMAS|
    
    
    
    
    ### Copy_1_of_Assign_Template_Id
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Copy 1 of Assign Template Id|
    |Connector|[xf](#xf)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |templateId| Assign|a6RUo000000EpHBMA0|
    
    
    
    
    ### Copy_2_of_Assign_Template_Id
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Copy 2 of Assign Template Id|
    |Connector|[xf](#xf)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |templateId| Assign|a6RUo000000F4JRMA0|
    
    
    
    
    ### Copy_3_of_Assign_Template_Id
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Copy 3 of Assign Template Id|
    |Connector|[xf](#xf)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |templateId| Assign|a6RUo000000F5SPMA0|
    
    
    
    
    ### Copy_4_of_Assign_Template_Id
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Copy 4 of Assign Template Id|
    |Connector|[xf](#xf)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |templateId| Assign|a6RUo000000F5YrMAK|
    
    
    
    
    ### Copy_5_of_Assign_Template_Id
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Copy 5 of Assign Template Id|
    |Connector|[xf](#xf)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |templateId| Assign|a6RUo000000F5U1MAK|
    
    
    
    
    ### Copy_7_of_Assign_Template_Id
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Copy 7 of Assign Template Id|
    |Connector|[xf](#xf)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |templateId| Assign|a6RUo000000F4RVMA0|
    
    
    
    
    ### Copy_8_of_Assign_Template_Id
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Copy 8 of Assign Template Id|
    |Connector|[xf](#xf)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |templateId| Assign|a6RUo000000F5VdMAK|
    
    
    
    
    ### Copy_9_of_Assign_Template_Id
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Copy 9 of Assign Template Id|
    |Connector|[xf](#xf)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |templateId| Assign|a6RUo000000F5DtMAK|
    
    
    
    
    ### Found
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Found?|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes_Found (Yes, Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|activeAddOn.Id| Is Null|⬜|
    
    
    
    
    ### Which_Docusign_to_Send
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Which Docusign to Send?|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule RKO_Simply_Term (RKO Simply Term)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Template_Id](#assign_template_id)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Transition.Service_Option__c| Equal To|Simply Retirement Unbundled|
    |2|Get_Transition.Transition_Type__c| Equal To|Termination|
    
    
    
    
    #### Rule Full_Service_Simply_Term (Full Service Simply Term)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Copy_2_of_Assign_Template_Id](#copy_2_of_assign_template_id)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Transition.Service_Option__c| Equal To|Simply Retirement Bundled|
    |2|Get_Transition.Transition_Type__c| Equal To|Termination|
    
    
    
    
    #### Rule RKO_Non_Simply (RKO Non-Simply)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Copy_1_of_Assign_Template_Id](#copy_1_of_assign_template_id)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Transition.Service_Option__c| Equal To|RK Only|
    |2|Get_Transition.Transition_Type__c| Equal To|Termination|
    
    
    
    
    #### Rule Full_Service_Schwab_Trust (Full Service Schwab Trust)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Copy_3_of_Assign_Template_Id](#copy_3_of_assign_template_id)|
    |Condition Logic|(1 OR 2) AND 3 AND 4|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Transition.Plan__r.Product_Type1__c| Equal To|401(k)|
    |2|Get_Transition.Plan__r.Product_Type1__c| Equal To|PEP|
    |3|Get_Transition.Transition_Type__c| Equal To|Termination|
    |4|Get_Transition.Custodian__c| Equal To|Schwab Trust|
    
    
    
    
    #### Rule Full_Service_Matrix_or_Schwab_BD_Term (Full Service Matrix or Schwab BD Term)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Copy_4_of_Assign_Template_Id](#copy_4_of_assign_template_id)|
    |Condition Logic|((1 OR 2) OR (3 OR 4)) AND 5|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Transition.Custodian__c| Equal To|MG Trust Company, LLC.|
    |2|Get_Transition.Custodian__c| Equal To|Schwab & Co., Inc.|
    |3|Get_Transition.Plan__r.Product_Type1__c| Equal To|401(k)|
    |4|Get_Transition.Plan__r.Product_Type1__c| Equal To|PEP|
    |5|Get_Transition.Transition_Type__c| Equal To|Termination|
    
    
    
    
    #### Rule Simply_Decons_and_RKO_Simply_Term_Merger (Simply Decons and RKO Simply Term/Merger)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Copy_5_of_Assign_Template_Id](#copy_5_of_assign_template_id)|
    |Condition Logic|(1 AND (3 OR 4)) OR (2 AND 3)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Transition.Transition_Type__c| Equal To|Deconversion|
    |2|Get_Transition.Transition_Type__c| Equal To|Termination/Merger|
    |3|Get_Transition.Service_Option__c| Equal To|Simply Retirement Unbundled|
    |4|Get_Transition.Service_Option__c| Equal To|Simply Retirement Bundled|
    
    
    
    
    #### Rule RKO_Non_Simply_w_Integration (RKO Non-Simply w/ Integration)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Can_you_Find_Active_Payroll_Integration](#can_you_find_active_payroll_integration)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Transition.Transition_Type__c| Equal To|Deconversion|
    |2|Get_Transition.Service_Option__c| Equal To|RK Only|
    
    
    
    
    #### Rule Full_Service_Schwab_Trust_Decon (Full Service Schwab Trust Decon)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Copy_7_of_Assign_Template_Id](#copy_7_of_assign_template_id)|
    |Condition Logic|1 AND 2 AND (3 OR 4)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Transition.Custodian__c| Equal To|Schwab Trust|
    |2|Get_Transition.Transition_Type__c| Equal To|Deconversion|
    |3|Get_Transition.Plan__r.Product_Type1__c| Equal To|401(k)|
    |4|Get_Transition.Plan__r.Product_Type1__c| Equal To|PEP|
    
    
    
    
    #### Rule Full_Service_Simply_Term_Merger (Full Service Simply Term/Merger)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Copy_8_of_Assign_Template_Id](#copy_8_of_assign_template_id)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Transition.Transition_Type__c| Equal To|Termination/Merger|
    |2|Get_Transition.Service_Option__c| Equal To|Simply Retirement Bundled|
    
    
    
    
    #### Rule Full_Service_Schwab_Trust_Term_Merger (Full Service Schwab Trust Term Merger)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Copy_9_of_Assign_Template_Id](#copy_9_of_assign_template_id)|
    |Condition Logic|1 AND 2 AND (3 OR 4)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Transition.Transition_Type__c| Equal To|Termination/Merger|
    |2|Get_Transition.Custodian__c| Equal To|Schwab Trust|
    |3|Get_Transition.Plan__r.Product_Type1__c| Equal To|401(k)|
    |4|Get_Transition.Plan__r.Product_Type1__c| Equal To|PEP|
    
    
    
    
    #### Rule Full_Service_Term_Merger_Matrix_or_Schwab (Full Service Term Merger - Matrix or Schwab BD)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Copy_10_of_Assign_Template_Id](#copy_10_of_assign_template_id)|
    |Condition Logic|1 AND (2 OR 3) AND (4 OR 5)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Transition.Transition_Type__c| Equal To|Termination/Merger|
    |2|Get_Transition.Custodian__c| Equal To|MG Trust Company, LLC.|
    |3|Get_Transition.Custodian__c| Equal To|Schwab & Co., Inc.|
    |4|Get_Transition.Plan__r.Product_Type1__c| Equal To|401(k)|
    |5|Get_Transition.Plan__r.Product_Type1__c| Equal To|PEP|
    
    
    
    
    ### Case_To_Transitions
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Case To Transitions|
    |Store Output Automatically|✅|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|Get_Transition.Account__c|
    |Department__c|Transitions|
    |Origin|Internal|
    |OwnerId|00500000006xUkf|
    |Plan__c|Get_Transition.Plan__c|
    |Sender_Role__c|Sponsor|
    |Subject|DocuSign Failed to Send Automatically|
    |Transition__c|Get_Transition.Id|
    
    
    
    
    ### Can_you_Find_Active_Payroll_Integration
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Add_On_Products__c|
    |Label|Can you Find Active Payroll Integration?|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|activeAddOn|
    |Queried Fields|- Id<br/>- Service_Option__c<br/>- Product_Status__c<br/>- Plan__c<br/>|
    |Connector|[Found](#found)|
    
    
    #### Filters (logic: **1 AND 2 AND ((3 OR 4) AND (5 OR 6 OR 7))**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Plan__c| Equal To|Get_Transition.Plan__c|
    |2|Plan__c| Is Null|<!-- -->|
    |3|Service_Option__c| Equal To|Enhanced Payroll Service|
    |4|Service_Option__c| Equal To|Direct Integration|
    |5|Product_Status__c| Equal To|New Integration Request|
    |6|Product_Status__c| Equal To|In Progress|
    |7|Product_Status__c| Equal To|Completed Setup|
    
    
    
    
    ### Get_Transition
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Transition__c|
    |Label|Get Transition|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Which_Docusign_to_Send](#which_docusign_to_send)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

