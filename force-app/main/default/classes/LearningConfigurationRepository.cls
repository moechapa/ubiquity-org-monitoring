public with sharing class LearningConfigurationRepository {
    @AuraEnabled(cacheable=true)
    public static X360Learning_configuration__c getLearningConfiguration(){
        sObject rawLearningConfiguration = [
            SELECT
                Competitor_Field_Name__c,
                Tenant_Url__c
            FROM X360Learning_configuration__c
            WHERE Name = 'configuration'
            LIMIT 1
        ];
        return (X360Learning_configuration__c)rawLearningConfiguration;
    }

    @AuraEnabled
    public static void upsertLearningConfiguration(String competitorFieldName, String tenantUrl) {
        X360Learning_configuration__c learningConfiguration = new X360Learning_configuration__c(
            Name = 'configuration',
            Competitor_Field_Name__c = competitorFieldName,
            Tenant_Url__c = tenantUrl
        );
        upsert learningConfiguration Name;
    }
}