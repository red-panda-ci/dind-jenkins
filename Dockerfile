FROM redpandaci/ubuntu-dind:latest

# Prepare Jenkins package
ENV JENKINS_VERSION 2.164.1
RUN wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | apt-key add - && \
    sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

# Package management
RUN apt-get -y update && \
    apt-get -y install unzip python openjdk-8-jdk-headless build-essential git-core jq libssl-dev && \
    apt-get -y install jenkins=$JENKINS_VERSION && \
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

# Neo theme
COPY src/org.codefirst.SimpleThemeDecorator.xml /root/.jenkins/org.codefirst.SimpleThemeDecorator.xml

# Change java_args
RUN sed "s#JAVA_ARGS=\"-Djava.awt.headless=true\"#JAVA_ARGS=\"-Djava.awt.headless=true -Xmx256M\"#g" -i /etc/default/jenkins

EXPOSE 8080

CMD ["java", "-jar", "/usr/share/jenkins/jenkins.war", "-Xmx256m"]
