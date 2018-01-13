#!/bin/bash

JENKINS_VERSION=$1
BASE_PLUGINS="$(cat ./src/plugins.txt|sed -e 's/^/\* /')"
ALL_PLUGINS="$(cat ./test/reports/plugins-versions.txt)"

cat << EOF
# Jenkins-dind

Jenkins image with docker in docker strategy

_Supported tags and respective \`Dockerfile\` links:_
[\`latest\`, \`${JENKINS_VERSION}\`](Dockerfile)

![Jenkins-dind](https://raw.githubusercontent.com/red-panda-ci/jenkins-dind/master/logo.png) [![Join the chat at https://gitter.im/red-panda-ci/jenkins-dind](https://badges.gitter.im/red-panda-ci/jenkins-dind.svg)](https://gitter.im/red-panda-ci/jenkins-dind?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

## Usage

\`\`\`bash

docker run --privileged \\
-p 8080:8080 \\
-e JENKINS_USER=redpanda \\
-e JENKINS_PASS=redpanda \\
-v my/volume:/root/.jenkins \\
redpandaci/jenkins-dind:latest

\`\`\`

## Jenkins version

$JENKINS_VERSION

## Plugins

We use the following plugins as the base for installing pluginss

$BASE_PLUGINS

As result of the plugins installation, resolving all dependencies, we get this

$ALL_PLUGINS

## Utilities

* docker
* docker-compose
* jar
* jq
* make
* python
* unzip
EOF
