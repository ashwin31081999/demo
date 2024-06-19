#!/bin/bash
GIT-BRANCH=git revv-parse --abbrev-ref HEAD
if[[GIT-BRANCH==main]] then
sudo chmod +x build.sh
./build.sh
docker tag nginx ashwin31081999/prod
docker login
user_name=ashwin31081999
password=
docker push ashwin31081999/prod
elif[[GIT-BRANCH==dev]] then
sudo chmod +x build.sh
./build.sh
docker tag nginx ashwin31081999/dev
docker login
user_name=ashwin31081999
password=
docker push ashwin31081999/dev
else
echo "pipeline is failed" 

