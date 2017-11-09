
JENKINS_VERSION:= $(shell cat ./src/jenkins-version)

readme-md: 
	bin/test.sh
	bin/readme-template.sh $(JENKINS_VERSION) $(JENKINS_PLUGINS) > README.md
