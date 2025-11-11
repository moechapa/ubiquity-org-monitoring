# Cadence_Automation_Flow_Lead_Status_Unable_to_Qualify history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Cadence_Automation_Flow_Lead_Status_Unable_to_Qualify-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START"]):::startClass
    click START "#general-information" "22861715"
    
    HasCadenceTracker{"🔀 <em></em><br/>Has Cadence Tracker?"}:::decisions
    click HasCadenceTracker "#hascadencetracker" "4162141653"
    
    HasLead{"🔀 <em></em><br/>Has Lead?"}:::decisions
    click HasLead "#haslead" "871023279"
    
    GetCadenceTrackerRecord[("🔍 <em></em><br/>Get Cadence Tracker Record")]:::recordLookups
    click GetCadenceTrackerRecord "#getcadencetrackerrecord" "61620349"
    
    GetLeadRecord[("🔍 <em></em><br/>Get Lead Record")]:::recordLookups
    click GetLeadRecord "#getleadrecord" "2161250610"
    
    UpdateLeadStatus[("🛠️ <em></em><br/>Update Lead Status")]:::recordUpdates
    click UpdateLeadStatus "#updateleadstatus" "351742753"
    
    HasCadenceTracker --> |"Yes"| GetLeadRecord
    HasCadenceTracker --> |"No (Default)"| END_HasCadenceTracker
    HasLead --> |"Yes"| UpdateLeadStatus
    HasLead --> |"No (Default)"| END_HasLead
    GetCadenceTrackerRecord --> HasCadenceTracker
    GetLeadRecord --> HasLead
    UpdateLeadStatus --> END_UpdateLeadStatus
    START -->  GetCadenceTrackerRecord
    END_HasCadenceTracker(( END )):::endClass
    END_HasLead(( END )):::endClass
    END_UpdateLeadStatus(( END )):::endClass
    
    
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
    |Process Type| Action Cadence Autolaunched Flow|
    |Label|Cadence Automation Flow: Lead Status - Unable to Qualify|
    |Status|Active|
    |Environments|Default|
    |Interview Label|Cadence Automation Flow: Lead Status - Unable to Qualify {!$Flow.CurrentDateTime}|
    |Run In Mode| System Mode Without Sharing|
    |Source Template|se_cadence_flow__UpdateLeadPath|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[GetCadenceTrackerRecord](#getcadencetrackerrecord)|
    |Next Node|[GetCadenceTrackerRecord](#getcadencetrackerrecord)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |actionCadenceStepTrackerCompletionReason|String|⬜|✅|⬜|<!-- -->|Required by Cadence Autolaunched Flow. Stores the enum value that indicates how the cadence step was completed. It can be used to determine whether the step is skipped or completed.|
    |actionCadenceStepTrackerId|String|⬜|✅|⬜|<!-- -->|Required by Cadence Autolaunched Flow. Stores the ID of the cadence step that's passed into the flow. It can be used to get information about the step. For example, you can get the step name and step type using the actionCadenceStepTrackerId variable.|
    |actionCadenceTrackerId|String|⬜|✅|⬜|<!-- -->|Required by Cadence Autolaunched Flow. Stores the ID of the action cadence step tracker that’s passed into the flow.|
    
    
    ## Flow Nodes Details
    
    ### HasCadenceTracker
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Has Cadence Tracker?|
    |Description|Determines whether a cadence tracker record was found in GetCadenceTrackerRecord.|
    |Default Connector Label|No (Default)|
    
    
    #### Rule CadenceTrackerExists (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[GetLeadRecord](#getleadrecord)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|[GetCadenceTrackerRecord](#getcadencetrackerrecord)| Is Null|⬜|
    
    
    
    
    ### HasLead
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Has Lead?|
    |Description|Determines whether a lead record was found in GetLeadRecord.|
    |Default Connector Label|No (Default)|
    
    
    #### Rule LeadExists (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[UpdateLeadStatus](#updateleadstatus)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|[GetLeadRecord](#getleadrecord)| Is Null|⬜|
    
    
    
    
    ### GetCadenceTrackerRecord
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|ActionCadenceTracker|
    |Label|Get Cadence Tracker Record|
    |Description|Gets the cadence tracker record with an ID matching the ID in actionCadenceTrackerId. Stores the ID, the TargetId, and the OwnerId of the returned record in the Cadence Tracker from GetCadenceTrackerRecord record variable.|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|- Id<br/>- TargetId<br/>|
    |Store Output Automatically|✅|
    |Connector|[HasCadenceTracker](#hascadencetracker)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|actionCadenceTrackerId|
    
    
    
    
    ### GetLeadRecord
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Lead|
    |Label|Get Lead Record|
    |Description|Gets the lead record with an ID matching the TargetId from Cadence Tracker from GetCadenceTrackerRecord. Stores the lead record's ID and status in the Lead from GetLeadRecord record variable.|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|- Id<br/>- Status<br/>|
    |Store Output Automatically|✅|
    |Connector|[HasLead](#haslead)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|GetCadenceTrackerRecord.TargetId|
    
    
    
    
    ### UpdateLeadStatus
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Lead|
    |Label|Update Lead Status|
    |Description|Updates the Status field to Contacted for the lead record with an ID matching the ID of Lead from GetLeadRecord and a Status other than Contacted.|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|GetLeadRecord.Id|
    |2|Status| Not Equal To|Unable to Qualify|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Status|Unable to Qualify|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

