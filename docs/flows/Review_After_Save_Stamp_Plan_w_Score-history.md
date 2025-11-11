# Review_After_Save_Stamp_Plan_w_Score history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Review_After_Save_Stamp_Plan_w_Score-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "3146498263"
    
    Assign_new_Saver_score_and_date[\"🟰 <em></em><br/>Assign new Saver score and date"/]:::assignments
    click Assign_new_Saver_score_and_date "#assign_new_saver_score_and_date" "625266974"
    
    Assign_new_ST_score_and_date[\"🟰 <em></em><br/>Assign new ST score and date"/]:::assignments
    click Assign_new_ST_score_and_date "#assign_new_st_score_and_date" "1162499028"
    
    Confirm_this_newest_Saver_Review{"🔀 <em></em><br/>Confirm this newest Saver Review"}:::decisions
    click Confirm_this_newest_Saver_Review "#confirm_this_newest_saver_review" "482159837"
    
    Confirm_this_newest_ST_Review{"🔀 <em></em><br/>Confirm this newest ST Review"}:::decisions
    click Confirm_this_newest_ST_Review "#confirm_this_newest_st_review" "3525532165"
    
    Saver_ST_split{"🔀 <em></em><br/>Saver ST split"}:::decisions
    click Saver_ST_split "#saver_st_split" "3481134951"
    
    Get_Related_Plan[("🔍 <em></em><br/>Get Related Plan")]:::recordLookups
    click Get_Related_Plan "#get_related_plan" "1650767035"
    
    Update_Related_Plan[("🛠️ <em></em><br/>Update Related Plan")]:::recordUpdates
    click Update_Related_Plan "#update_related_plan" "4031443147"
    
    Assign_new_Saver_score_and_date --> Update_Related_Plan
    Assign_new_ST_score_and_date --> Update_Related_Plan
    Confirm_this_newest_Saver_Review --> |"Needs Saver Update"| Assign_new_Saver_score_and_date
    Confirm_this_newest_Saver_Review --> |"Default Outcome"| END_Confirm_this_newest_Saver_Review
    Confirm_this_newest_ST_Review --> |"Needs ST update"| Assign_new_ST_score_and_date
    Confirm_this_newest_ST_Review --> |"Default Outcome"| END_Confirm_this_newest_ST_Review
    Saver_ST_split --> |"ST Review"| Confirm_this_newest_ST_Review
    Saver_ST_split --> |"Saver Review"| Confirm_this_newest_Saver_Review
    Saver_ST_split --> |"Default Outcome"| END_Saver_ST_split
    Get_Related_Plan --> Saver_ST_split
    Update_Related_Plan --> END_Update_Related_Plan
    START -->  Get_Related_Plan
    END_Confirm_this_newest_Saver_Review(( END )):::endClass
    END_Confirm_this_newest_ST_Review(( END )):::endClass
    END_Saver_ST_split(( END )):::endClass
    END_Update_Related_Plan(( END )):::endClass
    
    
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
    |Object|Reviews__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create And Update|
    |Label|Review | After Save | Stamp Plan w Score|
    |Status|Obsolete|
    |Does Require Record Changed To Meet Criteria|✅|
    |Description|Once a review has a plan, reviewer type, and rating, check plan to see if this is the most recent review of this type.  If so, update w new values|
    |Environments|Default|
    |Interview Label|Review | After Save | Stamp Plan w Score {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Related_Plan](#get_related_plan)|
    |Next Node|[Get_Related_Plan](#get_related_plan)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Plan__c| Is Null|<!-- -->|
    |2|Reviewer_Type__c| Is Null|<!-- -->|
    |3|Rating__c| Is Null|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |ratingString2Num|Number|VALUE(TEXT({!$Record.Rating__c}))|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Assign_new_Saver_score_and_date
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign new Saver score and date|
    |Connector|[Update_Related_Plan](#update_related_plan)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Get_Related_Plan.Most_Recent_Review_Saver__c| Assign|ratingString2Num|
    |Get_Related_Plan.Date_Most_Recent_Saver_Review__c| Assign|$Record.Review_Date__c|
    
    
    
    
    ### Assign_new_ST_score_and_date
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign new ST score and date|
    |Connector|isGoTo: true<br/>targetReference: Update_Related_Plan<br/>|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Get_Related_Plan.Date_Most_Recent_Sponsor_Trustee_Review__c| Assign|$Record.Review_Date__c|
    |Get_Related_Plan.Most_Recent_Review_Sponsor_Trustee__c| Assign|ratingString2Num|
    
    
    
    
    ### Confirm_this_newest_Saver_Review
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Confirm this newest Saver Review|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Needs_Saver_Update (Needs Saver Update)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_new_Saver_score_and_date](#assign_new_saver_score_and_date)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Related_Plan.Date_Most_Recent_Sponsor_Trustee_Review__c| Less Than Or Equal To|$Record.Review_Date__c|
    
    
    
    
    ### Confirm_this_newest_ST_Review
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Confirm this newest ST Review|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Needs_ST_update (Needs ST update)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_new_ST_score_and_date](#assign_new_st_score_and_date)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Related_Plan.Date_Most_Recent_Saver_Review__c| Less Than Or Equal To|$Record.Review_Date__c|
    
    
    
    
    ### Saver_ST_split
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Saver ST split|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule ST_Review (ST Review)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Confirm_this_newest_ST_Review](#confirm_this_newest_st_review)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Reviewer_Type__c| Equal To|Sponsor and/or Trustee|
    
    
    
    
    #### Rule Saver_Review (Saver Review)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Confirm_this_newest_Saver_Review](#confirm_this_newest_saver_review)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Reviewer_Type__c| Equal To|Saver|
    
    
    
    
    ### Get_Related_Plan
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Plan__c|
    |Label|Get Related Plan|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Saver_ST_split](#saver_st_split)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|$Record.Plan__c|
    
    
    
    
    ### Update_Related_Plan
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Related Plan|
    |Input Reference|[Get_Related_Plan](#get_related_plan)|
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

