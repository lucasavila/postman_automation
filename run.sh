#!/bin/bash

cd token

node index.js

TOKEN=`cat token.properties`
echo "TOKEN: $TOKEN"

cd ..

cp environment.source PRODUCTION.postman_environment.json

sed -i "s/{{tokenToReplace}}/$TOKEN/g" PRODUCTION.postman_environment.json

node index.js
