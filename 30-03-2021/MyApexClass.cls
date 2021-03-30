public class MyApexClass{
    public static void myMethod1 (Account acc){
        System.debug('inside method 1');
        if (acc.name == 'other method')
        {
            acc.website= '';
            update acc;
        }
    }
    public static void myMethod2 (List<Account> accounts){
        System.debug('inside method 2');
    }
}