#! /bin/dash

# membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image item-app, dan memiliki tag v1
docker build -t item-app:v1 .

# Melihat daftar image di lokal
docker images

# Mengubah nama image agar sesuai dengan format Docker Hub
docker tag item-app:v1 ajik769/item-app:v1

# Login ke Docker Hub via Terminal
echo $PASSWORD_DOCKER_HUB | docker login -u ajik769 --password-stdin

# Mengunggah image ke Docker Hub
docker push ajik769/item-app:v1 