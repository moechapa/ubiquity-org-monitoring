# Purchase_API_Make_Firm_AP_and_Advisor_API_callout history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Purchase_API_Make_Firm_AP_and_Advisor_API_callout-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>"]):::startClass
    click START "#general-information" "1554192520"
    
    Create_Advisor("⚡ <em></em><br/>Create Advisor"):::actionCalls
    click Create_Advisor "#create_advisor" "1761121514"
    
    Create_Firm("⚡ <em></em><br/>Create Firm"):::actionCalls
    click Create_Firm "#create_firm" "1507591189"
    
    Add_to_Collectioction[\"🟰 <em></em><br/>Add to Collection"/]:::assignments
    click Add_to_Collectioction "#add_to_collectioction" "3130369355"
    
    Assign[\"🟰 <em></em><br/>Assign"/]:::assignments
    click Assign "#assign" "2350463136"
    
    Assign_Advisor_Firm_Payload[\"🟰 <em></em><br/>Assign Advisor Firm Payload"/]:::assignments
    click Assign_Advisor_Firm_Payload "#assign_advisor_firm_payload" "605604266"
    
    Assign_Advisor_Request_Payload[\"🟰 <em></em><br/>Assign Advisor Request Payload"/]:::assignments
    click Assign_Advisor_Request_Payload "#assign_advisor_request_payload" "2610801083"
    
    Assign_Advisor_Roles[\"🟰 <em></em><br/>Assign Advisor Roles"/]:::assignments
    click Assign_Advisor_Roles "#assign_advisor_roles" "2779790317"
    
    assign_Advisor_User_Payload[\"🟰 <em></em><br/>Assign Advisor User Payload"/]:::assignments
    click assign_Advisor_User_Payload "#assign_advisor_user_payload" "2126769316"
    
    Assign_Exceptions[\"🟰 <em></em><br/>Assign Exceptions"/]:::assignments
    click Assign_Exceptions "#assign_exceptions" "3633559136"
    
    Assign_Success_Code[\"🟰 <em></em><br/>Assign Success Code"/]:::assignments
    click Assign_Success_Code "#assign_success_code" "2744092721"
    
    Response_200{"🔀 <em></em><br/>Response 200?"}:::decisions
    click Response_200 "#response_200" "2366788928"
    
    Response_200Y{"🔀 <em></em><br/>Response 200?"}:::decisions
    click Response_200Y "#response_200y" "1960920737"
    
    Loop_thru{{"🔁 <em></em><br/>Loop thru"}}:::loops
    click Loop_thru "#loop_thru" "3332076151"
    
    Get_Advisor_Firm_Settings[("🔍 <em></em><br/>Get Advisor Firm Settings")]:::recordLookups
    click Get_Advisor_Firm_Settings "#get_advisor_firm_settings" "473711519"
    
    Get_Partner_Advisor_Settings[("🔍 <em></em><br/>Get Partner Advisor Settings")]:::recordLookups
    click Get_Partner_Advisor_Settings "#get_partner_advisor_settings" "2611259379"
    
    get_Proposal[("🔍 <em></em><br/>get Proposal")]:::recordLookups
    click get_Proposal "#get_proposal" "3878627098"
    
    Create_Advisor --> Response_200Y
    Create_Firm --> Response_200
    Add_to_Collectioction --> Loop_thru
    Assign --> END_Assign
    Assign_Advisor_Firm_Payload --> Create_Firm
    Assign_Advisor_Request_Payload --> Create_Advisor
    Assign_Advisor_Roles --> Loop_thru
    assign_Advisor_User_Payload --> Add_to_Collectioction
    Assign_Exceptions --> END_Assign_Exceptions
    Assign_Success_Code --> END_Assign_Success_Code
    Response_200 --> |"200"| Get_Partner_Advisor_Settings
    Response_200 --> |"Default Outcome"| Assign
    Response_200Y --> |"200"| Assign_Success_Code
    Response_200Y --> |"Default Outcome"| Assign_Exceptions
    Loop_thru --> |"For Each"|assign_Advisor_User_Payload
    Loop_thru ---> |"After Last"|Assign_Advisor_Request_Payload
    Get_Advisor_Firm_Settings --> Assign_Advisor_Firm_Payload
    Get_Partner_Advisor_Settings --> Assign_Advisor_Roles
    get_Proposal --> Get_Advisor_Firm_Settings
    START -->  get_Proposal
    END_Assign(( END )):::endClass
    END_Assign_Exceptions(( END )):::endClass
    END_Assign_Success_Code(( END )):::endClass
    
    
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
    |Label|Purchase API | Make Firm AP and Advisor API callout|
    |Status|⚠️ Draft|
    |Environments|Default|
    |Interview Label|Purchase API | Make Firm AP and Advisor API callout {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[get_Proposal](#get_proposal)|
    |Next Node|[get_Proposal](#get_proposal)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |accessToken|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |addSources|Apex|✅|⬜|⬜|<!-- -->|A list of Sources to be added to the purchase Payload. Passed though a subflow|
    |advisorActorsCollection|Apex|✅|✅|⬜|<!-- -->|A list of Advisors (actors) for purchase Payload|
    |advisorCalloutResponseCode|Number|⬜|⬜|✅|<!-- -->|<!-- -->|
    |advisorCalloutResponseException|String|⬜|⬜|✅|<!-- -->|<!-- -->|
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
    |purchaseLink|String|⬜|⬜|✅|<!-- -->|<!-- -->|
    |purchasePayload|Apex|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |recordId|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |responseCode|String|⬜|⬜|✅|<!-- -->|<!-- -->|
    |tokenCredentials|Apex|⬜|⬜|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |advisoryFirmPhone|String|IF(LEN({!formattedPhone}) = 10 && ISNUMBER({!formattedPhone}),<br/>LEFT({!formattedPhone}, 3) & "-" & MID({!formattedPhone}, 4, 3) & "-" & RIGHT({!formattedPhone}, 4),<br/>"")|Transforms from XXXXXXXXXX to XXX-XXX-XXXX|
    |allowsHardshipWithdrawals|Boolean|IF(TEXT({!get_Proposal.Hardships__c}) = "Yes", TRUE, FALSE)|<!-- -->|
    |allowsLoans|Boolean|IF(TEXT({!get_Proposal.Loans__c}) = "Yes", TRUE, FALSE)|<!-- -->|
    |bpsAmount|Number|VALUE({!get_Proposal.Advisor_Compensation_Amount__c})|<!-- -->|
    |eligibilityAgeInteger|Number|IF( ISPICKVAL({!get_Proposal.Eligibility_Age__c}, "None"), <br/>18, <br/>VALUE(TEXT({!get_Proposal.Eligibility_Age__c})))|<!-- -->|
    |entry|String|CASE(TEXT({!get_Proposal.Plan_Entry_Frequency__c}),<br/>  "Immediate", "DAILY",<br/>  "Monthly", "MONTHLY",<br/>  "Quarterly", "QUARTERLY",<br/>  "Semi-Annually", "SEMI_ANNUALLY",<br/>"OTHER"<br/>)|Value will be determined based on a Plan_Entry_Frequency__c|
    |formattedPhone|String|RIGHT(SUBSTITUTE(SUBSTITUTE(SUBSTITUTE(SUBSTITUTE(SUBSTITUTE({!Get_Advisor_Firm_Settings.Phone__c}, " ", ""), "+", ""), "-", ""), ")", ""), "(", ""),10)|Transforms the phone number to sting of XXXXXXXXXX|
    |planEffectiveDate|Date|IF(<br/>ISBLANK({!get_Proposal.Plan_Effective_Date__c}),<br/>CASE(<br/>MOD(TODAY() - DATE(1900, 1, 7), 7),<br/>0, TODAY() + 29,<br/>1, TODAY() + 31,<br/>2, TODAY() + 31,<br/>3, TODAY() + 31,<br/>4, TODAY() + 31,<br/>5, TODAY() + 33,<br/>6, TODAY() + 32,<br/>TODAY()<br/>),<br/>{!get_Proposal.Plan_Effective_Date__c}<br/>)|Adds 21 business days to today if Plan Effective Date is not specified|
    |serviceEligibility|String|CASE(TEXT({!get_Proposal.Plan_Eligibility__c}),<br/>  "Immediate", "IMMEDIATE",<br/>  "One Month", "ONE_MONTH",<br/>  "Two Months", "TWO_MONTHS",<br/>  "Three Months", "THREE_MONTHS",<br/> "6 Months", "SIX_MONTHS",<br/> "1 Year (1000 Hours)", "ONE_YEAR_HOURS",<br/> "1 Year", "TWELVE_MONTHS",<br/>""<br/>)|This will be calculated based of Plan_Eligibilty__c value|
    |stateCode|String|IF(<br/>LEN({!get_Proposal.Company_State__c}) = 2,<br/>{!get_Proposal.Company_State__c},<br/>CASE({!get_Proposal.Company_State__c},<br/>"Alabama", "AL",<br/>"Alaska", "AK",<br/>"Arizona", "AZ",<br/>"Arkansas", "AR",<br/>"California", "CA",<br/>"Colorado", "CO",<br/>"Connecticut", "CT",<br/>"Delaware", "DE",<br/>"Florida", "FL",<br/>"Georgia", "GA",<br/>"Hawaii", "HI",<br/>"Idaho", "ID",<br/>"Illinois", "IL",<br/>"Indiana", "IN",<br/>"Iowa", "IA",<br/>"Kansas", "KS",<br/>"Kentucky", "KY",<br/>"Louisiana", "LA",<br/>"Maine", "ME",<br/>"Maryland", "MD",<br/>"Massachusetts", "MA",<br/>"Michigan", "MI",<br/>"Minnesota", "MN",<br/>"Mississippi", "MS",<br/>"Missouri", "MO",<br/>"Montana", "MT",<br/>"Nebraska", "NE",<br/>"Nevada", "NV",<br/>"New Hampshire", "NH",<br/>"New Jersey", "NJ",<br/>"New Mexico", "NM",<br/>"New York", "NY",<br/>"North Carolina", "NC",<br/>"North Dakota", "ND",<br/>"Ohio", "OH",<br/>"Oklahoma", "OK",<br/>"Oregon", "OR",<br/>"Pennsylvania", "PA",<br/>"Rhode Island", "RI",<br/>"South Carolina", "SC",<br/>"South Dakota", "SD",<br/>"Tennessee", "TN",<br/>"Texas", "TX",<br/>"Utah", "UT",<br/>"Vermont", "VT",<br/>"Virginia", "VA",<br/>"Washington", "WA",<br/>"West Virginia", "WV",<br/>"Wisconsin", "WI",<br/>"Wyoming", "WY",<br/>""<br/>)<br/>)|2 Letter Code for Company_State__c|
    
    
    ## Flow Nodes Details
    
    ### Create_Advisor
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Create Advisor|
    |Action Type|External Service|
    |Action Name|PostParadigmAdvisorAPInew.Create Advisors|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|PostParadigmAdvisorAPInew.Create Advisors|
    |Store Output Automatically|✅|
    |Api_key (input)|accessToken|
    |Body (input)|advisorPayload|
    |Connector|[Response_200Y](#response_200y)|
    
    
    ### Create_Firm
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Create Firm|
    |Action Type|External Service|
    |Action Name|PostParadigmFirmAPI.Create Firm|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|PostParadigmFirmAPI.Create Firm|
    |Store Output Automatically|✅|
    |Api_key (input)|accessToken|
    |Body (input)|firmPayload|
    |Connector|[Response_200](#response_200)|
    
    
    ### Add_to_Collectioction
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add to Collection|
    |Connector|[Loop_thru](#loop_thru)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |advisorUsersCollection| Add|advisorUserSingle|
    
    
    
    
    ### Assign
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|[Assign](#assign)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |firmCalloutResponseCode| Assign|Create_Firm.responseCode|
    |firmCalloutResponseException| Assign|Create_Firm.defaultExc|
    
    
    
    
    ### Assign_Advisor_Firm_Payload
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Advisor Firm Payload|
    |Connector|[Create_Firm](#create_firm)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |firmPayload.name| Assign|Get_Advisor_Firm_Settings.Firm_Name__c|
    |firmPayload.crd| Assign|Get_Advisor_Firm_Settings.CRD__c|
    |firmPayload.z0type| Assign|Get_Advisor_Firm_Settings.Firm_Type__c|
    |firmPayload.npn| Assign|Get_Advisor_Firm_Settings.NPN__c|
    
    
    
    
    ### Assign_Advisor_Request_Payload
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Advisor Request Payload|
    |Connector|[Create_Advisor](#create_advisor)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |advisorPayload.paymentMethod.deliveryMethod| Assign|Get_Advisor_Firm_Settings.Delivery_Method__c|
    |advisorPayload.address1| Assign|Get_Advisor_Firm_Settings.Address__c|
    |advisorPayload.city| Assign|Get_Advisor_Firm_Settings.City__c|
    |advisorPayload.state| Assign|Get_Advisor_Firm_Settings.State__c|
    |advisorPayload.zip| Assign|Get_Advisor_Firm_Settings.Zip__c|
    |advisorPayload.firmName| Assign|Get_Advisor_Firm_Settings.Firm_Name__c|
    |advisorPayload.phone| Assign|advisoryFirmPhone|
    |advisorPayload.advisorUsers| Assign|advisorUsersCollection|
    |advisorPayload.paymentMethod.crd| Assign|<!-- -->|
    |advisorPayload.paymentMethod.npn| Assign|123456|
    
    
    
    
    ### Assign_Advisor_Roles
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Advisor Roles|
    |Connector|[Loop_thru](#loop_thru)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |advisorsRolesCollection| Add|COMMISSIONABLE|
    
    
    
    
    ### assign_Advisor_User_Payload
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Advisor User Payload|
    |Connector|[Add_to_Collectioction](#add_to_collectioction)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |advisorUserSingle.id| Assign|numberValue: 0<br/>|
    |advisorUserSingle.firstName| Assign|Loop_thru.First_Name__c|
    |advisorUserSingle.lastName| Assign|Loop_thru.Last_Name__c|
    |advisorUserSingle.email| Assign|Loop_thru.Email__c|
    |advisorUserSingle.roles| Assign|<!-- -->|
    |advisorUserSingle.npn| Assign|Loop_thru.NPN__c|
    |advisorUserSingle.crd| Assign|Loop_thru.CRD__c|
    
    
    
    
    ### Assign_Exceptions
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Exceptions|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |advisorCalloutResponseCode| Assign|Create_Advisor.responseCode|
    |advisorCalloutResponseException| Assign|Create_Advisor.defaultExc|
    
    
    
    
    ### Assign_Success_Code
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Success Code|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |advisorCalloutResponseCode| Assign|Create_Advisor.responseCode|
    
    
    
    
    ### Response_200
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Response 200?|
    |Default Connector|[Assign](#assign)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule X200Yes (200)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Partner_Advisor_Settings](#get_partner_advisor_settings)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Create_Firm.responseCode| Equal To|200|
    
    
    
    
    ### Response_200Y
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Response 200?|
    |Default Connector|[Assign_Exceptions](#assign_exceptions)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes (200)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Success_Code](#assign_success_code)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Create_Advisor.responseCode| Equal To|200|
    
    
    
    
    ### Loop_thru
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Loop thru|
    |Collection Reference|[Get_Partner_Advisor_Settings](#get_partner_advisor_settings)|
    |Iteration Order|Asc|
    |Next Value Connector|[assign_Advisor_User_Payload](#assign_advisor_user_payload)|
    |No More Values Connector|[Assign_Advisor_Request_Payload](#assign_advisor_request_payload)|
    
    
    ### Get_Advisor_Firm_Settings
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Advisor_Firm__mdt|
    |Label|Get Advisor Firm Settings|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Assign_Advisor_Firm_Payload](#assign_advisor_firm_payload)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Firm_Name__c| Equal To|get_Proposal.Firm_Name__c|
    
    
    
    
    ### Get_Partner_Advisor_Settings
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Partner_Advisors__mdt|
    |Label|Get Partner Advisor Settings|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Store Output Automatically|✅|
    |Connector|[Assign_Advisor_Roles](#assign_advisor_roles)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Firm_Name__c| Equal To|get_Proposal.Firm_Name__c|
    
    
    
    
    ### get_Proposal
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Proposal__c|
    |Label|get Proposal|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Get_Advisor_Firm_Settings](#get_advisor_firm_settings)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

