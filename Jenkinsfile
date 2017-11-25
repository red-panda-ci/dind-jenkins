#!groovy

@Library('github.com/red-panda-ci/jenkins-pipeline-library@v2.1.1') _

// Initialize global config
cfg = jplConfig('jenkins-dind', 'docker', '', [hipchat: '', slack: '', email:'redpandaci+jenkinsdind@gmail.com'])
String jenkinsVersion

pipeline {
    agent none

    stages {
        stage ('Initialize') {
            agent { label 'docker' }
            steps  {
                jplStart(cfg)
                script {
                    jenkinsVersion = readFile "${env.WORKSPACE}/src/jenkins-version"
                }
            }
        }
        stage ('Build') {
            agent { label 'docker' }
            steps {
                jplDockerPush (cfg, "redpandaci/jenkins-dind", "develop", "https://registry.hub.docker.com", "redpandaci-docker-credentials")
            }
        }
        stage ('Test') {
            agent { label 'docker' }
            steps  {
                sh 'bin/test.sh'
            }
        }
        stage ('Release confirm') {
            when { branch 'release/v*' }
            steps {
                jplPromoteBuild(cfg)
            }
        }
        stage ('Release finish') {
            agent { label 'docker' }
            when { expression { cfg.BRANCH_NAME.startsWith('release/v') && cfg.promoteBuild.enabled } }
            steps {
                jplDockerPush (cfg, "redpandaci/jenkins-dind", jenkinsVersion, "https://registry.hub.docker.com", "redpandaci-docker-credentials")
                jplDockerPush (cfg, "redpandaci/jenkins-dind", "latest", "https://registry.hub.docker.com", "redpandaci-docker-credentials")
                jplCloseRelease(cfg)
            }
        }
        stage ('PR Clean') {
            agent { label 'docker' }
            when { branch 'PR-*' }
            steps {
                deleteDir()
            }
        }
    }

    post {
        always {
            jplPostBuild(cfg)
        }
    }

    options {
        timestamps()
        ansiColor('xterm')
        buildDiscarder(logRotator(artifactNumToKeepStr: '20',artifactDaysToKeepStr: '30'))
        disableConcurrentBuilds()
        skipDefaultCheckout()
        timeout(time: 1, unit: 'DAYS')
    }
}
