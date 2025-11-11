# Transition_Deconversion_Completed history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Transition_Deconversion_Completed-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>"]):::startClass
    click START "#general-information" "3844526147"
    
    Email_Deconversion_to_Partner_Support("📧 <em></em><br/>Email Deconversion to Partner Support"):::actionCalls
    click Email_Deconversion_to_Partner_Support "#email_deconversion_to_partner_support" "3447367190"
    
    Is_there_an_Advisor_Associated{"🔀 <em></em><br/>Is there an Advisor Associated?"}:::decisions
    click Is_there_an_Advisor_Associated "#is_there_an_advisor_associated" "840857261"
    
    Get_Associated_Advisors[("🔍 <em></em><br/>Get Associated Advisors")]:::recordLookups
    click Get_Associated_Advisors "#get_associated_advisors" "2941448008"
    
    Get_Transition[("🔍 <em></em><br/>Get Transition")]:::recordLookups
    click Get_Transition "#get_transition" "1317501868"
    
    Email_Deconversion_to_Partner_Support --> END_Email_Deconversion_to_Partner_Support
    Is_there_an_Advisor_Associated --> |"Yes"| Email_Deconversion_to_Partner_Support
    Is_there_an_Advisor_Associated --> |"No"| END_Is_there_an_Advisor_Associated
    Get_Associated_Advisors --> Is_there_an_Advisor_Associated
    Get_Transition --> Get_Associated_Advisors
    START -->  Get_Transition
    END_Email_Deconversion_to_Partner_Support(( END )):::endClass
    END_Is_there_an_Advisor_Associated(( END )):::endClass
    
    
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
    |Label|Transition/Deconversion Completed|
    |Status|Obsolete|
    |Interview Label|Transition/Deconversion Completed {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Transition](#get_transition)|
    |Next Node|[Get_Transition](#get_transition)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |AssociatedAdvisor|SObject|⬜|✅|✅|Associated_Contact__c|<!-- -->|
    |AssociatedAdvisors|SObject|✅|✅|✅|Associated_Contact__c|<!-- -->|
    |recordId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Email_Deconversion_to_Partner_Support
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Email Deconversion to Partner Support|
    |Action Type|Email Alert|
    |Action Name|Associated_Contact__c.Advisor_Plan_has_been_Deactivated|
    |Name Segment|Associated_Contact__c.Advisor_Plan_has_been_Deactivated|
    | SObject Row Id (input)|AssociatedAdvisor.Id|
    
    
    ### Is_there_an_Advisor_Associated
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Is there an Advisor Associated?|
    |Default Connector Label|No|
    
    
    #### Rule Yes (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Email_Deconversion_to_Partner_Support](#email_deconversion_to_partner_support)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|AssociatedAdvisor.Id| Is Null|⬜|
    
    
    
    
    ### Get_Associated_Advisors
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Associated_Contact__c|
    |Label|Get Associated Advisors|
    |Assign Null Values If No Records Found|✅|
    |Output Assignments|- assignToReference: AssociatedAdvisor.Contact_Role__c<br/>&nbsp;&nbsp;field: Contact_Role__c<br/>- assignToReference: AssociatedAdvisor.Id<br/>&nbsp;&nbsp;field: Id<br/>|
    |Connector|[Is_there_an_Advisor_Associated](#is_there_an_advisor_associated)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Transition__c| Equal To|Get_Transition.Id|
    |2|Contact_Role__c| Equal To|Financial Advisor|
    
    
    
    
    ### Get_Transition
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Transition__c|
    |Label|Get Transition|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Get_Associated_Advisors](#get_associated_advisors)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

