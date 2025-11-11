# Contact_Process_Send_Reach_Out_Case history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Contact_Process_Send_Reach_Out_Case-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>"]):::startClass
    click START "#general-information" "3228762706"
    
    Assign_Case_Values[\"🟰 <em></em><br/>Assign Case Values"/]:::assignments
    click Assign_Case_Values "#assign_case_values" "3030562107"
    
    Create_Case[("➕ <em></em><br/>Create Case")]:::recordCreates
    click Create_Case "#create_case" "1728036948"
    
    Get_AC[("🔍 <em></em><br/>Get AC")]:::recordLookups
    click Get_AC "#get_ac" "2560246601"
    
    Get_Contact[("🔍 <em></em><br/>Get Contact")]:::recordLookups
    click Get_Contact "#get_contact" "2989474814"
    
    Get_Imp[("🔍 <em></em><br/>Get Imp")]:::recordLookups
    click Get_Imp "#get_imp" "1608596962"
    
    Update_Contact[("🛠️ <em></em><br/>Update Contact")]:::recordUpdates
    click Update_Contact "#update_contact" "1092011614"
    
    Assign_Case_Values --> Create_Case
    Create_Case --> Update_Contact
    Get_AC --> Get_Imp
    Get_Contact --> Get_AC
    Get_Imp --> Assign_Case_Values
    Update_Contact --> END_Update_Contact
    START -->  Get_Contact
    END_Update_Contact(( END )):::endClass
    
    
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
    |Label|Contact | Process | Send Reach Out Case|
    |Status|Active|
    |Description|Sends email to Imps if contact has received final reminder email for their current stage.|
    |Interview Label|Contact | Process | Send Reach Out Case {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Contact](#get_contact)|
    |Next Node|[Get_Contact](#get_contact)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |newCase|SObject|⬜|✅|✅|Case|<!-- -->|
    |recordId|String|⬜|✅|✅|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |Description|String|"The final reminder email has been sent to " + {!Get_Contact.Full_Name__c} + " for this stage. Please use this case to do a manual reach out to this client to ensure they can move forward."|<!-- -->|
    |Subject|String|"Please reach out to " + {!Get_Contact.Full_Name__c} + " at " + {!Get_Imp.Name}|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Assign_Case_Values
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Case Values|
    |Connector|[Create_Case](#create_case)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |newCase.Subject| Assign|Subject|
    |newCase.OwnerId| Assign|Get_Imp.OwnerId|
    |newCase.Implementation__c| Assign|Get_AC.Implementation__c|
    |newCase.AccountId| Assign|Get_AC.Account__c|
    |newCase.ContactId| Assign|Get_AC.Contact__c|
    |newCase.Description| Assign|Description|
    |newCase.Plan__c| Assign|Get_AC.Plan__c|
    |newCase.Department__c| Assign|Implementations|
    
    
    
    
    ### Create_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Label|Create Case|
    |Input Reference|newCase|
    |Connector|[Update_Contact](#update_contact)|
    
    
    ### Get_AC
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Associated_Contact__c|
    |Label|Get AC|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Get_Imp](#get_imp)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Contact__c| Equal To|recordId|
    |2|Current_Client_Stage__c| Equal To|Implementation|
    
    
    
    
    ### Get_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Contact|
    |Label|Get Contact|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Get_AC](#get_ac)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Get_Imp
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|Implementation__c|
    |Label|Get Imp|
    |Assign Null Values If No Records Found|⬜|
    |Get First Record Only|✅|
    |Store Output Automatically|✅|
    |Connector|[Assign_Case_Values](#assign_case_values)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|Get_AC.Implementation__c|
    
    
    
    
    ### Update_Contact
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Update Contact|
    |Input Reference|[Get_Contact](#get_contact)|
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

