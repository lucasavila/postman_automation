#!/bin/bash

rm -rf token/node_modules/
rm -rf node_modules/

docker build -t docker.dev.redbee.io/postman_automation .
docker push docker.dev.redbee.io/postman_automation
