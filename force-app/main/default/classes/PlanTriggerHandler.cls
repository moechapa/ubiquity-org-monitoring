public with sharing class PlanTriggerHandler {

    public void onAfterInsert(List<Plan__c> plans){
        PlanTriggerController.createdPlanUpdateAccounts(plans);
    }
    public void onAfterUpdate(Map<Id, Plan__c> plansIdPlanMap){
        PlanTriggerController.afterUpdatePlan(plansIdPlanMap);
    }
    // public void onBeforeInsert(){}
    // public void onBeforeUpdate(Map<Id, Plan__c> plansIdPlanMap){
    //     HM_ScoreCalc.calcScores(plansIdPlanMap);
    // }
    // public void onBeforeDelete(){}
    // public void onAfterDelete(){}
}