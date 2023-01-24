import ballerinax/trigger.asgardeo;

listener asgardeo:Listener asgardeoListener 
= new(listenerConfig = {clientId: "", clientSecret: "", organization: "", tokenEndpointHost: "", callbackURL: "", hubURL: ""}, listenOn = 8090);