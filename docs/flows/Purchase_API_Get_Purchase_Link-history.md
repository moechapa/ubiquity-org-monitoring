# Purchase_API_Get_Purchase_Link history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Purchase_API_Get_Purchase_Link-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>"]):::startClass
    click START "#general-information" "2921842346"
    
    Get_Paradigm_Access_Token("⚡ <em></em><br/>Get Paradigm Access Token"):::actionCalls
    click Get_Paradigm_Access_Token "#get_paradigm_access_token" "1641992725"
    
    Get_Paradigm_Purchase_Link("⚡ <em></em><br/>Get Paradigm Purchase Link"):::actionCalls
    click Get_Paradigm_Purchase_Link "#get_paradigm_purchase_link" "1244618527"
    
    add_Advisor_Roles[\"🟰 <em></em><br/>add Advisor Roles"/]:::assignments
    click add_Advisor_Roles "#add_advisor_roles" "4239047959"
    
    Add_Promo_Code[\"🟰 <em></em><br/>Add Promo Code"/]:::assignments
    click Add_Promo_Code "#add_promo_code" "387806414"
    
    Add_to_Collection[\"🟰 <em></em><br/>Add to Collection"/]:::assignments
    click Add_to_Collection "#add_to_collection" "1176225658"
    
    Assign_Access_Token[\"🟰 <em></em><br/>Assign Access Token"/]:::assignments
    click Assign_Access_Token "#assign_access_token" "127788408"
    
    Assign_Errors[\"🟰 <em></em><br/>Assign Errors"/]:::assignments
    click Assign_Errors "#assign_errors" "2592080215"
    
    Assign_Promo_Codes[\"🟰 <em></em><br/>Assign Promo Codes"/]:::assignments
    click Assign_Promo_Codes "#assign_promo_codes" "2105807200"
    
    Assign_Purchase_Link[\"🟰 <em></em><br/>Assign Purchase Link"/]:::assignments
    click Assign_Purchase_Link "#assign_purchase_link" "2414603047"
    
    Assign_Purchase_Payload[\"🟰 <em></em><br/>Assign Purchase Payload"/]:::assignments
    click Assign_Purchase_Payload "#assign_purchase_payload" "2698362714"
    
    Assign_Shared_Payload_Values[\"🟰 <em></em><br/>Assign Shared Payload Values"/]:::assignments
    click Assign_Shared_Payload_Values "#assign_shared_payload_values" "207018201"
    
    Assign_to_Payload[\"🟰 <em></em><br/>Assign to Payload"/]:::assignments
    click Assign_to_Payload "#assign_to_payload" "4018645532"
    
    Assign_Token_Response_Code[\"🟰 <em></em><br/>Assign Token Response Code"/]:::assignments
    click Assign_Token_Response_Code "#assign_token_response_code" "2839188403"
    
    Auth_Credentials[\"🟰 <em></em><br/>Auth Credentials"/]:::assignments
    click Auth_Credentials "#auth_credentials" "3745517181"
    
    Auth_Credentials_UBQT[\"🟰 <em></em><br/>Auth Credentials"/]:::assignments
    click Auth_Credentials_UBQT "#auth_credentials_ubqt" "4175178841"
    
    Copy_1_of_Assign_Purchase_Payload[\"🟰 <em></em><br/>Assign Purchase Payload"/]:::assignments
    click Copy_1_of_Assign_Purchase_Payload "#copy_1_of_assign_purchase_payload" "881512795"
    
    Map_Advisor_Fields[\"🟰 <em></em><br/>Map Advisor Fields"/]:::assignments
    click Map_Advisor_Fields "#map_advisor_fields" "3342407646"
    
    MML_Auth_Credentials[\"🟰 <em></em><br/>MML Auth Credentials"/]:::assignments
    click MML_Auth_Credentials "#mml_auth_credentials" "2603597855"
    
    Multiple_Promo_Codes{"🔀 <em></em><br/>Multiple Promo Codes?"}:::decisions
    click Multiple_Promo_Codes "#multiple_promo_codes" "326228718"
    
    Promo_Code_Populated{"🔀 <em></em><br/>Promo Code Populated?"}:::decisions
    click Promo_Code_Populated "#promo_code_populated" "1931630124"
    
    Response_200_Yes{"🔀 <em></em><br/>Response 200?"}:::decisions
    click Response_200_Yes "#response_200_yes" "4120272244"
    
    Token_Success{"🔀 <em></em><br/>Response Code = 200?"}:::decisions
    click Token_Success "#token_success" "2736347348"
    
    Which_Org{"🔀 <em></em><br/>Which Org?"}:::decisions
    click Which_Org "#which_org" "3095811689"
    
    Which_Partner{"🔀 <em></em><br/>Which Partner?"}:::decisions
    click Which_Partner "#which_partner" "2794729747"
    
    Which_Partner_Auth{"🔀 <em></em><br/>Which Partner"}:::decisions
    click Which_Partner_Auth "#which_partner_auth" "3791130693"
    
    Loop_thru_Advisors{{"🔁 <em></em><br/>Loop thru Advisors"}}:::loops
    click Loop_thru_Advisors "#loop_thru_advisors" "1101068325"
    
    Get_Advisors_Settings[("🔍 <em></em><br/>Get Advisors Settings")]:::recordLookups
    click Get_Advisors_Settings "#get_advisors_settings" "1721050838"
    
    Get_Auth_Settings[("🔍 <em></em><br/>Get Auth Settings")]:::recordLookups
    click Get_Auth_Settings "#get_auth_settings" "2245527062"
    
    Get_MML_Auth_Settings[("🔍 <em></em><br/>Get MML Auth Settings")]:::recordLookups
    click Get_MML_Auth_Settings "#get_mml_auth_settings" "4174182970"
    
    Get_Org_Env[("🔍 <em></em><br/>Get Org Env")]:::recordLookups
    click Get_Org_Env "#get_org_env" "2133779905"
    
    get_Proposal[("🔍 <em></em><br/>get Proposal")]:::recordLookups
    click get_Proposal "#get_proposal" "3950353892"
    
    Get_UBQT_Auth_Settings[("🔍 <em></em><br/>Get UBQT Auth Settings")]:::recordLookups
    click Get_UBQT_Auth_Settings "#get_ubqt_auth_settings" "4282428435"
    
    Get_Sources_for_Payload[["🔗 <em>Subflow</em><br/>Get Sources for Payload"]]:::subflows
    click Get_Sources_for_Payload "#get_sources_for_payload" "698606911"
    
    Get_Paradigm_Access_Token --> Token_Success
    Get_Paradigm_Purchase_Link --> Response_200_Yes
    add_Advisor_Roles --> Loop_thru_Advisors
    Add_Promo_Code --> Multiple_Promo_Codes
    Add_to_Collection --> Loop_thru_Advisors
    Assign_Access_Token --> Get_Sources_for_Payload
    Assign_Errors --> END_Assign_Errors
    Assign_Promo_Codes --> Assign_to_Payload
    Assign_Purchase_Link --> END_Assign_Purchase_Link
    Assign_Purchase_Payload --> Promo_Code_Populated
    Assign_Shared_Payload_Values --> Get_Paradigm_Purchase_Link
    Assign_to_Payload --> Assign_Shared_Payload_Values
    Assign_Token_Response_Code --> END_Assign_Token_Response_Code
    Auth_Credentials --> Get_Paradigm_Access_Token
    Auth_Credentials_UBQT --> Get_Paradigm_Access_Token
    Copy_1_of_Assign_Purchase_Payload --> Promo_Code_Populated
    Map_Advisor_Fields --> Add_to_Collection
    MML_Auth_Credentials --> Get_Paradigm_Access_Token
    Multiple_Promo_Codes --> |"Multiple Promo Codes on Prop"| Add_Promo_Code
    Multiple_Promo_Codes --> |"Single Code on Prop"| Assign_Promo_Codes
    Promo_Code_Populated --> |"Yes"| Multiple_Promo_Codes
    Promo_Code_Populated --> |"Default Outcome"| Assign_Shared_Payload_Values
    Response_200_Yes --> |"200"| Assign_Purchase_Link
    Response_200_Yes --> |"Default Outcome"| Assign_Errors
    Token_Success --> |"200"| Assign_Access_Token
    Token_Success --> |"Default Outcome"| Assign_Token_Response_Code
    Which_Org --> |"PROD"| Which_Partner_Auth
    Which_Org --> |"Sandbox"| Get_Auth_Settings
    Which_Org --> |"Default Outcome"| Get_Paradigm_Access_Token
    Which_Partner --> |"MML"| Get_Advisors_Settings
    Which_Partner --> |"UBQT Internal"| Copy_1_of_Assign_Purchase_Payload
    Which_Partner --> |"Default Outcome"| Promo_Code_Populated
    Which_Partner_Auth --> |"MML"| Get_MML_Auth_Settings
    Which_Partner_Auth --> |"Default Outcome"| Get_UBQT_Auth_Settings
    Loop_thru_Advisors --> |"For Each"|Map_Advisor_Fields
    Loop_thru_Advisors ---> |"After Last"|Assign_Purchase_Payload
    Get_Advisors_Settings --> add_Advisor_Roles
    Get_Auth_Settings --> Auth_Credentials
    Get_MML_Auth_Settings --> MML_Auth_Credentials
    Get_Org_Env --> Which_Org
    get_Proposal --> Get_Org_Env
    Get_UBQT_Auth_Settings --> Auth_Credentials_UBQT
    START -->  get_Proposal
    Get_Sources_for_Payload --> Which_Partner
    END_Assign_Errors(( END )):::endClass
    END_Assign_Purchase_Link(( END )):::endClass
    END_Assign_Token_Response_Code(( END )):::endClass
    
    
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
    |Label|Purchase API | Get Purchase Link|
    |Status|Active|
    |Description|Adding Restatement Date for OPD and Proposal Name in payload - Moe 04.18.2025|
    |Environments|Default|
    |Interview Label|Purchase API | Get Purchase Link {!$Flow.CurrentDateTime}|
    |Run In Mode| System Mode Without Sharing|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[get_Proposal](#get_proposal)|
    |Next Node|[get_Proposal](#get_proposal)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |accessToken|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |addSources|Apex|✅|⬜|⬜|<!-- -->|A list of Sources to be added to the purchase Payload. Passed though a subflow|
    |advisorActorsCollection|Apex|✅|✅|⬜|<!-- -->|A list of Advisors (actors) for purchase Payload|
    |advisorCalloutResponceException|String|⬜|⬜|✅|<!-- -->|<!-- -->|
    |advisorCalloutResponseCode|Number|⬜|⬜|✅|<!-- -->|Response Code from Advisor API callout|
    |advisorPayload|Apex|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |advisorsActorSingle|Apex|⬜|⬜|⬜|<!-- -->|Will be used to populate advisorsActorsCollection|
    |advisorsRolesCollection|String|✅|⬜|⬜|<!-- -->|Roles for PurchasePayload on Advisors section|
    |advisorsRoleSingle|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |advisorUsersCollection|Apex|✅|✅|⬜|<!-- -->|Advisors Collection to be sent via Advisor API|
    |advisorUserSingle|Apex|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |firmCalloutResponseCode|Number|⬜|⬜|✅|<!-- -->|<!-- -->|
    |firmCalloutResponseException|String|⬜|⬜|✅|<!-- -->|<!-- -->|
    |firmPayload|Apex|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |planId|String|⬜|⬜|✅|<!-- -->|<!-- -->|
    |promoCodesCollection|String|✅|⬜|⬜|<!-- -->|Collection of Promo Codes|
    |purchaseCalloutResponseCode|Number|⬜|⬜|✅|<!-- -->|<!-- -->|
    |purchaseCalloutResponseException|String|⬜|⬜|✅|<!-- -->|<!-- -->|
    |purchaseLink|String|⬜|⬜|✅|<!-- -->|<!-- -->|
    |purchasePayload|Apex|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |recordId|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |responseCode|String|⬜|⬜|✅|<!-- -->|<!-- -->|
    |tokenCalloutResponseCode|Number|⬜|⬜|✅|<!-- -->|<!-- -->|
    |tokenCalloutResponseException|String|⬜|⬜|✅|<!-- -->|<!-- -->|
    |tokenCredentials|Apex|⬜|⬜|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |allowsHardshipWithdrawals|Boolean|IF(TEXT({!get_Proposal.Hardships__c}) = "Yes", TRUE, FALSE)|<!-- -->|
    |allowsLoans|Boolean|IF(TEXT({!get_Proposal.Loans__c}) = "Yes", TRUE, FALSE)|<!-- -->|
    |autoEnrollApplication|String|"ALL"|<!-- -->|
    |autoEnrollmentType|String|CASE(TEXT({!get_Proposal.Auto_Enrollment__c}), <br/>"EACA", "EACA", <br/>"QACA", "QACA",<br/>"ACA", "ACA",<br/>"")|<!-- -->|
    |bpsAmount|Number|VALUE({!get_Proposal.Advisor_Compensation_Amount__c})|<!-- -->|
    |BusDaysCalculator|Date|CASE(<br/>MOD(TODAY() - DATE(1900, 1, 7), 7),<br/>0, TODAY() + 29,<br/>1, TODAY() + 31,<br/>2, TODAY() + 31,<br/>3, TODAY() + 31,<br/>4, TODAY() + 31,<br/>5, TODAY() + 33,<br/>6, TODAY() + 32,<br/>TODAY()<br/>)|Will add 21 Business Days|
    |companyPhone|String|IF(LEN({!formattedPhone}) = 10 && ISNUMBER({!formattedPhone}),<br/>LEFT({!formattedPhone}, 3) & "-" & MID({!formattedPhone}, 4, 3) & "-" & RIGHT({!formattedPhone}, 4),<br/>"")|Transforms from XXXXXXXXXX to XXX-XXX-XXXX|
    |eligibilityAgeInteger|Number|IF( ISPICKVAL({!get_Proposal.Eligibility_Age__c}, "None"), <br/>0, <br/>VALUE(TEXT({!get_Proposal.Eligibility_Age__c})))|<!-- -->|
    |employerPaidParticipantFees|Boolean|IF(<br/>    ISPICKVAL({!get_Proposal.Participant_Fee_Payment__c}, "Employer"),<br/>   TRUE,<br/>    FALSE<br/>)|Maps to Partipant_Fee_Payment__c|
    |entry|String|CASE(TEXT({!get_Proposal.Plan_Entry_Frequency__c}),<br/>  "Immediate", "DAILY",<br/>  "Monthly", "MONTHLY",<br/>  "Quarterly", "QUARTERLY",<br/>  "Semi-Annually", "SEMI_ANNUALLY",<br/>"OTHER"<br/>)|Value will be determined based on a Plan_Entry_Frequency__c|
    |formattedPhone|String|RIGHT(SUBSTITUTE(SUBSTITUTE(SUBSTITUTE(SUBSTITUTE(SUBSTITUTE({!get_Proposal.Contact_Phone_Number__c}, " ", ""), "+", ""), "-", ""), ")", ""), "(", ""),10)|Transforms the phone number to sting of XXXXXXXXXX|
    |leftmostPromoCode|String|BLANKVALUE(LEFT({!get_Proposal.Promo_Code__c},FIND(";",{!get_Proposal.Promo_Code__c})-1),<br/>{!get_Proposal.Promo_Code__c})|<!-- -->|
    |permissibleWithdrawal|Boolean|IF(<br/>    {!get_Proposal.Older_Than_3_Years__c} = TRUE && {!get_Proposal.Number_of_Employees__c} >= 11,<br/>    TRUE,<br/>    FALSE<br/>)|Utilized for purchase payload mapping for api v2.7|
    |permissibleWithdrawalDays|Number|IF(<br/>    {!get_Proposal.Older_Than_3_Years__c} = TRUE && {!get_Proposal.Number_of_Employees__c} >= 11,<br/>    30,<br/>    NULL<br/>)|Utilized for purchase payload mapping for api v2.7|
    |planEffectiveDate|Date|IF(<br/>    ISPICKVAL({!get_Proposal.Plan_Type__c}, "New Plan"),<br/>    IF(<br/>        ISPICKVAL({!get_Proposal.Prior_Year_Profit_Sharing_Contribution__c}, "Yes"),<br/>        {!get_Proposal.Profit_Sharing_Plan_Effective_Date__c},<br/>        IF(<br/>            ISPICKVAL({!get_Proposal.Prior_Year_Profit_Sharing_Contribution__c}, "No"),<br/>           {!get_Proposal.Plan_Effective_Date__c},<br/>            IF(<br/>                ISBLANK(TEXT({!get_Proposal.Prior_Year_Profit_Sharing_Contribution__c})),<br/>                {!get_Proposal.Plan_Effective_Date__c},<br/>                NULL<br/>            )<br/>        )<br/>    ),<br/>    IF(<br/>        ISPICKVAL({!get_Proposal.Plan_Type__c}, "Conversion Plan"),<br/>         {!get_Proposal.Original_Effective_Date__c},<br/>        NULL<br/>    )<br/>)|<!-- -->|
    |promoCodesLeftmostRemoved|String|SUBSTITUTE({!get_Proposal.Promo_Code__c}, {!leftmostPromoCode}&";", "")|<!-- -->|
    |serviceEligibility|String|CASE(TEXT({!get_Proposal.Plan_Eligibility__c}),<br/>  "Immediate", "IMMEDIATE",<br/>  "One Month", "ONE_MONTH",<br/>  "Two Months", "TWO_MONTHS",<br/>  "Three Months", "THREE_MONTHS",<br/> "6 Months", "SIX_MONTHS",<br/> "1 Year (1000 Hours)", "ONE_YEAR_HOURS",<br/> "1 Year", "TWELVE_MONTHS",<br/>""<br/>)|This will be calculated based of Plan_Eligibilty__c value|
    |stateCode|String|IF(<br/>LEN({!get_Proposal.Company_State__c}) = 2,<br/>{!get_Proposal.Company_State__c},<br/>CASE({!get_Proposal.Company_State__c},<br/>"Alabama", "AL",<br/>"Alaska", "AK",<br/>"Arizona", "AZ",<br/>"Arkansas", "AR",<br/>"California", "CA",<br/>"Colorado", "CO",<br/>"Connecticut", "CT",<br/>"Delaware", "DE",<br/>"Florida", "FL",<br/>"Georgia", "GA",<br/>"Hawaii", "HI",<br/>"Idaho", "ID",<br/>"Illinois", "IL",<br/>"Indiana", "IN",<br/>"Iowa", "IA",<br/>"Kansas", "KS",<br/>"Kentucky", "KY",<br/>"Louisiana", "LA",<br/>"Maine", "ME",<br/>"Maryland", "MD",<br/>"Massachusetts", "MA",<br/>"Michigan", "MI",<br/>"Minnesota", "MN",<br/>"Mississippi", "MS",<br/>"Missouri", "MO",<br/>"Montana", "MT",<br/>"Nebraska", "NE",<br/>"Nevada", "NV",<br/>"New Hampshire", "NH",<br/>"New Jersey", "NJ",<br/>"New Mexico", "NM",<br/>"New York", "NY",<br/>"North Carolina", "NC",<br/>"North Dakota", "ND",<br/>"Ohio", "OH",<br/>"Oklahoma", "OK",<br/>"Oregon", "OR",<br/>"Pennsylvania", "PA",<br/>"Rhode Island", "RI",<br/>"South Carolina", "SC",<br/>"South Dakota", "SD",<br/>"Tennessee", "TN",<br/>"Texas", "TX",<br/>"Utah", "UT",<br/>"Vermont", "VT",<br/>"Virginia", "VA",<br/>"Washington", "WA",<br/>"West Virginia", "WV",<br/>"Wisconsin", "WI",<br/>"Wyoming", "WY",<br/>""<br/>)<br/>)|2 Letter Code for Company_State__c|
    
    
    ## Constants
    
    |Name|Data Type|Value|Description|
    |:-- |:--:|:--:|:--  |
    |apiVersion|String|V2_7|Current Paradigm Purchase API being used|
    
    
    ## Flow Nodes Details
    
    ### Get_Paradigm_Access_Token
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Get Paradigm Access Token|
    |Action Type|External Service|
    |Action Name|PostParadigmAccessToken.Get Access Token|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|PostParadigmAccessToken.Get Access Token|
    |Offset|0|
    |Store Output Automatically|✅|
    |Body (input)|tokenCredentials|
    |Connector|[Token_Success](#token_success)|
    
    
    ### Get_Paradigm_Purchase_Link
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Get Paradigm Purchase Link|
    |Action Type|External Service|
    |Action Name|PostParadigmPurchaseLink.Get Paradigm Purchase Link|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|PostParadigmPurchaseLink.Get Paradigm Purchase Link|
    |Offset|0|
    |Store Output Automatically|✅|
    |Api_key (input)|accessToken|
    |Body (input)|purchasePayload|
    |Connector|[Response_200_Yes](#response_200_yes)|
    
    
    ### add_Advisor_Roles
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|add Advisor Roles|
    |Connector|[Loop_thru_Advisors](#loop_thru_advisors)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |advisorsRolesCollection| Add|advisorsRoleSingle|
    
    
    
    
    ### Add_Promo_Code
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add Promo Code|
    |Connector|isGoTo: true<br/>targetReference: Multiple_Promo_Codes<br/>|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |promoCodesCollection| Add|leftmostPromoCode|
    |get_Proposal.Promo_Code__c| Assign|promoCodesLeftmostRemoved|
    
    
    
    
    ### Add_to_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add to Collection|
    |Connector|[Loop_thru_Advisors](#loop_thru_advisors)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |advisorActorsCollection| Add|advisorsActorSingle|
    
    
    
    
    ### Assign_Access_Token
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Access Token|
    |Connector|[Get_Sources_for_Payload](#get_sources_for_payload)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |accessToken| Assign|Get_Paradigm_Access_Token.2XX.accessToken|
    
    
    
    
    ### Assign_Errors
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Errors|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |purchaseCalloutResponseException| Assign|Get_Paradigm_Purchase_Link.defaultExc|
    |purchaseCalloutResponseCode| Assign|Get_Paradigm_Purchase_Link.responseCode|
    
    
    
    
    ### Assign_Promo_Codes
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Promo Codes|
    |Connector|[Assign_to_Payload](#assign_to_payload)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |promoCodesCollection| Add|get_Proposal.Promo_Code__c|
    
    
    
    
    ### Assign_Purchase_Link
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Purchase Link|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |purchaseLink| Assign|Get_Paradigm_Purchase_Link.2XX.purchaseLink|
    |planId| Assign|Get_Paradigm_Purchase_Link.2XX.planId|
    |purchaseCalloutResponseCode| Assign|Get_Paradigm_Purchase_Link.responseCode|
    
    
    
    
    ### Assign_Purchase_Payload
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Purchase Payload|
    |Connector|[Promo_Code_Populated](#promo_code_populated)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |purchasePayload.productCode| Assign|get_Proposal.Product_Code__c|
    |purchasePayload.numberOfEmployees| Assign|get_Proposal.Number_of_Employees__c|
    |purchasePayload.companyName| Assign|get_Proposal.Client_Company_Name__c|
    |purchasePayload.companyPhone| Assign|companyPhone|
    |purchasePayload.sponsorFirstName| Assign|get_Proposal.Company_Contact_First_Name__c|
    |purchasePayload.sponsorLastName| Assign|get_Proposal.Company_Contact_Last_Name__c|
    |purchasePayload.sponsorEmail| Assign|get_Proposal.Company_Email__c|
    |purchasePayload.stateCode| Assign|stateCode|
    |purchasePayload.autoEnrollmentType| Assign|autoEnrollmentType|
    |purchasePayload.autoDeferralType| Assign|get_Proposal.Auto_Deferral_Type__c|
    |purchasePayload.minimumAutoDeferralPercentage| Assign|get_Proposal.Min_Auto_Deferral_Percentage__c|
    |purchasePayload.maximumAutoDeferralPercentage| Assign|get_Proposal.Max_Auto_Deferral_Percentage__c|
    |purchasePayload.yearlyAutoDeferralPercentageIncrease| Assign|get_Proposal.Yearly_Auto_Deferral_Percentage_Increase__c|
    |purchasePayload.requiredAge.year| Assign|eligibilityAgeInteger|
    |purchasePayload.requiredAge.month| Assign|numberValue: 0<br/>|
    |purchasePayload.entry| Assign|entry|
    |purchasePayload.serviceEligibility| Assign|serviceEligibility|
    |purchasePayload.addSources| Assign|addSources|
    |purchasePayload.allowsLoans| Assign|allowsLoans|
    |purchasePayload.allowsHardshipWithdrawals| Assign|allowsHardshipWithdrawals|
    |purchasePayload.planName| Assign|get_Proposal.Plan_Name__c|
    |purchasePayload.planEffectiveDate| Assign|planEffectiveDate|
    |purchasePayload.eligibilityCalculationMethod| Assign|ELAPSED_TIME|
    |purchasePayload.isConversion| Assign|get_Proposal.Conversion_Needed__c|
    |purchasePayload.advisors.actors| Assign|advisorActorsCollection|
    |purchasePayload.advisors.feeCollectionSource| Assign|ASSETS|
    |purchasePayload.advisors.bpsAmount| Assign|bpsAmount|
    |purchasePayload.advisors.requireReview| Assign|⬜|
    |purchasePayload.portfolioCode| Assign|get_Proposal.Portfolio_Code__c|
    |purchasePayload.advisors.disbursedByUbiquity| Assign|✅|
    |purchasePayload.employerPaidParticipantFees| Assign|employerPaidParticipantFees|
    |purchasePayload.irsPlanNumber| Assign|get_Proposal.Plan_Number__c|
    |purchasePayload.lastRestatementDate| Assign|get_Proposal.Restatement_Date__c|
    
    
    
    
    ### Assign_Shared_Payload_Values
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Shared Payload Values|
    |Description|Assigns purchase payload values that are independent of a partner or proposal type.|
    |Connector|[Get_Paradigm_Purchase_Link](#get_paradigm_purchase_link)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |purchasePayload.apiVersion| Assign|apiVersion|
    |purchasePayload.permissibleWithdrawal| Assign|permissibleWithdrawal|
    |purchasePayload.permissibleWithdrawalDays| Assign|permissibleWithdrawalDays|
    |purchasePayload.autoEnrollApplication| Assign|autoEnrollApplication|
    |purchasePayload.proposal| Assign|get_Proposal.Name|
    
    
    
    
    ### Assign_to_Payload
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign to Payload|
    |Connector|[Assign_Shared_Payload_Values](#assign_shared_payload_values)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |purchasePayload.promoCodes| Assign|promoCodesCollection|
    
    
    
    
    ### Assign_Token_Response_Code
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Token Response Code|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |tokenCalloutResponseCode| Assign|Get_Paradigm_Access_Token.responseCode|
    |tokenCalloutResponseException| Assign|Get_Paradigm_Access_Token.defaultExc|
    
    
    
    
    ### Auth_Credentials
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Auth Credentials|
    |Connector|[Get_Paradigm_Access_Token](#get_paradigm_access_token)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |tokenCredentials.username| Assign|Get_Auth_Settings.Username__c|
    |tokenCredentials.password| Assign|Get_Auth_Settings.Password__c|
    
    
    
    
    ### Auth_Credentials_UBQT
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Auth Credentials|
    |Connector|[Get_Paradigm_Access_Token](#get_paradigm_access_token)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |tokenCredentials.username| Assign|Get_UBQT_Auth_Settings.Username__c|
    |tokenCredentials.password| Assign|Get_UBQT_Auth_Settings.Password__c|
    
    
    
    
    ### Copy_1_of_Assign_Purchase_Payload
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Purchase Payload|
    |Connector|[Promo_Code_Populated](#promo_code_populated)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |purchasePayload.productCode| Assign|get_Proposal.Product_Code__c|
    |purchasePayload.numberOfEmployees| Assign|get_Proposal.Number_of_Employees__c|
    |purchasePayload.companyName| Assign|get_Proposal.Client_Company_Name__c|
    |purchasePayload.companyPhone| Assign|companyPhone|
    |purchasePayload.sponsorFirstName| Assign|get_Proposal.Company_Contact_First_Name__c|
    |purchasePayload.sponsorLastName| Assign|get_Proposal.Company_Contact_Last_Name__c|
    |purchasePayload.sponsorEmail| Assign|get_Proposal.Company_Email__c|
    |purchasePayload.stateCode| Assign|stateCode|
    |purchasePayload.autoEnrollmentType| Assign|autoEnrollmentType|
    |purchasePayload.autoDeferralType| Assign|get_Proposal.Auto_Deferral_Type__c|
    |purchasePayload.minimumAutoDeferralPercentage| Assign|get_Proposal.Min_Auto_Deferral_Percentage__c|
    |purchasePayload.maximumAutoDeferralPercentage| Assign|get_Proposal.Max_Auto_Deferral_Percentage__c|
    |purchasePayload.yearlyAutoDeferralPercentageIncrease| Assign|get_Proposal.Yearly_Auto_Deferral_Percentage_Increase__c|
    |purchasePayload.requiredAge.year| Assign|eligibilityAgeInteger|
    |purchasePayload.requiredAge.month| Assign|numberValue: 0<br/>|
    |purchasePayload.entry| Assign|entry|
    |purchasePayload.serviceEligibility| Assign|serviceEligibility|
    |purchasePayload.addSources| Assign|addSources|
    |purchasePayload.allowsLoans| Assign|allowsLoans|
    |purchasePayload.allowsHardshipWithdrawals| Assign|allowsHardshipWithdrawals|
    |purchasePayload.planName| Assign|get_Proposal.Plan_Name__c|
    |purchasePayload.planEffectiveDate| Assign|planEffectiveDate|
    |purchasePayload.eligibilityCalculationMethod| Assign|ELAPSED_TIME|
    |purchasePayload.isConversion| Assign|get_Proposal.Conversion_Needed__c|
    |purchasePayload.portfolioCode| Assign|get_Proposal.Portfolio_Code__c|
    |purchasePayload.lastRestatementDate| Assign|get_Proposal.Restatement_Date__c|
    
    
    
    
    ### Map_Advisor_Fields
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Map Advisor Fields|
    |Connector|[Add_to_Collection](#add_to_collection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |advisorsActorSingle.advisorNpn| Assign|Loop_thru_Advisors.NPN__c|
    |advisorsActorSingle.advisorCrd| Assign|Loop_thru_Advisors.CRD__c|
    |advisorsActorSingle.advisorType| Assign|Loop_thru_Advisors.Advisor_Type__c|
    |advisorsActorSingle.advisorService| Assign|Loop_thru_Advisors.Advisor_Service__c|
    |advisorsActorSingle.commissionPct| Assign|Loop_thru_Advisors.Commission_Percentage__c|
    |advisorsActorSingle.requireReview| Assign|Loop_thru_Advisors.Require_Review__c|
    |advisorsActorSingle.isPrimary| Assign|Loop_thru_Advisors.isPrimary__c|
    |advisorsActorSingle.roles| Assign|advisorsRolesCollection|
    
    
    
    
    ### MML_Auth_Credentials
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|MML Auth Credentials|
    |Connector|[Get_Paradigm_Access_Token](#get_paradigm_access_token)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |tokenCredentials.username| Assign|Get_MML_Auth_Settings.Username__c|
    |tokenCredentials.password| Assign|Get_MML_Auth_Settings.Password__c|
    
    
    
    
    ### Multiple_Promo_Codes
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Multiple Promo Codes?|
    |Default Connector|[Assign_Promo_Codes](#assign_promo_codes)|
    |Default Connector Label|Single Code on Prop|
    
    
    #### Rule Multiple_Promo_Codes_on_Prop (Multiple Promo Codes on Prop)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Add_Promo_Code](#add_promo_code)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|get_Proposal.Promo_Code__c| Contains|;|
    
    
    
    
    ### Promo_Code_Populated
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Promo Code Populated?|
    |Default Connector|[Assign_Shared_Payload_Values](#assign_shared_payload_values)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Multiple_Promo_Codes](#multiple_promo_codes)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|get_Proposal.Promo_Code__c| Is Blank|⬜|
    |2|get_Proposal.Promo_Code__c| Is Null|⬜|
    
    
    
    
    ### Response_200_Yes
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Response 200?|
    |Default Connector|[Assign_Errors](#assign_errors)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes200 (200)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Purchase_Link](#assign_purchase_link)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Paradigm_Purchase_Link.responseCode| Equal To|200|
    
    
    
    
    ### Token_Success
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Response Code = 200?|
    |Default Connector|[Assign_Token_Response_Code](#assign_token_response_code)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule X200 (200)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Access_Token](#assign_access_token)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Paradigm_Access_Token.responseCode| Equal To|200|
    
    
    
    
    ### Which_Org
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Which Org?|
    |Default Connector|[Get_Paradigm_Access_Token](#get_paradigm_access_token)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule PROD (PROD)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Which_Partner_Auth](#which_partner_auth)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Org_Env.IsSandbox| Equal To|⬜|
    
    
    
    
    #### Rule Sandbox (Sandbox)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Auth_Settings](#get_auth_settings)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Org_Env.IsSandbox| Equal To|✅|
    
    
    
    
    ### Which_Partner
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Which Partner?|
    |Default Connector|[Promo_Code_Populated](#promo_code_populated)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule MML (MML)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Advisors_Settings](#get_advisors_settings)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|get_Proposal.Lead_Source__c| Equal To|MML|
    
    
    
    
    #### Rule UBQT_Internal (UBQT Internal)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Copy_1_of_Assign_Purchase_Payload](#copy_1_of_assign_purchase_payload)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|get_Proposal.Lead_Source__c| Is Blank|✅|
    
    
    
    
    ### Which_Partner_Auth
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Which Partner|
    |Default Connector|[Get_UBQT_Auth_Settings](#get_ubqt_auth_settings)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule MML_Auth (MML)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_MML_Auth_Settings](#get_mml_auth_settings)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|get_Proposal.Lead_Source__c| Equal To|MML|
    
    
    
    
    ### Loop_thru_Advisors
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Loop thru Advisors|
    |Collection Reference|[Get_Advisors_Settings](#get_advisors_settings)|
    |Iteration Order|Asc|
    |Next Value Connector|[Map_Advisor_Fields](#map_advisor_fields)|
    |No More Values Connector|[Assign_Purchase_Payload](#assign_purchase_payload)|
    
    
    ### Get_Advisors_Settings
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Partner_Advisors__mdt|
    |Label|Get Advisors Settings|
    |Description|Pull related Advisors|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Store Output Automatically|✅|
    |Connector|[add_Advisor_Roles](#add_advisor_roles)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Firm_Name__c| Equal To|get_Proposal.Firm_Name__c|
    
    
    
    
    ### Get_Auth_Settings
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Paradigm_Endpoint__mdt|
    |Label|Get Auth Settings|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Auth_Credentials](#auth_credentials)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Environment__c| Equal To|Sandbox|
    
    
    
    
    ### Get_MML_Auth_Settings
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Paradigm_Endpoint__mdt|
    |Label|Get MML Auth Settings|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[MML_Auth_Credentials](#mml_auth_credentials)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Environment__c| Equal To|Production|
    |2|Partner__c| Equal To|MML|
    
    
    
    
    ### Get_Org_Env
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Organization|
    |Label|Get Org Env|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Which_Org](#which_org)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$Organization.Id|
    
    
    
    
    ### get_Proposal
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Proposal__c|
    |Label|get Proposal|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Get_Org_Env](#get_org_env)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Get_UBQT_Auth_Settings
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Paradigm_Endpoint__mdt|
    |Label|Get UBQT Auth Settings|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Auth_Credentials_UBQT](#auth_credentials_ubqt)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Environment__c| Equal To|Production|
    |2|Partner__c| Equal To|Internal - Ubiquity|
    
    
    
    
    ### Get_Sources_for_Payload
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Subflow|
    |Label|Get Sources for Payload|
    |Flow Name|PurchaseAPI_Helper_Add_Sources|
    |Output Assignments|assignToReference: addSources<br/>name: addSources<br/>|
    |Connector|[Which_Partner](#which_partner)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |<!-- -->|get_Proposal.Id|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

