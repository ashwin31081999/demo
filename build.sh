#!/bin/bash

# Remove any existing image with the same name
docker rmi -f my-nginx:latest

# Build the Docker image
docker build -t my-nginx:latest .


