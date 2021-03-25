global class TaxUpdate implements Database.Batchable<sObject> {
   
   global final String Query;
    global final String field;
    global final String value;

    global TaxUpdate(String q, String f , Integer v){

        Query=q; field=f; value=v;
    }

    global Database.QueryLocator start(Database.BatchableContext Bc){
        return Database.getQueryLocator(query);
    }

    global void execute(Database.BatchableContext Bc, List<Bill__c> scope){
        for (Bill__c b : scope){
            b.put(field,value);
        }
        update scope;
    }

    global void finish(Database.BatchableContext BC){

    }
}