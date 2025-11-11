# Contact_Before_Trigger_Update_Paradigm_URL_and_Record_Type history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Contact_Before_Trigger_Update_Paradigm_URL_and_Record_Type-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record Before Save</b>"]):::startClass
    click START "#general-information" "1008486425"
    
    Assign_Plan_Participant_RT[\"🟰 <em></em><br/>Assign 'Plan Participant' RT"/]:::assignments
    click Assign_Plan_Participant_RT "#assign_plan_participant_rt" "2381180378"
    
    Assign_Ubiquity_Contact_RT[\"🟰 <em></em><br/>Assign 'Ubiquity Contact' RT"/]:::assignments
    click Assign_Ubiquity_Contact_RT "#assign_ubiquity_contact_rt" "2223692071"
    
    Update_Paradigm_URL[\"🟰 <em></em><br/>Update Paradigm URL"/]:::assignments
    click Update_Paradigm_URL "#update_paradigm_url" "2715325613"
    
    Update_Paradigm_URL_2[\"🟰 <em></em><br/>Update Paradigm URL"/]:::assignments
    click Update_Paradigm_URL_2 "#update_paradigm_url_2" "72558118"
    
    Is_Contact_Role_Saver{"🔀 <em></em><br/>Is Contact Role Saver?"}:::decisions
    click Is_Contact_Role_Saver "#is_contact_role_saver" "3456593698"
    
    Is_Contact_Ubiquity_Employee{"🔀 <em></em><br/>Is Contact Ubiquity Employee?"}:::decisions
    click Is_Contact_Ubiquity_Employee "#is_contact_ubiquity_employee" "2989166710"
    
    Is_SaverID_null{"🔀 <em></em><br/>Is SaverID null?"}:::decisions
    click Is_SaverID_null "#is_saverid_null" "2424450870"
    
    Is_Sponsor_Trust_ID_null{"🔀 <em></em><br/>Is Sponsor/Trust ID null?"}:::decisions
    click Is_Sponsor_Trust_ID_null "#is_sponsor_trust_id_null" "2880536643"
    
    Role_changed{"🔀 <em></em><br/>Role changed?"}:::decisions
    click Role_changed "#role_changed" "3950530233"
    
    Assign_Plan_Participant_RT --> END_Assign_Plan_Participant_RT
    Assign_Ubiquity_Contact_RT --> END_Assign_Ubiquity_Contact_RT
    Update_Paradigm_URL --> Is_Contact_Ubiquity_Employee
    Update_Paradigm_URL_2 --> Role_changed
    Is_Contact_Role_Saver --> |"Yes, Saver"| Is_SaverID_null
    Is_Contact_Role_Saver --> |"Non Saver"| Is_Sponsor_Trust_ID_null
    Is_Contact_Ubiquity_Employee --> |"No"| Assign_Plan_Participant_RT
    Is_Contact_Ubiquity_Employee --> |"Default Outcome"| END_Is_Contact_Ubiquity_Employee
    Is_SaverID_null --> |"Yes"| Update_Paradigm_URL
    Is_SaverID_null --> |"Default Outcome"| Is_Contact_Ubiquity_Employee
    Is_Sponsor_Trust_ID_null --> |"Yes"| Update_Paradigm_URL_2
    Is_Sponsor_Trust_ID_null --> |"Default Outcome"| Role_changed
    Role_changed --> |"Yes"| Assign_Ubiquity_Contact_RT
    Role_changed --> |"Default"| END_Role_changed
    START -->  Is_Contact_Role_Saver
    END_Assign_Plan_Participant_RT(( END )):::endClass
    END_Assign_Ubiquity_Contact_RT(( END )):::endClass
    END_Is_Contact_Ubiquity_Employee(( END )):::endClass
    END_Role_changed(( END )):::endClass
    
    
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
    |Trigger Type| Record Before Save|
    |Record Trigger Type| Create And Update|
    |Label|Contact | Before Trigger | Update Paradigm URL and Record Type|
    |Status|Active|
    |Description|Updates Paradigm Contact URL and Record Type based on the contact role|
    |Environments|Default|
    |Interview Label|Contact | Before Trigger | Update Paradigm URL and Record {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    |Connector|[Is_Contact_Role_Saver](#is_contact_role_saver)|
    |Next Node|[Is_Contact_Role_Saver](#is_contact_role_saver)|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |saverParadigmURL|String|{!$Record.Saver_ID__c}|<!-- -->|
    |sponsorParadigmURL|String|{!$Record.Sponsor_Trustee_ID__c}|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Assign_Plan_Participant_RT
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign 'Plan Participant' RT|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.RecordTypeId| Assign|01237000000TgxQAAS|
    
    
    
    
    ### Assign_Ubiquity_Contact_RT
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign 'Ubiquity Contact' RT|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.RecordTypeId| Assign|01237000000TgxLAAS|
    
    
    
    
    ### Update_Paradigm_URL
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Update Paradigm URL|
    |Connector|[Is_Contact_Ubiquity_Employee](#is_contact_ubiquity_employee)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Saver_ID__c| Assign|sponsorParadigmURL|
    |$Record.Sponsor_Trustee_ID__c| Assign|<!-- -->|
    
    
    
    
    ### Update_Paradigm_URL_2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Update Paradigm URL|
    |Connector|[Role_changed](#role_changed)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |$Record.Sponsor_Trustee_ID__c| Assign|saverParadigmURL|
    |$Record.Saver_ID__c| Assign|<!-- -->|
    
    
    
    
    ### Is_Contact_Role_Saver
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Is Contact Role Saver?|
    |Default Connector|[Is_Sponsor_Trust_ID_null](#is_sponsor_trust_id_null)|
    |Default Connector Label|Non Saver|
    
    
    #### Rule Yes_Saver (Yes, Saver)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Is_SaverID_null](#is_saverid_null)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Role__c| Is Changed|✅|
    |2|$Record.Role__c| Equal To|Saver|
    
    
    
    
    ### Is_Contact_Ubiquity_Employee
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Is Contact Ubiquity Employee?|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule No (No)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Plan_Participant_RT](#assign_plan_participant_rt)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.RecordTypeId| Not Equal To|01237000000TgxVAAS|
    
    
    
    
    ### Is_SaverID_null
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Is SaverID null?|
    |Default Connector|[Is_Contact_Ubiquity_Employee](#is_contact_ubiquity_employee)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Paradigm_URL](#update_paradigm_url)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Saver_ID__c| Is Null|✅|
    |2|$Record.Sponsor_Trustee_ID__c| Is Null|⬜|
    
    
    
    
    ### Is_Sponsor_Trust_ID_null
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Is Sponsor/Trust ID null?|
    |Default Connector|[Role_changed](#role_changed)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Yes_null (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Update_Paradigm_URL_2](#update_paradigm_url_2)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Role__c| Is Null|✅|
    |2|$Record.Role__c| Not Equal To|Saver|
    |3|$Record.Saver_ID__c| Is Null|⬜|
    |4|$Record.Sponsor_Trustee_ID__c| Is Null|✅|
    
    
    
    
    ### Role_changed
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Role changed?|
    |Default Connector Label|Default|
    
    
    #### Rule Yes_changed (Yes)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Assign_Ubiquity_Contact_RT](#assign_ubiquity_contact_rt)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Role__c| Is Changed|✅|
    |2|$Record.Role__c| Not Equal To|Saver|
    |3|$Record.Role__c| Not Equal To|Advisor|
    |4|$Record.RecordTypeId| Not Equal To|01237000000TgxVAAS|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

