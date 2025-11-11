# Compliance_ADP_ACP_Testing_Alerts_1 history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 11, 2025 (Initial)"

    _Nov 11, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Compliance_ADP_ACP_Testing_Alerts_1-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
    click START "#general-information" "2039205042"
    
    myRule_11_A1("📧 <em></em><br/>Send Failed Current Year Alert"):::actionCalls
    click myRule_11_A1 "#myrule_11_a1" "3468428831"
    
    myRule_15_A1("📧 <em></em><br/>Send Deemed Pass Alert"):::actionCalls
    click myRule_15_A1 "#myrule_15_a1" "1446350607"
    
    myRule_19_A1("📧 <em></em><br/>Send Passed Alert"):::actionCalls
    click myRule_19_A1 "#myrule_19_a1" "284717813"
    
    myRule_1_A1("📧 <em></em><br/>Census Verification Email"):::actionCalls
    click myRule_1_A1 "#myrule_1_a1" "3422586934"
    
    myRule_23_A1("📧 <em></em><br/>Send Auto Enroll Failed Prior Year Alert"):::actionCalls
    click myRule_23_A1 "#myrule_23_a1" "3308555373"
    
    myRule_27_A1("📧 <em></em><br/>Send Auto Enroll Failed Current Year"):::actionCalls
    click myRule_27_A1 "#myrule_27_a1" "2121856413"
    
    myRule_31_A1("📧 <em></em><br/>ADP ACP | Send Current Year Reminder"):::actionCalls
    click myRule_31_A1 "#myrule_31_a1" "2653834104"
    
    myRule_39_A1("📧 <em></em><br/>Current Year Reminder Auto"):::actionCalls
    click myRule_39_A1 "#myrule_39_a1" "37163156"
    
    myRule_47_A1("📧 <em></em><br/>ADP ACP | Send Prior Year Reminder"):::actionCalls
    click myRule_47_A1 "#myrule_47_a1" "659862409"
    
    myRule_4_A1("📧 <em></em><br/>Census Verification Reminder"):::actionCalls
    click myRule_4_A1 "#myrule_4_a1" "3786310067"
    
    myRule_55_A1("📧 <em></em><br/>Prior Reminder Auto"):::actionCalls
    click myRule_55_A1 "#myrule_55_a1" "2458028066"
    
    myRule_7_A1("📧 <em></em><br/>Send Failed Prior Year Alert"):::actionCalls
    click myRule_7_A1 "#myrule_7_a1" "2988298315"
    
    Define_Template_ID[\"🟰 <em></em><br/>Define Template ID"/]:::assignments
    click Define_Template_ID "#define_template_id" "1665547313"
    
    Define_Template_ID10[\"🟰 <em></em><br/>Define Template ID10"/]:::assignments
    click Define_Template_ID10 "#define_template_id10" "1805470529"
    
    Define_Template_ID2[\"🟰 <em></em><br/>Define Template ID2"/]:::assignments
    click Define_Template_ID2 "#define_template_id2" "2593160951"
    
    Define_Template_ID3[\"🟰 <em></em><br/>Define Template ID3"/]:::assignments
    click Define_Template_ID3 "#define_template_id3" "3791527419"
    
    Define_Template_ID4[\"🟰 <em></em><br/>Define Template ID4"/]:::assignments
    click Define_Template_ID4 "#define_template_id4" "1790230681"
    
    Define_Template_ID5[\"🟰 <em></em><br/>Define Template ID5"/]:::assignments
    click Define_Template_ID5 "#define_template_id5" "1528933306"
    
    Define_Template_ID6[\"🟰 <em></em><br/>Define Template ID6"/]:::assignments
    click Define_Template_ID6 "#define_template_id6" "4077979974"
    
    Define_Template_ID7[\"🟰 <em></em><br/>Define Template ID7"/]:::assignments
    click Define_Template_ID7 "#define_template_id7" "2634958226"
    
    Define_Template_ID8[\"🟰 <em></em><br/>Define Template ID8"/]:::assignments
    click Define_Template_ID8 "#define_template_id8" "3386699574"
    
    Define_Template_ID9[\"🟰 <em></em><br/>Define Template ID9"/]:::assignments
    click Define_Template_ID9 "#define_template_id9" "2827917139"
    
    DefineTemplateID11[\"🟰 <em></em><br/>DefineTemplateID11"/]:::assignments
    click DefineTemplateID11 "#definetemplateid11" "4153450906"
    
    DefineTemplateID12[\"🟰 <em></em><br/>DefineTemplateID12"/]:::assignments
    click DefineTemplateID12 "#definetemplateid12" "2642607076"
    
    myRule_1{"🔀 <em></em><br/>Census Verification"}:::decisions
    click myRule_1 "#myrule_1" "3062103056"
    
    myRule_11{"🔀 <em></em><br/>ADP ACP | Failed Current Year Test"}:::decisions
    click myRule_11 "#myrule_11" "1851454102"
    
    myRule_15{"🔀 <em></em><br/>ADP ACP | Failed Deemed Pass"}:::decisions
    click myRule_15 "#myrule_15" "934801019"
    
    myRule_19{"🔀 <em></em><br/>ADP ACP | Passed"}:::decisions
    click myRule_19 "#myrule_19" "3898274754"
    
    myRule_23{"🔀 <em></em><br/>ADP ACP | Auto Enroll Failed Prior Year"}:::decisions
    click myRule_23 "#myrule_23" "550808541"
    
    myRule_27{"🔀 <em></em><br/>ADP ACP | Auto Enroll Failed Current Year"}:::decisions
    click myRule_27 "#myrule_27" "362660780"
    
    myRule_31{"🔀 <em></em><br/>ADP ACP | Reminder - Current"}:::decisions
    click myRule_31 "#myrule_31" "626047278"
    
    myRule_39{"🔀 <em></em><br/>ADP ACP | Reminder - Current Auto"}:::decisions
    click myRule_39 "#myrule_39" "1409097287"
    
    myRule_4{"🔀 <em></em><br/>Census Verification Reminder"}:::decisions
    click myRule_4 "#myrule_4" "1181719082"
    
    myRule_47{"🔀 <em></em><br/>ADP ACP | Reminder - Prior"}:::decisions
    click myRule_47 "#myrule_47" "4101448073"
    
    myRule_55{"🔀 <em></em><br/>ADP ACP | Reminder Prior Auto"}:::decisions
    click myRule_55 "#myrule_55" "2857860949"
    
    myRule_7{"🔀 <em></em><br/>ADP ACP | Failed Prior Year Test"}:::decisions
    click myRule_7 "#myrule_7" "1221181321"
    
    Template_Found_Check{"🔀 <em></em><br/>Template Found Check"}:::decisions
    click Template_Found_Check "#template_found_check" "626575846"
    
    Create_Email_Copy_Using_Template_Data[("➕ <em></em><br/>Create Email Copy Using Template Data")]:::recordCreates
    click Create_Email_Copy_Using_Template_Data "#create_email_copy_using_template_data" "3426394740"
    
    myRule_55_A2[("➕ <em></em><br/>Email Copy")]:::recordCreates
    click myRule_55_A2 "#myrule_55_a2" "290530688"
    
    Find_Email_Template_Used[("🔍 <em></em><br/>Find Email Template Used")]:::recordLookups
    click Find_Email_Template_Used "#find_email_template_used" "256796359"
    
    myRule_11_A1 --> Define_Template_ID4
    myRule_15_A1 --> Define_Template_ID5
    myRule_19_A1 --> Define_Template_ID6
    myRule_1_A1 --> Define_Template_ID
    myRule_23_A1 --> Define_Template_ID7
    myRule_27_A1 --> Define_Template_ID8
    myRule_31_A1 --> Define_Template_ID9
    myRule_39_A1 --> Define_Template_ID10
    myRule_47_A1 --> DefineTemplateID11
    myRule_4_A1 --> Define_Template_ID2
    myRule_55_A1 --> DefineTemplateID12
    myRule_7_A1 --> Define_Template_ID3
    Define_Template_ID --> Find_Email_Template_Used
    Define_Template_ID10 --> Find_Email_Template_Used
    Define_Template_ID2 --> Find_Email_Template_Used
    Define_Template_ID3 --> Find_Email_Template_Used
    Define_Template_ID4 --> Find_Email_Template_Used
    Define_Template_ID5 --> Find_Email_Template_Used
    Define_Template_ID6 --> Find_Email_Template_Used
    Define_Template_ID7 --> Find_Email_Template_Used
    Define_Template_ID8 --> Find_Email_Template_Used
    Define_Template_ID9 --> Find_Email_Template_Used
    DefineTemplateID11 --> Find_Email_Template_Used
    DefineTemplateID12 --> Find_Email_Template_Used
    myRule_1 --> |"TRUE_Census Verification"| myRule_1_A1
    myRule_1 --> |"FALSE_Census Verification"| myRule_4
    myRule_11 --> |"TRUE_ADP ACP | Failed Current Year Test"| myRule_11_A1
    myRule_11 --> |"FALSE_ADP ACP | Failed Current Year Test"| myRule_15
    myRule_15 --> |"TRUE_ADP ACP | Failed Deemed Pass"| myRule_15_A1
    myRule_15 --> |"FALSE_ADP ACP | Failed Deemed Pass"| myRule_19
    myRule_19 --> |"TRUE_ADP ACP | Passed"| myRule_19_A1
    myRule_19 --> |"FALSE_ADP ACP | Passed"| myRule_23
    myRule_23 --> |"TRUE_ADP ACP | Auto Enroll Failed Prior Year"| myRule_23_A1
    myRule_23 --> |"FALSE_ADP ACP | Auto Enroll Failed Prior Year"| myRule_27
    myRule_27 --> |"TRUE_ADP ACP | Auto Enroll Failed Current Year"| myRule_27_A1
    myRule_27 --> |"FALSE_ADP ACP | Auto Enroll Failed Current Year"| myRule_31
    myRule_31 --> |"TRUE_ADP ACP | Reminder - Current"| myRule_31_A1
    myRule_31 --> |"FALSE_ADP ACP | Reminder - Current"| myRule_39
    myRule_39 --> |"TRUE_ADP ACP | Reminder - Current Auto"| myRule_39_A1
    myRule_39 --> |"FALSE_ADP ACP | Reminder - Current Auto"| myRule_47
    myRule_4 --> |"TRUE_Census Verification Reminder"| myRule_4_A1
    myRule_4 --> |"FALSE_Census Verification Reminder"| myRule_7
    myRule_47 --> |"TRUE_ADP ACP | Reminder - Prior"| myRule_47_A1
    myRule_47 --> |"FALSE_ADP ACP | Reminder - Prior"| myRule_55
    myRule_55 --> |"TRUE_ADP ACP | Reminder Prior Auto"| myRule_55_A1
    myRule_55 --> |"FALSE_ADP ACP | Reminder Prior Auto"| END_myRule_55
    myRule_7 --> |"TRUE_ADP ACP | Failed Prior Year Test"| myRule_7_A1
    myRule_7 --> |"FALSE_ADP ACP | Failed Prior Year Test"| myRule_11
    Template_Found_Check --> |"Email Template Found"| Create_Email_Copy_Using_Template_Data
    Template_Found_Check --> |"Oops"| myRule_55_A2
    Create_Email_Copy_Using_Template_Data --> END_Create_Email_Copy_Using_Template_Data
    myRule_55_A2 --> END_myRule_55_A2
    Find_Email_Template_Used --> Template_Found_Check
    START -->  myRule_1
    END_myRule_55(( END )):::endClass
    END_Create_Email_Copy_Using_Template_Data(( END )):::endClass
    END_myRule_55_A2(( END )):::endClass
    
    
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
    |Label|Compliance | ADP ACP Testing Alerts_1|
    |Status|Active|
    |Description|Moved PB to flow changes are a basic entry condition, and logging email using template body w/ backup (lower maintenance)<br/><br/>Migrated from the Compliance | ADP ACP Testing Alerts process using multiple criteria.<br/>Triggers ADP & ACP Email Results and Census Verification Emails|
    |Environments|Default|
    |Interview Label|Compliance | ADP ACP Testing Alerts_1 {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|FREE_FORM_CANVAS|
    |Connector|[myRule_1](#myrule_1)|
    |Next Node|[myRule_1](#myrule_1)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|RecordTypeId| Equal To|01237000000N0luAAC|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |emailTemplateRecord|SObject|⬜|⬜|⬜|EmailTemplate|<!-- -->|
    |recipientEmailCollection|String|✅|⬜|⬜|<!-- -->|<!-- -->|
    |templateId|String|⬜|⬜|⬜|<!-- -->|<!-- -->|
    |templateName|String|⬜|⬜|⬜|<!-- -->|used in case the email template search fails|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |placeholderBody|String|"Email alert using the template " + "'" + {!templateName} + "'"|used if email template search fails|
    |Today|Date|TODAY()|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### myRule_11_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send Failed Current Year Alert|
    |Action Type|Email Alert|
    |Action Name|Compliance__c.Compliance_ADP_ACP_Testing_Failed_Current|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Compliance__c.Compliance_ADP_ACP_Testing_Failed_Current|
    | SObject Row Id (input)|$Record.Id|
    |Connector|[Define_Template_ID4](#define_template_id4)|
    
    
    ### myRule_15_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send Deemed Pass Alert|
    |Action Type|Email Alert|
    |Action Name|Compliance__c.Compliance_ADP_ACP_Testing_Failed_Deemed_Pass|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Compliance__c.Compliance_ADP_ACP_Testing_Failed_Deemed_Pass|
    | SObject Row Id (input)|$Record.Id|
    |Connector|[Define_Template_ID5](#define_template_id5)|
    
    
    ### myRule_19_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send Passed Alert|
    |Action Type|Email Alert|
    |Action Name|Compliance__c.Compliance_ADP_ACP_Testing_Passed|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Compliance__c.Compliance_ADP_ACP_Testing_Passed|
    | SObject Row Id (input)|$Record.Id|
    |Connector|[Define_Template_ID6](#define_template_id6)|
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Census Verification Email|
    |Action Type|Email Alert|
    |Action Name|Compliance__c.Compliance_Census_Verification_Email|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Compliance__c.Compliance_Census_Verification_Email|
    | SObject Row Id (input)|$Record.Id|
    |Connector|[Define_Template_ID](#define_template_id)|
    
    
    ### myRule_23_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send Auto Enroll Failed Prior Year Alert|
    |Action Type|Email Alert|
    |Action Name|Compliance__c.Compliance_ADP_ACP_Testing_AEFailed_Prior|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Compliance__c.Compliance_ADP_ACP_Testing_AEFailed_Prior|
    | SObject Row Id (input)|$Record.Id|
    |Connector|[Define_Template_ID7](#define_template_id7)|
    
    
    ### myRule_27_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send Auto Enroll Failed Current Year|
    |Action Type|Email Alert|
    |Action Name|Compliance__c.Compliance_ADP_ACP_Testing_AEFailed_Current|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Compliance__c.Compliance_ADP_ACP_Testing_AEFailed_Current|
    | SObject Row Id (input)|$Record.Id|
    |Connector|[Define_Template_ID8](#define_template_id8)|
    
    
    ### myRule_31_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|ADP ACP | Send Current Year Reminder|
    |Action Type|Email Alert|
    |Action Name|Compliance__c.Compliance_ADP_ACP_Testing_Reminder_Current|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Compliance__c.Compliance_ADP_ACP_Testing_Reminder_Current|
    | SObject Row Id (input)|$Record.Id|
    |Connector|[Define_Template_ID9](#define_template_id9)|
    
    
    ### myRule_39_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Current Year Reminder Auto|
    |Action Type|Email Alert|
    |Action Name|Compliance__c.Compliance_ADP_ACP_Testing_Reminder_Current_Auto|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Compliance__c.Compliance_ADP_ACP_Testing_Reminder_Current_Auto|
    | SObject Row Id (input)|$Record.Id|
    |Connector|[Define_Template_ID10](#define_template_id10)|
    
    
    ### myRule_47_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|ADP ACP | Send Prior Year Reminder|
    |Action Type|Email Alert|
    |Action Name|Compliance__c.Compliance_ADP_ACP_Testing_Reminder_Prior|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Compliance__c.Compliance_ADP_ACP_Testing_Reminder_Prior|
    | SObject Row Id (input)|$Record.Id|
    |Connector|[DefineTemplateID11](#definetemplateid11)|
    
    
    ### myRule_4_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Census Verification Reminder|
    |Action Type|Email Alert|
    |Action Name|Compliance__c.Compliance_ADP_ACP_Testing_Reminder_Census_Verification|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Compliance__c.Compliance_ADP_ACP_Testing_Reminder_Census_Verification|
    | SObject Row Id (input)|$Record.Id|
    |Connector|[Define_Template_ID2](#define_template_id2)|
    
    
    ### myRule_55_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Prior Reminder Auto|
    |Action Type|Email Alert|
    |Action Name|Compliance__c.Compliance_ADP_ACP_Testing_Reminder_Prior_Auto|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Compliance__c.Compliance_ADP_ACP_Testing_Reminder_Prior_Auto|
    | SObject Row Id (input)|$Record.Id|
    |Connector|[DefineTemplateID12](#definetemplateid12)|
    
    
    ### myRule_7_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send Failed Prior Year Alert|
    |Action Type|Email Alert|
    |Action Name|Compliance__c.Compliance_ADP_ACP_Testing_Failed_Prior|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Compliance__c.Compliance_ADP_ACP_Testing_Failed_Prior|
    | SObject Row Id (input)|$Record.Id|
    |Connector|[Define_Template_ID3](#define_template_id3)|
    
    
    ### Define_Template_ID
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Define Template ID|
    |Connector|[Find_Email_Template_Used](#find_email_template_used)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |templateId| Assign|00X1G000000pDfK|
    |templateName| Assign|ADP ACP | Census Verification|
    
    
    
    
    ### Define_Template_ID10
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Define Template ID10|
    |Connector|[Find_Email_Template_Used](#find_email_template_used)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |templateId| Assign|00X1G000000g0SH|
    |templateName| Assign|ADP/ACP | Reminder - Current Year Auto Enroll|
    
    
    
    
    ### Define_Template_ID2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Define Template ID2|
    |Connector|[Find_Email_Template_Used](#find_email_template_used)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |templateId| Assign|00X1G000000pDfK|
    |templateName| Assign|ADP ACP | Census Verification|
    
    
    
    
    ### Define_Template_ID3
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Define Template ID3|
    |Connector|[Find_Email_Template_Used](#find_email_template_used)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |templateId| Assign|00X1G0000011knG|
    |templateName| Assign|ADP/ACP | Failed Prior Year|
    
    
    
    
    ### Define_Template_ID4
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Define Template ID4|
    |Connector|[Find_Email_Template_Used](#find_email_template_used)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |templateId| Assign|00X1G0000011knL|
    |templateName| Assign|ADP/ACP | Failed Current Year|
    
    
    
    
    ### Define_Template_ID5
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Define Template ID5|
    |Connector|[Find_Email_Template_Used](#find_email_template_used)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |templateId| Assign|00X1G0000011knQ|
    |templateName| Assign|ADP/ACP | Failed Deemed Pass|
    
    
    
    
    ### Define_Template_ID6
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Define Template ID6|
    |Connector|[Find_Email_Template_Used](#find_email_template_used)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |templateId| Assign|00X1G0000011knV|
    |templateName| Assign|ADP/ACP | Pass|
    
    
    
    
    ### Define_Template_ID7
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Define Template ID7|
    |Connector|[Find_Email_Template_Used](#find_email_template_used)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |templateId| Assign|00X1G0000011ktY|
    |templateName| Assign|ADP/ACP | Failed Prior Year Auto Enroll|
    
    
    
    
    ### Define_Template_ID8
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Define Template ID8|
    |Connector|[Find_Email_Template_Used](#find_email_template_used)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |templateId| Assign|00X1G0000011ktT|
    |templateName| Assign|ADP/ACP | Failed Current Year Auto Enroll|
    
    
    
    
    ### Define_Template_ID9
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|Define Template ID9|
    |Connector|[Find_Email_Template_Used](#find_email_template_used)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |templateId| Assign|00X1G000000xZCf|
    |templateName| Assign|ADP/ACP | Reminder - Current Year|
    
    
    
    
    ### DefineTemplateID11
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|[DefineTemplateID11](#definetemplateid11)|
    |Connector|[Find_Email_Template_Used](#find_email_template_used)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |templateId| Assign|01W1G000000bmID|
    |templateName| Assign|Compliance | ADP ACP Testing - Reminder - Prior|
    
    
    
    
    ### DefineTemplateID12
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Assignment|
    |Label|[DefineTemplateID12](#definetemplateid12)|
    |Connector|[Find_Email_Template_Used](#find_email_template_used)|
    
    
    #### Assignments
    
    |Assign To Reference|Operator|Value|
    |:-- |:--:|:--: |
    |templateId| Assign|00X1G000000g0SM|
    |templateName| Assign|ADP/ACP | Reminder - Prior Year_Auto_Enroll|
    
    
    
    
    ### myRule_1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Census Verification|
    |Default Connector|[myRule_4](#myrule_4)|
    |Default Connector Label|FALSE_Census Verification|
    
    
    #### Rule TRUE_myRule_1 (TRUE_Census Verification)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_A1](#myrule_1_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Census_Verification_Email_Sent__c| Is Changed|✅|
    |2|$Record.Census_Verification_Email_Sent__c| Is Null|⬜|
    
    
    
    
    ### myRule_11
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|ADP ACP | Failed Current Year Test|
    |Default Connector|[myRule_15](#myrule_15)|
    |Default Connector Label|FALSE_ADP ACP | Failed Current Year Test|
    
    
    #### Rule TRUE_myRule_11 (TRUE_ADP ACP | Failed Current Year Test)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_11_A1](#myrule_11_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Testing_Method__c| Equal To|CURRENT|
    |2|$Record.Status__c| Equal To|Fail|
    |3|$Record.RecordTypeId| Equal To|01237000000N0luAAC|
    |4|$Record.Census_Last_Received__c| Is Changed|✅|
    |5|$Record.Census_Last_Received__c| Equal To|Today|
    |6|$Record.Auto_Enrollment__c| Equal To|No|
    
    
    
    
    ### myRule_15
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|ADP ACP | Failed Deemed Pass|
    |Default Connector|[myRule_19](#myrule_19)|
    |Default Connector Label|FALSE_ADP ACP | Failed Deemed Pass|
    
    
    #### Rule TRUE_myRule_15 (TRUE_ADP ACP | Failed Deemed Pass)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_15_A1](#myrule_15_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.RecordTypeId| Equal To|01237000000N0luAAC|
    |2|$Record.Status__c| Equal To|Deemed|
    |3|$Record.Census_Last_Received__c| Is Changed|✅|
    |4|$Record.Census_Last_Received__c| Equal To|Today|
    
    
    
    
    ### myRule_19
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|ADP ACP | Passed|
    |Default Connector|[myRule_23](#myrule_23)|
    |Default Connector Label|FALSE_ADP ACP | Passed|
    
    
    #### Rule TRUE_myRule_19 (TRUE_ADP ACP | Passed)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_19_A1](#myrule_19_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.RecordTypeId| Equal To|01237000000N0luAAC|
    |2|$Record.Status__c| Equal To|Pass|
    |3|$Record.Census_Last_Received__c| Is Changed|✅|
    |4|$Record.Census_Last_Received__c| Equal To|Today|
    
    
    
    
    ### myRule_23
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|ADP ACP | Auto Enroll Failed Prior Year|
    |Default Connector|[myRule_27](#myrule_27)|
    |Default Connector Label|FALSE_ADP ACP | Auto Enroll Failed Prior Year|
    
    
    #### Rule TRUE_myRule_23 (TRUE_ADP ACP | Auto Enroll Failed Prior Year)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_23_A1](#myrule_23_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Testing_Method__c| Equal To|PRIOR|
    |2|$Record.RecordTypeId| Equal To|01237000000N0luAAC|
    |3|$Record.Status__c| Equal To|Fail|
    |4|$Record.Census_Last_Received__c| Is Changed|✅|
    |5|$Record.Census_Last_Received__c| Equal To|Today|
    |6|$Record.Auto_Enrollment__c| Equal To|Yes|
    
    
    
    
    ### myRule_27
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|ADP ACP | Auto Enroll Failed Current Year|
    |Default Connector|[myRule_31](#myrule_31)|
    |Default Connector Label|FALSE_ADP ACP | Auto Enroll Failed Current Year|
    
    
    #### Rule TRUE_myRule_27 (TRUE_ADP ACP | Auto Enroll Failed Current Year)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_27_A1](#myrule_27_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Testing_Method__c| Equal To|CURRENT|
    |2|$Record.RecordTypeId| Equal To|01237000000N0luAAC|
    |3|$Record.Status__c| Equal To|Fail|
    |4|$Record.Census_Last_Received__c| Is Changed|✅|
    |5|$Record.Census_Last_Received__c| Equal To|Today|
    |6|$Record.Auto_Enrollment__c| Equal To|Yes|
    
    
    
    
    ### myRule_31
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|ADP ACP | Reminder - Current|
    |Default Connector|[myRule_39](#myrule_39)|
    |Default Connector Label|FALSE_ADP ACP | Reminder - Current|
    
    
    #### Rule TRUE_myRule_31 (TRUE_ADP ACP | Reminder - Current)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_31_A1](#myrule_31_a1)|
    |Condition Logic|1 AND 2 AND 3 AND 6 AND 7 AND (((4 AND 5) OR (8 AND 9) OR (10 AND 11)))|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.RecordTypeId| Equal To|01237000000N0luAAC|
    |2|$Record.Testing_Method__c| Equal To|CURRENT|
    |3|$Record.Status__c| Equal To|Fail|
    |4|$Record.X1st_Reminder_Sent__c| Is Changed|✅|
    |5|$Record.X1st_Reminder_Sent__c| Equal To|Today|
    |6|$Record.Auto_Enrollment__c| Equal To|No|
    |7|$Record.Correction_Method_Selected__c| Equal To|N/A|
    |8|$Record.X2nd_Reminder_Sent__c| Is Changed|✅|
    |9|$Record.X2nd_Reminder_Sent__c| Equal To|Today|
    |10|$Record.X3rd_Reminder_Sent__c| Is Changed|✅|
    |11|$Record.X3rd_Reminder_Sent__c| Equal To|Today|
    
    
    
    
    ### myRule_39
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|ADP ACP | Reminder - Current Auto|
    |Default Connector|[myRule_47](#myrule_47)|
    |Default Connector Label|FALSE_ADP ACP | Reminder - Current Auto|
    
    
    #### Rule TRUE_myRule_39 (TRUE_ADP ACP | Reminder - Current Auto)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_39_A1](#myrule_39_a1)|
    |Condition Logic|1 AND 2 AND 3 AND 4 AND 5 AND ((6 AND 7) OR (8 AND 9) OR (10 AND 11))|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.RecordTypeId| Equal To|01237000000N0luAAC|
    |2|$Record.Testing_Method__c| Equal To|CURRENT|
    |3|$Record.Status__c| Equal To|Fail|
    |4|$Record.Auto_Enrollment__c| Equal To|Yes|
    |5|$Record.Correction_Method_Selected__c| Equal To|N/A|
    |6|$Record.X1st_Reminder_Sent__c| Is Changed|✅|
    |7|$Record.X1st_Reminder_Sent__c| Equal To|Today|
    |8|$Record.X2nd_Reminder_Sent__c| Is Changed|✅|
    |9|$Record.X2nd_Reminder_Sent__c| Equal To|Today|
    |10|$Record.X3rd_Reminder_Sent__c| Is Changed|✅|
    |11|$Record.X3rd_Reminder_Sent__c| Equal To|Today|
    
    
    
    
    ### myRule_4
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Census Verification Reminder|
    |Default Connector|[myRule_7](#myrule_7)|
    |Default Connector Label|FALSE_Census Verification Reminder|
    
    
    #### Rule TRUE_myRule_4 (TRUE_Census Verification Reminder)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_4_A1](#myrule_4_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.Census_Verification_Email_Reminder__c| Is Null|⬜|
    |2|$Record.Census_Verification_Email_Reminder__c| Is Changed|✅|
    
    
    
    
    ### myRule_47
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|ADP ACP | Reminder - Prior|
    |Default Connector|[myRule_55](#myrule_55)|
    |Default Connector Label|FALSE_ADP ACP | Reminder - Prior|
    
    
    #### Rule TRUE_myRule_47 (TRUE_ADP ACP | Reminder - Prior)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_47_A1](#myrule_47_a1)|
    |Condition Logic|1 AND 2 AND 3 AND 4 AND 5 AND (((6 AND 7) OR (8 AND 9) OR (10 AND 11)))|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.RecordTypeId| Equal To|01237000000N0luAAC|
    |2|$Record.Testing_Method__c| Equal To|PRIOR|
    |3|$Record.Correction_Method_Selected__c| Equal To|N/A|
    |4|$Record.Auto_Enrollment__c| Equal To|No|
    |5|$Record.Status__c| Equal To|Fail|
    |6|$Record.X1st_Reminder_Sent__c| Is Changed|✅|
    |7|$Record.X1st_Reminder_Sent__c| Equal To|Today|
    |8|$Record.X2nd_Reminder_Sent__c| Is Changed|✅|
    |9|$Record.X2nd_Reminder_Sent__c| Equal To|Today|
    |10|$Record.X3rd_Reminder_Sent__c| Is Changed|✅|
    |11|$Record.X3rd_Reminder_Sent__c| Equal To|Today|
    
    
    
    
    ### myRule_55
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|ADP ACP | Reminder Prior Auto|
    |Default Connector Label|FALSE_ADP ACP | Reminder Prior Auto|
    
    
    #### Rule TRUE_myRule_55 (TRUE_ADP ACP | Reminder Prior Auto)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_55_A1](#myrule_55_a1)|
    |Condition Logic|1 AND 2 AND 3 AND 4 AND 11 AND ((5 AND 6) OR (7 AND 8) OR (9 AND 10))|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.RecordTypeId| Equal To|01237000000N0luAAC|
    |2|$Record.Testing_Method__c| Equal To|PRIOR|
    |3|$Record.Status__c| Equal To|Fail|
    |4|$Record.Auto_Enrollment__c| Equal To|Yes|
    |5|$Record.X1st_Reminder_Sent__c| Is Changed|✅|
    |6|$Record.X1st_Reminder_Sent__c| Equal To|Today|
    |7|$Record.X2nd_Reminder_Sent__c| Is Changed|✅|
    |8|$Record.X2nd_Reminder_Sent__c| Equal To|Today|
    |9|$Record.X3rd_Reminder_Sent__c| Is Changed|✅|
    |10|$Record.X3rd_Reminder_Sent__c| Equal To|Today|
    |11|$Record.Correction_Method_Selected__c| Equal To|N/A|
    
    
    
    
    ### myRule_7
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|ADP ACP | Failed Prior Year Test|
    |Default Connector|[myRule_11](#myrule_11)|
    |Default Connector Label|FALSE_ADP ACP | Failed Prior Year Test|
    
    
    #### Rule TRUE_myRule_7 (TRUE_ADP ACP | Failed Prior Year Test)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_7_A1](#myrule_7_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|$Record.RecordTypeId| Equal To|01237000000N0luAAC|
    |2|$Record.Testing_Method__c| Equal To|PRIOR|
    |3|$Record.Status__c| Equal To|Fail|
    |4|$Record.Census_Last_Received__c| Is Changed|✅|
    |5|$Record.Census_Last_Received__c| Equal To|Today|
    |6|$Record.Auto_Enrollment__c| Equal To|No|
    
    
    
    
    ### Template_Found_Check
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|Template Found Check|
    |Default Connector|[myRule_55_A2](#myrule_55_a2)|
    |Default Connector Label|Oops|
    
    
    #### Rule Email_Template_Found (Email Template Found)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[Create_Email_Copy_Using_Template_Data](#create_email_copy_using_template_data)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|emailTemplateRecord.Id| Is Null|⬜|
    
    
    
    
    ### Create_Email_Copy_Using_Template_Data
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|EmailMessage|
    |Label|Create Email Copy Using Template Data|
    |Store Output Automatically|✅|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Account__c|$Record.Account__c|
    |HtmlBody|emailTemplateRecord.HtmlValue|
    |RelatedToId|$Record.Id|
    |Status|3|
    |Subject|emailTemplateRecord.Subject|
    |TextBody|emailTemplateRecord.Body|
    |ToAddress|$Record.Primary_Plan_Sponsor_Email__c|
    
    
    
    
    ### myRule_55_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|EmailMessage|
    |Label|Email Copy|
    |Store Output Automatically|✅|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |RelatedToId|$Record.Id|
    |Status|3|
    |Subject|templateName|
    |TextBody|placeholderBody|
    |ToAddress|$Record.Primary_Plan_Sponsor_Email__c|
    
    
    
    
    ### Find_Email_Template_Used
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Lookup|
    |Object|EmailTemplate|
    |Label|Find Email Template Used|
    |Assign Null Values If No Records Found|✅|
    |Output Reference|emailTemplateRecord|
    |Queried Fields|- Id<br/>- Body<br/>- HtmlValue<br/>- Subject<br/>|
    |Sort Field|CreatedDate|
    |Sort Order|Desc|
    |Connector|[Template_Found_Check](#template_found_check)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|templateId|
    |2|IsActive| Equal To|✅|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

