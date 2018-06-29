#!/bin/bash

docker stop postman_automation
docker rm postman_automation

echo -n | docker login -u colondocker -p Pnflqfsf01! registry.dev.redbee.io

docker run --name postman_automation --entrypoint=/entrypoint.sh  -p 8098:3000 registry.dev.redbee.io/postman_automation:latest
