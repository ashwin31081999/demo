#!/bin/bash
# Push the Docker image to the appropriate repository
if [[ "${BRANCH_NAME}" == "master" ]]; then
  docker tag nodejs ashwin31081999/prod:latest
  docker push ashwin31081999/prod:latest
elif [[ "${BRANCH_NAME}" == "dev" ]]; then
  docker tag nodejs ashwin31081999/dev:latest
  docker push ashwin31081999/dev:latest
else
  echo "Not on master or dev branch. Exiting."
  exit 1
fi



