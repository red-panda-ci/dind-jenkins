# Jenkins-dind

Jenkins image with docker in docker strategy

_Supported tags and respective `Dockerfile` links:_
[`latest`, `2.89.3`](Dockerfile)

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

2.89.3

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
* apache-httpcomponents-client-4-api - 4.5.3-2.0
* authentication-tokens - 1.3
* bitbucket - 1.1.8
* blueocean - 1.4.0
* blueocean-autofavorite - 1.2.1
* blueocean-bitbucket-pipeline - 1.4.0
* blueocean-commons - 1.4.0
* blueocean-config - 1.4.0
* blueocean-core-js - 1.4.0
* blueocean-dashboard - 1.4.0
* blueocean-display-url - 2.2.0
* blueocean-events - 1.4.0
* blueocean-git-pipeline - 1.4.0
* blueocean-github-pipeline - 1.4.0
* blueocean-i18n - 1.4.0
* blueocean-jira - 1.4.0
* blueocean-jwt - 1.4.0
* blueocean-personalization - 1.4.0
* blueocean-pipeline-api-impl - 1.4.0
* blueocean-pipeline-editor - 1.4.0
* blueocean-pipeline-scm-api - 1.4.0
* blueocean-rest - 1.4.0
* blueocean-rest-impl - 1.4.0
* blueocean-web - 1.4.0
* branch-api - 2.0.18
* build-monitor-plugin - 1.12+build.201708172343
* cloudbees-bitbucket-branch-source - 2.2.8
* cloudbees-folder - 6.3
* credentials - 2.1.16
* credentials-binding - 1.14
* display-url-api - 2.2.0
* docker-commons - 1.11
* docker-workflow - 1.14
* durable-task - 1.17
* embeddable-build-status - 1.9
* favorite - 2.3.1
* file-operations - 1.7
* git - 3.7.0
* git-client - 2.7.0
* git-server - 1.7
* github - 1.29.0
* github-api - 1.90
* github-branch-source - 2.3.2
* github-organization-folder - 1.6
* handlebars - 1.1.1
* htmlpublisher - 1.14
* jackson2-api - 2.8.10.1
* jenkins-design-language - 1.4.0
* jira - 2.5
* jira-steps - 1.3.1
* jquery - 1.12.4-0
* jquery-detached - 1.2.1
* jsch - 0.1.54.1
* junit - 1.23
* mailer - 1.20
* mask-passwords - 2.10.1
* matrix-project - 1.12
* mercurial - 2.2
* momentjs - 1.1.1
* pipeline-build-step - 2.6
* pipeline-github-lib - 1.0
* pipeline-graph-analysis - 1.6
* pipeline-input-step - 2.8
* pipeline-milestone-step - 1.3.1
* pipeline-model-api - 1.2.6
* pipeline-model-declarative-agent - 1.1.1
* pipeline-model-definition - 1.2.6
* pipeline-model-extensions - 1.2.6
* pipeline-rest-api - 2.9
* pipeline-stage-step - 2.3
* pipeline-stage-tags-metadata - 1.2.6
* pipeline-stage-view - 2.9
* pipeline-utility-steps - 1.5.1
* plain-credentials - 1.4
* pubsub-light - 1.12
* scm-api - 2.2.6
* script-security - 1.40
* simple-theme-plugin - 0.3
* slack - 2.3
* sonar - 2.6.1
* sse-gateway - 1.15
* ssh-credentials - 1.13
* structs - 1.10
* thinBackup - 1.9
* timestamper - 1.8.9
* token-macro - 2.3
* variant - 1.1
* workflow-aggregator - 2.5
* workflow-api - 2.24
* workflow-basic-steps - 2.6
* workflow-cps - 2.42
* workflow-cps-global-lib - 2.9
* workflow-durable-task-step - 2.17
* workflow-job - 2.16
* workflow-multibranch - 2.16
* workflow-scm-step - 2.6
* workflow-step-api - 2.14
* workflow-support - 2.16

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
