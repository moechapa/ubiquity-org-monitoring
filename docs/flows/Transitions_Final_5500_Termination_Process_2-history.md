# Transitions_Final_5500_Termination_Process_2 history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Transitions_Final_5500_Termination_Process_2-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "620719644"
    
    Assign_compId[\"🟰 <em></em><br/>Assign compId"/]:::assignments
    click Assign_compId "#assign_compid" "3469961557"
    
    Queue_Found_Check{"🔀 <em></em><br/>Queue Found Check"}:::decisions
    click Queue_Found_Check "#queue_found_check" "3426767998"
    
    myRule_3_A1[("➕ <em></em><br/>Compliance | Final Form 5500")]:::recordCreates
    click myRule_3_A1 "#myrule_3_a1" "400115269"
    
    Get_Compliance_Queue[("🔍 <em></em><br/>Get Compliance Queue")]:::recordLookups
    click Get_Compliance_Queue "#get_compliance_queue" "270842448"
    
    Assign_compId --> myRule_3_A1
    Queue_Found_Check --> |"Found Queue"| Assign_compId
    Queue_Found_Check --> |"Default Outcome"| myRule_3_A1
    myRule_3_A1 --> END_myRule_3_A1
    Get_Compliance_Queue --> Queue_Found_Check
    START -->  Get_Compliance_Queue
    END_myRule_3_A1(( END )):::endClass
    
    
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
    |Object|Transition__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Update|
    |Label|Transitions | After Save | Final 5500 Case|
    |Status|Active|
    |Description|Migrated from the Transitions | Final 5500 Termination Process process using Final 5500 Plan Year End criteria.|
    |Environments|Default|
    |Interview Label|Transitions | After Save | Final 5500 Case {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    |Connector|[Get_Compliance_Queue](#get_compliance_queue)|
    |Next Node|[Get_Compliance_Queue](#get_compliance_queue)|
    
    
    #### Filters (logic: **1 AND 2 AND (3 OR 4)**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Final_5500_PYE__c| Is Changed|✅|
    |2|Final_5500_PYE__c| Is Null|<!-- -->|
    |3|Transition_Type__c| Equal To|Termination|
    |4|Transition_Type__c| Equal To|Termination/Merger|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |compId|String|⬜|⬜|⬜|<!-- -->|Defaults as compliance user id.  Should update to compliance queue id|
    
    
    ## Flow Nodes Details
    
    ### Assign_compId
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign compId|
    |Connector|[myRule_3_A1](#myrule_3_a1)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |compId| Assign|Get_Compliance_Queue.Id|
    
    
    
    
    ### Queue_Found_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Queue Found Check|
    |Default Connector|[myRule_3_A1](#myrule_3_a1)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Found_Queue (Found Queue)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_compId](#assign_compid)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|[Get_Compliance_Queue](#get_compliance_queue)| Is Null|⬜|
    
    
    
    
    ### myRule_3_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Compliance | Final Form 5500|
    |Store Output Automatically|✅|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|$Record.Account__r.Id|
    |BusinessHoursId|01m37000000PC36|
    |Category__c|Transition|
    |Department__c|Compliance|
    |Description|Please prepare the final Form 5500|
    |Origin|Internal|
    |OwnerId|compId|
    |Plan__c|$Record.Plan__c|
    |RecordTypeId|01237000000Xs6BAAS|
    |Status|New|
    |Subject|Final Form 5500 Date has been completed|
    
    
    
    
    ### Get_Compliance_Queue
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Group|
    |Label|Get Compliance Queue|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Queried Fields|Id|
    |Store Output Automatically|✅|
    |Connector|[Queue_Found_Check](#queue_found_check)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|DeveloperName| Equal To|Compliance|
    |2|Type| Equal To|Queue|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

