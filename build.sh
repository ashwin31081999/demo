#!/bin/bash
#docker login
docker login -u $DOCKER_USER -p $DOCKER_PASS
#stop and remove all containers
docker rm -f $(docker ps -a -q)
#remove all the images
docker rmi $(docker images -aq)
#building the image:
docker build -t nodejs .
#print the images
docker images
#creating containers
docker-compose up -d

