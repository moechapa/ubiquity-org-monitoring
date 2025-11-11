# Proposal_Before_Trigger_Incoming_Proposal_Match history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Proposal_Before_Trigger_Incoming_Proposal_Match-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record Before Save</b>"]):::startClass
    click START "#general-information" "3011238474"
    
    Match_Found_Check{"🔀 <em></em><br/>Match Found Check"}:::decisions
    click Match_Found_Check "#match_found_check" "1135980710"
    
    Find_Marketing_Match[("🔍 <em></em><br/>Find Marketing Match")]:::recordLookups
    click Find_Marketing_Match "#find_marketing_match" "3592959535"
    
    Stamp_Plan_Date[("🛠️ <em></em><br/>Stamp Plan Date")]:::recordUpdates
    click Stamp_Plan_Date "#stamp_plan_date" "2964363312"
    
    Update_Proposal_As_Matched[("🛠️ <em></em><br/>Update Proposal As Matched")]:::recordUpdates
    click Update_Proposal_As_Matched "#update_proposal_as_matched" "411706138"
    
    Match_Found_Check --> |"Match Found"| Update_Proposal_As_Matched
    Match_Found_Check --> |"Default Outcome"| Stamp_Plan_Date
    Find_Marketing_Match --> Match_Found_Check
    Stamp_Plan_Date --> END_Stamp_Plan_Date
    Update_Proposal_As_Matched --> END_Update_Proposal_As_Matched
    START -->  Find_Marketing_Match
    END_Stamp_Plan_Date(( END )):::endClass
    END_Update_Proposal_As_Matched(( END )):::endClass
    
    
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
    |Object|Proposal__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record Before Save|
    |Record Trigger Type| Create|
    |Label|Proposal | Before Trigger | Incoming Proposal Match|
    |Status|Obsolete|
    |Environments|Default|
    |Interview Label|Proposal | Before Trigger | Marketing Proposal Matching {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Find_Marketing_Match](#find_marketing_match)|
    |Next Node|[Find_Marketing_Match](#find_marketing_match)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Plan_ID__c| Starts With|https://www.simplyretirement.com/plans/|
    |2|Stage_Flag__c| Not Equal To|Quick Quote|
    |3|Stage_Flag__c| Not Equal To|Marketing|
    |4|Plan_ID_First_Synced__c| Is Null|<!-- -->|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |matchedPropId|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Match_Found_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Match Found Check|
    |Default Connector|[Stamp_Plan_Date](#stamp_plan_date)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Match_Found (Match Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Proposal_As_Matched](#update_proposal_as_matched)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|matchedPropId| Is Null|⬜|
    
    
    
    
    ### Find_Marketing_Match
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Proposal__c|
    |Label|Find Marketing Match|
    |Assign Null Values If No Records Found|✅|
    |Output Assignments|assignToReference: matchedPropId<br/>field: Id<br/>|
    |Connector|[Match_Found_Check](#match_found_check)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Company_Email__c| Equal To|$Record.Company_Email__c|
    |2|Stage_Flag__c| Equal To|Marketing|
    |3|Plan_ID_First_Synced__c| Is Null|<!-- -->|
    
    
    
    
    ### Stamp_Plan_Date
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Stamp Plan Date|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Plan_ID_First_Synced__c|$Flow.CurrentDate|
    
    
    
    
    ### Update_Proposal_As_Matched
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Proposal As Matched|
    |Input Reference|$Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Plan_ID_First_Synced__c|dateValue: '1982-08-25'<br/>|
    |Queued__c|✅|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

