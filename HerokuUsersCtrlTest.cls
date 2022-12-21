@isTest
private class HerokuUsersCtrlTest{
    @isTest static void testCallout() {
        // Set mock callout class 
        MockHttpResponseGenerator mock = new MockHttpResponseGenerator();        
        Test.setMock(HttpCalloutMock.class, mock);
        HerokuUsersCtrl.getUsers();
    }
}