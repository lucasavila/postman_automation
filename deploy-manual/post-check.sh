#!/bin/bash

POST_CHECK=$(docker logs --tail 30 postman_automation | grep 'failure' | wc -l )

if [ $POST_CHECK -gt 1 ]; then
	echo "LA EJECUCIÓN DE LOS TEST DE AUTOMATION TUVO ERRORES"
	exit 1
fi
