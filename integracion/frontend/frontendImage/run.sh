#!/bin/bash

docker stop postman_automation
docker rm postman_automation

docker run --name postman_automation --entrypoint=/entrypoint.sh -d  -p 8098:3000 registry.dev.redbee.io/postman_automation
