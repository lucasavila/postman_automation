#!/bin/bash

WORKSPACE="/home/colon/src/tests"
#WORKSPACE="/home/lucas/proyectos/colon/postman/tests"

cd $WORKSPACE

cd token

rm token.properties

node index.js

TOKEN=`cat token.properties`
echo "TOKEN: $TOKEN"

cd ..

cp environment.source PRODUCTION.postman_environment.json

sed -i "s/{{token}}/$TOKEN/g" PRODUCTION.postman_environment.json

node index.js
