#! /bin/dash

# membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image item-app, dan memiliki tag v1
docker build -t item-app:v1 .

# Melihat daftar image di lokal
docker images

# Mengubah nama image agar sesuai dengan format GitHub Packages
docker tag item-app:v1 ghcr.io/nrwahyuaji/item-app:v1

# Login ke Docker Hub via Terminal
echo $PAT | docker login ghcr.io --username nrwahyuaji --password-stdin

# Mengunggah image ke GitHub Packages
docker push ghcr.io/nrwahyuaji/item-app:v1 