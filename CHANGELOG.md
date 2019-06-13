# Changelog

## v2.90.1 (2019-06-13)

### Build

* Update Auto Release Log adding v2.90.1 info with JPL ([936da2a](https://github.com:red-panda-ci/jenkins-dind/commit/936da2a))
* Fix parameter usage in publishDocumentation function ([783598a](https://github.com:red-panda-ci/jenkins-dind/commit/783598a))
* Use jenkinsVersion as parameter ([c349e54](https://github.com:red-panda-ci/jenkins-dind/commit/c349e54))
* Use docker node in auto-release stage ([d86d75b](https://github.com:red-panda-ci/jenkins-dind/commit/d86d75b))
* Add auto-release stage ([eac8797](https://github.com:red-panda-ci/jenkins-dind/commit/eac8797))
* Update CHANGELOG.md to v2.164.3 with Red Panda JPL ([0516a8c](https://github.com:red-panda-ci/jenkins-dind/commit/0516a8c))
* Enable test stage again ([18aecce](https://github.com:red-panda-ci/jenkins-dind/commit/18aecce))
* Update CHANGELOG.md to v2.164.3 with Red Panda JPL ([5cf54ed](https://github.com:red-panda-ci/jenkins-dind/commit/5cf54ed))
* Update CHANGELOG.md to v2.164.3 with Red Panda JPL ([1d44031](https://github.com:red-panda-ci/jenkins-dind/commit/1d44031))
* Fix release finish stage to run in slaves ([9840db8](https://github.com:red-panda-ci/jenkins-dind/commit/9840db8))
* Review pipeline to run on a slave node ([6afd586](https://github.com:red-panda-ci/jenkins-dind/commit/6afd586))
* Remove make release step ([ad71ea6](https://github.com:red-panda-ci/jenkins-dind/commit/ad71ea6))

### Docs

* Generate v2.90.0 changelog with JPL ([7659e61](https://github.com:red-panda-ci/jenkins-dind/commit/7659e61))

## v2.90.0 (2019-05-22)

### New

* Add ssh-agent plugin ([daf6b92](https://github.com:red-panda-ci/jenkins-dind/commit/daf6b92))

### Upgrade

* Use latest Jenkins LTS release v2.164.3 ([68aca91](https://github.com:red-panda-ci/jenkins-dind/commit/68aca91))
* Set Jenkins release to v2.164.1 ([09b724b](https://github.com:red-panda-ci/jenkins-dind/commit/09b724b))
* Use latest Jenins LTS release 2.164.1 ([6769483](https://github.com:red-panda-ci/jenkins-dind/commit/6769483))
* Use latest Jenkins LTS release 2.150.2 ([5614c6f](https://github.com:red-panda-ci/jenkins-dind/commit/5614c6f))
* Update to Jenkins Release v2.121.2 ([01005de](https://github.com:red-panda-ci/jenkins-dind/commit/01005de))
* Update to Jenkins Release v2.107.1 ([dcd45c7](https://github.com:red-panda-ci/jenkins-dind/commit/dcd45c7))

### Update

* Add memory limit to nested java process ([5aab4fd](https://github.com:red-panda-ci/jenkins-dind/commit/5aab4fd))

### Build

* Update Auto Release Log adding v2.90.0 info with JPL ([eeeb3fc](https://github.com:red-panda-ci/jenkins-dind/commit/eeeb3fc))
* Update to jpl v3.0.1 ([9f5e8fb](https://github.com:red-panda-ci/jenkins-dind/commit/9f5e8fb))
* Update CHANGELOG.md to v2.164.1 with Red Panda JPL ([0ab5751](https://github.com:red-panda-ci/jenkins-dind/commit/0ab5751))
* Remove line break on version file ([778938f](https://github.com:red-panda-ci/jenkins-dind/commit/778938f))
* Change docker build strategy ([76453c9](https://github.com:red-panda-ci/jenkins-dind/commit/76453c9))
* Change docker build strategy ([f21bd0c](https://github.com:red-panda-ci/jenkins-dind/commit/f21bd0c))
* Use jpl docker build again ([018a8d5](https://github.com:red-panda-ci/jenkins-dind/commit/018a8d5))
* Check git changes before commit ([6910b5f](https://github.com:red-panda-ci/jenkins-dind/commit/6910b5f))
* Use right variable in docker build ([54a12cd](https://github.com:red-panda-ci/jenkins-dind/commit/54a12cd))
* Fix docker build syntax ([e335d29](https://github.com:red-panda-ci/jenkins-dind/commit/e335d29))
* Refactor docker push step ([e24f5e8](https://github.com:red-panda-ci/jenkins-dind/commit/e24f5e8))
* Disable error check in commit step ([63484ff](https://github.com:red-panda-ci/jenkins-dind/commit/63484ff))
* Disable slack notifications ([d339912](https://github.com:red-panda-ci/jenkins-dind/commit/d339912))
* Enable cache in docker build step ([7b262e7](https://github.com:red-panda-ci/jenkins-dind/commit/7b262e7))
* Refactor repository changes checking ([14ba790](https://github.com:red-panda-ci/jenkins-dind/commit/14ba790))
* Fix typo, removing non-ascii character ([3f5102e](https://github.com:red-panda-ci/jenkins-dind/commit/3f5102e))
* Fix error when the commit is empty generating doc ([62dfd9a](https://github.com:red-panda-ci/jenkins-dind/commit/62dfd9a))
* Use Jenkins native docker build ([50f050a](https://github.com:red-panda-ci/jenkins-dind/commit/50f050a))
* Set memory limit on java execution ([354db07](https://github.com:red-panda-ci/jenkins-dind/commit/354db07))
* Disable test ([dd40348](https://github.com:red-panda-ci/jenkins-dind/commit/dd40348))
* Don't clear cache on docker build in the last stage ([460e9b3](https://github.com:red-panda-ci/jenkins-dind/commit/460e9b3))
* Use docker.build inside script step ([9cc457e](https://github.com:red-panda-ci/jenkins-dind/commit/9cc457e))
* Use docker.build --no-cache instead docker rmi ([b438996](https://github.com:red-panda-ci/jenkins-dind/commit/b438996))
* Typo in docker image name ([aa19de0](https://github.com:red-panda-ci/jenkins-dind/commit/aa19de0))
* Update jpl version to v2.7.0 in pipeline ([1d7eb23](https://github.com:red-panda-ci/jenkins-dind/commit/1d7eb23))
* Update CHANGELOG.md to v2.150.2 with Red Panda JPL ([c08f466](https://github.com:red-panda-ci/jenkins-dind/commit/c08f466))
* Update CHANGELOG.md to v2.121.2 with Red Panda JPL ([ee3450e](https://github.com:red-panda-ci/jenkins-dind/commit/ee3450e))
* Update to jpl v2.6.2 ([8db42b6](https://github.com:red-panda-ci/jenkins-dind/commit/8db42b6))
* Update CHANGELOG.md to v2.107.1 with Red Panda JPL ([245d3a5](https://github.com:red-panda-ci/jenkins-dind/commit/245d3a5))

### Docs

* Update README.md with Red Panda JPL ([21262c2](https://github.com:red-panda-ci/jenkins-dind/commit/21262c2))
* Update README.md with Red Panda JPL ([52ce19d](https://github.com:red-panda-ci/jenkins-dind/commit/52ce19d))
* Update README.md with Red Panda JPL ([37db3fb](https://github.com:red-panda-ci/jenkins-dind/commit/37db3fb))
* Update README.md with Red Panda JPL ([407798e](https://github.com:red-panda-ci/jenkins-dind/commit/407798e))
* Update README.md with Red Panda JPL ([7f59280](https://github.com:red-panda-ci/jenkins-dind/commit/7f59280))

## v2.164.3 (2019-05-22)

### New

* Add ssh-agent plugin ([daf6b92](https://github.com:red-panda-ci/jenkins-dind/commit/daf6b92))

### Upgrade

* Use latest Jenkins LTS release v2.164.3 ([68aca91](https://github.com:red-panda-ci/jenkins-dind/commit/68aca91))

### Update

* Add memory limit to nested java process ([5aab4fd](https://github.com:red-panda-ci/jenkins-dind/commit/5aab4fd))

### Build

* Update CHANGELOG.md to v2.164.3 with Red Panda JPL ([0516a8c](https://github.com:red-panda-ci/jenkins-dind/commit/0516a8c))
* Enable test stage again ([18aecce](https://github.com:red-panda-ci/jenkins-dind/commit/18aecce))
* Update CHANGELOG.md to v2.164.3 with Red Panda JPL ([5cf54ed](https://github.com:red-panda-ci/jenkins-dind/commit/5cf54ed))
* Update CHANGELOG.md to v2.164.3 with Red Panda JPL ([1d44031](https://github.com:red-panda-ci/jenkins-dind/commit/1d44031))
* Fix release finish stage to run in slaves ([9840db8](https://github.com:red-panda-ci/jenkins-dind/commit/9840db8))
* Review pipeline to run on a slave node ([6afd586](https://github.com:red-panda-ci/jenkins-dind/commit/6afd586))
* Remove make release step ([ad71ea6](https://github.com:red-panda-ci/jenkins-dind/commit/ad71ea6))
* Update Auto Release Log adding v2.90.0 info with JPL ([eeeb3fc](https://github.com:red-panda-ci/jenkins-dind/commit/eeeb3fc))
* Update to jpl v3.0.1 ([9f5e8fb](https://github.com:red-panda-ci/jenkins-dind/commit/9f5e8fb))

### Docs

* Generate v2.90.0 changelog with JPL ([7659e61](https://github.com:red-panda-ci/jenkins-dind/commit/7659e61))

## v2.164.1 (2019-05-14)

### Upgrade

* Set Jenkins release to v2.164.1 ([09b724b](https://github.com:red-panda-ci/jenkins-dind/commit/09b724b))
* Use latest Jenins LTS release 2.164.1 ([6769483](https://github.com:red-panda-ci/jenkins-dind/commit/6769483))

### Build

* Update CHANGELOG.md to v2.164.1 with Red Panda JPL ([0ab5751](https://github.com:red-panda-ci/jenkins-dind/commit/0ab5751))
* Remove line break on version file ([778938f](https://github.com:red-panda-ci/jenkins-dind/commit/778938f))
* Change docker build strategy ([76453c9](https://github.com:red-panda-ci/jenkins-dind/commit/76453c9))
* Change docker build strategy ([f21bd0c](https://github.com:red-panda-ci/jenkins-dind/commit/f21bd0c))
* Use jpl docker build again ([018a8d5](https://github.com:red-panda-ci/jenkins-dind/commit/018a8d5))
* Check git changes before commit ([6910b5f](https://github.com:red-panda-ci/jenkins-dind/commit/6910b5f))
* Use right variable in docker build ([54a12cd](https://github.com:red-panda-ci/jenkins-dind/commit/54a12cd))
* Fix docker build syntax ([e335d29](https://github.com:red-panda-ci/jenkins-dind/commit/e335d29))
* Refactor docker push step ([e24f5e8](https://github.com:red-panda-ci/jenkins-dind/commit/e24f5e8))
* Disable error check in commit step ([63484ff](https://github.com:red-panda-ci/jenkins-dind/commit/63484ff))
* Disable slack notifications ([d339912](https://github.com:red-panda-ci/jenkins-dind/commit/d339912))
* Enable cache in docker build step ([7b262e7](https://github.com:red-panda-ci/jenkins-dind/commit/7b262e7))
* Refactor repository changes checking ([14ba790](https://github.com:red-panda-ci/jenkins-dind/commit/14ba790))
* Fix typo, removing non-ascii character ([3f5102e](https://github.com:red-panda-ci/jenkins-dind/commit/3f5102e))
* Fix error when the commit is empty generating doc ([62dfd9a](https://github.com:red-panda-ci/jenkins-dind/commit/62dfd9a))
* Use Jenkins native docker build ([50f050a](https://github.com:red-panda-ci/jenkins-dind/commit/50f050a))
* Set memory limit on java execution ([354db07](https://github.com:red-panda-ci/jenkins-dind/commit/354db07))
* Disable test ([dd40348](https://github.com:red-panda-ci/jenkins-dind/commit/dd40348))
* Don't clear cache on docker build in the last stage ([460e9b3](https://github.com:red-panda-ci/jenkins-dind/commit/460e9b3))
* Use docker.build inside script step ([9cc457e](https://github.com:red-panda-ci/jenkins-dind/commit/9cc457e))
* Use docker.build --no-cache instead docker rmi ([b438996](https://github.com:red-panda-ci/jenkins-dind/commit/b438996))
* Typo in docker image name ([aa19de0](https://github.com:red-panda-ci/jenkins-dind/commit/aa19de0))
* Update jpl version to v2.7.0 in pipeline ([1d7eb23](https://github.com:red-panda-ci/jenkins-dind/commit/1d7eb23))

### Docs

* Update README.md with Red Panda JPL ([21262c2](https://github.com:red-panda-ci/jenkins-dind/commit/21262c2))
* Update README.md with Red Panda JPL ([52ce19d](https://github.com:red-panda-ci/jenkins-dind/commit/52ce19d))

## v2.150.2 (2019-02-05)

### Upgrade

* Use latest Jenkins LTS release 2.150.2 ([5614c6f](https://github.com:red-panda-ci/jenkins-dind/commit/5614c6f))

### Build

* Update CHANGELOG.md to v2.150.2 with Red Panda JPL ([c08f466](https://github.com:red-panda-ci/jenkins-dind/commit/c08f466))

### Docs

* Update README.md with Red Panda JPL ([37db3fb](https://github.com:red-panda-ci/jenkins-dind/commit/37db3fb))

## v2.121.2 (2018-08-01)

### Upgrade

* Update to Jenkins Release v2.121.2 ([01005de](https://github.com:red-panda-ci/jenkins-dind/commit/01005de))

### Build

* Update CHANGELOG.md to v2.121.2 with Red Panda JPL ([ee3450e](https://github.com:red-panda-ci/jenkins-dind/commit/ee3450e))
* Update to jpl v2.6.2 ([8db42b6](https://github.com:red-panda-ci/jenkins-dind/commit/8db42b6))

### Docs

* Update README.md with Red Panda JPL ([407798e](https://github.com:red-panda-ci/jenkins-dind/commit/407798e))

## v2.107.1 (2018-03-18)

### Upgrade

* Update to Jenkins Release v2.107.1 ([dcd45c7](https://github.com:red-panda-ci/jenkins-dind/commit/dcd45c7))
* Update to Jenkins Release v2.89.4 (#27) ([9ac36c2](https://github.com:red-panda-ci/jenkins-dind/commit/9ac36c2))

### Build

* Update CHANGELOG.md to v2.107.1 with Red Panda JPL ([245d3a5](https://github.com:red-panda-ci/jenkins-dind/commit/245d3a5))
* Update CHANGELOG.md to v2.89.4 with Red Panda JPL ([fe83f2c](https://github.com:red-panda-ci/jenkins-dind/commit/fe83f2c))

### Docs

* Update README.md with Red Panda JPL ([7f59280](https://github.com:red-panda-ci/jenkins-dind/commit/7f59280))
* Update README.md with Red Panda JPL ([a9dc264](https://github.com:red-panda-ci/jenkins-dind/commit/a9dc264))

## v1.2.6 (2018-02-09)

### Build

* Update CHANGELOG.md to v1.2.6 with Red Panda JPL ([af52dbc](https://github.com:red-panda-ci/jenkins-dind/commit/af52dbc))
* Update to ubuntu dind latest ([2389a81](https://github.com:red-panda-ci/jenkins-dind/commit/2389a81))

## v1.2.5 (2018-01-20)

### New

* Adds nvm and node ([43ed29c](https://github.com:red-panda-ci/jenkins-dind/commit/43ed29c))
* Adds rancher-compose cli and mask-password plugin (refs #25, #45) ([2b9dae1](https://github.com:red-panda-ci/jenkins-dind/commit/2b9dae1))

### Upgrade

* Update to Jenkins Release v2.89.3 ([ffa0e18](https://github.com:red-panda-ci/jenkins-dind/commit/ffa0e18))

### Update

* Update: Update base image to ubuntu-dind:1.0.0 ([ba5b182](https://github.com:red-panda-ci/jenkins-dind/commit/ba5b182))
* Adds dockerfile optimaization ([b2c47fe](https://github.com:red-panda-ci/jenkins-dind/commit/b2c47fe))

### Build

* Update CHANGELOG.md to v1.2.5 with Red Panda JPL ([a74b4c4](https://github.com:red-panda-ci/jenkins-dind/commit/a74b4c4))
* Adds commit validation and Dockerfile linter ([667c805](https://github.com:red-panda-ci/jenkins-dind/commit/667c805))
* Update to jpl v2.5.0 and add gitter badge ([49004e0](https://github.com:red-panda-ci/jenkins-dind/commit/49004e0))

### Docs

* Update README.md with Red Panda JPL ([a42082f](https://github.com:red-panda-ci/jenkins-dind/commit/a42082f))

## v1.2.4 (2018-01-08)

### Update

* Update: Update to latest plugin versions ([e5d84a3](https://github.com:red-panda-ci/jenkins-dind/commit/e5d84a3))

### Build

* Update CHANGELOG.md to v1.2.4 with Red Panda JPL ([eb0ec0b](https://github.com:red-panda-ci/jenkins-dind/commit/eb0ec0b))
* Fix push update condition (2) ([48c2565](https://github.com:red-panda-ci/jenkins-dind/commit/48c2565))
* Fix README.md push condition ([af5d263](https://github.com:red-panda-ci/jenkins-dind/commit/af5d263))
* Set the right docker image removal ([fe8aadf](https://github.com:red-panda-ci/jenkins-dind/commit/fe8aadf))
* Use latest tag on testing ([9fdc38e](https://github.com:red-panda-ci/jenkins-dind/commit/9fdc38e))

## v1.2.3 (2017-12-19)

### Build

* Update CHANGELOG.md to v1.2.3 with Red Panda JPL ([815cac8](https://github.com:red-panda-ci/jenkins-dind/commit/815cac8))
* Update Dockerfile with redpandaci/ubuntu-dind image ([2efb9d6](https://github.com:red-panda-ci/jenkins-dind/commit/2efb9d6))

### Docs

* Update README.md with Red Panda JPL ([2b53f17](https://github.com:red-panda-ci/jenkins-dind/commit/2b53f17))

## v1.2.2 (2017-12-14)

### Update

* Add jpl test (refs #22) ([1bde52a](https://github.com:red-panda-ci/jenkins-dind/commit/1bde52a))

### Build

* Update CHANGELOG.md to v1.2.2 with Red Panda JPL ([695c31c](https://github.com:red-panda-ci/jenkins-dind/commit/695c31c))
* Fix bin/test.sh ([e722a7c](https://github.com:red-panda-ci/jenkins-dind/commit/e722a7c))
* Fix post action typo ([083f2ab](https://github.com:red-panda-ci/jenkins-dind/commit/083f2ab))
* Delete docker image after test ([27cd4fb](https://github.com:red-panda-ci/jenkins-dind/commit/27cd4fb))
* Fix docker build typo ([cbe540d](https://github.com:red-panda-ci/jenkins-dind/commit/cbe540d))
* Make the docker image build inside script block ([5ac92d1](https://github.com:red-panda-ci/jenkins-dind/commit/5ac92d1))

### Docs

* Update README.md with Red Panda JPL ([e41874d](https://github.com:red-panda-ci/jenkins-dind/commit/e41874d))

## v1.2.1 (2017-12-13)

### Build

* Update CHANGELOG.md to v1.2.1 with Red Panda JPL ([fe0eed0](https://github.com:red-panda-ci/jenkins-dind/commit/fe0eed0))
* Manage docker build correctly ([4f0da81](https://github.com:red-panda-ci/jenkins-dind/commit/4f0da81))
* Use jpl v2.3.3 ([323a0af](https://github.com:red-panda-ci/jenkins-dind/commit/323a0af))

### Docs

* Update README.md with Red Panda JPL ([17b26ca](https://github.com:red-panda-ci/jenkins-dind/commit/17b26ca))

## v1.2.0 (2017-12-07)

### Upgrade

* Update to Jenkins Release v2.89.1 ([06e2704](https://github.com:red-panda-ci/jenkins-dind/commit/06e2704))

### Build

* Update CHANGELOG.md to v1.2.0 with Red Panda JPL ([c22424e](https://github.com:red-panda-ci/jenkins-dind/commit/c22424e))

## v1.0.1 (2017-11-25)

### Build

* Update CHANGELOG.md to v1.0.1 with Red Panda JPL ([48f8be8](https://github.com:red-panda-ci/jenkins-dind/commit/48f8be8))
* Change target type ([9c71faf](https://github.com:red-panda-ci/jenkins-dind/commit/9c71faf))
* Update pipeline to jpl v2.1.1 ([4d687a7](https://github.com:red-panda-ci/jenkins-dind/commit/4d687a7))

## v1.0.0 (2017-11-12)

### Build

* Update CHANGELOG.md to v1.0.0 with Red Panda JPL ([728b0f9](https://github.com:red-panda-ci/jenkins-dind/commit/728b0f9))

### Docs

* Update contributing and readme ([195cfdc](https://github.com:red-panda-ci/jenkins-dind/commit/195cfdc))

## v0.1.0 (2017-11-10)

### New

* Include jenkins pipeline configuration ([4f337eb](https://github.com:red-panda-ci/jenkins-dind/commit/4f337eb))
* Add skin (Closes #10) (#14) ([08104ac](https://github.com:red-panda-ci/jenkins-dind/commit/08104ac))
* Add docker-compose support (#12) ([135a3f2](https://github.com:red-panda-ci/jenkins-dind/commit/135a3f2))
* Implement set user (Closes #5) and install plugins (Closes #4) ([608b1cd](https://github.com:red-panda-ci/jenkins-dind/commit/608b1cd))
* Add docker-compose support (Closes #2) ([a531915](https://github.com:red-panda-ci/jenkins-dind/commit/a531915))

### Update

* Add jq package (fixes #17) ([c4d6290](https://github.com:red-panda-ci/jenkins-dind/commit/c4d6290))
* Set Jenkins version to 2.73.3 ([d968dd8](https://github.com:red-panda-ci/jenkins-dind/commit/d968dd8))
* Add new file-operations Jenkins plugin (#15) ([1b5832d](https://github.com:red-panda-ci/jenkins-dind/commit/1b5832d))
* Dockerfile refactor (Closes #11) (#13) ([71cee4f](https://github.com:red-panda-ci/jenkins-dind/commit/71cee4f))
* Skip the setup wizard (Closes #9) ([26e3081](https://github.com:red-panda-ci/jenkins-dind/commit/26e3081))
* Refactorized install-plugins.sh ([ff0b48e](https://github.com:red-panda-ci/jenkins-dind/commit/ff0b48e))
* Update: Update Jenkins to v2.7.4 (Closes #3) ([5fd35b9](https://github.com:red-panda-ci/jenkins-dind/commit/5fd35b9))
* Change image base jpetazzo/dind by billyteves/ubuntu-dind (Closes #1) ([763edb9](https://github.com:red-panda-ci/jenkins-dind/commit/763edb9))

### Fix

* Resolve jenkinsVersion variable typo ([48b22a8](https://github.com:red-panda-ci/jenkins-dind/commit/48b22a8))
* Plugin dependencies (fixes #4) ([8461ad5](https://github.com:red-panda-ci/jenkins-dind/commit/8461ad5))

### Build

* Update CHANGELOG.md to v0.1.0 with Red Panda JPL ([8b3e114](https://github.com:red-panda-ci/jenkins-dind/commit/8b3e114))
* Remove 8080 port usage ([e08c2e6](https://github.com:red-panda-ci/jenkins-dind/commit/e08c2e6))
* Use dockerTag parameter in docker publish ([921925e](https://github.com:red-panda-ci/jenkins-dind/commit/921925e))
* Get version info before code checkout ([bc484cd](https://github.com:red-panda-ci/jenkins-dind/commit/bc484cd))
* Fix Jenkins typo with expression in conditional ([e3a480a](https://github.com:red-panda-ci/jenkins-dind/commit/e3a480a))
* Fix Jenkinfile typo ([5ddfadc](https://github.com:red-panda-ci/jenkins-dind/commit/5ddfadc))
* Update Development Pipeline ([0638216](https://github.com:red-panda-ci/jenkins-dind/commit/0638216))
* Move core files to src folder ([008144c](https://github.com:red-panda-ci/jenkins-dind/commit/008144c))
* Move core files to src folder ([d5f6463](https://github.com:red-panda-ci/jenkins-dind/commit/d5f6463))

### Docs

* Update README.md template ([1f6180c](https://github.com:red-panda-ci/jenkins-dind/commit/1f6180c))
* Update README.md generation from template ([998996e](https://github.com:red-panda-ci/jenkins-dind/commit/998996e))
* Add code of conduct doc (refs #19) ([62bdbcc](https://github.com:red-panda-ci/jenkins-dind/commit/62bdbcc))
* Add changelog ([889d56e](https://github.com:red-panda-ci/jenkins-dind/commit/889d56e))
* Add README.md ([bcdfebe](https://github.com:red-panda-ci/jenkins-dind/commit/bcdfebe))
* Fix logo to README.md ([ff083a3](https://github.com:red-panda-ci/jenkins-dind/commit/ff083a3))
* Add logo to README.md ([f81ed59](https://github.com:red-panda-ci/jenkins-dind/commit/f81ed59))
* Add logo ([bbcf5e5](https://github.com:red-panda-ci/jenkins-dind/commit/bbcf5e5))

