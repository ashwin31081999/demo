#!/bin/bash
GIT_BRANCH=${GIT_BRANCH:-$(git rev-parse --abbrev-ref HEAD)}
# Push the Docker image to the appropriate repository
if [[ "${GIT_BRANCH}" == "origin/master" ]]; then
  docker tag nodejs $DOCKER_BFLASK_IMAGE1
  docker push $DOCKER_BFLASK_IMAGE1
elif [[ "${GIT_BRANCH}" == "origin/dev" ]]; then
  docker tag nodejs $DOCKER_BFLASK_IMAGE2
  docker push $DOCKER_BFLASK_IMAGE2
fi



