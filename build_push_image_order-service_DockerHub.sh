#! /bin/dash

# Build docker image menggunakan berkas dari Docker Hub
docker build -t ajik769/order-service:latest .

# Login ke Docker Hub
echo $PASSWORD_DOCKER_HUB | docker login -u ajik769 --password-stdin

# Push image ke Docker Hub
docker push ajik769/order-service:latest