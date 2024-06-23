#!/bin/bash

# Get the current branch name
CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)

# Define the image name
IMAGE_NAME="my-nginx:latest"

# Delete existing Docker image if it exists
if [[ $(docker images -q $IMAGE_NAME 2> /dev/null) != "" ]]; then
  docker rmi -f $IMAGE_NAME
fi

# Build the Docker image
docker build -t $IMAGE_NAME .

# Tag the image for the appropriate repository
if [[ $CURRENT_BRANCH == "main" ]]; then
  docker tag $IMAGE_NAME ashwin31081999/prod:latest
  echo "Tagged image as ashwin31081999/prod:latest"
elif [[ $CURRENT_BRANCH == "dev" ]]; then
  docker tag $IMAGE_NAME ashwin31081999/dev:latest
  echo "Tagged image as ashwin31081999/dev:latest"
else
  echo "Not on main or dev branch. Exiting."
  exit 1
fi

