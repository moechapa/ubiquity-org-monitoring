# Support_Case_Team_Flow history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Support_Case_Team_Flow-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>"]):::startClass
    click START "#general-information" "1758092619"
    
    Assign_New_Case_Team[\"🟰 <em></em><br/>Assign New Case Team"/]:::assignments
    click Assign_New_Case_Team "#assign_new_case_team" "2864151278"
    
    Is_Case_Team_Null{"🔀 <em></em><br/>Is the case team null?"}:::decisions
    click Is_Case_Team_Null "#is_case_team_null" "2349113593"
    
    Is_this_case_closed{"🔀 <em></em><br/>Is this case closed?"}:::decisions
    click Is_this_case_closed "#is_this_case_closed" "4013170389"
    
    Get_Case[("🔍 <em></em><br/>Get Case")]:::recordLookups
    click Get_Case "#get_case" "510507511"
    
    Update_Case_Team[("🛠️ <em></em><br/>Update Case Team")]:::recordUpdates
    click Update_Case_Team "#update_case_team" "4243312996"
    
    Assign_New_Case_Team --> Update_Case_Team
    Is_Case_Team_Null --> |"Yes"| Assign_New_Case_Team
    Is_Case_Team_Null --> |"No"| Is_this_case_closed
    Is_this_case_closed --> |"No"| Assign_New_Case_Team
    Get_Case --> Is_Case_Team_Null
    Update_Case_Team --> END_Update_Case_Team
    START -->  Get_Case
    END_Update_Case_Team(( END )):::endClass
    
    
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
    |Label|Support | Activity, Case Team|
    |Status|Obsolete|
    |Description|Updates Related Record Activity and Case Team when Case is Updated - Updated to split Imp and Plan Case Activity Dates by Inbound | Outbound|
    |Interview Label|Support | Case Team {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Case](#get_case)|
    |Next Node|[Get_Case](#get_case)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |recordId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |caseLastMod|Date|DATEVALUE({!Get_Case.LastModifiedDate})|<!-- -->|
    |now|DateTime|NOW()|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Assign_New_Case_Team
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign New Case Team|
    |Connector|[Update_Case_Team](#update_case_team)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |Get_Case.Case_Team_New__c| Assign|Get_Case.Case_Team__c|
    
    
    
    
    ### Is_Case_Team_Null
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Is the case team null?|
    |Default Connector|[Is_this_case_closed](#is_this_case_closed)|
    |Default Connector Label|No|
    
    
    #### Rule YesNull (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_New_Case_Team](#assign_new_case_team)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Case.Case_Team__c| Is Null|✅|
    
    
    
    
    ### Is_this_case_closed
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Is this case closed?|
    |Default Connector|[Assign_New_Case_Team](#assign_new_case_team)|
    |Default Connector Label|No|
    
    
    #### Rule YesClosed (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Get_Case.IsClosed| Equal To|✅|
    |2|Get_Case.CreatedDate| Not Equal To|Get_Case.ClosedDate|
    
    
    
    
    ### Get_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Case|
    |Label|Get Case|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Is_Case_Team_Null](#is_case_team_null)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Update_Case_Team
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Case Team|
    |Input Reference|[Get_Case](#get_case)|
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

