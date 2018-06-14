#!/bin/bash

NOMBRE_IMAGEN="postman_automation"
VERSION_NUMBER=$1
JENKINS_JOB_BUILD=$2


cd /var/jenkins_home/workspace/$JENKINS_JOB_BUILD/integracion/frontend/frontendImage/

rm -rf tests/
cp -rf /var/jenkins_home/workspace/$JENKINS_JOB_BUILD/tests/ .
rm -rf tests/node_modules/

docker stop $NOMBRE_IMAGEN
docker rm $NOMBRE_IMAGEN

echo "docker rmi docker.dev.redbee.io/$NOMBRE_IMAGEN:$VERSION_NUMBER"
docker rmi "docker.dev.redbee.io/$NOMBRE_IMAGEN:$VERSION_NUMBER"

echo "docker build docker.dev.redbee.io/$NOMBRE_IMAGEN:$VERSION_NUMBER"
docker build -t "docker.dev.redbee.io/$NOMBRE_IMAGEN:$VERSION_NUMBER" .
docker push "docker.dev.redbee.io/$NOMBRE_IMAGEN:$VERSION_NUMBER"
