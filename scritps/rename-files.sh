#!/bin/bash
echo "Rename files"
echo $pwd


cd /opt/4ceData/Phase1
ls -altr


for decrypted_file in *.csv-encrypted.decrypted; do
  echo ${decrypted_file}
  rename .csv-encrypted.decrypted .csv ${decrypted_file}
done

ls -altr


cd /opt/4ceData/Phase2
ls -altr


for decrypted_file in *.csv-encrypted.decrypted; do
  echo ${decrypted_file}
  rename .csv-encrypted.decrypted .csv ${decrypted_file}
done

ls -altr