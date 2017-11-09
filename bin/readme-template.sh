#!/bin/bash

JENKINS_VERSION=$1
PLUGINS="$(cat ./test/reports/plugins-versions.txt)"

cat  << EOF
# Jenkins-dind

Jenkins image with docker in docker strategy

_Supported tags and respective \`Dockerfile\` links:_
[\`latest\`, \`develop\`, \`${JENKINS_VERSION}\`](Dockerfile)

![Jenkins-dind](https://raw.githubusercontent.com/red-panda-ci/jenkins-dind/master/logo.png)

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

$PLUGINS

## Utilities

* docker
* docker-compose
* unzip
* python
* make
* jar
EOF

# $ ./bin/readme-template.sh $(cat ./src/jenkins-version) "$(cat ./src/plugins.txt | sed -e 's/^/\* /' )"