#!/bin/sh

TAG=$1
docker run --privileged --name jenkins -p 8080:8080 redpandaci/jenkins-dind:$TAG