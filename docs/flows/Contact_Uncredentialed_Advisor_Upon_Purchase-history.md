# Contact_Uncredentialed_Advisor_Upon_Purchase history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Contact_Uncredentialed_Advisor_Upon_Purchase-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>"]):::startClass
    click START "#general-information" "913116841"
    
    Send_Alert("📧 <em></em><br/>Send Alert"):::actionCalls
    click Send_Alert "#send_alert" "1008384695"
    
    Send_Email("📧 <em></em><br/>Send Email"):::actionCalls
    click Send_Email "#send_email" "2961950019"
    
    Advisor_Found{"🔀 <em></em><br/>Advisor Found"}:::decisions
    click Advisor_Found "#advisor_found" "381479212"
    
    Is_Advisor_Credentialed{"🔀 <em></em><br/>Is Advisor Credentialed?"}:::decisions
    click Is_Advisor_Credentialed "#is_advisor_credentialed" "2612608129"
    
    Is_Broker_Dealer_Present{"🔀 <em></em><br/>Is Broker Dealer Present?"}:::decisions
    click Is_Broker_Dealer_Present "#is_broker_dealer_present" "681818611"
    
    Is_Proposal_Credentialed{"🔀 <em></em><br/>Is Proposal Credentialed"}:::decisions
    click Is_Proposal_Credentialed "#is_proposal_credentialed" "3477874232"
    
    Proposal_Found{"🔀 <em></em><br/>Proposal Found?"}:::decisions
    click Proposal_Found "#proposal_found" "1176978836"
    
    Get_AC[("🔍 <em></em><br/>Get Financial Advisor AC")]:::recordLookups
    click Get_AC "#get_ac" "2068639591"
    
    Get_AC_0[("🔍 <em></em><br/>Get Financial Advisor AC")]:::recordLookups
    click Get_AC_0 "#get_ac_0" "1729390751"
    
    Get_AC_0_0[("🔍 <em></em><br/>Get Financial Advisor AC")]:::recordLookups
    click Get_AC_0_0 "#get_ac_0_0" "4233559806"
    
    Get_Opp[("🔍 <em></em><br/>Get Opp")]:::recordLookups
    click Get_Opp "#get_opp" "838194571"
    
    Get_Proposal[("🔍 <em></em><br/>Get Proposal")]:::recordLookups
    click Get_Proposal "#get_proposal" "1104623"
    
    Send_Alert --> END_Send_Alert
    Send_Email --> Is_Broker_Dealer_Present
    Advisor_Found --> |"Yes"| Send_Email
    Advisor_Found --> |"Default Outcome"| END_Advisor_Found
    Is_Advisor_Credentialed --> |"No"| Get_AC_0
    Is_Advisor_Credentialed --> |"Yes"| Is_Broker_Dealer_Present
    Is_Advisor_Credentialed --> |"Default"| END_Is_Advisor_Credentialed
    Is_Broker_Dealer_Present --> |"No"| Get_AC_0_0
    Is_Broker_Dealer_Present --> |"Yes"| END_Is_Broker_Dealer_Present
    Is_Proposal_Credentialed --> |"Proposal = Credentialed"| Is_Broker_Dealer_Present
    Is_Proposal_Credentialed --> |"Proposal Not Credentialed"| Is_Advisor_Credentialed
    Is_Proposal_Credentialed --> |"Default"| END_Is_Proposal_Credentialed
    Proposal_Found --> |"Found"| Is_Proposal_Credentialed
    Proposal_Found --> |"Not Found"| Is_Advisor_Credentialed
    Get_AC --> Get_Proposal
    Get_AC_0 --> Advisor_Found
    Get_AC_0_0 --> Send_Alert
    Get_Opp --> Get_AC
    Get_Proposal --> Proposal_Found
    START -->  Get_Opp
    END_Send_Alert(( END )):::endClass
    END_Advisor_Found(( END )):::endClass
    END_Is_Advisor_Credentialed(( END )):::endClass
    END_Is_Broker_Dealer_Present(( END )):::endClass
    END_Is_Proposal_Credentialed(( END )):::endClass
    
    
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
    |Label|Opportunity | Process | Advisor Not Credentialed Upon Purchase|
    |Status|Active|
    |Description|Verifies Advisor's credential status upon Simply plan sold|
    |Environments|Default|
    |Interview Label|Contact | Uncredentialed Advisor Upon Purchase {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Opp](#get_opp)|
    |Next Node|[Get_Opp](#get_opp)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |advisor|SObject|⬜|✅|⬜|Associated_Contact__c|<!-- -->|
    |loopVar|SObject|⬜|✅|✅|Associated_Contact__c|<!-- -->|
    |prop|SObject|⬜|✅|⬜|Proposal__c|<!-- -->|
    |recordId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Send_Alert
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send Alert|
    |Action Type|Email Alert|
    |Action Name|Associated_Contact__c.Broker_Dealer_Not_Found|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Associated_Contact__c.Broker_Dealer_Not_Found|
    | SObject Row Id (input)|Get_AC_0_0.Id|
    
    
    ### Send_Email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send Email|
    |Action Type|Email Alert|
    |Action Name|Associated_Contact__c.Advisor_Not_Credentialed_Contact|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Associated_Contact__c.Advisor_Not_Credentialed_Contact|
    | SObject Row Id (input)|advisor.Id|
    |Connector|[Is_Broker_Dealer_Present](#is_broker_dealer_present)|
    
    
    ### Advisor_Found
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Advisor Found|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Send_Email](#send_email)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|advisor.Id| Is Null|⬜|
    
    
    
    
    ### Is_Advisor_Credentialed
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Is Advisor Credentialed?|
    |Default Connector Label|Default|
    
    
    #### Rule NoCredentialed (No)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_AC_0](#get_ac_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_AC.Contact__r.Credentialed_Advisor__c| Equal To|⬜|
    
    
    
    
    #### Rule Yes_Credentialed_AC (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Is_Broker_Dealer_Present](#is_broker_dealer_present)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_AC.Contact__r.Credentialed_Advisor__c| Equal To|✅|
    
    
    
    
    ### Is_Broker_Dealer_Present
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Is Broker Dealer Present?|
    |Default Connector Label|Yes|
    
    
    #### Rule NoBD (No)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_AC_0_0](#get_ac_0_0)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|loopVar.Contact__r.Advisor_Broker_Dealer__c| Is Null|✅|
    
    
    
    
    ### Is_Proposal_Credentialed
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Is Proposal Credentialed|
    |Default Connector Label|Default|
    
    
    #### Rule Proposal_Credentialed (Proposal = Credentialed)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Is_Broker_Dealer_Present](#is_broker_dealer_present)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|prop.Credentialed_Advisor__c| Equal To|✅|
    
    
    
    
    #### Rule Proposal_Not_Credentialed (Proposal Not Credentialed)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Is_Advisor_Credentialed](#is_advisor_credentialed)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|prop.Credentialed_Advisor__c| Equal To|⬜|
    
    
    
    
    ### Proposal_Found
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Proposal Found?|
    |Default Connector|[Is_Advisor_Credentialed](#is_advisor_credentialed)|
    |Default Connector Label|Not Found|
    
    
    #### Rule Found (Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Is_Proposal_Credentialed](#is_proposal_credentialed)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|prop.Id| Is Null|⬜|
    
    
    
    
    ### Get_AC
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Associated_Contact__c|
    |Label|Get Financial Advisor AC|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Get_Proposal](#get_proposal)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Contact_Role__c| Equal To|Authorized Buyer|
    |2|Opportunity__c| Equal To|Get_Opp.Id|
    
    
    
    
    ### Get_AC_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Associated_Contact__c|
    |Label|Get Financial Advisor AC|
    |Assign Null Values If No Records Found|✅|
    |Output Assignments|assignToReference: advisor.Id<br/>field: Id<br/>|
    |Connector|[Advisor_Found](#advisor_found)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Contact_Role__c| Equal To|Financial Advisor|
    |2|Opportunity__c| Equal To|Get_Opp.Id|
    
    
    
    
    ### Get_AC_0_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Associated_Contact__c|
    |Label|Get Financial Advisor AC|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Send_Alert](#send_alert)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Contact_Role__c| Equal To|Financial Advisor|
    |2|Opportunity__c| Equal To|Get_Opp.Id|
    
    
    
    
    ### Get_Opp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Opportunity|
    |Label|Get Opp|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Get_AC](#get_ac)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Get_Proposal
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Proposal__c|
    |Label|Get Proposal|
    |Assign Null Values If No Records Found|⬜|
    |Output Assignments|- assignToReference: prop.Credentialed_Advisor__c<br/>&nbsp;&nbsp;field: Credentialed_Advisor__c<br/>- assignToReference: prop.Id<br/>&nbsp;&nbsp;field: Id<br/>|
    |Connector|[Proposal_Found](#proposal_found)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Company_Email__c| Equal To|Get_AC.Email__c|
    |2|Status__c| Contains|Purchase|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

