# Compliance_ADP_ACP_Testing_Alerts history

<!-- This page has been generated to be viewed with mkdocs-material, you can not view it just as markdown . Activate tab plugin following the doc at https://squidfunk.github.io/mkdocs-material/reference/content-tabs/ -->

=== "Nov 10, 2025 (Initial)"

    _Nov 10, 2025, by moechapa in commit Org state on 2025-11-11 02:14 for monitoring_myubiquity [skip ci]_

    
    ## Flow Diagram [(_View History_)](Compliance_ADP_ACP_Testing_Alerts-history.md)
    
    ```mermaid
    %% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
    %% - If you are in VS Code, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
    %% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
    %% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
    %% - As a last resort, you can copy-paste this MermaidJS code into https://mermaid.live/ to see the flow diagram
    
    flowchart TB
    START(["START<br/><b>Compliance__c</b></br>Type: <b>On All Changes</b>"]):::startClass
    click START "#general-information" "460172053"
    
    START --> isChangedDecision2_myRule_1_Census_Verification_Email_Sent_c
    myRule_11_A1("📧 <em></em><br/>Send Failed Current Year Alert"):::actionCalls
    click myRule_11_A1 "#myrule_11_a1" "346624490"
    
    myRule_15_A1("📧 <em></em><br/>Send Deemed Pass Alert"):::actionCalls
    click myRule_15_A1 "#myrule_15_a1" "1950930175"
    
    myRule_19_A1("📧 <em></em><br/>Send Passed Alert"):::actionCalls
    click myRule_19_A1 "#myrule_19_a1" "1164320292"
    
    myRule_1_A1("📧 <em></em><br/>Census Verification Email"):::actionCalls
    click myRule_1_A1 "#myrule_1_a1" "3712439611"
    
    myRule_23_A1("📧 <em></em><br/>Send Auto Enroll Failed Prior Year Alert"):::actionCalls
    click myRule_23_A1 "#myrule_23_a1" "2897142261"
    
    myRule_27_A1("📧 <em></em><br/>Send Auto Enroll Failed Current Year"):::actionCalls
    click myRule_27_A1 "#myrule_27_a1" "2941137671"
    
    myRule_31_A1("📧 <em></em><br/>ADP ACP | Send Current Year Reminder"):::actionCalls
    click myRule_31_A1 "#myrule_31_a1" "917246898"
    
    myRule_39_A1("📧 <em></em><br/>Current Year Reminder Auto"):::actionCalls
    click myRule_39_A1 "#myrule_39_a1" "3690316342"
    
    myRule_47_A1("📧 <em></em><br/>ADP ACP | Send Prior Year Reminder"):::actionCalls
    click myRule_47_A1 "#myrule_47_a1" "1235254479"
    
    myRule_4_A1("📧 <em></em><br/>Census Verification Reminder"):::actionCalls
    click myRule_4_A1 "#myrule_4_a1" "3467310461"
    
    myRule_55_A1("📧 <em></em><br/>Prior Reminder Auto"):::actionCalls
    click myRule_55_A1 "#myrule_55_a1" "2681741503"
    
    myRule_7_A1("📧 <em></em><br/>Send Failed Prior Year Alert"):::actionCalls
    click myRule_7_A1 "#myrule_7_a1" "934940400"
    
    isChangedDecision12_myRule_11_Census_Last_Received_c{"🔀 <em></em><br/>isChangedDecision12_myRule_11_Census_Last_Received_c"}:::decisions
    click isChangedDecision12_myRule_11_Census_Last_Received_c "#ischangeddecision12_myrule_11_census_last_received_c" "2844418790"
    
    isChangedDecision16_myRule_15_Census_Last_Received_c{"🔀 <em></em><br/>isChangedDecision16_myRule_15_Census_Last_Received_c"}:::decisions
    click isChangedDecision16_myRule_15_Census_Last_Received_c "#ischangeddecision16_myrule_15_census_last_received_c" "489072549"
    
    isChangedDecision20_myRule_19_Census_Last_Received_c{"🔀 <em></em><br/>isChangedDecision20_myRule_19_Census_Last_Received_c"}:::decisions
    click isChangedDecision20_myRule_19_Census_Last_Received_c "#ischangeddecision20_myrule_19_census_last_received_c" "2073127537"
    
    isChangedDecision24_myRule_23_Census_Last_Received_c{"🔀 <em></em><br/>isChangedDecision24_myRule_23_Census_Last_Received_c"}:::decisions
    click isChangedDecision24_myRule_23_Census_Last_Received_c "#ischangeddecision24_myrule_23_census_last_received_c" "2929561492"
    
    isChangedDecision28_myRule_27_Census_Last_Received_c{"🔀 <em></em><br/>isChangedDecision28_myRule_27_Census_Last_Received_c"}:::decisions
    click isChangedDecision28_myRule_27_Census_Last_Received_c "#ischangeddecision28_myrule_27_census_last_received_c" "2292967449"
    
    isChangedDecision2_myRule_1_Census_Verification_Email_Sent_c{"🔀 <em></em><br/>isChangedDecision2_myRule_1_Census_Verification_Email_Sent_c"}:::decisions
    click isChangedDecision2_myRule_1_Census_Verification_Email_Sent_c "#ischangeddecision2_myrule_1_census_verification_email_sent_c" "1801998687"
    
    isChangedDecision32_myRule_31_X1st_Reminder_Sent_c{"🔀 <em></em><br/>isChangedDecision32_myRule_31_X1st_Reminder_Sent_c"}:::decisions
    click isChangedDecision32_myRule_31_X1st_Reminder_Sent_c "#ischangeddecision32_myrule_31_x1st_reminder_sent_c" "1041629876"
    
    isChangedDecision34_myRule_31_X2nd_Reminder_Sent_c{"🔀 <em></em><br/>isChangedDecision34_myRule_31_X2nd_Reminder_Sent_c"}:::decisions
    click isChangedDecision34_myRule_31_X2nd_Reminder_Sent_c "#ischangeddecision34_myrule_31_x2nd_reminder_sent_c" "2407870380"
    
    isChangedDecision36_myRule_31_X3rd_Reminder_Sent_c{"🔀 <em></em><br/>isChangedDecision36_myRule_31_X3rd_Reminder_Sent_c"}:::decisions
    click isChangedDecision36_myRule_31_X3rd_Reminder_Sent_c "#ischangeddecision36_myrule_31_x3rd_reminder_sent_c" "2470864711"
    
    isChangedDecision40_myRule_39_X1st_Reminder_Sent_c{"🔀 <em></em><br/>isChangedDecision40_myRule_39_X1st_Reminder_Sent_c"}:::decisions
    click isChangedDecision40_myRule_39_X1st_Reminder_Sent_c "#ischangeddecision40_myrule_39_x1st_reminder_sent_c" "2213351536"
    
    isChangedDecision42_myRule_39_X2nd_Reminder_Sent_c{"🔀 <em></em><br/>isChangedDecision42_myRule_39_X2nd_Reminder_Sent_c"}:::decisions
    click isChangedDecision42_myRule_39_X2nd_Reminder_Sent_c "#ischangeddecision42_myrule_39_x2nd_reminder_sent_c" "2399355325"
    
    isChangedDecision44_myRule_39_X3rd_Reminder_Sent_c{"🔀 <em></em><br/>isChangedDecision44_myRule_39_X3rd_Reminder_Sent_c"}:::decisions
    click isChangedDecision44_myRule_39_X3rd_Reminder_Sent_c "#ischangeddecision44_myrule_39_x3rd_reminder_sent_c" "1042086269"
    
    isChangedDecision48_myRule_47_X1st_Reminder_Sent_c{"🔀 <em></em><br/>isChangedDecision48_myRule_47_X1st_Reminder_Sent_c"}:::decisions
    click isChangedDecision48_myRule_47_X1st_Reminder_Sent_c "#ischangeddecision48_myrule_47_x1st_reminder_sent_c" "2346835527"
    
    isChangedDecision50_myRule_47_X2nd_Reminder_Sent_c{"🔀 <em></em><br/>isChangedDecision50_myRule_47_X2nd_Reminder_Sent_c"}:::decisions
    click isChangedDecision50_myRule_47_X2nd_Reminder_Sent_c "#ischangeddecision50_myrule_47_x2nd_reminder_sent_c" "3356089600"
    
    isChangedDecision52_myRule_47_X3rd_Reminder_Sent_c{"🔀 <em></em><br/>isChangedDecision52_myRule_47_X3rd_Reminder_Sent_c"}:::decisions
    click isChangedDecision52_myRule_47_X3rd_Reminder_Sent_c "#ischangeddecision52_myrule_47_x3rd_reminder_sent_c" "3752503826"
    
    isChangedDecision56_myRule_55_X1st_Reminder_Sent_c{"🔀 <em></em><br/>isChangedDecision56_myRule_55_X1st_Reminder_Sent_c"}:::decisions
    click isChangedDecision56_myRule_55_X1st_Reminder_Sent_c "#ischangeddecision56_myrule_55_x1st_reminder_sent_c" "3796825321"
    
    isChangedDecision58_myRule_55_X2nd_Reminder_Sent_c{"🔀 <em></em><br/>isChangedDecision58_myRule_55_X2nd_Reminder_Sent_c"}:::decisions
    click isChangedDecision58_myRule_55_X2nd_Reminder_Sent_c "#ischangeddecision58_myrule_55_x2nd_reminder_sent_c" "1137205803"
    
    isChangedDecision5_myRule_4_Census_Verification_Email_Reminder_c{"🔀 <em></em><br/>isChangedDecision5_myRule_4_Census_Verification_Email_Reminder_c"}:::decisions
    click isChangedDecision5_myRule_4_Census_Verification_Email_Reminder_c "#ischangeddecision5_myrule_4_census_verification_email_reminder_c" "1105778668"
    
    isChangedDecision60_myRule_55_X3rd_Reminder_Sent_c{"🔀 <em></em><br/>isChangedDecision60_myRule_55_X3rd_Reminder_Sent_c"}:::decisions
    click isChangedDecision60_myRule_55_X3rd_Reminder_Sent_c "#ischangeddecision60_myrule_55_x3rd_reminder_sent_c" "3014496004"
    
    isChangedDecision8_myRule_7_Census_Last_Received_c{"🔀 <em></em><br/>isChangedDecision8_myRule_7_Census_Last_Received_c"}:::decisions
    click isChangedDecision8_myRule_7_Census_Last_Received_c "#ischangeddecision8_myrule_7_census_last_received_c" "2702132099"
    
    myDecision{"🔀 <em></em><br/>myDecision"}:::decisions
    click myDecision "#mydecision" "2196053135"
    
    myDecision10{"🔀 <em></em><br/>myDecision10"}:::decisions
    click myDecision10 "#mydecision10" "2820484493"
    
    myDecision14{"🔀 <em></em><br/>myDecision14"}:::decisions
    click myDecision14 "#mydecision14" "3602757249"
    
    myDecision18{"🔀 <em></em><br/>myDecision18"}:::decisions
    click myDecision18 "#mydecision18" "3452809887"
    
    myDecision22{"🔀 <em></em><br/>myDecision22"}:::decisions
    click myDecision22 "#mydecision22" "646747207"
    
    myDecision26{"🔀 <em></em><br/>myDecision26"}:::decisions
    click myDecision26 "#mydecision26" "1349844007"
    
    myDecision3{"🔀 <em></em><br/>myDecision3"}:::decisions
    click myDecision3 "#mydecision3" "794955029"
    
    myDecision30{"🔀 <em></em><br/>myDecision30"}:::decisions
    click myDecision30 "#mydecision30" "579366466"
    
    myDecision38{"🔀 <em></em><br/>myDecision38"}:::decisions
    click myDecision38 "#mydecision38" "1090262745"
    
    myDecision46{"🔀 <em></em><br/>myDecision46"}:::decisions
    click myDecision46 "#mydecision46" "1238849064"
    
    myDecision54{"🔀 <em></em><br/>myDecision54"}:::decisions
    click myDecision54 "#mydecision54" "420851263"
    
    myDecision6{"🔀 <em></em><br/>myDecision6"}:::decisions
    click myDecision6 "#mydecision6" "1524744740"
    
    myRule_11_A2[("➕ <em></em><br/>Create Failed Current Year Email Log")]:::recordCreates
    click myRule_11_A2 "#myrule_11_a2" "580913229"
    
    myRule_15_A2[("➕ <em></em><br/>Create Failed Deemed Passed Email Log")]:::recordCreates
    click myRule_15_A2 "#myrule_15_a2" "307703399"
    
    myRule_19_A2[("➕ <em></em><br/>Create Passed Email Log")]:::recordCreates
    click myRule_19_A2 "#myrule_19_a2" "2821435646"
    
    myRule_1_A2[("➕ <em></em><br/>Create Census Verification email record")]:::recordCreates
    click myRule_1_A2 "#myrule_1_a2" "4044517640"
    
    myRule_23_A2[("➕ <em></em><br/>Create AE Failed Prior Year Email Log")]:::recordCreates
    click myRule_23_A2 "#myrule_23_a2" "2287865395"
    
    myRule_27_A2[("➕ <em></em><br/>Create AE Failed Current Year Email Log")]:::recordCreates
    click myRule_27_A2 "#myrule_27_a2" "1126227842"
    
    myRule_31_A2[("➕ <em></em><br/>Create Activity Record")]:::recordCreates
    click myRule_31_A2 "#myrule_31_a2" "449487133"
    
    myRule_39_A2[("➕ <em></em><br/>Email copy")]:::recordCreates
    click myRule_39_A2 "#myrule_39_a2" "2104219721"
    
    myRule_47_A2[("➕ <em></em><br/>Create Activity Record")]:::recordCreates
    click myRule_47_A2 "#myrule_47_a2" "2683003067"
    
    myRule_4_A2[("➕ <em></em><br/>Create Census Verification Reminder email record")]:::recordCreates
    click myRule_4_A2 "#myrule_4_a2" "363675719"
    
    myRule_55_A2[("➕ <em></em><br/>Email Copy")]:::recordCreates
    click myRule_55_A2 "#myrule_55_a2" "3597799793"
    
    myRule_7_A2[("➕ <em></em><br/>Create Failed Prior Test Email Log")]:::recordCreates
    click myRule_7_A2 "#myrule_7_a2" "264516716"
    
    myRule_11_A1 --> myRule_11_A2
    myRule_15_A1 --> myRule_15_A2
    myRule_19_A1 --> myRule_19_A2
    myRule_1_A1 --> myRule_1_A2
    myRule_23_A1 --> myRule_23_A2
    myRule_27_A1 --> myRule_27_A2
    myRule_31_A1 --> myRule_31_A2
    myRule_39_A1 --> myRule_39_A2
    myRule_47_A1 --> myRule_47_A2
    myRule_4_A1 --> myRule_4_A2
    myRule_55_A1 --> myRule_55_A2
    myRule_7_A1 --> myRule_7_A2
    isChangedDecision12_myRule_11_Census_Last_Received_c --> |"isChangedRule_12_myRule_11_Census_Last_Received_c"| isChangedDecision16_myRule_15_Census_Last_Received_c
    isChangedDecision12_myRule_11_Census_Last_Received_c --> |"default"| isChangedDecision16_myRule_15_Census_Last_Received_c
    isChangedDecision16_myRule_15_Census_Last_Received_c --> |"isChangedRule_16_myRule_15_Census_Last_Received_c"| isChangedDecision20_myRule_19_Census_Last_Received_c
    isChangedDecision16_myRule_15_Census_Last_Received_c --> |"default"| isChangedDecision20_myRule_19_Census_Last_Received_c
    isChangedDecision20_myRule_19_Census_Last_Received_c --> |"isChangedRule_20_myRule_19_Census_Last_Received_c"| isChangedDecision24_myRule_23_Census_Last_Received_c
    isChangedDecision20_myRule_19_Census_Last_Received_c --> |"default"| isChangedDecision24_myRule_23_Census_Last_Received_c
    isChangedDecision24_myRule_23_Census_Last_Received_c --> |"isChangedRule_24_myRule_23_Census_Last_Received_c"| isChangedDecision28_myRule_27_Census_Last_Received_c
    isChangedDecision24_myRule_23_Census_Last_Received_c --> |"default"| isChangedDecision28_myRule_27_Census_Last_Received_c
    isChangedDecision28_myRule_27_Census_Last_Received_c --> |"isChangedRule_28_myRule_27_Census_Last_Received_c"| isChangedDecision32_myRule_31_X1st_Reminder_Sent_c
    isChangedDecision28_myRule_27_Census_Last_Received_c --> |"default"| isChangedDecision32_myRule_31_X1st_Reminder_Sent_c
    isChangedDecision2_myRule_1_Census_Verification_Email_Sent_c --> |"isChangedRule_2_myRule_1_Census_Verification_Email_Sent_c"| isChangedDecision5_myRule_4_Census_Verification_Email_Reminder_c
    isChangedDecision2_myRule_1_Census_Verification_Email_Sent_c --> |"default"| isChangedDecision5_myRule_4_Census_Verification_Email_Reminder_c
    isChangedDecision32_myRule_31_X1st_Reminder_Sent_c --> |"isChangedRule_32_myRule_31_X1st_Reminder_Sent_c"| isChangedDecision34_myRule_31_X2nd_Reminder_Sent_c
    isChangedDecision32_myRule_31_X1st_Reminder_Sent_c --> |"default"| isChangedDecision34_myRule_31_X2nd_Reminder_Sent_c
    isChangedDecision34_myRule_31_X2nd_Reminder_Sent_c --> |"isChangedRule_34_myRule_31_X2nd_Reminder_Sent_c"| isChangedDecision36_myRule_31_X3rd_Reminder_Sent_c
    isChangedDecision34_myRule_31_X2nd_Reminder_Sent_c --> |"default"| isChangedDecision36_myRule_31_X3rd_Reminder_Sent_c
    isChangedDecision36_myRule_31_X3rd_Reminder_Sent_c --> |"isChangedRule_36_myRule_31_X3rd_Reminder_Sent_c"| isChangedDecision40_myRule_39_X1st_Reminder_Sent_c
    isChangedDecision36_myRule_31_X3rd_Reminder_Sent_c --> |"default"| isChangedDecision40_myRule_39_X1st_Reminder_Sent_c
    isChangedDecision40_myRule_39_X1st_Reminder_Sent_c --> |"isChangedRule_40_myRule_39_X1st_Reminder_Sent_c"| isChangedDecision42_myRule_39_X2nd_Reminder_Sent_c
    isChangedDecision40_myRule_39_X1st_Reminder_Sent_c --> |"default"| isChangedDecision42_myRule_39_X2nd_Reminder_Sent_c
    isChangedDecision42_myRule_39_X2nd_Reminder_Sent_c --> |"isChangedRule_42_myRule_39_X2nd_Reminder_Sent_c"| isChangedDecision44_myRule_39_X3rd_Reminder_Sent_c
    isChangedDecision42_myRule_39_X2nd_Reminder_Sent_c --> |"default"| isChangedDecision44_myRule_39_X3rd_Reminder_Sent_c
    isChangedDecision44_myRule_39_X3rd_Reminder_Sent_c --> |"isChangedRule_44_myRule_39_X3rd_Reminder_Sent_c"| isChangedDecision48_myRule_47_X1st_Reminder_Sent_c
    isChangedDecision44_myRule_39_X3rd_Reminder_Sent_c --> |"default"| isChangedDecision48_myRule_47_X1st_Reminder_Sent_c
    isChangedDecision48_myRule_47_X1st_Reminder_Sent_c --> |"isChangedRule_48_myRule_47_X1st_Reminder_Sent_c"| isChangedDecision50_myRule_47_X2nd_Reminder_Sent_c
    isChangedDecision48_myRule_47_X1st_Reminder_Sent_c --> |"default"| isChangedDecision50_myRule_47_X2nd_Reminder_Sent_c
    isChangedDecision50_myRule_47_X2nd_Reminder_Sent_c --> |"isChangedRule_50_myRule_47_X2nd_Reminder_Sent_c"| isChangedDecision52_myRule_47_X3rd_Reminder_Sent_c
    isChangedDecision50_myRule_47_X2nd_Reminder_Sent_c --> |"default"| isChangedDecision52_myRule_47_X3rd_Reminder_Sent_c
    isChangedDecision52_myRule_47_X3rd_Reminder_Sent_c --> |"isChangedRule_52_myRule_47_X3rd_Reminder_Sent_c"| isChangedDecision56_myRule_55_X1st_Reminder_Sent_c
    isChangedDecision52_myRule_47_X3rd_Reminder_Sent_c --> |"default"| isChangedDecision56_myRule_55_X1st_Reminder_Sent_c
    isChangedDecision56_myRule_55_X1st_Reminder_Sent_c --> |"isChangedRule_56_myRule_55_X1st_Reminder_Sent_c"| isChangedDecision58_myRule_55_X2nd_Reminder_Sent_c
    isChangedDecision56_myRule_55_X1st_Reminder_Sent_c --> |"default"| isChangedDecision58_myRule_55_X2nd_Reminder_Sent_c
    isChangedDecision58_myRule_55_X2nd_Reminder_Sent_c --> |"isChangedRule_58_myRule_55_X2nd_Reminder_Sent_c"| isChangedDecision60_myRule_55_X3rd_Reminder_Sent_c
    isChangedDecision58_myRule_55_X2nd_Reminder_Sent_c --> |"default"| isChangedDecision60_myRule_55_X3rd_Reminder_Sent_c
    isChangedDecision5_myRule_4_Census_Verification_Email_Reminder_c --> |"isChangedRule_5_myRule_4_Census_Verification_Email_Reminder_c"| isChangedDecision8_myRule_7_Census_Last_Received_c
    isChangedDecision5_myRule_4_Census_Verification_Email_Reminder_c --> |"default"| isChangedDecision8_myRule_7_Census_Last_Received_c
    isChangedDecision60_myRule_55_X3rd_Reminder_Sent_c --> |"isChangedRule_60_myRule_55_X3rd_Reminder_Sent_c"| myDecision
    isChangedDecision60_myRule_55_X3rd_Reminder_Sent_c --> |"default"| myDecision
    isChangedDecision8_myRule_7_Census_Last_Received_c --> |"isChangedRule_8_myRule_7_Census_Last_Received_c"| isChangedDecision12_myRule_11_Census_Last_Received_c
    isChangedDecision8_myRule_7_Census_Last_Received_c --> |"default"| isChangedDecision12_myRule_11_Census_Last_Received_c
    myDecision --> |"Census Verification"| myRule_1_A1
    myDecision --> |"default"| myDecision3
    myDecision10 --> |"ADP ACP | Failed Current Year Test"| myRule_11_A1
    myDecision10 --> |"default"| myDecision14
    myDecision14 --> |"ADP ACP | Failed Deemed Pass"| myRule_15_A1
    myDecision14 --> |"default"| myDecision18
    myDecision18 --> |"ADP ACP | Passed"| myRule_19_A1
    myDecision18 --> |"default"| myDecision22
    myDecision22 --> |"ADP ACP | Auto Enroll Failed Prior Year"| myRule_23_A1
    myDecision22 --> |"default"| myDecision26
    myDecision26 --> |"ADP ACP | Auto Enroll Failed Current Year"| myRule_27_A1
    myDecision26 --> |"default"| myDecision30
    myDecision3 --> |"Census Verification Reminder"| myRule_4_A1
    myDecision3 --> |"default"| myDecision6
    myDecision30 --> |"ADP ACP | Reminder - Current"| myRule_31_A1
    myDecision30 --> |"default"| myDecision38
    myDecision38 --> |"ADP ACP | Reminder - Current Auto"| myRule_39_A1
    myDecision38 --> |"default"| myDecision46
    myDecision46 --> |"ADP ACP | Reminder - Prior"| myRule_47_A1
    myDecision46 --> |"default"| myDecision54
    myDecision54 --> |"ADP ACP | Reminder Prior Auto"| myRule_55_A1
    myDecision54 --> |"default"| END_myDecision54
    myDecision6 --> |"ADP ACP | Failed Prior Year Test"| myRule_7_A1
    myDecision6 --> |"default"| myDecision10
    myRule_11_A2 --> END_myRule_11_A2
    myRule_15_A2 --> END_myRule_15_A2
    myRule_19_A2 --> END_myRule_19_A2
    myRule_1_A2 --> END_myRule_1_A2
    myRule_23_A2 --> END_myRule_23_A2
    myRule_27_A2 --> END_myRule_27_A2
    myRule_31_A2 --> END_myRule_31_A2
    myRule_39_A2 --> END_myRule_39_A2
    myRule_47_A2 --> END_myRule_47_A2
    myRule_4_A2 --> END_myRule_4_A2
    myRule_55_A2 --> END_myRule_55_A2
    myRule_7_A2 --> END_myRule_7_A2
    END_myDecision54(( END )):::endClass
    END_myRule_11_A2(( END )):::endClass
    END_myRule_15_A2(( END )):::endClass
    END_myRule_19_A2(( END )):::endClass
    END_myRule_1_A2(( END )):::endClass
    END_myRule_23_A2(( END )):::endClass
    END_myRule_27_A2(( END )):::endClass
    END_myRule_31_A2(( END )):::endClass
    END_myRule_39_A2(( END )):::endClass
    END_myRule_47_A2(( END )):::endClass
    END_myRule_4_A2(( END )):::endClass
    END_myRule_55_A2(( END )):::endClass
    END_myRule_7_A2(( END )):::endClass
    
    
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
    |Label|Compliance | ADP ACP Testing Alerts|
    |Status|Obsolete|
    |Description|Triggers ADP & ACP Email Results and Census Verification Emails|
    |Interview Label|Compliance_ADP_ACP_Testing_Alerts-29_InterviewLabel|
    |Start Element Reference|[isChangedDecision2_myRule_1_Census_Verification_Email_Sent_c](#ischangeddecision2_myrule_1_census_verification_email_sent_c)|
    | Object Type (PM)|Compliance__c|
    | Object Variable (PM)|myVariable_current|
    | Old Object Variable (PM)|myVariable_old|
    | Trigger Type (PM)|onAllChanges|
    
    
    ## Variables
    
    |Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
    |:-- |:--:|:--:|:--:|:--:|:--:|:--  |
    |myVariable_current|SObject|⬜|✅|✅|Compliance__c|<!-- -->|
    |myVariable_old|SObject|⬜|✅|⬜|Compliance__c|<!-- -->|
    
    
    ## Formulas
    
    |Name|Data Type|Expression|Description|
    |:-- |:--:|:-- |:--  |
    |formula_13_myRule_11_0737319545|Date|TODAY()|<!-- -->|
    |formula_17_myRule_15_2401740075|Date|TODAY()|<!-- -->|
    |formula_21_myRule_19_8917899713|Date|TODAY()|<!-- -->|
    |formula_25_myRule_23_7027440289|Date|TODAY()|<!-- -->|
    |formula_29_myRule_27_7385587991|Date|TODAY()|<!-- -->|
    |formula_33_myRule_31_8133342841|Date|TODAY()|<!-- -->|
    |formula_35_myRule_31_1458098697|Date|TODAY()|<!-- -->|
    |formula_37_myRule_31_8727657812|Date|TODAY()|<!-- -->|
    |formula_41_myRule_39_1529873565|Date|TODAY()|<!-- -->|
    |formula_43_myRule_39_4336761787|Date|TODAY()|<!-- -->|
    |formula_45_myRule_39_4229390134|Date|TODAY()|<!-- -->|
    |formula_49_myRule_47_8249020579|Date|TODAY()|<!-- -->|
    |formula_51_myRule_47_1432238333|Date|TODAY()|<!-- -->|
    |formula_53_myRule_47_0120894525|Date|TODAY()|<!-- -->|
    |formula_57_myRule_55_8043475221|Date|TODAY()|<!-- -->|
    |formula_59_myRule_55_1242003495|Date|TODAY()|<!-- -->|
    |formula_61_myRule_55_9159835567|Date|TODAY()|<!-- -->|
    |formula_9_myRule_7_0510988534|Date|TODAY()|<!-- -->|
    
    
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
    |Email Alert Selection (PM)|Compliance_ADP_ACP_Testing_Failed_Current|
    | SObject Row Id (input)|myVariable_current.Id|
    |Connector|[myRule_11_A2](#myrule_11_a2)|
    
    
    ### myRule_15_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send Deemed Pass Alert|
    |Action Type|Email Alert|
    |Action Name|Compliance__c.Compliance_ADP_ACP_Testing_Failed_Deemed_Pass|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Compliance__c.Compliance_ADP_ACP_Testing_Failed_Deemed_Pass|
    |Email Alert Selection (PM)|Compliance_ADP_ACP_Testing_Failed_Deemed_Pass|
    | SObject Row Id (input)|myVariable_current.Id|
    |Connector|[myRule_15_A2](#myrule_15_a2)|
    
    
    ### myRule_19_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send Passed Alert|
    |Action Type|Email Alert|
    |Action Name|Compliance__c.Compliance_ADP_ACP_Testing_Passed|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Compliance__c.Compliance_ADP_ACP_Testing_Passed|
    |Email Alert Selection (PM)|Compliance_ADP_ACP_Testing_Passed|
    | SObject Row Id (input)|myVariable_current.Id|
    |Connector|[myRule_19_A2](#myrule_19_a2)|
    
    
    ### myRule_1_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Census Verification Email|
    |Action Type|Email Alert|
    |Action Name|Compliance__c.Compliance_Census_Verification_Email|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Compliance__c.Compliance_Census_Verification_Email|
    |Email Alert Selection (PM)|Compliance_Census_Verification_Email|
    | SObject Row Id (input)|myVariable_current.Id|
    |Connector|[myRule_1_A2](#myrule_1_a2)|
    
    
    ### myRule_23_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send Auto Enroll Failed Prior Year Alert|
    |Action Type|Email Alert|
    |Action Name|Compliance__c.Compliance_ADP_ACP_Testing_AEFailed_Prior|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Compliance__c.Compliance_ADP_ACP_Testing_AEFailed_Prior|
    |Email Alert Selection (PM)|Compliance_ADP_ACP_Testing_AEFailed_Prior|
    | SObject Row Id (input)|myVariable_current.Id|
    |Connector|[myRule_23_A2](#myrule_23_a2)|
    
    
    ### myRule_27_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send Auto Enroll Failed Current Year|
    |Action Type|Email Alert|
    |Action Name|Compliance__c.Compliance_ADP_ACP_Testing_AEFailed_Current|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Compliance__c.Compliance_ADP_ACP_Testing_AEFailed_Current|
    |Email Alert Selection (PM)|Compliance_ADP_ACP_Testing_AEFailed_Current|
    | SObject Row Id (input)|myVariable_current.Id|
    |Connector|[myRule_27_A2](#myrule_27_a2)|
    
    
    ### myRule_31_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|ADP ACP | Send Current Year Reminder|
    |Action Type|Email Alert|
    |Action Name|Compliance__c.Compliance_ADP_ACP_Testing_Reminder_Current|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Compliance__c.Compliance_ADP_ACP_Testing_Reminder_Current|
    |Email Alert Selection (PM)|Compliance_ADP_ACP_Testing_Reminder_Current|
    | SObject Row Id (input)|myVariable_current.Id|
    |Connector|[myRule_31_A2](#myrule_31_a2)|
    
    
    ### myRule_39_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Current Year Reminder Auto|
    |Action Type|Email Alert|
    |Action Name|Compliance__c.Compliance_ADP_ACP_Testing_Reminder_Current_Auto|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Compliance__c.Compliance_ADP_ACP_Testing_Reminder_Current_Auto|
    |Email Alert Selection (PM)|Compliance_ADP_ACP_Testing_Reminder_Current_Auto|
    | SObject Row Id (input)|myVariable_current.Id|
    |Connector|[myRule_39_A2](#myrule_39_a2)|
    
    
    ### myRule_47_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|ADP ACP | Send Prior Year Reminder|
    |Action Type|Email Alert|
    |Action Name|Compliance__c.Compliance_ADP_ACP_Testing_Reminder_Prior|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Compliance__c.Compliance_ADP_ACP_Testing_Reminder_Prior|
    |Email Alert Selection (PM)|Compliance_ADP_ACP_Testing_Reminder_Prior|
    | SObject Row Id (input)|myVariable_current.Id|
    |Connector|[myRule_47_A2](#myrule_47_a2)|
    
    
    ### myRule_4_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Census Verification Reminder|
    |Action Type|Email Alert|
    |Action Name|Compliance__c.Compliance_ADP_ACP_Testing_Reminder_Census_Verification|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Compliance__c.Compliance_ADP_ACP_Testing_Reminder_Census_Verification|
    |Email Alert Selection (PM)|Compliance_ADP_ACP_Testing_Reminder_Census_Verification|
    | SObject Row Id (input)|myVariable_current.Id|
    |Connector|[myRule_4_A2](#myrule_4_a2)|
    
    
    ### myRule_55_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Prior Reminder Auto|
    |Action Type|Email Alert|
    |Action Name|Compliance__c.Compliance_ADP_ACP_Testing_Reminder_Prior_Auto|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Compliance__c.Compliance_ADP_ACP_Testing_Reminder_Prior_Auto|
    |Email Alert Selection (PM)|Compliance_ADP_ACP_Testing_Reminder_Prior_Auto|
    | SObject Row Id (input)|myVariable_current.Id|
    |Connector|[myRule_55_A2](#myrule_55_a2)|
    
    
    ### myRule_7_A1
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Action Call|
    |Label|Send Failed Prior Year Alert|
    |Action Type|Email Alert|
    |Action Name|Compliance__c.Compliance_ADP_ACP_Testing_Failed_Prior|
    |Flow Transaction Model|CurrentTransaction|
    |Name Segment|Compliance__c.Compliance_ADP_ACP_Testing_Failed_Prior|
    |Email Alert Selection (PM)|Compliance_ADP_ACP_Testing_Failed_Prior|
    | SObject Row Id (input)|myVariable_current.Id|
    |Connector|[myRule_7_A2](#myrule_7_a2)|
    
    
    ### isChangedDecision12_myRule_11_Census_Last_Received_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision12_myRule_11_Census_Last_Received_c](#ischangeddecision12_myrule_11_census_last_received_c)|
    |Default Connector|[isChangedDecision16_myRule_15_Census_Last_Received_c](#ischangeddecision16_myrule_15_census_last_received_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_12_myRule_11_Census_Last_Received_c (isChangedRule_12_myRule_11_Census_Last_Received_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision16_myRule_15_Census_Last_Received_c](#ischangeddecision16_myrule_15_census_last_received_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Census_Last_Received__c| Not Equal To|myVariable_current.Census_Last_Received__c|
    
    
    
    
    ### isChangedDecision16_myRule_15_Census_Last_Received_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision16_myRule_15_Census_Last_Received_c](#ischangeddecision16_myrule_15_census_last_received_c)|
    |Default Connector|[isChangedDecision20_myRule_19_Census_Last_Received_c](#ischangeddecision20_myrule_19_census_last_received_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_16_myRule_15_Census_Last_Received_c (isChangedRule_16_myRule_15_Census_Last_Received_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision20_myRule_19_Census_Last_Received_c](#ischangeddecision20_myrule_19_census_last_received_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Census_Last_Received__c| Not Equal To|myVariable_current.Census_Last_Received__c|
    
    
    
    
    ### isChangedDecision20_myRule_19_Census_Last_Received_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision20_myRule_19_Census_Last_Received_c](#ischangeddecision20_myrule_19_census_last_received_c)|
    |Default Connector|[isChangedDecision24_myRule_23_Census_Last_Received_c](#ischangeddecision24_myrule_23_census_last_received_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_20_myRule_19_Census_Last_Received_c (isChangedRule_20_myRule_19_Census_Last_Received_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision24_myRule_23_Census_Last_Received_c](#ischangeddecision24_myrule_23_census_last_received_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Census_Last_Received__c| Not Equal To|myVariable_current.Census_Last_Received__c|
    
    
    
    
    ### isChangedDecision24_myRule_23_Census_Last_Received_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision24_myRule_23_Census_Last_Received_c](#ischangeddecision24_myrule_23_census_last_received_c)|
    |Default Connector|[isChangedDecision28_myRule_27_Census_Last_Received_c](#ischangeddecision28_myrule_27_census_last_received_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_24_myRule_23_Census_Last_Received_c (isChangedRule_24_myRule_23_Census_Last_Received_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision28_myRule_27_Census_Last_Received_c](#ischangeddecision28_myrule_27_census_last_received_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Census_Last_Received__c| Not Equal To|myVariable_current.Census_Last_Received__c|
    
    
    
    
    ### isChangedDecision28_myRule_27_Census_Last_Received_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision28_myRule_27_Census_Last_Received_c](#ischangeddecision28_myrule_27_census_last_received_c)|
    |Default Connector|[isChangedDecision32_myRule_31_X1st_Reminder_Sent_c](#ischangeddecision32_myrule_31_x1st_reminder_sent_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_28_myRule_27_Census_Last_Received_c (isChangedRule_28_myRule_27_Census_Last_Received_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision32_myRule_31_X1st_Reminder_Sent_c](#ischangeddecision32_myrule_31_x1st_reminder_sent_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Census_Last_Received__c| Not Equal To|myVariable_current.Census_Last_Received__c|
    
    
    
    
    ### isChangedDecision2_myRule_1_Census_Verification_Email_Sent_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision2_myRule_1_Census_Verification_Email_Sent_c](#ischangeddecision2_myrule_1_census_verification_email_sent_c)|
    |Default Connector|[isChangedDecision5_myRule_4_Census_Verification_Email_Reminder_c](#ischangeddecision5_myrule_4_census_verification_email_reminder_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_2_myRule_1_Census_Verification_Email_Sent_c (isChangedRule_2_myRule_1_Census_Verification_Email_Sent_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision5_myRule_4_Census_Verification_Email_Reminder_c](#ischangeddecision5_myrule_4_census_verification_email_reminder_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Census_Verification_Email_Sent__c| Not Equal To|myVariable_current.Census_Verification_Email_Sent__c|
    
    
    
    
    ### isChangedDecision32_myRule_31_X1st_Reminder_Sent_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision32_myRule_31_X1st_Reminder_Sent_c](#ischangeddecision32_myrule_31_x1st_reminder_sent_c)|
    |Default Connector|[isChangedDecision34_myRule_31_X2nd_Reminder_Sent_c](#ischangeddecision34_myrule_31_x2nd_reminder_sent_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_32_myRule_31_X1st_Reminder_Sent_c (isChangedRule_32_myRule_31_X1st_Reminder_Sent_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision34_myRule_31_X2nd_Reminder_Sent_c](#ischangeddecision34_myrule_31_x2nd_reminder_sent_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.X1st_Reminder_Sent__c| Not Equal To|myVariable_current.X1st_Reminder_Sent__c|
    
    
    
    
    ### isChangedDecision34_myRule_31_X2nd_Reminder_Sent_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision34_myRule_31_X2nd_Reminder_Sent_c](#ischangeddecision34_myrule_31_x2nd_reminder_sent_c)|
    |Default Connector|[isChangedDecision36_myRule_31_X3rd_Reminder_Sent_c](#ischangeddecision36_myrule_31_x3rd_reminder_sent_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_34_myRule_31_X2nd_Reminder_Sent_c (isChangedRule_34_myRule_31_X2nd_Reminder_Sent_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision36_myRule_31_X3rd_Reminder_Sent_c](#ischangeddecision36_myrule_31_x3rd_reminder_sent_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.X2nd_Reminder_Sent__c| Not Equal To|myVariable_current.X2nd_Reminder_Sent__c|
    
    
    
    
    ### isChangedDecision36_myRule_31_X3rd_Reminder_Sent_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision36_myRule_31_X3rd_Reminder_Sent_c](#ischangeddecision36_myrule_31_x3rd_reminder_sent_c)|
    |Default Connector|[isChangedDecision40_myRule_39_X1st_Reminder_Sent_c](#ischangeddecision40_myrule_39_x1st_reminder_sent_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_36_myRule_31_X3rd_Reminder_Sent_c (isChangedRule_36_myRule_31_X3rd_Reminder_Sent_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision40_myRule_39_X1st_Reminder_Sent_c](#ischangeddecision40_myrule_39_x1st_reminder_sent_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.X3rd_Reminder_Sent__c| Not Equal To|myVariable_current.X3rd_Reminder_Sent__c|
    
    
    
    
    ### isChangedDecision40_myRule_39_X1st_Reminder_Sent_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision40_myRule_39_X1st_Reminder_Sent_c](#ischangeddecision40_myrule_39_x1st_reminder_sent_c)|
    |Default Connector|[isChangedDecision42_myRule_39_X2nd_Reminder_Sent_c](#ischangeddecision42_myrule_39_x2nd_reminder_sent_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_40_myRule_39_X1st_Reminder_Sent_c (isChangedRule_40_myRule_39_X1st_Reminder_Sent_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision42_myRule_39_X2nd_Reminder_Sent_c](#ischangeddecision42_myrule_39_x2nd_reminder_sent_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.X1st_Reminder_Sent__c| Not Equal To|myVariable_current.X1st_Reminder_Sent__c|
    
    
    
    
    ### isChangedDecision42_myRule_39_X2nd_Reminder_Sent_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision42_myRule_39_X2nd_Reminder_Sent_c](#ischangeddecision42_myrule_39_x2nd_reminder_sent_c)|
    |Default Connector|[isChangedDecision44_myRule_39_X3rd_Reminder_Sent_c](#ischangeddecision44_myrule_39_x3rd_reminder_sent_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_42_myRule_39_X2nd_Reminder_Sent_c (isChangedRule_42_myRule_39_X2nd_Reminder_Sent_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision44_myRule_39_X3rd_Reminder_Sent_c](#ischangeddecision44_myrule_39_x3rd_reminder_sent_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.X2nd_Reminder_Sent__c| Not Equal To|myVariable_current.X2nd_Reminder_Sent__c|
    
    
    
    
    ### isChangedDecision44_myRule_39_X3rd_Reminder_Sent_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision44_myRule_39_X3rd_Reminder_Sent_c](#ischangeddecision44_myrule_39_x3rd_reminder_sent_c)|
    |Default Connector|[isChangedDecision48_myRule_47_X1st_Reminder_Sent_c](#ischangeddecision48_myrule_47_x1st_reminder_sent_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_44_myRule_39_X3rd_Reminder_Sent_c (isChangedRule_44_myRule_39_X3rd_Reminder_Sent_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision48_myRule_47_X1st_Reminder_Sent_c](#ischangeddecision48_myrule_47_x1st_reminder_sent_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.X3rd_Reminder_Sent__c| Not Equal To|myVariable_current.X3rd_Reminder_Sent__c|
    
    
    
    
    ### isChangedDecision48_myRule_47_X1st_Reminder_Sent_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision48_myRule_47_X1st_Reminder_Sent_c](#ischangeddecision48_myrule_47_x1st_reminder_sent_c)|
    |Default Connector|[isChangedDecision50_myRule_47_X2nd_Reminder_Sent_c](#ischangeddecision50_myrule_47_x2nd_reminder_sent_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_48_myRule_47_X1st_Reminder_Sent_c (isChangedRule_48_myRule_47_X1st_Reminder_Sent_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision50_myRule_47_X2nd_Reminder_Sent_c](#ischangeddecision50_myrule_47_x2nd_reminder_sent_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.X1st_Reminder_Sent__c| Not Equal To|myVariable_current.X1st_Reminder_Sent__c|
    
    
    
    
    ### isChangedDecision50_myRule_47_X2nd_Reminder_Sent_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision50_myRule_47_X2nd_Reminder_Sent_c](#ischangeddecision50_myrule_47_x2nd_reminder_sent_c)|
    |Default Connector|[isChangedDecision52_myRule_47_X3rd_Reminder_Sent_c](#ischangeddecision52_myrule_47_x3rd_reminder_sent_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_50_myRule_47_X2nd_Reminder_Sent_c (isChangedRule_50_myRule_47_X2nd_Reminder_Sent_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision52_myRule_47_X3rd_Reminder_Sent_c](#ischangeddecision52_myrule_47_x3rd_reminder_sent_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.X2nd_Reminder_Sent__c| Not Equal To|myVariable_current.X2nd_Reminder_Sent__c|
    
    
    
    
    ### isChangedDecision52_myRule_47_X3rd_Reminder_Sent_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision52_myRule_47_X3rd_Reminder_Sent_c](#ischangeddecision52_myrule_47_x3rd_reminder_sent_c)|
    |Default Connector|[isChangedDecision56_myRule_55_X1st_Reminder_Sent_c](#ischangeddecision56_myrule_55_x1st_reminder_sent_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_52_myRule_47_X3rd_Reminder_Sent_c (isChangedRule_52_myRule_47_X3rd_Reminder_Sent_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision56_myRule_55_X1st_Reminder_Sent_c](#ischangeddecision56_myrule_55_x1st_reminder_sent_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.X3rd_Reminder_Sent__c| Not Equal To|myVariable_current.X3rd_Reminder_Sent__c|
    
    
    
    
    ### isChangedDecision56_myRule_55_X1st_Reminder_Sent_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision56_myRule_55_X1st_Reminder_Sent_c](#ischangeddecision56_myrule_55_x1st_reminder_sent_c)|
    |Default Connector|[isChangedDecision58_myRule_55_X2nd_Reminder_Sent_c](#ischangeddecision58_myrule_55_x2nd_reminder_sent_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_56_myRule_55_X1st_Reminder_Sent_c (isChangedRule_56_myRule_55_X1st_Reminder_Sent_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision58_myRule_55_X2nd_Reminder_Sent_c](#ischangeddecision58_myrule_55_x2nd_reminder_sent_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.X1st_Reminder_Sent__c| Not Equal To|myVariable_current.X1st_Reminder_Sent__c|
    
    
    
    
    ### isChangedDecision58_myRule_55_X2nd_Reminder_Sent_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision58_myRule_55_X2nd_Reminder_Sent_c](#ischangeddecision58_myrule_55_x2nd_reminder_sent_c)|
    |Default Connector|[isChangedDecision60_myRule_55_X3rd_Reminder_Sent_c](#ischangeddecision60_myrule_55_x3rd_reminder_sent_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_58_myRule_55_X2nd_Reminder_Sent_c (isChangedRule_58_myRule_55_X2nd_Reminder_Sent_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision60_myRule_55_X3rd_Reminder_Sent_c](#ischangeddecision60_myrule_55_x3rd_reminder_sent_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.X2nd_Reminder_Sent__c| Not Equal To|myVariable_current.X2nd_Reminder_Sent__c|
    
    
    
    
    ### isChangedDecision5_myRule_4_Census_Verification_Email_Reminder_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision5_myRule_4_Census_Verification_Email_Reminder_c](#ischangeddecision5_myrule_4_census_verification_email_reminder_c)|
    |Default Connector|[isChangedDecision8_myRule_7_Census_Last_Received_c](#ischangeddecision8_myrule_7_census_last_received_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_5_myRule_4_Census_Verification_Email_Reminder_c (isChangedRule_5_myRule_4_Census_Verification_Email_Reminder_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision8_myRule_7_Census_Last_Received_c](#ischangeddecision8_myrule_7_census_last_received_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Census_Verification_Email_Reminder__c| Not Equal To|myVariable_current.Census_Verification_Email_Reminder__c|
    
    
    
    
    ### isChangedDecision60_myRule_55_X3rd_Reminder_Sent_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision60_myRule_55_X3rd_Reminder_Sent_c](#ischangeddecision60_myrule_55_x3rd_reminder_sent_c)|
    |Default Connector|[myDecision](#mydecision)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_60_myRule_55_X3rd_Reminder_Sent_c (isChangedRule_60_myRule_55_X3rd_Reminder_Sent_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myDecision](#mydecision)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.X3rd_Reminder_Sent__c| Not Equal To|myVariable_current.X3rd_Reminder_Sent__c|
    
    
    
    
    ### isChangedDecision8_myRule_7_Census_Last_Received_c
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[isChangedDecision8_myRule_7_Census_Last_Received_c](#ischangeddecision8_myrule_7_census_last_received_c)|
    |Default Connector|[isChangedDecision12_myRule_11_Census_Last_Received_c](#ischangeddecision12_myrule_11_census_last_received_c)|
    |Default Connector Label|default|
    
    
    #### Rule isChangedRule_8_myRule_7_Census_Last_Received_c (isChangedRule_8_myRule_7_Census_Last_Received_c)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[isChangedDecision12_myRule_11_Census_Last_Received_c](#ischangeddecision12_myrule_11_census_last_received_c)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_old| Is Null|⬜|
    |2|myVariable_old.Census_Last_Received__c| Not Equal To|myVariable_current.Census_Last_Received__c|
    
    
    
    
    ### myDecision
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision](#mydecision)|
    |Default Connector|[myDecision3](#mydecision3)|
    |Default Connector Label|default|
    |Index (PM)|numberValue: 0<br/>|
    
    
    #### Rule myRule_1 (Census Verification)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_1_A1](#myrule_1_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|isChangedRule_2_myRule_1_Census_Verification_Email_Sent_c| Equal To|✅|
    |2|myVariable_current.Census_Verification_Email_Sent__c| Is Null|⬜|
    
    
    
    
    ### myDecision10
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision10](#mydecision10)|
    |Default Connector|[myDecision14](#mydecision14)|
    |Default Connector Label|default|
    |Index (PM)|3|
    
    
    #### Rule myRule_11 (ADP ACP | Failed Current Year Test)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_11_A1](#myrule_11_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Testing_Method__c| Equal To|CURRENT|
    |2|myVariable_current.Status__c| Equal To|Fail|
    |3|myVariable_current.RecordTypeId| Equal To|01237000000N0luAAC|
    |4|isChangedRule_12_myRule_11_Census_Last_Received_c| Equal To|✅|
    |5|myVariable_current.Census_Last_Received__c| Equal To|formula_13_myRule_11_0737319545|
    |6|myVariable_current.Auto_Enrollment__c| Equal To|No|
    
    
    
    
    ### myDecision14
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision14](#mydecision14)|
    |Default Connector|[myDecision18](#mydecision18)|
    |Default Connector Label|default|
    |Index (PM)|4|
    
    
    #### Rule myRule_15 (ADP ACP | Failed Deemed Pass)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_15_A1](#myrule_15_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.RecordTypeId| Equal To|01237000000N0luAAC|
    |2|myVariable_current.Status__c| Equal To|Deemed|
    |3|isChangedRule_16_myRule_15_Census_Last_Received_c| Equal To|✅|
    |4|myVariable_current.Census_Last_Received__c| Equal To|formula_17_myRule_15_2401740075|
    
    
    
    
    ### myDecision18
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision18](#mydecision18)|
    |Default Connector|[myDecision22](#mydecision22)|
    |Default Connector Label|default|
    |Index (PM)|5|
    
    
    #### Rule myRule_19 (ADP ACP | Passed)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_19_A1](#myrule_19_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.RecordTypeId| Equal To|01237000000N0luAAC|
    |2|myVariable_current.Status__c| Equal To|Pass|
    |3|isChangedRule_20_myRule_19_Census_Last_Received_c| Equal To|✅|
    |4|myVariable_current.Census_Last_Received__c| Equal To|formula_21_myRule_19_8917899713|
    
    
    
    
    ### myDecision22
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision22](#mydecision22)|
    |Default Connector|[myDecision26](#mydecision26)|
    |Default Connector Label|default|
    |Index (PM)|6|
    
    
    #### Rule myRule_23 (ADP ACP | Auto Enroll Failed Prior Year)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_23_A1](#myrule_23_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Testing_Method__c| Equal To|PRIOR|
    |2|myVariable_current.RecordTypeId| Equal To|01237000000N0luAAC|
    |3|myVariable_current.Status__c| Equal To|Fail|
    |4|isChangedRule_24_myRule_23_Census_Last_Received_c| Equal To|✅|
    |5|myVariable_current.Census_Last_Received__c| Equal To|formula_25_myRule_23_7027440289|
    |6|myVariable_current.Auto_Enrollment__c| Equal To|Yes|
    
    
    
    
    ### myDecision26
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision26](#mydecision26)|
    |Default Connector|[myDecision30](#mydecision30)|
    |Default Connector Label|default|
    |Index (PM)|7|
    
    
    #### Rule myRule_27 (ADP ACP | Auto Enroll Failed Current Year)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_27_A1](#myrule_27_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Testing_Method__c| Equal To|CURRENT|
    |2|myVariable_current.RecordTypeId| Equal To|01237000000N0luAAC|
    |3|myVariable_current.Status__c| Equal To|Fail|
    |4|isChangedRule_28_myRule_27_Census_Last_Received_c| Equal To|✅|
    |5|myVariable_current.Census_Last_Received__c| Equal To|formula_29_myRule_27_7385587991|
    |6|myVariable_current.Auto_Enrollment__c| Equal To|Yes|
    
    
    
    
    ### myDecision3
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision3](#mydecision3)|
    |Default Connector|[myDecision6](#mydecision6)|
    |Default Connector Label|default|
    |Index (PM)|1|
    
    
    #### Rule myRule_4 (Census Verification Reminder)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_4_A1](#myrule_4_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.Census_Verification_Email_Reminder__c| Is Null|⬜|
    |2|isChangedRule_5_myRule_4_Census_Verification_Email_Reminder_c| Equal To|✅|
    
    
    
    
    ### myDecision30
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision30](#mydecision30)|
    |Default Connector|[myDecision38](#mydecision38)|
    |Default Connector Label|default|
    |Index (PM)|8|
    
    
    #### Rule myRule_31 (ADP ACP | Reminder - Current)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_31_A1](#myrule_31_a1)|
    |Condition Logic|1 AND 2 AND 3 AND 6 AND 7 AND (((4 AND 5) OR (8 AND 9) OR (10 AND 11)))|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.RecordTypeId| Equal To|01237000000N0luAAC|
    |2|myVariable_current.Testing_Method__c| Equal To|CURRENT|
    |3|myVariable_current.Status__c| Equal To|Fail|
    |4|isChangedRule_32_myRule_31_X1st_Reminder_Sent_c| Equal To|✅|
    |5|myVariable_current.X1st_Reminder_Sent__c| Equal To|formula_33_myRule_31_8133342841|
    |6|myVariable_current.Auto_Enrollment__c| Equal To|No|
    |7|myVariable_current.Correction_Method_Selected__c| Equal To|N/A|
    |8|isChangedRule_34_myRule_31_X2nd_Reminder_Sent_c| Equal To|✅|
    |9|myVariable_current.X2nd_Reminder_Sent__c| Equal To|formula_35_myRule_31_1458098697|
    |10|isChangedRule_36_myRule_31_X3rd_Reminder_Sent_c| Equal To|✅|
    |11|myVariable_current.X3rd_Reminder_Sent__c| Equal To|formula_37_myRule_31_8727657812|
    
    
    
    
    ### myDecision38
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision38](#mydecision38)|
    |Default Connector|[myDecision46](#mydecision46)|
    |Default Connector Label|default|
    |Index (PM)|9|
    
    
    #### Rule myRule_39 (ADP ACP | Reminder - Current Auto)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_39_A1](#myrule_39_a1)|
    |Condition Logic|1 AND 2 AND 3 AND 4 AND 5 AND ((6 AND 7) OR (8 AND 9) OR (10 AND 11))|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.RecordTypeId| Equal To|01237000000N0luAAC|
    |2|myVariable_current.Testing_Method__c| Equal To|CURRENT|
    |3|myVariable_current.Status__c| Equal To|Fail|
    |4|myVariable_current.Auto_Enrollment__c| Equal To|Yes|
    |5|myVariable_current.Correction_Method_Selected__c| Equal To|N/A|
    |6|isChangedRule_40_myRule_39_X1st_Reminder_Sent_c| Equal To|✅|
    |7|myVariable_current.X1st_Reminder_Sent__c| Equal To|formula_41_myRule_39_1529873565|
    |8|isChangedRule_42_myRule_39_X2nd_Reminder_Sent_c| Equal To|✅|
    |9|myVariable_current.X2nd_Reminder_Sent__c| Equal To|formula_43_myRule_39_4336761787|
    |10|isChangedRule_44_myRule_39_X3rd_Reminder_Sent_c| Equal To|✅|
    |11|myVariable_current.X3rd_Reminder_Sent__c| Equal To|formula_45_myRule_39_4229390134|
    
    
    
    
    ### myDecision46
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision46](#mydecision46)|
    |Default Connector|[myDecision54](#mydecision54)|
    |Default Connector Label|default|
    |Index (PM)|10|
    
    
    #### Rule myRule_47 (ADP ACP | Reminder - Prior)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_47_A1](#myrule_47_a1)|
    |Condition Logic|1 AND 2 AND 3 AND 4 AND 5 AND (((6 AND 7) OR (8 AND 9) OR (10 AND 11)))|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.RecordTypeId| Equal To|01237000000N0luAAC|
    |2|myVariable_current.Testing_Method__c| Equal To|PRIOR|
    |3|myVariable_current.Correction_Method_Selected__c| Equal To|N/A|
    |4|myVariable_current.Auto_Enrollment__c| Equal To|No|
    |5|myVariable_current.Status__c| Equal To|Fail|
    |6|isChangedRule_48_myRule_47_X1st_Reminder_Sent_c| Equal To|✅|
    |7|myVariable_current.X1st_Reminder_Sent__c| Equal To|formula_49_myRule_47_8249020579|
    |8|isChangedRule_50_myRule_47_X2nd_Reminder_Sent_c| Equal To|✅|
    |9|myVariable_current.X2nd_Reminder_Sent__c| Equal To|formula_51_myRule_47_1432238333|
    |10|isChangedRule_52_myRule_47_X3rd_Reminder_Sent_c| Equal To|✅|
    |11|myVariable_current.X3rd_Reminder_Sent__c| Equal To|formula_53_myRule_47_0120894525|
    
    
    
    
    ### myDecision54
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision54](#mydecision54)|
    |Default Connector Label|default|
    |Index (PM)|11|
    
    
    #### Rule myRule_55 (ADP ACP | Reminder Prior Auto)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_55_A1](#myrule_55_a1)|
    |Condition Logic|1 AND 2 AND 3 AND 4 AND 11 AND ((5 AND 6) OR (7 AND 8) OR (9 AND 10))|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.RecordTypeId| Equal To|01237000000N0luAAC|
    |2|myVariable_current.Testing_Method__c| Equal To|PRIOR|
    |3|myVariable_current.Status__c| Equal To|Fail|
    |4|myVariable_current.Auto_Enrollment__c| Equal To|Yes|
    |5|isChangedRule_56_myRule_55_X1st_Reminder_Sent_c| Equal To|✅|
    |6|myVariable_current.X1st_Reminder_Sent__c| Equal To|formula_57_myRule_55_8043475221|
    |7|isChangedRule_58_myRule_55_X2nd_Reminder_Sent_c| Equal To|✅|
    |8|myVariable_current.X2nd_Reminder_Sent__c| Equal To|formula_59_myRule_55_1242003495|
    |9|isChangedRule_60_myRule_55_X3rd_Reminder_Sent_c| Equal To|✅|
    |10|myVariable_current.X3rd_Reminder_Sent__c| Equal To|formula_61_myRule_55_9159835567|
    |11|myVariable_current.Correction_Method_Selected__c| Equal To|N/A|
    
    
    
    
    ### myDecision6
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Decision|
    |Label|[myDecision6](#mydecision6)|
    |Default Connector|[myDecision10](#mydecision10)|
    |Default Connector Label|default|
    |Index (PM)|2|
    
    
    #### Rule myRule_7 (ADP ACP | Failed Prior Year Test)
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Connector|[myRule_7_A1](#myrule_7_a1)|
    |Condition Logic|and|
    
    
    
    
    |Condition Id|Left Value Reference|Operator|Right Value|
    |:-- |:-- |:--:|:--: |
    |1|myVariable_current.RecordTypeId| Equal To|01237000000N0luAAC|
    |2|myVariable_current.Testing_Method__c| Equal To|PRIOR|
    |3|myVariable_current.Status__c| Equal To|Fail|
    |4|isChangedRule_8_myRule_7_Census_Last_Received_c| Equal To|✅|
    |5|myVariable_current.Census_Last_Received__c| Equal To|formula_9_myRule_7_0510988534|
    |6|myVariable_current.Auto_Enrollment__c| Equal To|No|
    
    
    
    
    ### myRule_11_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|EmailMessage|
    |Label|Create Failed Current Year Email Log|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |RelatedToId|myVariable_current.Id|
    |Status|3|
    |Subject|Annual Test Requires Attention|
    |TextBody|Census Verification Notice | Ubiquity Retirement + Savings  Click here to view the web version of this email.  Hello Plan Sponsor,  Thank you for verifying you 2020 census information. Your 401(k) plan has been tested for non-discrimination* and requires action by March 9, 2021!  Next Steps:  Reply to this email with: "Issue refunds to my Highly Compensated Employees," by March 9, 2021 to ensure refunds are processed by the IRS deadline.  OR  Contribute to the plan's eligible non-highly compensated employees by December 31, 2021.  If your test results contain inaccurate information, please resubmit your census online for re-testing. Remember, only eligible employees will appear on your test and compensation is capped at $285,000 for each individual.  To view your test results and individual employee refunds:  Log into your account as the Employer Click on 401(k), then Overview. Scroll to the bottom of the page and click on Non-Discrimination Test Results 2020 to download and view your results.   To learn more, watch our testing video or review Frequently Asked Questions.  For more information on Top Heavy* next steps click here.  As always, please feel free to call 855.401.4357 or reply to this email with any questions.  *Disclaimer: Client (plan sponsor) is solely responsible for ensuring that members controlled or an affiliated service group that are NOT included in the plan held with Ubiquity are tested for non-discrimination purposes.  Thank you, Your Compliance Team Ubiquity Retirement + Savings  PHONE: 855.401.4357 EMAIL: support@myubiquity.com  Copyright ©2021 Ubiquity Retirement + Savings You have received this e-mail because it contains important administration information. You may unsubscribe, but you will no longer receive important updates to your plan(s) via email.  Our mailing address is: 44 Montgomery Street, Suite 3060 San Francisco, CA 94104  Privacy, Security, & Terms|
    |ToAddress|myVariable_current.Primary_Plan_Sponsor_Email__c|
    
    
    
    
    ### myRule_15_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|EmailMessage|
    |Label|Create Failed Deemed Passed Email Log|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |RelatedToId|myVariable_current.Id|
    |Status|3|
    |Subject|Annual Test Requires Attention!|
    |TextBody|Census Verification Notice | Ubiquity Retirement + Savings  Click here to view the web version of this email.  Hello Plan Sponsor,  Thank you for verifying you 2020 census information. Your 401(k) plan has been tested for non-discrimination* and requires no further action!  Why? Your plan is deemed to pass the 2020 non-discrimination test because all or some of your highly compensated employees were over age 50 so their excess contributions were re-characterized as catch-up contributions.   If your test results contain inaccurate information, please resubmit your census online for re-testing. Remember, only eligible employees will appear on your test and compensation is capped at $285,000 for each individual.  To view your test results:  Log into your account as the Employer Click on 401(k), then Overview. Scroll to the bottom of the page and click on Non-Discrimination Test Results 2020 to download and view your results.   To learn more, watch our testing video or review Frequently Asked Questions.  For more information on Top Heavy* next steps click here.  As always, please feel free to call 855.401.4357 or reply to this email with any questions.  *Disclaimer: Client (plan sponsor) is solely responsible for ensuring that members controlled or an affiliated service group that are NOT included in the plan held with Ubiquity are tested for non-discrimination purposes.  Thank you, Your Compliance Team Ubiquity Retirement + Savings  PHONE: 855.401.4357 EMAIL: support@myubiquity.com  Copyright ©2021 Ubiquity Retirement + Savings You have received this e-mail because it contains important administration information. You may unsubscribe, but you will no longer receive important updates to your plan(s) via email.  Our mailing address is: 44 Montgomery Street, Suite 3060 San Francisco, CA 94104  Privacy, Security, & Terms  Hello Plan Sponsor,  Thank you for verifying your 2019 census information. Your 401(k) plan has been tested for non-discrimination and  requires no further action!   Why? Your plan is deemed to pass the 2019 non-discrimination test because all or some of your highly compensated employees were over age 50 and their excess contributions were re-characterized as catch -up contributions.  If your test results contain inaccurate information, please resubmit your census online for re-testing. Remember, only eligible employees will appear on your test and compensation is capped at $280,000 for each individual.  To view your test results:  Log into your account as the Employer Click on 401(k), then Overview. Scroll to the bottom of the page and click on Non-Discrimination Test Results 2019 to download and view your results   To learn more, watch our testing video or review Frequently Asked Questions.  As always, please feel free to call 855.401.4357 or reply to this email with any questions.  Thank you, Your Compliance Team Ubiquity Retirement + Savings  PHONE: 855.401.4357 EMAIL: support@myubiquity.com  Copyright ©2020 Ubiquity Retirement + Savings You have received this e-mail because it contains important administration information. You may unsubscribe, but you will no longer receive important updates to your plan(s) via email.  Our mailing address is: 44 Montgomery Street, Suite 3060 San Francisco, CA 94104  Privacy, Security, & Terms|
    |ToAddress|myVariable_current.Primary_Plan_Sponsor_Email__c|
    
    
    
    
    ### myRule_19_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|EmailMessage|
    |Label|Create Passed Email Log|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |RelatedToId|myVariable_current.Id|
    |Status|3|
    |Subject|Test Results Are Available!|
    |TextBody|Census Verification Notice | Ubiquity Retirement + Savings  Click here to view the web version of this email.  Hello Plan Sponsor,  Thank you for verifying you 2020 census information. Your 401(k) plan has passed non-discrimination* tests and requires no further action!   If your test results contain inaccurate information, please resubmit your census online for re-testing. Remember, only eligible employees will appear on your test and compensation is capped at $285,000 for each individual.  To view your test results:  Log into your account as the Employer Click on 401(k), then Overview. Scroll to the bottom of the page and click on Non-Discrimination Test Results 2020 to download and view your results.   To learn more, watch our testing video or review Frequently Asked Questions.  For more information on Top Heavy* next steps click here.  As always, please feel free to call 855.401.4357 or reply to this email with any questions.  *Disclaimer: Client (plan sponsor) is solely responsible for ensuring that members controlled or an affiliated service group that are NOT included in the plan held with Ubiquity are tested for non-discrimination purposes.  Thank you, Your Compliance Team Ubiquity Retirement + Savings  PHONE: 855.401.4357 EMAIL: support@myubiquity.com  Copyright ©2021 Ubiquity Retirement + Savings You have received this e-mail because it contains important administration information. You may unsubscribe, but you will no longer receive important updates to your plan(s) via email.  Our mailing address is: 44 Montgomery Street, Suite 3060 San Francisco, CA 94104  Privacy, Security, & Terms  Hello Plan Sponsor,  Thank you for verifying your 2019 census information. Your 401(k) plan has been tested for non-discrimination and  requires no further action!   Why? Your plan is deemed to pass the 2019 non-discrimination test because all or some of your highly compensated employees were over age 50 and their excess contributions were re-characterized as catch -up contributions.  If your test results contain inaccurate information, please resubmit your census online for re-testing. Remember, only eligible employees will appear on your test and compensation is capped at $280,000 for each individual.  To view your test results:  Log into your account as the Employer Click on 401(k), then Overview. Scroll to the bottom of the page and click on Non-Discrimination Test Results 2019 to download and view your results   To learn more, watch our testing video or review Frequently Asked Questions.  As always, please feel free to call 855.401.4357 or reply to this email with any questions.  Thank you, Your Compliance Team Ubiquity Retirement + Savings  PHONE: 855.401.4357 EMAIL: support@myubiquity.com  Copyright ©2020 Ubiquity Retirement + Savings You have received this e-mail because it contains important administration information. You may unsubscribe, but you will no longer receive important updates to your plan(s) via email.  Our mailing address is: 44 Montgomery Street, Suite 3060 San Francisco, CA 94104  Privacy, Security, & Terms|
    |ToAddress|myVariable_current.Primary_Plan_Sponsor_Email__c|
    
    
    
    
    ### myRule_1_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|EmailMessage|
    |Label|Create Census Verification email record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |RelatedToId|myVariable_current.Id|
    |Status|3|
    |Subject|Verify your 2021 Census!|
    |TextBody|Census Verification Notice | Ubiquity Retirement + Savings  Verifying your Census  It’s time to verify the accuracy of your 2021 401(k) census for annual compliance testing purposes. Regulations set forth by ERISA requires your plan to be annually tested for non-discrimination. This requires you, as fiduciary, to verify your plan’s census is accurate.    Deadline to complete census verification: February 18, 2022.  Ubiquity created this instructional video to walk you through this short process.  Here's what you need to do next:  Log into your account as the Employer Click Verify My 2021 Census on your dashboard Review and confirm that the information matches your 2021 employee W-2s and employee demographics – add or make adjustments as necessary and click "Submit."  Get Started   Has your organization been acquired, merged with another entity, or acquired another company? You may be part of a controlled group. If you have not notified Ubiquity of these changes, please reply to this email letting us know been acquired, merged with another entity, or acquired another company.  We appreciate your attention to this necessary task! We are here for any questions you may have.  Thank you, Your Compliance Team Ubiquity Retirement + Savings  PHONE: 855.401.4357 EMAIL: support@myubiquity.com  Copyright ©2021 Ubiquity Retirement + Savings You have received this e-mail because it contains important administration information. You may unsubscribe, but you will no longer receive important updates to your plan(s) via email.  Our mailing address is: 44 Montgomery Street, Suite 3060 San Francisco, CA 94104  Privacy, Security, & Terms|
    |ToAddress|myVariable_current.Primary_Plan_Sponsor_Email__c|
    
    
    
    
    ### myRule_23_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|EmailMessage|
    |Label|Create AE Failed Prior Year Email Log|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |RelatedToId|myVariable_current.Id|
    |Status|3|
    |Subject|Plan Requires Attention|
    |TextBody|Census Verification Notice | Ubiquity Retirement + Savings  Click here to view the web version of this email.  Hello Plan Sponsor,  Thank you for verifying you 2020 census information. Your 401(k) plan has been tested for non-discrimination* and requires action by June 22, 2021!  Next Steps:  Reply to this email with: "Issue refunds to my Highly Compensated Employees," by June 22, 2021 to ensure refunds are processed by the IRS deadline.   If your test results contain inaccurate information, please resubmit your census online for re-testing. Remember, only eligible employees will appear on your test and compensation is capped at $285,000 for each individual.  To view your test results and individual employee refunds:  Log into your account as the Employer Click on 401(k), then Overview. Scroll to the bottom of the page and click on Non-Discrimination Test Results 2020 to download and view your results.   To learn more, watch our testing video or review Frequently Asked Questions.  For more information on Top Heavy* next steps click here.  As always, please feel free to call 855.401.4357 or reply to this email with any questions.  *Disclaimer: Client (plan sponsor) is solely responsible for ensuring that members controlled or an affiliated service group that are NOT included in the plan held with Ubiquity are tested for non-discrimination purposes.   Thank you, Your Compliance Team Ubiquity Retirement + Savings  PHONE: 855.401.4357 EMAIL: support@myubiquity.com  Copyright ©2021 Ubiquity Retirement + Savings You have received this e-mail because it contains important administration information. You may unsubscribe, but you will no longer receive important updates to your plan(s) via email.  Our mailing address is: 44 Montgomery Street, Suite 3060 San Francisco, CA 94104  Privacy, Security, & Terms|
    |ToAddress|myVariable_current.Primary_Plan_Sponsor_Email__c|
    
    
    
    
    ### myRule_27_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|EmailMessage|
    |Label|Create AE Failed Current Year Email Log|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |RelatedToId|myVariable_current.Id|
    |Status|3|
    |Subject|Annual Test Requires Attention|
    |TextBody|Census Verification Notice | Ubiquity Retirement + Savings  Click here to view the web version of this email.  Hello Plan Sponsor,  Thank you for verifying you 2020 census information. Your 401(k) plan has been tested for non-discrimination* and requires action by June 22, 2021!  Next Steps:  Reply to this email with: "Issue refunds to my Highly Compensated Employees," by June 22, 2021 to ensure refunds are processed by the IRS deadline.  OR  Contribute to the plan's eligible non-highly compensated employees by December 31, 2021.  If your test results contain inaccurate information, please resubmit your census online for re-testing. Remember, only eligible employees will appear on your test and compensation is capped at $285,000 for each individual.  To view your test results and individual employee refunds:  Log into your account as the Employer Click on 401(k), then Overview. Scroll to the bottom of the page and click on Non-Discrimination Test Results 2020 to download and view your results.   To learn more, watch our testing video or review Frequently Asked Questions.  For more information on Top Heavy* next steps click here.  As always, please feel free to call 855.401.4357 or reply to this email with any questions.  *Disclaimer: Client (plan sponsor) is solely responsible for ensuring that members controlled or an affiliated service group that are NOT included in the plan held with Ubiquity are tested for non-discrimination purposes.  Thank you, Your Compliance Team Ubiquity Retirement + Savings  PHONE: 855.401.4357 EMAIL: support@myubiquity.com  Copyright ©2021 Ubiquity Retirement + Savings You have received this e-mail because it contains important administration information. You may unsubscribe, but you will no longer receive important updates to your plan(s) via email.  Our mailing address is: 44 Montgomery Street, Suite 3060 San Francisco, CA 94104  Privacy, Security, & Terms|
    |ToAddress|myVariable_current.Primary_Plan_Sponsor_Email__c|
    
    
    
    
    ### myRule_31_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|EmailMessage|
    |Label|Create Activity Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |RelatedToId|myVariable_current.Id|
    |Status|3|
    |Subject|Reminder - Plan Requires Attention|
    |TextBody|Hello Plan Sponsor,  Your 401(k) plan failed 2020 non-discrimination testing. The correction deadline is approaching, and we have not received your instructions to correct the test.  Next Steps:  Reply to this email with: "Issue refunds to my Highly Compensated Employees," and we'll take care of the rest.  OR  Contribute an additional  {QNEC AMOUNT} to the plan's eligible non-highly compensated employees by December 31, 2021  To process refunds before the deadline, please email us no later than 11AM PST on Tuesday, March 9, 2021. We are unable to ensure funds will be processed by the IRS deadline if instructions are received after 11 AM PT on March 9, 2021.   If your test results contain inaccurate information, please resubmit your census online for re-testing. Remember, only eligible employees will appear on your test and compensation is capped at $285,000 for each individual.  To view your test results and individual employee refunds:  Log into your account as the Employer Click on 401(k), then Overview. Scroll to the bottom of the page and click on Non-Discrimination Test Results 2020 to download and view your results.   To learn more, watch our testing video or review Frequently Asked Questions.  As always, please feel free to call 855.401.4357 or reply to this email with any questions.  *Disclaimer: Client (plan sponsor) is solely responsible for ensuring that members controlled or an affiliated service group that are NOT included in the plan held with Ubiquity are tested for non-discrimination purposes.  Thank you, Your Compliance Team Ubiquity Retirement + Savings  PHONE: 855.401.4357 EMAIL: support@myubiquity.com  Copyright ©2021 Ubiquity Retirement + Savings You have received this e-mail because it contains important administration information. You may unsubscribe, but you will no longer receive important updates to your plan(s) via email.  Our mailing address is: 44 Montgomery Street, Suite 3060 San Francisco, CA 94104  Privacy, Security, & Terms|
    |ToAddress|myVariable_current.Primary_Plan_Sponsor_Email__c|
    
    
    
    
    ### myRule_39_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|EmailMessage|
    |Label|Email copy|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |RelatedToId|myVariable_current.Id|
    |Status|3|
    |Subject|Reminder - Action Required on your plan|
    |TextBody|Hello Plan Sponsor,  Your 401(k) plan failed 2020 non-discrimination testing. The correction deadline is approaching, and we have not received your instructions to correct the test.  Next Steps:  Reply to this email with: "Issue refunds to my Highly Compensated Employees," and we'll take care of the rest.  OR  Contribute an additional  {QNEC AMOUNT} to the plan's eligible non-highly compensated employees by December 31, 2021  To process refunds before the deadline, please email us no later than 11AM PST on Tuesday, June 22, 2021. We are unable to ensure funds will be processed by the IRS deadline if instructions are received after 11 AM PT on June 22, 2021.   If your test results contain inaccurate information, please resubmit your census online for re-testing. Remember, only eligible employees will appear on your test and compensation is capped at $285,000 for each individual.  To view your test results and individual employee refunds:  Log into your account as the Employer Click on 401(k), then Overview. Scroll to the bottom of the page and click on Non-Discrimination Test Results 2020 to download and view your results.   To learn more, watch our testing video or review Frequently Asked Questions.  As always, please feel free to call 855.401.4357 or reply to this email with any questions.  *Disclaimer: Client (plan sponsor) is solely responsible for ensuring that members controlled or an affiliated service group that are NOT included in the plan held with Ubiquity are tested for non-discrimination purposes.  Thank you, Your Compliance Team Ubiquity Retirement + Savings  PHONE: 855.401.4357 EMAIL: support@myubiquity.com  Copyright ©2021 Ubiquity Retirement + Savings You have received this e-mail because it contains important administration information. You may unsubscribe, but you will no longer receive important updates to your plan(s) via email.  Our mailing address is: 44 Montgomery Street, Suite 3060 San Francisco, CA 94104  Privacy, Security, & Terms|
    |ToAddress|myVariable_current.Primary_Plan_Sponsor_Email__c|
    
    
    
    
    ### myRule_47_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|EmailMessage|
    |Label|Create Activity Record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |RelatedToId|myVariable_current.Id|
    |Status|3|
    |Subject|Reminder - Plan Requires Attention|
    |TextBody|Hello Plan Sponsor,  Your 401(k) plan still requires further action due to the results of your 2020 non-discrimination test.   Reply to this email with:"Refund my Highly Compensated Employees".   To process refunds before the deadline, please email us no later than 11AM PST on Tuesday, March 9, 2021. We are unable to ensure funds will be processed by the IRS deadline if instructions are received after 11 AM PT on March 9, 2021.   If your test results contain inaccurate information, please resubmit your census online for re-testing. Remember, only eligible employees will appear on your test and compensation is capped at $285,000 for each individual.  To view your test results and individual employee refunds:  Log into your account as the Employer Click on 401(k), then Overview. Scroll to the bottom of the page and click on Non-Discrimination Test Results 2020 to download and view your results.   To learn more, watch our testing video or review Frequently Asked Questions.  As always, please feel free to call 855.401.4357 or reply to this email with any questions.  *Disclaimer: Client (plan sponsor) is solely responsible for ensuring that members controlled or an affiliated service group that are NOT included in the plan held with Ubiquity are tested for non-discrimination purposes.  Thank you, Your Compliance Team Ubiquity Retirement + Savings  PHONE: 855.401.4357 EMAIL: support@myubiquity.com  Copyright ©2021 Ubiquity Retirement + Savings You have received this e-mail because it contains important administration information. You may unsubscribe, but you will no longer receive important updates to your plan(s) via email.  Our mailing address is: 44 Montgomery Street, Suite 3060 San Francisco, CA 94104  Privacy, Security, & Terms|
    |ToAddress|myVariable_current.Primary_Plan_Sponsor_Email__c|
    
    
    
    
    ### myRule_4_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|EmailMessage|
    |Label|Create Census Verification Reminder email record|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |RelatedToId|myVariable_current.Id|
    |Status|3|
    |Subject|Reminder - Verify your 2022 Census!|
    |TextBody|Reminder- Census Verification Notice | Ubiquity Retirement + Savings  Verifying your Census  It’s time to verify the accuracy of your 2021 401(k) census for annual compliance testing purposes. Regulations set forth by ERISA requires your plan to be annually tested for non-discrimination. This requires you, as fiduciary, to verify your plan’s census is accurate.    Deadline to complete census verification: February 18, 2022.  Ubiquity created this instructional video to walk you through this short process.  Here's what you need to do next:  Log into your account as the Employer Click Verify My 2021 Census on your dashboard Review and confirm that the information matches your 2021 employee W-2s and employee demographics – add or make adjustments as necessary and click "Submit."  Get Started   Has your organization been acquired, merged with another entity, or acquired another company? You may be part of a controlled group. If you have not notified Ubiquity of these changes, please reply to this email letting us know been acquired, merged with another entity, or acquired another company.  We appreciate your attention to this necessary task! We are here for any questions you may have.  Thank you, Your Compliance Team Ubiquity Retirement + Savings  PHONE: 855.401.4357 EMAIL: support@myubiquity.com  Copyright ©2021 Ubiquity Retirement + Savings You have received this e-mail because it contains important administration information. You may unsubscribe, but you will no longer receive important updates to your plan(s) via email.  Our mailing address is: 44 Montgomery Street, Suite 3060 San Francisco, CA 94104  Privacy, Security, & Terms|
    |ToAddress|myVariable_current.Primary_Plan_Sponsor_Email__c|
    
    
    
    
    ### myRule_55_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|EmailMessage|
    |Label|Email Copy|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |RelatedToId|myVariable_current.Id|
    |Status|3|
    |Subject|Reminder - Action Required on your plan|
    |TextBody|Hello Plan Sponsor,  Your 401(k) plan still requires further action due to the results of your 2020 non-discrimination test.   Reply to this email with:"Refund my Highly Compensated Employees".   To process refunds before the deadline, please email us no later than 11AM PST on Tuesday, June 22, 2021. We are unable to ensure funds will be processed by the IRS deadline if instructions are received after 11 AM PT on June 22, 2021.   If your test results contain inaccurate information, please resubmit your census online for re-testing. Remember, only eligible employees will appear on your test and compensation is capped at $285,000 for each individual.  To view your test results and individual employee refunds:  Log into your account as the Employer Click on 401(k), then Overview. Scroll to the bottom of the page and click on Non-Discrimination Test Results 2020 to download and view your results.   To learn more, watch our testing video or review Frequently Asked Questions.  As always, please feel free to call 855.401.4357 or reply to this email with any questions.  *Disclaimer: Client (plan sponsor) is solely responsible for ensuring that members controlled or an affiliated service group that are NOT included in the plan held with Ubiquity are tested for non-discrimination purposes.  Thank you, Your Compliance Team Ubiquity Retirement + Savings  PHONE: 855.401.4357 EMAIL: support@myubiquity.com  Copyright ©2021 Ubiquity Retirement + Savings You have received this e-mail because it contains important administration information. You may unsubscribe, but you will no longer receive important updates to your plan(s) via email.  Our mailing address is: 44 Montgomery Street, Suite 3060 San Francisco, CA 94104  Privacy, Security, & Terms|
    |ToAddress|myVariable_current.Primary_Plan_Sponsor_Email__c|
    
    
    
    
    ### myRule_7_A2
    
    |<!-- -->|<!-- -->|
    |:---|:---|
    |Type|Record Create|
    |Object|EmailMessage|
    |Label|Create Failed Prior Test Email Log|
    
    
    #### Input Assignments
    
    |Field|Value|
    |:-- |:--: |
    |RelatedToId|myVariable_current.Id|
    |Status|3|
    |Subject|Annual Test Requires Attention!|
    |TextBody|Census Verification Notice | Ubiquity Retirement + Savings  Click here to view the web version of this email.  Hello Plan Sponsor,  Thank you for verifying you 2020 census information. Your 401(k) plan has been tested for non-discrimination* and requires action by March 9, 2021!  Next Steps:  Reply to this email with: "Issue refunds to my Highly Compensated Employees," by March 9, 2021 to ensure refunds are processed by the IRS deadline.   If your test results contain inaccurate information, please resubmit your census online for re-testing. Remember, only eligible employees will appear on your test and compensation is capped at $285,000 for each individual.  To view your test results and individual employee refunds:  Log into your account as the Employer Click on 401(k), then Overview. Scroll to the bottom of the page and click on Non-Discrimination Test Results 2020 to download and view your results.   To learn more, watch our testing video or review Frequently Asked Questions.  For more information on Top Heavy* next steps click here.  As always, please feel free to call 855.401.4357 or reply to this email with any questions.  *Disclaimer: Client (plan sponsor) is solely responsible for ensuring that members controlled or an affiliated service group that are NOT included in the plan held with Ubiquity are tested for non-discrimination purposes.   Thank you, Your Compliance Team Ubiquity Retirement + Savings  PHONE: 855.401.4357 EMAIL: support@myubiquity.com  Copyright ©2021 Ubiquity Retirement + Savings You have received this e-mail because it contains important administration information. You may unsubscribe, but you will no longer receive important updates to your plan(s) via email.  Our mailing address is: 44 Montgomery Street, Suite 3060 San Francisco, CA 94104  Privacy, Security, & Terms|
    |ToAddress|myVariable_current.Primary_Plan_Sponsor_Email__c|
    
    
    
    
    
    
    
    
    ___
    
    _Documentation generated from branch monitoring_myubiquity by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

