
JENKINS_VERSION:= $(shell cat ./src/jenkins-version)

readme-md: 
	bin/build.sh test
	bin/get-plugins-versions.sh
	bin/readme-template.sh $(JENKINS_VERSION) $(JENKINS_PLUGINS) > README.md
