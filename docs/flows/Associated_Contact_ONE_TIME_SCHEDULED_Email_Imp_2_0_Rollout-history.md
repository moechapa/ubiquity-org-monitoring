# Associated_Contact_ONE_TIME_SCHEDULED_Email_Imp_2_0_Rollout history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Associated_Contact_ONE_TIME_SCHEDULED_Email_Imp_2_0_Rollout-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Scheduled</b>"]):::startClass
    click START "#general-information" "1340655179"
    
    Email_Advisor("📧 <em></em><br/>Email Advisor"):::actionCalls
    click Email_Advisor "#email_advisor" "899783817"
    
    Email_Advisor_TPA("📧 <em></em><br/>Email Advisor/TPA"):::actionCalls
    click Email_Advisor_TPA "#email_advisor_tpa" "3925627529"
    
    Email_Client("📧 <em></em><br/>Email Client"):::actionCalls
    click Email_Client "#email_client" "1735226635"
    
    Email_Client_Simply("📧 <em></em><br/>Email Client"):::actionCalls
    click Email_Client_Simply "#email_client_simply" "1188823647"
    
    Primary_Client{"🔀 <em></em><br/>Primary Client"}:::decisions
    click Primary_Client "#primary_client" "1894341155"
    
    Email_Advisor --> END_Email_Advisor
    Email_Advisor_TPA --> END_Email_Advisor_TPA
    Email_Client --> END_Email_Client
    Email_Client_Simply --> END_Email_Client_Simply
    Primary_Client --> |"UBQT Client"| Email_Client
    Primary_Client --> |"Simply Client"| Email_Client_Simply
    Primary_Client --> |"UBQT Advisor"| Email_Advisor
    Primary_Client --> |"Simply Advisor/TPA"| Email_Advisor_TPA
    Primary_Client --> |"Default Outcome"| END_Primary_Client
    START -->  Primary_Client
    END_Email_Advisor(( END )):::endClass
    END_Email_Advisor_TPA(( END )):::endClass
    END_Email_Client(( END )):::endClass
    END_Email_Client_Simply(( END )):::endClass
    END_Primary_Client(( END )):::endClass
    
    
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
    |Object|Associated_Contact__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Scheduled|
    |Label|Associated Contact | ONE TIME SCHEDULED | Email Imp 2.0 Rollout|
    |Status|Active|
    |Environments|Default|
    |Interview Label|Associated Contact | ONE TIME SCHEDULED | Email Imp 2.0 Rollout {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Primary_Client](#primary_client)|
    |Next Node|[Primary_Client](#primary_client)|
    
    
    #### Schedules
    
    |Frequency|Start Date|Start Time|
    |:-- |:--:|:--: |
    |Once|Jun 10, 2022|17:15|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Implementation_Status__c| Contains|In Progress|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |usedIds|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Email_Advisor
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Email Advisor|
    |Action Type|Email Alert|
    |Action Name|Associated_Contact__c.One_Time_Rollout_Email_UBQT_Advisors|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Associated_Contact__c.One_Time_Rollout_Email_UBQT_Advisors|
    | SObject Row Id (input)|$Record.Id|
    
    
    ### Email_Advisor_TPA
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Email Advisor/TPA|
    |Action Type|Email Alert|
    |Action Name|Associated_Contact__c.One_Time_Rollout_Email_Simply_Advisors|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Associated_Contact__c.One_Time_Rollout_Email_Simply_Advisors|
    | SObject Row Id (input)|$Record.Id|
    
    
    ### Email_Client
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Email Client|
    |Action Type|Email Alert|
    |Action Name|Associated_Contact__c.One_Time_Rollout_Email_UBQT_Clients|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Associated_Contact__c.One_Time_Rollout_Email_UBQT_Clients|
    | SObject Row Id (input)|$Record.Id|
    
    
    ### Email_Client_Simply
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Email Client|
    |Action Type|Email Alert|
    |Action Name|Associated_Contact__c.One_Time_Rollout_Email_Simply_Clients|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Associated_Contact__c.One_Time_Rollout_Email_Simply_Clients|
    | SObject Row Id (input)|$Record.Id|
    
    
    ### Primary_Client
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Primary Client|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule UBQT_Client (UBQT Client)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Email_Client](#email_client)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Primary__c| Equal To|✅|
    |2|$Record.Implementation__r.Brand__c| Equal To|Ubiquity Retirement + Savings|
    
    
    
    
    #### Rule Simply_Client (Simply Client)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Email_Client_Simply](#email_client_simply)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Primary__c| Equal To|✅|
    |2|$Record.Implementation__r.Brand__c| Equal To|Simply Retirement|
    
    
    
    
    #### Rule UBQT_Advisor (UBQT Advisor)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Email_Advisor](#email_advisor)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Contact_Role__c| Equal To|Financial Advisor|
    |2|$Record.Brand__c| Contains|Ubiquity|
    |3|$Record.AC_Temp_List__c| Equal To|✅|
    
    
    
    
    #### Rule Simply_Advisor_TPA (Simply Advisor/TPA)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Email_Advisor_TPA](#email_advisor_tpa)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Contact_Role__c| Equal To|Financial Advisor|
    |2|$Record.Contact_Role__c| Contains|TPA|
    |3|$Record.Brand__c| Contains|Simply|
    |4|$Record.AC_Temp_List__c| Equal To|✅|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

