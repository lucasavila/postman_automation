#!/bin/bash

docker build -t docker.dev.redbee.io/colon-base-frontend .
docker push docker.dev.redbee.io/colon-base-frontend
