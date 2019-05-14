#!groovy

@Library('github.com/red-panda-ci/jenkins-pipeline-library@v2.7.0') _

// Initialize global config
cfg = jplConfig('jenkins-dind', 'docker', '', [slack: '#integrations', email:'redpandaci+jenkinsdind@gmail.com'])
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
                script {
                    docker.build("redpandaci/jenkins-dind:test", "--pull --no-cache .")
                    docker.build("redpandaci/jenkins-dind:latest")
                }
            }
        }
        stage ('Test') {
            agent { label 'docker' }
            steps  {
                // Disable test on 2019-05-14
                sh 'echo "bin/test.sh"'
            }
            post {
                always {
                    sh 'docker rmi redpandaci/jenkins-dind:latest'
                }
            }
        }
        stage ('Release confirm') {
            when { expression { cfg.BRANCH_NAME.startsWith('release/v') || cfg.BRANCH_NAME.startsWith('hotfix/v') } }
            steps {
                jplPromoteBuild(cfg)
            }
        }
        stage ('Release finish') {
            agent { label 'docker' }
            when { expression { (cfg.BRANCH_NAME.startsWith('release/v') || cfg.BRANCH_NAME.startsWith('hotfix/v')) && cfg.promoteBuild.enabled } }
            steps {
                sh '''
                make
                if ! git diff-files --quiet --ignore-submodules -- ; then
                    git add README.md
                    git commit -m "Docs: Update README.md with Red Panda JPL"
                    git push
                fi
                '''
                script {
                    docker.withRegistry("https://registry.hub.docker.com", redpandaci-docker-credentials) {
                        def app = docker.build("redpandaci/jenkins-dind:${jenkinsVersion}")
                        app.push()
                        app.push('latest')
                    }
                }
                jplCloseRelease(cfg)
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
