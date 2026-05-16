#!/bin/bash

echo "Stopping Existing Container..."

docker stop react-app || true

docker rm react-app || true

echo "Deploying New Container..."

docker run -d \
  -p 80:80 \
  --restart always \
  --name react-app \
  react-app

echo "Deployment Completed"
