# Compliance_After_Trigger_Send_5500_Audit_Emails history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Compliance_After_Trigger_Send_5500_Audit_Emails-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "914096992"
    
    Audit_Package_SentAlert("📧 <em></em><br/>Audit Package Sent"):::actionCalls
    click Audit_Package_SentAlert "#audit_package_sentalert" "2875897404"
    
    Draft5500alert("📧 <em></em><br/>Draft5500"):::actionCalls
    click Draft5500alert "#draft5500alert" "621887431"
    
    Matrix_Audit_Email_Alert("📧 <em></em><br/>Matrix Audit Email Alert"):::actionCalls
    click Matrix_Audit_Email_Alert "#matrix_audit_email_alert" "1089279685"
    
    Matrix_First_Year_Alert("📧 <em></em><br/>Matrix First Year Alert"):::actionCalls
    click Matrix_First_Year_Alert "#matrix_first_year_alert" "2062641003"
    
    Schwab_Audit_Email("📧 <em></em><br/>Schwab Audit Email"):::actionCalls
    click Schwab_Audit_Email "#schwab_audit_email" "3148740770"
    
    Schwab_First_Yearalert("📧 <em></em><br/>Schwab First Year Alert"):::actionCalls
    click Schwab_First_Yearalert "#schwab_first_yearalert" "3626944554"
    
    Copy_1_of_Copy_2_of_Define_Template_Variable[\"🟰 <em></em><br/>Copy 1 of Copy 2 of Define Template Variable"/]:::assignments
    click Copy_1_of_Copy_2_of_Define_Template_Variable "#copy_1_of_copy_2_of_define_template_variable" "1343041172"
    
    Copy_1_of_Define_Template_Variable[\"🟰 <em></em><br/>Copy 1 of Define Template Variable"/]:::assignments
    click Copy_1_of_Define_Template_Variable "#copy_1_of_define_template_variable" "2044760833"
    
    Copy_2_of_Copy_3_of_Copy_2_of_Define_Template_Variable[\"🟰 <em></em><br/>Copy 2 of Copy 3 of Copy 2 of Define Template Variable"/]:::assignments
    click Copy_2_of_Copy_3_of_Copy_2_of_Define_Template_Variable "#copy_2_of_copy_3_of_copy_2_of_define_template_variable" "709057136"
    
    Copy_2_of_Define_Template_Variable[\"🟰 <em></em><br/>Copy 2 of Define Template Variable"/]:::assignments
    click Copy_2_of_Define_Template_Variable "#copy_2_of_define_template_variable" "3650987610"
    
    Copy_3_of_Copy_2_of_Define_Template_Variable[\"🟰 <em></em><br/>Copy 3 of Copy 2 of Define Template Variable"/]:::assignments
    click Copy_3_of_Copy_2_of_Define_Template_Variable "#copy_3_of_copy_2_of_define_template_variable" "3828232408"
    
    Define_Template_Variable[\"🟰 <em></em><br/>Define Template Variable"/]:::assignments
    click Define_Template_Variable "#define_template_variable" "3302674991"
    
    Check_if_template_found{"🔀 <em></em><br/>Check if template found"}:::decisions
    click Check_if_template_found "#check_if_template_found" "2183667043"
    
    Copy_1_of_Schwab_or_Matrix{"🔀 <em></em><br/>Copy 1 of Schwab or Matrix"}:::decisions
    click Copy_1_of_Schwab_or_Matrix "#copy_1_of_schwab_or_matrix" "3704488168"
    
    Copy_2_of_Schwab_or_Matrix{"🔀 <em></em><br/>Copy 2 of Schwab or Matrix"}:::decisions
    click Copy_2_of_Schwab_or_Matrix "#copy_2_of_schwab_or_matrix" "2983639118"
    
    Which_Audit_Email_to_Send{"🔀 <em></em><br/>Which Audit Email to Send?"}:::decisions
    click Which_Audit_Email_to_Send "#which_audit_email_to_send" "3020819254"
    
    Create_email_activity[("➕ <em></em><br/>Create email activity")]:::recordCreates
    click Create_email_activity "#create_email_activity" "2736685850"
    
    Create_fallback_email_activity[("➕ <em></em><br/>Create fallback email activity")]:::recordCreates
    click Create_fallback_email_activity "#create_fallback_email_activity" "2769570530"
    
    Get_alert_template[("🔍 <em></em><br/>Get alert template")]:::recordLookups
    click Get_alert_template "#get_alert_template" "3748034833"
    
    Audit_Package_SentAlert --> Copy_3_of_Copy_2_of_Define_Template_Variable
    Draft5500alert --> Copy_2_of_Copy_3_of_Copy_2_of_Define_Template_Variable
    Matrix_Audit_Email_Alert --> Copy_1_of_Define_Template_Variable
    Matrix_First_Year_Alert --> Copy_2_of_Define_Template_Variable
    Schwab_Audit_Email --> Define_Template_Variable
    Schwab_First_Yearalert --> Copy_1_of_Copy_2_of_Define_Template_Variable
    Copy_1_of_Copy_2_of_Define_Template_Variable --> Get_alert_template
    Copy_1_of_Define_Template_Variable --> Get_alert_template
    Copy_2_of_Copy_3_of_Copy_2_of_Define_Template_Variable --> Get_alert_template
    Copy_2_of_Define_Template_Variable --> Get_alert_template
    Copy_3_of_Copy_2_of_Define_Template_Variable --> Get_alert_template
    Define_Template_Variable --> Get_alert_template
    Check_if_template_found --> |"Ok this is epic"| Create_email_activity
    Check_if_template_found --> |"Nothing ever happens"| Create_fallback_email_activity
    Copy_1_of_Schwab_or_Matrix --> |"Copy 1 of Schwab"| Schwab_Audit_Email
    Copy_1_of_Schwab_or_Matrix --> |"Copy 1 of Matrix"| Matrix_Audit_Email_Alert
    Copy_1_of_Schwab_or_Matrix --> |"Stop"| END_Copy_1_of_Schwab_or_Matrix
    Copy_2_of_Schwab_or_Matrix --> |"Copy 2 of Schwab"| Schwab_First_Yearalert
    Copy_2_of_Schwab_or_Matrix --> |"Copy 2 of Matrix"| Matrix_First_Year_Alert
    Copy_2_of_Schwab_or_Matrix --> |"Stop"| END_Copy_2_of_Schwab_or_Matrix
    Which_Audit_Email_to_Send --> |"First Year Audit"| Copy_2_of_Schwab_or_Matrix
    Which_Audit_Email_to_Send --> |"Initial Audit Email"| Copy_1_of_Schwab_or_Matrix
    Which_Audit_Email_to_Send --> |"Audit Package Sent"| Audit_Package_SentAlert
    Which_Audit_Email_to_Send --> |"Draft 5500"| Draft5500alert
    Which_Audit_Email_to_Send --> |"Default Outcome"| END_Which_Audit_Email_to_Send
    Create_email_activity --> END_Create_email_activity
    Create_fallback_email_activity --> END_Create_fallback_email_activity
    Get_alert_template --> Check_if_template_found
    START -->  Which_Audit_Email_to_Send
    END_Copy_1_of_Schwab_or_Matrix(( END )):::endClass
    END_Copy_2_of_Schwab_or_Matrix(( END )):::endClass
    END_Which_Audit_Email_to_Send(( END )):::endClass
    END_Create_email_activity(( END )):::endClass
    END_Create_fallback_email_activity(( END )):::endClass
    
    
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
    |Object|Compliance__c|
    |Process Type| Auto Launched Flow|
    |Trigger Type| Record After Save|
    |Record Trigger Type| Create And Update|
    |Label|Compliance | After Trigger | Send 5500 Audit Emails|
    |Status|Active|
    |Filter Formula|(ISNEW() && (NOT(ISBLANK({!$Record.Initial_Audit_Email__c})) || NOT(ISBLANK({!$Record.Audit_Package_Sent__c})) || NOT(ISBLANK({!$Record.Draft_Form_5500__c}))))<br/>||<br/>(ISCHANGED({!$Record.Initial_Audit_Email__c}) && NOT(ISBLANK({!$Record.Initial_Audit_Email__c})))<br/>||<br/>(ISCHANGED({!$Record.Audit_Package_Sent__c}) && NOT(ISBLANK({!$Record.Audit_Package_Sent__c})))<br/>||<br/>(ISCHANGED({!$Record.Draft_Form_5500__c}) && NOT(ISBLANK({!$Record.Draft_Form_5500__c})))|
    |Environments|Default|
    |Interview Label|Compliance | After Trigger | Send 5500 Audit Emails {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Which_Audit_Email_to_Send](#which_audit_email_to_send)|
    |Next Node|[Which_Audit_Email_to_Send](#which_audit_email_to_send)|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |emailTemplateId|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |emailTemplateName|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |EmailTemplateRec|SObject|⬜|⬜|⬜|EmailTemplate|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |placeholderBody|String|"Email alert using the template: " + {!emailTemplateName}|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Audit_Package_SentAlert
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Audit Package Sent|
    |Action Type|Email Alert|
    |Action Name|Compliance__c.X5500_Audit_Package_Sent|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Compliance__c.X5500_Audit_Package_Sent|
    | SObject Row Id (input)|$Record.Id|
    |Connector|[Copy_3_of_Copy_2_of_Define_Template_Variable](#copy_3_of_copy_2_of_define_template_variable)|
    
    
    ### Draft5500alert
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Draft5500|
    |Action Type|Email Alert|
    |Action Name|Compliance__c.Draft_5500|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Compliance__c.Draft_5500|
    | SObject Row Id (input)|$Record.Id|
    |Connector|[Copy_2_of_Copy_3_of_Copy_2_of_Define_Template_Variable](#copy_2_of_copy_3_of_copy_2_of_define_template_variable)|
    
    
    ### Matrix_Audit_Email_Alert
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Matrix Audit Email Alert|
    |Action Type|Email Alert|
    |Action Name|Compliance__c.Matrix_Audit_Email|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Compliance__c.Matrix_Audit_Email|
    | SObject Row Id (input)|$Record.Id|
    |Connector|[Copy_1_of_Define_Template_Variable](#copy_1_of_define_template_variable)|
    
    
    ### Matrix_First_Year_Alert
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Matrix First Year Alert|
    |Action Type|Email Alert|
    |Action Name|Compliance__c.Matrix_First_Year_Audit_Email|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Compliance__c.Matrix_First_Year_Audit_Email|
    | SObject Row Id (input)|$Record.Id|
    |Connector|[Copy_2_of_Define_Template_Variable](#copy_2_of_define_template_variable)|
    
    
    ### Schwab_Audit_Email
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Schwab Audit Email|
    |Action Type|Email Alert|
    |Action Name|Compliance__c.Schwab_Audit_Email|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Compliance__c.Schwab_Audit_Email|
    | SObject Row Id (input)|$Record.Id|
    |Connector|[Define_Template_Variable](#define_template_variable)|
    
    
    ### Schwab_First_Yearalert
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Schwab First Year Alert|
    |Action Type|Email Alert|
    |Action Name|Compliance__c.Schwab_First_Year_Audit_Email|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Compliance__c.Schwab_First_Year_Audit_Email|
    | SObject Row Id (input)|$Record.Id|
    |Connector|[Copy_1_of_Copy_2_of_Define_Template_Variable](#copy_1_of_copy_2_of_define_template_variable)|
    
    
    ### Copy_1_of_Copy_2_of_Define_Template_Variable
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Copy 1 of Copy 2 of Define Template Variable|
    |Connector|[Get_alert_template](#get_alert_template)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |emailTemplateId| Assign|00XUo000000lLVd|
    |emailTemplateName| Assign|Schwab First Year Audit Email|
    
    
    
    
    ### Copy_1_of_Define_Template_Variable
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Copy 1 of Define Template Variable|
    |Connector|[Get_alert_template](#get_alert_template)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |emailTemplateId| Assign|00X1G000000g0u1|
    |emailTemplateName| Assign|Matrix Audit Email|
    
    
    
    
    ### Copy_2_of_Copy_3_of_Copy_2_of_Define_Template_Variable
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Copy 2 of Copy 3 of Copy 2 of Define Template Variable|
    |Connector|[Get_alert_template](#get_alert_template)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |emailTemplateId| Assign|00XUo000000lUp3|
    |emailTemplateName| Assign|Draft 5500|
    
    
    
    
    ### Copy_2_of_Define_Template_Variable
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Copy 2 of Define Template Variable|
    |Connector|[Get_alert_template](#get_alert_template)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |emailTemplateId| Assign|00X1G000000g0uB|
    |emailTemplateName| Assign|Matrix First Year Audit Email|
    
    
    
    
    ### Copy_3_of_Copy_2_of_Define_Template_Variable
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Copy 3 of Copy 2 of Define Template Variable|
    |Connector|[Get_alert_template](#get_alert_template)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |emailTemplateId| Assign|00XUo000000lKxl|
    |emailTemplateName| Assign|Audit Package Sent|
    
    
    
    
    ### Define_Template_Variable
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Define Template Variable|
    |Connector|[Get_alert_template](#get_alert_template)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |emailTemplateId| Assign|00X1G000000g0u6|
    |emailTemplateName| Assign|Schwab Audit Email|
    
    
    
    
    ### Check_if_template_found
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Check if template found|
    |Default Connector|[Create_fallback_email_activity](#create_fallback_email_activity)|
    |Default Connector Label|Nothing ever happens|
    
    
    #### Rule Ok_this_is_epic (Ok this is epic)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Create_email_activity](#create_email_activity)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|EmailTemplateRec| Is Null|⬜|
    
    
    
    
    ### Copy_1_of_Schwab_or_Matrix
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Copy 1 of Schwab or Matrix|
    |Default Connector Label|Stop|
    
    
    #### Rule Copy_1_of_Schwab (Copy 1 of Schwab)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Schwab_Audit_Email](#schwab_audit_email)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Plan__r.Custodian__c| Equal To|Schwab & Co., Inc.|
    |2|$Record.Plan__r.Custodian__c| Equal To|Schwab Trust|
    
    
    
    
    #### Rule Copy_1_of_Matrix (Copy 1 of Matrix)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Matrix_Audit_Email_Alert](#matrix_audit_email_alert)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Plan__r.Custodian__c| Equal To|MG Trust Company, LLC.|
    
    
    
    
    ### Copy_2_of_Schwab_or_Matrix
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Copy 2 of Schwab or Matrix|
    |Default Connector Label|Stop|
    
    
    #### Rule Copy_2_of_Schwab (Copy 2 of Schwab)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Schwab_First_Yearalert](#schwab_first_yearalert)|
    |Condition Logic|or|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Plan__r.Custodian__c| Equal To|Schwab & Co., Inc.|
    |2|$Record.Plan__r.Custodian__c| Equal To|Schwab Trust|
    
    
    
    
    #### Rule Copy_2_of_Matrix (Copy 2 of Matrix)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Matrix_First_Year_Alert](#matrix_first_year_alert)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Plan__r.Custodian__c| Equal To|MG Trust Company, LLC.|
    
    
    
    
    ### Which_Audit_Email_to_Send
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Which Audit Email to Send?|
    |Default Connector Label|Default Outcome|
    
    
    #### Rule First_Year_Audit (First Year Audit)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[Copy_2_of_Schwab_or_Matrix](#copy_2_of_schwab_or_matrix)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.First_Year_Audit__c| Equal To|✅|
    |2|$Record.Initial_Audit_Email__c| Is Null|⬜|
    
    
    
    
    #### Rule Initial_Audit_Email (Initial Audit Email)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[Copy_1_of_Schwab_or_Matrix](#copy_1_of_schwab_or_matrix)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Initial_Audit_Email__c| Is Null|⬜|
    
    
    
    
    #### Rule Audit_Package_Sent (Audit Package Sent)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[Audit_Package_SentAlert](#audit_package_sentalert)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Audit_Package_Sent__c| Is Null|⬜|
    
    
    
    
    #### Rule Draft5500 (Draft 5500)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Does Require Record Changed To Meet Criteria|✅|
    |Connector|[Draft5500alert](#draft5500alert)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Draft_Form_5500__c| Is Null|⬜|
    
    
    
    
    ### Create_email_activity
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|EmailMessage|
    |Label|Create email activity|
    |Store Output Automatically|✅|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Account__c|$Record.Account__c|
    |EmailTemplateId|emailTemplateId|
    |FromAddress|compliance@myubiquity.com|
    |FromName|Compliance|
    |HtmlBody|EmailTemplateRec.HtmlValue|
    |RelatedToId|$Record.Id|
    |Status|3|
    |Subject|EmailTemplateRec.Subject|
    |TextBody|EmailTemplateRec.Body|
    |ToAddress|$Record.Primary_Plan_Sponsor_Email__c|
    
    
    
    
    ### Create_fallback_email_activity
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|EmailMessage|
    |Label|Create fallback email activity|
    |Store Output Automatically|✅|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Account__c|$Record.Account__c|
    |FromAddress|compliance@myubiquity.com|
    |FromName|Compliance|
    |RelatedToId|$Record.Id|
    |Status|3|
    |Subject|emailTemplateName|
    |TextBody|placeholderBody|
    |ToAddress|$Record.Primary_Plan_Sponsor_Email__c|
    
    
    
    
    ### Get_alert_template
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|EmailTemplate|
    |Label|Get alert template|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|EmailTemplateRec|
    |Queried Fields|- Id<br/>- HtmlValue<br/>- Subject<br/>- Body<br/>|
    |Connector|[Check_if_template_found](#check_if_template_found)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|emailTemplateId|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

