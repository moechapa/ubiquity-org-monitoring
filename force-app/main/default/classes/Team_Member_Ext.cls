public with sharing class Team_Member_Ext {

    public List<Case> caseRecords{get;set;}
    String field;
    String fieldValue;

    public String getField() {
        return field;
    }

    public void setField(String n) {
        field = n;
    }

    public String getFieldValue() {
        return fieldValue;
    }

    public void setFieldValue(String n) {
        fieldValue = n;
    }

    public Team_Member_Ext(ApexPages.StandardSetController controller) {
        caseRecords = (List<Case>)controller.getSelected();
    }

    public PageReference updateSelections() {
        if (field == 'Team_Member__c') {
            for (Case c : caseRecords) {
                c.Team_Member__c = fieldValue;
                System.debug('Updated team member to ' + fieldValue + ' for ' + c.Id);
            }
        } else if (field == 'Status') {
            for (Case c : caseRecords) {
                c.Status = fieldValue;
                System.debug('Updated status to ' + fieldValue + ' for ' + c.Id);
            }
        }
        return null;
    }
}