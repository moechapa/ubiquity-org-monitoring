# Vendor_Review_Button_Confirm_Review history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Vendor_Review_Button_Confirm_Review-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Screen Flow</b>"]):::startClass
    click START "#general-information" "22996536"
    
    Checkbox_Checked{"🔀 <em></em><br/>Checkbox Checked"}:::decisions
    click Checkbox_Checked "#checkbox_checked" "1414415704"
    
    GetVendorReview[("🔍 <em></em><br/>GetVendorReview")]:::recordLookups
    click GetVendorReview "#getvendorreview" "1031868509"
    
    Update_Vendor_Review[("🛠️ <em></em><br/>Update Vendor Review")]:::recordUpdates
    click Update_Vendor_Review "#update_vendor_review" "477244235"
    
    Confirm(["💻 <em></em><br/>Confirm"]):::screens
    click Confirm "#confirm" "1283255728"
    
    Checkbox_Checked --> |"Checked"| Update_Vendor_Review
    Checkbox_Checked --> |"Default Outcome"| END_Checkbox_Checked
    GetVendorReview --> Confirm
    Update_Vendor_Review --> END_Update_Vendor_Review
    Confirm --> Checkbox_Checked
    START -->  GetVendorReview
    END_Checkbox_Checked(( END )):::endClass
    END_Update_Vendor_Review(( END )):::endClass
    
    
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
    |Label|Vendor Review | Button | Confirm Review|
    |Status|Active|
    |Environments|Default|
    |Interview Label|Vendor Review | Button | Confirm Review {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[GetVendorReview](#getvendorreview)|
    |Next Node|[GetVendorReview](#getvendorreview)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |recordId|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |CurrentUser|String|"Confirmed by "  + {!$User.FirstName}+ " " + {!$User.LastName} + " "+ "on " + TEXT(TODAY())+" "+ "with " + TEXT({!Number_of_Exceptions}) + " " + "exception(s)"|<!-- -->|
    |now|DateTime|NOW()|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Checkbox_Checked
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Checkbox Checked|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Checked (Checked)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Vendor_Review](#update_vendor_review)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|ConfirmedbyUser| Equal To|✅|
    
    
    
    
    ### GetVendorReview
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Vendor_Review__c|
    |Label|[GetVendorReview](#getvendorreview)|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Confirm](#confirm)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Update_Vendor_Review
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Vendor_Review__c|
    |Label|Update Vendor Review|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|GetVendorReview.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Completion_Time__c|now|
    |Confirmed_Review__c|Confirmed|
    |Notes__c|GetVendorReview.Notes__c|
    |Number_of_Exceptions__c|Number_of_Exceptions|
    |Reviewed_By__c|CurrentUser|
    
    
    
    
    ### Confirm
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|[Confirm](#confirm)|
    |Allow Back|⬜|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Next Or Finish Button Label|[Confirm](#confirm)|
    |Show Footer|✅|
    |Show Header|⬜|
    |Connector|[Checkbox_Checked](#checkbox_checked)|
    
    
    #### Title
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p style="text-align: center;"><strong style="font-size: 18px;">Confirm Vendor Review</strong></p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Confirm_Section1_Column1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region|
    |Is Required|⬜|
    |Parent Field|[Confirm_Section1](#confirm_section1)|
    |Width (input)|12|
    
    
    
    
    #### Confirm_Section1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Region Container|
    |Is Required|⬜|
    |Region Container Type| Section Without Header|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### UserConfirmationMessage
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p>By clicking the "Confirmed" checkbox, I affirm I have the reviewed the document(s) referenced herein and have either: (a) noted no exception with Ubiquity’s existing procedures and operations or, (b) have noted one or more exception(s).</p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### ConfirmedbyUser
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|Boolean|
    |Field Text|Confirmed|
    |Field Type| Input Field|
    |Is Required|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### Number_of_Exceptions
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Data Type|Number|
    |Field Text|Number of Exceptions|
    |Field Type| Input Field|
    |Is Required|⬜|
    |Scale|0|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### GetVendorReview.Notes__c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Type| Object Provided|
    |Is Required|⬜|
    |Object Field Reference|GetVendorReview.Notes__c|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

