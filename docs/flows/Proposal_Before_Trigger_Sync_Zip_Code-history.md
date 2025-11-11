# Proposal_Before_Trigger_Sync_Zip_Code history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Proposal_Before_Trigger_Sync_Zip_Code-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record Before Save</b>"]):::startClass
    click START "#general-information" "376471768"
    
    Add_1_to_position2Check[\"🟰 <em></em><br/>Add 1 to position2Check"/]:::assignments
    click Add_1_to_position2Check "#add_1_to_position2check" "4273160172"
    
    Add_number_to_new_EIN[\"🟰 <em></em><br/>Add number to new EIN"/]:::assignments
    click Add_number_to_new_EIN "#add_number_to_new_ein" "2761430086"
    
    Set_number_of_characters_to_loop_over[\"🟰 <em></em><br/>Set number of characters to loop over"/]:::assignments
    click Set_number_of_characters_to_loop_over "#set_number_of_characters_to_loop_over" "696012419"
    
    Advisor_NPN_Need_Updating{"🔀 <em></em><br/>Advisor NPN Need Updating?"}:::decisions
    click Advisor_NPN_Need_Updating "#advisor_npn_need_updating" "2705121133"
    
    Are_you_a_number{"🔀 <em></em><br/>Are you a number?"}:::decisions
    click Are_you_a_number "#are_you_a_number" "1272069288"
    
    Does_TPA_EIN_need_correction{"🔀 <em></em><br/>Does TPA EIN need correction?"}:::decisions
    click Does_TPA_EIN_need_correction "#does_tpa_ein_need_correction" "3111366839"
    
    Does_Zip_Need_Update{"🔀 <em></em><br/>Does Zip Need Update?"}:::decisions
    click Does_Zip_Need_Update "#does_zip_need_update" "2020313954"
    
    EIN_Need_Updating{"🔀 <em></em><br/>EIN Need Updating?"}:::decisions
    click EIN_Need_Updating "#ein_need_updating" "1431170151"
    
    Stamp_new_TPA_ein[("🛠️ <em></em><br/>Stamp new TPA ein")]:::recordUpdates
    click Stamp_new_TPA_ein "#stamp_new_tpa_ein" "33053230"
    
    Sync_EIN[("🛠️ <em></em><br/>Sync EIN")]:::recordUpdates
    click Sync_EIN "#sync_ein" "164514324"
    
    Sync_Zip_Code[("🛠️ <em></em><br/>Sync Zip Code")]:::recordUpdates
    click Sync_Zip_Code "#sync_zip_code" "305869174"
    
    Update_Advisor_NPN[("🛠️ <em></em><br/>Update Advisor NPN")]:::recordUpdates
    click Update_Advisor_NPN "#update_advisor_npn" "2794130621"
    
    Add_1_to_position2Check --> Are_you_a_number
    Add_number_to_new_EIN --> Add_1_to_position2Check
    Set_number_of_characters_to_loop_over --> Are_you_a_number
    Advisor_NPN_Need_Updating --> |"NPN Missing"| Update_Advisor_NPN
    Advisor_NPN_Need_Updating --> |"Default Outcome"| END_Advisor_NPN_Need_Updating
    Are_you_a_number --> |"Number"| Add_number_to_new_EIN
    Are_you_a_number --> |"Not a number"| Add_1_to_position2Check
    Are_you_a_number --> |"Default Outcome"| Stamp_new_TPA_ein
    Does_TPA_EIN_need_correction --> |"TPA EIN needs scrubbing"| Set_number_of_characters_to_loop_over
    Does_TPA_EIN_need_correction --> |"Default Outcome"| Does_Zip_Need_Update
    Does_Zip_Need_Update --> |"No Account Found"| Advisor_NPN_Need_Updating
    Does_Zip_Need_Update --> |"Needs Update"| Sync_Zip_Code
    Does_Zip_Need_Update --> |"Zip Already Matches"| EIN_Need_Updating
    EIN_Need_Updating --> |"Need EIN Sync"| Sync_EIN
    EIN_Need_Updating --> |"EIN Already Matches"| Advisor_NPN_Need_Updating
    Stamp_new_TPA_ein --> Does_Zip_Need_Update
    Sync_EIN --> Advisor_NPN_Need_Updating
    Sync_Zip_Code --> EIN_Need_Updating
    Update_Advisor_NPN --> END_Update_Advisor_NPN
    START -->  Does_TPA_EIN_need_correction
    END_Advisor_NPN_Need_Updating(( END )):::endClass
    END_Update_Advisor_NPN(( END )):::endClass
    
    
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
    |Trigger Type| Record Before Save|
    |Record Trigger Type| Create And Update|
    |Label|Proposal | Before Trigger | Sync Zip Code|
    |Status|Active|
    |Filter Formula|NOT(ISBLANK({!$Record.Opportunity__c}))<br/>||<br/>(NOT(ISBLANK({!$Record.Advisor_Contact__c})) && ISBLANK({!$Record.Advisor_NPN__c}))<br/>||<br/>(NOT(ISNUMBER({!$Record.TPA_EIN__c})) && NOT(ISBLANK({!$Record.TPA_EIN__c})))|
    |Description|Added step to scrub extra characters from TPA ein (namely dashes, but will work for anything that isn't a number)<br/><br/>Syncs zip Code and EIN from account to props on prop update/creation|
    |Environments|Default|
    |Interview Label|Proposal | Before Trigger | Sync Zip Code {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Does_TPA_EIN_need_correction](#does_tpa_ein_need_correction)|
    |Next Node|[Does_TPA_EIN_need_correction](#does_tpa_ein_need_correction)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |einCharCount|Number|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |position2Check|Number|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |scrubbedEIN|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |character2Check|String|MID({!$Record.TPA_EIN__c},{!position2Check},1)|single character to check if number|
    |einCharCountFormula|Number|LEN({!$Record.TPA_EIN__c})|<!-- -->|
    |einTpaInteger|Boolean|ISNUMBER({!$Record.TPA_EIN__c})|is the TPA ein a number?  Or are there extra characters|
    |isThisANumber|Boolean|ISNUMBER({!character2Check})|Checks individual character from character2Check formula and returns if it's a number(true) or not|
    |ZipCodeReformat|Number|IF(LEN({!$Record.Opportunity__r.Account.BillingPostalCode})>=5,VALUE(LEFT({!$Record.Opportunity__r.Account.BillingPostalCode},5)),0)|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Add_1_to_position2Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add 1 to position2Check|
    |Connector|isGoTo: true<br/>targetReference: Are_you_a_number<br/>|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |position2Check| Add|1|
    
    
    
    
    ### Add_number_to_new_EIN
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add number to new EIN|
    |Connector|[Add_1_to_position2Check](#add_1_to_position2check)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |scrubbedEIN| Add|character2Check|
    
    
    
    
    ### Set_number_of_characters_to_loop_over
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Set number of characters to loop over|
    |Connector|[Are_you_a_number](#are_you_a_number)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |einCharCount| Assign|einCharCountFormula|
    
    
    
    
    ### Advisor_NPN_Need_Updating
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Advisor NPN Need Updating?|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule NPN_Missing (NPN Missing)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Advisor_NPN](#update_advisor_npn)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Advisor_NPN__c| Is Null|✅|
    |2|$Record.Advisor_Contact__c| Is Null|⬜|
    |3|$Record.Advisor_Contact__r.NPN_Number__c| Is Null|⬜|
    
    
    
    
    ### Are_you_a_number
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Are you a number?|
    |Default Connector|[Stamp_new_TPA_ein](#stamp_new_tpa_ein)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Number (Number)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Add_number_to_new_EIN](#add_number_to_new_ein)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|isThisANumber| Equal To|✅|
    |2|position2Check| Less Than Or Equal To|einCharCount|
    
    
    
    
    #### Rule Not_a_number (Not a number)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|isGoTo: true<br/>targetReference: Add_1_to_position2Check<br/>|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|isThisANumber| Equal To|⬜|
    |2|position2Check| Less Than Or Equal To|einCharCount|
    
    
    
    
    ### Does_TPA_EIN_need_correction
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Does TPA EIN need correction?|
    |Description|Our friends at Principal began sending a dash through in the EIN for some TPAs.  This breaks the sync from our SF to theirs, making this check necessary.|
    |Default Connector|[Does_Zip_Need_Update](#does_zip_need_update)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule TPA_EIN_needs_scrubbing (TPA EIN needs scrubbing)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Set_number_of_characters_to_loop_over](#set_number_of_characters_to_loop_over)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.TPA_EIN__c| Is Null|⬜|
    |2|einTpaInteger| Equal To|⬜|
    
    
    
    
    ### Does_Zip_Need_Update
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Does Zip Need Update?|
    |Default Connector|[EIN_Need_Updating](#ein_need_updating)|
    |Default Connector Label|Zip Already Matches|
    
    
    #### Rule No_Account_Found (No Account Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|isGoTo: true<br/>targetReference: Advisor_NPN_Need_Updating<br/>|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Opportunity__r.AccountId| Is Null|✅|
    
    
    
    
    #### Rule Needs_Update (Needs Update)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Sync_Zip_Code](#sync_zip_code)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Company_Zip_Postal_Code__c| Not Equal To|ZipCodeReformat|
    |2|ZipCodeReformat| Not Equal To|numberValue: 0<br/>|
    
    
    
    
    ### EIN_Need_Updating
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|EIN Need Updating?|
    |Default Connector|[Advisor_NPN_Need_Updating](#advisor_npn_need_updating)|
    |Default Connector Label|EIN Already Matches|
    
    
    #### Rule Need_EIN_Sync (Need EIN Sync)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Sync_EIN](#sync_ein)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Company_EIN__c| Not Equal To|$Record.Opportunity__r.Account.Employer_Identification_Number_EIN__c|
    |2|$Record.Opportunity__r.Account.Employer_Identification_Number_EIN__c| Is Null|⬜|
    
    
    
    
    ### Stamp_new_TPA_ein
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Stamp new TPA ein|
    |Input Reference|$Record|
    |Connector|[Does_Zip_Need_Update](#does_zip_need_update)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |TPA_EIN__c|scrubbedEIN|
    
    
    
    
    ### Sync_EIN
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Sync EIN|
    |Description|From Account -> Proposal|
    |Input Reference|$Record|
    |Connector|[Advisor_NPN_Need_Updating](#advisor_npn_need_updating)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Company_EIN__c|$Record.Opportunity__r.Account.Employer_Identification_Number_EIN__c|
    
    
    
    
    ### Sync_Zip_Code
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Sync Zip Code|
    |Input Reference|$Record|
    |Connector|[EIN_Need_Updating](#ein_need_updating)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Company_Zip_Postal_Code__c|ZipCodeReformat|
    
    
    
    
    ### Update_Advisor_NPN
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Advisor NPN|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Advisor_NPN__c|$Record.Advisor_Contact__r.NPN_Number__c|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

