trigger StampImp on Project_Task__c (after insert, after update) {

    List<Project_Task__c> completedTasks = Trigger.new;
    List<Project_Task__c> sortedTasks = [SELECT Id, Order_Number__c, Implementation__c, 
                                         Status__c, Project_Deliverable__c, Actual_Completion_Date__c
                                         FROM Project_Task__c
                                         WHERE Id IN :completedTasks
                                         ORDER BY Order_Number__c];
    for (Project_Task__c sortedTask : sortedTasks){
        if(sortedTask.Status__c == 'Completed' && sortedTask.Implementation__c != null){
            Implementation__c relatedImp     = new Implementation__c();
            relatedImp.Id                    = sortedTask.Implementation__c; 
            Project_Deliverables__c mainProj = [SELECT Id, Fields_Stamped_Upon_Completion__c
                                            FROM Project_Deliverables__c
                                            WHERE Id = :sortedTask.Project_Deliverable__c];   
            DateTime dT = sortedTask.Actual_Completion_Date__c;  
            if(mainProj.Fields_Stamped_Upon_Completion__c != null){
                List<String> dateStamp = mainProj.Fields_Stamped_Upon_Completion__c.split(';');
                for(String fieldname : dateStamp){
                    relatedImp.put(fieldname, date.newinstance(dT.year(), dT.month(), dT.day()));
                    }
                update relatedImp;
                }
        }
    }
}