@isTest
private class CommonTestSetup 
{
 @testSetup 
 static void setup() 
 {
  Account acct = new Account();
       acc.Name = 'Salesforce';
       acc.Industry = 'Technology';
  insert acc;
  
  Contact con = new Contact();
       con.FirstName = 'Saurav';
       con.LastName = 'Tyagi';
       con.AccountId = acct.Id;
  insert con;
 }
    
 @isTest 
 static void testMethod1() 
 {
  Account acc = [SELECT Id FROM Account WHERE Name='Salesforce'];
     acc.Phone = '123';
  update acc;
 }

 @isTest 
 static void testMethod2() 
 {
  Account acc = [SELECT Phone FROM Account WHERE Name='Salesforce'];
  System.assertEquals(null, acc.Phone);
 }
}