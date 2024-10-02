#!/bin/bash

# Build Docker image
docker build -t ghcr.io/maulanakavaldo/karsajobs:latest .

# Log in to GitHub Container Registry
docker login ghcr.io -u maulanakavaldo -p $PACKAGE_TOKEN
# echo $PACKAGE_TOKEN | docker login ghcr.io --username maulanakavaldo --password-stdin

# Push Docker image to GitHub Container Registry
docker push ghcr.io/maulanakavaldo/karsajobs:latest
