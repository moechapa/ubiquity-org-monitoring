public with sharing class CaseTriggerHandler {
  public static void onBeforeInsert(List<Case> cases) {
    CaseSLA.check(cases);
  }

  public static void onAfterInsert(List<Case> cases, List<Case> oldCases) {
    JiraCaseSync.newCases(cases, oldCases);
  }

  public static void onBeforeUpdate(List<Case> cases) {
    CaseSLA.check(cases);
  }
  
  public static void onAfterUpdate(List<Case> cases, Map<Id, Case> oldCaseMap) {
    JiraCaseSync.updateCases(cases, oldCaseMap);
  }
}