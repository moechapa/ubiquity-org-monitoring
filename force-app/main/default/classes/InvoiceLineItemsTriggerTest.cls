@isTest
private class InvoiceLineItemsTriggerTest {

    @TestSetup
    static void setupInvoiceLineItems(){
        Account testAccount = new Account(
            Name ='Test Account'
        );
        insert testAccount;
        system.debug('Test account inserted');
        Invoice__c testInvoice = new Invoice__c(
            Name = 'Test Invoice',
            Account__c = testAccount.Id,
            Invoice_Date__c = System.today(),
            Status__c = 'Open'
            );
        insert testInvoice;
        system.debug('Test invoice inserted');
    }

    @isTest
    static void insertInvoiceLineItems() {
        system.debug('Beginning invoice item insert test. . .');
        Id invoiceId = [SELECT Id FROM Invoice__c WHERE Name = 'Test Invoice' LIMIT 1].Id;
        List <Invoice_Line_Items__c> itemList = new List <Invoice_Line_Items__c>{
            new Invoice_Line_Items__c(Product_Name__c = 'Compliance - Additional Tasks Completed (/Hour)', Invoice__c = invoiceId, Amount__c = 1),
            new Invoice_Line_Items__c(Product_Name__c = 'Ubiquity Plan Services Fee - Unbundled', Invoice__c = invoiceId, Amount__c = 2),
            new Invoice_Line_Items__c(Product_Name__c = 'Ubiquity Plan Services Fee - Bundled', Invoice__c = invoiceId, Amount__c = 3),
            new Invoice_Line_Items__c(Product_Name__c = 'RKO Ubiquity - Quarterly (16-30 employees)', Invoice__c = invoiceId, Amount__c = 4),
            new Invoice_Line_Items__c(Product_Name__c = 'Single(k) Ubiquity - Annual', Invoice__c = invoiceId, Amount__c = 5),
            new Invoice_Line_Items__c(Product_Name__c = 'Record-kept Single(k) Ubiquity - Annual (0-1 employees)', Invoice__c = invoiceId,
            Employee_Tier__c = '1-15', Service_Option__c = 'Custom(k)', Rate__c = 'Monthly', Amount__c = 6)
        };
        insert itemList;

        List <Invoice_Line_Items__c> updateItemList = new List <Invoice_Line_Items__c>();

        for (Invoice_Line_Items__c item : [SELECT Id, Product_Name__c, Rate__c, Service_Option__c, Amount__c, Employee_Tier__c FROM Invoice_Line_Items__c WHERE Invoice__c = :invoiceId ORDER BY Amount__c ASC]) {
            system.debug('Item amount: ' + item.Amount__c.stripTrailingZeros().toPlainString());
            system.debug(item.Product_Name__c + ', translated to:');
            system.debug('Service option: ' + item.Service_Option__c);
            system.debug('Employee tier: ' + item.Employee_Tier__c);
            system.debug('Rate: ' + item.Rate__c);
            switch on item.Amount__c.stripTrailingZeros().toPlainString() {
                when '1' {
                    System.assert(String.isBlank(item.Service_Option__c), 'Service option should be blank');
                    System.assert(String.isBlank(item.Employee_Tier__c), 'Employee tier should be blank');
                    System.assert(String.isBlank(item.Rate__c), 'Rate should be blank');
                } 
                when '2' {
                    System.assertEquals('Simply Retirement Unbundled', item.Service_Option__c, 'Service option should be Simply Retirement Unbundled');
                    System.assert(String.isBlank(item.Employee_Tier__c), 'Employee tier should be blank');
                    System.assert(String.isBlank(item.Rate__c), 'Rate should be blank');   
                }
                when '3' {
                    System.assertEquals('Simply Retirement Bundled', item.Service_Option__c, 'Service option should be Simply Retirement Bundled');
                    System.assert(String.isBlank(item.Employee_Tier__c), 'Employee tier should be blank');
                    System.assert(String.isBlank(item.Rate__c), 'Rate should be blank');
                }
                when '4' {
                    System.assertEquals('RK Only', item.Service_Option__c, 'Service option should be RK Only');
                    System.assertEquals('16-30', item.Employee_Tier__c, 'Employee tier should be 16-30');
                    System.assertEquals('Quarterly', item.Rate__c, 'Rate should be Quarterly');
                }
                when '5' {
                    System.assertEquals('Single(k)', item.Service_Option__c, 'Service option should be Single(k)');
                    System.assert(String.isBlank(item.Employee_Tier__c), 'Employee tier should be blank');
                    System.assertEquals('Annual', item.Rate__c, 'Rate should be Annual');
                }
                when '6' {
                    System.assertEquals('Custom(k)', item.Service_Option__c, 'Service option should be Custom(k)');
                    System.assertEquals('1-15', item.Employee_Tier__c, 'Employee tier should be 1-15');
                    System.assertEquals('Monthly', item.Rate__c, 'Rate should be Monthly');
                }
            }
        }
    }
    @isTest
    static void updateInvoiceLineItems() {
        system.debug('Beginning invoice item update test . . .');
        Id invoiceId = [SELECT Id FROM Invoice__c WHERE Name = 'Test Invoice' LIMIT 1].Id;
        List <Invoice_Line_Items__c> itemList = new List <Invoice_Line_Items__c>{
            new Invoice_Line_Items__c(Product_Name__c = '', Invoice__c = invoiceId, Amount__c = 1),
            new Invoice_Line_Items__c(Product_Name__c = '', Invoice__c = invoiceId, Amount__c = 2),
            new Invoice_Line_Items__c(Product_Name__c = '', Service_Option__c = 'leaveMe', Employee_Tier__c = 'leaveMe',
            Invoice__c = invoiceId, Amount__c = 3)
        };
        insert itemList;

        List <Invoice_Line_Items__c> updateItemList = new List <Invoice_Line_Items__c>();

        for (Invoice_Line_Items__c item : [SELECT Id, Product_Name__c, Rate__c, Service_Option__c, Amount__c, Employee_Tier__c FROM Invoice_Line_Items__c WHERE Invoice__c = :invoiceId ORDER BY Amount__c ASC]) {
            system.debug('Item amount: ' + item.Amount__c.stripTrailingZeros().toPlainString());
            system.debug(item.Product_Name__c + ', translated to:');
            system.debug('Service option: ' + item.Service_Option__c);
            system.debug('Employee tier: ' + item.Employee_Tier__c);
            system.debug('Rate: ' + item.Rate__c);
            switch on item.Amount__c.stripTrailingZeros().toPlainString() {
                when '1' {
                    item.Product_Name__c = 'Custom(k) Ubiquity - Quarterly (101+ employees)';
                }
                when '2' {
                    item.Product_Name__c = 'Single(k) Ubiquity - Annual';
                }
                when '3' {
                    item.Product_Name__c = 'Custom(k) Ubiquity - Monthly (0-15 employees)';
                }
            }
            updateItemList.add(item);
        }
        update updateItemList;

        for (Invoice_Line_Items__c updatedItem : [SELECT Id, Product_Name__c, Rate__c, Service_Option__c, Employee_Tier__c, Amount__c FROM Invoice_Line_Items__c WHERE Invoice__c = :invoiceId ORDER BY Amount__c ASC]) {
            switch on updatedItem.Amount__c.stripTrailingZeros().toPlainString() {
                when '1' {
                    System.assertEquals(updatedItem.Service_Option__c, 'Custom(k)', 'Service option should be Custom(k)');
                    System.assertEquals(updatedItem.Employee_Tier__c, '101+', 'Employee tier should be 101+');
                    System.assertEquals(updatedItem.Rate__c, 'Quarterly', 'Rate should be Quarterly');
                }
                when '2' {
                    System.assertEquals(updatedItem.Service_Option__c, 'Single(k)', 'Service option should be Single(k)');
                    System.assert(String.isBlank(updatedItem.Employee_Tier__c), 'Employee tier should be blank');
                    System.assertEquals(updatedItem.Rate__c, 'Annual', 'Rate should be Annual');
                }
                when '3' {
                    System.assertEquals(updatedItem.Service_Option__c, 'leaveMe', 'Service option should be unchanged');
                    System.assertEquals(updatedItem.Employee_Tier__c, 'leaveMe', 'Employee tier should be unchanged');
                    System.assertEquals(updatedItem.Rate__c, 'Monthly', 'Rate should be monthly');
                }
            }
            system.debug(updatedItem.Product_Name__c + ', updated and translated to:');
            system.debug('Service option: ' + updatedItem.Service_Option__c);
            system.debug('Employee tier: ' + updatedItem.Employee_Tier__c);
            system.debug('Rate: ' + updatedItem.Rate__c);
        }
    }
}