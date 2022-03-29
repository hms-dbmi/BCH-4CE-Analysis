#!/bin/bash
echo "Start 4ce-analysis Docker"


CONTAINER_NAME=4ce

if [ ! "$(docker ps -q -f name=${CONTAINER_NAME})" ]; then
    if [ "$(docker ps -aq -f status=exited -f name=${CONTAINER_NAME})" ]; then
        # cleanup
        docker rm ${CONTAINER_NAME}
    fi
    # run your container
		docker run -d  --name ${CONTAINER_NAME}  --restart unless-stopped --env-file /opt/4ceData/4ce-analysis.env -v /opt/4ceData:/4ceData \
            -p 8788:8787 \
            -p 2200:22 \
            dbmi/4ce-analysis:version-2.4.0
        docker ps -as
        
else
	 echo "No Container is running: "${CONTAINER_NAME}
fi

