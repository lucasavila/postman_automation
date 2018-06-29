#!/bin/bash

docker build -t registry.dev.redbee.io/colon-base-cert .
docker push registry.dev.redbee.io/colon-base-cert
