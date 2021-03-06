#!/bin/sh

VERSION_NUMBER=$2
IMAGENES="postman_automation"

cd /webapps/redbee/postman_automation/integracion/deploy/

AMBIENTE_YML=""

if [ "$1" == "-help" ];then
        echo "Argumentos: <AMBIENTE_YML> (desa.yml,test.yml,preprod.yml,prod.yml...)"
        exit 0
fi

if [ "$1" == "" ];then
        echo "ERROR: no se proporciono AMBIENTE_YML (desa.yml, test.yml,preprod.yml,prod.yml...)"
        exit 0
else
        AMBIENTE_YML="$1/$1.yml"
        echo $AMBIENTE_YML
fi

echo "$AMBIENTE_YML"

echo "Deteniendo el compose"
docker stop "$IMAGENES"
docker rm "$IMAGENES"

echo "version: $VERSION_NUMBER"

docker-compose -f $AMBIENTE_YML stop
echo "Eliminando el compose anterior"
docker-compose -f $AMBIENTE_YML rm -f
echo "Eliminando las imagenes anteriores"
docker rmi registry.dev.redbee.io/"$IMAGENES":$VERSION_NUMBER

echo "se hace pull de las imagenes $VERSION_NUMBER"
docker pull registry.dev.redbee.io/"$IMAGENES":$VERSION_NUMBER
echo "Levantando el compose"
docker-compose -f $AMBIENTE_YML scale "$IMAGENES"=1

echo "Listo!"

