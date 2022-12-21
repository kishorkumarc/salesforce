@isTest
global class MockHttpResponseGenerator implements HttpCalloutMock {
    // Implement this interface method
    global HTTPResponse respond(HTTPRequest req) {
        HttpResponse res = new HttpResponse();
        res.setHeader('Content-Type', 'application/json');
        res.setBody('[{"id":2,"username":"Christina.Waldron","firstName":"Christna","lastName":"Waldron"},{"id":2,"username":"Christina.Waldron","firstName":"Christna","lastName":"Waldron"}]');
        res.setStatusCode(200);
        return res;
    }
}