# Compliance_Form_5500_Alerts history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Compliance_Form_5500_Alerts-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Compliance__c</b></br>Type: <b>On All Changes</b>"]):::startClass
    click START "#general-information" "2761911411"
    
    START --> isChangedDecision2_myRule_1_Invitation_to_File_Sent_c
    myRule_14_A1("📧 <em></em><br/>Prior 5500 Filing Confirm"):::actionCalls
    click myRule_14_A1 "#myrule_14_a1" "2960268545"
    
    myRule_17_A1("📧 <em></em><br/>SAR | Send Email #1"):::actionCalls
    click myRule_17_A1 "#myrule_17_a1" "3976218113"
    
    myRule_1_A2("📧 <em></em><br/>Prior 5500 - Invite to File"):::actionCalls
    click myRule_1_A2 "#myrule_1_a2" "2861421174"
    
    myRule_20_A1("📧 <em></em><br/>SAR | Send Email #2"):::actionCalls
    click myRule_20_A1 "#myrule_20_a1" "891079392"
    
    myRule_23_A1("📧 <em></em><br/>Final 5500 Invite to File"):::actionCalls
    click myRule_23_A1 "#myrule_23_a1" "1307732414"
    
    myRule_26_A2("📧 <em></em><br/>Final 5500 Remind File"):::actionCalls
    click myRule_26_A2 "#myrule_26_a2" "1468422038"
    
    myRule_36_A2("📧 <em></em><br/>Prior+Final 5500 Invite"):::actionCalls
    click myRule_36_A2 "#myrule_36_a2" "623844929"
    
    myRule_39_A2("📧 <em></em><br/>Prior+Final 5500 Remind"):::actionCalls
    click myRule_39_A2 "#myrule_39_a2" "1413612857"
    
    myRule_4_A3("📧 <em></em><br/>Prior 5500 Reminder to File"):::actionCalls
    click myRule_4_A3 "#myrule_4_a3" "131053549"
    
    isChangedDecision10_myRule_4_X6th_Reminder_Sent_c{"🔀 <em></em><br/>isChangedDecision10_myRule_4_X6th_Reminder_Sent_c"}:::decisions
    click isChangedDecision10_myRule_4_X6th_Reminder_Sent_c "#ischangeddecision10_myrule_4_x6th_reminder_sent_c" "2926776443"
    
    isChangedDecision11_myRule_4_X7th_Reminder_Sent_c{"🔀 <em></em><br/>isChangedDecision11_myRule_4_X7th_Reminder_Sent_c"}:::decisions
    click isChangedDecision11_myRule_4_X7th_Reminder_Sent_c "#ischangeddecision11_myrule_4_x7th_reminder_sent_c" "2070446220"
    
    isChangedDecision12_myRule_4_X8th_Reminder_Sent_c{"🔀 <em></em><br/>isChangedDecision12_myRule_4_X8th_Reminder_Sent_c"}:::decisions
    click isChangedDecision12_myRule_4_X8th_Reminder_Sent_c "#ischangeddecision12_myrule_4_x8th_reminder_sent_c" "3291007964"
    
    isChangedDecision15_myRule_14_Filing_Complete_c{"🔀 <em></em><br/>isChangedDecision15_myRule_14_Filing_Complete_c"}:::decisions
    click isChangedDecision15_myRule_14_Filing_Complete_c "#ischangeddecision15_myrule_14_filing_complete_c" "3001689676"
    
    isChangedDecision18_myRule_17_SAR_1_Date_c{"🔀 <em></em><br/>isChangedDecision18_myRule_17_SAR_1_Date_c"}:::decisions
    click isChangedDecision18_myRule_17_SAR_1_Date_c "#ischangeddecision18_myrule_17_sar_1_date_c" "4268020482"
    
    isChangedDecision21_myRule_20_SAR_2_Date_c{"🔀 <em></em><br/>isChangedDecision21_myRule_20_SAR_2_Date_c"}:::decisions
    click isChangedDecision21_myRule_20_SAR_2_Date_c "#ischangeddecision21_myrule_20_sar_2_date_c" "2572398934"
    
    isChangedDecision24_myRule_23_Invitation_to_File_Sent_c{"🔀 <em></em><br/>isChangedDecision24_myRule_23_Invitation_to_File_Sent_c"}:::decisions
    click isChangedDecision24_myRule_23_Invitation_to_File_Sent_c "#ischangeddecision24_myrule_23_invitation_to_file_sent_c" "1482503307"
    
    isChangedDecision27_myRule_26_X1st_Reminder_Sent_c{"🔀 <em></em><br/>isChangedDecision27_myRule_26_X1st_Reminder_Sent_c"}:::decisions
    click isChangedDecision27_myRule_26_X1st_Reminder_Sent_c "#ischangeddecision27_myrule_26_x1st_reminder_sent_c" "618444482"
    
    isChangedDecision28_myRule_26_X2nd_Reminder_Sent_c{"🔀 <em></em><br/>isChangedDecision28_myRule_26_X2nd_Reminder_Sent_c"}:::decisions
    click isChangedDecision28_myRule_26_X2nd_Reminder_Sent_c "#ischangeddecision28_myrule_26_x2nd_reminder_sent_c" "2760789131"
    
    isChangedDecision29_myRule_26_X3rd_Reminder_Sent_c{"🔀 <em></em><br/>isChangedDecision29_myRule_26_X3rd_Reminder_Sent_c"}:::decisions
    click isChangedDecision29_myRule_26_X3rd_Reminder_Sent_c "#ischangeddecision29_myrule_26_x3rd_reminder_sent_c" "2862036971"
    
    isChangedDecision2_myRule_1_Invitation_to_File_Sent_c{"🔀 <em></em><br/>isChangedDecision2_myRule_1_Invitation_to_File_Sent_c"}:::decisions
    click isChangedDecision2_myRule_1_Invitation_to_File_Sent_c "#ischangeddecision2_myrule_1_invitation_to_file_sent_c" "277936865"
    
    isChangedDecision30_myRule_26_X4th_Reminder_Sent_c{"🔀 <em></em><br/>isChangedDecision30_myRule_26_X4th_Reminder_Sent_c"}:::decisions
    click isChangedDecision30_myRule_26_X4th_Reminder_Sent_c "#ischangeddecision30_myrule_26_x4th_reminder_sent_c" "1441907353"
    
    isChangedDecision31_myRule_26_X5th_Reminder_Sent_c{"🔀 <em></em><br/>isChangedDecision31_myRule_26_X5th_Reminder_Sent_c"}:::decisions
    click isChangedDecision31_myRule_26_X5th_Reminder_Sent_c "#ischangeddecision31_myrule_26_x5th_reminder_sent_c" "1442826015"
    
    isChangedDecision32_myRule_26_X6th_Reminder_Sent_c{"🔀 <em></em><br/>isChangedDecision32_myRule_26_X6th_Reminder_Sent_c"}:::decisions
    click isChangedDecision32_myRule_26_X6th_Reminder_Sent_c "#ischangeddecision32_myrule_26_x6th_reminder_sent_c" "2089437177"
    
    isChangedDecision33_myRule_26_X7th_Reminder_Sent_c{"🔀 <em></em><br/>isChangedDecision33_myRule_26_X7th_Reminder_Sent_c"}:::decisions
    click isChangedDecision33_myRule_26_X7th_Reminder_Sent_c "#ischangeddecision33_myrule_26_x7th_reminder_sent_c" "4071783199"
    
    isChangedDecision34_myRule_26_X8th_Reminder_Sent_c{"🔀 <em></em><br/>isChangedDecision34_myRule_26_X8th_Reminder_Sent_c"}:::decisions
    click isChangedDecision34_myRule_26_X8th_Reminder_Sent_c "#ischangeddecision34_myrule_26_x8th_reminder_sent_c" "3382655377"
    
    isChangedDecision37_myRule_36_Invitation_to_File_Sent_c{"🔀 <em></em><br/>isChangedDecision37_myRule_36_Invitation_to_File_Sent_c"}:::decisions
    click isChangedDecision37_myRule_36_Invitation_to_File_Sent_c "#ischangeddecision37_myrule_36_invitation_to_file_sent_c" "966239702"
    
    isChangedDecision40_myRule_39_X1st_Reminder_Sent_c{"🔀 <em></em><br/>isChangedDecision40_myRule_39_X1st_Reminder_Sent_c"}:::decisions
    click isChangedDecision40_myRule_39_X1st_Reminder_Sent_c "#ischangeddecision40_myrule_39_x1st_reminder_sent_c" "1970887246"
    
    isChangedDecision41_myRule_39_X2nd_Reminder_Sent_c{"🔀 <em></em><br/>isChangedDecision41_myRule_39_X2nd_Reminder_Sent_c"}:::decisions
    click isChangedDecision41_myRule_39_X2nd_Reminder_Sent_c "#ischangeddecision41_myrule_39_x2nd_reminder_sent_c" "3557820275"
    
    isChangedDecision42_myRule_39_X3rd_Reminder_Sent_c{"🔀 <em></em><br/>isChangedDecision42_myRule_39_X3rd_Reminder_Sent_c"}:::decisions
    click isChangedDecision42_myRule_39_X3rd_Reminder_Sent_c "#ischangeddecision42_myrule_39_x3rd_reminder_sent_c" "300762591"
    
    isChangedDecision43_myRule_39_X4th_Reminder_Sent_c{"🔀 <em></em><br/>isChangedDecision43_myRule_39_X4th_Reminder_Sent_c"}:::decisions
    click isChangedDecision43_myRule_39_X4th_Reminder_Sent_c "#ischangeddecision43_myrule_39_x4th_reminder_sent_c" "584574837"
    
    isChangedDecision44_myRule_39_X5th_Reminder_Sent_c{"🔀 <em></em><br/>isChangedDecision44_myRule_39_X5th_Reminder_Sent_c"}:::decisions
    click isChangedDecision44_myRule_39_X5th_Reminder_Sent_c "#ischangeddecision44_myrule_39_x5th_reminder_sent_c" "491514510"
    
    isChangedDecision45_myRule_39_X6th_Reminder_Sent_c{"🔀 <em></em><br/>isChangedDecision45_myRule_39_X6th_Reminder_Sent_c"}:::decisions
    click isChangedDecision45_myRule_39_X6th_Reminder_Sent_c "#ischangeddecision45_myrule_39_x6th_reminder_sent_c" "2774295065"
    
    isChangedDecision46_myRule_39_X7th_Reminder_Sent_c{"🔀 <em></em><br/>isChangedDecision46_myRule_39_X7th_Reminder_Sent_c"}:::decisions
    click isChangedDecision46_myRule_39_X7th_Reminder_Sent_c "#ischangeddecision46_myrule_39_x7th_reminder_sent_c" "2979424027"
    
    isChangedDecision47_myRule_39_X8th_Reminder_Sent_c{"🔀 <em></em><br/>isChangedDecision47_myRule_39_X8th_Reminder_Sent_c"}:::decisions
    click isChangedDecision47_myRule_39_X8th_Reminder_Sent_c "#ischangeddecision47_myrule_39_x8th_reminder_sent_c" "2757277911"
    
    isChangedDecision5_myRule_4_X1st_Reminder_Sent_c{"🔀 <em></em><br/>isChangedDecision5_myRule_4_X1st_Reminder_Sent_c"}:::decisions
    click isChangedDecision5_myRule_4_X1st_Reminder_Sent_c "#ischangeddecision5_myrule_4_x1st_reminder_sent_c" "3185943047"
    
    isChangedDecision6_myRule_4_X2nd_Reminder_Sent_c{"🔀 <em></em><br/>isChangedDecision6_myRule_4_X2nd_Reminder_Sent_c"}:::decisions
    click isChangedDecision6_myRule_4_X2nd_Reminder_Sent_c "#ischangeddecision6_myrule_4_x2nd_reminder_sent_c" "2910419417"
    
    isChangedDecision7_myRule_4_X3rd_Reminder_Sent_c{"🔀 <em></em><br/>isChangedDecision7_myRule_4_X3rd_Reminder_Sent_c"}:::decisions
    click isChangedDecision7_myRule_4_X3rd_Reminder_Sent_c "#ischangeddecision7_myrule_4_x3rd_reminder_sent_c" "3263200541"
    
    isChangedDecision8_myRule_4_X4th_Reminder_Sent_c{"🔀 <em></em><br/>isChangedDecision8_myRule_4_X4th_Reminder_Sent_c"}:::decisions
    click isChangedDecision8_myRule_4_X4th_Reminder_Sent_c "#ischangeddecision8_myrule_4_x4th_reminder_sent_c" "1842302858"
    
    isChangedDecision9_myRule_4_X5th_Reminder_Sent_c{"🔀 <em></em><br/>isChangedDecision9_myRule_4_X5th_Reminder_Sent_c"}:::decisions
    click isChangedDecision9_myRule_4_X5th_Reminder_Sent_c "#ischangeddecision9_myrule_4_x5th_reminder_sent_c" "3355983756"
    
    myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
    click myDecision "#mydecision" "2036794476"
    
    myDecision13{"🔀 <em></em><br/>myDecision13"}:::decisions
    click myDecision13 "#mydecision13" "2037460080"
    
    myDecision16{"🔀 <em></em><br/>myDecision16"}:::decisions
    click myDecision16 "#mydecision16" "1999516866"
    
    myDecision19{"🔀 <em></em><br/>myDecision19"}:::decisions
    click myDecision19 "#mydecision19" "3412452259"
    
    myDecision22{"🔀 <em></em><br/>myDecision22"}:::decisions
    click myDecision22 "#mydecision22" "2233447472"
    
    myDecision25{"🔀 <em></em><br/>myDecision25"}:::decisions
    click myDecision25 "#mydecision25" "3078423582"
    
    myDecision3{"🔀 <em></em><br/>myDecision3"}:::decisions
    click myDecision3 "#mydecision3" "4255545122"
    
    myDecision35{"🔀 <em></em><br/>myDecision35"}:::decisions
    click myDecision35 "#mydecision35" "3174514524"
    
    myDecision38{"🔀 <em></em><br/>myDecision38"}:::decisions
    click myDecision38 "#mydecision38" "345607871"
    
    myRule_14_A2[("➕ <em></em><br/>Email Copy")]:::recordCreates
    click myRule_14_A2 "#myrule_14_a2" "1694741892"
    
    myRule_17_A2[("➕ <em></em><br/>Email Copy")]:::recordCreates
    click myRule_17_A2 "#myrule_17_a2" "980575250"
    
    myRule_1_A1[("➕ <em></em><br/>Email Copy")]:::recordCreates
    click myRule_1_A1 "#myrule_1_a1" "867686703"
    
    myRule_23_A3[("➕ <em></em><br/>Email Copy")]:::recordCreates
    click myRule_23_A3 "#myrule_23_a3" "2969209577"
    
    myRule_26_A3[("➕ <em></em><br/>Email Copy")]:::recordCreates
    click myRule_26_A3 "#myrule_26_a3" "476594179"
    
    myRule_36_A3[("➕ <em></em><br/>Email Copy")]:::recordCreates
    click myRule_36_A3 "#myrule_36_a3" "4007489794"
    
    myRule_39_A3[("➕ <em></em><br/>Email Copy")]:::recordCreates
    click myRule_39_A3 "#myrule_39_a3" "804040177"
    
    myRule_4_A2[("➕ <em></em><br/>Email Copy")]:::recordCreates
    click myRule_4_A2 "#myrule_4_a2" "3687877911"
    
    myRule_1_A3[("🛠️ <em></em><br/>Status Update")]:::recordUpdates
    click myRule_1_A3 "#myrule_1_a3" "1901265142"
    
    myRule_23_A2[("🛠️ <em></em><br/>Status Update")]:::recordUpdates
    click myRule_23_A2 "#myrule_23_a2" "1873074907"
    
    myRule_26_A1[("🛠️ <em></em><br/>Status Update")]:::recordUpdates
    click myRule_26_A1 "#myrule_26_a1" "3341591736"
    
    myRule_36_A1[("🛠️ <em></em><br/>Status Update")]:::recordUpdates
    click myRule_36_A1 "#myrule_36_a1" "680047332"
    
    myRule_39_A1[("🛠️ <em></em><br/>Status Update")]:::recordUpdates
    click myRule_39_A1 "#myrule_39_a1" "2481289725"
    
    myRule_4_A1[("🛠️ <em></em><br/>Status Update")]:::recordUpdates
    click myRule_4_A1 "#myrule_4_a1" "2944050894"
    
    myRule_14_A1 --> myRule_14_A2
    myRule_17_A1 --> myRule_17_A2
    myRule_1_A2 --> myRule_1_A3
    myRule_20_A1 --> END_myRule_20_A1
    myRule_23_A1 --> myRule_23_A2
    myRule_26_A2 --> myRule_26_A3
    myRule_36_A2 --> myRule_36_A3
    myRule_39_A2 --> myRule_39_A3
    myRule_4_A3 --> END_myRule_4_A3
    isChangedDecision10_myRule_4_X6th_Reminder_Sent_c --> |"isChangedRule_10_myRule_4_X6th_Reminder_Sent_c"| isChangedDecision11_myRule_4_X7th_Reminder_Sent_c
    isChangedDecision10_myRule_4_X6th_Reminder_Sent_c --> |"default"| isChangedDecision11_myRule_4_X7th_Reminder_Sent_c
    isChangedDecision11_myRule_4_X7th_Reminder_Sent_c --> |"isChangedRule_11_myRule_4_X7th_Reminder_Sent_c"| isChangedDecision12_myRule_4_X8th_Reminder_Sent_c
    isChangedDecision11_myRule_4_X7th_Reminder_Sent_c --> |"default"| isChangedDecision12_myRule_4_X8th_Reminder_Sent_c
    isChangedDecision12_myRule_4_X8th_Reminder_Sent_c --> |"isChangedRule_12_myRule_4_X8th_Reminder_Sent_c"| isChangedDecision15_myRule_14_Filing_Complete_c
    isChangedDecision12_myRule_4_X8th_Reminder_Sent_c --> |"default"| isChangedDecision15_myRule_14_Filing_Complete_c
    isChangedDecision15_myRule_14_Filing_Complete_c --> |"isChangedRule_15_myRule_14_Filing_Complete_c"| isChangedDecision18_myRule_17_SAR_1_Date_c
    isChangedDecision15_myRule_14_Filing_Complete_c --> |"default"| isChangedDecision18_myRule_17_SAR_1_Date_c
    isChangedDecision18_myRule_17_SAR_1_Date_c --> |"isChangedRule_18_myRule_17_SAR_1_Date_c"| isChangedDecision21_myRule_20_SAR_2_Date_c
    isChangedDecision18_myRule_17_SAR_1_Date_c --> |"default"| isChangedDecision21_myRule_20_SAR_2_Date_c
    isChangedDecision21_myRule_20_SAR_2_Date_c --> |"isChangedRule_21_myRule_20_SAR_2_Date_c"| isChangedDecision24_myRule_23_Invitation_to_File_Sent_c
    isChangedDecision21_myRule_20_SAR_2_Date_c --> |"default"| isChangedDecision24_myRule_23_Invitation_to_File_Sent_c
    isChangedDecision24_myRule_23_Invitation_to_File_Sent_c --> |"isChangedRule_24_myRule_23_Invitation_to_File_Sent_c"| isChangedDecision27_myRule_26_X1st_Reminder_Sent_c
    isChangedDecision24_myRule_23_Invitation_to_File_Sent_c --> |"default"| isChangedDecision27_myRule_26_X1st_Reminder_Sent_c
    isChangedDecision27_myRule_26_X1st_Reminder_Sent_c --> |"isChangedRule_27_myRule_26_X1st_Reminder_Sent_c"| isChangedDecision28_myRule_26_X2nd_Reminder_Sent_c
    isChangedDecision27_myRule_26_X1st_Reminder_Sent_c --> |"default"| isChangedDecision28_myRule_26_X2nd_Reminder_Sent_c
    isChangedDecision28_myRule_26_X2nd_Reminder_Sent_c --> |"isChangedRule_28_myRule_26_X2nd_Reminder_Sent_c"| isChangedDecision29_myRule_26_X3rd_Reminder_Sent_c
    isChangedDecision28_myRule_26_X2nd_Reminder_Sent_c --> |"default"| isChangedDecision29_myRule_26_X3rd_Reminder_Sent_c
    isChangedDecision29_myRule_26_X3rd_Reminder_Sent_c --> |"isChangedRule_29_myRule_26_X3rd_Reminder_Sent_c"| isChangedDecision30_myRule_26_X4th_Reminder_Sent_c
    isChangedDecision29_myRule_26_X3rd_Reminder_Sent_c --> |"default"| isChangedDecision30_myRule_26_X4th_Reminder_Sent_c
    isChangedDecision2_myRule_1_Invitation_to_File_Sent_c --> |"isChangedRule_2_myRule_1_Invitation_to_File_Sent_c"| isChangedDecision5_myRule_4_X1st_Reminder_Sent_c
    isChangedDecision2_myRule_1_Invitation_to_File_Sent_c --> |"default"| isChangedDecision5_myRule_4_X1st_Reminder_Sent_c
    isChangedDecision30_myRule_26_X4th_Reminder_Sent_c --> |"isChangedRule_30_myRule_26_X4th_Reminder_Sent_c"| isChangedDecision31_myRule_26_X5th_Reminder_Sent_c
    isChangedDecision30_myRule_26_X4th_Reminder_Sent_c --> |"default"| isChangedDecision31_myRule_26_X5th_Reminder_Sent_c
    isChangedDecision31_myRule_26_X5th_Reminder_Sent_c --> |"isChangedRule_31_myRule_26_X5th_Reminder_Sent_c"| isChangedDecision32_myRule_26_X6th_Reminder_Sent_c
    isChangedDecision31_myRule_26_X5th_Reminder_Sent_c --> |"default"| isChangedDecision32_myRule_26_X6th_Reminder_Sent_c
    isChangedDecision32_myRule_26_X6th_Reminder_Sent_c --> |"isChangedRule_32_myRule_26_X6th_Reminder_Sent_c"| isChangedDecision33_myRule_26_X7th_Reminder_Sent_c
    isChangedDecision32_myRule_26_X6th_Reminder_Sent_c --> |"default"| isChangedDecision33_myRule_26_X7th_Reminder_Sent_c
    isChangedDecision33_myRule_26_X7th_Reminder_Sent_c --> |"isChangedRule_33_myRule_26_X7th_Reminder_Sent_c"| isChangedDecision34_myRule_26_X8th_Reminder_Sent_c
    isChangedDecision33_myRule_26_X7th_Reminder_Sent_c --> |"default"| isChangedDecision34_myRule_26_X8th_Reminder_Sent_c
    isChangedDecision34_myRule_26_X8th_Reminder_Sent_c --> |"isChangedRule_34_myRule_26_X8th_Reminder_Sent_c"| isChangedDecision37_myRule_36_Invitation_to_File_Sent_c
    isChangedDecision34_myRule_26_X8th_Reminder_Sent_c --> |"default"| isChangedDecision37_myRule_36_Invitation_to_File_Sent_c
    isChangedDecision37_myRule_36_Invitation_to_File_Sent_c --> |"isChangedRule_37_myRule_36_Invitation_to_File_Sent_c"| isChangedDecision40_myRule_39_X1st_Reminder_Sent_c
    isChangedDecision37_myRule_36_Invitation_to_File_Sent_c --> |"default"| isChangedDecision40_myRule_39_X1st_Reminder_Sent_c
    isChangedDecision40_myRule_39_X1st_Reminder_Sent_c --> |"isChangedRule_40_myRule_39_X1st_Reminder_Sent_c"| isChangedDecision41_myRule_39_X2nd_Reminder_Sent_c
    isChangedDecision40_myRule_39_X1st_Reminder_Sent_c --> |"default"| isChangedDecision41_myRule_39_X2nd_Reminder_Sent_c
    isChangedDecision41_myRule_39_X2nd_Reminder_Sent_c --> |"isChangedRule_41_myRule_39_X2nd_Reminder_Sent_c"| isChangedDecision42_myRule_39_X3rd_Reminder_Sent_c
    isChangedDecision41_myRule_39_X2nd_Reminder_Sent_c --> |"default"| isChangedDecision42_myRule_39_X3rd_Reminder_Sent_c
    isChangedDecision42_myRule_39_X3rd_Reminder_Sent_c --> |"isChangedRule_42_myRule_39_X3rd_Reminder_Sent_c"| isChangedDecision43_myRule_39_X4th_Reminder_Sent_c
    isChangedDecision42_myRule_39_X3rd_Reminder_Sent_c --> |"default"| isChangedDecision43_myRule_39_X4th_Reminder_Sent_c
    isChangedDecision43_myRule_39_X4th_Reminder_Sent_c --> |"isChangedRule_43_myRule_39_X4th_Reminder_Sent_c"| isChangedDecision44_myRule_39_X5th_Reminder_Sent_c
    isChangedDecision43_myRule_39_X4th_Reminder_Sent_c --> |"default"| isChangedDecision44_myRule_39_X5th_Reminder_Sent_c
    isChangedDecision44_myRule_39_X5th_Reminder_Sent_c --> |"isChangedRule_44_myRule_39_X5th_Reminder_Sent_c"| isChangedDecision45_myRule_39_X6th_Reminder_Sent_c
    isChangedDecision44_myRule_39_X5th_Reminder_Sent_c --> |"default"| isChangedDecision45_myRule_39_X6th_Reminder_Sent_c
    isChangedDecision45_myRule_39_X6th_Reminder_Sent_c --> |"isChangedRule_45_myRule_39_X6th_Reminder_Sent_c"| isChangedDecision46_myRule_39_X7th_Reminder_Sent_c
    isChangedDecision45_myRule_39_X6th_Reminder_Sent_c --> |"default"| isChangedDecision46_myRule_39_X7th_Reminder_Sent_c
    isChangedDecision46_myRule_39_X7th_Reminder_Sent_c --> |"isChangedRule_46_myRule_39_X7th_Reminder_Sent_c"| isChangedDecision47_myRule_39_X8th_Reminder_Sent_c
    isChangedDecision46_myRule_39_X7th_Reminder_Sent_c --> |"default"| isChangedDecision47_myRule_39_X8th_Reminder_Sent_c
    isChangedDecision47_myRule_39_X8th_Reminder_Sent_c --> |"isChangedRule_47_myRule_39_X8th_Reminder_Sent_c"| myDecision
    isChangedDecision47_myRule_39_X8th_Reminder_Sent_c --> |"default"| myDecision
    isChangedDecision5_myRule_4_X1st_Reminder_Sent_c --> |"isChangedRule_5_myRule_4_X1st_Reminder_Sent_c"| isChangedDecision6_myRule_4_X2nd_Reminder_Sent_c
    isChangedDecision5_myRule_4_X1st_Reminder_Sent_c --> |"default"| isChangedDecision6_myRule_4_X2nd_Reminder_Sent_c
    isChangedDecision6_myRule_4_X2nd_Reminder_Sent_c --> |"isChangedRule_6_myRule_4_X2nd_Reminder_Sent_c"| isChangedDecision7_myRule_4_X3rd_Reminder_Sent_c
    isChangedDecision6_myRule_4_X2nd_Reminder_Sent_c --> |"default"| isChangedDecision7_myRule_4_X3rd_Reminder_Sent_c
    isChangedDecision7_myRule_4_X3rd_Reminder_Sent_c --> |"isChangedRule_7_myRule_4_X3rd_Reminder_Sent_c"| isChangedDecision8_myRule_4_X4th_Reminder_Sent_c
    isChangedDecision7_myRule_4_X3rd_Reminder_Sent_c --> |"default"| isChangedDecision8_myRule_4_X4th_Reminder_Sent_c
    isChangedDecision8_myRule_4_X4th_Reminder_Sent_c --> |"isChangedRule_8_myRule_4_X4th_Reminder_Sent_c"| isChangedDecision9_myRule_4_X5th_Reminder_Sent_c
    isChangedDecision8_myRule_4_X4th_Reminder_Sent_c --> |"default"| isChangedDecision9_myRule_4_X5th_Reminder_Sent_c
    isChangedDecision9_myRule_4_X5th_Reminder_Sent_c --> |"isChangedRule_9_myRule_4_X5th_Reminder_Sent_c"| isChangedDecision10_myRule_4_X6th_Reminder_Sent_c
    isChangedDecision9_myRule_4_X5th_Reminder_Sent_c --> |"default"| isChangedDecision10_myRule_4_X6th_Reminder_Sent_c
    myDecision --> |"Prior 5500 | Invitation to File"| myRule_1_A1
    myDecision --> |"default"| myDecision3
    myDecision13 --> |"Prior 5500 | Confirmation"| myRule_14_A1
    myDecision13 --> |"default"| myDecision16
    myDecision16 --> |"SAR | Email 1"| myRule_17_A1
    myDecision16 --> |"default"| myDecision19
    myDecision19 --> |"SAR | Email 2"| myRule_20_A1
    myDecision19 --> |"default"| myDecision22
    myDecision22 --> |"Final 5500 | Invitation to File"| myRule_23_A1
    myDecision22 --> |"default"| myDecision25
    myDecision25 --> |"Final 5500 | Reminder to File"| myRule_26_A1
    myDecision25 --> |"default"| myDecision35
    myDecision3 --> |"Prior 5500 | Reminder"| myRule_4_A1
    myDecision3 --> |"default"| myDecision13
    myDecision35 --> |"Prior + Final 5500 | Invite to File"| myRule_36_A1
    myDecision35 --> |"default"| myDecision38
    myDecision38 --> |"Prior + Final 5500 | Remind to File"| myRule_39_A1
    myDecision38 --> |"default"| END_myDecision38
    myRule_14_A2 --> END_myRule_14_A2
    myRule_17_A2 --> END_myRule_17_A2
    myRule_1_A1 --> myRule_1_A2
    myRule_23_A3 --> END_myRule_23_A3
    myRule_26_A3 --> END_myRule_26_A3
    myRule_36_A3 --> END_myRule_36_A3
    myRule_39_A3 --> END_myRule_39_A3
    myRule_4_A2 --> myRule_4_A3
    myRule_1_A3 --> END_myRule_1_A3
    myRule_23_A2 --> myRule_23_A3
    myRule_26_A1 --> myRule_26_A2
    myRule_36_A1 --> myRule_36_A2
    myRule_39_A1 --> myRule_39_A2
    myRule_4_A1 --> myRule_4_A2
    END_myRule_20_A1(( END )):::endClass
    END_myRule_4_A3(( END )):::endClass
    END_myDecision38(( END )):::endClass
    END_myRule_14_A2(( END )):::endClass
    END_myRule_17_A2(( END )):::endClass
    END_myRule_23_A3(( END )):::endClass
    END_myRule_26_A3(( END )):::endClass
    END_myRule_36_A3(( END )):::endClass
    END_myRule_39_A3(( END )):::endClass
    END_myRule_1_A3(( END )):::endClass
    
    
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
    |Label|Compliance | Form 5500 Alerts|
    |Status|⚠️ Draft|
    |Description|Process running Form 5500 notification emails|
    |Interview Label|Compliance_Form_5500_Alerts-35_InterviewLabel|
    |Start Element Reference|[isChangedDecision2_myRule_1_Invitation_to_File_Sent_c](#ischangeddecision2_myrule_1_invitation_to_file_sent_c)|
    | Object Type (PM)|Compliance__c|
    | Object Variable (PM)|myVariable_current|
    | Old Object Variable (PM)|myVariable_old|
    | Trigger Type (PM)|onAllChanges|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |myVariable_current|SObject|⬜|✅|✅|Compliance__c|<!-- -->|
    |myVariable_old|SObject|⬜|✅|⬜|Compliance__c|<!-- -->|
    
    
    ## Flow Nodes Details
    
    ### myRule_14_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Prior 5500 Filing Confirm|
    |Action Type|Email Alert|
    |Action Name|Compliance__c.Compliance_5500_Prior_Filing_Confirmation|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Compliance__c.Compliance_5500_Prior_Filing_Confirmation|
    |Email Alert Selection (PM)|Compliance_5500_Prior_Filing_Confirmation|
    | SObject Row Id (input)|myVariable_current.Id|
    |Connector|[myRule_14_A2](#myrule_14_a2)|
    
    
    ### myRule_17_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|SAR | Send Email #1|
    |Action Type|Email Alert|
    |Action Name|Compliance__c.Compliance_SAR|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Compliance__c.Compliance_SAR|
    |Email Alert Selection (PM)|Compliance_SAR|
    | SObject Row Id (input)|myVariable_current.Id|
    |Connector|[myRule_17_A2](#myrule_17_a2)|
    
    
    ### myRule_1_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Prior 5500 - Invite to File|
    |Action Type|Email Alert|
    |Action Name|Compliance__c.Compliance_5500_Prior_Invitation_to_File|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Compliance__c.Compliance_5500_Prior_Invitation_to_File|
    |Email Alert Selection (PM)|Compliance_5500_Prior_Invitation_to_File|
    | SObject Row Id (input)|myVariable_current.Id|
    |Connector|[myRule_1_A3](#myrule_1_a3)|
    
    
    ### myRule_20_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|SAR | Send Email #2|
    |Action Type|Email Alert|
    |Action Name|Compliance__c.Compliance_SAR2|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Compliance__c.Compliance_SAR2|
    |Email Alert Selection (PM)|Compliance_SAR2|
    | SObject Row Id (input)|myVariable_current.Id|
    
    
    ### myRule_23_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Final 5500 Invite to File|
    |Action Type|Email Alert|
    |Action Name|Compliance__c.Compliance_5500_Final_Invitation_to_File|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Compliance__c.Compliance_5500_Final_Invitation_to_File|
    |Email Alert Selection (PM)|Compliance_5500_Final_Invitation_to_File|
    | SObject Row Id (input)|myVariable_current.Id|
    |Connector|[myRule_23_A2](#myrule_23_a2)|
    
    
    ### myRule_26_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Final 5500 Remind File|
    |Action Type|Email Alert|
    |Action Name|Compliance__c.Compliance_5500_Final_Reminder_to_File|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Compliance__c.Compliance_5500_Final_Reminder_to_File|
    |Email Alert Selection (PM)|Compliance_5500_Final_Reminder_to_File|
    | SObject Row Id (input)|myVariable_current.Id|
    |Connector|[myRule_26_A3](#myrule_26_a3)|
    
    
    ### myRule_36_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Prior+Final 5500 Invite|
    |Action Type|Email Alert|
    |Action Name|Compliance__c.Compliance_5500_Prior_Final_Invite_to_File|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Compliance__c.Compliance_5500_Prior_Final_Invite_to_File|
    |Email Alert Selection (PM)|Compliance_5500_Prior_Final_Invite_to_File|
    | SObject Row Id (input)|myVariable_current.Id|
    |Connector|[myRule_36_A3](#myrule_36_a3)|
    
    
    ### myRule_39_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Prior+Final 5500 Remind|
    |Action Type|Email Alert|
    |Action Name|Compliance__c.Compliance_5500_Prior_Final_Reminder_to_File|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Compliance__c.Compliance_5500_Prior_Final_Reminder_to_File|
    |Email Alert Selection (PM)|Compliance_5500_Prior_Final_Reminder_to_File|
    | SObject Row Id (input)|myVariable_current.Id|
    |Connector|[myRule_39_A3](#myrule_39_a3)|
    
    
    ### myRule_4_A3
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Prior 5500 Reminder to File|
    |Action Type|Email Alert|
    |Action Name|Compliance__c.Compliance_5500_Prior_Reminder_to_File|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Compliance__c.Compliance_5500_Prior_Reminder_to_File|
    |Email Alert Selection (PM)|Compliance_5500_Prior_Reminder_to_File|
    | SObject Row Id (input)|myVariable_current.Id|
    
    
    ### isChangedDecision10_myRule_4_X6th_Reminder_Sent_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision10_myRule_4_X6th_Reminder_Sent_c](#ischangeddecision10_myrule_4_x6th_reminder_sent_c)|
    |Default Connector|[isChangedDecision11_myRule_4_X7th_Reminder_Sent_c](#ischangeddecision11_myrule_4_x7th_reminder_sent_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_10_myRule_4_X6th_Reminder_Sent_c (isChangedRule_10_myRule_4_X6th_Reminder_Sent_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision11_myRule_4_X7th_Reminder_Sent_c](#ischangeddecision11_myrule_4_x7th_reminder_sent_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.X6th_Reminder_Sent__c| Not Equal To|myVariable_current.X6th_Reminder_Sent__c|
    
    
    
    
    ### isChangedDecision11_myRule_4_X7th_Reminder_Sent_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision11_myRule_4_X7th_Reminder_Sent_c](#ischangeddecision11_myrule_4_x7th_reminder_sent_c)|
    |Default Connector|[isChangedDecision12_myRule_4_X8th_Reminder_Sent_c](#ischangeddecision12_myrule_4_x8th_reminder_sent_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_11_myRule_4_X7th_Reminder_Sent_c (isChangedRule_11_myRule_4_X7th_Reminder_Sent_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision12_myRule_4_X8th_Reminder_Sent_c](#ischangeddecision12_myrule_4_x8th_reminder_sent_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.X7th_Reminder_Sent__c| Not Equal To|myVariable_current.X7th_Reminder_Sent__c|
    
    
    
    
    ### isChangedDecision12_myRule_4_X8th_Reminder_Sent_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision12_myRule_4_X8th_Reminder_Sent_c](#ischangeddecision12_myrule_4_x8th_reminder_sent_c)|
    |Default Connector|[isChangedDecision15_myRule_14_Filing_Complete_c](#ischangeddecision15_myrule_14_filing_complete_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_12_myRule_4_X8th_Reminder_Sent_c (isChangedRule_12_myRule_4_X8th_Reminder_Sent_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision15_myRule_14_Filing_Complete_c](#ischangeddecision15_myrule_14_filing_complete_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.X8th_Reminder_Sent__c| Not Equal To|myVariable_current.X8th_Reminder_Sent__c|
    
    
    
    
    ### isChangedDecision15_myRule_14_Filing_Complete_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision15_myRule_14_Filing_Complete_c](#ischangeddecision15_myrule_14_filing_complete_c)|
    |Default Connector|[isChangedDecision18_myRule_17_SAR_1_Date_c](#ischangeddecision18_myrule_17_sar_1_date_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_15_myRule_14_Filing_Complete_c (isChangedRule_15_myRule_14_Filing_Complete_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision18_myRule_17_SAR_1_Date_c](#ischangeddecision18_myrule_17_sar_1_date_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Filing_Complete__c| Not Equal To|myVariable_current.Filing_Complete__c|
    
    
    
    
    ### isChangedDecision18_myRule_17_SAR_1_Date_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision18_myRule_17_SAR_1_Date_c](#ischangeddecision18_myrule_17_sar_1_date_c)|
    |Default Connector|[isChangedDecision21_myRule_20_SAR_2_Date_c](#ischangeddecision21_myrule_20_sar_2_date_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_18_myRule_17_SAR_1_Date_c (isChangedRule_18_myRule_17_SAR_1_Date_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision21_myRule_20_SAR_2_Date_c](#ischangeddecision21_myrule_20_sar_2_date_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.SAR_1_Date__c| Not Equal To|myVariable_current.SAR_1_Date__c|
    
    
    
    
    ### isChangedDecision21_myRule_20_SAR_2_Date_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision21_myRule_20_SAR_2_Date_c](#ischangeddecision21_myrule_20_sar_2_date_c)|
    |Default Connector|[isChangedDecision24_myRule_23_Invitation_to_File_Sent_c](#ischangeddecision24_myrule_23_invitation_to_file_sent_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_21_myRule_20_SAR_2_Date_c (isChangedRule_21_myRule_20_SAR_2_Date_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision24_myRule_23_Invitation_to_File_Sent_c](#ischangeddecision24_myrule_23_invitation_to_file_sent_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.SAR_2_Date__c| Not Equal To|myVariable_current.SAR_2_Date__c|
    
    
    
    
    ### isChangedDecision24_myRule_23_Invitation_to_File_Sent_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision24_myRule_23_Invitation_to_File_Sent_c](#ischangeddecision24_myrule_23_invitation_to_file_sent_c)|
    |Default Connector|[isChangedDecision27_myRule_26_X1st_Reminder_Sent_c](#ischangeddecision27_myrule_26_x1st_reminder_sent_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_24_myRule_23_Invitation_to_File_Sent_c (isChangedRule_24_myRule_23_Invitation_to_File_Sent_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision27_myRule_26_X1st_Reminder_Sent_c](#ischangeddecision27_myrule_26_x1st_reminder_sent_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Invitation_to_File_Sent__c| Not Equal To|myVariable_current.Invitation_to_File_Sent__c|
    
    
    
    
    ### isChangedDecision27_myRule_26_X1st_Reminder_Sent_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision27_myRule_26_X1st_Reminder_Sent_c](#ischangeddecision27_myrule_26_x1st_reminder_sent_c)|
    |Default Connector|[isChangedDecision28_myRule_26_X2nd_Reminder_Sent_c](#ischangeddecision28_myrule_26_x2nd_reminder_sent_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_27_myRule_26_X1st_Reminder_Sent_c (isChangedRule_27_myRule_26_X1st_Reminder_Sent_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision28_myRule_26_X2nd_Reminder_Sent_c](#ischangeddecision28_myrule_26_x2nd_reminder_sent_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.X1st_Reminder_Sent__c| Not Equal To|myVariable_current.X1st_Reminder_Sent__c|
    
    
    
    
    ### isChangedDecision28_myRule_26_X2nd_Reminder_Sent_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision28_myRule_26_X2nd_Reminder_Sent_c](#ischangeddecision28_myrule_26_x2nd_reminder_sent_c)|
    |Default Connector|[isChangedDecision29_myRule_26_X3rd_Reminder_Sent_c](#ischangeddecision29_myrule_26_x3rd_reminder_sent_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_28_myRule_26_X2nd_Reminder_Sent_c (isChangedRule_28_myRule_26_X2nd_Reminder_Sent_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision29_myRule_26_X3rd_Reminder_Sent_c](#ischangeddecision29_myrule_26_x3rd_reminder_sent_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.X2nd_Reminder_Sent__c| Not Equal To|myVariable_current.X2nd_Reminder_Sent__c|
    
    
    
    
    ### isChangedDecision29_myRule_26_X3rd_Reminder_Sent_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision29_myRule_26_X3rd_Reminder_Sent_c](#ischangeddecision29_myrule_26_x3rd_reminder_sent_c)|
    |Default Connector|[isChangedDecision30_myRule_26_X4th_Reminder_Sent_c](#ischangeddecision30_myrule_26_x4th_reminder_sent_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_29_myRule_26_X3rd_Reminder_Sent_c (isChangedRule_29_myRule_26_X3rd_Reminder_Sent_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision30_myRule_26_X4th_Reminder_Sent_c](#ischangeddecision30_myrule_26_x4th_reminder_sent_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.X3rd_Reminder_Sent__c| Not Equal To|myVariable_current.X3rd_Reminder_Sent__c|
    
    
    
    
    ### isChangedDecision2_myRule_1_Invitation_to_File_Sent_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision2_myRule_1_Invitation_to_File_Sent_c](#ischangeddecision2_myrule_1_invitation_to_file_sent_c)|
    |Default Connector|[isChangedDecision5_myRule_4_X1st_Reminder_Sent_c](#ischangeddecision5_myrule_4_x1st_reminder_sent_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_2_myRule_1_Invitation_to_File_Sent_c (isChangedRule_2_myRule_1_Invitation_to_File_Sent_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision5_myRule_4_X1st_Reminder_Sent_c](#ischangeddecision5_myrule_4_x1st_reminder_sent_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Invitation_to_File_Sent__c| Not Equal To|myVariable_current.Invitation_to_File_Sent__c|
    
    
    
    
    ### isChangedDecision30_myRule_26_X4th_Reminder_Sent_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision30_myRule_26_X4th_Reminder_Sent_c](#ischangeddecision30_myrule_26_x4th_reminder_sent_c)|
    |Default Connector|[isChangedDecision31_myRule_26_X5th_Reminder_Sent_c](#ischangeddecision31_myrule_26_x5th_reminder_sent_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_30_myRule_26_X4th_Reminder_Sent_c (isChangedRule_30_myRule_26_X4th_Reminder_Sent_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision31_myRule_26_X5th_Reminder_Sent_c](#ischangeddecision31_myrule_26_x5th_reminder_sent_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.X4th_Reminder_Sent__c| Not Equal To|myVariable_current.X4th_Reminder_Sent__c|
    
    
    
    
    ### isChangedDecision31_myRule_26_X5th_Reminder_Sent_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision31_myRule_26_X5th_Reminder_Sent_c](#ischangeddecision31_myrule_26_x5th_reminder_sent_c)|
    |Default Connector|[isChangedDecision32_myRule_26_X6th_Reminder_Sent_c](#ischangeddecision32_myrule_26_x6th_reminder_sent_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_31_myRule_26_X5th_Reminder_Sent_c (isChangedRule_31_myRule_26_X5th_Reminder_Sent_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision32_myRule_26_X6th_Reminder_Sent_c](#ischangeddecision32_myrule_26_x6th_reminder_sent_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.X5th_Reminder_Sent__c| Not Equal To|myVariable_current.X5th_Reminder_Sent__c|
    
    
    
    
    ### isChangedDecision32_myRule_26_X6th_Reminder_Sent_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision32_myRule_26_X6th_Reminder_Sent_c](#ischangeddecision32_myrule_26_x6th_reminder_sent_c)|
    |Default Connector|[isChangedDecision33_myRule_26_X7th_Reminder_Sent_c](#ischangeddecision33_myrule_26_x7th_reminder_sent_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_32_myRule_26_X6th_Reminder_Sent_c (isChangedRule_32_myRule_26_X6th_Reminder_Sent_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision33_myRule_26_X7th_Reminder_Sent_c](#ischangeddecision33_myrule_26_x7th_reminder_sent_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.X6th_Reminder_Sent__c| Not Equal To|myVariable_current.X6th_Reminder_Sent__c|
    
    
    
    
    ### isChangedDecision33_myRule_26_X7th_Reminder_Sent_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision33_myRule_26_X7th_Reminder_Sent_c](#ischangeddecision33_myrule_26_x7th_reminder_sent_c)|
    |Default Connector|[isChangedDecision34_myRule_26_X8th_Reminder_Sent_c](#ischangeddecision34_myrule_26_x8th_reminder_sent_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_33_myRule_26_X7th_Reminder_Sent_c (isChangedRule_33_myRule_26_X7th_Reminder_Sent_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision34_myRule_26_X8th_Reminder_Sent_c](#ischangeddecision34_myrule_26_x8th_reminder_sent_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.X7th_Reminder_Sent__c| Not Equal To|myVariable_current.X7th_Reminder_Sent__c|
    
    
    
    
    ### isChangedDecision34_myRule_26_X8th_Reminder_Sent_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision34_myRule_26_X8th_Reminder_Sent_c](#ischangeddecision34_myrule_26_x8th_reminder_sent_c)|
    |Default Connector|[isChangedDecision37_myRule_36_Invitation_to_File_Sent_c](#ischangeddecision37_myrule_36_invitation_to_file_sent_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_34_myRule_26_X8th_Reminder_Sent_c (isChangedRule_34_myRule_26_X8th_Reminder_Sent_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision37_myRule_36_Invitation_to_File_Sent_c](#ischangeddecision37_myrule_36_invitation_to_file_sent_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.X8th_Reminder_Sent__c| Not Equal To|myVariable_current.X8th_Reminder_Sent__c|
    
    
    
    
    ### isChangedDecision37_myRule_36_Invitation_to_File_Sent_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision37_myRule_36_Invitation_to_File_Sent_c](#ischangeddecision37_myrule_36_invitation_to_file_sent_c)|
    |Default Connector|[isChangedDecision40_myRule_39_X1st_Reminder_Sent_c](#ischangeddecision40_myrule_39_x1st_reminder_sent_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_37_myRule_36_Invitation_to_File_Sent_c (isChangedRule_37_myRule_36_Invitation_to_File_Sent_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision40_myRule_39_X1st_Reminder_Sent_c](#ischangeddecision40_myrule_39_x1st_reminder_sent_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Invitation_to_File_Sent__c| Not Equal To|myVariable_current.Invitation_to_File_Sent__c|
    
    
    
    
    ### isChangedDecision40_myRule_39_X1st_Reminder_Sent_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision40_myRule_39_X1st_Reminder_Sent_c](#ischangeddecision40_myrule_39_x1st_reminder_sent_c)|
    |Default Connector|[isChangedDecision41_myRule_39_X2nd_Reminder_Sent_c](#ischangeddecision41_myrule_39_x2nd_reminder_sent_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_40_myRule_39_X1st_Reminder_Sent_c (isChangedRule_40_myRule_39_X1st_Reminder_Sent_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision41_myRule_39_X2nd_Reminder_Sent_c](#ischangeddecision41_myrule_39_x2nd_reminder_sent_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.X1st_Reminder_Sent__c| Not Equal To|myVariable_current.X1st_Reminder_Sent__c|
    
    
    
    
    ### isChangedDecision41_myRule_39_X2nd_Reminder_Sent_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision41_myRule_39_X2nd_Reminder_Sent_c](#ischangeddecision41_myrule_39_x2nd_reminder_sent_c)|
    |Default Connector|[isChangedDecision42_myRule_39_X3rd_Reminder_Sent_c](#ischangeddecision42_myrule_39_x3rd_reminder_sent_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_41_myRule_39_X2nd_Reminder_Sent_c (isChangedRule_41_myRule_39_X2nd_Reminder_Sent_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision42_myRule_39_X3rd_Reminder_Sent_c](#ischangeddecision42_myrule_39_x3rd_reminder_sent_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.X2nd_Reminder_Sent__c| Not Equal To|myVariable_current.X2nd_Reminder_Sent__c|
    
    
    
    
    ### isChangedDecision42_myRule_39_X3rd_Reminder_Sent_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision42_myRule_39_X3rd_Reminder_Sent_c](#ischangeddecision42_myrule_39_x3rd_reminder_sent_c)|
    |Default Connector|[isChangedDecision43_myRule_39_X4th_Reminder_Sent_c](#ischangeddecision43_myrule_39_x4th_reminder_sent_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_42_myRule_39_X3rd_Reminder_Sent_c (isChangedRule_42_myRule_39_X3rd_Reminder_Sent_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision43_myRule_39_X4th_Reminder_Sent_c](#ischangeddecision43_myrule_39_x4th_reminder_sent_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.X3rd_Reminder_Sent__c| Not Equal To|myVariable_current.X3rd_Reminder_Sent__c|
    
    
    
    
    ### isChangedDecision43_myRule_39_X4th_Reminder_Sent_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision43_myRule_39_X4th_Reminder_Sent_c](#ischangeddecision43_myrule_39_x4th_reminder_sent_c)|
    |Default Connector|[isChangedDecision44_myRule_39_X5th_Reminder_Sent_c](#ischangeddecision44_myrule_39_x5th_reminder_sent_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_43_myRule_39_X4th_Reminder_Sent_c (isChangedRule_43_myRule_39_X4th_Reminder_Sent_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision44_myRule_39_X5th_Reminder_Sent_c](#ischangeddecision44_myrule_39_x5th_reminder_sent_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.X4th_Reminder_Sent__c| Not Equal To|myVariable_current.X4th_Reminder_Sent__c|
    
    
    
    
    ### isChangedDecision44_myRule_39_X5th_Reminder_Sent_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision44_myRule_39_X5th_Reminder_Sent_c](#ischangeddecision44_myrule_39_x5th_reminder_sent_c)|
    |Default Connector|[isChangedDecision45_myRule_39_X6th_Reminder_Sent_c](#ischangeddecision45_myrule_39_x6th_reminder_sent_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_44_myRule_39_X5th_Reminder_Sent_c (isChangedRule_44_myRule_39_X5th_Reminder_Sent_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision45_myRule_39_X6th_Reminder_Sent_c](#ischangeddecision45_myrule_39_x6th_reminder_sent_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.X5th_Reminder_Sent__c| Not Equal To|myVariable_current.X5th_Reminder_Sent__c|
    
    
    
    
    ### isChangedDecision45_myRule_39_X6th_Reminder_Sent_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision45_myRule_39_X6th_Reminder_Sent_c](#ischangeddecision45_myrule_39_x6th_reminder_sent_c)|
    |Default Connector|[isChangedDecision46_myRule_39_X7th_Reminder_Sent_c](#ischangeddecision46_myrule_39_x7th_reminder_sent_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_45_myRule_39_X6th_Reminder_Sent_c (isChangedRule_45_myRule_39_X6th_Reminder_Sent_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision46_myRule_39_X7th_Reminder_Sent_c](#ischangeddecision46_myrule_39_x7th_reminder_sent_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.X6th_Reminder_Sent__c| Not Equal To|myVariable_current.X6th_Reminder_Sent__c|
    
    
    
    
    ### isChangedDecision46_myRule_39_X7th_Reminder_Sent_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision46_myRule_39_X7th_Reminder_Sent_c](#ischangeddecision46_myrule_39_x7th_reminder_sent_c)|
    |Default Connector|[isChangedDecision47_myRule_39_X8th_Reminder_Sent_c](#ischangeddecision47_myrule_39_x8th_reminder_sent_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_46_myRule_39_X7th_Reminder_Sent_c (isChangedRule_46_myRule_39_X7th_Reminder_Sent_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision47_myRule_39_X8th_Reminder_Sent_c](#ischangeddecision47_myrule_39_x8th_reminder_sent_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.X7th_Reminder_Sent__c| Not Equal To|myVariable_current.X7th_Reminder_Sent__c|
    
    
    
    
    ### isChangedDecision47_myRule_39_X8th_Reminder_Sent_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision47_myRule_39_X8th_Reminder_Sent_c](#ischangeddecision47_myrule_39_x8th_reminder_sent_c)|
    |Default Connector|[myDecision](#mydecision)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_47_myRule_39_X8th_Reminder_Sent_c (isChangedRule_47_myRule_39_X8th_Reminder_Sent_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myDecision](#mydecision)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.X8th_Reminder_Sent__c| Not Equal To|myVariable_current.X8th_Reminder_Sent__c|
    
    
    
    
    ### isChangedDecision5_myRule_4_X1st_Reminder_Sent_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision5_myRule_4_X1st_Reminder_Sent_c](#ischangeddecision5_myrule_4_x1st_reminder_sent_c)|
    |Default Connector|[isChangedDecision6_myRule_4_X2nd_Reminder_Sent_c](#ischangeddecision6_myrule_4_x2nd_reminder_sent_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_5_myRule_4_X1st_Reminder_Sent_c (isChangedRule_5_myRule_4_X1st_Reminder_Sent_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision6_myRule_4_X2nd_Reminder_Sent_c](#ischangeddecision6_myrule_4_x2nd_reminder_sent_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.X1st_Reminder_Sent__c| Not Equal To|myVariable_current.X1st_Reminder_Sent__c|
    
    
    
    
    ### isChangedDecision6_myRule_4_X2nd_Reminder_Sent_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision6_myRule_4_X2nd_Reminder_Sent_c](#ischangeddecision6_myrule_4_x2nd_reminder_sent_c)|
    |Default Connector|[isChangedDecision7_myRule_4_X3rd_Reminder_Sent_c](#ischangeddecision7_myrule_4_x3rd_reminder_sent_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_6_myRule_4_X2nd_Reminder_Sent_c (isChangedRule_6_myRule_4_X2nd_Reminder_Sent_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision7_myRule_4_X3rd_Reminder_Sent_c](#ischangeddecision7_myrule_4_x3rd_reminder_sent_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.X2nd_Reminder_Sent__c| Not Equal To|myVariable_current.X2nd_Reminder_Sent__c|
    
    
    
    
    ### isChangedDecision7_myRule_4_X3rd_Reminder_Sent_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision7_myRule_4_X3rd_Reminder_Sent_c](#ischangeddecision7_myrule_4_x3rd_reminder_sent_c)|
    |Default Connector|[isChangedDecision8_myRule_4_X4th_Reminder_Sent_c](#ischangeddecision8_myrule_4_x4th_reminder_sent_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_7_myRule_4_X3rd_Reminder_Sent_c (isChangedRule_7_myRule_4_X3rd_Reminder_Sent_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision8_myRule_4_X4th_Reminder_Sent_c](#ischangeddecision8_myrule_4_x4th_reminder_sent_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.X3rd_Reminder_Sent__c| Not Equal To|myVariable_current.X3rd_Reminder_Sent__c|
    
    
    
    
    ### isChangedDecision8_myRule_4_X4th_Reminder_Sent_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision8_myRule_4_X4th_Reminder_Sent_c](#ischangeddecision8_myrule_4_x4th_reminder_sent_c)|
    |Default Connector|[isChangedDecision9_myRule_4_X5th_Reminder_Sent_c](#ischangeddecision9_myrule_4_x5th_reminder_sent_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_8_myRule_4_X4th_Reminder_Sent_c (isChangedRule_8_myRule_4_X4th_Reminder_Sent_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision9_myRule_4_X5th_Reminder_Sent_c](#ischangeddecision9_myrule_4_x5th_reminder_sent_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.X4th_Reminder_Sent__c| Not Equal To|myVariable_current.X4th_Reminder_Sent__c|
    
    
    
    
    ### isChangedDecision9_myRule_4_X5th_Reminder_Sent_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision9_myRule_4_X5th_Reminder_Sent_c](#ischangeddecision9_myrule_4_x5th_reminder_sent_c)|
    |Default Connector|[isChangedDecision10_myRule_4_X6th_Reminder_Sent_c](#ischangeddecision10_myrule_4_x6th_reminder_sent_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_9_myRule_4_X5th_Reminder_Sent_c (isChangedRule_9_myRule_4_X5th_Reminder_Sent_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision10_myRule_4_X6th_Reminder_Sent_c](#ischangeddecision10_myrule_4_x6th_reminder_sent_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.X5th_Reminder_Sent__c| Not Equal To|myVariable_current.X5th_Reminder_Sent__c|
    
    
    
    
    ### myDecision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision](#mydecision)|
    |Default Connector|[myDecision3](#mydecision3)|
    |Default Connector Label|default|
    |Index (PM)|numberValue: 0<br/>|
    
    
    #### Rule myRule_1 (Prior 5500 | Invitation to File)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_A1](#myrule_1_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.RecordTypeId| Equal To|01237000000N0lpAAC|
    |2|isChangedRule_2_myRule_1_Invitation_to_File_Sent_c| Equal To|✅|
    |3|myVariable_current.Invitation_to_File_Sent__c| Is Null|⬜|
    |4|myVariable_current.X5500_Situation__c| Equal To|Prior Year Only|
    
    
    
    
    ### myDecision13
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision13](#mydecision13)|
    |Default Connector|[myDecision16](#mydecision16)|
    |Default Connector Label|default|
    |Index (PM)|2|
    
    
    #### Rule myRule_14 (Prior 5500 | Confirmation)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_14_A1](#myrule_14_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.RecordTypeId| Equal To|01237000000N0lpAAC|
    |2|isChangedRule_15_myRule_14_Filing_Complete_c| Equal To|✅|
    |3|myVariable_current.Filing_Complete__c| Is Null|⬜|
    |4|myVariable_current.X5500_Situation__c| Equal To|Prior Year Only|
    
    
    
    
    ### myDecision16
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision16](#mydecision16)|
    |Default Connector|[myDecision19](#mydecision19)|
    |Default Connector Label|default|
    |Index (PM)|3|
    
    
    #### Rule myRule_17 (SAR | Email 1)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_17_A1](#myrule_17_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.RecordTypeId| Equal To|01237000000N0lpAAC|
    |2|isChangedRule_18_myRule_17_SAR_1_Date_c| Equal To|✅|
    |3|myVariable_current.SAR_1_Date__c| Is Null|⬜|
    
    
    
    
    ### myDecision19
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision19](#mydecision19)|
    |Default Connector|[myDecision22](#mydecision22)|
    |Default Connector Label|default|
    |Index (PM)|4|
    
    
    #### Rule myRule_20 (SAR | Email 2)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_20_A1](#myrule_20_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.RecordTypeId| Equal To|01237000000N0lpAAC|
    |2|isChangedRule_21_myRule_20_SAR_2_Date_c| Equal To|✅|
    |3|myVariable_current.SAR_2_Date__c| Is Null|⬜|
    
    
    
    
    ### myDecision22
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision22](#mydecision22)|
    |Default Connector|[myDecision25](#mydecision25)|
    |Default Connector Label|default|
    |Index (PM)|5|
    
    
    #### Rule myRule_23 (Final 5500 | Invitation to File)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_23_A1](#myrule_23_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.RecordTypeId| Equal To|01237000000N0lpAAC|
    |2|isChangedRule_24_myRule_23_Invitation_to_File_Sent_c| Equal To|✅|
    |3|myVariable_current.Invitation_to_File_Sent__c| Is Null|⬜|
    |4|myVariable_current.X5500_Situation__c| Equal To|Final 5500 Only|
    
    
    
    
    ### myDecision25
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision25](#mydecision25)|
    |Default Connector|[myDecision35](#mydecision35)|
    |Default Connector Label|default|
    |Index (PM)|6|
    
    
    #### Rule myRule_26 (Final 5500 | Reminder to File)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_26_A1](#myrule_26_a1)|
    |Condition Logic|1 AND 2 AND ((3 AND 4) OR (5 AND 6) OR (7 AND 8) OR (9 AND 10) OR (11 AND 12) OR (13 AND 14) OR (15 AND 16) OR (17 AND 18))|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.RecordTypeId| Equal To|01237000000N0lpAAC|
    |2|myVariable_current.X5500_Situation__c| Equal To|Final 5500 Only|
    |3|isChangedRule_27_myRule_26_X1st_Reminder_Sent_c| Equal To|✅|
    |4|myVariable_current.X1st_Reminder_Sent__c| Is Null|⬜|
    |5|isChangedRule_28_myRule_26_X2nd_Reminder_Sent_c| Equal To|✅|
    |6|myVariable_current.X2nd_Reminder_Sent__c| Is Null|⬜|
    |7|isChangedRule_29_myRule_26_X3rd_Reminder_Sent_c| Equal To|✅|
    |8|myVariable_current.X3rd_Reminder_Sent__c| Is Null|⬜|
    |9|isChangedRule_30_myRule_26_X4th_Reminder_Sent_c| Equal To|✅|
    |10|myVariable_current.X4th_Reminder_Sent__c| Is Null|⬜|
    |11|isChangedRule_31_myRule_26_X5th_Reminder_Sent_c| Equal To|✅|
    |12|myVariable_current.X5th_Reminder_Sent__c| Is Null|⬜|
    |13|isChangedRule_32_myRule_26_X6th_Reminder_Sent_c| Equal To|✅|
    |14|myVariable_current.X6th_Reminder_Sent__c| Is Null|⬜|
    |15|isChangedRule_33_myRule_26_X7th_Reminder_Sent_c| Equal To|✅|
    |16|myVariable_current.X7th_Reminder_Sent__c| Is Null|⬜|
    |17|isChangedRule_34_myRule_26_X8th_Reminder_Sent_c| Equal To|✅|
    |18|myVariable_current.X8th_Reminder_Sent__c| Is Null|⬜|
    
    
    
    
    ### myDecision3
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision3](#mydecision3)|
    |Default Connector|[myDecision13](#mydecision13)|
    |Default Connector Label|default|
    |Index (PM)|1|
    
    
    #### Rule myRule_4 (Prior 5500 | Reminder)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_4_A1](#myrule_4_a1)|
    |Condition Logic|1 AND 2 AND 20 AND ((3 AND 4) OR (5 AND 6) OR (8 AND 9) OR (10 AND 11) OR (12 AND 13) OR (14 AND 15) OR (16 AND 17) OR (18 AND 19) )AND 7|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.RecordTypeId| Equal To|01237000000N0lpAAC|
    |2|myVariable_current.Invitation_to_File_Sent__c| Is Null|⬜|
    |3|isChangedRule_5_myRule_4_X1st_Reminder_Sent_c| Equal To|✅|
    |4|myVariable_current.X1st_Reminder_Sent__c| Is Null|⬜|
    |5|isChangedRule_6_myRule_4_X2nd_Reminder_Sent_c| Equal To|✅|
    |6|myVariable_current.X2nd_Reminder_Sent__c| Is Null|⬜|
    |7|myVariable_current.Status__c| Not Equal To|Filed|
    |8|isChangedRule_7_myRule_4_X3rd_Reminder_Sent_c| Equal To|✅|
    |9|myVariable_current.X3rd_Reminder_Sent__c| Is Null|⬜|
    |10|isChangedRule_8_myRule_4_X4th_Reminder_Sent_c| Equal To|✅|
    |11|myVariable_current.X4th_Reminder_Sent__c| Is Null|⬜|
    |12|isChangedRule_9_myRule_4_X5th_Reminder_Sent_c| Equal To|✅|
    |13|myVariable_current.X5th_Reminder_Sent__c| Is Null|⬜|
    |14|isChangedRule_10_myRule_4_X6th_Reminder_Sent_c| Equal To|✅|
    |15|myVariable_current.X6th_Reminder_Sent__c| Is Null|⬜|
    |16|isChangedRule_11_myRule_4_X7th_Reminder_Sent_c| Equal To|✅|
    |17|myVariable_current.X7th_Reminder_Sent__c| Is Null|⬜|
    |18|isChangedRule_12_myRule_4_X8th_Reminder_Sent_c| Equal To|✅|
    |19|myVariable_current.X8th_Reminder_Sent__c| Is Null|⬜|
    |20|myVariable_current.X5500_Situation__c| Equal To|Prior Year Only|
    
    
    
    
    ### myDecision35
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision35](#mydecision35)|
    |Default Connector|[myDecision38](#mydecision38)|
    |Default Connector Label|default|
    |Index (PM)|7|
    
    
    #### Rule myRule_36 (Prior + Final 5500 | Invite to File)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_36_A1](#myrule_36_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.RecordTypeId| Equal To|01237000000N0lpAAC|
    |2|isChangedRule_37_myRule_36_Invitation_to_File_Sent_c| Equal To|✅|
    |3|myVariable_current.Invitation_to_File_Sent__c| Is Null|⬜|
    |4|myVariable_current.X5500_Situation__c| Equal To|Prior + Final 5500|
    
    
    
    
    ### myDecision38
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision38](#mydecision38)|
    |Default Connector Label|default|
    |Index (PM)|8|
    
    
    #### Rule myRule_39 (Prior + Final 5500 | Remind to File)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_39_A1](#myrule_39_a1)|
    |Condition Logic|1 AND 2 AND ((3 AND 4) OR (5 AND 6) OR (7 AND 8) OR (9 AND 10) OR (11 AND 12) OR (13 AND 14) OR (15 AND 16) OR (17 AND 18))|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.RecordTypeId| Equal To|1|
    |2|myVariable_current.X5500_Situation__c| Equal To|Prior + Final 5500|
    |3|isChangedRule_40_myRule_39_X1st_Reminder_Sent_c| Equal To|✅|
    |4|myVariable_current.X1st_Reminder_Sent__c| Is Null|⬜|
    |5|isChangedRule_41_myRule_39_X2nd_Reminder_Sent_c| Equal To|✅|
    |6|myVariable_current.X2nd_Reminder_Sent__c| Is Null|⬜|
    |7|isChangedRule_42_myRule_39_X3rd_Reminder_Sent_c| Equal To|✅|
    |8|myVariable_current.X3rd_Reminder_Sent__c| Is Null|⬜|
    |9|isChangedRule_43_myRule_39_X4th_Reminder_Sent_c| Equal To|✅|
    |10|myVariable_current.X4th_Reminder_Sent__c| Is Null|⬜|
    |11|isChangedRule_44_myRule_39_X5th_Reminder_Sent_c| Equal To|✅|
    |12|myVariable_current.X5th_Reminder_Sent__c| Is Null|⬜|
    |13|isChangedRule_45_myRule_39_X6th_Reminder_Sent_c| Equal To|✅|
    |14|myVariable_current.X6th_Reminder_Sent__c| Is Null|⬜|
    |15|isChangedRule_46_myRule_39_X7th_Reminder_Sent_c| Equal To|✅|
    |16|myVariable_current.X7th_Reminder_Sent__c| Is Null|⬜|
    |17|isChangedRule_47_myRule_39_X8th_Reminder_Sent_c| Equal To|✅|
    |18|myVariable_current.X8th_Reminder_Sent__c| Is Null|⬜|
    
    
    
    
    ### myRule_14_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|EmailMessage|
    |Label|Email Copy|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |FromAddress|compliance@myubiquity.com|
    |HtmlBody|<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> <html xmlns="http://www.w3.org/1999/xhtml">  <head>   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />   <title>Ubiquity Retirement + Savings</title>   <meta name="viewport" content="width=device-width, initial-scale=1.0"/> <style>  p{ font-family: Arial, Helvetica, sans-serif; color: #58585b; line-height: 1.4em; font-size: 14px; } a{ font-family: Arial, Helvetica, sans-serif; color: #5fc9e2; line-height: 1.4em; font-size: 14px; } td { font-family: Arial, Helvetica, sans-serif; color: #58585b; line-height: 1.4em; font-size: 14px;}   .invisible-preheader { opacity: 0; font-size: 12px; display: block; } @media screen and (max-width: 600px) {   .full { width: 90%; } }  /* Don't think I don't see you peeping my code */  </style>  </head>   <body style="margin: 0; padding: 0; background-color:#F9F8FC">      <table class="full" align="center" border="0" cellpadding="0" cellspacing="0" width="600" style="border-collapse:collapse;">       <tbody>         <tr>           <td bgcolor="#F9F8FC">             <div class="invisible-preheader"></div>             <div align="right"><span style="text-align: right; font-size: 12px; opacity: 0.6;">Click here to view the <webversion style="color: #58585b;">web version</webversion> of this email.</span></div>           </td>         </tr>         <tr>           <td style="height: 100px; padding-bottom: 1.4em;">             <img src="http://you.myubiquity.com/l/124591/2016-09-29/8h9m7y/124591/146662/ubiquity_logo_horizontal_outlines.png" style="margin-left: auto; margin-right: auto; width: 250px; height: auto; display: block; text-align: center;">           </td>         </tr>         <tr>           <td>             <div style="background-color: #5fc9e2; width: 33.3%; height: 15px; float: left; border-radius: 10px 0 0 0;">&nbsp;</div>             <div style="background-color: #35364C; width: 33.4%; height: 15px; float: left;">&nbsp;</div>             <div style="background-color: #FBD006; width: 33.3%; height: 15px; float: left; border-radius: 0 10px 0 0;">&nbsp;</div>           </td>         </tr>         <tr>           <td bgcolor="#ffffff" style="border-radius: 0 0 10px 10px;">             <table align="center" border="0" cellpadding="0" cellspacing="0" width="90%"; style="border-collapse:collapse;">               <tbody>                     <tr>                         <center>                             <img style="padding-top: 1.4em;" src="https://you.myubiquity.com/l/124591/2018-09-12/9nz2x6/124591/185309/Gears_Hero.jpg">                         </center>                     </tr>                 <tr>                   <td>                       <p>Dear Retirement Plan Sponsor ,</p>                      Form 5500 has been filed. Upon filing, the Form 5500 becomes public information.                          </p>                     <p>Within minutes of filing, the form is posted to the Department of Labor website.  </p>                                     <p>Feel free to search for your successful 5500 form filing <a href="https://www.efast.dol.gov/portal/app/disseminate?execution=e2s1">here</a> (search by EIN).</p>                                    <td>                 </tr>                 <tr>                   <td>                                                <p>Have further questions? Feel free to contact us at <a href="mailto:support@myubiquity.com">support@myubiquity.com</a> or call 855.401.4357.</p>                         <p>Sincerely,</br>                       Your Compliance Team at Ubiquity Retirement + Savings</br>                       <a href="mailto:support@myubiquity.com" style=" color: #5fc9e2; text-decoration: none;"> support@myubiquity.com</a><br>                       <a href="https://www.myubiquity.com" style="color: #5fc9e2; text-decoration: none;">myubiquity.com</a></p>                   </td>                 </tr>                 <tr>                   <td style="padding-bottom: 2em;">                       <table align="center" border="0" cellpadding="0" cellspacing="0" style="border-collapse:collapse;" >                           <tbody>                             <tr>                                 <td align="center" style="padding-top: 1.4em;"><span style="color: #FBD006">PHONE:</span> 855.401.4357 &nbsp; &nbsp; &nbsp; <span style="color: #5fc9e2; display: inline-block;">EMAIL:<a href="mailto:support@myubiquity.com" style=" color: #58585b; text-decoration: none;"> support@myubiquity.com</a></span></td>                             </tr>                           </tbody>                         </table>                     </td>                 </tr>               </tbody>             </table>               </td>         </tr>         <tr>           <td style="padding-top: 1.4em; text-align: center; opacity: 0.65;">Copyright &copy;2021 Ubiquity Retirement + Savings           </td>         </tr>         <tr>           <td style="padding-top: 1.4em; text-align: center; opacity: 0.65;">You have received this e-mail because it contains important administration information. <br>You may <unsubscribe style="color: #58585b;">unsubscribe</unsubscribe>, but you will no longer receive important updates to your plan(s) via email.<br><br>           </td>         </tr>         <tr style="padding-top: 1.4em; text-align: center; opacity: 0.65;">           <td>Our mailing address is:<br>               44 Montgomery St Suite 3060<br>               San Francisco, CA 94104<br><br>           </td>         </tr>         <tr style="padding-top: 1.4em; text-align: center; opacity: 0.65">           <td style="padding-bottom: 3em;">                <a href="http://ubiquity.createsend1.com/t/d-l-oujidlk-l-t/" style="color: #5fc9e2; text-decoration: none; " target="_blank">Privacy, Security, &amp; Terms</a>             </td>         </tr>       </tbody>     </table>   </body> </html>|
    |RelatedToId|myVariable_current.Account__c|
    |Status|3|
    |Subject|Form 5500 has been filed|
    
    
    
    
    ### myRule_17_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|EmailMessage|
    |Label|Email Copy|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |FromAddress|support@myubiquity.com|
    |HtmlBody|<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> <html xmlns="http://www.w3.org/1999/xhtml">  <head>   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />   <title>Ubiquity Retirement + Savings</title>   <meta name="viewport" content="width=device-width, initial-scale=1.0"/> <style>  p{ font-family: Arial, Helvetica, sans-serif; color: #58585b; line-height: 1.4em; font-size: 14px; } td { font-family: Arial, Helvetica, sans-serif; color: #58585b; line-height: 1.4em; font-size: 14px;}   .invisible-preheader { opacity: 0; font-size: 12px; display: block; } @media screen and (max-width: 600px) {   .full { width: 100%; } }  /* Don't think I don't see you peeping my code */  </style>  </head>   <body style="margin: 0; padding: 0; background-color:#F9F8FC">      <table class="full" align="center" border="0" cellpadding="0" cellspacing="0" width="600" style="border-collapse:collapse;">       <tbody>         <tr>           <td bgcolor="#F9F8FC">             <div class="invisible-preheader"></div>             <div align="right"><span style="text-align: right; font-size: 12px; opacity: 0.6;">Click here to view the <webversion style="color: #58585b;">web version</webversion> of this email.</span></div>           </td>         </tr>         <tr>           <td style="height: 100px; padding-bottom: 1.4em;">             <img src="http://you.myubiquity.com/l/124591/2016-09-29/8h9m7y/124591/146662/ubiquity_logo_horizontal_outlines.png" style="margin-left: auto; margin-right: auto; width: 250px; height: auto; display: block; text-align: center;">           </td>         </tr>         <tr>           <td>             <div style="background-color: #5fc9e2; width: 33.3%; height: 15px; float: left; border-radius: 10px 0 0 0;">&nbsp;</div>             <div style="background-color: #35364C; width: 33.4%; height: 15px; float: left;">&nbsp;</div>             <div style="background-color: #FBD006; width: 33.3%; height: 15px; float: left; border-radius: 0 10px 0 0;">&nbsp;</div>           </td>         </tr>         <tr>           <td bgcolor="#ffffff" style="border-radius: 0 0 10px 10px;;">             <table align="center" border="0" cellpadding="0" cellspacing="0" width="600"; style="border-collapse:collapse;">               <tbody>                     <tr>                         <center>                             <img style="padding-top: 1.4em;" src="https://you.myubiquity.com/l/124591/2018-09-12/9nz2x6/124591/185309/Gears_Hero.jpg">                         </center>                     </tr>                 <tr>                   <td style="padding: 0 30px 0 30px;">                       <p>Hello Plan Sponsor,</p>               <p>Your retirement plan’s 2019 Summary Annual Report (SAR) pertaining to the recently filed Form 5500 filing is now available to you and your employees on the <a href="https://www.myubiquity.com">Ubiquity website.</a></p>                     <p>By law, the SAR is required to be available to all eligible employees. If you have any employees who don’t have internet access, it’s required that you provide them with a printed copy.</p>                     <p><b>How do I access my SAR? </b></p>                         <ul>                           <li> <a href="https://secure.myubiquity.com/login">Log into your portal</a></li>                              <li> Once logged in, select ‘401(k)’ on the left-side navigation bar on  your screen, then tap ‘Overview’.</li>                          <li> Scroll down to ‘Plan Documents’. Click ‘Summary Annual Report 2019’ and the document will download to your local drive.</li>                          </ul>                       <td>                 </tr>                 <tr>                   <td style="padding: 0 30px 0 30px;">                    <p>Remember, we’re always here to help. If you have any questions, feel free to give us a call at 855.401.4357 option 1 or email us at support@myubiquity.com.</p>                            <p>Sincerely,<br />                       Your Support Team at Ubiquity Retirement + Savings <br />                       <a href="mailto:support@myubiquity.com" style=" color: #5fc9e2; text-decoration: none;"> support@myubiquity.com</a><br />                       <a href="https://www.myubiquity.com" style="color: #5fc9e2; text-decoration: none;">myubiquity.com</a></p>                   </td>                 </tr>                 <tr>                   <td style="padding-bottom: 2em;">                       <table align="center" border="0" cellpadding="0" cellspacing="0" style="border-collapse:collapse;" >                           <tbody>                             <tr>                                 <td align="center" style="padding-top: 1.4em;"><span style="color: #FBD006">PHONE:</span> 855.401.4357 option 1 &nbsp; &nbsp; &nbsp; <span style="color: #5fc9e2; display: inline-block;">EMAIL:<a href="mailto:support@myubiquity.com" style=" color: #58585b; text-decoration: none;"> support@myubiquity.com</a></span></td>                             </tr>                           </tbody>                         </table>                     </td>                 </tr>               </tbody>             </table>               </td>         </tr>         <tr>           <td style="padding-top: 1.4em; text-align: center; opacity: 0.65;">Copyright &copy;2019 Ubiquity Retirement + Savings           </td>         </tr>         <tr>           <td style="padding-top: 1.4em; text-align: center; opacity: 0.65;">You have received this e-mail because it contains important administration information.</p>                <p><a href="https://you.myubiquity.com/email-preferences" style="color: #5fc9e2; text-decoration: none;">Click here</a> to adjust your email preferences. You may <unsubscribe style="color: #58585b; text-decoration: none;">unsubscribe</unsubscribe>, but you will no longer receive important updates to your plan(s) via email.<br><br>           </td>         </tr>         <tr style="padding-top: 1.4em; text-align: center; opacity: 0.65;">           <td>Our mailing address is:<br>               44 Montgomery Street, Suite 3060<br>               San Francisco, CA 94104<br><br>           </td>         </tr>         <tr style="padding-top: 1.4em; text-align: center; opacity: 0.65">           <td style="padding-bottom: 3em;">                <a href="http://ubiquity.createsend1.com/t/d-l-oujidlk-l-t/" style="color: #5fc9e2; text-decoration: none; " target="_blank">Privacy, Security, &amp; Terms</a>             </td>         </tr>       </tbody>     </table>   </body> </html>|
    |RelatedToId|myVariable_current.Account__c|
    |Status|3|
    |Subject|Your 2020 Summary Annual Report is Available|
    
    
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|EmailMessage|
    |Label|Email Copy|
    |Connector|[myRule_1_A2](#myrule_1_a2)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |FromAddress|compliance@myubiquity.com|
    |HtmlBody|<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> <html xmlns="http://www.w3.org/1999/xhtml">  <head>   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />   <title>Ubiquity Retirement + Savings</title>   <meta name="viewport" content="width=device-width, initial-scale=1.0"/> <style>  p{ font-family: Arial, Helvetica, sans-serif; color: #58585b; line-height: 1.4em; font-size: 14px; } a{ font-family: Arial, Helvetica, sans-serif; color: #5fc9e2; line-height: 1.4em; font-size: 14px; } td { font-family: Arial, Helvetica, sans-serif; color: #58585b; line-height: 1.4em; font-size: 14px;}   .invisible-preheader { opacity: 0; font-size: 12px; display: block; } @media screen and (max-width: 600px) {   .full { width: 90%; } }  /* Don't think I don't see you peeping my code */  </style>  </head>   <body style="margin: 0; padding: 0; background-color:#F9F8FC">      <table class="full" align="center" border="0" cellpadding="0" cellspacing="0" width="600" style="border-collapse:collapse;">       <tbody>         <tr>           <td bgcolor="#F9F8FC">             <div class="invisible-preheader"></div>             <div align="right"><span style="text-align: right; font-size: 12px; opacity: 0.6;">Click here to view the <webversion style="color: #58585b;">web version</webversion> of this email.</span></div>           </td>         </tr>         <tr>           <td style="height: 100px; padding-bottom: 1.4em;">             <img src="http://you.myubiquity.com/l/124591/2016-09-29/8h9m7y/124591/146662/ubiquity_logo_horizontal_outlines.png" style="margin-left: auto; margin-right: auto; width: 250px; height: auto; display: block; text-align: center;">           </td>         </tr>         <tr>           <td>             <div style="background-color: #5fc9e2; width: 33.3%; height: 15px; float: left; border-radius: 10px 0 0 0;">&nbsp;</div>             <div style="background-color: #35364C; width: 33.4%; height: 15px; float: left;">&nbsp;</div>             <div style="background-color: #FBD006; width: 33.3%; height: 15px; float: left; border-radius: 0 10px 0 0;">&nbsp;</div>           </td>         </tr>         <tr>           <td bgcolor="#ffffff" style="border-radius: 0 0 10px 10px;">             <table align="center" border="0" cellpadding="0" cellspacing="0" width="90%"; style="border-collapse:collapse;">               <tbody>                     <tr>                         <center>                             <img style="padding-top: 1.4em;" src="https://you.myubiquity.com/l/124591/2018-09-12/9nz2x6/124591/185309/Gears_Hero.jpg">                         </center>                     </tr>                 <tr>                   <td>                       <p>Dear Retirement Plan Sponsor,</p>                      <p>Your 2020 Form 5500 is ready to file! As the Administrator of , the DOL requires you to sign your prepared Form 5500 by Aug 2, 2021. Please designate one authorized individual to sign your Form 5500.</p>                     <p>To file your Form 5500:</p>                     <ol> <li><a href=>Go to your filing page</a> </li>                         <li>Enter your DOL User ID and PIN</li>                         <li>Click "Sign"</li>                     </ol>                     <p><a href="https://youtu.be/XFfShC4t6ug" style="color: #5fc9e2; text-decoration: none;">Watch our short step-by-step tutorial for filing the Form 5500.</a></p>   </p>If you have never registered with the DOL, don't worry! It takes a couple of minutes. Here's how:</p>                         <ul>                             <li><a href="https://www.efast.dol.gov/portal/app/userCreate?execution=e1s1">Register for new credentials with the DOL</a> </li>                             <li>Follow the on-screen steps to register. Upon registration, a User ID and PIN will be assigned to you.</li>                         </ul>                        <p>Need more detail about filing?</p>                     <table border="0" cellpadding="0" cellspacing="0" width="100%">                       <tbody>                           <tr>                               <td>                               <center>                               <table border="0" cellpadding="0" cellspacing="0">                                   <tbody>                                       <tr>                                           <td align="center" bgcolor="#5fc9e2" style="padding: 10px 25px 10px 25px; border-radius:30px"><a href="https://you.myubiquity.com/l/124591/2019-05-16/9qgkmj" style="font-size: 16px; font-family: Helvetica, Arial, sans-serif; font-weight: normal; color: #ffffff; text-decoration: none; display: inline-block;" target="_blank">Read the FAQ</a></td>                                       </tr>                                   </tbody>                               </table>                               </center>                               </td>                           </tr>                       </tbody>                   </table>                      <td>                 </tr>                 <tr>                   <td>                        <p>Don’t forget! Failure to file by the deadline can result in IRS and DOL fees and penalties for each day the filing is late.</p>                         <p>If you need more time to file, we can file an extension of time through October 15, 2021. To request an extension, send us an email at <a href="mailto:compliance@myubiquity.com" style=" color: #5fc9e2; text-decoration: none;">compliance@myubiquity.com</a> with the subject "Extension Request - by July 23, 2021 to avoid the extension-filing fee of $195, per the terms of Ubiquity’s Agreement for Services.</p>                         <p>Have further questions? Feel free to contact us at <a href="mailto:support@myubiquity.com">support@myubiquity.com</a> or call 1.855.401.4357.</p>                         <p>Sincerely,</br>                       Your Compliance Team at Ubiquity Retirement + Savings</br>                       <a href="mailto:support@myubiquity.com" style=" color: #5fc9e2; text-decoration: none;"> support@myubiquity.com</a><br>                       <a href="https://www.myubiquity.com" style="color: #5fc9e2; text-decoration: none;">myubiquity.com</a></p>                   </td>                 </tr>                 <tr>                   <td style="padding-bottom: 2em;">                       <table align="center" border="0" cellpadding="0" cellspacing="0" style="border-collapse:collapse;" >                           <tbody>                             <tr>                                 <td align="center" style="padding-top: 1.4em;"><span style="color: #FBD006">PHONE:</span> 855.401.4357 &nbsp; &nbsp; &nbsp; <span style="color: #5fc9e2; display: inline-block;">EMAIL:<a href="mailto:support@myubiquity.com" style=" color: #58585b; text-decoration: none;"> support@myubiquity.com</a></span></td>                             </tr>                           </tbody>                         </table>                     </td>                 </tr>               </tbody>             </table>               </td>         </tr>         <tr>           <td style="padding-top: 1.4em; text-align: center; opacity: 0.65;">Copyright &copy;2020 Ubiquity Retirement + Savings           </td>         </tr>         <tr>           <td style="padding-top: 1.4em; text-align: center; opacity: 0.65;">You have received this e-mail because it contains important administration information. <br>You may <unsubscribe style="color: #58585b;">unsubscribe</unsubscribe>, but you will no longer receive important updates to your plan(s) via email.<br><br>           </td>         </tr>         <tr style="padding-top: 1.4em; text-align: center; opacity: 0.65;">           <td>Our mailing address is:<br>               44 Montgomery St Suite 3060<br>               San Francisco, CA 94104<br><br>           </td>         </tr>         <tr style="padding-top: 1.4em; text-align: center; opacity: 0.65">           <td style="padding-bottom: 3em;">                <a href="http://ubiquity.createsend1.com/t/d-l-oujidlk-l-t/" style="color: #5fc9e2; text-decoration: none; " target="_blank">Privacy, Security, &amp; Terms</a>             </td>         </tr>       </tbody>     </table>   </body> </html>|
    |RelatedToId|myVariable_current.Account__c|
    |Status|3|
    |Subject|ACTION REQUIRED - File 2021 Form 5500|
    
    
    
    
    ### myRule_23_A3
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|EmailMessage|
    |Label|Email Copy|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |FromAddress|compliance@myubiquity.com|
    |HtmlBody|''Dear Retirement Plan Sponsor,     As the Administrator of ''+[Compliance__c.Plan__c.Name]+'', the Department of Labor (DOL) requires you to sign your +''[!Compliance__c.Form_Year_Final__c]+'' Final Form 5500 prepared by Ubiquity Retirement + Savings. Our records show that the ''+[!Compliance__c.Plan__c.Name]+'' terminated in ''+[!Compliance__c.Form_Year_Final__c]+''. The DOL requires that you file a Form 5500 until the plan assets reach a $0.00 balance. This will be the final return required for the plan.    The deadline to submit the Final Form 5500 is ''+[!Compliance__c.Due_Date_Final__c]+''. Please designate one individual copied on this email to sign your Form 5500.    To file your Form 5500:    1. Go to your Final Form 5500 filing page - visit the following link ''+[!Compliance__c.ASC_URL_Link_Final__c]+''.  2. Enter your DOL User ID and PIN   3. Click Sign   If you have never registered with the DOL, don’t worry! It only takes a couple of minutes. Here’s how:  1.	  •	Register for new credentials with the DOL  •	Follow the on-screen steps. Upon registration, a User ID and PIN will be assigned to you.  •	Watch our short step-by-step tutorial for filing the Form 5500.    After signing the form, you can check the status of your filing by visiting the DOL's EFAST website and searching for your filing by EIN.    Need more details about filing? Read our FAQ .    Don’t forget! Failure to file by the deadline can result in IRS and DOL fees and penalties for each day the filing is late.    Once you have filed your Final 5500, your Summary Annual Report (SAR) will be posted to our website no later than 2 1/2 months after ''+[!Compliance__c.Due_Date_Final__c]+''.    If you have any further questions, please contact us at compliance@myubiquity.com or call your support group at 1.855.401.4357.    Sincerely,  Your Compliance Team''|
    |RelatedToId|myVariable_current.Id|
    |Status|3|
    |Subject|''File Your Current year Final Form 5500 for ''&[Compliance__c.Plan__c.Name]&'' by ''&[Compliance__c.Due_Date_Final__c]|
    
    
    
    
    ### myRule_26_A3
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|EmailMessage|
    |Label|Email Copy|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |FromAddress|compliance@myubiquity.com|
    |HtmlBody|1|
    |RelatedToId|myVariable_current.Id|
    |Status|3|
    |Subject|''File Your Current year Final Form 5500 for ''&[Compliance__c.Plan__c.Name]&'' by ''&[Compliance__c.Due_Date_Final__c]|
    
    
    
    
    ### myRule_36_A3
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|EmailMessage|
    |Label|Email Copy|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |FromAddress|compliance@myubiquity.com|
    |HtmlBody|ACTION REQUIRED: File Your  and Final  Forms 5500 for   Dear Retirement Plan Sponsor,   As the Administrator of , the Department of Labor (DOL) requires you to sign your  and Final Forms 5500 prepared by Ubiquity Retirement + Savings. Our records show that the  terminated in . The DOL requires that you file a Form 5500 until the plan assets reach a $0.00 balance. These will be the final filings required for the plan.   The deadline to submit the  Form 5500 is .   The deadline to submit the  Final Form 5500 is .   Please designate one individual copied on this email to sign your Form 5500.     To file your Form 5500:   To access your  Form 5500 filing portal, click here .   To access your Final Form 5500 filing portal, click here Enter your DOL User ID and PIN   Click "Sign"   If you have never registered with the DOL, don’t worry! iIt only takes a couple of minutes. Here’s how:   Register for new credentials with the DOL   Follow the on-screen steps. Upon registration, a User ID and PIN will be assigned to you.      Watch our short step-by-step tutorial for filing the Form 5500.      After signing the form, you can check the status of your filing by visiting the DOL's EFAST website and searching for your filing by EIN.     Need more details about filing? Read our FAQ .     Don’t forget! Failure to file by the deadline can result in IRS and DOL fees and penalties for each day the filing is late.   Once you have filed your Final 5500, your Summary Annual Report (SAR) will be posted to our website no later than 2 1/2 months after current year due date.      If you have any further questions, please contact us at compliance@myubiquity.com or call your support group at 1.855.401.4357.     Sincerely,  Your Compliance Team|
    |RelatedToId|myVariable_current.Id|
    |Status|3|
    |Subject|ACTION REQUIRED: File Your and Final Forms 5500 for  Plan|
    
    
    
    
    ### myRule_39_A3
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|EmailMessage|
    |Label|Email Copy|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |FromAddress|compliance@myubiquity.com|
    |HtmlBody|1|
    |RelatedToId|myVariable_current.Id|
    |Status|3|
    |Subject|1|
    
    
    
    
    ### myRule_4_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|EmailMessage|
    |Label|Email Copy|
    |Connector|[myRule_4_A3](#myrule_4_a3)|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |FromAddress|compliance@myubiquity.com|
    |HtmlBody|<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> <html xmlns="http://www.w3.org/1999/xhtml">  <head>   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />   <title>Ubiquity Retirement + Savings</title>   <meta name="viewport" content="width=device-width, initial-scale=1.0"/> <style>  p{ font-family: Arial, Helvetica, sans-serif; color: #58585b; line-height: 1.4em; font-size: 14px; } a{ font-family: Arial, Helvetica, sans-serif; color: #5fc9e2; line-height: 1.4em; font-size: 14px; } td { font-family: Arial, Helvetica, sans-serif; color: #58585b; line-height: 1.4em; font-size: 14px;}   .invisible-preheader { opacity: 0; font-size: 12px; display: block; } @media screen and (max-width: 600px) {   .full { width: 90%; } }  /* Don't think I don't see you peeping my code */  </style>  </head>   <body style="margin: 0; padding: 0; background-color:#F9F8FC">      <table class="full" align="center" border="0" cellpadding="0" cellspacing="0" width="600" style="border-collapse:collapse;">       <tbody>         <tr>           <td bgcolor="#F9F8FC">             <div class="invisible-preheader"></div>             <div align="right"><span style="text-align: right; font-size: 12px; opacity: 0.6;">Click here to view the <webversion style="color: #58585b;">web version</webversion> of this email.</span></div>           </td>         </tr>         <tr>           <td style="height: 100px; padding-bottom: 1.4em;">             <img src="http://you.myubiquity.com/l/124591/2016-09-29/8h9m7y/124591/146662/ubiquity_logo_horizontal_outlines.png" style="margin-left: auto; margin-right: auto; width: 250px; height: auto; display: block; text-align: center;">           </td>         </tr>         <tr>           <td>             <div style="background-color: #5fc9e2; width: 33.3%; height: 15px; float: left; border-radius: 10px 0 0 0;">&nbsp;</div>             <div style="background-color: #35364C; width: 33.4%; height: 15px; float: left;">&nbsp;</div>             <div style="background-color: #FBD006; width: 33.3%; height: 15px; float: left; border-radius: 0 10px 0 0;">&nbsp;</div>           </td>         </tr>         <tr>           <td bgcolor="#ffffff" style="border-radius: 0 0 10px 10px;">             <table align="center" border="0" cellpadding="0" cellspacing="0" width="90%"; style="border-collapse:collapse;">               <tbody>                     <tr>                         <center>                             <img style="padding-top: 1.4em;" src="https://you.myubiquity.com/l/124591/2018-09-12/9nz2x6/124591/185309/Gears_Hero.jpg">                         </center>                     </tr>                 <tr>                   <td>                       <p>Dear Retirement Plan Sponsor,</p>                      <p>This is a reminder to file your 2019 Form 5500 by <strong>October 15, 2020.</strong> Please designate one individual to sign your Form 5500.                         </p>                     <p>To file your 5500 Form:</p>                     <ol>                         <li>Go to your filing page </li>                         <li>Enter your DOL User ID and PIN</li>                         <li>Click "Sign"</li>                     </ol> <p><a href="https://youtu.be/XFfShC4t6ug" style="color: #5fc9e2; text-decoration: none;">Watch our short step-by-step tutorial for filing the Form 5500.</a></p>                     <p>If you haven't registered with the DOL, don't worry! It takes a couple of minutes. Here's how:</p>                       <ul>                           <li><a href="https://www.efast.dol.gov/portal/app/userCreate?execution=e1s1">Go to the DOL website</a></li> <li>Click "Register" on the left menu under "Main"</li>                           <li>Follow the on-screen steps to register. Upon registration, a User ID and PIN will be assigned to you.</li>                       </ul>                                              <p>Need more detail about filing? Read our FAQ here:</p>                     <table border="0" cellpadding="0" cellspacing="0" width="100%">                       <tbody>                           <tr>                               <td>                               <center>                               <table border="0" cellpadding="0" cellspacing="0">                                   <tbody>                                       <tr>                                           <td align="center" bgcolor="#5fc9e2" style="padding: 10px 25px 10px 25px; border-radius:30px"><a href="https://you.myubiquity.com/l/124591/2019-05-16/9qgkmj" style="font-size: 16px; font-family: Helvetica, Arial, sans-serif; font-weight: normal; color: #ffffff; text-decoration: none; display: inline-block;" target="_blank">Read the FAQ</a></td>                                       </tr>                                   </tbody>                               </table>                               </center>                               </td>                           </tr>                       </tbody>                   </table>                      <td>                 </tr>                 <tr>                   <td>                        <p>Don’t forget! Failure to file by the deadline can result in IRS and DOL fees and penalties for each day the filing is late.</p>                                            <p>Have further questions? Feel free to contact us at <a href="mailto:support@myubiquity.com">support@myubiquity.com</a> or call 855.401.4357.</p>                         <p>Sincerely,</br>                       Your Compliance Team at Ubiquity Retirement + Savings</br>                       <a href="mailto:support@myubiquity.com" style=" color: #5fc9e2; text-decoration: none;"> support@myubiquity.com</a><br>                       <a href="https://www.myubiquity.com" style="color: #5fc9e2; text-decoration: none;">myubiquity.com</a></p>                   </td>                 </tr>                 <tr>                   <td style="padding-bottom: 2em;">                       <table align="center" border="0" cellpadding="0" cellspacing="0" style="border-collapse:collapse;" >                           <tbody>                             <tr>                                 <td align="center" style="padding-top: 1.4em;"><span style="color: #FBD006">PHONE:</span> 855.401.4357 &nbsp; &nbsp; &nbsp; <span style="color: #5fc9e2; display: inline-block;">EMAIL:<a href="mailto:support@myubiquity.com" style=" color: #58585b; text-decoration: none;"> support@myubiquity.com</a></span></td>                             </tr>                           </tbody>                         </table>                     </td>                 </tr>               </tbody>             </table>               </td>         </tr>         <tr>           <td style="padding-top: 1.4em; text-align: center; opacity: 0.65;">Copyright &copy;2019 Ubiquity Retirement + Savings           </td>         </tr>         <tr>           <td style="padding-top: 1.4em; text-align: center; opacity: 0.65;">You have received this e-mail because it contains important administration information. <br>You may <unsubscribe style="color: #58585b;">unsubscribe</unsubscribe>, but you will no longer receive important updates to your plan(s) via email.<br><br>           </td>         </tr>         <tr style="padding-top: 1.4em; text-align: center; opacity: 0.65;">           <td>Our mailing address is:<br>               44 Montgomery St Suite 3060<br>               San Francisco, CA 94104<br><br>           </td>         </tr>         <tr style="padding-top: 1.4em; text-align: center; opacity: 0.65">           <td style="padding-bottom: 3em;">                <a href="http://ubiquity.createsend1.com/t/d-l-oujidlk-l-t/" style="color: #5fc9e2; text-decoration: none; " target="_blank">Privacy, Security, &amp; Terms</a>             </td>         </tr>       </tbody>     </table>   </body> </html>|
    |RelatedToId|myVariable_current.Account__c|
    |Status|3|
    |Subject|TIME-SENSITIVE REMINDER: 2021 Form 5500 Filing due|
    
    
    
    
    ### myRule_1_A3
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Compliance__c|
    |Label|Status Update|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Compliance__c]|
    |Reference Target Field (PM)|<!-- -->|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Status__c|Invitation to File Sent|
    
    
    
    
    ### myRule_23_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Compliance__c|
    |Label|Status Update|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Compliance__c]|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myRule_23_A3](#myrule_23_a3)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Status_Final__c|Invitation to File Sent|
    
    
    
    
    ### myRule_26_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Compliance__c|
    |Label|Status Update|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Compliance__c]|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myRule_26_A2](#myrule_26_a2)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Status_Final__c|Reminder Sent|
    
    
    
    
    ### myRule_36_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Compliance__c|
    |Label|Status Update|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Compliance__c]|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myRule_36_A2](#myrule_36_a2)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Status_Final__c|Invitation to File Sent|
    |Status__c|Invitation to File Sent|
    
    
    
    
    ### myRule_39_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Compliance__c|
    |Label|Status Update|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Compliance__c]|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myRule_39_A2](#myrule_39_a2)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Status_Final__c|Reminder Sent|
    |Status__c|Reminder Sent|
    
    
    
    
    ### myRule_4_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Update|
    |Object|Compliance__c|
    |Label|Status Update|
    |Evaluation Type (PM)|always|
    |Extra Type Info (PM)|<!-- -->|
    |Is Child Relationship (PM)|⬜|
    |Reference (PM)|[Compliance__c]|
    |Reference Target Field (PM)|<!-- -->|
    |Connector|[myRule_4_A2](#myrule_4_a2)|
    
    
    #### Filters (logic: **and**)
    
    |Filter Id|Field|Operator|Value|
    |:-- |:-- |:--:|:--: |
    |1|Id| Equal To|myVariable_current.Id|
    
    
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |Status__c|Reminder Sent|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

