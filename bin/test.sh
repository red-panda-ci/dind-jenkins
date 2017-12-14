#!/bin/bash

# Configuration
cd $(dirname "$0")/..
TEST_FOLDER=ci-scripts/.temp/jpl-test

rm -f ${TEST_FOLDER}
mkdir -p ${TEST_FOLDER}
cd ${TEST_FOLDER}
git clone https://github.com/red-panda-ci/jenkins-pipeline-library -b master .
bin/test.sh
