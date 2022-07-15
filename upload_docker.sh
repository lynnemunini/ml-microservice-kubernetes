#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Create dockerpath
dockerpath=lynnemunini/ml-microservice-api

# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker tag ml-microservice-api $dockerpath
docker images
# Push image to a docker repository
docker push $dockerpath
