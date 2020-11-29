#!/usr/bin/env bash
echo "************************************Building application - Executing mvn clean verify************************************"
mvn clean verify
echo "************************************Application build completed ************************************"

echo " ************************************ Building docker image - Executing build -t greet-service .************************************"
docker build -t greet-service .
echo " ************************************ Docker image created successfully ************************************."

echo " ************************************ Running docker image - Executing run --name=greet-service --rm -p 8081:8081  greet-service ************************************"
docker run --name=greet-service --rm -p 8081:8081  greet-service

echo "************************************ Testing application ************************************ "
curl "localhost:8081/introduction/greet?name=Ajinkya"
echo "************************************ Application is Up ************************************"
