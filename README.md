# Jenkins-dind

## Objective

Jenkins image with docker in docker strategy

_Supported tags and respective `Dockerfile` links:_
[`latest`, `develop`, `2.73.2`](Dockerfile)

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

2.73.2

## Plugins

* ansicolor:latest
* bitbucket:latest
* blueocean:latest
* build-monitor-plugin:latest
* cloudbees-bitbucket-branch-source:latest
* embeddable-build-status:latest
* file-operations:latest
* git:latest
* github-branch-source:latest
* github-organization-folder:latest
* github:latest
* htmlpublisher:latest
* jira-steps:latest
* pipeline-utility-steps:latest
* simple-theme-plugin:latest
* slack:latest
* sonar:latest
* thinBackup:latest
* timestamper:latest
* workflow-aggregator:latest

## Utilities

* docker
* docker-compose
* unzip
* python
* make
* jar
