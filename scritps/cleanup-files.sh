#!/bin/bash
echo "Delete files"
echo $pwd


cd /opt/4ceData/Phase1
ls -altr

rm -rf *.csv-encrypted

ls -altr


cd /opt/4ceData/Phase2
ls -altr


rm -rf *.csv-encrypted

ls -altr