# Agentforce_Check_Business_Hours history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Agentforce_Check_Business_Hours-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>"]):::startClass
    click START "#general-information" "1444077275"
    
    Check_if_datetime_within_Business_Hours("⚙️ <em></em><br/>Check if datetime within Business Hours"):::actionCalls
    click Check_if_datetime_within_Business_Hours "#check_if_datetime_within_business_hours" "994930197"
    
    BusinessHoursCheck[\"🟰 <em></em><br/>BusinessHoursCheck"/]:::assignments
    click BusinessHoursCheck "#businesshourscheck" "2309972170"
    
    Get_Business_Hours[("🔍 <em></em><br/>Get Business Hours")]:::recordLookups
    click Get_Business_Hours "#get_business_hours" "2876526432"
    
    Check_if_datetime_within_Business_Hours --> BusinessHoursCheck
    BusinessHoursCheck --> END_BusinessHoursCheck
    Get_Business_Hours --> Check_if_datetime_within_Business_Hours
    START -->  Get_Business_Hours
    END_BusinessHoursCheck(( END )):::endClass
    
    
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
    |Label|Agentforce | Check Business Hours|
    |Status|Active|
    |Description|Checks if current time is within business hours. Used by Ubiquity Service Agent|
    |Environments|Default|
    |Interview Label|Agentforce | Check Business Hours {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Business_Hours](#get_business_hours)|
    |Next Node|[Get_Business_Hours](#get_business_hours)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |businessHoursName|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    |withInBusinessHours|Boolean|⬜|⬜|✅|<!-- -->|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Check_if_datetime_within_Business_Hours
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Check if datetime within Business Hours|
    |Action Type|Apex|
    |Action Name|[businessHoursDatetimeCheck](../apex/businessHoursDatetimeCheck.md)|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|businessHoursDatetimeCheck|
    |Offset|0|
    |Store Output Automatically|✅|
    |Business Hours Id (input)|Get_Business_Hours.Id|
    |Connector|[BusinessHoursCheck](#businesshourscheck)|
    
    
    ### BusinessHoursCheck
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|[BusinessHoursCheck](#businesshourscheck)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |withInBusinessHours| Assign|Check_if_datetime_within_Business_Hours.isWithinBusinessHours|
    
    
    
    
    ### Get_Business_Hours
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|BusinessHours|
    |Label|Get Business Hours|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Check_if_datetime_within_Business_Hours](#check_if_datetime_within_business_hours)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Name| Equal To|Chat Business Hours|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

