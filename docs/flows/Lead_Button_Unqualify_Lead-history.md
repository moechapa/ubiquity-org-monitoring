# Lead_Button_Unqualify_Lead history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Lead_Button_Unqualify_Lead-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Screen Flow</b>"]):::startClass
    click START "#general-information" "3642039876"
    
    Add_id_to_Collection[\"🟰 <em></em><br/>Add id to Collection"/]:::assignments
    click Add_id_to_Collection "#add_id_to_collection" "3660972323"
    
    Add_to_Collection[\"🟰 <em></em><br/>Add to Collection"/]:::assignments
    click Add_to_Collection "#add_to_collection" "3479148957"
    
    Assign_Lead_Status_Values_0[\"🟰 <em></em><br/>Assign Lead Status Values"/]:::assignments
    click Assign_Lead_Status_Values_0 "#assign_lead_status_values_0" "2698306391"
    
    Is_Lead_Collection_Empty{"🔀 <em></em><br/>Is Lead Collection Empty?"}:::decisions
    click Is_Lead_Collection_Empty "#is_lead_collection_empty" "2329751446"
    
    Validate_Selection{"🔀 <em></em><br/>Validate Selection"}:::decisions
    click Validate_Selection "#validate_selection" "760900344"
    
    Lead_Loop{{"🔁 <em></em><br/>Lead Loop"}}:::loops
    click Lead_Loop "#lead_loop" "3673976410"
    
    Update_Record[("🛠️ <em></em><br/>Update Record")]:::recordUpdates
    click Update_Record "#update_record" "1070181558"
    
    Error(["💻 <em></em><br/>Error"]):::screens
    click Error "#error" "1593853300"
    
    Lead_Unqualified(["💻 <em></em><br/>Lead Unqualified"]):::screens
    click Lead_Unqualified "#lead_unqualified" "1491589099"
    
    Add_id_to_Collection --> Lead_Loop
    Add_to_Collection --> Lead_Loop
    Assign_Lead_Status_Values_0 --> Add_to_Collection
    Is_Lead_Collection_Empty --> |"Empty"| Add_id_to_Collection
    Is_Lead_Collection_Empty --> |"Default Outcome"| Lead_Loop
    Validate_Selection --> |"Attempt to Qualifiy"| Error
    Validate_Selection --> |"Valid"| Is_Lead_Collection_Empty
    Lead_Loop --> |"For Each"|Assign_Lead_Status_Values_0
    Lead_Loop ---> |"After Last"|Update_Record
    Update_Record --> END_Update_Record
    Error --> END_Error
    Lead_Unqualified --> Validate_Selection
    START -->  Lead_Unqualified
    END_Update_Record(( END )):::endClass
    END_Error(( END )):::endClass
    
    
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
    |Label|Lead | Button | Update Lead Status|
    |Status|Active|
    |Description|Shortcut for users to easily mark leads as unqualified. Added condition to populate ids collection.|
    |Environments|Default|
    |Interview Label|Lead | Button | Unqualify Lead {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Lead_Unqualified](#lead_unqualified)|
    |Next Node|[Lead_Unqualified](#lead_unqualified)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |ids|String|✅|✅|⬜|<!-- -->|<!-- -->|
    |leadCollection|SObject|✅|✅|⬜|Lead|<!-- -->|
    |leadRecord|SObject|⬜|⬜|⬜|Lead|<!-- -->|
    |recordId|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Add_id_to_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add id to Collection|
    |Connector|[Lead_Loop](#lead_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |ids| Add|recordId|
    
    
    
    
    ### Add_to_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add to Collection|
    |Connector|[Lead_Loop](#lead_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |leadCollection| Add|leadRecord|
    
    
    
    
    ### Assign_Lead_Status_Values_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Lead Status Values|
    |Connector|[Add_to_Collection](#add_to_collection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |leadRecord.Status| Assign|UnqualifyLead.topValue|
    |leadRecord.Unqualified_Reason__c| Assign|UnqualifyLead.middleValue|
    |leadRecord.Id| Assign|[Lead_Loop](#lead_loop)|
    
    
    
    
    ### Is_Lead_Collection_Empty
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Is Lead Collection Empty?|
    |Default Connector|[Lead_Loop](#lead_loop)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Empty (Empty)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Add_id_to_Collection](#add_id_to_collection)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|ids| Is Null|✅|
    
    
    
    
    ### Validate_Selection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Validate Selection|
    |Default Connector|[Is_Lead_Collection_Empty](#is_lead_collection_empty)|
    |Default Connector Label|Valid|
    
    
    #### Rule Attempt_to_Qualify (Attempt to Qualifiy)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Error](#error)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|unableToQualify| Equal To|Qualified|
    |2|Unqualified| Equal To|Qualified|
    
    
    
    
    ### Lead_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Lead Loop|
    |Collection Reference|ids|
    |Iteration Order|Asc|
    |Next Value Connector|[Assign_Lead_Status_Values_0](#assign_lead_status_values_0)|
    |No More Values Connector|[Update_Record](#update_record)|
    
    
    ### Update_Record
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Record|
    |Input Reference|leadCollection|
    
    
    ### Error
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|[Error](#error)|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|✅|
    |Show Footer|✅|
    |Show Header|✅|
    
    
    #### ConvertFailed
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p>You cannot convert Leads from this button. Please go back and select a valid status, or select "Finish" to cancel. </p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    ### Lead_Unqualified
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|Lead Unqualified|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|✅|
    |Show Footer|✅|
    |Show Header|✅|
    |Connector|[Validate_Selection](#validate_selection)|
    
    
    #### UnqualifyLead
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Extension Name|flowruntime:dependentPicklists|
    |Field Type| Component Instance|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Store Output Automatically|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Dependency Wrapper Api Name (input)|Lead|
    |Top Picklist Api Name (input)|Status|
    |Middle Picklist Api Name (input)|Unqualified_Reason__c|
    |Top Label (input)|Status|
    |Top Required (input)|✅|
    |Top Value (input)|unableToQualify|
    |Middle Label (input)|Unqualified Reason|
    |Middle Required (input)|✅|
    |Middle Value (input)|prospectUnresponsive|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

