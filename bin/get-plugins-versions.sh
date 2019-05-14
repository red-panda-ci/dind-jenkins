#!/bin/bash

# Functions
function runWithinDocker () {
    command=$1
    docker exec ${id} bash -c "${command}"
    returnValue=$((returnValue + $?))
}

# Configuration
cd $(dirname "$0")/..
returnValue=0
mkdir -p test/reports
if [[ "$1" == "local" ]]
then
    timeoutSeconds=0
    containerPort="-p 8080:8080"
    if [[ "$2" == "test" ]]
    then
        doTests="true"
    fi
else
    doTests="true"
    timeoutSeconds=300
    containerPort=''
fi

# Main
echo -n "# Start Jenkins as a time-boxed daemon container, running for max ${timeoutSeconds} seconds"
id=$(docker run ${containerPort} --rm -d --privileged redpandaci/jenkins-dind:test timeout ${timeoutSeconds} java -Xmx512m -jar /usr/share/jenkins/jenkins.war)
returnValue=$((returnValue + $?))
echo " with id ${id}"

echo "# Wait for jenkins service to be initialized"
runWithinDocker "sleep 10; curl --max-time 50 --retry 10 --retry-delay 5 --retry-max-time 32 http://localhost:8080 -s > /dev/null"

echo "# Download jenkins cli"
runWithinDocker "sleep 2; wget http://localhost:8080/jnlpJars/jenkins-cli.jar -q > /dev/null"

echo "# Get installed plugins versions"
docker cp src/get-plugins-versions.groovy $id:/get-plugins-versions.groovy
returnValue=$((returnValue + $?))
runWithinDocker "java -jar jenkins-cli.jar -s http://localhost:8080 -auth redpanda:redpanda groovy = < /get-plugins-versions.groovy > /plugins-versions.txt"
docker cp $id:/plugins-versions.txt test/reports/plugins-versions.txt
returnValue=$((returnValue + $?))

# Remove container
if [[ "$1" != "local" ]]
then
    echo "# Stop jenkins daemon container"
    docker rm -f ${id}
    returnValue=$((returnValue + $?))
fi

exit ${returnValue}
