#!/bin/bash

rm -rf token/node_modules/
rm -rf node_modules/

cp -R ../tests/ src/

echo -n | docker login -u colondocker -p Pnflqfsf01! registry.dev.redbee.io

docker build -t registry.dev.redbee.io/postman_automation:latest .
docker push registry.dev.redbee.io/postman_automation:latest
