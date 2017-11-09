# Jenkins-dind

Jenkins image with docker in docker strategy

_Supported tags and respective `Dockerfile` links:_
[`latest`, `develop`, `2.73.3`](Dockerfile)

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

2.73.3

## Plugins

Total number of plugins: 97

* ace-editor - 1.1
* ansicolor - 0.5.2
* apache-httpcomponents-client-4-api - 4.5.3-2.0
* authentication-tokens - 1.3
* bitbucket - 1.1.6
* blueocean - 1.3.1
* blueocean-autofavorite - 1.0.0
* blueocean-bitbucket-pipeline - 1.3.1
* blueocean-commons - 1.3.1
* blueocean-config - 1.3.1
* blueocean-dashboard - 1.3.1
* blueocean-display-url - 2.1.1
* blueocean-events - 1.3.1
* blueocean-git-pipeline - 1.3.1
* blueocean-github-pipeline - 1.3.1
* blueocean-i18n - 1.3.1
* blueocean-jira - 1.3.1
* blueocean-jwt - 1.3.1
* blueocean-personalization - 1.3.1
* blueocean-pipeline-api-impl - 1.3.1
* blueocean-pipeline-editor - 1.3.1
* blueocean-pipeline-scm-api - 1.3.1
* blueocean-rest - 1.3.1
* blueocean-rest-impl - 1.3.1
* blueocean-web - 1.3.1
* branch-api - 2.0.15
* build-monitor-plugin - 1.12+build.201704111018
* cloudbees-bitbucket-branch-source - 2.2.7
* cloudbees-folder - 6.2.1
* credentials - 2.1.16
* credentials-binding - 1.13
* display-url-api - 2.1.0
* docker-commons - 1.9
* docker-workflow - 1.14
* durable-task - 1.15
* embeddable-build-status - 1.9
* favorite - 2.3.1
* file-operations - 1.7
* git - 3.6.4
* git-client - 2.6.0
* git-server - 1.7
* github - 1.28.1
* github-api - 1.90
* github-branch-source - 2.3.1
* github-organization-folder - 1.6
* handlebars - 1.1.1
* htmlpublisher - 1.14
* jackson2-api - 2.8.7.0
* jira - 2.5
* jira-steps - 1.2.4
* jquery - 1.12.4-0
* jquery-detached - 1.2.1
* jsch - 0.1.54.1
* junit - 1.21
* mailer - 1.20
* matrix-project - 1.12
* mercurial - 2.2
* momentjs - 1.1.1
* pipeline-build-step - 2.5.1
* pipeline-github-lib - 1.0
* pipeline-graph-analysis - 1.5
* pipeline-input-step - 2.8
* pipeline-milestone-step - 1.3.1
* pipeline-model-api - 1.2.4
* pipeline-model-declarative-agent - 1.1.1
* pipeline-model-definition - 1.2.4
* pipeline-model-extensions - 1.2.4
* pipeline-rest-api - 2.9
* pipeline-stage-step - 2.3
* pipeline-stage-tags-metadata - 1.2.4
* pipeline-stage-view - 2.9
* pipeline-utility-steps - 1.5.1
* plain-credentials - 1.4
* pubsub-light - 1.12
* scm-api - 2.2.5
* script-security - 1.35
* simple-theme-plugin - 0.3
* slack - 2.3
* sonar - 2.6.1
* sse-gateway - 1.15
* ssh-credentials - 1.13
* structs - 1.10
* thinBackup - 1.9
* timestamper - 1.8.8
* token-macro - 2.3
* variant - 1.1
* workflow-aggregator - 2.5
* workflow-api - 2.23.1
* workflow-basic-steps - 2.6
* workflow-cps - 2.41
* workflow-cps-global-lib - 2.9
* workflow-durable-task-step - 2.17
* workflow-job - 2.15
* workflow-multibranch - 2.16
* workflow-scm-step - 2.6
* workflow-step-api - 2.13
* workflow-support - 2.16

## Utilities

* docker
* docker-compose
* unzip
* python
* make
* jar
