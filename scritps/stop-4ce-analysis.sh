#!/bin/bash
echo "Stop and Remove 4ce-analysis Docker"


CONTAINER_NAME=4ce

if [  "$(docker ps -q -f name=${CONTAINER_NAME})" ]; then
     
     docker stop ${CONTAINER_NAME}
     docker rm ${CONTAINER_NAME}
     
     docker ps -as

else
	 echo "No Container is running: "${CONTAINER_NAME}
     
fi

