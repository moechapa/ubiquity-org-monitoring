@isTest
private class PicklistFilterVizier_TEST {

    @isTest
    private static void checkPicklistFilterCase() {
        test.startTest();
        List<Picklist_Filter__mdt> picklistFilterResults = PicklistFilterVizier.fetchObjectPicklistFilters('Case');
        test.stopTest();
        Picklist_Filter__mdt singleResult = picklistFilterResults.get(0);
        system.assert(singleResult != null, 'Should return something, good job.');
        system.assert(singleResult.Filtered_Object__c == 'Case', 'Specifically, it should return a record with the case object.');
    }

    @isTest
    private static void checkPicklistFilterNull() {
        test.startTest();
        List<Picklist_Filter__mdt> picklistFilterResults = PicklistFilterVizier.fetchObjectPicklistFilters('');
        test.stopTest();
        Picklist_Filter__mdt singleResult = picklistFilterResults.get(0);
        system.assert(singleResult != null, 'Should return something, good job.');
    }
}