#!/bin/bash

rm -rf src/token/node_modules/
rm -rf src/node_modules/

cp -R ../tests/ src/

yes | docker login -u deploycolon -p "#saasdockerhub26566" saascolon

docker build -t saascolon/postman_automation:latest .
docker push saascolon/postman_automation:latest
