trigger CaseTrigger on Case(before insert, before update, after insert, after update) {
	if (Trigger.isInsert && Trigger.isBefore) {
		CaseTriggerHandler.onBeforeInsert(Trigger.new);
	}

	if (Trigger.isInsert && Trigger.isAfter) {
		CaseTriggerHandler.onAfterInsert(Trigger.new, Trigger.old);
	}

	if (Trigger.isUpdate && Trigger.isAfter) {
		CaseTriggerHandler.onAfterUpdate(Trigger.new, Trigger.oldMap);
	}

	if (Trigger.isUpdate && Trigger.isBefore) {
		CaseTriggerHandler.onBeforeUpdate(Trigger.new);
	}

}