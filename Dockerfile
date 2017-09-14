FROM billyteves/ubuntu-dind

# jenkins
RUN wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | apt-key add -
RUN sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
RUN apt-get -y update
RUN apt-get -y install jenkins

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

ADD .jenkins /tmp/.jenkins
ONBUILD ADD config.xml /tmp/.jenkins/jobs/job1/config.xml

EXPOSE 22 8080

CMD ["/usr/bin/supervisord"]
