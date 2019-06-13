# Jenkins-dind

Jenkins image with docker in docker strategy

_Supported tags and respective `Dockerfile` links:_
[`latest`, `2.164.3`](Dockerfile)

![Jenkins-dind](https://raw.githubusercontent.com/red-panda-ci/jenkins-dind/master/logo.png) [![Join the chat at https://gitter.im/red-panda-ci/jenkins-dind](https://badges.gitter.im/red-panda-ci/jenkins-dind.svg)](https://gitter.im/red-panda-ci/jenkins-dind?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

## Usage

```bash

docker run --privileged \
-p 8080:8080 \
-e JENKINS_USER=redpanda \
-e JENKINS_PASS=redpanda \
-v jenkins-dind:/root/.jenkins \
redpandaci/jenkins-dind:latest

```

## Jenkins version

2.164.3

## Plugins

We use the following plugins as the base for installing plugins

* ansicolor:latest
* antisamy-markup-formatter:latest
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
* mask-passwords:latest
* pipeline-utility-steps:latest
* simple-theme-plugin:latest
* slack:latest
* sonar:latest
* ssh-agent:latest
* thinBackup:latest
* timestamper:latest
* workflow-aggregator:latest

As result of the plugins installation, resolving all dependencies, we get this

Total number of plugins: 104

* ace-editor - 1.1
* ansicolor - 0.6.2
* antisamy-markup-formatter - 1.5
* apache-httpcomponents-client-4-api - 4.5.5-3.0
* authentication-tokens - 1.3
* bitbucket - 1.1.9
* blueocean - 1.17.0
* blueocean-autofavorite - 1.2.4
* blueocean-bitbucket-pipeline - 1.17.0
* blueocean-commons - 1.17.0
* blueocean-config - 1.17.0
* blueocean-core-js - 1.17.0
* blueocean-dashboard - 1.17.0
* blueocean-display-url - 2.3.0
* blueocean-events - 1.17.0
* blueocean-git-pipeline - 1.17.0
* blueocean-github-pipeline - 1.17.0
* blueocean-i18n - 1.17.0
* blueocean-jira - 1.17.0
* blueocean-jwt - 1.17.0
* blueocean-personalization - 1.17.0
* blueocean-pipeline-api-impl - 1.17.0
* blueocean-pipeline-editor - 1.17.0
* blueocean-pipeline-scm-api - 1.17.0
* blueocean-rest - 1.17.0
* blueocean-rest-impl - 1.17.0
* blueocean-web - 1.17.0
* bouncycastle-api - 2.17
* branch-api - 2.5.2
* build-monitor-plugin - 1.12+build.201809061734
* cloudbees-bitbucket-branch-source - 2.4.4
* cloudbees-folder - 6.9
* credentials - 2.2.0
* credentials-binding - 1.19
* display-url-api - 2.3.1
* docker-commons - 1.15
* docker-workflow - 1.18
* durable-task - 1.29
* embeddable-build-status - 2.0.1
* favorite - 2.3.2
* file-operations - 1.7
* git - 3.10.0
* git-client - 2.7.7
* git-server - 1.7
* github - 1.29.4
* github-api - 1.95
* github-branch-source - 2.5.3
* github-organization-folder - 1.6
* handlebars - 1.1.1
* handy-uri-templates-2-api - 2.1.7-1.0
* htmlpublisher - 1.18
* jackson2-api - 2.9.9
* jenkins-design-language - 1.17.0
* jira - 3.0.7
* jira-steps - 1.4.5
* jquery-detached - 1.2.1
* jsch - 0.1.55
* junit - 1.28
* lockable-resources - 2.5
* mailer - 1.23
* mask-passwords - 2.12.0
* matrix-project - 1.14
* mercurial - 2.6
* momentjs - 1.1.1
* pipeline-build-step - 2.9
* pipeline-github-lib - 1.0
* pipeline-graph-analysis - 1.10
* pipeline-input-step - 2.10
* pipeline-milestone-step - 1.3.1
* pipeline-model-api - 1.3.9
* pipeline-model-declarative-agent - 1.1.1
* pipeline-model-definition - 1.3.9
* pipeline-model-extensions - 1.3.9
* pipeline-rest-api - 2.11
* pipeline-stage-step - 2.3
* pipeline-stage-tags-metadata - 1.3.9
* pipeline-stage-view - 2.11
* pipeline-utility-steps - 2.3.0
* plain-credentials - 1.5
* pubsub-light - 1.12
* scm-api - 2.4.1
* script-security - 1.60
* simple-theme-plugin - 0.5.1
* slack - 2.24
* sonar - 2.9
* sse-gateway - 1.17
* ssh-agent - 1.17
* ssh-credentials - 1.17
* structs - 1.19
* thinBackup - 1.9
* timestamper - 1.9
* token-macro - 2.8
* variant - 1.2
* workflow-aggregator - 2.6
* workflow-api - 2.35
* workflow-basic-steps - 2.18
* workflow-cps - 2.70
* workflow-cps-global-lib - 2.13
* workflow-durable-task-step - 2.31
* workflow-job - 2.32
* workflow-multibranch - 2.21
* workflow-scm-step - 2.9
* workflow-step-api - 2.20
* workflow-support - 3.3

## Utilities

* docker
* docker-compose
* rancher-compose
* nvm
* node
* jar
* jq
* make
* python
* unzip
