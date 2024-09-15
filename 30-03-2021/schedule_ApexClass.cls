public class SchedulableDemo1 implements schedulable {
    public void execute (schedulableContext sc) {
        Doctor__c d = new Doctor__c(Over_Time__c=5000);
        insert d;
    }
}