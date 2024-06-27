#!/bin/bash
# Push the Docker image to the appropriate repository
if [[ $(git rev-parse --abbrev-ref HEAD) == "master" ]]; then
  docker tag nodejs ashwin31081999/prod:latest
  docker push ashwin31081999/prod:latest
elif [[ $(git rev-parse --abbrev-ref HEAD) == "dev" ]]; then
  docker tag nodejs ashwin31081999/dev:latest
  docker push ashwin31081999/dev:latest
else
  echo "Not on master or dev branch. Exiting."
  exit 1
fi



