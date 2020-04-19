#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=rmeinl/ml-microservice-kubernetes:latest

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run --image=$dockerpath ml-microservice-kubernetes --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl expose deployment ml-microservice-kubernetes --port=8000 --target-port=80

# delete
# kubectl delete pods --all