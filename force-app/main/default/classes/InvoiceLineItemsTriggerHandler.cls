public with sharing class InvoiceLineItemsTriggerHandler {
    private boolean triggerIsExecuting;
    private integer triggerSize;
    public InvoiceLineItemsTriggerHelper helper;
    public InvoiceLineItemsTriggerHandler(boolean triggerIsExecuting, integer triggerSize) {
        this.triggerIsExecuting = triggerIsExecuting;
        this.triggerSize = triggerSize;
        this.helper = new InvoiceLineItemsTriggerHelper();

    }
    public void beforeInsert(List<Invoice_Line_Items__c> newInvoiceLineItems) {
        system.debug('Executing before insert helper');
        InvoiceLineItemsTriggerHelper.parseProductName(newInvoiceLineItems);
    }
//    public void afterInsert(List<Invoice_Line_Items__c> newInvoiceLineItems, Map<Id, SObject> newInvoiceLineItemsMap) {
//
//    }
    public void beforeUpdate(List<Invoice_Line_Items__c> oldInvoiceLineItems, List<Invoice_Line_Items__c> newInvoiceLineItems, Map<Id, SObject> oldInvoiceLineItemsMap, Map<Id, SObject> newInvoiceLineItemsMap) {
        system.debug('Executing before update helper');
        InvoiceLineItemsTriggerHelper.parseProductName(newInvoiceLineItems);
    }
//    public void afterUpdate(List<Invoice_Line_Items__c> oldInvoiceLineItems, List<Invoice_Line_Items__c> newInvoiceLineItems, Map<Id, SObject> oldInvoiceLineItemsMap, Map<Id, SObject> newInvoiceLineItemsMap) {
//
//    }
//    public void beforeDelete(List<Invoice_Line_Items__c> oldInvoiceLineItems, Map<Id, SObject> oldInvoiceLineItemsMap) {
//
//    }
//    public void afterDelete(List<Invoice_Line_Items__c> oldInvoiceLineItems, Map<Id, SObject> oldInvoiceLineItemsMap) {
//
//    }
//    public void afterUndelete(List<Invoice_Line_Items__c> newInvoiceLineItems, Map<Id, SObject> newInvoiceLineItemsMap) {
//
//    }
}