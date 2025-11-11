trigger PlanTrigger on Plan__c(before insert, before update, before delete, after insert, after update, after delete) {

    PlanTriggerHandler handler = new PlanTriggerHandler();

    if(Trigger.isInsert && Trigger.isAfter){
        handler.onAfterInsert(Trigger.new);
    }
    else if(Trigger.isUpdate && Trigger.isAfter){
        handler.onAfterUpdate(Trigger.newMap);
    }
    // else if(Trigger.isInsert && Trigger.isBefore){}
    // else if(Trigger.isUpdate && Trigger.isBefore){
    //     handler.onBeforeUpdate(Trigger.newMap);
    // }
    // else if(Trigger.isDelete && Trigger.isBefore){}
    // else if(Trigger.isDelete && Trigger.isAfter){}
}