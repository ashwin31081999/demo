#!/bin/bash



#building the image:
docker build -t nodejs .
docker images
docker-compose up -d

