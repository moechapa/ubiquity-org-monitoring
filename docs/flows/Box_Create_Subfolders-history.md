# Box_Create_Subfolders history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Box_Create_Subfolders-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>"]):::startClass
    click START "#general-information" "1746631607"
    
    Create_acc_subfolder("⚙️ <em></em><br/>Create acc subfolder"):::actionCalls
    click Create_acc_subfolder "#create_acc_subfolder" "3281922265"
    
    add_2_deet_collection[\"🟰 <em></em><br/>add 2 deet collection"/]:::assignments
    click add_2_deet_collection "#add_2_deet_collection" "899633699"
    
    assign_folder_details[\"🟰 <em></em><br/>assign folder details"/]:::assignments
    click assign_folder_details "#assign_folder_details" "3985632720"
    
    lasehfl_aeshi[\"🟰 <em></em><br/>lasehfl;aeshi"/]:::assignments
    click lasehfl_aeshi "#lasehfl_aeshi" "3071893283"
    
    parent_id_check{"🔀 <em></em><br/>parent id check"}:::decisions
    click parent_id_check "#parent_id_check" "1220853862"
    
    letter_loop{{"🔁 <em></em><br/>letter loop"}}:::loops
    click letter_loop "#letter_loop" "93409695"
    
    Create_deets[("➕ <em></em><br/>Create deets")]:::recordCreates
    click Create_deets "#create_deets" "1678558353"
    
    Create_acc_subfolder --> assign_folder_details
    add_2_deet_collection --> letter_loop
    assign_folder_details --> add_2_deet_collection
    lasehfl_aeshi --> letter_loop
    parent_id_check --> |"has parent folder id"| lasehfl_aeshi
    parent_id_check --> |"Default Outcome"| END_parent_id_check
    letter_loop --> |"For Each"|Create_acc_subfolder
    letter_loop ---> |"After Last"|Create_deets
    Create_deets --> END_Create_deets
    START -->  parent_id_check
    END_parent_id_check(( END )):::endClass
    END_Create_deets(( END )):::endClass
    
    
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
    |Label|Box Create Subfolders|
    |Status|⚠️ Draft|
    |Environments|Default|
    |Interview Label|Box Create Subfolders {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[parent_id_check](#parent_id_check)|
    |Next Node|[parent_id_check](#parent_id_check)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |deets|SObject|✅|⬜|⬜|box__Folder_Details__c|<!-- -->|
    |letterCollection|String|✅|⬜|⬜|<!-- -->|<!-- -->|
    |loopNumber|Number|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |parentAccountFolderId|String|⬜|✅|⬜|<!-- -->|The "Accounts" folder under which all subfolders will be created|
    |subfolderDeet|SObject|⬜|⬜|⬜|box__Folder_Details__c|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |subFolderName|String|{!letter_loop} + ' Accounts'|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Create_acc_subfolder
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Create acc subfolder|
    |Action Type|Apex|
    |Action Name|box__CreateFolder_v2|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|box__CreateFolder_v2|
    |Offset|0|
    |Store Output Automatically|✅|
    |Folder Name (input)|subFolderName|
    |Parent Folder Id (input)|parentAccountFolderId|
    |Connector|[assign_folder_details](#assign_folder_details)|
    
    
    ### add_2_deet_collection
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|add 2 deet collection|
    |Connector|[letter_loop](#letter_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |deets| Add|subfolderDeet|
    
    
    
    
    ### assign_folder_details
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|assign folder details|
    |Connector|[add_2_deet_collection](#add_2_deet_collection)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |subfolderDeet.Name| Assign|subFolderName|
    |subfolderDeet.box__FolderId__c| Assign|Create_acc_subfolder.folderId|
    
    
    
    
    ### lasehfl_aeshi
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|lasehfl;aeshi|
    |Connector|[letter_loop](#letter_loop)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |letterCollection| Add|A|
    |letterCollection| Add|B|
    |letterCollection| Add|C|
    |letterCollection| Add|D|
    |letterCollection| Add|E|
    |letterCollection| Add|F|
    |letterCollection| Add|G|
    |letterCollection| Add|H|
    |letterCollection| Add|I|
    |letterCollection| Add|J|
    |letterCollection| Add|K|
    |letterCollection| Add|L|
    |letterCollection| Add|M|
    |letterCollection| Add|N|
    |letterCollection| Add|O|
    |letterCollection| Add|P|
    |letterCollection| Add|Q|
    |letterCollection| Add|R|
    |letterCollection| Add|S|
    |letterCollection| Add|U|
    |letterCollection| Add|V|
    |letterCollection| Add|W|
    |letterCollection| Add|X|
    |letterCollection| Add|Y|
    |letterCollection| Add|Z|
    |letterCollection| Add|0-9|
    |letterCollection| Add|T|
    
    
    
    
    ### parent_id_check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|parent id check|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule has_parent_folder_id (has parent folder id)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[lasehfl_aeshi](#lasehfl_aeshi)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|parentAccountFolderId| Is Blank|⬜|
    
    
    
    
    ### letter_loop
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Loop|
    |Label|letter loop|
    |Collection Reference|letterCollection|
    |Iteration Order|Asc|
    |Next Value Connector|[Create_acc_subfolder](#create_acc_subfolder)|
    |No More Values Connector|[Create_deets](#create_deets)|
    
    
    ### Create_deets
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Label|Create deets|
    |Input Reference|deets|
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

