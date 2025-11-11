public with sharing class PurchaseAPIController {
    @AuraEnabled(cacheable=false)
    public static String getProposal(Id proposalId){
        Proposal__c proposal = [SELECT Id, X3_38__c, Opportunity__c, Opportunity__r.Billing_State__c, Opportunity__r.EIN__c, Opportunity__r.Number_of_Employees__c, Opportunity__r.Name, Opportunity__r.Account.Name, Opportunity__r.Plan_Type__c, Service_Option__c, Auto_Enrollment__c, Auto_Enrollment_Deferral_Escalation_Rate__c, Client_Company_Name__c, Plan_Name__c, Company_Contact_First_Name__c, Company_Contact_Last_Name__c, Company_Email__c, Company_State__c, Contact_Phone_Number__c, Custodian__c, Discretionary_Match__c, Eligibility_Age__c, Fund_List__c, Grandfather_Date__c, Hardships__c, Loans__c, Number_of_Employees__c, Participant_Fee_Payment__c, Plan_Effective_Date__c, Plan_Eligibility__c, Plan_Entry_Frequency__c, Profit_Sharing__c, Profit_Sharing_Match_Vesting_Schedule__c, QACA_Safe_Harbor_Vesting_Schedule__c, Roth_Contributions__c, Safe_Harbor__c, Safe_Harbor_Match_Determination_Period__c, Original_Effective_Date__c, Plan_Number__c, Discretionary_Match_Formula__c, Restatement_Date__c, TPA_EIN__c, Plan_ID__c, Plan_Type__c, Product_Code__c, Portfolio_Code__c
                                FROM Proposal__c
                                WHERE Id = :proposalId
                                LIMIT 1 ];

        String result = processProposals(proposal);
        System.debug('result: ' + result);
        return result;
    }

    public static String processProposals(Proposal__c prop){

        // Product code and portfolio code getting from the Proposal object and populating via flow Proposal | Before Trigger | Paradigm Purchase Api
        // String productCode = PurchaseAPIHandler.getProductCode(prop.Service_Option__c);
        // String portfolioCode = PurchaseAPIHandler.getPortfolioCode(prop.Fund_List__c, prop.Custodian__c, prop.X3_38__c);

        Integer year = PurchaseAPIHelper.getRequiredAge(prop.Eligibility_Age__c);
        String stateCode = PurchaseAPIHelper.getStateCode(prop.Company_State__c);

        Map<String, String> enrollmentRateMap = PurchaseAPIHandler.getEnrollmentRate(prop.Auto_Enrollment_Deferral_Escalation_Rate__c);
        String minimumAutoDeferralPercentageStr = enrollmentRateMap.get('minimumAutoDeferralPercentage');
        String maximumAutoDeferralPercentageStr = enrollmentRateMap.get('maximumAutoDeferralPercentage');
        String yearlyAutoDeferralPercentageIncreaseStr = enrollmentRateMap.get('yearlyAutoDeferralPercentageIncrease');

        List<AddSources__mdt> sourcesList = PurchaseAPIHandler.getSources(prop.Roth_Contributions__c, prop.Safe_Harbor__c, prop.Discretionary_Match__c, prop.Discretionary_Match_Formula__c, prop.Profit_Sharing__c);
        Map<String, List<Associated_Contact__c>> associatedContactsMap = PurchaseAPIHandler.getAssociatedContacts(prop.Opportunity__c);
        Integer vestingId = PurchaseAPIHandler.getVesting(prop.Profit_Sharing_Match_Vesting_Schedule__c);

        String serviceEligibility = PurchaseAPIHelper.convertPlanEligibility(prop.Plan_Eligibility__c);
        String entry = PurchaseAPIHelper.convertPlanEntryFrequency(prop.Plan_Entry_Frequency__c);

        PurchasePayload purchPayload = new PurchasePayload();

        // ===================AGE===========================
        Age age = new Age();
        age.year = year == null ? 0 : year;
        age.month = 0;
        purchPayload.age = age;

        // ===================ADD SOURCES===================
        List<AddSources> addSourcesList = new List<AddSources>();
        for(AddSources__mdt source : sourcesList){
            AddSources addSource = new AddSources();
            addSource.id                    = Integer.valueOf(source.SourceId__c);
            addSource.name                  = source.Label;
            addSource.sourceType            = source.SourceType__c;
            addSource.contributorType       = source.ContributorType__c;
            addSource.vestingId             = source.ContributorType__c == 'EMPLOYER' ? vestingId : null;
            addSource.requiredAge           = age;
            addSource.entry                 = entry;
            addSource.serviceEligibility    = serviceEligibility;
            addSource.planSourceFrequency   = null;
            addSource.effectiveDate         = null;
            addSource.formula               = null;
            addSource.included              = null;
            addSource.grandfatherDate       = PurchaseAPIHelper.getFormateDate(prop.Grandfather_Date__c); // Date in format 2023-07-12
            addSourcesList.add(addSource);
        }
        purchPayload.addSources             = addSourcesList;



        // ===================TPA===================
        List<Associated_Contact__c> tpaList = PurchaseAPIHandler.getAssociatedTPA(associatedContactsMap);

        // TPA tpaObj = new TPA();
        // if(tpaList != null && !tpaList.isEmpty()){
        //     tpaObj.feeCollectionSource  = null;
        //     tpaObj.fixedAmount          = null;
        //     tpaObj.bpsAmount            = null;
        //     tpaObj.disbursedByUbiquity  = null;
        //     tpaObj.tpaEin               = tpaList[0].Contact__r.Account.Employer_Identification_Number_EIN__c;         //Required for TPA
        //     List<ProcessingFees> processingFeesList = new List<ProcessingFees>();
        //     List<Users> usersList = new List<Users>();
        //     for(Associated_Contact__c tpa : tpaList){
        //         ProcessingFees processingFeesObj = new ProcessingFees();
        //         processingFeesObj.feeType   = null;
        //         processingFeesObj.amount    = null;
        //         processingFeesList.add(processingFeesObj);

        //         Users userObj = new Users();
        //         userObj.email = tpa.Contact__r.Email;
        //         userObj.roles = tpa.Contact_Role__c;
        //         usersList.add(userObj);
        //     }
        //     tpaObj.processingFees = processingFeesList;
        //     tpaObj.users = usersList;
        //     purchPayload.tpa = tpaObj;
        // }

        // ===================ADVISORS===================
        List<Associated_Contact__c> advisorsList = PurchaseAPIHandler.getAssociatedAdvisors(associatedContactsMap);
        // Advisors advisorsObj = new Advisors();
        // if(advisorsList != null && !advisorsList.isEmpty()){
        //     advisorsObj.feeCollectionSource  = null;
        //     advisorsObj.fixedAmount          = null;
        //     advisorsObj.bpsAmount            = null;
        //     advisorsObj.disbursedByUbiquity  = null;
        //     List<Actors> actorsList = new List<Actors>();
        //     for(Associated_Contact__c advisor : advisorsList){
        //         Actors actorObj = new Actors();
        //         actorObj.advisorNpn             = advisor.Contact__r.NPN_Number__c; //"NPN or CRD must be specified"
        //         actorObj.advisorCrd             = advisor.Contact__r.CRD_Number__c; //"NPN or CRD must be specified"
        //         actorObj.advisorType            = null;
        //         actorObj.advisorService         = null;
        //         actorObj.commissionPct          = 50;             // ???? "Commission percentage cannot be empty (1-100)" !!!!!
        //         actorObj.requireReview          = null;
        //         actorObj.isPrimary              = advisor.Primary__c;        // "One and only one advisor must be primary."
        //         actorObj.reason                 = advisor.Contact__r.Opt_Out_Reason__c;
        //         actorObj.roles                  = null;         // "Valid roles : [ ADMINISTRATOR, COMMISSIONABLE, NONCOMMISSIONABLE" ]
        //         actorsList.add(actorObj);
        //     }
        //     advisorsObj.actors = actorsList;
        //     purchPayload.advisors = advisorsObj;
        // }

        // ===================TRUSTEES===================
        List<Associated_Contact__c> trusteesList = PurchaseAPIHandler.getAssociatedTrustees(associatedContactsMap);
        if(trusteesList != null && !trusteesList.isEmpty()){
            List<Trustees> trusteesObjList = new List<Trustees>();
            for(Associated_Contact__c trustee : trusteesList){
                Trustees trusteeObj = new Trustees();
                trusteeObj.firstName    = trustee.Contact__r.FirstName;
                trusteeObj.lastName     = trustee.Contact__r.LastName;
                trusteeObj.email        = trustee.Contact__r.Email;
                trusteesObjList.add(trusteeObj);
            }
            purchPayload.trustees = trusteesObjList;
        }


        // ===================PAYLOAD===================
        purchPayload.productCode                    = prop.Product_Code__c;                                                                 // REQUIRED FIELDs populated via flow Proposal | Before Trigger | Paradigm Purchase Api
        purchPayload.sponsorFirstName               = prop.Company_Contact_First_Name__c;           //trusteesList[0].Contact__r.FirstName; // REQUIRED FIELD   NOTE1: Populated from Contact Role = 'Plan Sponsor'|| 'Authorized Buyer' || 'Plan Sponsor and Trustee'
        purchPayload.sponsorLastName                = prop.Company_Contact_Last_Name__c;            //trusteesList[0].Contact__r.LastName;  // REQUIRED FIELD
        purchPayload.sponsorEmail                   = prop.Company_Email__c;                        //trusteesList[0].Contact__r.Email;     // REQUIRED FIELD
        purchPayload.stateCode                      = PurchaseAPIHelper.getStateCode(stateCode);                                            // REQUIRED FIELD   ONLY 2 characters
        purchPayload.companyName                    = prop.Client_Company_Name__c;                                                          // REQUIRED FIELD
        purchPayload.numberOfEmployees              = Integer.valueOf(prop.Number_of_Employees__c);                                         // REQUIRED FIELD
        purchPayload.companyPhone                   = PurchaseAPIHelper.validateCompanyPhone(prop.Contact_Phone_Number__c); //trusteesList[0].Contact__r.Phone [NNN-NNN-NNNN"]
        purchPayload.planName                       = prop.Plan_Name__c;
        purchPayload.entry                          = entry;
        purchPayload.serviceEligibility             = serviceEligibility;
        purchPayload.planEffectiveDate              = PurchaseAPIHelper.getFormateDate(prop.Plan_Effective_Date__c);            // format yyyy-MM-dd
        purchPayload.lastRestatementDate            = PurchaseAPIHelper.getFormateDate(prop.Restatement_Date__c);
        purchPayload.autoDeferralType               = enrollmentRateMap.get('autoDeferralType');                                // Escalating, Flat
        purchPayload.minimumAutoDeferralPercentage  = (minimumAutoDeferralPercentageStr != null) ? Integer.valueOf(minimumAutoDeferralPercentageStr) : null;
        purchPayload.maximumAutoDeferralPercentage  = (maximumAutoDeferralPercentageStr != null) ? Integer.valueOf(maximumAutoDeferralPercentageStr) : null;
        purchPayload.yearlyAutoDeferralPercentageIncrease = (yearlyAutoDeferralPercentageIncreaseStr != null) ? Integer.valueOf(yearlyAutoDeferralPercentageIncreaseStr) : null;
        purchPayload.allowsLoans                    = prop.Loans__c == 'Yes' ? true : (prop.Loans__c == 'No' ? false : null);
        purchPayload.allowsHardshipWithdrawals      = prop.Hardships__c == 'Yes' ? true : (prop.Hardships__c == 'No' ? false : null);
        purchPayload.autoEnrollmentType             = prop.Auto_Enrollment__c == 'None' ? null : prop.Auto_Enrollment__c;
        purchPayload.employerPaidParticipantFees    = prop.Participant_Fee_Payment__c == 'Employer' ? true : (prop.Participant_Fee_Payment__c == 'Employee' ? false : null);
        purchPayload.isConversion                   = prop.Plan_Type__c == 'Conversion Plan' ? true : false;
        purchPayload.eligibilityCalculationMethod   = (serviceEligibility == 'ONE_YEAR_HOURS') ? 'HOURS' : (serviceEligibility != null) ? 'ELAPSED_TIME' : null;
        purchPayload.irsPlanNumber                  = prop.Plan_Number__c;
        purchPayload.portfolioCode                  = prop.Portfolio_Code__c;
        purchPayload.planId                         = String.isBlank(prop.Plan_ID__c) ? null : Integer.valueOf(prop.Plan_ID__c);
        purchPayload.pepCode                        = null;                                // ALWAYS NULL
        // purchPayload.attributes                     = null;                             // ALWAYS NULL????

        String resultJSONPayload = JSON.serialize(purchPayload);
        return resultJSONPayload;
    }

    public class PurchasePayload {
        public String productCode { get; set; }
        public Age age { get; set; }
        public String entry { get; set; }                   // [ DAILY, MONTHLY, QUARTERLY, SEMI_ANNUALLY, ANNUALLY, OTHER ]
        public String serviceEligibility { get; set; }      // [ IMMEDIATE, ONE_MONTH, TWO_MONTHS, THREE_MONTHS, SIX_MONTHS, TWELVE_MONTHS, ONE_YEAR_HOURS ]
        // public List<Sources> sources { get; set; }          // Don't use this Object
        public Boolean allowsLoans { get; set; }
        public Boolean allowsHardshipWithdrawals { get; set; }
        public String autoEnrollmentType { get; set; }      // [ ACA, EACA, QACA ]
        public Integer numberOfEmployees { get; set; }
        public String companyName { get; set; }
        public String planName { get; set; }
        public String irsPlanNumber { get; set; }
        public String companyPhone { get; set; }
        public String sponsorFirstName { get; set; }
        public String sponsorLastName { get; set; }
        public String sponsorEmail { get; set; }
        public String stateCode { get; set; }
        public Integer planId { get; set; }
        public String planEffectiveDate { get; set; }       // Date in format yyyy-MM-dd
        public String autoDeferralType { get; set; }        // NOTE7: [ ESCALATING, FLAT ]
        public String eligibilityCalculationMethod { get; set; } // NOTE9:[ ELAPSED_TIME, HOURS ]
        public String portfolioCode { get; set; }
        public String pepCode { get; set; }
        public Integer minimumAutoDeferralPercentage { get; set; }
        public Integer maximumAutoDeferralPercentage { get; set; }
        public Integer yearlyAutoDeferralPercentageIncrease { get; set; }
        public List<AddSources> addSources { get; set; }
        // public List<Attributes> attributes { get; set; }    // ALWAYS NULL????
        public Boolean employerPaidParticipantFees { get; set; }

        // public TPA tpa { get; set; }
        // public Advisors advisors { get; set; }
        public List<Trustees> trustees { get; set; }
        public Boolean isConversion { get; set; }
        public String lastRestatementDate { get; set; }     // Date in format yyyy-MM-dd
    }

    public class Age {
        public Integer month { get; set; }
        public Integer year { get; set; }
    }

    // public class Sources {
    //     public Integer id { get; set; }
    //     public String name { get; set; }
    //     public String sourceType { get; set; }             // [ DEFERRAL, LOAN, MATCH, PROFIT, RELATED_ROLLOVER, ROLLOVER, SAFE, QMAC, QNEC ]
    //     public String contributorType { get; set; }        // [ EMPLOYEE, EMPLOYER, LOAN ]
    //     public Integer vestingId { get; set; }
    //     public Age requiredAge { get; set; }
    //     public String entry { get; set; }                  // [ DAILY, MONTHLY, QUARTERLY, SEMI_ANNUALLY, ANNUALLY, OTHER ]
    //     public String serviceEligibility { get; set; }     // [ IMMEDIATE, ONE_MONTH, TWO_MONTHS, THREE_MONTHS, SIX_MONTHS, TWELVE_MONTHS, ONE_YEAR_HOURS ]
    //     public String planSourceFrequency { get; set; }    // [ PAYROLL, ANNUAL ]
    //     public String effectiveDate { get; set; }          // Date in format yyyy-MM-dd
    //     public String formula { get; set; }
    //     public Boolean included { get; set; }
    //     public String grandfatherDate { get; set; }        // Date in format yyyy-MM-dd
    // }

    public class AddSources {
        public Integer id { get; set; }
        public String name { get; set; }
        public String sourceType { get; set; }             // [ DEFERRAL, LOAN, MATCH, PROFIT, RELATED_ROLLOVER, ROLLOVER, SAFE, QMAC, QNEC ]
        public String contributorType { get; set; }        // [ EMPLOYEE, EMPLOYER, LOAN ]
        public Integer vestingId { get; set; }
        public String entry { get; set; }                  // [ DAILY, MONTHLY, QUARTERLY, SEMI_ANNUALLY, ANNUALLY, OTHER ]
        public String serviceEligibility { get; set; }     // [ IMMEDIATE, ONE_MONTH, TWO_MONTHS, THREE_MONTHS, SIX_MONTHS, TWELVE_MONTHS, ONE_YEAR_HOURS ]
        public String planSourceFrequency { get; set; }    // [ PAYROLL, ANNUAL ]
        public String effectiveDate { get; set; }          // Date in format yyyy-MM-dd
        public String formula { get; set; }
        public Boolean included { get; set; }
        public String grandfatherDate { get; set; }        // Date in format yyyy-MM-dd
        public Age requiredAge { get; set; }
    }

    // public class Attributes {
    //     public String key { get; set; }
    //     public String value { get; set; }
    // }

    // public class Advisor {
    //     public String advisorFeeCollectionSource  { get; set; } // NOTE18:   [ NONE, BROKER_12B_1, INVOICE, DIRECT, ASSETS ]
    //     public Integer fixedAmount { get; set; }
    //     public Integer bpsAmount { get; set; }
    //     public Boolean requireReview { get; set; }
    //     public String advisorNpn { get; set; }
    //     public String advisorCrd { get; set; }
    // }

    // public class TPA {
    //     public String feeCollectionSource { get; set; }
    //     public Integer fixedAmount { get; set; }
    //     public Integer bpsAmount { get; set; }
    //     public Boolean disbursedByUbiquity { get; set; }
    //     public String tpaEin { get; set; }
    //     public List<ProcessingFees> processingFees { get; set; }
    //     public List<Users> users { get; set; }
    // }

    // public class ProcessingFees {
    //     public String feeType { get; set; }
    //     public Integer amount { get; set; }
    // }

    // public class Users {
    //     public String email { get; set; }
    //     public String roles { get; set; }
    // }

    // public class Advisors {
    //     public String feeCollectionSource  { get; set; } // NOTE18:   [ NONE, BROKER_12B_1, INVOICE, DIRECT, ASSETS ]
    //     public Integer fixedAmount { get; set; }
    //     public Integer bpsAmount { get; set; }
    //     public Boolean disbursedByUbiquity { get; set; }
    //     public List<Actors> actors { get; set; }
    // }

    // public class Actors {
    //     public String advisorNpn { get; set; }
    //     public String advisorCrd { get; set; }
    //     public String advisorType { get; set; }
    //     public String advisorService { get; set; }
    //     public Integer commissionPct { get; set; }
    //     public Boolean requireReview { get; set; }
    //     public Boolean isPrimary { get; set; }
    //     public String reason { get; set; }
    //     public List<String> roles { get; set; }
    // }

    public class Trustees {
        public String firstName { get; set; }
        public String lastName { get; set; }
        public String email { get; set; }
    }

        // ===================ATTRIBUTES===================
        // List<Attributes> attributesList = new List<Attributes>();
        // Attributes attribute = new Attributes();
        // attribute.key = null;
        // attribute.value = null;
}