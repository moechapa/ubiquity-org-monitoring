# Account_After_Trigger_Update_Imp_and_Plan_EIN history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Account_After_Trigger_Update_Imp_and_Plan_EIN-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "1956148075"
    
    AssignEINtoPlan[\"🟰 <em></em><br/>AssignEINtoPlan"/]:::assignments
    click AssignEINtoPlan "#assigneintoplan" "1123621985"
    
    AssignPlantoCollection[\"🟰 <em></em><br/>AssignPlantoCollection"/]:::assignments
    click AssignPlantoCollection "#assignplantocollection" "568546069"
    
    AssingEINtoImps[\"🟰 <em></em><br/>AssingEINtoImps"/]:::assignments
    click AssingEINtoImps "#assingeintoimps" "1025152931"
    
    ImpsToUpdate[\"🟰 <em></em><br/>ImpsToUpdate"/]:::assignments
    click ImpsToUpdate "#impstoupdate" "3762100008"
    
    FoundPlans{"🔀 <em></em><br/>FoundPlans"}:::decisions
    click FoundPlans "#foundplans" "2358554145"
    
    ImpsFound{"🔀 <em></em><br/>ImpsFound"}:::decisions
    click ImpsFound "#impsfound" "474318215"
    
    LoopImps{{"🔁 <em></em><br/>LoopImps"}}:::loops
    click LoopImps "#loopimps" "248293381"
    
    LoopPlans{{"🔁 <em></em><br/>LoopPlans"}}:::loops
    click LoopPlans "#loopplans" "3606268637"
    
    GetImps[("🔍 <em></em><br/>GetImps")]:::recordLookups
    click GetImps "#getimps" "735006051"
    
    GetPlans[("🔍 <em></em><br/>GetPlans")]:::recordLookups
    click GetPlans "#getplans" "3457230166"
    
    UpdateImps[("🛠️ <em></em><br/>UpdateImps")]:::recordUpdates
    click UpdateImps "#updateimps" "2923406726"
    
    UpdatePlans[("🛠️ <em></em><br/>UpdatePlans")]:::recordUpdates
    click UpdatePlans "#updateplans" "3563095875"
    
    AssignEINtoPlan --> AssignPlantoCollection
    AssignPlantoCollection --> LoopPlans
    AssingEINtoImps --> ImpsToUpdate
    ImpsToUpdate --> LoopImps
    FoundPlans --> |"PlansFound"| LoopPlans
    FoundPlans --> |"Default Outcome"| END_FoundPlans
    ImpsFound --> |"FoundImps"| LoopImps
    ImpsFound --> |"Default Outcome"| GetPlans
    LoopImps --> |"For Each"|AssingEINtoImps
    LoopImps ---> |"After Last"|UpdateImps
    LoopPlans --> |"For Each"|AssignEINtoPlan
    LoopPlans ---> |"After Last"|UpdatePlans
    GetImps --> ImpsFound
    GetPlans --> FoundPlans
    UpdateImps --> GetPlans
    UpdatePlans --> END_UpdatePlans
    START -->  GetImps
    END_FoundPlans(( END )):::endClass
    END_UpdatePlans(( END )):::endClass
    
    
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
    |Object|Account|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Update|
    |Label|Account | After Trigger | Update Imp and Plan EIN|
    |Status|Active|
    |Description|When Account is updated and EIN changes, update Plan and Imp EIN.|
    |Interview Label|Account | After Trigger | Update Imp and Plan EIN {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[GetImps](#getimps)|
    |Next Node|[GetImps](#getimps)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Employer_Identification_Number_EIN__c| Is Changed|✅|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |ImpCollectiontoUpdate|SObject|✅|⬜|⬜|Implementation__c|<!-- -->|
    |PlansToUpdate|SObject|✅|⬜|⬜|Plan__c|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### AssignEINtoPlan
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|[AssignEINtoPlan](#assigneintoplan)|
    |Connector|[AssignPlantoCollection](#assignplantocollection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |LoopPlans.EIN__c| Assign|$Record.Employer_Identification_Number_EIN__c|
    
    
    
    
    ### AssignPlantoCollection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|[AssignPlantoCollection](#assignplantocollection)|
    |Connector|[LoopPlans](#loopplans)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |PlansToUpdate| Add|[LoopPlans](#loopplans)|
    
    
    
    
    ### AssingEINtoImps
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|[AssingEINtoImps](#assingeintoimps)|
    |Connector|[ImpsToUpdate](#impstoupdate)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |LoopImps.EIN__c| Assign|$Record.Employer_Identification_Number_EIN__c|
    
    
    
    
    ### ImpsToUpdate
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|[ImpsToUpdate](#impstoupdate)|
    |Connector|[LoopImps](#loopimps)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |ImpCollectiontoUpdate| Add|[LoopImps](#loopimps)|
    
    
    
    
    ### FoundPlans
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[FoundPlans](#foundplans)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule PlansFound (PlansFound)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[LoopPlans](#loopplans)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|[GetPlans](#getplans)| Is Null|⬜|
    
    
    
    
    ### ImpsFound
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[ImpsFound](#impsfound)|
    |Default Connector|[GetPlans](#getplans)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule FoundImps (FoundImps)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[LoopImps](#loopimps)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|[GetImps](#getimps)| Is Null|⬜|
    
    
    
    
    ### LoopImps
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|[LoopImps](#loopimps)|
    |Collection Reference|[GetImps](#getimps)|
    |Iteration Order|Asc|
    |Next Value Connector|[AssingEINtoImps](#assingeintoimps)|
    |No More Values Connector|[UpdateImps](#updateimps)|
    
    
    ### LoopPlans
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|[LoopPlans](#loopplans)|
    |Collection Reference|[GetPlans](#getplans)|
    |Iteration Order|Asc|
    |Next Value Connector|[AssignEINtoPlan](#assigneintoplan)|
    |No More Values Connector|[UpdatePlans](#updateplans)|
    
    
    ### GetImps
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Implementation__c|
    |Label|[GetImps](#getimps)|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Queried Fields|- Id<br/>- EIN__c<br/>|
    |Store Output Automatically|✅|
    |Connector|[ImpsFound](#impsfound)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Account__c| Equal To|$Record.Id|
    
    
    
    
    ### GetPlans
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Plan__c|
    |Label|[GetPlans](#getplans)|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|⬜|
    |Queried Fields|- Id<br/>- EIN__c<br/>|
    |Store Output Automatically|✅|
    |Connector|[FoundPlans](#foundplans)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Account__c| Equal To|$Record.Id|
    
    
    
    
    ### UpdateImps
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|[UpdateImps](#updateimps)|
    |Input Reference|ImpCollectiontoUpdate|
    |Connector|[GetPlans](#getplans)|
    
    
    ### UpdatePlans
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|[UpdatePlans](#updateplans)|
    |Input Reference|PlansToUpdate|
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

