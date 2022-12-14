#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
 dockerpath=gtogbes/mlearn-app

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run mlearn-app  --image=$dockerpath --port=8100


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pods/mlearn-app 8100:8100

