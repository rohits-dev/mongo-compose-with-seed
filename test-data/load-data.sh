#!/bin/bash

echo "mongodb://$MONGO_USERNAME:$MONGO_PASSWORD@$MONGO_HOSTNAME:$MONGO_PORT/$MONGO_DB?authSource=admin"
uri="mongodb://$MONGO_USERNAME:$MONGO_PASSWORD@$MONGO_HOSTNAME:$MONGO_PORT/$MONGO_DB?authSource=admin"
echo $uri;

mongo $uri cleardb.js

ls -1 *.json | while read jsonfile; 
do 
echo "rohit";
echo "${jsonfile%.*}";


    mongoimport --uri "mongodb://$MONGO_USERNAME:$MONGO_PASSWORD@$MONGO_HOSTNAME:$MONGO_PORT/$MONGO_DB?authSource=admin" \
        --collection "${jsonfile%.*}" --file $jsonfile --type json --jsonArray
done


