import ballerinax/trigger.asgardeo;
import ballerina/io;

configurable string clientId = ?;
configurable string clientSecret = ?;
configurable string organization = ?;
configurable string tokenEndpointHost = ?;
configurable string callbackURL = ?;
configurable string hubURL = ?;

listener asgardeo:Listener asgardeoListener 
= new(listenerConfig = {clientId, clientSecret, organization, tokenEndpointHost, callbackURL, hubURL}, listenOn = 8090);

service asgardeo:LoginService on asgardeoListener {

    remote function onLoginSuccess(asgardeo:LoginSuccessEvent event) returns error? {
        io:println(event);
        return;
    }
}