# Sponsor_Trustee_Junction history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Sponsor_Trustee_Junction-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>"]):::startClass
    click START "#general-information" "3666306141"
    
    Assign_Junction_Values[\"🟰 <em></em><br/>Assign Junction Values (Both)"/]:::assignments
    click Assign_Junction_Values "#assign_junction_values" "4124666160"
    
    Assign_Junction_Values_0[\"🟰 <em></em><br/>Assign Junction Values (Plan Sponsor)"/]:::assignments
    click Assign_Junction_Values_0 "#assign_junction_values_0" "2674536989"
    
    Assign_Junction_Values_0_0[\"🟰 <em></em><br/>Assign Junction Values (Trustee)"/]:::assignments
    click Assign_Junction_Values_0_0 "#assign_junction_values_0_0" "1649090359"
    
    Assign_to_Collection[\"🟰 <em></em><br/>Assign to Collection"/]:::assignments
    click Assign_to_Collection "#assign_to_collection" "2149929274"
    
    Does_Opp_Exist{"🔀 <em></em><br/>Does Opp Exist?"}:::decisions
    click Does_Opp_Exist "#does_opp_exist" "2686786439"
    
    Sponsor_Trustee_or_Both{"🔀 <em></em><br/>Sponsor, Trustee, or Both?"}:::decisions
    click Sponsor_Trustee_or_Both "#sponsor_trustee_or_both" "585966052"
    
    Loop_Through_Opp{{"🔁 <em></em><br/>Loop Through Opp"}}:::loops
    click Loop_Through_Opp "#loop_through_opp" "2724815096"
    
    Create_AC_s[("➕ <em></em><br/>Create AC's")]:::recordCreates
    click Create_AC_s "#create_ac_s" "927844446"
    
    Get_Account[("🔍 <em></em><br/>Get Account")]:::recordLookups
    click Get_Account "#get_account" "3573180296"
    
    Get_Opp[("🔍 <em></em><br/>Get Opp")]:::recordLookups
    click Get_Opp "#get_opp" "4151914984"
    
    GetContact[("🔍 <em></em><br/>Get Contact")]:::recordLookups
    click GetContact "#getcontact" "1612912955"
    
    Assign_Junction_Values --> Assign_to_Collection
    Assign_Junction_Values_0 --> Assign_to_Collection
    Assign_Junction_Values_0_0 --> Assign_to_Collection
    Assign_to_Collection --> Loop_Through_Opp
    Does_Opp_Exist --> |"Yes"| Loop_Through_Opp
    Does_Opp_Exist --> |"No"| END_Does_Opp_Exist
    Sponsor_Trustee_or_Both --> |"Sponsor"| Assign_Junction_Values_0
    Sponsor_Trustee_or_Both --> |"Trustee"| Assign_Junction_Values_0_0
    Sponsor_Trustee_or_Both --> |"Both"| Assign_Junction_Values
    Loop_Through_Opp --> |"For Each"|Sponsor_Trustee_or_Both
    Loop_Through_Opp ---> |"After Last"|Create_AC_s
    Create_AC_s --> END_Create_AC_s
    Get_Account --> Get_Opp
    Get_Opp --> Does_Opp_Exist
    GetContact --> Get_Account
    START -->  GetContact
    END_Does_Opp_Exist(( END )):::endClass
    END_Create_AC_s(( END )):::endClass
    
    
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
    |Label|Contact | Process | Sponsor/Trustee Junction|
    |Status|Active|
    |Description|Create Associated Contacts when a Sponsor &/or Trustee is added to an Account with an active Plan|
    |Interview Label|Sponsor/Trustee Junction {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[GetContact](#getcontact)|
    |Next Node|[GetContact](#getcontact)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |AC|SObject|⬜|✅|✅|Associated_Contact__c|<!-- -->|
    |ACGroup|SObject|✅|✅|✅|Associated_Contact__c|<!-- -->|
    |ACVariable|SObject|⬜|✅|✅|Associated_Contact__c|<!-- -->|
    |Imp|SObject|✅|✅|✅|Implementation__c|<!-- -->|
    |Opp|SObject|✅|✅|✅|Opportunity|<!-- -->|
    |OppVariable|SObject|⬜|✅|✅|Opportunity|<!-- -->|
    |recordId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Assign_Junction_Values
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Junction Values (Both)|
    |Connector|[Assign_to_Collection](#assign_to_collection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |ACVariable.Contact__c| Assign|GetContact.Id|
    |ACVariable.Account__c| Assign|Get_Account.Id|
    |ACVariable.Opportunity__c| Assign|OppVariable.Id|
    |ACVariable.Contact_Role__c| Assign|Plan Sponsor & Trustee|
    
    
    
    
    ### Assign_Junction_Values_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Junction Values (Plan Sponsor)|
    |Connector|[Assign_to_Collection](#assign_to_collection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |ACVariable.Contact__c| Assign|GetContact.Id|
    |ACVariable.Account__c| Assign|Get_Account.Id|
    |ACVariable.Opportunity__c| Assign|OppVariable.Id|
    |ACVariable.Contact_Role__c| Assign|Plan Sponsor|
    
    
    
    
    ### Assign_Junction_Values_0_0
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Junction Values (Trustee)|
    |Connector|[Assign_to_Collection](#assign_to_collection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |ACVariable.Contact__c| Assign|GetContact.Id|
    |ACVariable.Account__c| Assign|Get_Account.Id|
    |ACVariable.Opportunity__c| Assign|OppVariable.Id|
    |ACVariable.Contact_Role__c| Assign|Trustee|
    
    
    
    
    ### Assign_to_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign to Collection|
    |Connector|[Loop_Through_Opp](#loop_through_opp)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |ACGroup| Add|ACVariable|
    
    
    
    
    ### Does_Opp_Exist
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Does Opp Exist?|
    |Default Connector Label|No|
    
    
    #### Rule Yes (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Loop_Through_Opp](#loop_through_opp)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|Opp| Is Null|⬜|
    
    
    
    
    ### Sponsor_Trustee_or_Both
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Sponsor, Trustee, or Both?|
    |Default Connector|[Assign_Junction_Values](#assign_junction_values)|
    |Default Connector Label|Both|
    
    
    #### Rule Sponsor (Sponsor)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Junction_Values_0](#assign_junction_values_0)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|GetContact.Role__c| Equal To|Plan Sponsor|
    |2|GetContact.Role__c| Equal To|Saver & Plan Sponsor|
    |3|GetContact.Role__c| Equal To|Plan Sponsor & Advisor|
    |4|GetContact.Role__c| Equal To|Saver & Plan Sponsor & Advisor|
    
    
    
    
    #### Rule Trustee (Trustee)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Junction_Values_0_0](#assign_junction_values_0_0)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|GetContact.Role__c| Equal To|Trustee|
    |2|GetContact.Role__c| Equal To|Saver & Trustee|
    |3|GetContact.Role__c| Equal To|Trustee & Advisor|
    |4|GetContact.Role__c| Equal To|Saver & Trustee & Advisor|
    
    
    
    
    ### Loop_Through_Opp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Loop Through Opp|
    |Assign Next Value To Reference|OppVariable|
    |Collection Reference|Opp|
    |Iteration Order|Asc|
    |Next Value Connector|[Sponsor_Trustee_or_Both](#sponsor_trustee_or_both)|
    |No More Values Connector|[Create_AC_s](#create_ac_s)|
    
    
    ### Create_AC_s
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Label|Create AC's|
    |Input Reference|ACGroup|
    
    
    ### Get_Account
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Account|
    |Label|Get Account|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Get_Opp](#get_opp)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|GetContact.AccountId|
    
    
    
    
    ### Get_Opp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Opportunity|
    |Label|Get Opp|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|Opp|
    |Queried Fields|Id|
    |Sort Field|CreatedDate|
    |Sort Order|Desc|
    |Connector|[Does_Opp_Exist](#does_opp_exist)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|AccountId| Equal To|Get_Account.Id|
    
    
    
    
    ### GetContact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Get Contact|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Get_Account](#get_account)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

