#!/bin/bash
echo "Pull 4ce Data"
              
S3_PATH=$1              


if [ -z $S3_PATH ] ; then
   echo "No S3 Path is provided.. to pull the data from S3 please pass as an arugument."
   exit 1
else
   echo "Input S3 Path: "${S3_PATH}
fi


echo "Downloading data from s3..."
/usr/local/bin/aws s3 cp --recursive ${S3_PATH} /opt/4ceData/


echo "Decrypting Phase1 Data..."
cd /opt/4ceData/Phase1

sudo chmod -R 777 /opt/4ceData/Phase1

for encrypted_file in *.csv-encrypted; do
  echo ${encrypted_file}
  aws-encryption-cli --decrypt --input $encrypted_file --encryption-context purpose=test --metadata-output /opt/temp/${encrypted_file}_metadata --output $encrypted_file.unencrypted --discovery true
done

sudo chmod -R 777 /opt/4ceData/Phase1

echo "Decrypting Phase2 Data..."
cd /opt/4ceData/Phase2

sudo chmod -R 777 /opt/4ceData/Phase2

for encrypted_file in *.csv-encrypted; do
  echo ${encrypted_file}
  aws-encryption-cli --decrypt --input $encrypted_file --encryption-context purpose=test --metadata-output /opt/temp/${encrypted_file}_metadata --output $encrypted_file.unencrypted --discovery true
done

sudo chmod -R 777 /opt/4ceData/Phase2



          
          