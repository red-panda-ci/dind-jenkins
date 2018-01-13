FROM redpandaci/ubuntu-dind

# Prepare Jenkins package
ENV JENKINS_VERSION 2.89.2
RUN wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | apt-key add - && \
    sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

# Package management
RUN apt-get -y update && \
    apt-get -y install unzip python openjdk-8-jdk-headless build-essential git-core jq && \
    apt-get -y install jenkins=$JENKINS_VERSION && \
    apt-get clean && \
    apt-get autoclean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Rancher compose
ENV RANCHER_COMPOSE_VERSION 0.12.5
RUN wget https://github.com/rancher/rancher-compose/releases/download/v$RANCHER_COMPOSE_VERSION/rancher-compose-linux-amd64-v$RANCHER_COMPOSE_VERSION.tar.gz && \
    tar zxf rancher-compose-linux-amd64-v$RANCHER_COMPOSE_VERSION.tar.gz && \
    mv rancher-compose-v$RANCHER_COMPOSE_VERSION/rancher-compose /usr/local/bin/rancher-compose && \
    chmod +x /usr/local/bin/rancher-compose && \
    rm rancher-compose-linux-amd64-v$RANCHER_COMPOSE_VERSION.tar.gz && \
    rm -r rancher-compose-v$RANCHER_COMPOSE_VERSION 

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

# Neo theme
COPY src/org.codefirst.SimpleThemeDecorator.xml /root/.jenkins/org.codefirst.SimpleThemeDecorator.xml

EXPOSE 8080

CMD ["java", "-jar", "/usr/share/jenkins/jenkins.war"]
