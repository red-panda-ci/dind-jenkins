FROM billyteves/ubuntu-dind

# Util packages
RUN apt-get -y update
RUN apt-get install -y unzip
RUN apt-get install -y  python

# jenkins
ENV JENKINS_VERSION 2.60.2
RUN wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | apt-key add -
RUN sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
RUN apt-get -y update
RUN apt-get -y install jenkins=$JENKINS_VERSION

# Jenkins Plugins
COPY install-plugins.sh /usr/local/bin/install-plugins.sh
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN mkdir -p /root/.jenkins/plugins/
RUN /usr/local/bin/install-plugins.sh --plugins /usr/share/jenkins/ref/plugins.txt --plugindir /root/.jenkins/plugins

# Jenkins avoid 2.x setup wizard but provide secure-by-default
ENV JENKINS_USER redpanda
ENV JENKINS_PASS redpanda
COPY jenkins.install.UpgradeWizard.state /root/.jenkins/jenkins.install.UpgradeWizard.state
COPY set-user.groovy /root/.jenkins/init.groovy.d/basic-security.groovy

# git, supervisor
RUN apt-get -y install git-core supervisor
RUN mkdir -p /var/log/supervisor

# sshd
RUN apt-get install -y openssh-server
RUN mkdir /var/run/sshd
RUN bash -c 'echo "root:root" | chpasswd'

# Docker Compose
ENV DOCKER_COMPOSE_VERSION 1.11.2
RUN curl -L https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
RUN chmod +x /usr/local/bin/docker-compose

ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 22 8080

CMD ["/usr/bin/supervisord"]
