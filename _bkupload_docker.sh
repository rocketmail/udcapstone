#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=anhanh2212/buildcusnginx

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username=anhanh2212
docker tag buildcusnginx:latest "$dockerpath":1.0.0

# Step 3:
# Push image to a docker repository
docker push "$dockerpath":1.0.0
