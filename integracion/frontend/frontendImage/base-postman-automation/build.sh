#!/bin/bash

docker build -t docker.dev.redbee.io/postman_automation .
docker push docker.dev.redbee.io/base-postman-automation
