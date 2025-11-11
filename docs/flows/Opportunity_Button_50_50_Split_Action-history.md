# Opportunity_Button_50_50_Split_Action history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Opportunity_Button_50_50_Split_Action-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Screen Flow</b>"]):::startClass
    click START "#general-information" "506475240"
    
    Assign_Split[\"🟰 <em></em><br/>Assign Split"/]:::assignments
    click Assign_Split "#assign_split" "1088472965"
    
    Assign_Split_0[\"🟰 <em></em><br/>Assign Split"/]:::assignments
    click Assign_Split_0 "#assign_split_0" "4191766580"
    
    Owner_Equals_User{"🔀 <em></em><br/>Owner Equals User"}:::decisions
    click Owner_Equals_User "#owner_equals_user" "2429543387"
    
    Sole_Rev_Share_Check{"🔀 <em></em><br/>Sole Rev Share Check"}:::decisions
    click Sole_Rev_Share_Check "#sole_rev_share_check" "2063720946"
    
    Create_Split[("➕ <em></em><br/>Create Split")]:::recordCreates
    click Create_Split "#create_split" "3400299637"
    
    Create_Split_0[("➕ <em></em><br/>Create Split")]:::recordCreates
    click Create_Split_0 "#create_split_0" "920103772"
    
    Get_Opp[("🔍 <em></em><br/>Get Opp")]:::recordLookups
    click Get_Opp "#get_opp" "3877449792"
    
    Get_Split[("🔍 <em></em><br/>Get Split")]:::recordLookups
    click Get_Split "#get_split" "2829784762"
    
    Update_Split[("🛠️ <em></em><br/>Update Split")]:::recordUpdates
    click Update_Split "#update_split" "953599555"
    
    Update_Split_0[("🛠️ <em></em><br/>Update Split")]:::recordUpdates
    click Update_Split_0 "#update_split_0" "156742035"
    
    User_Selection(["💻 <em></em><br/>User Selection"]):::screens
    click User_Selection "#user_selection" "2528672750"
    
    Assign_Split --> Create_Split
    Assign_Split_0 --> Create_Split_0
    Owner_Equals_User --> |"Owner = User"| Get_Opp
    Owner_Equals_User --> |"Owner != User"| Assign_Split
    Sole_Rev_Share_Check --> |"Eligible"| Owner_Equals_User
    Sole_Rev_Share_Check --> |"Ineligible"| END_Sole_Rev_Share_Check
    Create_Split --> Update_Split
    Create_Split_0 --> Update_Split_0
    Get_Opp --> User_Selection
    Get_Split --> Sole_Rev_Share_Check
    Update_Split --> END_Update_Split
    Update_Split_0 --> END_Update_Split_0
    User_Selection --> Assign_Split_0
    START -->  Get_Split
    END_Sole_Rev_Share_Check(( END )):::endClass
    END_Update_Split(( END )):::endClass
    END_Update_Split_0(( END )):::endClass
    
    
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
    |Label|Opportunity | Button | 50-50 Split Action|
    |Status|Active|
    |Interview Label|Opportunity | Button | 50-50 Split {!$Flow.CurrentDateTime}|
    |Run In Mode| System Mode Without Sharing|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Split](#get_split)|
    |Next Node|[Get_Split](#get_split)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |existingSplit|SObject|⬜|✅|⬜|OpportunitySplit|<!-- -->|
    |newSplit|SObject|⬜|✅|⬜|OpportunitySplit|<!-- -->|
    |recordId|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Assign_Split
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Split|
    |Connector|[Create_Split](#create_split)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |newSplit.SplitPercentage| Assign|50|
    |existingSplit.SplitPercentage| Assign|50|
    |newSplit.SplitOwnerId| Assign|$User.Id|
    |newSplit.Opportunity__c| Assign|recordId|
    |newSplit.OpportunityId| Assign|recordId|
    
    
    
    
    ### Assign_Split_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Split|
    |Connector|[Create_Split_0](#create_split_0)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |newSplit.SplitPercentage| Assign|50|
    |existingSplit.SplitPercentage| Assign|50|
    |newSplit.SplitOwnerId| Assign|Owner.recordId|
    |newSplit.Opportunity__c| Assign|recordId|
    |newSplit.OpportunityId| Assign|recordId|
    
    
    
    
    ### Owner_Equals_User
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Owner Equals User|
    |Default Connector|[Assign_Split](#assign_split)|
    |Default Connector Label|Owner != User|
    
    
    #### Rule Owner_is_User (Owner = User)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_Opp](#get_opp)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|existingSplit.SplitOwnerId| Contains|$User.Id|
    
    
    
    
    ### Sole_Rev_Share_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Sole Rev Share Check|
    |Default Connector Label|Ineligible|
    
    
    #### Rule Eligible (Eligible)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Owner_Equals_User](#owner_equals_user)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|existingSplit.Id| Is Null|⬜|
    
    
    
    
    ### Create_Split
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Label|Create Split|
    |Input Reference|newSplit|
    |Connector|[Update_Split](#update_split)|
    
    
    ### Create_Split_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Label|Create Split|
    |Input Reference|newSplit|
    |Connector|[Update_Split_0](#update_split_0)|
    
    
    ### Get_Opp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Opportunity|
    |Label|Get Opp|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[User_Selection](#user_selection)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Get_Split
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|OpportunitySplit|
    |Label|Get Split|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|existingSplit|
    |Queried Fields|- Id<br/>- OpportunityId<br/>- SplitOwnerId<br/>- SplitPercentage<br/>|
    |Connector|[Sole_Rev_Share_Check](#sole_rev_share_check)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|OpportunityId| Equal To|recordId|
    |2|SplitPercentage| Equal To|100|
    
    
    
    
    ### Update_Split
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Split|
    |Input Reference|existingSplit|
    
    
    ### Update_Split_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Split|
    |Input Reference|existingSplit|
    
    
    ### User_Selection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|User Selection|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|✅|
    |Show Footer|✅|
    |Show Header|⬜|
    |Connector|[Assign_Split_0](#assign_split_0)|
    
    
    #### Owner
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Extension Name|flowruntime:lookup|
    |Field Type| Component Instance|
    |Inputs On Next Nav To Assoc Scrn| Use Stored Values|
    |Is Required|✅|
    |Store Output Automatically|✅|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    |Field Api Name (input)|CreatedById|
    |Label (input)|Opportunity Team Member|
    |Object Api Name (input)|Opportunity|
    |Required (input)|✅|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

