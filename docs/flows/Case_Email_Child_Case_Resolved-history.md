# Case_Email_Child_Case_Resolved history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Case_Email_Child_Case_Resolved-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "439638813"
    
    Send_Email_Alert("📧 <em></em><br/>Send Email Alert"):::actionCalls
    click Send_Email_Alert "#send_email_alert" "2744827862"
    
    Send_Alert{"🔀 <em></em><br/>Send Alert?"}:::decisions
    click Send_Alert "#send_alert" "1713139127"
    
    Send_Email_Alert --> END_Send_Email_Alert
    Send_Alert --> |"Default Outcome"| Send_Email_Alert
    START -->  Send_Alert
    END_Send_Email_Alert(( END )):::endClass
    
    
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
    |Record Trigger Type| Create And Update|
    |Label|Case - Email - Child Case Resolved|
    |Status|Active|
    |Does Require Record Changed To Meet Criteria|✅|
    |Description|Migrated from the: Case - Email - Child Case Resolved workflow rule<br/>Workflow rule description: Email Parent Owner with Case # and Account Name with notice that Child Case is Resolved"|
    |Environments|Default|
    |Migrated From Workflow Rule Name|Case - Email - Child Case Resolved|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    |Connector|[Send_Alert](#send_alert)|
    |Next Node|[Send_Alert](#send_alert)|
    
    
    #### Filters (logic: **1 AND (2 OR 3)**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|ParentId| Is Null|<!-- -->|
    |2|Status| Equal To|Resolved|
    |3|Status| Equal To|Duplicate|
    
    
    ## Text Templates
    
    |Name|Text|Description|
    |:-- |:-- |:--  |
    |emailBody|<ul><li><span style="font-size: 14px; font-family: Arial, sans-serif;">Client: {!$Record.Account.Name}</span></li><li><span style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">Parent Case # {!$Record.Parent.CaseNumber}</span></li><li><span style="font-family: Arial, sans-serif; font-size: 14px;">Child Case# {!$Record.CaseNumber}</span></li><li><span style="font-size: 14px; font-family: Arial, sans-serif;">Child Case New Status = {!$Record.Status}</span></li><li><span style="font-size: 14px; font-family: Arial, sans-serif;">Closed By {!$Record.Case_Owner_Name__c}</span></li><li><span style="font-size: 14px; font-family: Arial, sans-serif;">Team Member = {!$Record.Team_Member__c}&nbsp;</span><em style="font-size: 14px; font-family: Arial, sans-serif;">(for teams that share login so you know who on the team worked on it...expect it&nbsp;to be blank if the "Closed By" is an individual name already)</em></li><li><span style="font-family: Arial, sans-serif; font-size: 14px;">Case Notes:&nbsp;{!$Record.Case_notes_new__c}</span></li></ul>|<!-- -->|
    |emailSubj|Child Case Closed for {!$Record.Account.Name}|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Send_Email_Alert
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send Email Alert|
    |Action Type|Email Simple|
    |Action Name|emailSimple|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|emailSimple|
    |Offset|0|
    |Version String|1.0.1|
    |Email Addresses (input)|$Record.Parent.Owner:User.Email|
    |Sender Type (input)|OrgWideEmailAddress|
    |Sender Address (input)|dontrespond@myubiquity.com|
    |Compose Email Content (input)|True|
    |Email Subject (input)|emailSubj|
    |Email Body (input)|emailBody|
    |Send Rich Body (input)|✅|
    |Use Line Breaks (input)|✅|
    
    
    ### Send_Alert
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Send Alert?|
    |Default Connector|[Send_Email_Alert](#send_email_alert)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule No_Don_t_Send_Alert (No, Don't Send Alert)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Parent.Case_Owner_Name__c| Contains|Reconciliations|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

