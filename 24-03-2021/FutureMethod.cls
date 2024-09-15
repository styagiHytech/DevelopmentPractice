global class FutureMethod { 
    @future
    public static void myfutureMethod(Decimal eur)
    {
        Decimal inr = 0.0;
        HTTP h = new HTTP();
        HTTPRequest req = new HTTPRequest();
        req.setEndpoint('https://api.exchangeratesapi.io/latest');
        req.setMethod('Get');
        HTTPResponse res = h.send(req);
        
        Map<String,object> jsonBody = (Map<String,object>)json.deserializeUntyped(res.getBody());
        system.debug(jsonBody);
        Map<String,object> mMap = (Map<String,object>) jsonBody.get('rates');
        Decimal conversionRate = (Decimal) mMap.get('INR');
        inr = eur * conversionRate;
        system.debug(inr);
    }

}