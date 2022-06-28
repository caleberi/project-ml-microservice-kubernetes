#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=hebronace/predictor
name=trio-lingo

# Step 2
# Run the Docker Hub container with kubernetes

# kubectl create secret docker-registry credential --docker-server=https://index.docker.io/v1/ --docker-username=hebronace --docker-password=df5df5c4-8757-44ad-8719-10bc7158c469 --docker-email=caleberioluwa@gmail.com

# kubectl run $name --image=$dockerpath --port=8000

kubectl run $name --image=$dockerpath --port=8000 --image-pull-policy=Never

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pods/app 8000:8000
