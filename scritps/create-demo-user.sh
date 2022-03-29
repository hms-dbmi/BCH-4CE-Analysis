#!/bin/bash
echo "Create 4ce-analysis.env file, with demouser and password"
                            
echo "[4ce-analysis]" > /opt/4ceData/4ce-analysis.env
echo "CONTAINER_USER_USERNAME=demouser" >> /opt/4ceData/4ce-analysis.env
echo "CONTAINER_USER_PASSWORD=`echo $RANDOM | base64 | head -c 20; echo`" >> /opt/4ceData/4ce-analysis.env

chmod 777 /opt/4ceData/4ce-analysis.env
cat /opt/4ceData/4ce-analysis.env