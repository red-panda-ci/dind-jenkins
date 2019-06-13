#!groovy

@Library('github.com/red-panda-ci/jenkins-pipeline-library@v3.1.6') _

// Initialize global config
cfg = jplConfig('jenkins-dind', 'docker', '', [slack: '', email:'redpandaci+jenkinsdind@gmail.com'])
String jenkinsVersion

def publishDocumentation() {
    sh """
    git checkout ${cfg.BRANCH_NAME}
    make
    git add README.md
    git diff-files --quiet || git commit -m "Docs: Update README.md with Red Panda JPL"
    """
}
def publishDockerImage() {
    docker.withRegistry("https://registry.hub.docker.com", 'redpandaci-docker-credentials') {
        docker.build("redpandaci/jenkins-dind:latest").push()
        docker.build("redpandaci/jenkins-dind:${jenkinsVersion}").push()
    }
}

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
                    docker.build("redpandaci/jenkins-dind:test", "--pull .")
                    docker.build("redpandaci/jenkins-dind:latest")
                }
            }
        }
        stage ('Test') {
            agent { label 'docker' }
            steps  {
                sh 'bin/test.sh'
            }
            post {
                always {
                    sh 'docker rmi redpandaci/jenkins-dind:latest'
                }
            }
        }
        stage ('Make release'){
            // -------------------- automatic release -------------------
            agent { label 'docker' }
            when { branch 'release/new' }
            steps {
                publishDocumentation()
                publishDockerImage()
                jplMakeRelease(cfg, true)
            }
        }
        stage ('Release confirm') {
            // -------------------- manual release -------------------
            when { expression { cfg.BRANCH_NAME.startsWith('release/v') || cfg.BRANCH_NAME.startsWith('hotfix/v') } }
            steps {
                jplPromoteBuild(cfg)
            }
        }
        stage ('Release finish') {
            agent { label 'docker' }
            when { expression { (cfg.BRANCH_NAME.startsWith('release/v') || cfg.BRANCH_NAME.startsWith('hotfix/v')) && cfg.promoteBuild.enabled } }
            steps {
                publishDocumentation()
                publishDockerImage()
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
        timeout(time: 1, unit: 'DAYS')
    }
}
