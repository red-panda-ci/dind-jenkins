#!/bin/bash

git log --format="%B%n-hash-%n%H%n-gitTags-%n%d%n-committerDate-%n%ci%nDELIMITER" \
HEAD --no-merges | \
#docker run -i -e COMMIT_DELIMITER="DELIMITER" -e PRESET="eslint"-e GIT_URL="https://github.com/red-panda-ci/jenkins-dind" -e FORMAT="md" madoos/node-pipe-changelog-generator:latest
docker run --rm -i \
-e COMMIT_DELIMITER="DELIMITER" \
-e PRESET="eslint" \
-e GIT_URL="https://github.com/red-panda-ci/jenkins-dind" \
-e FORMAT="md" \
madoos/node-pipe-changelog-generator:latest > CHANGELOG.md