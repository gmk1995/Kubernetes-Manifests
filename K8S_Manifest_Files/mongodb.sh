#Creating RepelSet In MongoShell

rs.initiate ( { _id: "MainRepSet", version: 1,
members: [
    { _id: 0, host: "mongodb-statefulset-0.mongodb-service.testing-env.svc.cluster.local:27017"},
    { _id: 1, host: "mongodb-statefulset-1.mongodb-service.testing-env.svc.cluster.local:27017"},
    { _id: 2, host: "mongodb-statefulset-2.mongodb-service.testing-env.svc.cluster.local:27017"} ] } );


#Creating Root Username and Password 

db.getSiblingDB("admin").createUser( {user : "devdb",pwd : "devdb@123", roles: [{role: "root", db:"admin"}]});