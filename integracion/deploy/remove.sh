#!/bin/bash

docker stop facebook-leads-api
docker rm facebook-leads-api:
docker rmi docker.dev.redbee.io/facebook-leads-api
