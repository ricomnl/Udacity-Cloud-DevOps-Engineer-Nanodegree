#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=rmeinl/ml-microservice-kubernetes

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
# docker login --username=rmeinl
docker tag ml-microservice-kubernetes rmeinl/ml-microservice-kubernetes:latest

# Step 3:
# Push image to a docker repository
docker push rmeinl/ml-microservice-kubernetes:latest