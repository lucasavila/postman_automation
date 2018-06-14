#!/bin/bash

JENKINS_JOB_PARAM=$2

export GIT_JOB_NAME="postman_automation"
export JENKINS_JOB=$JENKINS_JOB_PARAM
export BUILDER_NAME="postman_automation"

cd $1/integracion/frontend

bash run.sh
