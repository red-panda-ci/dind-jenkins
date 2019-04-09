#!/bin/bash

TAG=$1
docker build --pull -t redpandaci/jenkins-dind:$TAG .
