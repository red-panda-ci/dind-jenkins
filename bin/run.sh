#!/bin/sh

TAG=$1
docker run \
--privileged \
--name jenkins \
-e JENKINS_USER=redpanda \
-e JENKINS_PASS=redpanda \
-p 8080:8080 \
redpandaci/jenkins-dind:$TAG