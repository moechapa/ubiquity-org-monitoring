@isTest
private class CaseSLA_TEST {
  @TestSetup
  static void makeData() {
    Id wbsTypeId = Work_Breakdown_Structure__c.SobjectType.getDescribe(SObjectDescribeOptions.DEFERRED)
      .getRecordTypeInfosByDeveloperName()
      .get('Case_WBS')
      .getRecordTypeId();
    Id pdTypeId = Project_Deliverables__c.SobjectType.getDescribe(SObjectDescribeOptions.DEFERRED)
      .getRecordTypeInfosByDeveloperName()
      .get('Case_Deliverable')
      .getRecordTypeId();
    Work_Breakdown_Structure__c wbs = new Work_Breakdown_Structure__c(
      Name = 'Global Default',
      Global_Default__c = true,
      Object_Managed__c = 'Case',
      RecordTypeId = wbsTypeId
    );
    insert wbs;
    Project_Deliverables__c pd = new Project_Deliverables__c(
      Name = 'Default',
      Default__c = true,
      First_Response_Time_Hours__c = 8,
      Case_Close_Time_Hours__c = 16,
      RecordTypeId = pdTypeId,
      Work_Breakdown_Structure__c = wbs.Id,
      Active__c = true
    );
    insert pd;
    wbs.Active__c = true;
    update wbs;
    Work_Breakdown_Structure__c wbs2 = new Work_Breakdown_Structure__c(
      Name = 'Compliance',
      Object_Managed__c = 'Case',
      RecordTypeId = wbsTypeId,
      Case_Record_Type__c = 'Compliance Cases'
    );
    insert wbs2;
    Project_Deliverables__c pd2 = new Project_Deliverables__c(
      Name = 'New Comp',
      Category__c = 'New Comp',
      RecordTypeId = pdTypeId,
      Work_Breakdown_Structure__c = wbs2.Id,
      Case_Close_Time_Hours__c = 16,
      Active__c = true
    );
    insert pd2;
    Project_Deliverables__c pd3 = new Project_Deliverables__c(
      Name = 'Default',
      Default__c = true,
      RecordTypeId = pdTypeId,
      Work_Breakdown_Structure__c = wbs2.Id,
      First_Response_Time_Hours__c = 8,
      Active__c = true
    );
    insert pd3;
    wbs2.Active__c = true;
    update wbs2;
  }

  @isTest
  static void testGlobalDefault() {
    Id caseServTypeId = Case.SobjectType.getDescribe(SObjectDescribeOptions.DEFERRED).getRecordTypeInfosByDeveloperName().get('Servicing').getRecordTypeId();
    Case c = new Case(Subject = 'testCase', RecordTypeId = caseServTypeId);
    Test.startTest();
    insert c;
    Test.stopTest();
    c = [SELECT Id, Goal_FR_DT_Stamp__c, Goal_Close_DT_Stamp__c, Expected_Days_to_Close__c, Project_Deliverable__c FROM Case WHERE Id = :c.Id];
    Assert.isNotNull(c.Goal_FR_DT_Stamp__c, 'Goal FR DT Stamp should not be null');
    Assert.isNotNull(c.Goal_Close_DT_Stamp__c, 'Goal Close DT Stamp should not be null');
    Assert.isNotNull(c.Expected_Days_to_Close__c, 'Expected Days to Close should not be null');
    Assert.areEqual(
      c.Project_Deliverable__c,
      [SELECT Id FROM Project_Deliverables__c WHERE Default__c = TRUE AND Work_Breakdown_Structure__r.Global_Default__c = TRUE LIMIT 1].Id,
      'Project Deliverable should be the default under global default wbs'
    );
  }

  @isTest
  static void testRecordTypeDefault() {
    Id caseCompTypeId = Case.SobjectType.getDescribe(SObjectDescribeOptions.DEFERRED).getRecordTypeInfosByDeveloperName().get('Compliance').getRecordTypeId();
    Case c = new Case(Subject = 'testCase', RecordTypeId = caseCompTypeId);
    Test.startTest();
    insert c;
    Test.stopTest();
    c = [SELECT Id, Goal_FR_DT_Stamp__c, Goal_Close_DT_Stamp__c, Expected_Days_to_Close__c, Project_Deliverable__c FROM Case WHERE Id = :c.Id];
    Assert.isNotNull(c.Goal_FR_DT_Stamp__c, 'Goal FR DT Stamp should not be null');
    Assert.isNull(c.Goal_Close_DT_Stamp__c, 'Goal Close DT Stamp should be null');
    Assert.isNull(c.Expected_Days_to_Close__c, 'Expected Days to Close should be null');
    Assert.areEqual(
      c.Project_Deliverable__c,
      [SELECT Id FROM Project_Deliverables__c WHERE Default__c = TRUE AND Work_Breakdown_Structure__r.Case_Record_Type__c = 'Compliance Cases' LIMIT 1].Id,
      'Project Deliverable should be the default under compliance wbs'
    );
  }

  @isTest
  static void testCategorySpecific() {
    Id caseCompTypeId = Case.SobjectType.getDescribe(SObjectDescribeOptions.DEFERRED).getRecordTypeInfosByDeveloperName().get('Compliance').getRecordTypeId();
    Case c = new Case(Subject = 'testCase', RecordTypeId = caseCompTypeId, Category__c = 'New Comp');
    Test.startTest();
    insert c;
    Test.stopTest();
    c = [SELECT Id, Goal_FR_DT_Stamp__c, Goal_Close_DT_Stamp__c, Expected_Days_to_Close__c, Project_Deliverable__c FROM Case WHERE Id = :c.Id];
    Assert.isNull(c.Goal_FR_DT_Stamp__c, 'Goal FR DT Stamp should be null');
    Assert.isNotNull(c.Goal_Close_DT_Stamp__c, 'Goal Close DT Stamp should not be null');
    Assert.isNotNull(c.Expected_Days_to_Close__c, 'Expected Days to Close should not be null');
    Assert.areEqual(
      c.Project_Deliverable__c,
      [SELECT Id FROM Project_Deliverables__c WHERE Category__c = 'New Comp' AND Work_Breakdown_Structure__r.Case_Record_Type__c = 'Compliance Cases' LIMIT 1]
      .Id,
      'Project Deliverable should be new comp under compliance wbs'
    );
  }
}