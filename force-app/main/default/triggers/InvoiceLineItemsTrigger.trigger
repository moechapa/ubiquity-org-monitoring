trigger InvoiceLineItemsTrigger on Invoice_Line_Items__c (before insert, after insert, before update, after update, before delete, after delete, after undelete) {

    InvoiceLineItemsTriggerHandler handler = new InvoiceLineItemsTriggerHandler(Trigger.isExecuting, Trigger.size);
    switch on Trigger.operationType {
        when BEFORE_INSERT {
            handler.beforeInsert(Trigger.new);
        }
    //    when AFTER_INSERT {
    //        handler.afterInsert(Trigger.new, Trigger.newMap);
    //    }
        when BEFORE_UPDATE {
            handler.beforeUpdate(Trigger.old, Trigger.new, Trigger.oldMap, Trigger.newMap);
        }
    //    when AFTER_UPDATE {
    //        handler.afterUpdate(Trigger.old, Trigger.new, Trigger.oldMap, Trigger.newMap);
    //    }
    //    when BEFORE_DELETE {
    //        handler.afterDelete(Trigger.old, Trigger.oldMap);
    //    }
    //    when AFTER_DELETE {
    //        handler.afterDelete(Trigger.old, Trigger.oldMap);
    //    }
    //    when AFTER_UNDELETE {
    //        handler.afterUndelete(Trigger.new, Trigger.newMap);
    //    }
    }

}