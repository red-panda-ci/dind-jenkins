FROM billyteves/ubuntu-dind

# Prepare Jenkins package
ENV JENKINS_VERSION 2.73.1
RUN wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | apt-key add - && \
    sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

# Package management
RUN apt-get -y update && \
    apt-get -y install unzip python openjdk-8-jdk-headless build-essential && \
    apt-get -y install jenkins=$JENKINS_VERSION && \
    apt-get -y install git-core supervisor && \
    apt-get -y install openssh-server && \
    apt-get clean && \
    apt-get autoclean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Jenkins Plugins
ENV JENKINS_UC=https://updates.jenkins.io \
    JENKINS_UC_EXPERIMENTAL=https://updates.jenkins.io/experimental
COPY src/install-plugins.sh /usr/local/bin/install-plugins.sh
COPY src/plugins.txt /usr/share/jenkins/ref/plugins.txt

RUN mkdir -p /root/.jenkins/plugins/ && \
    /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

# Jenkins avoid 2.x setup wizard but provide secure-by-default
ENV JENKINS_USER=redpanda \
    JENKINS_PASS=redpanda
COPY src/jenkins-version /root/.jenkins/jenkins.install.UpgradeWizard.state
COPY src/jenkins-version /root/.jenkins/jenkins.install.InstallUtil.lastExecVersion
COPY src/set-user.groovy /root/.jenkins/init.groovy.d/basic-security.groovy

# git, supervisor
RUN mkdir -p /var/log/supervisor

# sshd
RUN mkdir /var/run/sshd && \
    sed "s/PermitRootLogin prohibit-password/PermitRootLogin yes/g" -i /etc/ssh/sshd_config && \
    bash -c 'echo "root:root" | chpasswd'

# Docker Compose
ENV DOCKER_COMPOSE_VERSION 1.11.2
RUN curl -L https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose

ADD src/supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 22 8080

CMD ["/usr/bin/supervisord"]
