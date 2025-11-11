# Case_Scheduled_Create_Monthly_Spam_and_Data_Sync_Cases history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Case_Scheduled_Create_Monthly_Spam_and_Data_Sync_Cases-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>AutoLaunched Flow</b></br>"]):::startClass
    click START "#general-information" "421933500"
    
    Create_Data_Sync_Case[("➕ <em></em><br/>Create Data Sync Case")]:::recordCreates
    click Create_Data_Sync_Case "#create_data_sync_case" "773996586"
    
    Create_De_Dupe_Case[("➕ <em></em><br/>Create De-Dupe Case")]:::recordCreates
    click Create_De_Dupe_Case "#create_de_dupe_case" "3262478659"
    
    Create_SOQL_Query_for_Email_Template_Usage[("➕ <em></em><br/>Generate Export for Email Template Usage")]:::recordCreates
    click Create_SOQL_Query_for_Email_Template_Usage "#create_soql_query_for_email_template_usage" "4038552262"
    
    Create_Spam_Delete_Case[("➕ <em></em><br/>Create Spam Delete Case")]:::recordCreates
    click Create_Spam_Delete_Case "#create_spam_delete_case" "2953675689"
    
    Create_Data_Sync_Case --> Create_De_Dupe_Case
    Create_De_Dupe_Case --> Create_SOQL_Query_for_Email_Template_Usage
    Create_SOQL_Query_for_Email_Template_Usage --> END_Create_SOQL_Query_for_Email_Template_Usage
    Create_Spam_Delete_Case --> Create_Data_Sync_Case
    START -->  Create_Spam_Delete_Case
    END_Create_SOQL_Query_for_Email_Template_Usage(( END )):::endClass
    
    
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
    |Label|Case | Scheduled | Create Monthly Spam and Data Sync Cases|
    |Status|Active|
    |Description|Updated to remove entitlements|
    |Environments|Default|
    |Interview Label|Case | Scheduled | Create Monthly Spam and Data Sync Cases {!$Flow.CurrentDateTime}|
    | Builder Type (PM)|LightningFlowBuilder|
    | Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
    | Origin Builder Type (PM)|LightningFlowBuilder|
    |Connector|[Create_Spam_Delete_Case](#create_spam_delete_case)|
    |Next Node|[Create_Spam_Delete_Case](#create_spam_delete_case)|
    
    
    ## Constants
    
    |Name|Data Type|Value|Description|
    |:-- |:--:|:--:|:--  |
    |ScreenstepLink|String|https://ubiquity.screenstepslive.com/s/20412/a/1498047-salesforce-monthly-updates|<!-- -->|
    |spamReport|String|https://myubiquity.lightning.force.com/lightning/r/Report/00O1G000002MvhZUAS/view?queryScope=userFolders|<!-- -->|
    
    
    ## Text Templates
    
    |Name|Text|Description|
    |:-- |:-- |:--  |
    |caseNotes|select createddate, id, FromAddress, EmailTemplate.name, parent.Case_Owner_Name__c, Parent.Owner.UserRole.name, Incoming from EmailMessage where incoming = false and ParentId != null and FromAddress = 'support@myubiquity.com' and createddate = THIS_FISCAL_QUARTER and Parent.Owner.UserRole.name like '%user%' order by createddate desc<br/><br/><br/>Copy soql query, open soql editor in SF inspector, run query, copy to excel format, go to gsheets link, delete existing data, paste new export results|<!-- -->|
    |gSheetLink|<p><a href="https://docs.google.com/spreadsheets/d/1esrcD9sghZl5tNcRBBfjnembFgorLgN9lMpOcHSpDaU/edit#gid=1235078342" rel="noopener noreferrer" target="_blank">https://docs.google.com/spreadsheets/d/1esrcD9sghZl5tNcRBBfjnembFgorLgN9lMpOcHSpDaU/edit#gid=1235078342</a></p>|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### Create_Data_Sync_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Create Data Sync Case|
    |Store Output Automatically|✅|
    |Connector|[Create_De_Dupe_Case](#create_de_dupe_case)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|0013700000JH68lAAD|
    |Case_Type__c|Single Case|
    |Case_notes_new__c|ScreenstepLink|
    |Department__c|Business Intelligence|
    |Origin|Internal|
    |OwnerId|00G37000000ztuWEAQ|
    |Plan__c|a2o1G000000oQW5QAM|
    |Priority|Low|
    |Reason|Data Cleanup|
    |RecordTypeId|01237000000Ez81AAC|
    |Request_Level__c|1 - Existing Process Management|
    |Status|New|
    |Subject|Perform Monthly Data Sync|
    
    
    
    
    ### Create_De_Dupe_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Create De-Dupe Case|
    |Store Output Automatically|✅|
    |Connector|[Create_SOQL_Query_for_Email_Template_Usage](#create_soql_query_for_email_template_usage)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|0013700000JH68lAAD|
    |Case_Type__c|Single Case|
    |Department__c|Business Intelligence|
    |Origin|Internal|
    |OwnerId|00G37000000ztuWEAQ|
    |Plan__c|a2o1G000000oQW5QAM|
    |Priority|Low|
    |Reason|Data Cleanup|
    |RecordTypeId|01237000000Ez81AAC|
    |Request_Level__c|1 - Existing Process Management|
    |Status|New|
    |Subject|De-Dupe Accounts and Contacts|
    
    
    
    
    ### Create_SOQL_Query_for_Email_Template_Usage
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Generate Export for Email Template Usage|
    |Store Output Automatically|✅|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|0013700000JH68lAAD|
    |Case_Type__c|Single Case|
    |Case_notes_new__c|caseNotes|
    |Department__c|Business Intelligence|
    |Description|gSheetLink|
    |Origin|Internal|
    |OwnerId|00G37000000ztuW|
    |Plan__c|a2o1G000000oQW5QAM|
    |Priority|Medium|
    |Reason|Analytics|
    |RecordTypeId|01237000000Ez81AAC|
    |Status|New|
    |Subject|Create Export for Email Template Usage|
    
    
    
    
    ### Create_Spam_Delete_Case
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|Case|
    |Label|Create Spam Delete Case|
    |Store Output Automatically|✅|
    |Connector|[Create_Data_Sync_Case](#create_data_sync_case)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |AccountId|0013700000JH68lAAD|
    |Case_Type__c|Single Case|
    |Case_notes_new__c|spamReport|
    |Department__c|Business Intelligence|
    |Origin|Internal|
    |OwnerId|00G37000000ztuWEAQ|
    |Plan__c|a2o1G000000oQW5QAM|
    |Priority|Low|
    |Reason|Data Cleanup|
    |RecordTypeId|01237000000Ez81AAC|
    |Request_Level__c|1 - Existing Process Management|
    |Status|New|
    |Subject|Delete Spam Cases|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

