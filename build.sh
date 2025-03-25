#!/bin/bash

# Variables
IMAGE_NAME="sukanth0021/final_project"
TAG="latest"

# Build Docker image
docker build -t $IMAGE_NAME:$TAG .
echo "Docker image $IMAGE_NAME:$TAG built successfully."
