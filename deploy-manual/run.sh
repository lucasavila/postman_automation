#!/bin/bash

docker stop postman_automation
docker rm postman_automation

yes | docker login -u deploycolon -p "#saasdockerhub26566"

docker run --name postman_automation --entrypoint=/entrypoint.sh  -p 8098:3000 saascolon/postman_automation:latest
