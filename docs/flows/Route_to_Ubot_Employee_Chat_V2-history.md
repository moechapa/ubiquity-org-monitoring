# Route_to_Ubot_Employee_Chat_V2 history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Route_to_Ubot_Employee_Chat_V2-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START"]):::startClass
    click START "#general-information" "1570645027"
    
    RoutingAction("⚡ <em></em><br/>Route to Ubot Employee Chat V2"):::actionCalls
    click RoutingAction "#routingaction" "1908361874"
    
    RoutingAction --> END_RoutingAction
    START -->  RoutingAction
    END_RoutingAction(( END )):::endClass
    
    
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
    |Process Type| Routing Flow|
    |Label|Route to Ubot Employee Chat V2|
    |Status|Active|
    |Description|Routes each message to an enhanced bot. You can customize the flow with business and routing rules.<br/><br/>removed all the extra calcs/vars|
    |Environments|Default|
    |Interview Label|Route to Ubot Employee Chat V2 {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[RoutingAction](#routingaction)|
    |Next Node|[RoutingAction](#routingaction)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |recordId|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### RoutingAction
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Route to Ubot Employee Chat V2|
    |Action Type|Route Work|
    |Action Name|routeWork|
    |Description|Routes all messages to your enhanced bot.|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|routeWork|
    |Record Id (input)|recordId|
    |Service Channel Id (input)|0N9Ho000000DFI0KAO|
    |Service Channel Label (input)|Messaging|
    |Service Channel Dev Name (input)|sfdc_livemessage|
    |Routing Type (input)|Bot|
    |Routing Config Id (input)|<!-- -->|
    |Routing Config Label (input)|<!-- -->|
    |Queue Id (input)|00GHo000002SGEbMAO|
    |Agent Id (input)|<!-- -->|
    |Agent Label (input)|<!-- -->|
    |Queue Label (input)|Omni Sales|
    |Skill Option (input)|<!-- -->|
    |Skill Requirements Resource Item (input)|<!-- -->|
    |Bot Id (input)|0XxHo000000kblNKAQ|
    |Bot Label (input)|Ubot Employee Chat V2|
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

