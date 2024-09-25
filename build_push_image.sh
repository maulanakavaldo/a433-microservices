#!/bin/bash

# 1. Membuat Docker Image dari Dockerfile yang tadi dibuat, 
#    dengan nama image item-app dan tag v1
docker build -t item-app:v1 .

# 2. Melihat daftar Image di lokal
docker images

# 3. Mengubah nama Image agar sesuai format
docker tag item-app:v1 ghcr.io/maulanakavaldo/item-app:v1 # GitHub Packages
docker tag item-app:v1 alkavmaulana/item-app:v1  # Docker Hub

# Login ke GitHub Packages dan Docker Hub
echo $PAT | docker login ghcr.io --username maulanakavaldo --password-stdin # GitHub Packages
docker login	# Docker Hub

# Mengunggah image ke GitHub Packages dan Docker Hub
docker push alkavmaulana/item-app:v1 		# Docker Hub
docker push ghcr.io/maulanakavaldo/item-app:v1 	# GitHub Packages
