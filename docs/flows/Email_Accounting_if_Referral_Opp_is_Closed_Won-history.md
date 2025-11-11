# Email_Accounting_if_Referral_Opp_is_Closed_Won history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Email_Accounting_if_Referral_Opp_is_Closed_Won-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "2028042734"
    
    Notify_Accounting("📧 <em></em><br/>Notify Accounting"):::actionCalls
    click Notify_Accounting "#notify_accounting" "178117448"
    
    Is_there_a_Referrer_Present{"🔀 <em></em><br/>Is there a Referrer Present?"}:::decisions
    click Is_there_a_Referrer_Present "#is_there_a_referrer_present" "1304993182"
    
    Is_this_a_Referral_Opportunity{"🔀 <em></em><br/>Is this a Referral Opportunity?"}:::decisions
    click Is_this_a_Referral_Opportunity "#is_this_a_referral_opportunity" "2508056912"
    
    Get_Referrers[("🔍 <em></em><br/>Get Referrers")]:::recordLookups
    click Get_Referrers "#get_referrers" "3472223632"
    
    Notify_Accounting --> END_Notify_Accounting
    Is_there_a_Referrer_Present --> |"Yes"| Notify_Accounting
    Is_there_a_Referrer_Present --> |"No"| END_Is_there_a_Referrer_Present
    Is_this_a_Referral_Opportunity --> |"Yes"| Get_Referrers
    Is_this_a_Referral_Opportunity --> |"No"| END_Is_this_a_Referral_Opportunity
    Get_Referrers --> Is_there_a_Referrer_Present
    START -->  Is_this_a_Referral_Opportunity
    END_Notify_Accounting(( END )):::endClass
    END_Is_there_a_Referrer_Present(( END )):::endClass
    END_Is_this_a_Referral_Opportunity(( END )):::endClass
    
    
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
    |Object|Opportunity|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create And Update|
    |Label|Opportunity | Process | Email Accounting on Closed Referral|
    |Status|Obsolete|
    |Description|If referral Opportunity is Closed Won, notify Accounting|
    |Interview Label|Email Accounting if Referral Opp is Closed Won {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Is_this_a_Referral_Opportunity](#is_this_a_referral_opportunity)|
    |Next Node|[Is_this_a_Referral_Opportunity](#is_this_a_referral_opportunity)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Not Equal To|stringValue: ''<br/>|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |recordId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    |referrer|SObject|⬜|✅|✅|Associated_Contact__c|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Notify_Accounting
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Notify Accounting|
    |Action Type|Email Alert|
    |Action Name|Associated_Contact__c.Sales_Referral_Sale|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Associated_Contact__c.Sales_Referral_Sale|
    | SObject Row Id (input)|referrer.Id|
    
    
    ### Is_there_a_Referrer_Present
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Is there a Referrer Present?|
    |Default Connector Label|No|
    
    
    #### Rule YesPresent (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Notify_Accounting](#notify_accounting)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|referrer.Id| Is Null|⬜|
    
    
    
    
    ### Is_this_a_Referral_Opportunity
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Is this a Referral Opportunity?|
    |Default Connector Label|No|
    
    
    #### Rule YesReferral (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Referrers](#get_referrers)|
    |Condition Logic|1 AND (2 OR 3) AND NOT 4|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.StageName| Equal To|Closed Won|
    |2|$Record.LeadSource| Contains|Referral|
    |3|$Record.How_did_you_hear_about_Ubiquity__c| Contains|Referral|
    |4|$Record.Associated_Contact__r.Full_Name__c| Contains|Payroll|
    
    
    
    
    ### Get_Referrers
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Associated_Contact__c|
    |Label|Get Referrers|
    |Assign Null Values If No Records Found|✅|
    |Output Assignments|assignToReference: referrer.Id<br/>field: Id<br/>|
    |Connector|[Is_there_a_Referrer_Present](#is_there_a_referrer_present)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Contact_Role__c| Equal To|Referrer|
    |2|Opportunity__c| Equal To|$Record.Id|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

