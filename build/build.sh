#!/bin/bash

# Build the Docker image
docker build -t my-nginx:latest .

# Tag the image for the appropriate repository
if [[ $(git rev-parse --abbrev-ref HEAD) == "main" ]]; then
  docker tag my-nginx:latest ashwin31081999/prod:latest
elif [[ $(git rev-parse --abbrev-ref HEAD) == "dev" ]]; then
  docker tag my-nginx:latest ashwin31081999/dev:latest
else
  echo "Not on main or dev branch. Exiting."
  exit 1
fi

