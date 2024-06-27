#!/bin/bash

docker login -u $DOCKER_USER -p $DOCKER_PASS

#building the image:
docker build -t nodejs .
docker images
docker-compose up -d

