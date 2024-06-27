#!/bin/bash

# Get current branch
BRANCH_NAME=$(git rev-parse --abbrev-ref HEAD)

if [ "$BRANCH_NAME" = "dev" ]; then
  DOCKER_REPO="ashwin31081999/dev"
elif [ "$BRANCH_NAME" = "master" ]; then
  DOCKER_REPO="ashwin31081999/prod"
else
  echo "Branch not configured for deployment"
  exit 1
fi

docker tag nodejs:${BUILD_NUMBER} $DOCKER_REPO:${BUILD_NUMBER}
docker push $DOCKER_REPO:${BUILD_NUMBER}
docker push $DOCKER_REPO:latest



