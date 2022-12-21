public class HerokuUsersCtrl {
    //constants
    public static final integer STATUS_CODE_200 = 200;
    @AuraEnabled(cacheable=true)
    public static List<Object> getUsers(){
            Http http =new Http();
            HttpRequest request=new HttpRequest();
            
            //below details can be configured using custom metadata or settings
            String username = 'Michelle.Wheeler';
            String password ='password' ;
            request.setEndpoint('https://young-atoll-71533.herokuapp.com/users');
            request.setMethod('GET');
            request.setTimeout(120000);
            
            request.setHeader('Authorization','Basic '+EncodingUtil.base64Encode(Blob.valueOf(username+':' +password))); 
            HttpResponse response=http.send(request);
            if(response.getStatusCode()==STATUS_CODE_200){
                system.debug(response.getBody());
            }
            if(response.getBody()!=null){
                List<object> results=(List<object>)JSON.deserializeUntyped(response.getBody());
                return results;
            }
            else{
                return null;
            }
        }
}