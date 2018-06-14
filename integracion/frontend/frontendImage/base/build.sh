#!/bin/bash

docker build -t docker.dev.redbee.io/colon-base-cert .
docker push docker.dev.redbee.io/colon-base-cert
