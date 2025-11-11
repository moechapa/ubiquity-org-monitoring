trigger StampDate on Project_Task__c (after insert, after update) {

    List<Project_Task__c> completedTasks = Trigger.new;
    //Queries for Project Tasks when created or updated
    List<Project_Task__c> sortedTasks = [SELECT Id, Order_Number__c, Implementation__c, Transition__c,
                                         Status__c, Project_Deliverable__c, Actual_Completion_Date__c,
                                         Picklist_Population_on_Completion__c, Opportunity__c, Add_On_Product__c
                                         FROM Project_Task__c
                                         WHERE Id IN :completedTasks
                                         ORDER BY Order_Number__c];
    for (Project_Task__c sortedTask : sortedTasks){
        //If a Completed task is linked to an Implementation and is flagged for picklist population, stamp Imp with completion picklist value
        if(sortedTask.Status__c == 'Completed' && sortedTask.Implementation__c != null && sortedTask.Picklist_Population_on_Completion__c == true){
            Implementation__c relatedImp     = [SELECT Id, Koncierge_Initial_Call__c, Koncierge_QA_Check__c, 
                                                Koncierge_Survey_Calendly_Email__c, Koncierge_Training_Call__c, 
                                                X1st_Payroll_Date__c, X1st_Payroll_Processed__c, Activated_in_PRKS__c,
                                                Account_Application_Sent_to_Custodian__c, Assets_Received__c,
                                                Blackout_Notice_to_Client__c, 
                                                Census_Instructions_Sent__c, Census_and_Eligibility_Uploaded__c, 
                                                Census_and_Payroll_Instructions_Sent__c, Conversion_Assets_Settled__c, 
                                                Conversion_Assets_Posted__c, Conversion_Records_Received__c, 
                                                Custodial_Account_Number_Received__c, Fidelity_Bond_Discussed__c, 
                                                Final_Handoff_to_CST__c, Final_Reporting_Received__c, Funding_Account_Confirmed__c, Implementation_QA_Check__c,
                                                Implementation_Completion_Date__c, Intro_to_K_oncierge__c, Intro_to_Koncierge_CST__c, Kotapay_Client_Signed__c, 
                                                Kotapay_Complete__c, Kotapay_Doc_Created__c, Kotapay_UBQT_Signed__c, Liquidation_Date_Confirmed__c,
                                                Matrix_Countersign_Date__c, OPD_PRR_Completed__c, OPD_PRR_Requested__c, 
                                                OPD_PRR_Scheduled__c, Payroll_Schedule_Confirmed__c, Plan_Number_Verified__c, Post_OPD_PRR_Docs_Sent__c, 
                                                Prior_Year_5500_Received__c, Prior_Year_5500_Reconciliation_Completed__c, 
                                                Prior_Plan_Documents_Received__c, Schwab_App_to_Client__c, Schwab_App_Client_Signed__c, 
                                                Term_letter_to_prior_provider__c, TPA_Documents_Uploaded__c, Transfer_Letter_Sent_to_Client__c, Ubiquity_Plan_Documents_Signed__c, GIACT_results__c
                                                FROM Implementation__c
                                                WHERE Id = :sortedTask.Implementation__c];
                                                new Implementation__c();
            Project_Deliverables__c mainProj = [SELECT Id, Fields_Stamped_Upon_Completion__c, Picklist_Completion_Value__c,
                                                Picklist_Declined_Value__c
                                                FROM Project_Deliverables__c
                                                WHERE Id = :sortedTask.Project_Deliverable__c];
            String textVal = mainProj.Picklist_Completion_Value__c;
            if(mainProj.Fields_Stamped_Upon_Completion__c != null){
                List<String> textStamp = mainProj.Fields_Stamped_Upon_Completion__c.split(';');
                for(String fieldname : textStamp){
                    relatedImp.put(fieldname, textVal);
                    }
                update relatedImp;
                }
            }
        //If a Declined task is linked to an Implementation and is flagged for picklist population, stamp Imp with declined picklist value
        else if(sortedTask.Status__c == 'Declined' && sortedTask.Implementation__c != null && sortedTask.Picklist_Population_on_Completion__c == true){
            Implementation__c relatedImp     = [SELECT Id, Koncierge_Initial_Call__c, Koncierge_QA_Check__c, 
                                                Koncierge_Survey_Calendly_Email__c, Koncierge_Training_Call__c, 
                                                X1st_Payroll_Date__c, X1st_Payroll_Processed__c, 
                                                Account_Application_Sent_to_Custodian__c, Assets_Received__c, Activated_in_PRKS__c,
                                                Blackout_Notice_to_Client__c, 
                                                Census_Instructions_Sent__c, Census_and_Eligibility_Uploaded__c, 
                                                Census_and_Payroll_Instructions_Sent__c, Conversion_Assets_Settled__c, 
                                                Conversion_Assets_Posted__c, Conversion_Records_Received__c, 
                                                Custodial_Account_Number_Received__c, Fidelity_Bond_Discussed__c, 
                                                Final_Handoff_to_CST__c, Final_Reporting_Received__c, Funding_Account_Confirmed__c, Implementation_QA_Check__c,
                                                Implementation_Completion_Date__c, Intro_to_K_oncierge__c, Intro_to_Koncierge_CST__c, Kotapay_Client_Signed__c, 
                                                Kotapay_Complete__c, Kotapay_Doc_Created__c, Kotapay_UBQT_Signed__c, Liquidation_Date_Confirmed__c,
                                                Matrix_Countersign_Date__c, OPD_PRR_Completed__c, OPD_PRR_Requested__c, 
                                                OPD_PRR_Scheduled__c, Payroll_Schedule_Confirmed__c, Plan_Number_Verified__c, Post_OPD_PRR_Docs_Sent__c, 
                                                Prior_Year_5500_Received__c, Prior_Year_5500_Reconciliation_Completed__c, 
                                                Prior_Plan_Documents_Received__c, Schwab_App_to_Client__c, Schwab_App_Client_Signed__c, 
                                                Term_letter_to_prior_provider__c, TPA_Documents_Uploaded__c, Transfer_Letter_Sent_to_Client__c, Ubiquity_Plan_Documents_Signed__c, GIACT_results__c
                                                FROM Implementation__c
                                                WHERE Id = :sortedTask.Implementation__c];
                                                new Implementation__c();
            Project_Deliverables__c mainProj = [SELECT Id, Fields_Stamped_Upon_Completion__c, Picklist_Completion_Value__c,
                                                Picklist_Declined_Value__c
                                                FROM Project_Deliverables__c
                                                WHERE Id = :sortedTask.Project_Deliverable__c];
            String textVal = mainProj.Picklist_Declined_Value__c;
            if(mainProj.Fields_Stamped_Upon_Completion__c != null){
                List<String> textStamp = mainProj.Fields_Stamped_Upon_Completion__c.split(';');
                for(String fieldname : textStamp){
                    relatedImp.put(fieldname, textVal);
                    }
                update relatedImp;
                }
            }
        //If a Completed task is linked to an Implementation and is flagged for date field population, stamp Imp with actual completion date in designated date field        
        else if(sortedTask.Status__c == 'Completed' && sortedTask.Implementation__c != null && sortedTask.Picklist_Population_on_Completion__c == false){
            Implementation__c relatedImp     = [SELECT Id, Koncierge_Initial_Call__c, Koncierge_QA_Check__c, 
                                                Koncierge_Survey_Calendly_Email__c, Koncierge_Training_Call__c, 
                                                X1st_Payroll_Date__c, X1st_Payroll_Processed__c, 
                                                Account_Application_Sent_to_Custodian__c, Assets_Received__c, Activated_in_PRKS__c,
                                                Blackout_Notice_to_Client__c, 
                                                Census_Instructions_Sent__c, Census_and_Eligibility_Uploaded__c, 
                                                Census_and_Payroll_Instructions_Sent__c, Conversion_Assets_Settled__c, 
                                                Conversion_Assets_Posted__c, Conversion_Records_Received__c, 
                                                Custodial_Account_Number_Received__c, Fidelity_Bond_Discussed__c, 
                                                Final_Handoff_to_CST__c, Final_Reporting_Received__c, Funding_Account_Confirmed__c, Implementation_QA_Check__c,
                                                Implementation_Completion_Date__c, Intro_to_K_oncierge__c, Intro_to_Koncierge_CST__c, Kotapay_Client_Signed__c, 
                                                Kotapay_Complete__c, Kotapay_Doc_Created__c, Kotapay_UBQT_Signed__c, Liquidation_Date_Confirmed__c,
                                                Matrix_Countersign_Date__c, OPD_PRR_Completed__c, OPD_PRR_Requested__c, 
                                                OPD_PRR_Scheduled__c, Payroll_Schedule_Confirmed__c, Plan_Number_Verified__c, Post_OPD_PRR_Docs_Sent__c, 
                                                Prior_Year_5500_Received__c, Prior_Year_5500_Reconciliation_Completed__c, 
                                                Prior_Plan_Documents_Received__c, Schwab_App_to_Client__c, Schwab_App_Client_Signed__c, 
                                                Term_letter_to_prior_provider__c, TPA_Documents_Uploaded__c, Transfer_Letter_Sent_to_Client__c, Ubiquity_Plan_Documents_Signed__c
                                                FROM Implementation__c
                                                WHERE Id = :sortedTask.Implementation__c];
                                                new Implementation__c();
            Project_Deliverables__c mainProj = [SELECT Id, Fields_Stamped_Upon_Completion__c
                                                FROM Project_Deliverables__c
                                                WHERE Id = :sortedTask.Project_Deliverable__c];
            DateTime dT = sortedTask.Actual_Completion_Date__c;  
            if(mainProj.Fields_Stamped_Upon_Completion__c != null){
                List<String> dateStamp = mainProj.Fields_Stamped_Upon_Completion__c.split(';');
                for(String fieldname : dateStamp){
                    Date nullCheck = (Date)relatedImp.get(fieldname);
                    if(nullCheck == null){
                    relatedImp.put(fieldname, date.newinstance(dT.year(), dT.month(), dT.day()));
                    }
                update relatedImp;
                }
            }
        }
        //If a Completed task is linked to an Transition and is flagged for date field population, stamp Transition with actual completion date in designated date field                
        else if(sortedTask.Status__c == 'Completed' && sortedTask.Transition__c != null){
            Transition__c relatedTrans       = [SELECT Id, Final_Fees_Paid_Accounting__c,
                                                Final_Reporting_Date__c, Notification_Date__c
                                                FROM Transition__c
                                                WHERE Id = :sortedTask.Transition__c]; 
            Project_Deliverables__c mainProj = [SELECT Id, Fields_Stamped_Upon_Completion__c
                                            FROM Project_Deliverables__c
                                            WHERE Id = :sortedTask.Project_Deliverable__c];   
            DateTime dT = sortedTask.Actual_Completion_Date__c;  
            if(mainProj.Fields_Stamped_Upon_Completion__c != null){
                List<String> dateStamp = mainProj.Fields_Stamped_Upon_Completion__c.split(';');
                for(String fieldname : dateStamp){
                    Date nullCheck = (Date)relatedTrans.get(fieldname);
                    if(nullCheck == null){
                    relatedTrans.put(fieldname, date.newinstance(dT.year(), dT.month(), dT.day()));
                    }
                update relatedTrans;
                }
            }
        }
        //If a Completed task is linked to an Add-On Product and is flagged for date field population, stamp Add-On Product with actual completion date in designated date field
        else if(sortedTask.Status__c == 'Completed' && sortedTask.Add_On_Product__c != null){
            Add_On_Products__c relatedAddOn  = [SELECT Id, Tested_Login_Credentials__c, Sent_Login_Test_Results__c, Requested_Source_Mapping__c, 
                                                Created_Support_Tasks__c, Add_Payroll__c, Added_Payroll_Vendor_to_Paradigm__c, Date_Given_To_Third_Party_Integrator__c, 
                                                Reviewed_Test_File__c, X1st_Payroll_Uploaded__c, X1st_Payroll_Funded__c,
                                                QA_Check_Completed__c, Update_Add_On_Product__c, Requested_Revised_Test_Files__c,Sent_Completion_Email__c,
                                                X360_Attribute_turned_on__c, Login_Credentials_Received__c, Integration_Completed__c, Verified_1st_Payroll_Processed__c, X1st_Payroll_Funded_Date__c
                                                FROM Add_On_Products__c
                                                WHERE Id = :sortedTask.Add_On_Product__c]; 
            Project_Deliverables__c mainProj = [SELECT Id, Fields_Stamped_Upon_Completion__c
                                                FROM Project_Deliverables__c
                                                WHERE Id = :sortedTask.Project_Deliverable__c];   
            DateTime dT = sortedTask.Actual_Completion_Date__c;  
            if(mainProj.Fields_Stamped_Upon_Completion__c != null){
                List<String> dateStamp = mainProj.Fields_Stamped_Upon_Completion__c.split(';');
                for(String fieldname : dateStamp){
                    Date nullCheck = (Date)relatedAddOn.get(fieldname);
                    if(nullCheck == null){
                    relatedAddOn.put(fieldname, date.newinstance(dT.year(), dT.month(), dT.day()));
                    }
                update relatedAddOn;
                }
            }
        }
        //If a Completed task is linked to an Opportunity and is flagged for date field population, stamp Opportunity with actual completion date in designated date field        
        else if(sortedTask.Status__c == 'Completed' && sortedTask.Opportunity__c != null){
            Opportunity relatedOpp           = [SELECT Id, Authorization_Form_Received__c, Login_Credentials_Requested__c, Login_Credentials_Received__c, 
                                                Instructions_Sent__c, Introduction_Email_Sent__c, Qualifying_Call_Completed__c
                                                FROM Opportunity
                                                WHERE Id = :sortedTask.Opportunity__c]; 
            Project_Deliverables__c mainProj = [SELECT Id, Fields_Stamped_Upon_Completion__c
                                                FROM Project_Deliverables__c
                                                WHERE Id = :sortedTask.Project_Deliverable__c];   
            DateTime dT = sortedTask.Actual_Completion_Date__c;  
            if(mainProj.Fields_Stamped_Upon_Completion__c != null){
                List<String> dateStamp = mainProj.Fields_Stamped_Upon_Completion__c.split(';');
                for(String fieldname : dateStamp){
                    Date nullCheck = (Date)relatedOpp.get(fieldname);
                    if(nullCheck == null){
                    relatedOpp.put(fieldname, date.newinstance(dT.year(), dT.month(), dT.day()));
                    }
                update relatedOpp;
                }
            }
        }
    }
}