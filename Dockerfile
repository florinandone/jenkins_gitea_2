FROM docker.io/jenkins/jenkins:lts-jdk11
RUN yum -y install rsync
RUN yum -y install openssh-clients 
COPY --chown=jenkins:jenkins plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt
