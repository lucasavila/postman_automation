#!/bin/bash

docker build -t registry.dev.redbee.io/colon-base-frontend .
docker push registry.dev.redbee.io/colon-base-frontend
