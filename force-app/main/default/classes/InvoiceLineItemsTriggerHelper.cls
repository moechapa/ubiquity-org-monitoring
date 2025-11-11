public with sharing class InvoiceLineItemsTriggerHelper {

    public static void parseProductName(List<Invoice_Line_Items__c> newInvoiceLineItems) {
        //Loop through inputs and call helper methods
        for (Invoice_Line_Items__c invoiceItem : newInvoiceLineItems) {
            if (invoiceItem.Product_Name__c != null) {
                if (invoiceItem.Service_Option__c == null) {
                    invoiceItem.Service_Option__c = InvoiceLineItemsTriggerHelper.getServiceOption(invoiceItem.Product_Name__c);
                }
                if (invoiceItem.Employee_Tier__c == null) {
                    invoiceItem.Employee_Tier__c = InvoiceLineItemsTriggerHelper.getEmployeeTier(invoiceItem.Product_Name__c);
                }
                if (invoiceItem.Rate__c == null) {
                    invoiceItem.Rate__c = InvoiceLineItemsTriggerHelper.getRate(invoiceItem.Product_Name__c);
                }
            }
        } 
    }

    private static String getServiceOption(String productName) {
        //Attempt to return a formatted service option from productName
        Pattern serviceOptionPattern = Pattern.compile('([A-Za-z]{1,})([( ][kK](?:[) ]|$))');    
        matcher serviceOptionMatch = serviceOptionPattern.matcher(productName);
        Boolean serviceOptionMatchFound = serviceOptionMatch.find();
        String newServiceOption;
        system.debug('service option match: ' + serviceOptionMatchFound);
        
        if (serviceOptionMatchFound) {
            newServiceOption = serviceOptionMatch.group(1).capitalize() + '(k)';
        } else {
            newServiceOption = InvoiceLineItemsTriggerHelper.getBadServiceOption(productName);
        }

        system.debug('new service option: ' + newServiceOption);
        return newServiceOption;
    }
        
    private static String getBadServiceOption(String productName) {
        //Specific checks for uniquely formatted service options
        String badServiceOption = null;

        if (productName.containsIgnoreCase('unbundled')) {
            badServiceOption = 'Simply Retirement Unbundled';
        } else if (productName.containsIgnoreCase('bundled')) {
            badServiceOption = 'Simply Retirement Bundled';
        } else if (productName.containsIgnoreCase('RKO')) {
            badServiceOption = 'RK Only';
        }
        return badServiceOption;
    }

    private static String getEmployeeTier(String productName) {
        //Attempt to return a formatted employee pricing tier from productName
        Pattern employeeTierPattern = Pattern.compile('(?:([0-9]{1,3}\\s?)-(\\s?[0-9]{1,3}))|([0-9]{1,}\\s?[+])');
        matcher employeeTierMatch = employeeTierPattern.matcher(productName);
        Boolean employeeMatchFound = employeeTierMatch.find();
        String newEmployeeTier = null;
        system.debug('employee match: ' + employeeMatchFound);

        if (employeeMatchFound) {
            if (!String.isBlank(employeeTierMatch.group(3))) {
                newEmployeeTier = employeeTierMatch.group(3);
            } else if (!String.isBlank(employeeTierMatch.group(1)) && !String.isBlank(employeeTierMatch.group(2))) {
                newEmployeeTier = employeeTierMatch.group(1) + '-' + employeeTierMatch.group(2);
            }
        }

        system.debug('new employee tier: ' + newEmployeeTier);
        return newEmployeeTier;
    }

    private static String getRate(String productName) {
        //Attempt to return a formatted rate from productName
        String newRate = null;

        if (productName.containsIgnoreCase('annual')) {
            newRate = 'Annual';
        } else if (productName.containsIgnoreCase('quarter')) {
            newRate = 'Quarterly';
        } else if (productName.containsIgnoreCase('month')) {
            newRate = 'Monthly';
        } else if (productName.containsIgnoreCase('week')) {
            newRate = 'Weekly';
        }

        system.debug('new rate: ' + newRate);
        return newRate;
    }
}