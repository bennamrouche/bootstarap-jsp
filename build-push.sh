#!/bin/bash

USERNAME="bennamrouche"
IMAGE_NAME="bootstrap-jsp"
TAG_NAME="beta"

echo "Building Docker image..."


docker build -t $USERNAME/$IMAGE_NAME:$TAG_NAME .

if [ $? -ne 0 ]; then
  echo "Docker build failed!"
  exit 1
fi

echo "Pushing Docker image to Docker Hub..."

docker push $USERNAME/$IMAGE_NAME:$TAG_NAME

if [ $? -ne 0 ]; then
  echo "Docker push failed!"
  exit 1
fi

echo "Docker image pushed successfully to Docker Hub!"
