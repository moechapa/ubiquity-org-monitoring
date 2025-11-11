# Plan_Button_Contract_Termination history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Plan_Button_Contract_Termination-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Screen Flow</b>"]):::startClass
    click START "#general-information" "1170881590"
    
    AlertBilling("📧 <em></em><br/>AlertBilling"):::actionCalls
    click AlertBilling "#alertbilling" "4287897653"
    
    Defaults[\"🟰 <em></em><br/>Defaults"/]:::assignments
    click Defaults "#defaults" "382554505"
    
    CreateContractTerm[("➕ <em></em><br/>CreateContractTerm")]:::recordCreates
    click CreateContractTerm "#createcontractterm" "2705775367"
    
    GrabPlan[("🔍 <em></em><br/>GrabPlan")]:::recordLookups
    click GrabPlan "#grabplan" "3384563603"
    
    Contract_Termination(["💻 <em></em><br/>Contract Termination"]):::screens
    click Contract_Termination "#contract_termination" "1612786101"
    
    AlertBilling --> END_AlertBilling
    Defaults --> Contract_Termination
    CreateContractTerm --> AlertBilling
    GrabPlan --> Defaults
    Contract_Termination --> CreateContractTerm
    START -->  GrabPlan
    END_AlertBilling(( END )):::endClass
    
    
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
    |Process Type| Flow|
    |Label|Plan | Button | Contract Termination|
    |Status|Active|
    |Description|Button on the plan page to terminate a plan when it has $0 in assets|
    |Environments|Default|
    |Interview Label|Plan | Button | Contract Termination {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[GrabPlan](#grabplan)|
    |Next Node|[GrabPlan](#grabplan)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |ContractTerm|SObject|⬜|✅|✅|Transition__c|<!-- -->|
    |recordId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### AlertBilling
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|[AlertBilling](#alertbilling)|
    |Action Type|Email Simple|
    |Action Name|emailSimple|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|emailSimple|
    |Email Body (input)|billingAlertEmailBody|
    |Email Addresses (input)|billing@myubiquity.com|
    |Send Rich Body (input)|✅|
    |Sender Address (input)|$User.Email|
    |Email Subject (input)|{!GrabPlan.Name} Contract Termination|
    
    
    ### Defaults
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|[Defaults](#defaults)|
    |Connector|[Contract_Termination](#contract_termination)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |ContractTerm.RecordTypeId| Assign|0121G000000bquUQAQ|
    |ContractTerm.Custodian__c| Assign|GrabPlan.Custodian__c|
    |ContractTerm.Custodian_Account_ID__c| Assign|GrabPlan.Custodian_Account_ID__c|
    |ContractTerm.Account__c| Assign|GrabPlan.Account__c|
    |ContractTerm.Name| Assign|GrabPlan.Name|
    |ContractTerm.Status__c| Assign|Complete|
    |ContractTerm.Service_Option__c| Assign|GrabPlan.Service_Option__c|
    |ContractTerm.Transition_Type__c| Assign|Contract Termination|
    |ContractTerm.Number_of_employees__c| Assign|GrabPlan.Account__r.NumberOfEmployees|
    |ContractTerm.Transition_Reason__c| Assign|No Reason Given|
    |ContractTerm.Plan__c| Assign|GrabPlan.Id|
    
    
    
    
    ### CreateContractTerm
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Label|[CreateContractTerm](#createcontractterm)|
    |Input Reference|ContractTerm|
    |Connector|[AlertBilling](#alertbilling)|
    
    
    ### GrabPlan
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Plan__c|
    |Label|[GrabPlan](#grabplan)|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Defaults](#defaults)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Contract_Termination
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|Contract Termination|
    |Allow Back|⬜|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Show Footer|✅|
    |Show Header|✅|
    |Connector|[CreateContractTerm](#createcontractterm)|
    
    
    #### helptext
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p>If the reason for termination is known, please indicate below.</p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### ContractTerm.Transition_Type__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Is Required|⬜|
    |Object Field Reference|ContractTerm.Transition_Type__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Visibility Rule|conditionLogic: and<br/>conditions:<br/>&nbsp;&nbsp;leftValueReference: helptext<br/>&nbsp;&nbsp;operator: EqualTo<br/>&nbsp;&nbsp;rightValue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;stringValue: 3<br/>|
    
    
    
    
    #### ContractTerm.Transition_Reason__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Is Required|⬜|
    |Object Field Reference|ContractTerm.Transition_Reason__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

