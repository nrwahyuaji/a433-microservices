#! /bin/dash

docker build -t ajik769/order-service:latest .

echo $PASSWORD_DOCKER_HUB | docker login -u ajik769 --password-stdin

docker push ajik769/order-service:latest