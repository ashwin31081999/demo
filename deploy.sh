#!/bin/bash
# Push the Docker image to the appropriate repository
if [[ $(git rev-parse --abbrev-ref HEAD) == "master" ]]; then
  docker tag nodejs $DOCKER_BFLASK_IMAGE1
  docker push $DOCKER_BFLASK_IMAGE1
elif [[ $(git rev-parse --abbrev-ref HEAD) == "dev" ]]; then
  docker tag nodejs $DOCKER_BFLASK_IMAGE2
  docker push $DOCKER_BFLASK_IMAGE2
else
  echo "Not on master or dev branch. Exiting."
  exit 1
fi



