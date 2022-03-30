# BCH-4CE-Analysis

## Create default user and password
Go to scripts directory <br/>
Run the script ./create-demo-user.sh

## Start the 4CE Container
Go to scripts directory <br/>
Run the script ./start-4ce-analysis.sh

## Stop and remove the 4CE Container
Go to scripts directory <br/>
Run the script ./stop-4ce-analysis.sh

## Pull the 4CE data from S3
Have your Dataset location in S3 <br/>
Run the script ./pull-4ce-data.sh <S3_PATH>

## Access the UI
Grab the ip address.<br/>
Run this command on your local... <br/>
sudo sft  ssh -L 8788:localhost:8788  <IP_ADDRESS> <br/>

Open the browser:<br/>
type this url: http://localhost:8788
