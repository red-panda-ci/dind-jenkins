#!/bin/bash

TAG=$1
docker build -t redpandaci/jenkins-dind:$TAG .