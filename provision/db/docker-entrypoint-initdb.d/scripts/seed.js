db = db.getSiblingDB('api-storage');

db.usertypes.insert({ 
    _id : ObjectId("6094f63a09c706a872a9d743"), 
    createdAt : new Date(), 
    updatedAt : new Date(), 
    size : Number(10737418240), 
    name : "default"
});

db.storages.insert({ 
    _id : ObjectId("60d96edbf8f786c14a00260a"), 
    createdAt : new Date(), 
    updatedAt : new Date(), 
    freeSpace : Number(107374182400), 
    name : "storage1",
    status : "active"
});