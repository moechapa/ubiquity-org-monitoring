# QA_Design_Screen_Toggle_Activation history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](QA_Design_Screen_Toggle_Activation-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Screen Flow</b>"]):::startClass
    click START "#general-information" "3599516727"
    
    Assign_Deactivation[\"🟰 <em></em><br/>Assign Deactivation"/]:::assignments
    click Assign_Deactivation "#assign_deactivation" "2788986961"
    
    Assign_new_activation_values[\"🟰 <em></em><br/>Assign new activation values"/]:::assignments
    click Assign_new_activation_values "#assign_new_activation_values" "2618394124"
    
    Deactivate_Current[\"🟰 <em></em><br/>Deactivate Current"/]:::assignments
    click Deactivate_Current "#deactivate_current" "804472760"
    
    Activation_or_Deactivation{"🔀 <em></em><br/>Activation or Deactivation"}:::decisions
    click Activation_or_Deactivation "#activation_or_deactivation" "1999655763"
    
    Prior_version_check{"🔀 <em></em><br/>Prior version check"}:::decisions
    click Prior_version_check "#prior_version_check" "2534075236"
    
    Get_Current_QA[("🔍 <em></em><br/>Get Current QA")]:::recordLookups
    click Get_Current_QA "#get_current_qa" "1833006307"
    
    Get_other_active_versions[("🔍 <em></em><br/>Get other active versions")]:::recordLookups
    click Get_other_active_versions "#get_other_active_versions" "2247695262"
    
    Activate_version[("🛠️ <em></em><br/>Activate version")]:::recordUpdates
    click Activate_version "#activate_version" "1396289877"
    
    Deactivate_Current_Version[("🛠️ <em></em><br/>Deactivate Current Version")]:::recordUpdates
    click Deactivate_Current_Version "#deactivate_current_version" "589964215"
    
    Deactivate_Prior_Version[("🛠️ <em></em><br/>Deactivate Prior Version")]:::recordUpdates
    click Deactivate_Prior_Version "#deactivate_prior_version" "3097444984"
    
    activateDeactivateConfirmationScreen(["💻 <em></em><br/>activateDeactivateConfirmationScreen"]):::screens
    click activateDeactivateConfirmationScreen "#activatedeactivateconfirmationscreen" "2289143632"
    
    errorScreen(["💻 <em></em><br/>errorScreen"]):::screens
    click errorScreen "#errorscreen" "430726831"
    
    Success_Screen(["💻 <em></em><br/>Success Screen"]):::screens
    click Success_Screen "#success_screen" "385131928"
    
    Assign_Deactivation --> Deactivate_Prior_Version
    Assign_new_activation_values --> Activate_version
    Deactivate_Current --> Deactivate_Current_Version
    Activation_or_Deactivation --> |"Activate"| Get_other_active_versions
    Activation_or_Deactivation --> |"Deactivate"| Deactivate_Current
    Activation_or_Deactivation --> |"Default Outcome"| END_Activation_or_Deactivation
    Prior_version_check --> |"Prior version present"| activateDeactivateConfirmationScreen
    Prior_version_check --> |"Default Outcome"| Assign_new_activation_values
    Get_Current_QA --> Activation_or_Deactivation
    Get_other_active_versions --> Prior_version_check
    Activate_version --> Success_Screen
    Activate_version -. Fault .->errorScreen
    Deactivate_Current_Version --> Success_Screen
    Deactivate_Current_Version -. Fault .->errorScreen
    Deactivate_Prior_Version --> Assign_new_activation_values
    Deactivate_Prior_Version -. Fault .->errorScreen
    activateDeactivateConfirmationScreen --> Assign_Deactivation
    errorScreen --> END_errorScreen
    Success_Screen --> END_Success_Screen
    START -->  Get_Current_QA
    END_Activation_or_Deactivation(( END )):::endClass
    END_errorScreen(( END )):::endClass
    END_Success_Screen(( END )):::endClass
    
    
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
    |Process Type| Flow|
    |Label|QA Design | Screen | Toggle Activation|
    |Status|Active|
    |Description|Activates / Deactivates current version and deactivates prior if necessary.  Updates are separated to keep validation errors relevant.|
    |Environments|Default|
    |Interview Label|QA Design | Screen | Toggle Activation {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Get_Current_QA](#get_current_qa)|
    |Next Node|[Get_Current_QA](#get_current_qa)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |currentDesignVersion|SObject|⬜|⬜|⬜|QA_Design_Version__c|<!-- -->|
    |eventText|String|⬜|⬜|⬜|<!-- -->|Activated or Deactivated|
    |priorDesignText|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |priorDesignVersion|SObject|⬜|⬜|⬜|QA_Design_Version__c|<!-- -->|
    |qaUpdateCollection|SObject|✅|⬜|⬜|QA_Design_Version__c|<!-- -->|
    |recordId|String|⬜|✅|⬜|<!-- -->|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |formattedError|String|IF(FIND("FIELD_CUSTOM_VALIDATION_EXCEPTION:", {!$Flow.FaultMessage}) != 0,<br/>(MID({!$Flow.FaultMessage},<br/>FIND("FIELD_CUSTOM_VALIDATION_EXCEPTION:", {!$Flow.FaultMessage})+34,<br/>FIND("You can look up ExceptionCode values",{!$Flow.FaultMessage})-34-FIND("FIELD_CUSTOM_VALIDATION_EXCEPTION:", {!$Flow.FaultMessage}))),<br/>{!$Flow.FaultMessage})|Makes validation errors more readable|
    
    
    ## Flow Nodes Details
    
    ### Assign_Deactivation
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign Deactivation|
    |Connector|[Deactivate_Prior_Version](#deactivate_prior_version)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |priorDesignVersion.isActive__c| Assign|⬜|
    |priorDesignVersion.Deactivation_Date__c| Assign|$Flow.CurrentDate|
    |priorDesignText| Add|Version|
    |priorDesignText| Add|priorDesignVersion.Version__c|
    |priorDesignText| Add|deactivated|
    
    
    
    
    ### Assign_new_activation_values
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Assign new activation values|
    |Connector|[Activate_version](#activate_version)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |currentDesignVersion.isActive__c| Assign|✅|
    |currentDesignVersion.Activation_Date__c| Assign|$Flow.CurrentDate|
    |eventText| Assign|activated|
    
    
    
    
    ### Deactivate_Current
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Deactivate Current|
    |Connector|[Deactivate_Current_Version](#deactivate_current_version)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |currentDesignVersion.isActive__c| Assign|⬜|
    |currentDesignVersion.Deactivation_Date__c| Assign|$Flow.CurrentDate|
    |eventText| Assign|deactivated|
    
    
    
    
    ### Activation_or_Deactivation
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Activation or Deactivation|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Activate (Activate)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Get_other_active_versions](#get_other_active_versions)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|currentDesignVersion| Is Null|⬜|
    |2|currentDesignVersion.isActive__c| Equal To|⬜|
    
    
    
    
    #### Rule Deactivate (Deactivate)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Deactivate_Current](#deactivate_current)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|currentDesignVersion| Is Null|⬜|
    |2|currentDesignVersion.isActive__c| Equal To|✅|
    
    
    
    
    ### Prior_version_check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Prior version check|
    |Default Connector|[Assign_new_activation_values](#assign_new_activation_values)|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule Prior_version_present (Prior version present)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[activateDeactivateConfirmationScreen](#activatedeactivateconfirmationscreen)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|priorDesignVersion| Is Null|⬜|
    
    
    
    
    ### Get_Current_QA
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|QA_Design_Version__c|
    |Label|Get Current QA|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|currentDesignVersion|
    |Queried Fields|- Id<br/>- isActive__c<br/>- Activation_Date__c<br/>- Deactivation_Date__c<br/>- Total_Question_Value__c<br/>- QA_Design__c<br/>- Version__c<br/>|
    |Connector|[Activation_or_Deactivation](#activation_or_deactivation)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|recordId|
    
    
    
    
    ### Get_other_active_versions
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|QA_Design_Version__c|
    |Label|Get other active versions|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|priorDesignVersion|
    |Queried Fields|- Id<br/>- Version__c<br/>|
    |Connector|[Prior_version_check](#prior_version_check)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|isActive__c| Equal To|✅|
    |2|QA_Design__c| Equal To|currentDesignVersion.QA_Design__c|
    
    
    
    
    ### Activate_version
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Activate version|
    |Fault Connector|[errorScreen](#errorscreen)|
    |Input Reference|currentDesignVersion|
    |Connector|[Success_Screen](#success_screen)|
    
    
    ### Deactivate_Current_Version
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Deactivate Current Version|
    |Fault Connector|isGoTo: true<br/>targetReference: errorScreen<br/>|
    |Input Reference|currentDesignVersion|
    |Connector|[Success_Screen](#success_screen)|
    
    
    ### Deactivate_Prior_Version
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Label|Deactivate Prior Version|
    |Fault Connector|isGoTo: true<br/>targetReference: errorScreen<br/>|
    |Input Reference|priorDesignVersion|
    |Connector|[Assign_new_activation_values](#assign_new_activation_values)|
    
    
    ### activateDeactivateConfirmationScreen
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|[activateDeactivateConfirmationScreen](#activatedeactivateconfirmationscreen)|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Show Footer|✅|
    |Show Header|✅|
    |Connector|[Assign_Deactivation](#assign_deactivation)|
    
    
    #### confirmText
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p>You are about to activate {!currentDesignVersion.QA_Design__r.Name}, version {!currentDesignVersion.Version__c}.</p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### deactText
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p>This will deactivate version {!priorDesignVersion.Version__c}.</p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    ### errorScreen
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|[errorScreen](#errorscreen)|
    |Allow Back|⬜|
    |Allow Finish|✅|
    |Allow Pause|⬜|
    |Show Footer|✅|
    |Show Header|✅|
    
    
    #### errorText
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p>{!$Label.FlowStyles_ErrorNotification}</p><p>{!formattedError}</p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    ### Success_Screen
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Screen|
    |Label|Success Screen|
    |Allow Back|✅|
    |Allow Finish|✅|
    |Allow Pause|✅|
    |Show Footer|✅|
    |Show Header|✅|
    
    
    #### successText
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p style="text-align: center;">{!$Label.FlowStyles_SuccessNotification}</p><p style="text-align: center;">Success!</p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    #### extraText
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Field Text|<p>Version {!currentDesignVersion.Version__c} {!eventText}</p><p><br></p><p>{!priorDesignText}</p>|
    |Field Type| Display Text|
    |Style Properties|verticalAlignment:<br/>&nbsp;&nbsp;stringValue: top<br/>width:<br/>&nbsp;&nbsp;stringValue: 12<br/>|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

