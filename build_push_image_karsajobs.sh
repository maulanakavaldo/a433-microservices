#!/bin/bash

# Build Docker image
docker build -t ghcr.io/maulanakavaldo/karsajobs:latest .

# Log in to GitHub Container Registry
# docker login ghcr.io -u maulanakavaldo -p $VAR-ENV
echo $PAT | docker login ghcr.io --username maulanakavaldo --password-stdin

# Push Docker image to GitHub Container Registry
docker push ghcr.io/maulanakavaldo/karsajobs:latest
