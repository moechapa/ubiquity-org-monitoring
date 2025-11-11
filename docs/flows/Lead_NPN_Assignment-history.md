# Lead_NPN_Assignment history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Lead_NPN_Assignment-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Lead</b></br>Type: <b>On All Changes</b>"]):::startClass
    click START "#general-information" "1862038390"
    
    START --> isChangedDecision2_myRule_1_Referrer_s_Email_c
    myRule_1_A1("⚡ <em></em><br/>Attach Advisor"):::actionCalls
    click myRule_1_A1 "#myrule_1_a1" "2574190786"
    
    isChangedDecision2_myRule_1_Referrer_s_Email_c{"🔀 <em></em><br/>isChangedDecision2_myRule_1_Referrer_s_Email_c"}:::decisions
    click isChangedDecision2_myRule_1_Referrer_s_Email_c "#ischangeddecision2_myrule_1_referrer_s_email_c" "344143790"
    
    myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
    click myDecision "#mydecision" "3714321145"
    
    myDecision3{"🔀 <em></em><br/>myDecision3"}:::decisions
    click myDecision3 "#mydecision3" "1990055245"
    
    myRule_4_A1[("🛠️ <em></em><br/>Update Lead Status")]:::recordUpdates
    click myRule_4_A1 "#myrule_4_a1" "1222079565"
    
    myRule_1_A1 --> myDecision3
    isChangedDecision2_myRule_1_Referrer_s_Email_c --> |"isChangedRule_2_myRule_1_Referrer_s_Email_c"| myDecision
    isChangedDecision2_myRule_1_Referrer_s_Email_c --> |"default"| myDecision
    myDecision --> |"Lead Includes NPN"| myRule_1_A1
    myDecision --> |"default"| myDecision3
    myDecision3 --> |"Unqualified Lead"| myRule_4_A1
    myDecision3 --> |"default"| END_myDecision3
    myRule_4_A1 --> END_myRule_4_A1
    END_myDecision3(( END )):::endClass
    END_myRule_4_A1(( END )):::endClass
    
    
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
    |Process Type| Workflow|
    |Label|Lead | NPN Assignment|
    |Status|Obsolete|
    |Description|Find relevant advisor to either assign to employer lead, or update with new advisor lead info|
    |Interview Label|Lead_NPN_Assignment-18_InterviewLabel|
    |Start Element Reference|[isChangedDecision2_myRule_1_Referrer_s_Email_c](#ischangeddecision2_myrule_1_referrer_s_email_c)|
    | Object Type (PM)|Lead|
    | Object Variable (PM)|myVariable_current|
    | Old Object Variable (PM)|myVariable_old|
    | Trigger Type (PM)|onAllChanges|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |myVariable_current|SObject|⬜|✅|✅|Lead|<!-- -->|
    |myVariable_old|SObject|⬜|✅|⬜|Lead|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Attach Advisor|
    |Action Type|Flow|
    |Action Name|Map_Advisor_Based_on_NPN|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Map_Advisor_Based_on_NPN|
    | Action Call Type (PM)|flow|
    |Flow Selection (PM)|Map Advisor Based on NPN|
    |Record Id (input)|myVariable_current.Id|
    |Connector|[myDecision3](#mydecision3)|
    
    
    ### isChangedDecision2_myRule_1_Referrer_s_Email_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision2_myRule_1_Referrer_s_Email_c](#ischangeddecision2_myrule_1_referrer_s_email_c)|
    |Default Connector|[myDecision](#mydecision)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_2_myRule_1_Referrer_s_Email_c (isChangedRule_2_myRule_1_Referrer_s_Email_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myDecision](#mydecision)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Referrer_s_Email__c| Not Equal To|myVariable_current.Referrer_s_Email__c|
    
    
    
    
    ### myDecision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision](#mydecision)|
    |Default Connector|[myDecision3](#mydecision3)|
    |Default Connector Label|default|
    |Index (PM)|numberValue: 0<br/>|
    
    
    #### Rule myRule_1 (Lead Includes NPN)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_A1](#myrule_1_a1)|
    |Condition Logic|(2 OR 8) AND (((3 AND 4 AND 5) OR (5 AND 7)) OR (1 AND (NOT 5))) AND 6|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.OwnerId| Starts With|5|
    |2|myVariable_current.Business_Unit__c| Equal To|Simply Retirement|
    |3|myVariable_current.Associated_Contact__c| Is Null|✅|
    |4|myVariable_current.Referrer_s_Email__c| Is Null|⬜|
    |5|myVariable_current.Lead_Type__c| Equal To|Employer|
    |6|myVariable_current.IsConverted| Equal To|⬜|
    |7|isChangedRule_2_myRule_1_Referrer_s_Email_c| Equal To|✅|
    |8|myVariable_current.LeadSourceDetail__c| Equal To|Sallus|
    
    
    
    
    ### myDecision3
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision3](#mydecision3)|
    |Default Connector Label|default|
    |Index (PM)|1|
    
    
    #### Rule myRule_4 (Unqualified Lead)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_4_A1](#myrule_4_a1)|
    |Condition Logic|3 AND 6 AND 7 AND (1 OR 2 OR 4 OR 5 OR 8 OR 9)|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Industry| Equal To|Not For Profit|
    |2|myVariable_current.NumberOfEmployees| Greater Than Or Equal To|100|
    |3|myVariable_current.Business_Unit__c| Equal To|Simply Retirement|
    |4|myVariable_current.Contribution_Type__c| Equal To|notContributing|
    |5|myVariable_current.Contribution_Type__c| Equal To|No Employee Contributions|
    |6|myVariable_current.IsConverted| Equal To|⬜|
    |7|myVariable_current.Lead_Type__c| Not Equal To|Advisor|
    |8|myVariable_current.Current_Plan__c| Equal To|401(k)|
    |9|myVariable_current.Current_Plan__c| Equal To|SEP IRA|
    
    
    
    
    ### myRule_4_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Lead|
    |Label|Update Lead Status|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Lead]|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Status|Unqualified|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

