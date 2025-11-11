# Case_Button_Create_At_Risk_Case history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Case_Button_Create_At_Risk_Case-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Screen Flow</b>"]):::startClass
    click START "#general-information" "823851737"
    
    Assign_New_Case_Values[\"🟰 <em></em><br/>Assign New Case Values"/]:::assignments
    click Assign_New_Case_Values "#assign_new_case_values" "616860646"
    
    Create_At_Risk_Case[("➕ <em></em><br/>Create At Risk Case")]:::recordCreates
    click Create_At_Risk_Case "#create_at_risk_case" "1433324478"
    
    Get_Current_Case[("🔍 <em></em><br/>Get Current Case")]:::recordLookups
    click Get_Current_Case "#get_current_case" "3537850161"
    
    Creation_Screen(["💻 <em></em><br/>Creation Screen"]):::screens
    click Creation_Screen "#creation_screen" "3716170335"
    
    Assign_New_Case_Values --> Create_At_Risk_Case
    Create_At_Risk_Case --> END_Create_At_Risk_Case
    Get_Current_Case --> Creation_Screen
    Creation_Screen --> Assign_New_Case_Values
    START -->  Get_Current_Case
    END_Create_At_Risk_Case(( END )):::endClass
    
    
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
    |Label|Case | Button | Create At-Risk Case|
    |Status|Active|
    |Environments|Default|
    |Interview Label|Case | Button | Create At-Risk Case {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Current_Case](#get_current_case)|
    |Next Node|[Get_Current_Case](#get_current_case)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |atRiskCase|SObject|⬜|✅|⬜|Case|<!-- -->|
    |recordId|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Assign_New_Case_Values
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign New Case Values|
    |Connector|[Create_At_Risk_Case](#create_at_risk_case)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |atRiskCase.AccountId| Assign|Get_Current_Case.AccountId|
    |atRiskCase.Plan__c| Assign|Get_Current_Case.Plan__c|
    |atRiskCase.ContactId| Assign|Get_Current_Case.ContactId|
    |atRiskCase.ContactPhone| Assign|Get_Current_Case.ContactPhone|
    |atRiskCase.ContactEmail| Assign|Get_Current_Case.ContactEmail|
    |atRiskCase.Partner__c| Assign|Get_Current_Case.Partner__c|
    |atRiskCase.Sender_Role__c| Assign|Get_Current_Case.Sender_Role__c|
    |atRiskCase.Description| Assign|caseNotes|
    |atRiskCase.RecordTypeId| Assign|01237000000Aho7AAC|
    |atRiskCase.Subject| Assign|caseSubj|
    |atRiskCase.Department__c| Assign|Servicing|
    |atRiskCase.OwnerId| Assign|00G370000014GsN|
    |atRiskCase.SuppliedEmail| Assign|Get_Current_Case.SuppliedEmail|
    |atRiskCase.Origin| Assign|Internal|
    
    
    
    
    ### Create_At_Risk_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Label|Create At Risk Case|
    |Input Reference|atRiskCase|
    
    
    ### Get_Current_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Case|
    |Label|Get Current Case|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Creation_Screen](#creation_screen)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Creation_Screen
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|Creation Screen|
    |Allow Back|⬜|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Next Or Finish Button Label|Create At Risk Case|
    |Show Footer|✅|
    |Show Header|⬜|
    |Connector|[Assign_New_Case_Values](#assign_new_case_values)|
    
    
    #### display
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p style="text-align: center;"><strong style="color: rgb(7, 86, 67); font-size: 20px;">Please Enter Details for New At-Risk Case</strong></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### caseNotes
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|Case Description|
    |Field Type| Large Text Area|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

