#!/bin/bash

apt update -y

apt install docker.io -y

systemctl start docker

docker pull mithunvm92/frontend:v2
docker pull mithunvm92/user-service:v1
docker pull mithunvm92/product-service:v1
docker pull mithunvm92/order-service:v1
docker pull mithunvm92/cart-service:v1

docker run -d --name frontend -p 3000:3000 mithunvm92/frontend:v2
docker run -d --name user-service -p 3001:3000 mithunvm92/user-service:v1
docker run -d --name product-service -p 3002:3000 mithunvm92/product-service:v1
docker run -d --name order-service -p 3003:3000 mithunvm92/order-service:v1
docker run -d --name cart-service -p 3004:3000 mithunvm92/cart-service:v1
