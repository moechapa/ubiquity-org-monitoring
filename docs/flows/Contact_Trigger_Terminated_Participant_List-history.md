# Contact_Trigger_Terminated_Participant_List history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Contact_Trigger_Terminated_Participant_List-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "2112974907"
    
    Add_to_Collection[\"🟰 <em></em><br/>Add to Collection"/]:::assignments
    click Add_to_Collection "#add_to_collection" "3687821382"
    
    Update_Terminated_Plan_Participant_List[\"🟰 <em></em><br/>Update Terminated Plan Participant List"/]:::assignments
    click Update_Terminated_Plan_Participant_List "#update_terminated_plan_participant_list" "1268885052"
    
    Advisor_s_Found{"🔀 <em></em><br/>Advisor(s) Found"}:::decisions
    click Advisor_s_Found "#advisor_s_found" "2545077147"
    
    Advisor_Loop{{"🔁 <em></em><br/>Advisor Loop"}}:::loops
    click Advisor_Loop "#advisor_loop" "934439491"
    
    Get_Associated_Advisor[("🔍 <em></em><br/>Get Associated Advisor")]:::recordLookups
    click Get_Associated_Advisor "#get_associated_advisor" "3931963155"
    
    Update_Contacts[("🛠️ <em></em><br/>Update Contacts")]:::recordUpdates
    click Update_Contacts "#update_contacts" "2200796604"
    
    Add_to_Collection --> Advisor_Loop
    Update_Terminated_Plan_Participant_List --> Add_to_Collection
    Advisor_s_Found --> |"Yes"| Advisor_Loop
    Advisor_s_Found --> |"No"| END_Advisor_s_Found
    Advisor_Loop --> |"For Each"|Update_Terminated_Plan_Participant_List
    Advisor_Loop ---> |"After Last"|Update_Contacts
    Get_Associated_Advisor --> Advisor_s_Found
    Update_Contacts --> END_Update_Contacts
    START -->  Get_Associated_Advisor
    END_Advisor_s_Found(( END )):::endClass
    END_Update_Contacts(( END )):::endClass
    
    
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
    |Object|Contact|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Update|
    |Label|Contact | Trigger | Terminated Participant List|
    |Status|Active|
    |Does Require Record Changed To Meet Criteria|✅|
    |Description|Add to an Advisor's Terminated Participant List when active client's participant is terminated|
    |Interview Label|Contact | Trigger | Terminated Participant List {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Associated_Advisor](#get_associated_advisor)|
    |Next Node|[Get_Associated_Advisor](#get_associated_advisor)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Termination_Date__c| Is Null|<!-- -->|
    |2|Participant_Balance__c| Greater Than Or Equal To|5000|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |advisorContact|SObject|⬜|✅|⬜|Contact|<!-- -->|
    |advisorContactCollection|SObject|✅|✅|⬜|Contact|<!-- -->|
    |relatedAdvisorAssociations|SObject|✅|✅|⬜|Associated_Contact__c|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |TerminatedParticipantUpdate|String|{!$Record.Name} + BR() + BR()|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Add_to_Collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Add to Collection|
    |Connector|[Advisor_Loop](#advisor_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |advisorContactCollection| Add|advisorContact|
    
    
    
    
    ### Update_Terminated_Plan_Participant_List
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Update Terminated Plan Participant List|
    |Connector|[Add_to_Collection](#add_to_collection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |advisorContact.Terminated_Plan_Participants__c| Add|TerminatedParticipantUpdate|
    |advisorContact.Id| Assign|Advisor_Loop.Contact__c|
    
    
    
    
    ### Advisor_s_Found
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Advisor(s) Found|
    |Default Connector Label|No|
    
    
    #### Rule YesAdvisorFound (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Advisor_Loop](#advisor_loop)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|relatedAdvisorAssociations| Is Null|⬜|
    
    
    
    
    ### Advisor_Loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|Advisor Loop|
    |Collection Reference|relatedAdvisorAssociations|
    |Iteration Order|Asc|
    |Next Value Connector|[Update_Terminated_Plan_Participant_List](#update_terminated_plan_participant_list)|
    |No More Values Connector|[Update_Contacts](#update_contacts)|
    
    
    ### Get_Associated_Advisor
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Associated_Contact__c|
    |Label|Get Associated Advisor|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|relatedAdvisorAssociations|
    |Queried Fields|- Id<br/>- Contact__c<br/>|
    |Connector|[Advisor_s_Found](#advisor_s_found)|
    
    
    #### Filters (logic: **1 AND 2 AND (3 OR 4)**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Plan_Account_ID__c| Equal To|$Record.AccountId|
    |2|Contact_Role__c| Equal To|Financial Advisor|
    |3|Plan_Status__c| Equal To|Active|
    |4|Plan_Status__c| Equal To|Implementation In Progress|
    
    
    
    
    ### Update_Contacts
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Contacts|
    |Input Reference|advisorContactCollection|
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

