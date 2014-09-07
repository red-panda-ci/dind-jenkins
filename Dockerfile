FROM jpetazzo/dind

# jenkins
RUN wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | apt-key add -
RUN sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list'
RUN apt-get -y update
RUN apt-get -y install jenkins

# git, supervisor
RUN apt-get -y install git-core supervisor
RUN mkdir -p /var/log/supervisor

# sshd
RUN apt-get install -y openssh-server
RUN mkdir /var/run/sshd
RUN bash -c 'echo "root:root" | chpasswd'

ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

ADD .jenkins /tmp/.jenkins
ONBUILD ADD config.xml /tmp/.jenkins/jobs/job1/config.xml

EXPOSE 22 8080

CMD ["/usr/bin/supervisord"]
