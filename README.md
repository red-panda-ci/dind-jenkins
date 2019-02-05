# Jenkins-dind

Jenkins image with docker in docker strategy

_Supported tags and respective `Dockerfile` links:_
[`latest`, `2.150.2`](Dockerfile)

![Jenkins-dind](https://raw.githubusercontent.com/red-panda-ci/jenkins-dind/master/logo.png) [![Join the chat at https://gitter.im/red-panda-ci/jenkins-dind](https://badges.gitter.im/red-panda-ci/jenkins-dind.svg)](https://gitter.im/red-panda-ci/jenkins-dind?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

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

2.150.2

## Plugins

We use the following plugins as the base for installing plugins

* mask-passwords:latest
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
* pipeline-utility-steps:latest
* simple-theme-plugin:latest
* slack:latest
* sonar:latest
* thinBackup:latest
* timestamper:latest
* workflow-aggregator:latest

As result of the plugins installation, resolving all dependencies, we get this

Total number of plugins: 102

* ace-editor - 1.1
* ansicolor - 0.6.2
* antisamy-markup-formatter - 1.5
* apache-httpcomponents-client-4-api - 4.5.5-3.0
* authentication-tokens - 1.3
* bitbucket - 1.1.8
* blueocean - 1.10.2
* blueocean-autofavorite - 1.2.3
* blueocean-bitbucket-pipeline - 1.10.2
* blueocean-commons - 1.10.2
* blueocean-config - 1.10.2
* blueocean-core-js - 1.10.2
* blueocean-dashboard - 1.10.2
* blueocean-display-url - 2.2.0
* blueocean-events - 1.10.2
* blueocean-git-pipeline - 1.10.2
* blueocean-github-pipeline - 1.10.2
* blueocean-i18n - 1.10.2
* blueocean-jira - 1.10.2
* blueocean-jwt - 1.10.2
* blueocean-personalization - 1.10.2
* blueocean-pipeline-api-impl - 1.10.2
* blueocean-pipeline-editor - 1.10.2
* blueocean-pipeline-scm-api - 1.10.2
* blueocean-rest - 1.10.2
* blueocean-rest-impl - 1.10.2
* blueocean-web - 1.10.2
* branch-api - 2.1.2
* build-monitor-plugin - 1.12+build.201809061734
* cloudbees-bitbucket-branch-source - 2.4.1
* cloudbees-folder - 6.7
* credentials - 2.1.18
* credentials-binding - 1.17
* display-url-api - 2.3.0
* docker-commons - 1.13
* docker-workflow - 1.17
* durable-task - 1.29
* embeddable-build-status - 1.9
* favorite - 2.3.2
* file-operations - 1.7
* git - 4.0.0-rc
* git-client - 3.0.0-rc
* git-server - 1.7
* github - 1.29.3
* github-api - 1.95
* github-branch-source - 2.4.2
* github-organization-folder - 1.6
* handlebars - 1.1.1
* handy-uri-templates-2-api - 2.1.6-1.0
* htmlpublisher - 1.18
* jackson2-api - 2.9.8
* jenkins-design-language - 1.10.2
* jira - 3.0.5
* jira-steps - 1.4.4
* jquery-detached - 1.2.1
* jsch - 0.1.55
* junit - 1.26.1
* lockable-resources - 2.4
* mailer - 1.23
* mask-passwords - 2.12.0
* matrix-project - 1.13
* mercurial - 2.5
* momentjs - 1.1.1
* pipeline-build-step - 2.7
* pipeline-github-lib - 1.0
* pipeline-graph-analysis - 1.9
* pipeline-input-step - 2.9
* pipeline-milestone-step - 1.3.1
* pipeline-model-api - 1.3.4.1
* pipeline-model-declarative-agent - 1.1.1
* pipeline-model-definition - 1.3.4.1
* pipeline-model-extensions - 1.3.4.1
* pipeline-rest-api - 2.10
* pipeline-stage-step - 2.3
* pipeline-stage-tags-metadata - 1.3.4.1
* pipeline-stage-view - 2.10
* pipeline-utility-steps - 2.2.0
* plain-credentials - 1.5
* pubsub-light - 1.12
* scm-api - 2.3.0
* script-security - 1.51
* simple-theme-plugin - 0.5.1
* slack - 2.15
* sonar - 2.8.1
* sse-gateway - 1.17
* ssh-credentials - 1.14
* structs - 1.17
* thinBackup - 1.9
* timestamper - 1.8.10
* token-macro - 2.6
* variant - 1.1
* workflow-aggregator - 2.6
* workflow-api - 2.33
* workflow-basic-steps - 2.14
* workflow-cps - 2.63
* workflow-cps-global-lib - 2.13
* workflow-durable-task-step - 2.29
* workflow-job - 2.31
* workflow-multibranch - 2.20
* workflow-scm-step - 2.7
* workflow-step-api - 2.19
* workflow-support - 3.2

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
