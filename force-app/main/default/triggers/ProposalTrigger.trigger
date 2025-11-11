trigger ProposalTrigger on Proposal__c(before update) {

  if(Trigger.isUpdate && Trigger.isBefore){
    ProposalTriggerHandler.checkProposals(Trigger.newMap, Trigger.oldMap);
  }

}