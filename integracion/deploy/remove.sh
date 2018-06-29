#!/bin/bash

docker stop facebook-leads-api
docker rm facebook-leads-api:
docker rmi registry.dev.redbee.io/facebook-leads-api
