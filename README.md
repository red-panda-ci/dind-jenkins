# Jenkins-dind 

_Jenkins image with docker in docker strategy_

_Supported tags and respective `Dockerfile` links:_
[`latest`, `develop`, `2.6.2`](Dockerfile)

![Jenkins-dind](https://raw.githubusercontent.com/red-panda-ci/jenkins-dind/master/logo.png)

## Usage

```bash

docker run --privileged \
-p 8080:8080 \
-e JENKINS_USER=redpanda \
-e JENKINS_PASS=redpanda \
-v my/volume:/root/.jenkins \
redpandaci/jenkins-dind:latest

```

## Jenkins version

2.6.2

## Plugins

* ansicolor:latest
* cloudbees-bitbucket-branch-source:latest
* bitbucket:latest
* build-monitor-plugin:latest
* blueocean:latest
* github-branch-source:latest
* github:latest
* git:latest
* jira-steps:latest
* workflow-aggregator:latest
* pipeline-utility-steps:latest
* simple-theme-plugin:latest
* slack:latest
* sonar:latest
* thinBackup:latest
* timestamper:latest
* github-organization-folder:latest
* embeddable-build-status:latest
* htmlpublisher:latest

## Utilities

* docker
* docker-compose
* unzip
* python
* make
* jar


