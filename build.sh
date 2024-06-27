#!/bin/bash
#login into dockerhub:
docker login -u $DOCKER_USER -p $DOCKER_PASS


#building the image:
docker build -t nodejs .
docker images
# Deploy using docker-compose
docker-compose up -d

