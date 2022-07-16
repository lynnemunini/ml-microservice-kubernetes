#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# This is your Docker ID/path (same name as uploaded repository)
dockerpath=lynnemunini/ml-microservice-api
# Run the Docker Hub container with kubernetes
kubectl run ml-microservice-api --image=$dockerpath --port=80 --labels app=ml-microservice-api
# List kubernetes pods
kubectl get pods
# Forward the container port to a host
kubectl port-forward ml-microservice-api --address 0.0.0.0 8000:80