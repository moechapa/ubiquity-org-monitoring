# Transitions_After_Trigger_Send_Auto_Reply_on_Case_Creation history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Transitions_After_Trigger_Send_Auto_Reply_on_Case_Creation-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "4041044723"
    
    Send_Auto_Reply_Email("📧 <em></em><br/>Send Auto Reply Email"):::actionCalls
    click Send_Auto_Reply_Email "#send_auto_reply_email" "217937488"
    
    Send_Auto_Reply_Email --> END_Send_Auto_Reply_Email
    START -->  Send_Auto_Reply_Email
    END_Send_Auto_Reply_Email(( END )):::endClass
    
    
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
    |Object|Case|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create|
    |Label|Case | After Trigger | Send Auto-Reply on Transition Case Creation|
    |Status|Active|
    |Description|Changed Entry Criteria to not run if Splited_From__c is NULL instead of Intcss_Splited_From__c. -JI 7-2-24<br/><br/>Added entry gate to ensure that when a case is created from the ubiquity domain "@myubiquity.com" it doesn't reply.  Fixing response loop from 11/10/23<br/><br/>When Transition case is created and Case Origin is "Transition Inbox", send an auto-reply email.|
    |Environments|Default|
    |Interview Label|Transitions | After Trigger | Send Auto-Reply on Case Creation {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Send_Auto_Reply_Email](#send_auto_reply_email)|
    |Next Node|[Send_Auto_Reply_Email](#send_auto_reply_email)|
    
    
    #### Filters (logic: **1 AND 2 AND 3 AND 4 AND 5 AND NOT 6**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Origin| Equal To|Transitions Inbox|
    |2|ParentId| Is Null|<!-- -->|
    |3|Splited_From__c| Is Null|<!-- -->|
    |4|CreatedById| Not Equal To|00500000006xUkfAAE|
    |5|CreatedById| Not Equal To|0051G000008DD4U|
    |6|SuppliedEmail| Ends With|@myubiquity.com|
    
    
    ## Flow Nodes Details
    
    ### Send_Auto_Reply_Email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send Auto Reply Email|
    |Action Type|Email Alert|
    |Action Name|Case.Transition_Team_Auto_Reply_on_Case_Creation|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Case.Transition_Team_Auto_Reply_on_Case_Creation|
    | SObject Row Id (input)|$Record.Id|
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

