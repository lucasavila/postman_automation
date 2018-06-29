#!/bin/bash

docker build -t registry.dev.redbee.io/postman_automation .
docker push registry.dev.redbee.io/base-postman-automation
