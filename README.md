# Jenkins-dind

Jenkins image with docker in docker strategy

_Supported tags and respective `Dockerfile` links:_
[`latest`, `2.121.2`](Dockerfile)

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

2.121.2

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

Total number of plugins: 101

* ace-editor - 1.1
* ansicolor - 0.5.2
* antisamy-markup-formatter - 1.5
* apache-httpcomponents-client-4-api - 4.5.5-3.0
* authentication-tokens - 1.3
* bitbucket - 1.1.8
* blueocean - 1.7.1
* blueocean-autofavorite - 1.2.2
* blueocean-bitbucket-pipeline - 1.7.1
* blueocean-commons - 1.7.1
* blueocean-config - 1.7.1
* blueocean-core-js - 1.7.1
* blueocean-dashboard - 1.7.1
* blueocean-display-url - 2.2.0
* blueocean-events - 1.7.1
* blueocean-git-pipeline - 1.7.1
* blueocean-github-pipeline - 1.7.1
* blueocean-i18n - 1.7.1
* blueocean-jira - 1.7.1
* blueocean-jwt - 1.7.1
* blueocean-personalization - 1.7.1
* blueocean-pipeline-api-impl - 1.7.1
* blueocean-pipeline-editor - 1.7.1
* blueocean-pipeline-scm-api - 1.7.1
* blueocean-rest - 1.7.1
* blueocean-rest-impl - 1.7.1
* blueocean-web - 1.7.1
* branch-api - 2.0.20
* build-monitor-plugin - 1.12+build.201805070054
* cloudbees-bitbucket-branch-source - 2.2.12
* cloudbees-folder - 6.5.1
* credentials - 2.1.18
* credentials-binding - 1.16
* display-url-api - 2.2.0
* docker-commons - 1.13
* docker-workflow - 1.17
* durable-task - 1.23
* embeddable-build-status - 1.9
* favorite - 2.3.2
* file-operations - 1.7
* git - 3.9.1
* git-client - 2.7.3
* git-server - 1.7
* github - 1.29.2
* github-api - 1.92
* github-branch-source - 2.3.6
* github-organization-folder - 1.6
* handlebars - 1.1.1
* handy-uri-templates-2-api - 2.1.6-1.0
* htmlpublisher - 1.16
* jackson2-api - 2.8.11.3
* jenkins-design-language - 1.7.1
* jira - 3.0.0
* jira-steps - 1.4.3
* jquery-detached - 1.2.1
* jsch - 0.1.54.2
* junit - 1.24
* mailer - 1.21
* mask-passwords - 2.12.0
* matrix-project - 1.13
* mercurial - 2.4
* momentjs - 1.1.1
* pipeline-build-step - 2.7
* pipeline-github-lib - 1.0
* pipeline-graph-analysis - 1.7
* pipeline-input-step - 2.8
* pipeline-milestone-step - 1.3.1
* pipeline-model-api - 1.3.1
* pipeline-model-declarative-agent - 1.1.1
* pipeline-model-definition - 1.3.1
* pipeline-model-extensions - 1.3.1
* pipeline-rest-api - 2.10
* pipeline-stage-step - 2.3
* pipeline-stage-tags-metadata - 1.3.1
* pipeline-stage-view - 2.10
* pipeline-utility-steps - 2.1.0
* plain-credentials - 1.4
* pubsub-light - 1.12
* scm-api - 2.2.7
* script-security - 1.44
* simple-theme-plugin - 0.4
* slack - 2.3
* sonar - 2.8
* sse-gateway - 1.15
* ssh-credentials - 1.14
* structs - 1.14
* thinBackup - 1.9
* timestamper - 1.8.10
* token-macro - 2.5
* variant - 1.1
* workflow-aggregator - 2.5
* workflow-api - 2.29
* workflow-basic-steps - 2.9
* workflow-cps - 2.54
* workflow-cps-global-lib - 2.9
* workflow-durable-task-step - 2.19
* workflow-job - 2.23
* workflow-multibranch - 2.20
* workflow-scm-step - 2.6
* workflow-step-api - 2.16
* workflow-support - 2.19

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
