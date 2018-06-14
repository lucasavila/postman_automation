#!/bin/bash

echo "WORKSPACE_PATH: $1"

if [ "$1" = "" ]; then
	echo "Path al workspace incorrecto"
	exit 0
fi

WORKSPACE_PATH=$1

cd $WORKSPACE_PATH

cd src
pwd

echo "Ejecutando npm cache clean"
npm cache clean
echo "npm install"
npm install

if [ $? -ne 0 ]; 
   then echo "ERROR EN BUILD DE FRONTEND"
   exit 1
fi

cd ..

tar -zcvf dist.tar.gz src/
