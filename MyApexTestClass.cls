@isTest
public class MyApexTestClass{
    @TestSetup
    static void data_setup(){
        Account accountA = new Account ();
        accountA.name = 'Test Account 1';
        Account accountB = new Account ();
        accountB.name = 'Test Account 2';
        accountB.website = 'www.xyz.com';
        insert accountA;
        insert accountB;
    }
    @isTest static void myMethod1(){
        Account acc = [select id,name from Account where name= 'Test Account 1'];
        MyApexClass.myMethod1(acc);
    }
    @isTest static void myMethod2(){
    List<Account> accounts = [select id,name, website from account];
    MyApexClass.myMethod2(accounts);
    }
}